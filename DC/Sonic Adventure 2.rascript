// Sonic Adventure 2
// #ID = 3417

demo = byte(0x26a203)
story = byte(0x26a200)
state = byte(0x24EE60)
stage = byte(0x24ee64)
stageclear = byte(0x0db247)
stageloaded = byte(0x24ee66)
ingame = word(0x0fe1f8)
course = dword(0x2514f4)
courseclear = byte(0x690acc)
mission = byte(0x0db22e)
time = tbyte_be(0x0db227)
rtime = dword(0x7e4ad8)
playerPointer = tbyte(0x251278)
pause = byte(0x0db223) == 0
startCha = state == 7 && dword(0x24ee90) == 0xffff0000
results = dword(tbyte(tbyte(tbyte(0x0fb7d0) + 0x04) + 0x2C) + 0x00)
clearcheck =  byte(0x0db222) == 1 && byte(0x0db226) == 1 && stageclear == 0
clearChallenge = once(prev(time) == 0 && time > 0) && clearcheck
timeMeasure = measured(byte(0x0db227) * 3600 + byte(0x0db228) * 60 + byte(0x0db229))

stagelookup = {}
sdesclookup = {}
smisslookup = {}
kmisslookup = {}
stagearrayC = []
heroemblems = []
hspecemblem = []
darkemblems = []
dspecemblem = []
lastemblems = []
lspecemblem = []

heroemblemsCalc = []
darkemblemsCalc = []
lastemblemsCalc = []

upgradeNumb = {
    0: [ 0, 6], //Offset, Upgrades
    1: [ 7, 4],
    2: [10, 5],
    3: [16, 4],
    4: [20, 5],
    5: [25, 4],
}

upgradeName = {
    0: ["Sonic Upgrades"],
    1: ["Tails Upgrades"],
    2: ["Knuckles Upgrades"],
    3: ["Death to All Who Oppose Me!"],
    4: ["Mean Machine"],
    5: ["Rouge the Treasure Hunter"]
}

upgradeDesc = {
    0: ["Obtain all the upgrades for Sonic."],
    1: ["Obtain all the upgrades for Tails."],
    2: ["Obtain all the upgrades for Knuckles."],
    3: ["Collect all the upgrades with Shadow"],
    4: ["Collect all the upgrades with Eggman"],
    5: ["Collect all the upgrades with Rouge"]
}

stageNumb = {
    0: [13,16,9,10,3,5,17,7,70,23,28,25,24,32,22,30],
    1: [11,18,21,14,26,27,12,8,4,70,6,44,43,40],
    2: [34],
    3: [31]
}

stageRank = {
    0: [0x26adb8,0x26af50,0x26ab98,0x26ac20,0x26a868,0x26a978,0x26afd8,0x26aa88,
        0x26bf40,0x26b308,0x26b5b0,0x26b418,0x26b390,0x26b7d0,0x26b280,0x26b6c0],
    1: [0x26aca8,0x26b060,0x26b1f8,0x26ae40,0x26b4a0,0x26b528,0x26ad30,
        0x26ab10,0x26a8f0,0x26bfc8,0x26aa00,0x26be30,0x26bda8,0x26bc10],
    2: [0x26b8e0]
}

stageName = {
    0: ["City Escape","Wild Canyon","Prison Lane","Metal Harbor","Green Forest","Pumpkin Hill",
        "Mission Street","Aquatic Mine","Route 101","Hidden Base","Pyramid Cave","Death Chamber",
        "Eternal Engine","Meteor Herd","Crazy Gadget","Final Rush"],
    1: ["Iron Gate","Dry Lagoon","Sand Ocean","Radical Highway","Egg Quarters","Lost Colony",
        "Weapons Bed","Security Hall","White Jungle","Route 280","Sky Rail","Mad Space","Cosmic Wall",
        "Final Chase"],
    2: ["Cannon's Core"],
    3: ["Green Hill"]
}

stageDesc = {
    0: ["Escape from the military pursuit","Find the 3 pieces of the Master Emerald",
        "Find the core of the Prison","Escape from the military base",
        "Escape from the Island in 8 minutes","Find 3 pieces of the Master Emerald",
        "Elude enemy pursuit","Find the 3 pieces of the Master Emerald",
        "Chase the President's limousine","Find the entrance into Hidden Base",
        "Infiltrate Eggman's Hidden Base","Find the 3 Gate keys",
        "Destroy the colony's power generator","Find 3 pieces of the Master Emerald",
        "Hurry and find Eggman","Hurry and find the point of the Cannon"],
    1: ["Get to the core of the military base","Find 3 pieces of the Master Emerald",
        "Return to Hidden Base","Break through the besieging military","Find the 3 Gate keys",
        "Find the way to the colony's core","Rush into the military base",
        "Steal the 3 Chaos Emeralds in 5 minutes","Cut through the Jungle in 10 minutes",
        "Chase the Tornado","Chase the Tornado","Find 3 pieces of the Master Emerald",
        "Get and confront the trespassers","Hurry to the Eclipse Cannon"],
    2: ["Get to the core of the colony"],
    3: ["Get through Green Hill"]
}

