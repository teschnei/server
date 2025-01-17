-----------------------------------
-- Area: Apollyon NW
--  Mob: Pluto
-----------------------------------
local ID = require("scripts/zones/Apollyon/IDs")
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local flags = xi.path.flag.NONE
local path =
{
    { -459.436, 0.000, -16.257 },
    { -458.178, 0.000,  49.511 }
}

entity.onMobRoam = function(mob)
    local pause = mob:getLocalVar("pause")

    if pause < os.time() then
        local point = (mob:getLocalVar("point") % 2) + 1
        mob:setLocalVar("point", point)
        mob:pathTo(path[point][1], path[point][2], path[point][3], flags)
        mob:setLocalVar("pause", os.time() + 30)
    end
end

entity.onMobDeath = function(mob, player, isKiller, noKiller)
    if isKiller or noKiller then
        local mobX = mob:getXPos()
        local mobY = mob:getYPos()
        local mobZ = mob:getZPos()
        GetNPCByID(ID.npc.APOLLYON_NW_CRATE[1][1]):setPos(mobX, mobY, mobZ)
        GetNPCByID(ID.npc.APOLLYON_NW_CRATE[1][1]):setStatus(xi.status.NORMAL)
    end
end

return entity
