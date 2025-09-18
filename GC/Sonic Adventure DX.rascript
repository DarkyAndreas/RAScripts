// Sonic Adventure DX
// #ID = 6333

function baseChain(first, offsets,lastType) {
    Array = [first & 0x1ffffff]
    if (length(offsets) > 1) {
        for i in range(0, length(offsets)-2) {
            Array2 = []
            array_push(Array2, dword_be(array_pop(Array) + offsets[i]) & 0x1ffffff)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}

function pointerChain(offsets,lastType) => baseChain(dword_be(byte((dword_be(playerPointer) & 0x1ffffff) + 0x08) * 4 + playerPointer), offsets,lastType)

circuitStart = 0x1ce
playerPointer = 0x006b4450

demo = byte(0x0073ddeb)
mode = byte(0x0079bd16)
submode = byte(0x0079bd0d)
state = byte(0x0074a7bd)
stage = byte(0x0074a7c7)
sub = byte(0x0074a7c5)
char = byte(0x0079bd17)
actualChar = byte(0x0074a7ad)
file = byte(0x0079bd15)
ring = word_be(0x0074c7a8)
score = dword_be(0x0074c79c)
enemyScore = dword_be(0x0074c798)
lives = byte(0x0074c7ad)
yrotate = float_be(0x0074a7ec)
ftime = tbyte(0x0074c7aa)
ctime = tbyte_be(0x0079c03a)
dialog = word_be(0x0074c7de)
npc = dword_be(0x0074c89c)
movementState = byte(0x006b4b3d)
twinkleCircuit = dword_be(0x0074c7a0)
cutscene = word_be(0x0074065c) == 0x200
cutsceneType = word_be(0x0074065e)
flagPause = byte(0x00565b19)
flagController = byte(0x00566be0)
flagTime = byte(0x00592fcb)
winCheck = dword_be(0x0066d02c)


demoProtection = demo != 0
startCha = ctime == 0 && prev(state) == 4
failCha = demoProtection || state == 0x15 || ctime == 0 && prev(state) != 4 && state == 4
startChaGamma = ctime == 0x030000 && prev(state) == 4
failChaGamma = demoProtection || state == 0x15 || ctime == 0x030000 && prev(state) != 4 && state == 4
progressCheck = state != 0x15
clearCheck = prev(flagPause) == 0 && prev(flagController) == 0 && prev(flagTime) == 0 && prev(state) == 0x0f && prev(npc) == 0 //&& byte(0x000ac779) == 1
memCheck = flagPause == 0 && flagController == 0 && flagTime == 0 && state == 0x0f && npc == 0
timeMeasure = measured(byte(0x0074c7ac) * 3600 + byte(0x0074c7ab) * 60 + byte(0x0074c7aa))
circuitMeasure = pointerChain([0x3C,0x0C,0x0C,0x0C,0x28],dword_be) 
saveFile = file*0x570 + 0x007a862c

stageNumb = [["Hedgehog Hammer",0x00],["Emerald Coast",0x01],["Windy Valley",0x02],["Twinkle Park",0x03],
            ["Speed Highway",0x04],["Red Mountain",0x05],["Sky Deck",0x06],
            ["Lost World",0x07],["Icecap",0x08],["Casinopolis",0x09],
            ["Final Egg",0x0a],["Hot Shelter",0x0c],["Chaos 0",0x0f],
            ["Chaos 2",0x10],["Chaos 4",0x11],["Chaos 6",0x12],
            ["Perfect Chaos",0x13],["Egg Hornet",0x14],["Egg Walker",0x15],
            ["Egg Viper",0x16],["Zero",0x17],["E-101 Beta",0x18],
            ["E-101 Mark II",0x19],["Station Square",0x1a],["outside the Egg Carrier",0x1d],
            ["inside the Egg Carrier",0x20],["Mystic Ruins",0x21],["The Past",0x22],
            ["Twinkle Circuit",0x23],["Sky Chase: Act 1",0x24],["Sky Chase: Act 2",0x25],
            ["Sand Hill",0x26],["Station Square",0x27],["Egg Carrier",0x28],["Mystic Ruins",0x29],
            ["E-103 Delta",0x02],["E-104 Epsilon",0x05],["E-105 Zeta",0x0c]]

character = ["Sonic","Tails","Knuckles","Amy","Big","Gamma","Super Sonic"]

charStage = {
    0: ["Emerald Coast","Windy Valley","Casinopolis","Icecap","Twinkle Park","Speed Highway",
        "Red Mountain","Sky Deck","Lost World","Final Egg"],
    1: ["Windy Valley","Casinopolis","Icecap","Sky Deck","Speed Highway"],
    2: ["Speed Highway","Casinopolis","Red Mountain","Lost World","Sky Deck"],
    3: ["Twinkle Park","Hot Shelter","Final Egg"],
    4: ["Twinkle Park","Icecap","Emerald Coast","Hot Shelter"],
    5: ["Final Egg","Emerald Coast","Windy Valley","Red Mountain","Hot Shelter"],
}

charBoss = {
    0: ["Chaos 0","Egg Hornet","Chaos 4","Chaos 6","Egg Viper"],
    1: ["Egg Hornet","Chaos 4","Egg Walker"],
    2: ["Chaos 2","Chaos 4","Chaos 6"],
    3: ["Zero"],
    4: ["Chaos 6"],
    5: ["E-101 Beta","E-103 Delta","E-104 Epsilon","E-105 Zeta","E-101 Mark II"],
    6: ["Perfect Chaos"],
}

bonus = ["Sky Chase: Act 1","Sky Chase: Act 2","Icecap","Sand Hill","Hedgehog Hammer","Twinkle Circuit","Boss Rush"]

function titles(i) {
    clear = {
        "Emerald Coast":    [["Hey Tails!","Sonic"],["Frog: Acquired!","Gamma"],["Big's Big Blue Ocean Problem","Big"]],
        "Windy Valley":     [["Feeling the Wind under Ones Feet","Sonic"],["Feeling So Free","Tails"],["E-103: Destroyed!","Gamma"]],
        "Casinopolis":      [["Yet Another Gamble Addiction","Sonic"],["Through the Sewers","Tails"],["Anti-Gambling Policy","Knuckles"]],
        "Icecap":           [["Slippery Slide Downhill","Sonic"],["Snowboard Expert","Tails"],["Ice Cold Fishin'","Big"]],
        "Twinkle Park":     [["Lovely Couples Park","Sonic"],["Me and My Loverboy","Amy"],["No Fish, No Froggy, No Fun","Big"]],
        "Speed Highway":    [["Try and Keep Up With Me","Sonic"],["Countdown to Chaos","Tails"],["Shiny Hunter","Knuckles"]],
        "Red Mountain":     [["Mountain Climber","Sonic"],["Emerlads Buried Deep Inside","Knuckles"],["E-104: Destroyed!","Gamma"]],
        "Sky Deck":         [["In the Name Of Nature","Sonic"],["Quick Detour Through the Ship","Tails"],["My Head's Spinning!","Knuckles"]],
        "Lost World":       [["Deep Inside the Core","Sonic"],["Lost in the Search","Knuckles"]],
        "Final Egg":        [["Crackin' the Final Egg","Sonic"],["Escape Route","Amy"],["Sonic Doll: Destroyed!","Gamma"]],
        "Hot Shelter":      [["It's Gonna Be A Hot Battle","Amy"],["E-105: Destroyed!","Gamma"],["Crispy and Hot","Big"]],
    }
    emblem = {
        "Emerald Coast":    "Azure Blue World",
        "Windy Valley":     "Windy Hill",
        "Casinopolis":      "The Dreamy Stage",
        "Icecap":           "Be Cool, Be Wild and Be Groovy",
        "Twinkle Park":     "Pleasure Castle",
        "Speed Highway":    "Run Through the Speed Highway",
        "Red Mountain":     "Mt. Red: A Symbol of Thrill",
        "Sky Deck":         "Sky Deck a Go! Go!",
        "Lost World":       "Leading Lights",
        "Final Egg":        "Mechanical Resonance",
        "Hot Shelter":      "Bad Taste Aquarium",
        "Adventure Field":  "Calm After the Storm",
        "Sub Game":         "Letz Get This Party Started",
        "Chao Race":        "Join Us 4 Happy Time",
        "Story":            ["It Doesn't Matter","Believe in Myself","Unknown From M.E.",
                             "My Sweet Passion","Lazy Days (Livin' in Paradise)","It's my Pleasure",
                             "Open Your Heart"],
        "All":              ["Time for A Classic","Drifting Around the World","Chaos is Inevitable","Spin Like Balls",
                             "This World Feels Like A Labyrinth","Nearly A Half Classic","One Mean Egg Machine",
                             "Sextuple Trouble"]
    }
    metal = {
        "Emerald Coast":    ["A Real Metal-Head","Windy and Ripply"],
        "Windy Valley":     ["Shredding the Tornado","Powerful Aerodynamics"],
        "Casinopolis":      ["Computing the Best RNG","Blue Star"],
        "Icecap":           ["Cooling the Processor","Heat Up the Snowy Mountain"],
        "Twinkle Park":     ["Fakery Way","Twinkle, Twinkle Little Star"],
        "Speed Highway":    ["Running Against Inferior Technologie","Chaos At Dawn"],
        "Red Mountain":     ["I Need A Drill For This Job","Red Hot Skull"],
        "Sky Deck":         ["Destroying my Master's Creation","General Offensive"],
        "Lost World":       ["No GPS-Map Available","Completely Lost in this Maze"],
        "Final Egg":        ["Ruining my Master's Plan","Crank the Heat Up!!"]
    }
    upgrades = ["Shiny Accessory","Even I Could Create Such Tech","Better Protection for Harder Punches",
               "Hammer Hardness","No Fish Can Escape Me Now", "Upgrades: Acquired!"]
    unlocks = ["A Search for Peace","Shopping Trip Gone Wrong","Big's Big Fishing Adventure",
               "Ready to Serve","The Final Stretch"]
    egg = ["Worth A Grand","Water Resistant","The Worse Looking Easter Egg"]
    mission =   ["In Need of a Big Blue Bonus","Two Tailed Turbulence","Knock! Knock! It's Knuckles!",
                 "Living the Pink Dream","Big Goes for Bigger Adventures","Mission: Complete!"]
    if (dictionary_contains_key(emblem, i)) {
        return emblem[i]
    }
    else if (substring(format("{0}",i),-5) == "Clear") {
        currentStage = substring(format("{0}",i),0,-8)
        currentChar = substring(format("{0}",i),-8,3)
        if (dictionary_contains_key(clear, currentStage)) {
            for j in range(0, length(clear[currentStage])-1) {
                if(substring(clear[currentStage][j][1],0,3) == currentChar) {
                    return clear[currentStage][j][0]
                }
            }
        }
    }
    else if (substring(format("{0}",i),-7) == "Mission") {
        for j in range(0, length(mission)-1) {
            if(substring(i,0,-7) != "All") {
                for l in range(0,length(character)-1) {
                    if(substring(i,0,-7) == character[l]) return mission[l]
                }
                
            }
            else {
               return ["Drifting Into Madness","On Mission Patrol","This Adventure is A Blast!"]
            }
        }
    }
    else if (substring(format("{0}",i),-5) == "Metal") {
        for j in range(0, length(charStage[0])-1) {
            current = charStage[0][j]
            if (substring(current,4,5) != "Chase") {
                for l in range (0,2) {
                    if(substring(i,0,-5) == current) {
                        return metal[substring(format("{0}",i),0,-5)]
                    }
                    else if(substring(i,0,-5) == "All") {
                        return "I Am The Ultimate!"
                    }
                }
            }
        }
    }
    else if (i == "Egg") {
        return egg
    }
    else if (i == "Unlocks") {
        return unlocks
    }
    else if (i == "Upgrades") {
        return upgrades
    }
}

function b(type, val) => type(saveFile + val)

function collectables(i) {
    Array = []
    emblem = {
        "Emerald Coast":    [[bit0,0x00,"Sonic"],[bit7,0x02,"Gamma"],[bit4,0x03,"Big"]],
        "Windy Valley":     [[bit1,0x00,"Sonic"],[bit2,0x01,"Tails"],[bit0,0x03,"Gamma"]],
        "Casinopolis":      [[bit0,0x01,"Sonic"],[bit6,0x01,"Tails"],[bit3,0x02,"Knuckles"]],
        "Icecap":           [[bit7,0x00,"Sonic"],[bit5,0x01,"Tails"],[bit6,0x03,"Big"]],
        "Twinkle Park":     [[bit2,0x00,"Sonic"],[bit4,0x02,"Amy"],[bit5,0x03,"Big"]],
        "Speed Highway":    [[bit3,0x00,"Sonic"],[bit3,0x01,"Tails"],[bit7,0x01,"Knuckles"]],
        "Red Mountain":     [[bit4,0x00,"Sonic"],[bit0,0x02,"Knuckles"],[bit1,0x03,"Gamma"]],
        "Sky Deck":         [[bit5,0x00,"Sonic"],[bit4,0x01,"Tails"],[bit1,0x02,"Knuckles"]],
        "Lost World":       [[bit6,0x00,"Sonic"],[bit2,0x02,"Knuckles"]],
        "Final Egg":        [[bit1,0x01,"Sonic"],[bit5,0x02,"Amy"],[bit2,0x03,"Gamma"]],
        "Hot Shelter":      [[bit6,0x02,"Amy"],[bit3,0x03,"Gamma"],[bit7,0x03,"Big"]],
        "Adventure Field":  [[bit6,0x0E],[bit7,0x0E],[bit0,0x0F],
                             [bit1,0x0F],[bit2,0x0F],[bit3,0x0F],
                             [bit4,0x0F],[bit5,0x0F],[bit6,0x0F],
                             [bit7,0x0F],[bit0,0x10],[bit1,0x10]],
        "Sub Game":         [[bit0,0x0C],[bit1,0x0C],[bit2,0x0C],
                             [bit3,0x0C],[bit4,0x0C],[bit5,0x0C],
                             [bit6,0x0C],[bit7,0x0C],[bit0,0x0D],
                             [bit1,0x0D]],
        "Chao Race":        [[bit2,0x0D],[bit3,0x0D],[bit4,0x0D],
                             [bit5,0x0D],[bit6,0x0D]],
        "Story":            [[bit7,0x0D],[bit0,0x0E],[bit1,0x0E],
                             [bit2,0x0E],[bit4,0x0E],[bit3,0x0E],
                             [bit5,0x0E]],
    }
    metal = {
        "Emerald Coast":    [[bit0,0x00],[bit1,0x00],[bit2,0x00]],
        "Windy Valley":     [[bit3,0x00],[bit4,0x00],[bit5,0x00]],
        "Casinopolis":      [[bit0,0x03],[bit1,0x03],[bit2,0x03]],
        "Icecap":           [[bit5,0x02],[bit6,0x02],[bit7,0x02]],
        "Twinkle Park":     [[bit6,0x00],[bit7,0x00],[bit0,0x01]],
        "Speed Highway":    [[bit1,0x01],[bit2,0x01],[bit3,0x01]],
        "Red Mountain":     [[bit4,0x01],[bit5,0x01],[bit6,0x01]],
        "Sky Deck":         [[bit7,0x01],[bit0,0x02],[bit1,0x02]],
        "Lost World":       [[bit2,0x02],[bit3,0x02],[bit4,0x02]],
        "Final Egg":        [[bit3,0x03],[bit4,0x03],[bit5,0x03]]
    }
    mission =   [[1,"Sonic"],[2,"Sonic"],[3,"Sonic"],[4,"Tails"],[5,"Knuckles"],
                 [6,"Amy"],[7,"Gamma"],[8,"Big"],[9,"Sonic"],[10,"Tails"],
                 [11,"Sonic"],[12,"Knuckles"],[13,"Sonic"],[14,"Big"],[15,"Sonic"],
                 [16,"Tails"],[17,"Sonic"],[18,"Amy"],[19,"Amy"],[20,"Sonic"],
                 [21,"Gamma"],[22,"Big"],[23,"Sonic"],[24,"Tails"],[25,"Knuckles"],
                 [26,"Knuckles"],[27,"Sonic"],[28,"Sonic"],[29,"Big"],[30,"Sonic"],
                 [31,"Tails"],[32,"Knuckles"],[33,"Sonic"],[34,"Sonic"],[35,"Big"],
                 [36,"Sonic"],[37,"Tails"],[38,"Knuckles"],[39,"Gamma"],[40,"Sonic"],
                 [41,"Sonic"],[42,"Gamma"],[43,"Amy"],[44,"Big"],[45,"Sonic"],
                 [46,"Sonic"],[47,"Tails"],[48,"Knuckles"],[49,"Sonic"],[50,"Amy"],
                 [51,"Gamma"],[52,"Big"],[53,"Sonic"],[54,"Tails"],[55,"Sonic"],
                 [56,"Knuckles"],[57,"Sonic"],[58,"Sonic"],[59,"Knuckles"],[60,"Big"]]
    if (dictionary_contains_key(emblem, i)) {
        for j in range (0, length(emblem[i])-1) {
            if (length(emblem[i]) > 3) {
                array_push(Array, b(emblem[i][j][0], emblem[i][j][1]))
            }
            else for l in range(0,2) {
                array_push(Array, b(emblem[i][j][0], emblem[i][j][1] + l*4))
            }
        }
    }
    else if (substring(format("{0}",i),-5) == "Clear") {
        currentStage = substring(format("{0}",i),0,-8)
        currentChar = substring(format("{0}",i),-8,3)
        if (dictionary_contains_key(emblem, currentStage)) {
            for j in range(0, length(emblem[currentStage])-1) {
                if(substring(emblem[currentStage][j][2],0,3) == currentChar) {
                    array_push(Array, b(emblem[currentStage][j][0], emblem[currentStage][j][1] + 2*4))
                }
            }
        }
    }
    else if (substring(format("{0}",i),-7) == "Mission") {
        for j in range(0, length(mission)-1) {
            calculus = bit7(0x007a83ac + j) 
            if(mission[j][1] == substring(i,0,-7)) {
                array_push(Array, calculus)
            }
            else if(substring(i,0,-7) == "All") {
                array_push(Array, calculus)
            }
        }
    }
    else if (substring(format("{0}",i),-5) == "Metal") {
        for j in range(0, length(charStage[0])-1) {
            current = charStage[0][j]
            if (substring(current,4,5) != "Chase") {
                for l in range (0,2) {
                    if(substring(i,0,-5) == current) {
                        array_push(Array, b(metal[current][2-l][0], 0x32F - metal[current][2-l][1]))
                    }
                    else if(substring(i,0,-5) == "All") {
                        array_push(Array, b(metal[current][2-l][0], 0x32F - metal[current][2-l][1]))
                    }
                }
            }
        }
    }
    else array_push(Array, b(emblem["Story"][i][0], emblem["Story"][i][1]))
       
    return Array
}

function upgrades(i) {
    Array = []
    upgrades = {
        0: [0x007aa49d,0x007aa49e,0x007aa4af],
        1: [0x007aa4dd,0x007aa4eb],
        2: [0x007aa529,0x007aa52a],
        3: [0x007aa562,0x007aa56e],
        4: [0x007aa5e0,0x007aa5e1,0x007aa5f0,0x007aa5ef,0x007aa5f1,0x007aa5ee],
        5: [0x007aa599,0x007aa59a],
    }
    for j in range (0, length(upgrades[i])-1) array_push(Array, byte(upgrades[i][j]))
    return Array
}

function stageID(name) {
    for i in range (0, length(stageNumb)-1) {
        if (stageNumb[i][0] == name) return stageNumb[i][1]}
}

function upgradeLogic(i) {
    Array = []
    function upgrades(i, j) => byte(0x26a1e0 + i + j)
    for index in range (0, upgradeNumb[i][1]-1) {
        array_push(Array, upgrades(upgradeNumb[i][0], index))
    }
    return sum_of(Array, y => prev(y)/prev(y)) < upgradeNumb[i][1] && sum_of(Array, y => y/y) == upgradeNumb[i][1]
}

function mult(i) {
    if (substring(i, -1) == "s") return ""
    else return "s"
}

function scoreCalculation(i) {
    if (i == "Hedgehog Hammer") {
        scoring = baseChain(dword_be(0x006b3650),[-0xA0,0x08],dword_be)
        return measured(scoring)
    }
    else if (i == "Twinkle Circuit") {
        return measured(twinkleCircuit - circuitStart, when=twinkleCircuit >= circuitStart)
    }
    else if (i == "Boss Rush") {
        Array = []
        for i in range(0,4) {
            start = 0x0074c750+0x0c*i
            for j in range(0,2) {
               time = dword_be(start + 0x04*j)
               multi = [3600,60,1]
               array_push(Array, time * multi[j])
            }
        }
        return measured(sum_of(Array, y=>y))
    }
}

for i in range (0, 6) {
    if (i < 6) {
        tl = character[i]
        for j in range (0, length(charStage[i])-1) {
            currentClear = format("{0}{1}Clear",charStage[i][j],substring(character[i],0,3))
            cSum = sum_of(collectables(currentClear),y=>y)
            achievement(
                title = format("{0}", titles(currentClear)), points = 2, type = "progression",
                description = format("Complete {0} in {1}'{2} campaign",charStage[i][j],character[i],mult(character[i])),
                trigger =  stage == stageID(charStage[i][j]) && char == i
                        && prev(cSum) == 0
                        && cSum == 1
            )
            for l in range(0,2) {
                modeText = ["Best Score","Best Clear Time","Most Rings"]
                modeDesc = ["with the highest possible Score",
                            "as fast as possible",
                            "with the most Rings in hand"]
                valCalc = [score, timeMeasure, prev(ring)]
                fmt = ["Value","Frames","Value"]
                if (i == 5 && l == 1) lib = false
                else if (l != 1) lib = false
                else lib = true
                if (i == 5 && j == 1) lib = false
                startANDsubmit =  stage == stageID(charStage[i][j]) && submode == 0 && char == i
                               && __ornext(prev(cSum) == 0 && cSum == 1 || state == 5)
                leaderboard(
                    title = format("{0} - {1} - {2}", charStage[i][j],character[i],modeText[l]),
                    description = format("Complete {0} as {1} {2}", charStage[i][j],character[i],modeDesc[l]),
                    start = startANDsubmit,
                    cancel = always_false(),
                    submit = always_true(),
                    value=valCalc[l], format=fmt[l], lower_is_better=lib)
            }
        }
        Array = array_map(titles("Upgrades"),y=>y)
        uSum = sum_of(upgrades(i), y=>y)
        uVal = length(upgrades(i))
        achievement(
            title = format("{0}", Array[i]), points = 5,
            description = format("Find all of {0}'{1} upgrades", character[i],mult(character[i])),
            trigger =  progressCheck
                    && prev(uSum) == uVal-1
                    && uSum == uVal
        )
    }
    sum = sum_of(collectables(i), y=>y)
    Array = array_map(titles("Story"),y=>y)
    achievement(
        title = format("{0}", Array[i]), points = 10+(i/6)*15, type = "progression",
        description = format("Complete {0}'{1} Story", character[i],mult(character[i])),
        trigger =  cutscene && cutsceneType == 0x100 && char == i
                && prev(sum) == 0
                && sum == 1
    )
    for j in range (0, length(charBoss[i])-1) {
            if (i == 6) end = stage == stageID(charBoss[i][j]) && char == i && ftime > 0 && memCheck
            else end = stage == stageID(charBoss[i][j]) && char == i && memCheck
            if (substring(charBoss[i][j],4,1) == "3" || substring(charBoss[i][j],4,1) == "4"
            || substring(charBoss[i][j],4,1) == "5") {
                str = stage == stageID(charBoss[i][j]) && char == i && movementState == 1
                valCalc = prev(ftime)!=ftime
            }
            else {
                str = end
                valCalc = timeMeasure
            }
            leaderboard(
                title = format("{0} - {1}", charBoss[i][j],character[i]),
                description = format("Defeat {0} as {1} as fast as possible", charBoss[i][j],character[i]),
                start = str,
                cancel = __ornext(!str),
                submit = end,
                value=valCalc, format="Frames", lower_is_better=true)
        }
        for j in range (0, length(bonus)-1) {
            chase = substring(bonus[j],4,5)
            valCalc = score
            fmt = "Value"
            lib = false
            if (chase != "Chase" && bonus[j] != "Boss Rush") {
                stANDsb = stage == stageID(bonus[j]) && mode == 1 && submode == 1
                ttl = ""
                desc = ""
            }
            else if (chase == "Chase") {
                stANDsb = stage == stageID(bonus[j])
                ttl = ""
                desc = ""
            }
            else {
                stANDsb = stage == stageID(charBoss[i][length(charBoss[i])-1]) && char == i && mode == 1 && state == 0x0f && npc == 0
                ttl = format(" - {0}",character[i])
                desc = format("{0}'{1} ",character[i],mult(character[i]))
            }
            if (chase != "Chase" && bonus[j] != "Hedgehog Hammer" && bonus[j] != "Twinkle Circuit" && bonus[j] != "Boss Rush") {
                startANDsubmit = stANDsb && clearCheck
            }
            else  {
                if (chase == "Chase") checkVal = (j+1)/(j+1)-1
                else checkVal = j-3
                stChecks = [
                    state == 0x0f && prev(flagPause) == 0 && prev(byte(0x000ac779)) == 1 && byte(0x000ac779) == 0,
                    state == 0x0f && prev(flagPause) == 0 && prev(flagController) == 1 && prev(flagTime) == 0,
                    prev(flagPause) == 0 && prev(flagController) == 1 && prev(flagTime) == 1,
                    memCheck]
                startANDsubmit = stANDsb && stChecks[checkVal]
                if (chase != "Chase") valCalc = scoreCalculation(bonus[j])
                if (bonus[j] == "Twinkle Circuit" || bonus[j] == "Boss Rush") {
                fmt = "Frames"
                lib = true
                }
            }
            if (fmt == "Value") type = "with as many points as possible"
            else type = "as fast as possible"
            if (i == 0x06 && bonus[j] != "Boss Rush"
            || bonus[j] == "Boss Rush" && length(charBoss[i]) > 1)
            leaderboard(
                title = format("{0}{1}", bonus[j],ttl),
                description = format("Complete {0}{1} {2}", desc,bonus[j],type),
                start = startANDsubmit,
                cancel = always_false(),
                submit = always_true(),
                value=valCalc, format=fmt, lower_is_better=lib)
        }
    if (i > 0 && i < 6) {
        if (character[i+1] == "Big") extra = 1
        else if (character[i+1] == "Gamma") extra = -1
        else extra = 0
        bits = i+2
        unlock = bit(bits + extra,saveFile + 0x28)
        Array = array_map(titles("Unlocks"),y=>y)
        achievement(
            title = format("{0}", Array[i-1]), points = 3, type = "progression",
            description = format("Unlock {0}", character[i+1]),
            trigger = progressCheck && prev(unlock) == 0 && unlock == 1
        )
    }
}

for i in range (0, 10) {
    currentStage = stageNumb[i+1][0]
    sum = sum_of(collectables(currentStage), y=>y)
    val = length(collectables(currentStage))
    achievement(
        title = format("{0}",titles(currentStage)), points = 5,
        description = format("Finish all of {0}'{1} Missions",currentStage,mult(currentStage)),
        trigger =  progressCheck
                && prev(sum) == val-1
                && sum == val
    )
}

for i in range(0,2) {
    tp = ["Adventure Field","Sub Game","Chao Race"]
    sum = sum_of(collectables(tp[i]), y=>y)
    val = length(collectables(tp[i]))
    achievement(
        title = format("{0}",titles(tp[i])), points = 5,
        description = format("Get all the emblems in the {0}s",tp[i]),
        trigger =  progressCheck
                && prev(sum) == val-1
                && sum == val
    )
}

for i in range (0, 5) {
    mis = format("{0}Mission",character[i])
    sum = sum_of(collectables(mis), y=>y)
    val = length(collectables(mis))
    achievement(
        title = format("{0}",titles(mis)), points = 5,
        description = format("Finish all of {0}'{1} Bonus Missions",character[i],mult(character[i])),
        trigger =  progressCheck
                && prev(sum) == val-1
                && sum == val
    )
}

for i in range(0,2) {
    eggType = ["Golden", "Silver", "Black"]
    egg = byte(0x007aa45f + i)
    Array = array_map(titles("Egg"),y=>y)
    achievement(
        title = format("{0}",Array[i]), points = 3,
        description = format("Bring a {0} Egg to the Chao Garden",eggType[i]),
        trigger =  stage == 0x27+(i%2)*2+(i/2)
                && prev(egg) == 0
                && egg == 1
    )
}

function emblemCalc() {
    Array = []
    for j in range (0,0x10) {
        array_push(Array, b(bitcount, j))
    }
    return Array
}

for i in range(1,8) {
    
    neg = ((i/6*i)-(5*(i/6)))*10
    count = i*20-neg
    sum = sum_of(emblemCalc(), y=>y)
    pts = [5,5,5,5,5,10,10,25]
    Array = array_map(titles("All"),y=>y)
    achievement(
        title = format("{0}",Array[i-1]), points = pts[i-1],
        description = format("Earn {0} Emblems",count),
        trigger =  __ornext(progressCheck || cutscene)
                && prev(sum) == count-1
                && sum == count
    )
}

for i in range(1,3) {
    mis = format("AllMission")
    sum = sum_of(collectables(mis), y=>y)
    val = length(collectables(mis))
    count = i*20
    Array = array_map(titles(mis),y=>y)
    achievement(
    title = format("{0}",Array[i-1]), points = 5*i+(i/3)*10,
    description = format("Finish {0} Bonus Missions",count),
    trigger =  progressCheck
            && prev(sum) == count-1
            && sum == count
    )
}

for i in range (0, length(charStage[0])-1) {
    if (substring(charStage[0][i],4,5) != "Chase") {
        currentStage = charStage[0][i]
        currentSum = format("{0}Metal",currentStage)
        sum = array_map(collectables(currentSum),y=>y)
        Array = array_map(titles(currentSum),y=>y)
        achievement(
            title = format("{0}", Array[0],character[0]), points = 2,
            description = format("Complete {0} as Metal {1}",charStage[0][i],character[0]),
            trigger = char == 6 && stage == stageID(charStage[0][i]) && clearCheck
            && prev(sum[0]) == 0 && sum[0] == 1
        )
    }
}

for i in range (0, length(charStage[0])-1) {
    if (substring(charStage[0][i],4,5) != "Chase") {
        currentStage = charStage[0][i]
        currentSum = format("{0}Metal",currentStage)
        sum = sum_of(collectables(currentSum), y=>y)
        val = length(collectables(currentSum))
        Array = array_map(titles(currentSum),y=>y)
        achievement(
            title = format("{0}",Array[1]), points = 5,
            description = format("Finish all of {0}'{1} Missions as Metal {2}",currentStage,mult(currentStage),character[0]),
            trigger =  progressCheck
                    && prev(sum) == val-1
                    && sum == val
        )
        if (i == length(charStage[0])-1) {
            currentCollectables = "AllMetal"
            sum = sum_of(collectables(currentCollectables), y=>y)
            val = length(collectables(currentCollectables))
            achievement(
                title = format("{0}",titles(currentCollectables)), points = 10,
                description = format("Finish all of Metal {0}'{1} Missions",character[0],mult(character[0])),
                trigger =  progressCheck
                        && prev(sum) == val-1
                        && sum == val
            )
        }
    }
}

function bossCalc() {
    Array = []
    bossTimes = [0x0c0000,0x050000,0x061e00,0x021e00,0x040000,0x000f00,0x0c0000]
    for i in range(0,length(character)-2) {
        array_push(Array,b(tbyte_be,-0x36+0x09*i) == bossTimes[i])
    }
    array_push(Array,b(tbyte_be,0x323) == bossTimes[length(bossTimes)-1])
    return Array
}

achievement(
    title = format("Parade of Lame-Os"), points = 5,
    description = format("Set a new 1st place record for each of the 7 characters Boss Rushes"),
    trigger =  progressCheck
            && __ornext(any_of(bossCalc(),y=>prev(y))) && all_of(bossCalc(),y=>!y)
)

action = pointerChain([0x00],byte)
interaction = pointerChain([0x01],byte)
xCoord = pointerChain([0x20],float_be)
yCoord = pointerChain([0x24],float_be)
zCoord = pointerChain([0x28],float_be)
shield = pointerChain([0x48,0x20,0x07],bit1)
anim = pointerChain([0x38,0x211],byte)
controlA = bit0(0x000a6ce0)
controlY = byte(0x000a6ce2)
casinoPointer = dword_be(0x00591cfc)
casinoRings = baseChain(casinoPointer,[0xa8be],word_be)
ideya = baseChain(casinoPointer,[0x62],byte)
planeHealth = float_be(0x01128ee0)
eggHealth = float_be(0x008429d4)
icons = dword_be(0x0079be64)
zeroMarker = dword_be(0x00840468)

types = {
    "Emerald Coast": [0x03f000,0x00f0e0,0x0670e0],
    "Casinopolis": [0xb0e0, 0x77e0],
    "Icecap": [0x20e0],
    "Red Mountain": [0xf0e0,0x70e0],
    "Sky Deck": [0x7000],
    "itemBox": [0xb0e0],
    "ring": [0xb000],
    "spring": [0xf0e0],
    "speedpad": [0x70e0],
    "lights": [0x7710]
}

function objectCheck(type, logic) {
    Array = []
    Array2 = []
    for i in range (0, 15) {
        playerCalc = pointerChain([0x38,0x14 + (4*(2*i))],dword_be)
        pointerChain3A = pointerChain([0x38,0x14 + (4*(2*i))],dword_be)
        if (logic == "emerald") {
            log = always_true()
            pointerChain6 = pointerChain([0x38,0x14 + (4*(2*i)),0x38,0x0C,0x01],tbyte_be)
        }
        else pointerChain6 = pointerChain([0x38,0x14 + (4*(2*i)),0x38,0x0C,0x02],word_be)
        if (logic == "") log = always_true()
        else if (logic == "bomb") log = pointerChain([0x38,0x14 + (4*(2*i)),0x2C],float_be) == 7.0
        else if (logic == "ice") log = dword_be((dword_be(prev(dword_be((dword_be((dword_be(
        byte((dword_be(0x6B4450) & 0x1FFFFFF) + 0x08) * 4 + 0x6B4450)
        & 0x01FFFFFF) + 0x38) & 0x1FFFFFF) + 0x14 + (4*(2*i)))
        & 0x01FFFFFF) + 0x00) & 0x1FFFFFF) + 0x08) != 0
        else if (logic == "ring") log = pointerChain([0x38,0x14 + (4*(2*i)),0x01],byte) != 0x2f && never(ring < prev(ring))
        for j in range (0, 7) { //Only check the first 8 cause all 16 would be too much
            pointerChain3B = pointerChain([0x38,0x14 + (4*(2*j))],dword_be)
            array_push(Array2, pointerChain3A != prev(pointerChain3B))
        }
        array_push(Array, __ornext(any_of(type, y => pointerChain6 == y))
        && all_of(Array2, y => y) && log)
        for j in range (0, length(Array2)){
            array_pop(Array2)
        }
    }
    return Array
}

function interaction(i) {    
    ground = pointerChain([0x00],bit0)
    ground1 = pointerChain([0x00],bit1)
    air = pointerChain([0x00],bit3)
    air1 = pointerChain([0x00],bit2)
    switch = pointerChain([0x00],bit4)
    bits = pointerChain([0x00],bitcount)
    val = action
    groundCheck = pointerChain([0x05],bit0)
    
    if (i == "jumpS")
    //logic = prev(val) != 0x08 && prev(groundCheck) == 1 && val == 0x08 && groundCheck == 0
    logic = prev(controlA) == 0 && controlA == 1 && action != 0x04 && action < 0x08 && state == 0x0f
    else if (i == "jump")
    logic = prev(val) != 0x06 && prev(groundCheck) == 1 && val == 0x06 && groundCheck == 0
    else if (i == "groundJump")
    logic = prev(val) != 0x06 && prev(val) != 0x18 
    && prev(groundCheck) == 1 && val == 0x06 && groundCheck == 0
    else if (i == "groundK")
    logic = prev(val) != 0x01 && prev(val) != 0x02 && prev(val) != 0x0a && prev(val) != 0x0d && prev(val) != 0x1a
    && __ornext(val == 0x01 || val == 0x02) && prev(val) != val && groundCheck == 1
    else if (i == "groundT")
    logic = prev(val) != 0x01 && prev(val) != 0x02 && prev(val) != 0x0b && prev(val) != 0x0c && prev(val) != 0x14
    && __ornext(val == 0x01 || val == 0x02) && prev(val) != val && groundCheck == 1
    else if (i == "flyT")
    logic = prev(val) != val && prev(val) != 0x3d && val == 0x0f
    else if (i == "flyK")
    logic = prev(val) != val && val == 0x0b
    i = []
    array_push(i, logic)
    return i
}

function rotate(i) {
    Array = [always_true()]
    logic = [action != 0x1e, action == 0x1e,
             prev(yrotate) != yrotate, action != 0x1e && prev(yrotate) != yrotate]
    for index in range (0, i-1) {
        for j in range (0, length(logic)-1) {
            array_push(Array, once(array_pop(Array) && logic[j]))
        }
    }
    return array_pop(Array)
}

function funcCalc(func, val) {
    return measured(tally_of(func, val, y=>y), when=once(startCha)) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}

function funcCalcGamma(func, val) {
    return measured(tally_of(func, val, y=>y), when=once(startChaGamma)) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}

function funcCalcN(func, val, end) {
    return measured(tally_of(func, val, y=>y && never(end)), when=once(startCha)) && trigger_when(always_false())
           || never(repeated(val+1,tally_of(func, val+1, y=>y) && never(end))) && always_false()
}

function funcCalcP(func, val, pause) {
    return unless(pause) && measured(tally_of(func, val, y=>y), when=once(startCha)) && trigger_when(always_false())
           || unless(pause) && never(tally_of(func, val+1, y=>y)) && always_false()
}

function funcCalcS(cal,start,end) {
    func = []
    func2 = []
    array_push(func2, once(always_true()))
    for i in range (0, length(cal)-1) {
        array_push(func, cal[i])
        array_push(func2, cal[i])
    }
    return measured(tally_of(func, 999, y=>y), when=once(start)) && trigger_when(always_false())
           || unless(tally_of(func2, 1, y=>y)) && //never(always_true()) //RATools refuses to create an always_true() ResetIf
           never(any_of(end, y=>char == y)) && always_false()
}

function multCalc(val,log) {
    Array = []
    Array2 = []
    for i in range (1,val) {
        if (log == "casino") logic = __ornext(sub == 2 || sub == 3) && ring - prev(ring) == i
        else if (log == "icon") logic = icons - prev(icons) == i
        else if (log == "ring") logic = ring/(8)-prev(ring)/(8) == 1*i
        else if (log == "zero") logic =  baseChain(dword_be(0x006b3e50+(i-1)*4),[0x38,0x0C,0x00],dword_be) == 0x00063720
                                      && baseChain(dword_be(0x006b3e50+(i-1)*4),[0x00],byte) == 0x11
        for j in range (1,i) {
           array_push(Array, logic)
        }
    }
    return Array
}

function charlie() {
    Array = []
    monitor1X = baseChain(npc,[0x1d],float_be) == -312.839996
    monitor1Z = baseChain(npc,[0x25],float_be) == -743.950012
    monitor2X = baseChain(npc,[0x1d],float_be) == -315.869995
    monitor2Z = baseChain(npc,[0x25],float_be) == -749.0
    monitor = [[monitor1X,monitor1Z],[monitor2X,monitor2Z]]
    seaCheck = [0x007aa4a3,0x007aa4e2,0x007aa51f,0x007aa55d,0x007aa5db,0x007aa59c]
    for i in range(0, length(character)-2) {
        for j in range(0,1) {
            array_push(Array, char == i && byte(seaCheck[i]) == 0 && sub == j && prev(monitor[j][0]) && prev(monitor[j][1]))
        }
    }
    return Array
}

l = 0
m = 1
r = 2

sEC = [[r, funcCalcP(objectCheck(types["Emerald Coast"], "emerald"),3, sub == 0 && xCoord >= 2765.0 && xCoord <= 5310.0)]]
sWV = [[l, ring > 35],[m, trigger_when(shield == 1)]]
sCO = [[r, funcCalc(multCalc(5,"casino"),20)]]
sIC = [[l, ring > 20, submode == 1]]
sTP = [[l, enemyScore != 0, any_of(objectCheck(types["itemBox"],"bomb"), y=>y)]]
sSH = [[r, funcCalc(interaction("jumpS"),4)]]
sRM = [[r, funcCalc([(__ornext(any_of([0x09,0x0a,0x14,0x24], y=>action == y)) 
        && prev(action) != 0x25 && prev(action) != action && interaction != 0x13)],4)]]
sSD = [[m, trigger_when(prev(ring) == 60)]]
sLW = [[r,  funcCalcS([tally_of(multCalc(5,"ring"), 1,y=>y && never(ring < prev(ring))),
            deduct(all_of(interaction("jumpS"),y=>y)
         && never(ring < prev(ring)))],startCha,[0,6])]]
sFE = [[r, funcCalcN(interaction("jumpS"),4,prev(sub) != sub)]]
tWV = [[r, funcCalc(interaction("groundT"),2)]]
tCO = [[l, prev(icons) < icons]]
tIC = [[l, submode == 1],[r, funcCalc(objectCheck(types["Icecap"], "ice"),8)]]
tSD = [[m, ftime < 0x003200],[r, funcCalcP(interaction("groundT"),5,once(state == 0x0f && never(once(action == 0x2d))))]]
tSH = [[r, funcCalc(interaction("flyT"),2)]]
kSH = [[r, funcCalc(interaction("groundK"),5)]]
kCO = [[r, funcCalc(interaction("jump"),4)]]
kRM = [[l, all_of(interaction("groundJump"), y=>y)]]
kLW = [[l, all_of(interaction("flyK"), y=>y)]]
kSD = [[r, funcCalc([rotate(1), rotate(2), rotate(3)],2)]]
aTP = [[l, ring != 0]]
aHS = [[l, zeroMarker == 1]]
aFE = [[l, action >= 0x13 && action <= 0x16]]
gFE = [[l, __ornext(controlY < 128-128/4 || controlY > 128+128/4) && state != 0x10]]
gEC = [[l, ring != 0, any_of(objectCheck(types["spring"], ""), y=>y)]]
gWV = [[m, trigger_when(prev(ring) == 30)]]
gRM = [[r,  funcCalcS([tally_of(objectCheck(types["ring"], "ring"), 1,y=>y),
            deduct((prev(anim) != 0x70) && anim == 0x70 && never(ring < prev(ring)))],startChaGamma,[5])]]
gHS = [[r, funcCalcGamma([prev(enemyScore) < enemyScore],18)]]

cheevo = {
    "Sonic": [
    ["I Could Do This in My Sleep","without using more than 3 springs, speed pads or spring pads",sEC],
    ["Being So up High Is Pretty Shocking","with an electric shield and without ever having more 35 Rings in hand",sWV],
    ["Fighting the Addiction","without earning more than 20 Rings from the tables",sCO],
    ["Cold Crash Due to Cold Cash","without collecting more than 20 Rings",sIC],
    ["Sparing the Park Animals","without defeating any badniks",sTP],
    ["I'm Faster on Land Than in the Sky","without jumping more than 4 times",sSH],
    ["I Feel a Burning in My Core","without using more than 4 rockets, springs, ladders or ziplines",sRM],
    ["Small Pocket Issue","with exactly 60 Rings in hand",sSD],
    ["You Better Not Lose Your Head in Here!","where each 8th Ring earns you a jump",sLW],
    ["Nuts and Bolts on My Legs","without jumping more than 4 times per area",sFE]
    ],
    "Tails": [
    ["It's Called Windy Valley for a Reason","without touching the ground more than 2 times",tWV],
    ["I Don't Wanna Get Dirty in Here","without breaking any Item Boxes",tCO],
    ["Avoiding Sharp Cuts With Sharp Turns","without breaking more than 8 Crystals",tIC],
    ["Up in the Sky Is No One Who Can Stop Me","in less than 50 seconds and without touching the ground more than 5 times",tSD],
    ["I Can Do It Like Sonic Too!","without flying more than 2 times",tSH]
    ],
    "Knuckles": [
    ["Over and Across the City","without touching the ground more than 5 times",kSH],
    ["Looking for Cash on the Ground","without jumping more than 4 times",kCO],
    ["The Air Is Too Dense up Here","without jumping even once from the ground",kRM],
    ["I Broke My Knuckles","without flying even once",kLW],
    ["Never Losing Orientation Again","without changing the rotation more than 2 times",kSD]
    ],
    "Amy": [
    ["Cash Is Worthless Compared to Sonic","without collecting any Rings",aTP],
    ["He Lost His Glasses","without ever being scanned by ZERO",aHS],
    ["My Final Straw of This Egg's Machine","without using the Hammer even once",aFE]
    ],
    "Gamma": [
    ["My Wheels Are Broken","while only holding forward",gFE],
    ["It's Like Defeating My Enemies, Quick and Easy","without collecting any Rings or using any springs",gEC],
    ["Full Gas Tank","with exactly 30 Rings in hand",gWV],
    ["My Fuel Are Rings","where each single Ring earns you a shot",gRM],
    ["Must Protect My Masters Creations","without destroying more than 18 badniks",gHS]
    ],
}

for i in range(0, length(character)-1) {
    cur = character[i]
    if (dictionary_contains_key(cheevo, cur) == true) {
        inf = cheevo[cur]
        for j in range(0,length(inf)-1) {
            lLogic = always_false()
            mLogic = always_true()
            rLogic = always_true()
            current = cheevo[cur][j]
            for l in range(0,length(current[2])-1) {
                logic = current[2][l]
                for ii in range(1,length(logic)-1) {
                    if (logic[0] == 0) lLogic = lLogic || logic[ii]
                    else if (logic[0] == 1) mLogic = mLogic && logic[ii]
                    else if (logic[0] == 2) rLogic = rLogic && logic[ii]
                }
            }
            if (i == 5) {
                fail = failChaGamma
                start = startChaGamma
            }
            else {
                fail = failCha
                start = startCha
            }
            if (i == 0) chpr = char != 0 && char != 6
            else chpr = char != i
            currentClear = format("{0}{1}Clear",charStage[i][j],substring(character[i],0,3))
            cSum = sum_of(collectables(currentClear),y=>y)
            achievement(
                title = current[0], points = 10,
                description = format("As {0} complete {1} {2}",character[i],charStage[i][j],current[1]),
                trigger =  never(fail || stage != stageID(charStage[i][j]) || chpr || demoProtection || lLogic)
                        && once(start) && mLogic
                        && __ornext(trigger_when(prev(cSum) == 0 && cSum == 1 || state == 5))
                        || rLogic
            )
        }
    }
}

for i in range (0,1) {
    cheev = [["I Like Lush Caves","Emerald Coast",zCoord >= 2030.0],
             ["Wooow! What a Huge Area","Hot Shelter",xCoord <= 485.0 && xCoord >= -295.0
              && yCoord >= 55.0 && zCoord <= -345.0 && zCoord >= -635.0]]
    cheev2 = [["I'm Pretty Proud of Myself","earn at least 5000 Rings to build up a golden suprise",
               prev(casinoRings) < 5000 && casinoRings >= 5000,always_true()],
              ["Hero At Night","collect 5 Ideya's for a secret reward on the Night's Table",
               prev(ideya) == 4 && ideya == 5,sub == 3]]
    achievement(
        title = cheev[i][0], points = 10,
        description = format("As Big catch a fish in {0}'s hidden area",cheev[i][1]),
        trigger =  progressCheck
            && stage == stageID(cheev[i][1]) && char == 4
            && cheev[i][2] && __ornext(action == 0x25 || action == 0x2d)
    )

    achievement(
        title = cheev2[i][0], points = 10+i/1*15,
        description = format("As Sonic in Casinopolis {0}",cheev2[i][1]),
        trigger =  progressCheck && __ornext(char == 0 || char == 6)
            && stage == stageID("Casinopolis") && cheev2[i][3]
            && casinoPointer != 0
            && cheev2[i][2]
    )
}

achievement(
    title = format("You Wanna Go Fishing Already?"), points = 2, type = "missable",
    description = format("Unlock Big earlier than intended"),
    trigger =  progressCheck
        && b(bit5, 0x08) == 0 && b(bit0, 0x0D) == 0 && prev(b(bit6, 0x28)) == 0 && b(bit6, 0x28) == 1
)

achievement(
    title = "Sorry Charlie", points = 2, type = "missable",
    description = "Find a secret message on the Egg Carrier for someone called \"Charlie\"",
    trigger =  progressCheck
        && stage == stageID("outside the Egg Carrier")
        && npc == 0 && any_of(charlie(), y=>y)
)

achievement(
    title = "Overheating Self-Destruct", points = 2,
    description = "Defeat the Egg Carrier in Sky Chase: Act 2 without shooting at it",
    trigger =  progressCheck
        && stage == stageID("Sky Chase: Act 2")
        && planeHealth > 0.0 && prev(eggHealth) == 6.0 && eggHealth == 0.0
)

achievement(
    title = "I Have This Weird Feeling of a Déjà-vu", points = 2,
    description = "Find some secret lives in Final Egg which can only be accessed by a very slow platform",
    trigger =  never(!progressCheck || stage != stageID("Final Egg")|| sub != 2)
            && unless(__ornext(xCoord <=-65.0 || xCoord >=75.0))
            && unless(yCoord <= -3015.0) && unless(__ornext(zCoord <=-345.0 || zCoord >=-225.0))
            && tally_of(multCalc(4,"icon"),4,y=>y)
)

stagelookup = {}
bosslookup = {}
bossNumb = []

for i in range (0, length(character)-1) {
    for j in range (0,length(charBoss[i])-1) {
        for l in range (0,length(stageNumb)-1) {
                if (l < length(stageNumb)-3) stagelookup[stageNumb[l][1]] = stageNumb[l][0]
            if (charBoss[i][j] == stageNumb[l][0]) {
                bosslookup[stageNumb[l][1]] = stageNumb[l][0]
                array_push(bossNumb,stage == stageNumb[l][1])
            }
        }
    }
}


charlookup = {
    0x00: "Sonic",
    0x02: "Tails",
    0x03: "Knuckles",
    0x05: "Amy",
    0x06: "Gamma",
    0x07: "Big",
    0x10: "Metal Sonic",
    0x20: "Super Sonic",
}

chartype = {
    0x00: "speeding through",
    0x02: "flying through",
    0x03: "searching around",
    0x05: "hammering around",
    0x06: "shooting around",
    0x07: "fishing in",
}

modelookup = {
    0x00: "Adventure",
    0x01: "Trial",
    0x02: "Mission",
    0x03: "Game Gear",
    0x04: "Options",
}

special = {
    0x24: "flying through",
    0x25: "flying through",
    0x26: "going down"
}

demolookup = {
    0xff:"Watching a Demo | "
}


rich_presence_conditional_display(!progressCheck && mode == 3, "Currently enjoying some Game Gear Games")
rich_presence_conditional_display(!progressCheck && mode == 4, "Currently getting hot with some funky Grooves in the Options Menu")
rich_presence_conditional_display(!progressCheck && stage == 0x00 && cutscene && cutsceneType == 0x80, "Watching the Intro Cutscene",
rich_presence_lookup("char", actualChar+(char/0x06)*0x20, charlookup), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"))
rich_presence_conditional_display(!progressCheck && stage == 0x00 && cutscene, "Watching the End Cutscene of {0} | Emblems: {1}",
rich_presence_lookup("char", actualChar+(char/0x06)*0x20, charlookup), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"))
rich_presence_conditional_display(!progressCheck, "Currently in the Main Menu")

rich_presence_conditional_display(progressCheck && stage == 0x00 && mode == 1, "{0}{1} is currently trying to beat a score in {2} | Score: {3} | Emblems: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", measured(baseChain(dword_be(0x006b3650),[-0xA0,0x08],dword_be)), "Value"),
rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("special", stage, special))
rich_presence_conditional_display(progressCheck && stage == 0x00, "Getting ready for a Sonic Adventure")

rich_presence_conditional_display(progressCheck && stage == 0x23, "{0}{1} is currently driving around {2} | Time: {3} | Emblems: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Frames", measured(twinkleCircuit - circuitStart, when=twinkleCircuit >= circuitStart), "FRAMES"),
rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("special", stage, special))

//Mission
rich_presence_conditional_display(progressCheck && stage >= 0x24 && stage <= 0x26 && mode == 2, "{0}{1} is currently {5} around {2} | Score: {3} | Missions: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", score, "VALUE"), rich_presence_value("Value", sum_of(collectables(format("AllMission")), y=>y)),
rich_presence_lookup("special", stage, special))

rich_presence_conditional_display(progressCheck && stage >= 0x27 && stage <= 0x29 && mode == 2, "{0}{1} is currently playing with Chao's in the {2} Garden | Missions: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"), rich_presence_value("Value", sum_of(collectables(format("AllMission")), y=>y)),
rich_presence_lookup("special", stage, special))

