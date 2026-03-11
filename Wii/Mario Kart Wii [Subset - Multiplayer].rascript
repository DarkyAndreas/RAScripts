// Mario Kart Wii
// #ID = 11071

achievementsetmultiplayer = achievement_set("Multiplayer", type="BONUS", id=38097)

function baseChain(first,offsets,last) {
    type = dword_be
    mask = 0x1fffffff
    Array = [type(first) & mask]
    if (length(offsets) > 1) {
        for i in range(0,length(offsets)-2) {
            Array2 = []
            array_push(Array2,type(array_pop(Array) + offsets[i]) & mask)
            Array = Array2
        }
    }
    return last(array_pop(Array) + offsets[length(offsets)-1])
}
function getBit(ptrName, region, off, last) {
    off2 = []
    bits = [bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]
    for i in range(0,length(off)-1) {
        if (i < length(off)-1) array_push(off2,off[i])
        else array_push(off2,off[i] + last/8)
    }
    return baseChain(ptrTable[ptrName][region], off2, bits[last%8])
}
function getData(ptrName, region, off, last=dword_be) => baseChain(ptrTable[ptrName][region], off, last)

ptrTable = {
    "playerData":           { "EU": 0x009c18f8, "US": 0x009bd110, "JP": 0x009c0958, "KO": 0x009aff38 },
    "raceData":             { "EU": 0x009bd728, "US": 0x009b8f68, "JP": 0x009bc788, "KO": 0x009abd68 },
    "raceInfo":             { "EU": 0x009bd730, "US": 0x009b8f70, "JP": 0x009bc790, "KO": 0x009abd70 },
    "itemHolder":           { "EU": 0x009c3618, "US": 0x009bee20, "JP": 0x009c2678, "KO": 0x009b1c58 },
    "stats":                { "EU": 0x009bd748, "US": 0x009b8f88, "JP": 0x009bc7a8, "KO": 0x009abd88 },
    "menu":                 { "EU": 0x009c1e38, "US": 0x009bd508, "JP": 0x009c0e98, "KO": 0x009b0478 },
    "objectData":           { "EU": 0x009c2ef0, "US": 0x009be730, "JP": 0x009c1f50, "KO": 0x009b1530 },
    "objectManager":        { "EU": 0x009c4330, "US": 0x009bfaf0, "JP": 0x009c3390, "KO": 0x009b2970 },
    "playerGraphicsData":   { "EU": 0x009c5278, "US": 0x009c0ab8, "JP": 0x009c42d8, "KO": 0x009b38b8 },
    "raceGraphicsData":     { "EU": 0x009c1870, "US": 0x009bd0b0, "JP": 0x009c08d0, "KO": 0x009afeb0 },
    "music":                { "EU": 0x009c2318, "US": 0x009bdb58, "JP": 0x009c1378, "KO": 0x009b0958 },
    "camera":               { "EU": 0x009c19a4, "US": 0x009bd184, "JP": 0x009c0a04, "KO": 0x009affe4 },
    "lakitu":               { "EU": 0x009c28b8, "US": 0x009be0f8, "JP": 0x009c1918, "KO": 0x009b0ef8 },
    "balloons":             { "EU": 0x009c4748, "US": 0x009bff98, "JP": 0x009c37a8, "KO": 0x009b2d88 },
}

regions = ["EU","US","JP","KO"]

class raceData {
    region = "EU"
    slot = 0
    type = 1
    ptr = "raceData"
    off1 = 0xF0*slot
    off2 = 0xBF0*type
    off = off1+off2

    //Player
    playerVehicleID = getData(ptr, region, [0x00, 0x30+off], dword_be)
    playerCharacterID = getData(ptr, region, [0x00, 0x34+off], dword_be)
    playerTeamID = getData(ptr, region, [0x00, 0xF4+off], dword_be)
    playerSavedScore = getData(ptr, region, [0x00, 0x100+off], word_be)
    playerCurrentScore = getData(ptr, region, [0x00, 0x102+off], word_be)
    playerHiddenScore = getData(ptr, region, [0x00, 0x106+off], word_be)
    playerGPPlacement = getData(ptr, region, [0x00, 0x108+off], byte)
    playerSavedRacePlacement = getData(ptr, region, [0x00, 0x109+off], byte)
    playerRacePlacement = getData(ptr, region, [0x00, 0x10A+off], byte)

