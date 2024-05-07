// Sonic Adventure 2
// #ID = 3417

story = byte(0x26a200)
state = byte(0x24EE60)
stage = byte(0x24ee64)
stageclear = byte(0x0db247)
stageloaded = byte(0x24ee68)
ingame = dword(0x0fe1f8)
course = dword(0x2514f4)
courseclear = byte(0x690acc)
mission = byte(0x0db22e)
time = tbyte_be(0x0db227)
playerPointer = tbyte(0x251278)
startCha = state == 7 && dword(0x24ee90) == 0xffff0000

heroemblems = []
darkemblems = []
lastemblems = []

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
    0: ["Obtain all the upgrades for Sonic"],
    1: ["Obtain all the upgrades for Tails"],
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
    0: ["Escape from the military pursuit.","Find the 3 pieces of the Master Emerald.",
        "Find the core of the Prison.","Escape from the military base.",
        "Escape from the Island in 8 minutes.","Find 3 pieces of the Master Emerald.",
        "Elude enemy pursuit.","Find the 3 pieces of the Master Emerald.",
        "Chase the President's limousine.","Find the entrance into Hidden Base.",
        "Infiltrate Eggman's Hidden Base.","Find the 3 Gate keys.",
        "Destroy the colony's power generator.","Find 3 pieces of the Master Emerald.",
        "Hurry and find Eggman.","Hurry and find the point of the Cannon."],
    1: ["Get to the core of the military base!","Find 3 pieces of the Master Emerald!",
        "Return to Hidden Base!","Break through the besieging military!","Find the 3 Gate keys!",
        "Find the way to the colony's core!","Rush into the military base!",
        "Steal the 3 Chaos Emeralds in 5 minutes!","Cut through the Jungle in 10 minutes!",
        "Chase the Tornado!","Chase the Tornado!","Find 3 pieces of the Master Emerald!",
        "Get and confront the trespassers!","Hurry to the Eclipse Cannon!"],
    2: ["Get to the core of the colony."],
    3: ["Get through Green Hill."]
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
    0: ["Hero", "and see the canon be deactivated"],
    1: ["Dark", "and see the canon be activated"],
    2: ["Last", "and watch how the story ends for our heroes"]
}

storyPoin = {
    0: [10],
    1: [10],
    2: [25]
}

emblemSpec = {
    0: [byte(0x26c478)/byte(0x26c478) + byte(0x26c47a)/byte(0x26c47a) + byte(0x26c47c)/byte(0x26c47c) +
        byte(0x26c47e)/byte(0x26c47e)],
    1: [byte(0x26c479)/byte(0x26c479) + byte(0x26c47b)/byte(0x26c47b) + byte(0x26c47d)/byte(0x26c47d) +
        byte(0x26c47f)/byte(0x26c47f)],
    2: [byte(0x26c480)/byte(0x26c480) +
        //Boss Rush
        byte(0x26c481)/byte(0x26c481) + byte(0x26c482)/byte(0x26c482) + byte(0x26c483)/byte(0x26c483) +
        //Chao Races
        byte(0x26c210)/byte(0x26c210) + byte(0x26c211)/byte(0x26c211) + byte(0x26c212)/byte(0x26c212) +
        byte(0x26c213)/byte(0x26c213) + byte(0x26c214)/byte(0x26c214) + byte(0x26c215)/byte(0x26c215) +
        byte(0x26c216)/byte(0x26c216) + byte(0x26c217)/byte(0x26c217) + byte(0x26c218)/byte(0x26c218) +
        byte(0x26c219)/byte(0x26c219) +
        //Kart Races
        byte(0x26c05c)/byte(0x26c05c) + byte(0x26c069)/byte(0x26c069) + byte(0x26c076)/byte(0x26c076)
        ]
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
    0: ["Driving test course", "Sonic in Trial product car", "2 minutes 20 seconds"],
    1: ["OPA OPA course", "Omochao in OPA OPA kart", "2 minutes 30 seconds"],
    2: ["E shaped course", "EGG ROBO in...EGG ROBO?", "2 minutes 50 seconds"]
}

dlcTime = {
    0: [8400],
    1: [9000],
    2: [10200]
}