stageDescS = {
    0: ["e","f","f","e","e","f","e","f",
        "c","f","i","f","d","f","h","h"],
    1: ["g","f","r","b","f","f","r",
        "s","c","c","c","f","g","h"],
    2: ["g"],
    3: ["g"]
}

stageTime = {
    0: ["3 minutes 0 seconds","2 minutes 0 seconds","3 minutes 0 seconds",
        "2 minutes 0 seconds","4 minutes 0 seconds","3 minutes 0 seconds",
        "3 minutes 30 seconds","3 minutes 30 seconds","","3 minutes 30 seconds",
        "4 minutes 0 seconds","5 minutes 0 seconds","5 minutes 0 seconds",
        "4 minutes 30 seconds","5 minutes 0 seconds","5 minutes 0 seconds"],
    1: ["4 minutes 0 seconds","3 minutes 30 seconds","4 minutes 0 seconds",
        "3 minutes 0 seconds","3 minutes 0 seconds","3 minutes 30 seconds",
        "2 minutes 45 seconds","3 minutes 30 seconds","3 minutes 0 seconds",
        "","2 minutes 0 seconds","4 minutes 30 seconds","8 minutes 0 seconds",
        "5 minutes 30 seconds"],
    2: ["7 minutes 0 seconds"],
    3: [""]
}

missionDesc = {
    0: ["Unused", "Unused", "u"],
    1: ["Collect", "100 Rings", "c"],
    2: ["Find the",  "lost Chao","f"],
    3: ["Unused", "Unused", "u"],
    4: ["Clear", "Hard mode","c"],
}

missionDescCar = {
    0: ["Unused", "Unused", "u"],
    1: ["Collect", "100 Rings","c"],
    2: ["Don't hit other", "Cars","d"],
    3: ["Don't hit the", "walls","d"],
    4: ["Clear", "Hard mode","c"],
}

storyNumb = {
    0: [42],
    1: [42],
    2: [56]
}

storyName = {
    0: ["I'm Sonic, Sonic The Hedgehog !","Toward the Future"],
    1: ["I Told You, I'm the Ultimate!","Living in the Dark"],
    2: ["Final Story"]
}

storyDesc = {
    0: ["Hero", "and see the cannon be deactivated"],
    1: ["Dark", "and see the cannon be activated"],
    2: ["Last", "and watch how the story ends for our heroes"]
}

storyPoin = {
    0: [10],
    1: [10],
    2: [25]
}

emblemSpec = {
    0: [0x26c478, 0x26c47a, 0x26c47c,
        0x26c47e],
    1: [0x26c479, 0x26c47b, 0x26c47d,
        0x26c47f],
    2: [0x26c480,
        //Boss Rush
        0x26c481, 0x26c482, 0x26c483,
        //Chao Races
        0x26c210, 0x26c211, 0x26c212,
        0x26c213, 0x26c214, 0x26c215,
        0x26c216, 0x26c217, 0x26c218,
        0x26c219,
        //Kart Races
        0x26c05c, 0x26c069, 0x26c076]
}

emblemName = {
    0: ["Hero Side Emblems"],
    1: ["Fighter for Darkness"],
    2: ["Congratz, You're a Legend!"]
}

emblemDesc = {
    0: ["Get 84 emblems for the Hero Side."],
    1: ["Collect all 74 Dark Emblems"],
    2: ["Get all 180 emblems."]
}

kartName = {
    0: ["Beginner"],
    1: ["Standard"],
    2: ["Expert"]
}

kartDesc = {
    0: ["2 minutes", "beginner"],
    1: ["2 minutes 30 seconds", "standard"],
    2: ["3 minutes 20 seconds", "expert"]
}

courseTime = {
    0: [7200],
    1: [9000],
    2: [12000]
}

dlcNumb = {
    0: [10],
    1: [28],
    2: [37]
}

dlcName = {
    0: ["Speed of Sound - Motor Power", "Breaking Sound and Wheels"],
    1: ["Not Safe For Chao's", "OverPowered Anger-Causer"],
    2: ["Build for Aerodynamics", "Evil Genius wants to Win the Race"]
}

dlcDesc = {
    0: ["Driving test", "Sonic in Trial product car", "2 minutes 20 seconds"],
    1: ["OPA OPA", "Omochao in OPA OPA kart", "2 minutes 30 seconds"],
    2: ["E shaped", "EGG ROBO in...EGG ROBO?", "2 minutes 50 seconds"]
}

dlcTime = {
    0: [8400],
    1: [9000],
    2: [10200]
}

bossName = {
    0: ["F-6t Big Foot","Dr. Eggman","Shadow","King Boom Boo","Egg Golem","Rouge","Dr. Eggman II","Shadow II"],
    1: ["B-3x Hot Shot","Tails","R-1/A Flying Dog","Sonic","Egg Golem","Knuckles","Tails II","Sonic II"],
    2: ["The Biolizard","The Finalhazard"],
}

