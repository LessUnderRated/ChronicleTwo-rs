#pragma once
#include <userdata.hpp>
// The Game page's monster transformation settings (port/src/monster_transformation.cpp), which userdata.cpp's unit
// fixups call. Each gives retail's value while its setting is off.
float PortTransformationAttackScale(int level);
float PortTransformationDefence(int own);
float PortTransformationAbs(float amount);
void  PortShareTransformationAbs(CBattleCharaInfo *info, float amount);