function emblemLogic(i)
{
    if (i == 0) {
    return sum_of(heroemblems, y=>prev(y)) + prev(emblemSpec[0][0]) < 84
        && measured(sum_of(heroemblems, y=>y) + emblemSpec[0][0] == 84)
    }
    else if (i == 1) {
    return sum_of(darkemblems, y=>prev(y)) + prev(emblemSpec[1][0]) < 74
        && measured(sum_of(darkemblems, y=>y) + emblemSpec[1][0] == 74)
    }
    else if (i == 2) {
    return sum_of(heroemblems, y=>prev(y)) + prev(emblemSpec[0][0])
        +  sum_of(darkemblems, y=>prev(y)) + prev(emblemSpec[1][0])
        +  sum_of(lastemblems, y=>prev(y)) + prev(emblemSpec[2][0]) < 180
        && measured(sum_of(heroemblems, y=>y) + emblemSpec[0][0]
        +  sum_of(darkemblems, y=>y) + emblemSpec[1][0]
        +  sum_of(lastemblems, y=>y) + emblemSpec[2][0] == 180)
    }
}

function upgrades(i, j) {
    return byte(0x26a1e0 + i + j)/byte(0x26a1e0 + i + j)
}

function upgradeLogic(i)
{
    Array = []
    for index in range (0, upgradeNumb[i][1]-1) {
        array_push(Array, upgrades(upgradeNumb[i][0], index)) }
        
    return sum_of(Array, y => prev(y)) < upgradeNumb[i][1] && sum_of(Array, y => y) == upgradeNumb[i][1]
}

for i in range (0, 3) {
    for j in range (0, length(stageNumb[i])-1) {
        achievement(
            title = format("{0} (copy)", stageName[i][j]), points = 3,
            description = format("{0} (copy)", stageDesc[i][j]),
            trigger =  state == 16 && stage == stageNumb[i][j] && story == (i+1)%4
                    && prev(stageclear) == 1 && stageclear == 0
        )
        if (i != 3) {
            function ranks(i, j, x) => byte(stageRank[i][j] + 0)/x + byte(stageRank[i][j] + 1)/x + byte(stageRank[i][j] + 2)/x
                    + byte(stageRank[i][j] + 3)/x + byte(stageRank[i][j] + 4)/x
            function ranksdiv(i, j) => byte(stageRank[i][j] + 0)/byte(stageRank[i][j])
                        + byte(stageRank[i][j] + 1)/byte(stageRank[i][j] + 1) + byte(stageRank[i][j] + 2)/byte(stageRank[i][j] + 2)
                        + byte(stageRank[i][j] + 3)/byte(stageRank[i][j] + 3) + byte(stageRank[i][j] + 4)/byte(stageRank[i][j] + 4) + 0
            achievement(
                title = format("{0} Aced (copy)", stageName[i][j]), points = 10,
                description = format("Get an A rating on every mission. (copy)"),
                trigger =  measured(always_true(), when=ingame <= 2) && state == 16 && stage == stageNumb[i][j]
                        && prev(ranks(i, j, 5)) < 5 && measured(ranks(i, j, 5) == 5)
            )
            if (i == 0) array_push (heroemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
            ranksdiv(i, j))
            if (i == 1) array_push (darkemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
            ranksdiv(i, j))
            if (i == 2) array_push (lastemblems, //ranks(i, j, 25.0) +// ← complete idiot since this is useless
            ranksdiv(i, j))
        }
    }
    if (i != 3) {
        achievement(
            title = format("{0} (copy)", storyName[i][0]), points = 10 + (i/2 * 15),
            description = format("Complete {0} Story {1}", storyDesc[i][0], storyDesc[i][1]),
            trigger =  prior(state) == 19 && state == 0 && stageloaded == storyNumb[i][0] && story == i+1
                    && prev(stageclear) == 0 && stageclear == 1
        )
        achievement(
                title = format("{0} (copy)", emblemName[i][0]), points = 25,
                description = format("{0} (copy)", emblemDesc[i][0]),
                trigger =  measured(always_true(), when=ingame <= 2) && state == 16 && emblemLogic(i)
            )
    }
    else {
        achievement(
            title = format("Green Hill Aced (copy)"), points = 2,
            description = format("Get A rating on Green Hill. (copy)", stageDesc[i][0]),
            trigger =  state == 16 && stage == stageNumb[i][0] && story == (i+1)%4
                    && dword(tbyte(tbyte(0xe82204) + 0x2C) +0x00) == 0x0004000f
        )
    }
}