bossEnemy = {
    0: ["Sonic","Tails","Sonic","Knuckles","Sonic","Knuckles","Tails","Sonic"],
    1: ["Shadow","Dr. Eggman","Rouge","Shadow","Dr. Eggman","Rouge","Dr. Eggman","Shadow"],
    2: ["Shadow","Sonic & Shadow"],
}

bossNumb = {
    0: [50,20,19,53,54,33,29,42],
    1: [51,20,52,19,57,33,29,42],
    2: [55,56],
}

bossChar = {
    0: [0,6,0,4,0,4,6,0],
    1: [1,7,5,1,7,5,7,1],
}

function emblemLogic(i) {
    if (i == 0) {
    return /*all_of(heroemblemsCalc, y=>y)*/
        byte(0x26a690) == 0
        && sum_of(heroemblems, y=>prev(y)) + sum_of(hspecemblem, y=>prev(y)) < 84
        && measured(sum_of(heroemblems, y=>y) + sum_of(hspecemblem, y=>y) == 84)
    }
    else if (i == 1) {
    return /*all_of(darkemblemsCalc, y=>y)*/
        byte(0x26a690) == 0
        && sum_of(darkemblems, y=>prev(y)) + sum_of(dspecemblem, y=>prev(y)) < 74
        && measured(sum_of(darkemblems, y=>y) + sum_of(dspecemblem, y=>y) == 74)
    }
    else if (i == 2) {
    return /*all_of(heroemblemsCalc, y=>y) && all_of(darkemblemsCalc, y=>y) && all_of(lastemblemsCalc, y=>y)*/
        byte(0x26a690) == 0
        && sum_of(heroemblems, y=>prev(y)) + sum_of(hspecemblem, y=>prev(y))
        +  sum_of(darkemblems, y=>prev(y)) + sum_of(dspecemblem, y=>prev(y))
        +  sum_of(lastemblems, y=>prev(y)) + sum_of(lspecemblem, y=>prev(y)) < 180
        && measured(sum_of(heroemblems, y=>y) + sum_of(hspecemblem, y=>y)
        +  sum_of(darkemblems, y=>y) + sum_of(dspecemblem, y=>y)
        +  sum_of(lastemblems, y=>y) + sum_of(lspecemblem, y=>y) == 180)
    }
}

function upgradeLogic(i) {
    Array = []
    function upgrades(i, j) => byte(0x26a1e0 + i + j)
    for index in range (0, upgradeNumb[i][1]-1) {
        array_push(Array, upgrades(upgradeNumb[i][0], index)) }
        
    return /*all_of(Array, y=>y == 1) &&*/ sum_of(Array, y => prev(y)/prev(y)) < upgradeNumb[i][1] && sum_of(Array, y => y/y) == upgradeNumb[i][1]
}

function startandsubmit(i, j, l) => stage == stageNumb[i][j] && state == 16 && mission == l && clearcheck

function startandsubmitR(i, j, l) => stage == stageNumb[i][j] && byte(0x24ee6c) == 6-1*i && state == 16
                                  && mission == l && clearcheck

function startandsubmitB(i, j) => stage == bossNumb[i][j] && state == 16 && clearcheck && byte(0x0db24f) == 1

function startandsubmitBC(i, j) => stage == bossNumb[i][j] && state == 16 && byte(0x24ee6c) == bossChar[i][j]
                                && clearcheck && byte(0x0db24f) == 1

function startandsubmitBR(i) => story == 12 + i && state == 16 && prev(dword(0x2514bc)) == 0 && dword(0x2514bc) != 0

