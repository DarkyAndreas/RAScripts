// Sonic Classic Collection
// #ID = 14810

menu = byte(0x084df8)
saveload = prev(menu) == 0x2e && menu != 0x2e && menu != 0x2f
mode = byte(0x0aeda1)
game = byte(0x09e6cc)
music = byte(0x0afa14)
zone = byte(0x0af5b1)
zoneAct = word(0x0af5b0)
check = byte(0x09e488) == 0
checkS3 = byte(0x0aa7cf) == 0x81
levelSelect = 0x00
debugMode = 0x02

function cheats(id,cheat) {
    games = {
        "S1": 0x0af781,
        "S2": 0x0af771,
        "S3": 0x0af771,
        "K2": 0x0af6a9,
        "K3": 0x0af781,
    }
    return byte(games[id] + cheat)
}

function cheatCalc(game) {
    return cheats(game,levelSelect) == 0 && cheats(game,debugMode) == 0
}

zones = {
    "S1": [
        ["Green Hill",0x00],["Marble",0x02],["Spring Yard",0x04],
        ["Labyrinth",0x01],["Star Light",0x03],
        ["Scrap Brain",0x05,0x01],["Final",0x05]
    ],
    "S2": [
        ["Emerald Hill",0x00],["Chemical Plant",0x0d],["Aquatic Ruin",0x0f],
        ["Casino Night",0x0c],["Hill Top",0x07],["Mystic Cave",0x0b],
        ["Oil Ocean",0x0a],["Metropolis",0x04,0x05],["Sky Chase",0x10],
        ["Wing Fortress",0x06],["Death Egg",0x0e]
    ],
    "S3": [
        ["Angel Island",0x00],["Hydrocity",0x01],["Marble Garden",0x02],
        ["Carnival Night",0x03],["Icecap",0x05],["Launch Base",0x06],
        ["Mushroom Hill",0x07],["Flying Battery",0x04],["Sandopolis",0x08],
        ["Lava Reef",0x09,0x16],["Sky Sanctuary",0x0a],["Death Egg",0x0b],
        ["The Doomsday",0x0c],
    ],
    "bonusS1": [
        ["Credits",0x06],
    ],
    "bonusS2": [
        
    ],
    "bonusS3": [
        ["Credits",0x0d],["Hidden Palace",0x16],["The Doomsday",0x17],["Hidden Palace",0x17],["Gumball Machine",0x13],
        ["Chase Sequence",0x14],["Slot Machine",0x15]
    ]
}

musicID = {
    "S1": 0x10,
    "S2": 0x1d,
    "S3": 0x37,
}

for i in range (0,2) {
    current = format("S{0}",i+1)
    kurrent = format("K{0}",i+1)
    bonus = format("bonusS{0}",i+1)
    for j in range (0,length(zones[current])-1) {
        zoneID = zones[current][j][length(zones[current][j])-1]
        zoneCalc = prev(zone) == zoneID && music == musicID[current]
        zoneName = zones[current][j][0]
        if (zoneName == "Launch Base" || zoneName == "Sky Sanctuary")
        zoneCalc = __ornext(prev(zone) == zoneID && zone == zones[current][j+1][1] || music == 0x25+(j/10)*18)
        else if (zoneName == "Lava Reef")
        zoneCalc = __ornext(prev(zoneAct) == 0x901 || prev(zoneAct) == 0x1600) && zoneAct == 0x1601
        else if (current == "S3" && zoneName == "Death Egg")
        zoneCalc = prev(zone) == 0x17 && __ornext(zone == 0x0c || zone == 0x0d)
        else if (current != "S2" && j == length(zones[current])-1) zoneCalc = prev(zone) == zones[bonus][0][1] && music == musicID[current]
        else if (j <= length(zones[current])-2) zoneCalc = prev(zone) == zoneID && zone == zones[current][j+1][1]
        if (i == 0) activeCheats = cheatCalc(current)
        else activeCheats = cheatCalc(current) && cheatCalc(kurrent)
        if (i == 2 && zoneID == 0x04 || zoneID > 0x06) games = __ornext(game == i+1 || game == i+(i/i)*3)
        else if (i != 0) games = __ornext(game == i || game == i+(i/i)*3)
        else games = game == i
        if (i == 2 && zoneID >= 0x0b && zoneID != 0x16) tp = ""
        else tp = "progression"
        achievement(
            title = format("{0} Zone",zoneName), points = 5, type=tp,
            description = format("Complete {0} Zone for the first time",zoneName),
            trigger = unless(once(saveload && never(!check))) && games && activeCheats && zoneCalc && mode != 0x88
        )
    }
}