for i in range (0, 5) {
    achievement(
    title = format("{0} (copy)", upgradeName[i][0]), points = 5,
    description = format("{0} (copy)", upgradeDesc[i][0]),
    trigger = measured(always_true(), when=ingame <= 2) && state == 16 && upgradeLogic(i)
    )
}

achievement(
    title = "Big Foot Challenge (copy)", points = 5,
    description = "Defeat Big Foot without breaking the middle boxes or allowing him to land.",
    trigger =  never(state == 0 || state == 7 || stage != 50 || dword(tbyte(0x2581b4) + 0x1A88) == 0
            || dword(tbyte(0x2581b4) + 0x1A98) == 0 || dword(tbyte(0x2581b4) + 0x1AC4) == 0
            || dword(tbyte(0x2581b4) + 0x1AC8) == 0 || prev(bit0(tbyte(0x25bcb0) + 0x48)) == 0
            && bit0(tbyte(0x25bcb0) + 0x48) == 1) && once(prev(time) == 0
            && time > 0) && trigger_when(float(tbyte(0x25bcb0) + 0x0C) == 0.0)
)

achievement(
    title = "King Boom Boo Challenge (copy)", points = 5,
    description = "Defeat King Boom Boo without him noticing you coming from behind. (copy)",
    trigger =  never(state == 0 || state == 7 || stage != 53 || word(tbyte(0x25bc98) + 0x44) == 259)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(float(tbyte(0x25bc98) + 0x0C) == 0.0)
)

achievement(
    title = "Hot Shot GG (copy)", points = 5,
    description = "Defeat Hot Shot without taking damage (copy)",
    trigger = never(state == 0 || state == 7 || stage != 51 || bit7(playerPointer + 0x05) == 1)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(float(tbyte(0x25bcb0) + 0x0C) == 0.0)
)

achievement(
    title = "Faster than Sonic (copy)", points = 5,
    description = "Defeat Sonic in the jungle in less than 20 seconds (copy)",
    trigger = never(state == 0 || state == 7 || stage != 19 || time < 0x1400)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(float(tbyte(0x2512bc) + 0x48) == 0.0)
)

achievement(
    title = "I Am the Eggman (copy)", points = 5,
    description = "Defeat Egg Golem as Eggman without letting it start the headbutt attack (copy)",
    trigger = never(state == 0 || state == 7 || stage != 57
            || dword(tbyte(tbyte(0x25bc98) + 0xFFFFFFF4) + 0x04) == 9)
            && once(prev(time) == 0 && time > 0)
            && trigger_when(float(tbyte(tbyte(0x25bc98) + 0xFFFFFFF4) + 0x14) == 0.0)
)

for i in range(0, 1) {
    achievement(
        title = format("{0}", storyName[i][1]), points = 10,
        description = format("Complete the {0} side boss attack without losing a life. (Failing, Return to Menu) (copy)", storyDesc[i][0]),
        trigger = never(story != 12 + i || prev(byte(0x0db26c)) > byte(0x0db26c))
                && once(byte(0x0db26c) == 4 && stage == 50 + i) && trigger_when(stage == 42
                && float(tbyte(0x2512bc) + 0x48) == 0.0)
    )
}

for i in range (0, 2) {
    achievement(
        title = format("Time Trial {0} Karting (copy)", kartName[i][0]), points = 5,
        description = format("Achieve a new best time of under {0} on the {1} kart race (copy)", kartDesc[i][0], kartDesc[i][1]),
        trigger =  stage == 71 && course == 24 + i && prev(courseclear) == 0 && courseclear == 1
                && __ornext(dword(playerPointer + 0x15BC) == 1 || dword(tbyte(0x25127c) + 0x15BC) == 1)
                && time < courseTime[i][0]
    )
    achievement(
        title = format("{0}", dlcName[i][0]), points = 2,
        description = format("Win a Race on {0} as {1}", dlcDesc[i][0], dlcDesc[i][1]),
        trigger =  stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && dword(playerPointer + 0x15BC) == 1 && byte(0x0fe1f8) == 2 
    )
    achievement(
        title = format("{0}", dlcName[i][1]), points = 5,
        description = format("Achieve a new best time of under {0} on the {1} course", dlcDesc[i][1], dlcDesc[i][0]),
        trigger =  stage == 71 && course == dlcNumb[i][0] && prev(courseclear) == 0 && courseclear == 1
                && __ornext(dword(playerPointer + 0x15BC) == 1 || dword(tbyte(0x25127c) + 0x15BC) == 1)
                && time < dlcTime[i][0]
    )
}