for i in range (0, 3) {
    for j in range (0, length(stageNumb[i])-1) {
        if (i == 1) punct = "!"
        else punct = "."
        if (i < 3) tp = "progression"
        else tp = ""
        if (stageNumb[i][j] == 70) {
            check = stage == stageNumb[i][j] && course == 0x22 - i*5
        }
        else {
            check = stage == stageNumb[i][j]
            sdesclookup[stageNumb[i][j]] = format("{0}{1}",stageDescS[i][j],substring(stageDesc[i][j], 1))
            if (i < 3) sdesclookup[300 + stageNumb[i][j]] = format(stageTime[i][j])
        }
        achievement(
            title = format("{0}", stageName[i][j]), points = 3, type = tp,
            description = format("{0}{1}", stageDesc[i][j], punct),
            trigger =  state == 16 && check && story == (i+1)%4
                    && clearcheck
        )
        stagelookup[stageNumb[i][j]] = stageName[i][j]
        array_push(stagearrayC, stage != stageNumb[i][j])
        if (i != 3) {
            for l in range (0, 4) {
                function standsu(i, j, l) => startandsubmitR(i, j, l)
                if (stageNumb[i][j] != 70 && l == 0) {
                    t = format("{0}", stageName[i][j])
                    desc = format("{0} in {1}", stageDesc[i][j], stageName[i][j])
                    function standsu(i, j, l) => stage == stageNumb[i][j] && state == 16 && __ornext(mission == 0
                    || mission == 3) && clearcheck
                    if (stageNumb[i][j] == 34) function standsu(i, j, l) => stage >= 34 && stage <= 38 && state == 16
                    && __ornext(mission == 0 || mission == 3) && clearcheck
                }
                else if (stageNumb[i][j] == 70 && l == 0) {
                    t = format("{0}", stageName[i][j])
                    desc = format("{0} on {1}", stageDesc[i][j], stageName[i][j])
                }
                else if (stageNumb[i][j] == 70 && l != 0) {
                    t = format("{0} - {1}", stageName[i][j], missionDescCar[l][1])
                    desc = format("{0} {1} on {2} and clear it", missionDescCar[l][0], missionDescCar[l][1], stageName[i][j])
                }
                else {
                    t = format("{0} - {1}", stageName[i][j], missionDesc[l][1])
                    desc = format("{0} {1} in {2}", missionDesc[l][0], missionDesc[l][1], stageName[i][j])
                    function standsu(i, j, l) => startandsubmit(i, j, l)
                    if (stageNumb[i][j] == 34) function standsu(i, j, l) => stage >= 34 && stage <= 38
                    && state == 16 && mission == l && clearcheck
                }
                if (stageNumb[i][j] != 70) val = timeMeasure
                else val = measured(rtime)
                if (stageNumb[i][j] != 70 && l != 3) || (stageNumb[i][j] == 70) {
                    leaderboard(
                        title = t,
                        description = format("{0} as fast as possible",desc),
                        start = standsu(i, j, l),
                        cancel = always_false(),
                        submit = standsu(i, j, l),
                        value = val, format="FRAMES", lower_is_better=true
                    )
                }
            }
            function ranks(i, j, x) => byte(stageRank[i][j] + 0)/x + byte(stageRank[i][j] + 1)/x + byte(stageRank[i][j] + 2)/x
                    + byte(stageRank[i][j] + 3)/x + byte(stageRank[i][j] + 4)/x
            function ranksDiv(i, j) => byte(stageRank[i][j] + 0)/byte(stageRank[i][j])
                        + byte(stageRank[i][j] + 1)/byte(stageRank[i][j] + 1) + byte(stageRank[i][j] + 2)/byte(stageRank[i][j] + 2)
                        + byte(stageRank[i][j] + 3)/byte(stageRank[i][j] + 3) + byte(stageRank[i][j] + 4)/byte(stageRank[i][j] + 4) + 0
            function ranksCalc(i, j) => byte(stageRank[i][j] + 0) <= 5
                     && byte(stageRank[i][j] + 1) <= 5 && byte(stageRank[i][j] + 2) <= 5
                     && byte(stageRank[i][j] + 3) <= 5 && byte(stageRank[i][j] + 4) <= 5
            if (stageName[i][j] == "Cannon's Core") stageCalc = stage >= stageNumb[i][j] && stage <= stageNumb[i][j]+4
            else stageCalc = stage == stageNumb[i][j]
            achievement(
                title = format("{0} Aced", stageName[i][j]), points = 10,
                description = format("Get an A rating on every mission."),
                trigger =  measured(always_true(), when=ingame <= 2) && state == 16 && stageCalc
                        && /*ranksCalc(i, j)*/ byte(0x26a690) == 0
                        && prev(ranks(i, j, 5)) < 5 && measured(ranks(i, j, 5) == 5)
            )
            if (i == 0) {
                array_push (heroemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
                ranksDiv(i, j))
                array_push (heroemblemsCalc, ranksCalc(i, j))
            }
            if (i == 1) {
                array_push (darkemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
                ranksDiv(i, j))
                array_push (darkemblemsCalc, ranksCalc(i, j))
            }
            if (i == 2) {
                array_push (lastemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
                ranksDiv(i, j))
                array_push (lastemblemsCalc, ranksCalc(i, j))
            }
        }
    }
    if (i != 3) {
        function specCalc(i, x) {
            for il in range (0, length(emblemSpec[i])-1) {
                array_push (x, byte(emblemSpec[i][il])/byte(emblemSpec[i][il]))
                //array_push (y, byte(emblemSpec[i][il]) <= 1) 
            }
        }
        if (i == 0) specCalc(i, hspecemblem)
        if (i == 1) specCalc(i, dspecemblem)
        if (i == 2) specCalc(i, lspecemblem)
        if (i < 2) check = byte(0x24ee6c) == i
        else check = always_true()
        
        achievement(
            title = format("{0}", storyName[i][0]), points = 10 + (i/2 * 15), type = "progression",
            description = format("Complete {0} Story {1}", storyDesc[i][0], storyDesc[i][1]),
            trigger =  prior(state) == 19 && state == 0 && stageloaded == storyNumb[i][0] && story == i+1
                    && check && prev(stageclear) == 0 && stageclear == 1
        )
        achievement(
            title = format("{0}", emblemName[i][0]), points = 25,
            description = format("{0}", emblemDesc[i][0]),
            trigger =  measured(always_true(), when=ingame <= 2) && __ornext(state == 16 || story == i+1)
            && dword(0x5cc2f8) != 0x09 && byte(0x26a690) == 0 && emblemLogic(i)
        )
    }
    else {
        achievement(
            title = format("Green Hill Aced"), points = 2,
            description = format("Get A rating on Green Hill.", stageDesc[i][0]),
            trigger =  state == 16 && stage == stageNumb[i][0] && story == (i+1)%4
                    && dword(tbyte(tbyte(tbyte(0x0fb7d0) + 0x04) + 0x2C) + 0x00) == 0x0004000f
        )
        leaderboard(
            title = format("{0}", stageName[i][0]),
            description = format("{0} as fast as possible", stageDesc[i][0], stageName[i][0]),
            start = startandsubmit(i, 0, 0),
            cancel = always_false(),
            submit = startandsubmit(i, 0, 0),
            value = timeMeasure, format="FRAMES", lower_is_better=true
        )
        sdesclookup[stageNumb[i][0]] = format("{0}{1}",stageDescS[i][0],substring(stageDesc[i][0], 1, -11))
    }
}