rich_presence_conditional_display(progressCheck && stage >= 0x1a && stage <= 0x29 && mode == 2, "{0}{1} is currently wandering around {2} | Missions: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"), rich_presence_value("Value", sum_of(collectables(format("AllMission")), y=>y)))

rich_presence_conditional_display(progressCheck && mode == 2 && (stage >= 0x0f && stage <= 0x19) || (char == 0x05 && movementState == 1), "{0}{1} is currently fighting against {2} | Lives: {3} | Rings: {4} | Score: {5} | Time: {6} | Missions: {7} | {8} Mode",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar, charlookup),
rich_presence_lookup("boss", stage, bosslookup), rich_presence_value("Value", lives, "VALUE"),
rich_presence_value("Value", ring, "VALUE"), rich_presence_value("Value", enemyScore, "VALUE"),
rich_presence_value("Frames", timeMeasure, "FRAMES"), rich_presence_value("Value", sum_of(collectables(format("AllMission")), y=>y)),
rich_presence_lookup("mode", mode, modelookup))

rich_presence_conditional_display(progressCheck && mode == 2, "{0}{1} is currently {2} {3} | Lives: {4} | Rings: {5} | Score: {6} | Time: {7} | Missions: {8} | {9} Mode",
rich_presence_lookup("demo", demo, demolookup, ""),
rich_presence_lookup("char", actualChar, charlookup), rich_presence_lookup("type", actualChar, chartype),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"),
rich_presence_value("Value", ring, "VALUE"), rich_presence_value("Value", enemyScore, "VALUE"),
rich_presence_value("Frames", timeMeasure, "FRAMES"), rich_presence_value("Value", sum_of(collectables(format("AllMission")), y=>y)),
rich_presence_lookup("mode", mode, modelookup))

