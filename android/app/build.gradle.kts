// The APK: SDL's Java activity, libdarkchronicle.so (the game, built by the repository's own CMakeLists.txt with
// Kazarov's Rust core linked in) and libSDL3.so. docs/ANDROID.md has the whole build.

plugins {
    id("com.android.application")
}

val repoRoot: File = rootDir.parentFile

// One SDL checkout serves both halves: its Java glue is compiled here and CMake builds the library from
// it (FETCHCONTENT_SOURCE_DIR_SDL3), so the two cannot disagree. android/native.cmake pins the same tag.
val sdlTag = File(rootDir, "sdl3-tag.txt").readText().trim()
val sdlDir = File(rootDir, "build/sdl3/$sdlTag")
if (!File(sdlDir, "CMakeLists.txt").exists()) {
    sdlDir.parentFile.mkdirs()
    val clone = ProcessBuilder("git", "clone", "--depth", "1", "--branch", sdlTag,
        "https://github.com/libsdl-org/SDL.git", sdlDir.path).inheritIO().start()
    check(clone.waitFor() == 0) { "cloning SDL $sdlTag failed" }
}

// The files the game reads beside it (scripts/, glyphs/, the gameplay seed assets/data.zip), which the native
// build produces: CMake copies them here with their list (android/assets.cmake), the APK carries them as assets,
// and SetupActivity installs them into the app's storage.
val ctAssets = layout.buildDirectory.dir("generated/ctAssets")

android {
    namespace = "io.github.lessunderrated.chronicletwo"
    compileSdk = 36
    buildToolsVersion = "36.0.0"
    ndkVersion = "30.0.16248370"

    defaultConfig {
        applicationId = "io.github.lessunderrated.chronicletwo"
        // Vulkan 1.3's entry points are in the NDK's libvulkan.so from API 33; the renderer needs 1.3.
        minSdk = 33
        targetSdk = 36
        versionCode = 3
        versionName = "0.1.2"

        ndk {
            abiFilters += listOf("arm64-v8a")
            (project.findProperty("chronicle.abis") as String?)?.let { abiFilters.clear(); abiFilters += it.split(",") }
        }
        externalNativeBuild {
            cmake {
                arguments += listOf(
                    "-DPLATFORM=PC",
                    "-DDC_BUILD_TESTS=OFF",
                    "-DANDROID_STL=c++_shared",
                    "-DFETCHCONTENT_SOURCE_DIR_SDL3=${sdlDir.path}",
                    // C++26 has CMake scan for modules with any clang-scan-deps it finds, which may be
                    // the host's, not the NDK's, and fails on SDL's precompiled header; nothing here is a
                    // module.
                    "-DCMAKE_CXX_SCAN_FOR_MODULES=OFF",
                    "-DCT_ANDROID_ASSETS_DIR=${ctAssets.get().asFile.path}",
                )
                targets += listOf("darkchronicle", "SDL3-shared")
                // Extra CMake arguments, ';'-separated: -Pct.cmakeArgs=-DFETCHCONTENT_SOURCE_DIR_LUAU=… for a build
                // whose network cannot download the dependencies' archives.
                (project.findProperty("ct.cmakeArgs") as String?)?.split(";")?.filter { it.isNotBlank() }
                    ?.let { arguments += it }
            }
        }

        val documentsAuthority = "$applicationId.documents"
        manifestPlaceholders["documentsAuthority"] = documentsAuthority
        buildConfigField("String", "DOCUMENTS_AUTHORITY", "\"$documentsAuthority\"")
    }

    signingConfigs {
        // A release is signed by the key CI is given. Without one, by chronicle-dev.jks, which is in
        // the repository: public, so it proves nothing about who built an APK, but every build signed
        // with it installs over the last one, keeping the extracted disc and the saves.
        create("release") {
            val keystore = System.getenv("CHRONICLE_KEYSTORE")
            if (keystore != null) {
                storeFile = file(keystore)
                storePassword = System.getenv("CHRONICLE_KEYSTORE_PASSWORD")
                keyAlias = System.getenv("CHRONICLE_KEY_ALIAS")
                keyPassword = System.getenv("CHRONICLE_KEY_PASSWORD")
            } else {
                storeFile = file("chronicletwo-dev.jks")
                storePassword = "chronicletwo"
                keyAlias = "chronicletwo"
                keyPassword = "chronicletwo"
            }
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            signingConfig = signingConfigs.getByName("release")
        }
        debug {
            applicationIdSuffix = ".debug"
            isJniDebuggable = true
            // The game at -O0 cannot keep 60 ticks a second.
            externalNativeBuild { cmake { arguments += "-DCMAKE_BUILD_TYPE=RelWithDebInfo" } }
            val documentsAuthority = "io.github.lessunderrated.chronicletwo.debug.documents"
            manifestPlaceholders["documentsAuthority"] = documentsAuthority
            buildConfigField("String", "DOCUMENTS_AUTHORITY", "\"$documentsAuthority\"")
        }
    }

    buildFeatures {
        buildConfig = true
    }

    sourceSets {
        getByName("main") {
            java.srcDirs(File(sdlDir, "android-project/app/src/main/java"))
            assets.srcDir(ctAssets)
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    externalNativeBuild {
        cmake {
            path = File(repoRoot, "CMakeLists.txt")
            version = "3.31.6"
        }
    }
}

// The assets come from the native build, so packing them waits for it.
tasks.configureEach {
    val variant = Regex("^merge(\\w+)Assets$").find(name)?.groupValues?.get(1) ?: return@configureEach
    dependsOn("externalNativeBuild$variant")
}