//New Challenges

function scoreCheevo (i, j, x, y, z) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} with a current score of under {2}k and without losing a life", y, stageName[i][j], z),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || dword(0x0db294) >= (z*1000) || prev(byte(0x0db26c)) > byte(0x0db26c))
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function upgradeCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Clear Hard mode in {0} without using any upgrade abilities", stageName[i][j]),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || byte(playerPointer + 0x00) == 0x2d || byte(playerPointer + 0x00) == 0x3b
                || byte(playerPointer + 0x00) == 0x3c || byte(playerPointer + 0x00) == 0x45)
                && once(startCha)
                && mission == 4 && trigger_when(prev(stageclear) == 1 && stageclear == 0)
                //0x2d == Mystic Melody, 0x3b == Ring Dash, 0x3c == Light Dash, 0x45 == Bounce
    )
}

function chaoCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Find the lost Chao in {0} without using the Mystic Melody", stageName[i][j]),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || byte(playerPointer + 0x00) == 0x2d)
                && once(startCha) && mission == 2 && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function backCheevo (i, j, x) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("Collect 100 rings in {0} without using the Back-Ring", stageName[i][j]),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || prev(byte(0x0db24b)) == 1 && byte(0x0db24b) == 0) 
                && once(state == 7 && time == 0)
                && mission == 1 && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function ringlessCheevo (i, j, x, y) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without collecting any Rings", y, stageName[i][j]),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || prev(word(0x0db270)) < word(0x0db270))
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function jumpCheevo (i, j, x, y) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without using the jump button while being on the ground", y, stageName[i][j]),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || (prev(byte(playerPointer + 0x00)) == 0
                || prev(byte(playerPointer + 0x00)) == 1 || prev(byte(playerPointer + 0x00)) == 0x0c) && byte(playerPointer + 0x00) == 6)
                && once(state == 7 && byte(playerPointer + 0x205) == 3)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function ringCheevo (i, j, x, y, z) {
    achievement(
        title = format("{0}", x), points = 5,
        description = format("{0} in {1} without ever having more than {2} Rings in hand", y, stageName[i][j], z),
        trigger =  never(state == 0 || stage != stageNumb[i][j] || word(0x0db270) > z)
                && once(startCha)
                && __ornext(mission == 0 || mission == 3 || mission == 4)
                && trigger_when(prev(stageclear) == 1 && stageclear == 0)
    )
}

function flyCheck () {
    return once(byte(playerPointer + 0x04) == 1) && prev(byte(playerPointer + 0x00)) != 0x3c && byte(playerPointer + 0x00) == 0x3c
}

function objectCheck () {
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
    return tally_of(Array, 39, y => y)
}

