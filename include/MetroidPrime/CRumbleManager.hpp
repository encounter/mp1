#ifndef _CRUMBLEMANAGER_HPP
#define _CRUMBLEMANAGER_HPP

#include "types.h"

#include "Kyoto/Input/CRumbleGenerator.hpp"

class CStateManager;
class CVector3f;

class CRumbleManager {
public:
  CRumbleManager();
  ~CRumbleManager();

  void Rumble(CStateManager&, const CVector3f&, ERumbleFxId, float, ERumblePriority);
  void Rumble(CStateManager&, ERumbleFxId, float, ERumblePriority);

private:
  CRumbleGenerator x0_rumbleGenerator;
};

#endif