for i in range (0, 5) {
    achievement(
    title = format("{0}", upgradeName[i][0]), points = 5,
    description = format("{0}", upgradeDesc[i][0]),
    trigger = measured(always_true(), when=ingame <= 2) && state == 16 && byte(0x26a690) == 0 && upgradeLogic(i)
    )
}

achievement(
    title = "Big Foot Challenge", points = 5,
    description = "Defeat Big Foot without breaking the middle boxes or allowing him to land.",
    trigger =  never(demo == 1 || state != 16 && state != 17 || stage != 50 || dword(tbyte(0x2581b4) + 0x1A88) == 0
            || dword(tbyte(0x2581b4) + 0x1A98) == 0 || dword(tbyte(0x2581b4) + 0x1AC4) == 0
            || dword(tbyte(0x2581b4) + 0x1AC8) == 0 || prev(bit0(tbyte(0x25bcb0) + 0x48)) == 0
            && bit0(tbyte(0x25bcb0) + 0x48) == 1) && once(prev(time) == 0
            && time > 0) && trigger_when(pause && dword(0x25bcb0) >= 0x8c000000 && prev(float(tbyte(0x25bcb0) + 0x0C)) == 1.0
            && float(tbyte(0x25bcb0) + 0x0C) == 0.0)
)

achievement(
    title = "King Boom Boo Challenge", points = 5,
    description = "Defeat King Boom Boo without him noticing you coming from behind.",
    trigger =  never(demo == 1 || state != 16 && state != 17 || stage != 53 || word(tbyte(0x25bc98) + 0x44) == 259)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(pause && dword(0x25bc98) >= 0x8c000000 && prev(float(tbyte(0x25bc98) + 0x0C)) == 1.0
            && float(tbyte(0x25bc98) + 0x0C) == 0.0)
)

achievement(
    title = "Hot Shot GG", points = 5,
    description = "Defeat Hot Shot without taking damage",
    trigger = never(demo == 1 || state != 16 && state != 17 || stage != 51 || bit7(playerPointer + 0x05) == 1)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(pause && dword(0x25bcb0) >= 0x8c000000 && prev(float(tbyte(0x25bcb0) + 0x0C)) == 1.0
            && float(tbyte(0x25bcb0) + 0x0C) == 0.0)
)

achievement(
    title = "Faster than Sonic", points = 5,
    description = "Defeat Sonic in the jungle in less than 20 seconds",
    trigger = never(demo == 1  || state != 16 && state != 17 || stage != 19 || byte(0x24ee6c) != 1 || time > 0x1400)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(pause && dword(0x2512bc) >= 0x8c000000 && prev(float(tbyte(0x2512bc) + 0x48)) == 1.0
            && float(tbyte(0x2512bc) + 0x48) == 0.0)
)

achievement(
    title = "I Am the Eggman", points = 5,
    description = "Defeat Egg Golem as Eggman without letting it start the headbutt attack",
    trigger = never(demo == 1 || state != 16 && state != 17 || stage != 57
            || dword(tbyte(tbyte(0x25bc98) + 0xFFFFFFF4) + 0x04) == 9)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(pause && dword(0x25bc98) >= 0x8c000000 && prev(float(tbyte(tbyte(0x25bc98) + 0xFFFFFFF4) + 0x14)) > 0.0
            && float(tbyte(tbyte(0x25bc98) + 0xFFFFFFF4) + 0x14) <= 0.0)
)

for i in range(0, 1) {
    achievement(
        title = format("{0}", storyName[i][1]), points = 10,
        description = format("Complete the {0} side boss attack without losing a life", storyDesc[i][0]),
        trigger = never(story != 12 + i || prev(byte(0x0db26c)) > byte(0x0db26c))
                && once(prev(time) == 0 && time > 0 && stage == 50 + i) && trigger_when(stage == 42 && pause
                && dword(0x2512bc) >= 0x8c000000 && prev(float(tbyte(0x2512bc) + 0x48)) == 1.0 && float(tbyte(0x2512bc) + 0x48) == 0.0)
    )
}