    //Settings
    mapID = getData(ptr, region, [0x00, 0xB68+off2], dword_be)
    speedClass = getData(ptr, region, [0x00, 0xB6C+off2], dword_be)
    gameMode = getData(ptr, region, [0x00, 0xB70+off2], dword_be)
    battleMode = getData(ptr, region, [0x00, 0xB78+off2], dword_be)
    cpuDifficulty = getData(ptr, region, [0x00, 0xB7C+off2], dword_be)
    itemRules = getData(ptr, region, [0x00, 0xB80+off2], dword_be)
    cupID = getData(ptr, region, [0x00, 0xB88+off2], dword_be)
    currentRaceNumber = getData(ptr, region, [0x00, 0xB8C+off2], byte)
    maxRaceNumber = getData(ptr, region, [0x00, 0xB8D+off2], byte)
    bit_Mirror = getBit(ptr, region, [0x00, 0xB90+off2], 0)
    bit_Teams = getBit(ptr, region, [0x00, 0xB90+off2], 1)
}

class raceInfo {
    region = "EU"
    slot = 0
    ptr = "raceInfo"

    cp = getData(ptr, region, [0x0C, slot, 0x0B], byte)
    raceCompletion = getData(ptr, region, [0x0C, slot, 0x0C], float_be)
    lapCompletion = getData(ptr, region, [0x0C, slot, 0x1C], float_be)
    position = getData(ptr, region, [0x0C, slot, 0x20], byte)
    battlePoints = getData(ptr, region, [0x0C, slot, 0x22], word_be)
    currentLap = getData(ptr, region, [0x0C, slot, 0x24], word_be)
    maxLap = getData(ptr, region, [0x0C, slot, 0x26], byte)
    kcp = getData(ptr, region, [0x0C, slot, 0x28], byte)

    //Lap Time
    lap1_minutes = getData(ptr, region, [0x0C, slot, 0x3C, 0x04], word_be)
    lap1_seconds = getData(ptr, region, [0x0C, slot, 0x3C, 0x06], byte)
    lap1_ms = getData(ptr, region, [0x0C, slot, 0x3C, 0x08], word_be)
    lap1_valid = getData(ptr, region, [0x0C, slot, 0x3C, 0x0A], byte)
    lap2_minutes = getData(ptr, region, [0x0C, slot, 0x3C, 0x10], word_be)
    lap2_seconds = getData(ptr, region, [0x0C, slot, 0x3C, 0x12], byte)
    lap2_ms = getData(ptr, region, [0x0C, slot, 0x3C, 0x14], word_be)
    lap2_valid = getData(ptr, region, [0x0C, slot, 0x3C, 0x16], byte)
    lap3_minutes = getData(ptr, region, [0x0C, slot, 0x3C, 0x1C], word_be)
    lap3_seconds = getData(ptr, region, [0x0C, slot, 0x3C, 0x1E], byte)
    lap3_ms = getData(ptr, region, [0x0C, slot, 0x3C, 0x20], word_be)
    lap3_valid = getData(ptr, region, [0x0C, slot, 0x3C, 0x22], byte)

    //Race Time
    race_minutes = getData(ptr, region, [0x0C, slot, 0x40, 0x04], word_be)
    race_seconds = getData(ptr, region, [0x0C, slot, 0x40, 0x06], byte)
    race_ms = getData(ptr, region, [0x0C, slot, 0x40, 0x08], word_be)
    race_valid = getData(ptr, region, [0x0C, slot, 0x40, 0x0A], byte)

    timer = getData(ptr, region, [0x0C, 0x14, 0x48], dword_be)
    raceState = getData(ptr, region, [0x0C, 0x28], dword_be)
}

class playerData {
    region = "EU"
    slot = 0
    ptr = "playerData"

    //Sub-Pointer
    vehicleID = getData(ptr, region, [0x20, slot, 0x14, 0x04], dword_be)
    characterID = getData(ptr, region, [0x20, slot, 0x14, 0x08], dword_be)
    vehicleSuspensions = getData(ptr, region, [0x20, slot, 0x14, 0x0C], word_be)
    vehicleWheels = getData(ptr, region, [0x20, slot, 0x14, 0x0E], word_be)

    //GP Stats
    mts = getData(ptr, region, [0x20, slot, 0x14, 0x34, 0x04], dword_be)
    offroadTime = getData(ptr, region, [0x20, slot, 0x14, 0x34, 0x08], dword_be)
    bonks = getData(ptr, region, [0x20, slot, 0x14, 0x34, 0x0C], dword_be)

