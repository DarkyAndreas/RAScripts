// Sonic Classic Collection
// #ID = 14810

menu = byte(0x084df8)
saveload = prev(menu) == 0x2e && menu != 0x2e && menu != 0x2f
mode = byte(0x0aeda1)
game = byte(0x09e6cc)
music = byte(0x0afa14)
act = byte(0x0af5b0)
zone = byte(0x0af5b1)
zoneAct = word(0x0af5b0)
actS3 = byte(0x0ae5ee)
zoneS3 = byte(0x0ae5ef)
check = byte(0x09e488) == 0
checkS3 = byte(0x0aa7cf) == 0x81
levelSelect = 0x00
debugMode = 0x02
clear = byte(0x0af5bf)

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

function cheatCalc(id,i=false) {
    if (i == false) types = [levelSelect,debugMode]
    else types=[i]
    return all_of(types,y=>cheats(id,y) == 0)
}

zones = {
    "S1": [
        ["Green Hill",[0x00]],["Marble",[0x02]],["Spring Yard",[0x04]],
        ["Labyrinth",[0x01]],["Star Light",[0x03]],
        ["Scrap Brain",[0x05,0x01]],["Final",[0x05]]
    ],
    "S2": [
        ["Emerald Hill",[0x00]],["Chemical Plant",[0x0d]],["Aquatic Ruin",[0x0f]],
        ["Casino Night",[0x0c]],["Hill Top",[0x07]],["Mystic Cave",[0x0b]],
        ["Oil Ocean",[0x0a]],["Metropolis",[0x04,0x05]],["Sky Chase",[0x10]],
        ["Wing Fortress",[0x06]],["Death Egg",[0x0e]]
    ],
    "S3": [
        ["Angel Island",[0x00]],["Hydrocity",[0x01]],["Marble Garden",[0x02]],
        ["Carnival Night",[0x03]],["Icecap",[0x05]],["Launch Base",[0x06]],
        ["Mushroom Hill",[0x07]],["Flying Battery",[0x04]],["Sandopolis",[0x08]],
        ["Lava Reef",[0x09,0x16]],["Sky Sanctuary",[0x0a]],["Death Egg",[0x0b,0x17]],
        ["The Doomsday",[0x0c]],
    ],
    "bonusS1": [
        ["Credits",[0x06]],
    ],
    "bonusS2": [
        
    ],
    "bonusS3": [
        ["Credits",[0x0d]],["Hidden Palace",[0x16]],["The Doomsday",[0x17]],
        ["Hidden Palace",[0x17]],["Gumball Machine",[0x13]],
        ["Chase Sequence",[0x14]],["Slot Machine",[0x15]]
    ]
}

musicID = {
    "S1": 0x10,
    "S2": 0x1d,
    "S3": 0x37,
}

characters = ["Sonic","Tails","Knuckles"]

