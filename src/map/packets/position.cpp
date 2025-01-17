﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include "../../common/socket.h"

#include "../entities/baseentity.h"
#include "position.h"

CPositionPacket::CPositionPacket(CBaseEntity* PEntity)
{
    this->setType(0x5B);
    this->setSize(0x1C);

    ref<float>(0x04) = PEntity->loc.p.x;
    ref<float>(0x08) = PEntity->loc.p.y;
    ref<float>(0x0C) = PEntity->loc.p.z;
    ref<uint8>(0x17) = PEntity->loc.p.rotation;

    ref<uint32>(0x10) = PEntity->id;
    ref<uint16>(0x14) = PEntity->targid;
}