for i in range (0, 2) {
    for l in range (0, length(bossNumb[i])-1) {
    if (bossNumb[i][l] <= 0x2A) standsu = startandsubmitBC(i, l)
    else standsu = startandsubmitB(i, l)
        leaderboard(
            title = format("Boss - {0}", bossName[i][l]),
            description = format("Defeat {0} as {1} in the fastest possible time", bossName[i][l], bossEnemy[i][l]),
            start = standsu,
            cancel = always_false(),
            submit = standsu,
            value = timeMeasure, format="FRAMES", lower_is_better=true
        )
    }
    leaderboard(
        title = format("Boss Rush - {0} Side", storyDesc[i][0]),
        description = format("Complete the Boss Rush of the {0} side in the fastest possible time", storyDesc[i][0]),
        start = startandsubmitBR(i),
        cancel = always_false(),
        submit = startandsubmitBR(i),
        value = measured(dword(0x2514d0) * 3600 + dword(0x2514d4) * 60 + dword(0x2514d8)), format="FRAMES", lower_is_better=true
    )
}

for i in range (0, 2) {
    achievement(
        title = format("Time Trial {0} Karting", kartName[i][0]), points = 5,
        description = format("Achieve a new best time of under {0} on the {1} kart race", kartDesc[i][0], kartDesc[i][1]),
        trigger =  stage == 71 && course == 24 + i && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1
                && rtime < courseTime[i][0]
    )
    if (i == 0) p = 8
    else p = 0
    achievement(
        title = format("{0}", dlcName[i][0]), points = 2 + p,
        description = format("Win a Race on {0} course as {1}", dlcDesc[i][0], dlcDesc[i][1]),
        trigger =  stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1 && ingame == 2 
    )
    achievement(
        title = format("{0}", dlcName[i][1]), points = 5,
        description = format("Achieve a new best time of under {0} on the {1} course", dlcDesc[i][2], dlcDesc[i][0]),
        trigger =  stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1
                && rtime < dlcTime[i][0]
    )
    leaderboard(
                title = format("{0} Karting", kartName[i][0]),
                description = format("Win a Race on {0} kart race in the fastest possible time", kartDesc[i][1]),
                start = stage == 71 && course == 24 + i && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1,
                cancel = always_false(),
                submit = stage == 71 && course == 24 + i && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1,
                value = measured(rtime), format="FRAMES", lower_is_better=true
            )
    leaderboard(
                title = format("{0} Course", dlcDesc[i][0]),
                description = format("Win a Race on {0} course in the fastest possible time", dlcDesc[i][0]),
                start = stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1,
                cancel = always_false(),
                submit = stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1,
                value = measured(rtime), format="FRAMES", lower_is_better=true
            )
}


//New Challenges

function scoreCheevo (i, j, x, y, z) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} with a current score of under {2}k and without losing a life", y, stageName[i][j], z),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || dword(0x0db294) >= (z*1000) || prev(byte(0x0db26c)) > byte(0x0db26c))
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(clearChallenge)
    )
}

function upgradeCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Clear Hard mode in {0} without using any upgrade abilities", stageName[i][j]),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || byte(playerPointer + 0x00) == 0x2d || byte(playerPointer + 0x00) == 0x3b
                || byte(playerPointer + 0x00) == 0x3c || byte(playerPointer + 0x00) == 0x45)
                && once(startCha)
                && mission == 4 && trigger_when(clearChallenge)
                //0x2d == Mystic Melody, 0x3b == Ring Dash, 0x3c == Light Dash, 0x45 == Bounce
    )
}

function chaoCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Find the lost Chao in {0} without using the Mystic Melody", stageName[i][j]),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || byte(playerPointer + 0x00) == 0x2d)
                && once(startCha) && mission == 2 && trigger_when(clearChallenge)
    )
}

function backCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Collect 100 rings in {0} without using the Back-Ring", stageName[i][j]),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || prev(byte(0x0db24b)) == 1 && byte(0x0db24b) == 0) 
                && once(state == 7 && time == 0)
                && mission == 1 && trigger_when(clearChallenge)
    )
}

function ringlessCheevo (i, j, x, y) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without collecting any Rings", y, stageName[i][j]),
        trigger =  never(demo == 1 || state == 0 || ingame == 1 || stage != stageNumb[i][j] || prev(word(0x0db270)) < word(0x0db270))
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(clearChallenge)
    )
}

function jumpCheevo (i, j, x, y) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without using the jump button while being on the ground", y, stageName[i][j]),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || (prev(byte(playerPointer + 0x00)) == 0
                || prev(byte(playerPointer + 0x00)) == 1 || prev(byte(playerPointer + 0x00)) == 0x0c) && byte(playerPointer + 0x00) == 6)
                && once(state == 7 && byte(playerPointer + 0x205) == 3)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(clearChallenge)
    )
}

function ringCheevo (i, j, x, y, z) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without ever having more than {2} Rings in hand", y, stageName[i][j], z),
        trigger =  never(demo == 1 || state == 0 || stage != stageNumb[i][j] || word(0x0db270) > z)
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(clearChallenge)
    )
}

function flyCheck () {
    return once(byte(playerPointer + 0x04) == 1) && prev(byte(playerPointer + 0x00)) != 0x3c && byte(playerPointer + 0x00) == 0x3c
}