//Story & Trial
rich_presence_conditional_display(progressCheck && stage >= 0x24 && stage <= 0x26, "{0}{1} is currently {5} around {2} | Score: {3} | Emblems: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", score, "VALUE"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("special", stage, special))

rich_presence_conditional_display(progressCheck && stage >= 0x27 && stage <= 0x29, "{0}{1} is currently playing with Chao's in the {2} Garden | Emblems: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("special", stage, special))

rich_presence_conditional_display(progressCheck && stage >= 0x1a && stage <= 0x29, "{0}{1} is currently wandering around {2} | Emblems: {4}",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"))

rich_presence_conditional_display(progressCheck && stage == 0x13, "{0}Super {1} is currently fighting against {2} | Lives: {3} | Rings: {4} | Score: {5} | Time: {6} | Emblems: {7} | {8} Mode",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("boss", stage, bosslookup), rich_presence_value("Value", lives, "VALUE"),
rich_presence_value("Value", ring, "VALUE"), rich_presence_value("Value", enemyScore, "VALUE"),
rich_presence_value("Frames", timeMeasure, "FRAMES"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("mode", mode, modelookup))

rich_presence_conditional_display(progressCheck && mode < 2 && (stage >= 0x0f && stage <= 0x19) || (char == 0x05 && movementState == 1), "{0}{1} is currently fighting against {2} | Lives: {3} | Rings: {4} | Score: {5} | Time: {6} | Emblems: {7} | {8} Mode",
rich_presence_lookup("demo", demo, demolookup, ""), rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup),
rich_presence_lookup("boss", stage, bosslookup), rich_presence_value("Value", lives, "VALUE"),
rich_presence_value("Value", ring, "VALUE"), rich_presence_value("Value", enemyScore, "VALUE"),
rich_presence_value("Frames", timeMeasure, "FRAMES"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("mode", mode, modelookup))

rich_presence_conditional_display(progressCheck && mode < 2, "{0}{1} is currently {2} {3} | Lives: {4} | Rings: {5} | Score: {6} | Time: {7} | Emblems: {8} | {9} Mode",
rich_presence_lookup("demo", demo, demolookup, ""),
rich_presence_lookup("char", actualChar+(mode*char/6)*0x10, charlookup), rich_presence_lookup("type", actualChar, chartype),
rich_presence_lookup("stage", stage, stagelookup), rich_presence_value("Value", lives, "VALUE"),
rich_presence_value("Value", ring, "VALUE"), rich_presence_value("Value", enemyScore, "VALUE"),
rich_presence_value("Frames", timeMeasure, "FRAMES"), rich_presence_value("Value", sum_of(emblemCalc(), y=>y), "VALUE"),
rich_presence_lookup("mode", mode, modelookup))

rich_presence_display(" \n//RP by Darky")