achievement(
    title = "Keep it Rough 'n Wild", points = 5,
    description = "Find the 3 pieces of the Master Emerald in Wild Canyon without touching the Ground more than 5 times",
    trigger =  never(state == 0 || stage != 16 || repeated(6, bit0(playerPointer + 0x04) == 1 || bit5(playerPointer + 0x04) == 1
            && prev(byte(playerPointer + 0x04)) == 0 && byte(playerPointer + 0x00) != 0x41
            && byte(playerPointer + 0x00) != 0x42 && byte(playerPointer + 0x00) != 0x45
            && never(state == 7 && byte(playerPointer + 0x205) == 3))) 
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

scoreCheevo(0, 2, "Improper Property Damage", "Find the core of the Prison", 8)

ringlessCheevo(0, 3, "Spare Change in Exchange for an Explosive Arrange", "Escape from the military base")

upgradeCheevo(0, 4, "Chillin' in the Forest")

chaoCheevo(0, 5, "Sensing the Chao in His Feet")

achievement(
    title = "Reaching for the Stars", points = 5,
    description = "Elude enemy pursuit in Mission Street without flying more than 3 times",
    trigger =  never(state == 0 || stage != 17 || once(once(once(never(startCha)
            && flyCheck()) && flyCheck()) && flyCheck()) && flyCheck())
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

backCheevo(0, 7, "Tour through the Mines")

scoreCheevo(0, 9, "Hide them Points", "Find the entrance into Hidden Base", 1)

upgradeCheevo(0, 10, "Like A Tomb Raider")

jumpCheevo(0, 11, "Come, Sweet Death", "Find the 3 Gate keys")

ringCheevo(0, 12, "Eternally Cursed", "Destroy the colony's power generator", 5)

achievement(
    title = "One Way Ticket To The Moon", points = 5,
    description = "Find 3 pieces of the Master Emerald in Meteor Herd without using more than 3 rockets",
    trigger =  never(state == 0 || stage != 32 || repeated(4, prev(byte(playerPointer + 0x00)) != 0x12
            && byte(playerPointer + 0x00) == 0x12 && never(state == 7 && byte(playerPointer + 0x205) == 3)))
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

achievement(
    title = "Gravity Got Nothing on Me", points = 5,
    description = "Hurry and find Eggman in Crazy Gadget without changing the gravity more than 4 times",
    trigger =  never(state == 0 || stage != 22 || repeated(5, prev(byte(playerPointer + 0x00)) == 0x53
            && byte(playerPointer + 0x00) != 0x53 && never(startCha)))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

achievement(
    title = "The Blue Monster on Rails", points = 5,
    description = "Hurry and find the point of the Cannon in Final Rush without staying off the Rails or being chased by space junk for more than 10 seconds",
    trigger =  never(state == 0 || stage != 30 || repeated(600, state == 16 && never(state + dword(0x24ee90) == 0xffff0007
            || byte(playerPointer + 0x00) == 0x47 || float(playerPointer + 0x14) >= 2443.0 && float(playerPointer + 0x14) <= 2623.0
            && float(playerPointer + 0x18) < -20945.0 && float(playerPointer + 0x1C) >= 11215.0 && float(playerPointer + 0x1C) <= 11273.0)))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

achievement(
    title = "Guarded by an Iron Hand", points = 5,
    description = "Clear Hard mode in Iron Gate without being hurt",
    trigger =  never(state == 0 || stage != 11 || bit2(playerPointer + 0x04) == 1)
            && once(startCha) && mission == 4 && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

achievement(
    title = "Keeping It Dry!", points = 5,
    description = "Find 3 pieces of the Master Emerald in Dry Lagoon without using the turtle more than once",
    trigger =  never(state == 0 || stage != 18 || repeated(2, prev(byte(playerPointer + 0x00)) != 0x56
            && byte(playerPointer + 0x00) == 0x56 && never(state == 7 && byte(playerPointer + 0x205) == 3)))
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

achievement(
    title = "The Shine of Dirty Rings", points = 5,
    description = "Return to Hidden Base in Sand Ocean with exactly 20 Rings in hand and without losing a life",
    trigger =  never(state == 0 || stage != 21 || prev(byte(0x0db26c)) > byte(0x0db26c))
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(word(0x0db270) == 20 && prev(stageclear) == 1 && stageclear == 0)
)

chaoCheevo(1, 3, "A Chao's Darkest Shadow")

achievement(
    title = "Phantom Thief", points = 5,
    description = "Find the 3 Gate keys in Egg Quarters without ever being detected",
    trigger =  never(state == 0 || stage != 26 || dword(tbyte(0xfb95d0) + 0x302) == 2 || dword(tbyte(0xfb95d0) + 0x302) == 3)
            && once(state == 7 && byte(playerPointer + 0x205) == 3)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)

scoreCheevo(1, 5, "A Crushed Colony's Dream", "Find the way to the colony's core", 3)

chaoCheevo(1, 6, "The Ultimate Weapon: A Chao!")

backCheevo(1, 7, "Securing all these Rings")

ringlessCheevo(1, 10, "Payment for a Fakery Way", "Chase the Tornado")

jumpCheevo(1, 11, "Gravitational Grind", "Find 3 pieces of the Master Emerald")

ringCheevo(1, 12, "The Way to Godhood", "Get and confront the trespassers", 25)

achievement(
    title = "A Final Test", points = 5,
    description = "Hurry to the Eclipse Cannon in Final Chase without touching more than 38 gravity barrels",
    trigger =  never(state == 0 || stage != 40 || objectCheck())
            && once(startCha)
            && __ornext(mission == 0 || mission == 3 || mission == 4)
            && trigger_when(prev(stageclear) == 1 && stageclear == 0)
)