    //Race Stats
    distanceDriven = getData(ptr, region, [0x20, slot, 0x14, 0x38, 0x00], dword_be)
    distanceDrivenFirst = getData(ptr, region, [0x20, slot, 0x14, 0x38, 0x04], dword_be)
    itemHitsDelivered = getData(ptr, region, [0x20, slot, 0x14, 0x38, 0x08], dword_be)
    itemHitsReceived = getData(ptr, region, [0x20, slot, 0x14, 0x38, 0x0C], dword_be)
    stunts = getData(ptr, region, [0x20, slot, 0x14, 0x38, 0x10], dword_be)

    //Player Parameters
    bit_stickRight = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 0)
    bit_mushroomBoost = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 2)
    bit_slipstreamCharge = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 3)
    bit_driftAuto = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 4)
    bit_wheelie = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 5)
    bit_jumpPad = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 6)
    bit_rampBoost = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 7)
    bit_stickyRoad = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 8)
    bit_ground = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 10)
    bit_hop = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 11)
    bit_boost = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 12)
    bit_firstAccelFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 16)
    bit_firstGroundFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 17)
    bit_floorBody = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 18)
    bit_floorAnyWheel = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 19)
    bit_floorAllWheels = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 20)
    bit_stickLeft = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 21)
    bit_airtime20 = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 22)
    bit_accelerate = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 24)
    bit_brake = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 25)
    bit_driftInput = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 26)
    bit_driftManual = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 27)
    bit_oob = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 28)
    bit_wall3 = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 29)
    bit_wall = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 30)
    bit_firstHopFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x04], 31)
    bit_trickableSurface = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 6)
    bit_star = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 7)
    bit_mtBoost = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 12)
    bit_inTrick = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 14)
    bit_overZipper = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 18)
    bit_zipperBoost = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 21)
    bit_zipperTrick = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 23)
    bit_hitByItem = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 24)
    bit_firstRespawnFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 25)
    bit_fallingFromCannon = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 26)
    bit_firstCannonFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 27)
    bit_inCannon = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 28)
    bit_firstTrickFrame = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 29)
    bit_inTrick2 = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 30)
    bit_offroadInvincible = getBit(ptr, region, [0x20, slot, 0x20, 0x08], 31)
    bit_sinking = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 1)
    bit_inBullet = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 3)
    bit_inkApplied = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 4)
    bit_hasTC = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 5)
    bit_crushed = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 8)
    bit_stopped = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 10)
    bit_vanished = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 11)
    bit_objectSlowdown = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 20)
    bit_respawn = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 21)
    bit_inMega = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 23)
    bit_slipstreamCharge2 = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 24)
    bit_inSlipstream = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 25)
    bit_wheelieRotation = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 28)
    bit_shocked = getBit(ptr, region, [0x20, slot, 0x20, 0x0C], 31)
    bit_hwg = getBit(ptr, region, [0x20, slot, 0x20, 0x10], 14)
    bit_startBoostCharge = getBit(ptr, region, [0x20, slot, 0x20, 0x10], 16)
    bit_cpuControlled = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 24)
    bit_realLocal = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 25)
    bit_local = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 26)
    bit_remote = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 27)
    bit_autoDrift = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 28)
    bit_ghost = getBit(ptr, region, [0x20, slot, 0x20, 0x14], 30)
    airtime = getData(ptr, region, [0x20, slot, 0x20, 0x1C], dword_be)

    //Collision
    interactionCount = getData(ptr, region, [0x20, slot, 0x38, 0x08], dword_be)
    kclType = getData(ptr, region, [0x20, slot, 0x38, 0xF0], word_be)
    kclVariant = getData(ptr, region, [0x20, slot, 0x38, 0xF2], word_be)

    //Position
    posX = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x04, 0x68], float_be)
    posY = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x04, 0x6C], float_be)
    posZ = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x04, 0x70], float_be)
    prevPosX = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x18], float_be)
    prevPosY = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x1C], float_be)
    prevPosZ = getData(ptr, region, [0x20, slot, 0x24, 0x90, 0x20], float_be)

    //Player Structure
    unknown04 = getData(ptr, region, [0x20, slot, 0x44, 0x04], dword_be)
    unknown08 = getData(ptr, region, [0x20, slot, 0x44, 0x08], dword_be)
    vtable = getData(ptr, region, [0x20, slot, 0x44, 0x0C], dword_be)
    speedMultiplier = getData(ptr, region, [0x20, slot, 0x44, 0x10], float_be)
    baseSpeed = getData(ptr, region, [0x20, slot, 0x44, 0x14], float_be)
    softSpeedLimit = getData(ptr, region, [0x20, slot, 0x44, 0x18], float_be)
    unknown1C = getData(ptr, region, [0x20, slot, 0x44, 0x1C], float_be)
    vehicleSpeed = getData(ptr, region, [0x20, slot, 0x44, 0x20], float_be)
    lastSpeed = getData(ptr, region, [0x20, slot, 0x44, 0x24], float_be)
    unknown28 = getData(ptr, region, [0x20, slot, 0x44, 0x28], float_be)
    hardSpeedLimit = getData(ptr, region, [0x20, slot, 0x44, 0x2C], float_be)
    acceleration = getData(ptr, region, [0x20, slot, 0x44, 0x30], float_be)
    speedDragMultiplier = getData(ptr, region, [0x20, slot, 0x44, 0x34], float_be)
    smoothedUpX = getData(ptr, region, [0x20, slot, 0x44, 0x38], float_be)
    smoothedUpY = getData(ptr, region, [0x20, slot, 0x44, 0x3C], float_be)
    smoothedUpZ = getData(ptr, region, [0x20, slot, 0x44, 0x40], float_be)
    upX = getData(ptr, region, [0x20, slot, 0x44, 0x44], float_be)
    upY = getData(ptr, region, [0x20, slot, 0x44, 0x48], float_be)
    upZ = getData(ptr, region, [0x20, slot, 0x44, 0x4C], float_be)
    landingDirX = getData(ptr, region, [0x20, slot, 0x44, 0x50], float_be)
    landingDirY = getData(ptr, region, [0x20, slot, 0x44, 0x54], float_be)
    landingDirZ = getData(ptr, region, [0x20, slot, 0x44, 0x58], float_be)
    dirX = getData(ptr, region, [0x20, slot, 0x44, 0x5C], float_be)
    dirY = getData(ptr, region, [0x20, slot, 0x44, 0x60], float_be)
    dirZ = getData(ptr, region, [0x20, slot, 0x44, 0x64], float_be)
    lastDirX = getData(ptr, region, [0x20, slot, 0x44, 0x68], float_be)
    lastDirY = getData(ptr, region, [0x20, slot, 0x44, 0x6C], float_be)
    lastDirZ = getData(ptr, region, [0x20, slot, 0x44, 0x70], float_be)
    velDirX = getData(ptr, region, [0x20, slot, 0x44, 0x74], float_be)
    velDirY = getData(ptr, region, [0x20, slot, 0x44, 0x78], float_be)
    velDirZ = getData(ptr, region, [0x20, slot, 0x44, 0x7C], float_be)
    unknownX = getData(ptr, region, [0x20, slot, 0x44, 0x80], float_be)
    unknownY = getData(ptr, region, [0x20, slot, 0x44, 0x84], float_be)
    unknownZ = getData(ptr, region, [0x20, slot, 0x44, 0x88], float_be)
    dirDiffX = getData(ptr, region, [0x20, slot, 0x44, 0x8C], float_be)
    dirDiffY = getData(ptr, region, [0x20, slot, 0x44, 0x90], float_be)
    dirDiffZ = getData(ptr, region, [0x20, slot, 0x44, 0x94], float_be)
    landingDirFlag = getData(ptr, region, [0x20, slot, 0x44, 0x98], byte)
    pad99 = getData(ptr, region, [0x20, slot, 0x44, 0x99], byte)
    pad9A = getData(ptr, region, [0x20, slot, 0x44, 0x9A], word_be)
    outsideDriftAngle = getData(ptr, region, [0x20, slot, 0x44, 0x9C], float_be)
    landingAngle = getData(ptr, region, [0x20, slot, 0x44, 0xA0], float_be)
    outsideLastDirX = getData(ptr, region, [0x20, slot, 0x44, 0xA4], float_be)
    outsideLastDirY = getData(ptr, region, [0x20, slot, 0x44, 0xA8], float_be)
    outsideLastDirZ = getData(ptr, region, [0x20, slot, 0x44, 0xAC], float_be)
    speedRatioCapped = getData(ptr, region, [0x20, slot, 0x44, 0xB0], float_be)
    speedRatio = getData(ptr, region, [0x20, slot, 0x44, 0xB4], float_be)
    kclSpeedFactor = getData(ptr, region, [0x20, slot, 0x44, 0xB8], float_be)
    kclRotationFactor = getData(ptr, region, [0x20, slot, 0x44, 0xBC], float_be)
    kclWheelSpeedFactor = getData(ptr, region, [0x20, slot, 0x44, 0xC0], float_be)
    kclWheelRotationFactor = getData(ptr, region, [0x20, slot, 0x44, 0xC4], float_be)
    floorCollisionCount = getData(ptr, region, [0x20, slot, 0x44, 0xC8], word_be)
    unknownCA = getData(ptr, region, [0x20, slot, 0x44, 0xCA], word_be)
    hopStickDirX = getData(ptr, region, [0x20, slot, 0x44, 0xCC], dword_be)
    hopFrame = getData(ptr, region, [0x20, slot, 0x44, 0xD0], dword_be)
    hopUpX = getData(ptr, region, [0x20, slot, 0x44, 0xD4], float_be)
    hopUpY = getData(ptr, region, [0x20, slot, 0x44, 0xD8], float_be)
    hopUpZ = getData(ptr, region, [0x20, slot, 0x44, 0xDC], float_be)
    hopDirX = getData(ptr, region, [0x20, slot, 0x44, 0xE0], float_be)
    hopDirY = getData(ptr, region, [0x20, slot, 0x44, 0xE4], float_be)
    hopDirZ = getData(ptr, region, [0x20, slot, 0x44, 0xE8], float_be)
    slipstreamCharge = getData(ptr, region, [0x20, slot, 0x44, 0xEC], dword_be)
    unknownF0 = getData(ptr, region, [0x20, slot, 0x44, 0xF0], float_be)
    divingRotation = getData(ptr, region, [0x20, slot, 0x44, 0xF4], float_be)
    boostRotation = getData(ptr, region, [0x20, slot, 0x44, 0xF8], float_be)
    driftState = getData(ptr, region, [0x20, slot, 0x44, 0xFC], word_be)
    mtChargeTimer = getData(ptr, region, [0x20, slot, 0x44, 0xFE], word_be)
    smtChargeTimer = getData(ptr, region, [0x20, slot, 0x44, 0x100], word_be)
    driftBoostTimer = getData(ptr, region, [0x20, slot, 0x44, 0x102], word_be)
    outsideDriftBonus = getData(ptr, region, [0x20, slot, 0x44, 0x104], float_be)
    playerBoostPtr = getData(ptr, region, [0x20, slot, 0x44, 0x108], dword_be)
    generalBoostTimer = getData(ptr, region, [0x20, slot, 0x44, 0x10C], word_be)
    pad10E = getData(ptr, region, [0x20, slot, 0x44, 0x10E], word_be)
    mushroomBoostTimer = getData(ptr, region, [0x20, slot, 0x44, 0x110], word_be)
    pad112 = getData(ptr, region, [0x20, slot, 0x44, 0x112], word_be)
    unknownTimer = getData(ptr, region, [0x20, slot, 0x44, 0x114], dword_be)
    boostBitflags = getData(ptr, region, [0x20, slot, 0x44, 0x118], word_be)
    pad11A = getData(ptr, region, [0x20, slot, 0x44, 0x11A], word_be)
    boostMultiplier = getData(ptr, region, [0x20, slot, 0x44, 0x11C], float_be)
    boostAcceleration = getData(ptr, region, [0x20, slot, 0x44, 0x120], float_be)
    boostLimit = getData(ptr, region, [0x20, slot, 0x44, 0x124], float_be)
    unknown128 = getData(ptr, region, [0x20, slot, 0x44, 0x128], float_be)
    unknown12C = getData(ptr, region, [0x20, slot, 0x44, 0x12C], dword_be)
    unknown130 = getData(ptr, region, [0x20, slot, 0x44, 0x130], dword_be)
    unknown134 = getData(ptr, region, [0x20, slot, 0x44, 0x134], dword_be)
    ssmtTimer = getData(ptr, region, [0x20, slot, 0x44, 0x14C], word_be)

    //Player Hitbox
    hitboxType = getData(ptr, region, [0x20, slot, 0x48, 0x1C], dword_be)
    hitboxSubtype = getData(ptr, region, [0x20, slot, 0x48, 0x20], dword_be)
    lastObjPosX = getData(ptr, region, [0x20, slot, 0x50, 0x04, 0x04], float_be)
    lastObjPosY = getData(ptr, region, [0x20, slot, 0x50, 0x04, 0x08], float_be)
    lastObjPosZ = getData(ptr, region, [0x20, slot, 0x50, 0x04, 0x0C], float_be)
}

function test() {
    logic = []
    for r in regions {
p1 = playerData(r)
array_push(logic, p1.posX > 0 && p1.posZ > 0)
    }
    achievement(
        title = "Test", points = 1,
        description = "Test",
        trigger = any_of(logic,y=>y)
    )
}

test()