function objectCheck (x) {
    Array = []
    Array2 = []
    for i in range (0, 15) {
        for j in range (0, 15) {
            array_push(Array2, tbyte(tbyte(playerPointer + 0x2c) + 0x14 + (4*(2*i)))
            != prev(tbyte(tbyte(playerPointer + 0x2c) + 0x14 + (4*(2*j)))))
        }
        array_push(Array, all_of(Array2, y => y) && tbyte(tbyte(tbyte(playerPointer + 0x2c) + 0x14 + (4*(2*i))) + 0x10) == 0x502e64)
        for i in range (0, length(Array2)) {
        array_pop(Array2)
        }
    }
    return tally_of(Array, 39 - x, y => y && never(startCha))
}

achievement(
    title = "Keep it Rough 'n Wild", points = 5,
    description = "Find the 3 pieces of the Master Emerald in Wild Canyon without touching the Ground more than 5 times",
    trigger =  never(demo == 1 || state == 0 || stage != 16 || repeated(6, prev(byte(playerPointer + 0x04)) == 0
            && bit0(playerPointer + 0x04) + bit5(playerPointer + 0x04) == 1 && byte(playerPointer + 0x00) != 0x41
            && byte(playerPointer + 0x00) != 0x42 && byte(playerPointer + 0x00) != 0x45
            && never(state == 7 && byte(playerPointer + 0x205) == 3))) 
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

scoreCheevo(0, 2, "Improper Property Damage", "Find the core of the Prison", 8)

ringlessCheevo(0, 3, "Spare Change in Exchange for an Explosive Arrange", "Escape from the military base")

upgradeCheevo(0, 4, "Chillin' in the Forest")

chaoCheevo(0, 5, "Sensing the Chao in His Feet")

achievement(
    title = "Reaching for the Stars", points = 5,
    description = "Elude enemy pursuit in Mission Street without flying more than 3 times",
    trigger =  never(demo == 1 || state == 0 || stage != 17 || once(once(once(never(startCha)
            && flyCheck()) && flyCheck()) && flyCheck()) && flyCheck())
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

backCheevo(0, 7, "Tour through the Mines")

scoreCheevo(0, 9, "Hide them Points", "Find the entrance into Hidden Base", 1)

upgradeCheevo(0, 10, "Like A Tomb Raider")

jumpCheevo(0, 11, "Come, Sweet Death", "Find the 3 Gate keys")

ringCheevo(0, 12, "Eternally Cursed", "Destroy the colony's power generator", 5)

achievement(
    title = "One Way Ticket To The Moon", points = 5,
    description = "Find 3 pieces of the Master Emerald in Meteor Herd without using more than 3 rockets",
    trigger =  never(demo == 1 || state == 0 || stage != 32 || repeated(4, prev(byte(playerPointer + 0x00)) != 0x12
            && byte(playerPointer + 0x00) == 0x12 && never(state == 7 && byte(playerPointer + 0x205) == 3)))
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

achievement(
    title = "Gravity Got Nothing on Me", points = 5,
    description = "Hurry and find Eggman in Crazy Gadget without changing the gravity more than 4 times",
    trigger =  never(demo == 1 || state == 0 || stage != 22 || repeated(5, prev(byte(playerPointer + 0x00)) == 0x53
            && byte(playerPointer + 0x00) != 0x53 && never(startCha)))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

achievement(
    title = "The Blue Monster on Rails", points = 5,
    description = "Hurry and find the point of the Cannon in Final Rush without staying off the Rails or being chased by space junk for more than 10 seconds",
    trigger =  never(demo == 1 || state == 0 || stage != 30 || repeated(600, state == 16 && byte(0x0db226) == 0 && never(state + dword(0x24ee90) == 0xffff0007
            || byte(playerPointer + 0x00) == 0x47 || float(playerPointer + 0x14) >= 2443.0 && float(playerPointer + 0x14) <= 2623.0
            && float(playerPointer + 0x18) < -20945.0 && float(playerPointer + 0x1C) >= 11215.0 && float(playerPointer + 0x1C) <= 11273.0)))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

achievement(
    title = "Guarded by an Iron Hand", points = 5,
    description = "Clear Hard mode in Iron Gate without being hurt",
    trigger =  never(demo == 1 || state == 0 || stage != 11 || bit2(playerPointer + 0x04) == 1)
            && once(startCha) && mission == 4 && trigger_when(clearChallenge)
)

achievement(
    title = "Keeping It Dry!", points = 5,
    description = "Find 3 pieces of the Master Emerald in Dry Lagoon without using the turtle more than once",
    trigger =  never(demo == 1 || state == 0 || stage != 18 || repeated(2, prev(byte(playerPointer + 0x00)) != 0x56
            && byte(playerPointer + 0x00) == 0x56 && never(state == 7 && byte(playerPointer + 0x205) == 3)))
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

achievement(
    title = "The Shine of Dirty Rings", points = 5,
    description = "Return to Hidden Base in Sand Ocean with exactly 20 Rings in hand and without losing a life",
    trigger =  never(demo == 1 || state == 0 || stage != 21 || prev(byte(0x0db26c)) > byte(0x0db26c))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(word(0x0db270) == 20 && clearChallenge)
)

chaoCheevo(1, 3, "A Chao's Darkest Shadow")

achievement(
    title = "Phantom Thief", points = 5,
    description = "Find the 3 Gate keys in Egg Quarters without ever being detected",
    trigger =  never(demo == 1 || state == 0 || stage != 26 
            || dword(tbyte(0x6a4450) + 0x04) == 2 || dword(tbyte(0x6a4450) + 0x04) == 3
            || dword(tbyte(0x6a4454) + 0x04) == 2 || dword(tbyte(0x6a4454) + 0x04) == 3)
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(clearChallenge)
)

scoreCheevo(1, 5, "A Crushed Colony's Dream", "Find the way to the colony's core", 3)

chaoCheevo(1, 6, "The Ultimate Weapon: A Chao!")

backCheevo(1, 7, "Securing all these Rings")

achievement(
    title = "Skating in the Jungle", points = 5,
    description = "Collect 100 rings in White Jungle using only the control stick",
    trigger =  never(demo == 1 || state == 0 || stage != 4 || bitcount(0x24eef0) + bitcount(0x24eef1) + bitcount(0x24eef2) - bit3(0x24eef0) > 0)
            && once(startCha)
            && mission == 1
            && trigger_when(clearChallenge)
)

ringlessCheevo(1, 10, "Payment for a Fakery Way", "Chase the Tornado")

jumpCheevo(1, 11, "Gravitational Grind", "Find 3 pieces of the Master Emerald")

ringCheevo(1, 12, "The Way to Godhood", "Get and confront the trespassers", 25)

achievement(
    title = "A Final Test", points = 10,
    description = "Hurry to the Eclipse Cannon in Final Chase without touching more than 38 gravity barrels",
    trigger =  (never(demo == 1 || state == 0 || stage != 40)
            && once(startCha)
            && never(mission != 0 && mission != 3 && mission != 4)
            && trigger_when(clearChallenge))
            || measured(objectCheck(1), when=once(startCha)) && trigger_when(always_false())
            || (never(objectCheck(0))) && always_false()
)

extraBossCalc = []

extraStage = {
    0: ["Wild Canyon","Mission Street","Sand Ocean","Weapons Bed","Chao World",
        "Cannon's Core","Cannon's Core","Cannon's Core","Cannon's Core"],
    1: [41,39,45,15,90,35,36,37,38],
}

extraBoss = {
    0: [19,20,29,33,42,50,51,52,53,54,55,56,57,70,71,90],
}

timeDesc = { 3: "reach the goal within "}

char = {
    0: "Sonic",
    1: "Shadow",
    2: "Tails",
    3: "Dr. Eggman",
    4: "Knuckles",
    5: "Rouge",
    6: "Tails",
    7: "Dr. Eggman",
}

char2 = {
    0: "Shadow",
    1: "Sonic",
    2: "Dr. Eggman",
    3: "Tails",
    4: "Rouge",
    5: "Knuckles",
    6: "Dr. Eggman",
    7: "Tails",
}

for i in range (0, length(extraStage[0])-1) {
    stagelookup[extraStage[1][i]] = extraStage[0][i]
}

for i in range (0, length(missionDesc)-1) {
    if (i != 0 && i != 3) smisslookup[i] = format("{0}{1} {2}",missionDesc[i][2],
                substring(missionDesc[i][0], 1), missionDesc[i][1])
                kmisslookup[missionDescCar[i]] = format("{0}{1} {2}",missionDescCar[i][2],
                substring(missionDescCar[i][0], 1), missionDescCar[i][1])
}

rich_presence_conditional_display(ingame == 0x3ecb7adb, "Watching the Dreamcast Intro")
rich_presence_conditional_display(ingame == 0x7404bdf8, "Surfing through the World Wide Web")
rich_presence_conditional_display(demo == 1, "Watching a Demo of {0} going through {1}",
rich_presence_lookup("char", byte(0x24ee6c), char), rich_presence_lookup("stage", stage, stagelookup))
rich_presence_conditional_display(state != 0 && ingame == 0 && all_of(extraBoss[0], y=>stage != y) && __ornext(mission == 0 || mission == 3),
"{0} is currently trying to {1}{2} in {3}",
rich_presence_lookup("char", byte(0x24ee6c), char), rich_presence_lookup("timeDesc", mission, timeDesc),
rich_presence_lookup("stageDesc", mission * 100 + stage, sdesclookup), rich_presence_lookup("stage", stage, stagelookup))
rich_presence_conditional_display(state != 0 && ingame == 0 && all_of(extraBoss[0], y=>stage != y) && mission != 0 && mission != 3,
"{0} is currently trying to {1} in {2}",
rich_presence_lookup("char", byte(0x24ee6c), char), rich_presence_lookup("missionDesc", mission, smisslookup),
rich_presence_lookup("stage", stage, stagelookup))

rich_presence_display(" \n//RP by DarkyAndreas")