for i in range (0,2) {
    function gameID(id) => format("{0}{1}",id,i+1)
    gID = gameID("S")
    bonus = format("bonusS{0}",i+1)
    zoneNum = length(zones[gID])-1
    for j in range (0,zoneNum) {
        z = zones[gameID("S")]
        zoneName = z[j][0]
        zoneID = z[j][1]
        if (j != zoneNum) {
            nzoneID = z[j+1][1]
            base = prev(zone == zoneID[length(zoneID)-1]) && zone == nzoneID[0]
        }
        if (i == 2 && (j == 5 || j == 10)) zoneCalc = __ornext(base || music == 0x25+(j/10)*18)
        else if (i == 2 && j == 9) zoneCalc = __ornext(prev(zoneAct) == 0x901 || prev(zoneAct) == 0x1600) && zoneAct == 0x1601
        else if (i == 2 && j == 11) zoneCalc = prev(zone == zoneID[length(zoneID)-1]) && __ornext(zone == nzoneID[0] || zone == 0x0d)
        else if (j == zoneNum) zoneCalc = prev(music) != musicID[gameID("S")] && music == musicID[gameID("S")]
        else zoneCalc = base
        if (i == 2 && (zoneID[0] == 0x04 || zoneID[0] > 0x06)) {
            function gAV(id=false) => __ornext(game == i+1 || game == i+3) && cheatCalc(gameID("K"),id)
            gID = "S&K"
        }
        else if (i != 0) function gAV(id=false) => game == i && cheatCalc(gID,id) || game == i+3 && cheatCalc(gameID("K"),id)
        else function gAV(id=false) => game == i && cheatCalc(gID,id)
        achievement(
            title = format("{0} Zone",zoneName), points = 5, type="progression",
            description = format("[{0}] Complete {1} Zone for the first time",gID,zoneName),
            trigger = unless(once(saveload && never(!check))) && gAV() && zoneCalc && mode != 0x88
        )
        if (i == 0) {
            chars = 1
            char = always_true()
            if (j == 6) acts = 1
            else acts = 3
        }
        else {
            chars = 3
            acts = 2
            if (i == 1) {
                if (j == 7) acts = 3
                else if (j > 7) acts = 1
            }
            if (i == 2) {
                if (j == 10 || j == 12) acts = 1
            }
        }
        for l in range (1,chars) {
            if (i == 0) ch = ""
            else ch = format(" as {0}",characters[l-1])
            if (i == 1) {
                if (l == 3) function gAV(id=false) => game == i+3 && cheatCalc(gameID("K"),id)
                else function gAV(id=false) => game == i && cheatCalc(gID,id)
            }
            if ((i < 2 && j == zoneNum) || (i == 2 && j == 5) || (l == 3 && j == 10) || (l == 2 && j == 11) || (l == 1 && j == 12))
            for ii in range (0,1) {
                if (ii == 1) {
                    function em(i) => format(" with all {0} Emeralds obtained",i)
                    if (i == 0) emLog = byte(0x000af5f6) == 6
                    else if (i == 1) emLog = byte(0x000af750) == 6
                }
                else {
                    function em(i) => ""
                    emLog = always_true()
                }
                achievement(
                    title = format("{0} - {1}",gID,ii), points = 5, type="progression",
                    description = format("[{0}] Complete the game{1}{2}",gID,ch,em("Chaos")),
                    trigger = unless(once(saveload && never(!check))) && gAV() && zoneCalc && mode != 0x88
                )
                if (i == 2 && j > 5)
                achievement(
                    title = format("{0} - {1}",gID,ii), points = 5, type="progression",
                    description = format("[{0}] Complete the game{1}{2}",gID,ch,em("Chaos")),
                    trigger = unless(once(saveload && never(!check))) && gAV() && zoneCalc && mode != 0x88
                )
            }
            for ii in range (1,acts) {
                if (i != 0) {
                    ch = format(" [{0}]",characters[l-1])
                    new_ch = format(" - {0}",characters[l-1])
                }
                else {
                    ch = ""
                    new_ch = ""
                }
                new = format("[{0}] {1} Zone Act {2}{3}",gID,zoneName,ii,new_ch)
                if (acts == 1) ttl = format("{1} Zone{3}",gID,zoneName,ii,ch)
                else ttl = format("{1} Zone Act {2}{3}",gID,zoneName,ii,ch)
                if ((i == 2 && l == 3 && j < 11) || (i == 2 && l == 2 && j < 12) || i < 2 || l < 2) {
                    leaderboard(
                        title = ttl,
                        description = "",
                        start = unless(once(saveload && never(!check))) && gAV(debugMode) && act == ii-1 && zone == zoneID[0],
                        cancel = always_false(),
                        submit = always_false(),
                        value = byte(0),
                        format =  "FRAMES", lower_is_better = true
                    )
                    if (i == 2 && l < 3 && ii == 1 && (j == 9 || j == 11)) {
                        boss = ["Egg Inferno","Death Egg Robot"]
                        leaderboard(
                            title = format("{0}{1}",boss[j/11],ch),
                            description = "",
                            start = unless(once(saveload && never(!check))) && gAV(debugMode) && act == ii-1 && zone == zoneID[0] && mode != 0x88,
                            cancel = always_false(),
                            submit = always_false(),
                            value = byte(0),
                            format =  "FRAMES", lower_is_better = true
                        )
                    }
                }
            }
        }
    }
}


