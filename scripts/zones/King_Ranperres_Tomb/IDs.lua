-----------------------------------
-- Area: King Ranperres Tomb (190)
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.KING_RANPERRES_TOMB] =
{
    text =
    {
        CONQUEST_BASE            = 0,     -- Tallying conquest results...
        ITEM_CANNOT_BE_OBTAINED  = 6542,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED            = 6548,  -- Obtained: <item>.
        GIL_OBTAINED             = 6549,  -- Obtained <number> gil.
        KEYITEM_OBTAINED         = 6551,  -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET    = 6577,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS      = 7159,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY  = 7160,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER             = 7161,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        GEOMAGNETRON_ATTUNED     = 7170,  -- Your <keyitem> has been attuned to a geomagnetic fount in the corresponding locale.
        CHEST_UNLOCKED           = 7286,  -- You unlock the chest!
        SENSE_SOMETHING_EVIL     = 7313,  -- You sense something evil.
        HEAVY_DOOR               = 7314,  -- It is a solid stone door.
        PLAYER_OBTAINS_ITEM      = 8252,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM    = 8253,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM = 8254,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP     = 8255,  -- You already possess that temporary item.
        NO_COMBINATION           = 8260,  -- You were unable to enter a combination.
        REGIME_REGISTERED        = 10338, -- New training regime registered!
        COMMON_SENSE_SURVIVAL    = 11425, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        GWYLLGI_PH            =
        {
            [17555661] = 17555664,
        },
        CRYPT_GHOST_PH        =
        {
            [17555665] = 17555668,
            [17555666] = 17555668,
            [17555667] = 17555668,
        },
        BARBASTELLE           = 17555721,
        CHERRY_SAPLING_OFFSET = 17555853,
        VRTRA                 = 17555890,
        CORRUPTED_YORGOS      = 17555898,
        CORRUPTED_SOFFEIL     = 17555899,
        CORRUPTED_ULBRIG      = 17555900,
    },
    npc =
    {
        CASKET_BASE    = 17555907,
        TREASURE_CHEST = 17555955,
    },
}

return zones[xi.zone.KING_RANPERRES_TOMB]
