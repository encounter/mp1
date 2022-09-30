#ifndef _CHEALTHINFO_HPP
#define _CHEALTHINFO_HPP

#include "types.h"

class CHealthInfo {
public:
  CHealthInfo(f32 hp, f32 resist);
  void SetHP(float hp) { x0_health = hp; }
  float GetHP() const { return x0_health; }

private:
  f32 x0_health;
  f32 x4_knockbackResistance;
};
CHECK_SIZEOF(CHealthInfo, 0x8)

#endif
