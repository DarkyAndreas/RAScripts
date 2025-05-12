// Sonic Mega Collection Plus
// #ID = 20255

function baseChain(first,offsets,lastType) {
    type = word_be
    Array = [type(first)]
    if (length(offsets) > 1) {
        for i in range(0, length(offsets)-2) {
            Array2 = []
            array_push(Array2, type(array_pop(Array) + offsets[i]) & bitwise)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}
function time(i=0) => byte(0x00ef4623+i)
function cheats(offset=0) => byte(cheat+offset)
function emeralds(i=0) => byte(emeraldS3K+i)
function coords(i=0) => word_be(0x00eef810+i)
function calc(i) => ((i*2)/(i+1))

cheat = 0x00ef47e0
cstate = 0x00eef82a
estate = 0x00eef82b
pstate = 0x00eef821
emeraldS1 = byte(0x00ef4657)
emeraldS3K = 0x00ef47b0
game = byte(0x01fda628)
menu = byte(0x01ec7a8c)
state = byte(0x01ec6818)
screen = byte(0x00ef3e00)
zone = byte(0x00ef364e)
wzone = word_be(0x00ef364e)
dzone = word_be(0x00ef4610)
azone = word_be(0x00ef479a)
lzone = byte(0x00ef4610)
lact = byte(0x00ef4611)
actState = byte(0x00ef461e)
demo = byte(0x00ef47f1)
char = byte(0x00ef4709)
musicS1 = byte(0x00ef381a)
musicS3K = byte(0x00307ec4)
checkpointS1 = byte(0x00ef4630)
checkpointS3K = byte(0x00ef462a)
lives = byte(0x00ef4612)
rings = word_be(0x00ef4620)
competition = byte(0x00ef3748)
lap = byte(0x00ef46dc)
score = dword_be(0x00ef4626)
ingame = byte(0x01fda5f0)
health = baseChain(0x00ef2b82,[0x00ee4829],byte)
musicCheck = musicS3K == 0x8d
check = byte(0x00eef82e) == 0x81
timeCalc = time()*3600+time(1)*60+time(2)
lbCancel = __ornext(menu == 5 || ingame != 3 || cheats() == 1 || cheats(2) == 1 || screen == 0x04)
mtr = []
str = []

zones = {
    "S1": [
        ["Green Hill",0x00],["Marble",0x02],["Spring Yard",0x04],
        ["Labyrinth",0x01],["Star Light",0x03],
        ["Scrap Brain",0x05,0x01],["Final",0x05]
    ],
    "S3K": [
        ["Angel Island",0x00],["Hydrocity",0x01],["Marble Garden",0x02],
        ["Carnival Night",0x03],["Icecap",0x05],["Launch Base",0x06],
        ["Mushroom Hill",0x07],["Flying Battery",0x04],["Sandopolis",0x08],
        ["Lava Reef",0x09,0x16],["Sky Sanctuary",0x0a],["Death Egg",0x0b,0x17],
        ["The Doomsday",0x0c],
    ]
}
bonus = [
    ["Egg Inferno",0x1600],["Hidden Palace",0x1601],["Death Egg Robot",0x1700]
]

character = ["Sonic","Tails","Knuckles","any character","Sonic & Tails"]

monitors = {
    "Green Hill": [[],[0x00ef4448],[0x00ef4455,0x00ef4475]],
    "Marble": [[0x00ef442a],[0x00ef441e],[0x00ef4424]],
    "Spring Yard": [[0x00ef4406],[0x00ef442e],[0x00ef4465]],
    "Labyrinth": [[],[],[0x00ef441e]],
    "Star Light": [[0x00ef4410],[0x00ef4440],[]],
    "Scrap Brain": [[],[0x00ef4448],[]],
}

function prot() => unless(game != 0x06) && unless(once(menu == 5 && never(screen == 0x04)))

S1 = zones["S1"]
S3K = zones["S3K"]

function bcheck(i=8) {
    base = [game != 0,demo != 0,cheats() != 0,cheats(1) != 0,cheats(2) != 0,
            screen == 0x04,ingame != 3,menu == 5,always_false()]
    acheck = array_map(base,y=>y)
    acheck[i] = always_false()
    return acheck
}
ncheck = never(any_of(bcheck(),y=>y))
lcheck = any_of(bcheck(2),y=>y)

for i in range(0,length(S1)-1) {
    fz = ""
    zoneName = S1[i][0]
    sonicstate = byte(0x00ef181c)
    clear = sonicstate != 0x17 && sonicstate != 0x18 && screen == 0x0c && prev(actState) == 1 && actState == 0
    screenCheck = screen == 0x0c
    for j in range(0,1) {
        actCheck = lzone == S1[i][1] && lact == 2 && clear
        if (i == length(S1)-2) {
            screenCheck = always_true()
            actCheck = prev(lzone) == S1[i][2] && lzone == S1[i+1][1]
        }
        else if (i == length(S1)-1) {
            fz = " and beat the game"
            screenCheck = screen == 0x1c
            actCheck = lzone == S1[i][1]+1
        }
        if (j == 0) || (i == length(S1)-1 && j == 1) {
            if (j == 1) {
                ttl = "True Ending"
                pts = 50
                tp = ""
                des1 = "Clear"
                des2 = "with all 6 Chaos Emeralds collected"
                emd = emeraldS1 == 6
            }
            else {
                ttl = format("{0} Zone",zoneName)
                pts = 10
                tp = "progression"
                des1 = "Complete"
                des2 = "without using level select"
                emd = always_true()
            }
            achievement(
                title = ttl, points = pts, type=tp,
                description = format("[S1 16-Bit] {0} {1} Zone{2} {3}",des1,zoneName,fz,des2),
                trigger =  once(prev(screen) == 4 && screen == 0x8c) && screenCheck
                        && actCheck && emd && ncheck
            )
            if (dictionary_contains_key(monitors,zoneName) == true) {
                for l in range(0,2) {
                    if (length(monitors[zoneName][l]) > 0) {
                        current = monitors[zoneName][l]
                        if (i == length(S1)-2) array_push(str,all_of(current,y=>screen == 0x0c && lzone == S1[i][1]
                            && lact == l && prev(byte(y)) == 0 && byte(y) == 1))
                        else array_push(mtr,all_of(current,y=>once(screen == 0x0c && lzone == S1[i][1]
                            && lact == l && prev(byte(y)) == 0 && byte(y) == 1)))
                    }
                }
            }
            if (i < length(S1)-1) {
                actCheck = lzone == S1[i][1] && lact == 2 && trigger_when(clear)
                if (i == length(S1)-2) actCheck = prev(lzone) == S1[i][2] && trigger_when(lzone == S1[i+1][1])
                achievement(
                    title = format("Pacifist {0} Zone Act 3",zoneName), points = 10,
                    description = format("[S1 16-Bit] Clear {0} Zone Act 3 without destroying any Badniks or breaking any blocks - level select allowed",zoneName),
                    trigger =  once(checkpointS1 == 0 && screen == 0x8c) && trigger_when(screenCheck)
                            && actCheck && never(screen == 0x0c && musicS1 != 0x6f && prev(score) != score)
                            && never(lcheck)
                )
            }
            else {
                dcheck = never(any_of(bcheck(5),y=>y))
                stu =  once(prev(screen) == 4 && screen == 0x8c) && screenCheck
                        && actCheck && emd && dcheck
                standsu =  once(prev(screen) == 4 && screen == 0x8c) && screenCheck
                        && actCheck && ncheck
                secondary =  once(prev(screen) == 4 && screen == 0x8c) && screen == 0x0c
                          && prev(lives) == 1 && lives == 0 && dcheck
                specSt = prev(screen) == 4 && screen == 0x8c && unless(any_of(bcheck(),y=>once(y))) || never(screen == 4) && always_false()
                if (j == 0) {
                    leaderboard(
                        title = "[S1 16-Bit] Score Ranking",
                        description = "Get the highest possible score - beating the game optional",
                        start = score > 0 && (stu || secondary),
                        cancel = always_false(),
                        submit = score > 0 && (stu || secondary),
                        value = score*10,
                        format = "VALUE", lower_is_better=false
                    )
                    for l in range(0,2) {
                        elb = [["Unscathed","taking damage",__ornext(prev(lives)>lives || prev(rings)>rings)],
                               ["Survivor","dying",prev(lives)>lives],
                               ["Lives","amount of lives possible",lives],
                               ["Ring","possible amount of rings collected",rings]]
                        if (l < 2) {
                            lib = true
                            dlb = format("Beat the game while {0} as few times as possible",elb[l][1])
                            st = specSt
                            cn = any_of(bcheck(),y=>y)
                        }
                        else {
                            lib = false
                            dlb = format("Beat the game with the highest {0}",elb[l][1])
                            st = standsu
                            cn = always_false()
                        }
                        leaderboard(
                            title = format("[S1 16-Bit] {0} Ranking",elb[l][0]),
                            description = dlb,
                            start = st,
                            cancel = cn,
                            submit = standsu,
                            value = elb[l][2],
                            format = "VALUE", lower_is_better=lib
                        )
                    }
                }
                if (j == 0) clb = ""
                else clb = " all 6 Chaos Emeralds obtained"
                slb = [["Clearing",""],["Chaos-Emeralds"," and"]]
                flb = [["Any% Speed Ranking",""],["Chaos Emeralds Speed"," with"]]
                leaderboard(
                    title = format("[S1 16-Bit] {0} Score",slb[j][0]),
                    description = format("Beat the game with the highest possible score{0}{1} - glitches allowed",slb[j][1],clb),
                    start = score > 0 && standsu,
                    cancel = always_false(),
                    submit = score > 0 && standsu,
                    value = score*10,
                    format = "VALUE", lower_is_better=false
                )
                leaderboard(
                    title = format("[S1 16-Bit] {0}",flb[j][0]),
                    description = format("Beat the game as quickly as possible in real time{0}{1} - glitches allowed",flb[j][1],clb),
                    start = specSt,
                    cancel = any_of(bcheck(),y=>y),
                    submit = standsu,
                    value = screen == 0x0c,
                    format = "FRAMES", lower_is_better=true
                )
            }
        }
    }
}

achievement(
    title = format("Chaos Emerald"), points = 5,
    description = format("[S1 16-Bit] Obtain a Chaos Emerald"),
    trigger =  once(prev(screen) == 4 && screen == 0x8c) && screen == 0x10
        && prev(emeraldS1) == 0 && emeraldS1 == 1 && ncheck
)

for i in range(0,2) {
    item = [["Shield","a Shield"],["Invincibility","an Invincible"],["Sneakers","the Power Sneakers"]]
    curent = byte(0x00ef462c+i)
    achievement(
        title = format("{0}",item[i][0]), points = 2,
        description = format("[S1 16-Bit] Obtain {0}",item[i][1]),
        trigger =  once(prev(screen) == 4 && screen == 0x8c)
                && curent == 1 && ncheck
    )
}

for i in range(1,5,2) {
    achievement(
        title = format("{0}00K Club",i), points = 5+5*(i/3),
        description = format("[S1 16-Bit] Score {0}00,000 points in one playthrough",i),
        trigger =  once(prev(screen) == 4 && screen == 0x8c)
                && prev(score) < i*10000 && score >= i*10000 && ncheck && never(prev(lzone) == 6)
    )
}

achievement(
    title = format("Twelve Life Monitors"), points = 25,
    description = format("[S1 16-Bit] Collect all 12 1-Up monitors in the game by Star Light Zone Act 3"),
    trigger =  once(prev(screen) == 4 && screen == 0x8c)
        && all_of(mtr,y=>y) && ncheck
)

achievement(
    title = format("Thirteenth Life Monitor"), points = 25,
    description = format("[S1 16-Bit] Collect the 1-Up monitor in Scrap Brain Zone Act 2 - requires speedrunning and trickjumping!"),
    trigger =  once(prev(screen) == 4 && screen == 0x8c)
        && all_of(str,y=>y) && never(lcheck)
)

for i in range(0,3) {
    endTtl = format(" - {0}",character[i])
    endDes = format(" as {0}",character[i])
    tp = "progression"
    if (i==0) chars = __ornext(char == i || char == i+1)
    else chars = char == i+1
    for j in range (0,length(S3K)-1) {
        zoneID = S3K[j][1]
        zoneAct = zoneID*0x100
        if (j < length(S3K)-1) nextID = S3K[j+1][1]
        zoneName = S3K[j][0]
        if (zoneName == "Lava Reef") zoneCalc = __ornext(prev(wzone) == zoneAct+1 || prev(wzone) == S3K[j][2]*0x100)
        && wzone == S3K[j][2]*0x100+1
        else if (zoneName == "Sky Sanctuary") zoneCalc = prev(zone) == zoneID && __ornext(zone == nextID
        || musicS3K == 0x97)
        else if (zoneName == "Death Egg") zoneCalc = prev(zone) == S3K[j][2] && __ornext(zone == nextID
        || zone == nextID+1)
        else if (zoneName == "The Doomsday") zoneCalc = prev(zone) == zoneID && zone == zoneID+1
        else zoneCalc = prev(zone) == zoneID && zone == nextID
        if (zoneID > 0x0a) tp = ""
        if (zoneID > 0x06 || zoneID == 0x04) p = 10
        else p = 5
        if (i==0)
            achievement(
                title = format("{0} Zone",zoneName), points = p, type=tp,
                description = format("[S3&K] Complete {0} Zone",zoneName),
                trigger = prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && screen != 0x88 && zoneCalc
            )
        if (i<3)
        for l in range(0,1) {
            reset = prev(!musicCheck)
            if (zoneName == "The Doomsday") {
                endT=""
                endD=""
            }
            else {
                endT=endTtl
                endD=endDes
            }
            if (zoneName != "Sky Sanctuary" && zoneName != "The Doomsday") act = format(" Act {0}",l+1)
            else act = ""
            if ((zoneName == "Lava Reef" || zoneName == "Death Egg") && l == 1) clear = prev(wzone) == zoneAct+l
            && wzone == S3K[j][2]*0x100+i/2
            else if (zoneName == "Sky Sanctuary" && i == 2) {
                reset = always_true()
                clear = byte(pstate) != 0x17 && byte(pstate) != 0x18 && screen == 0x0c
                       && prev(actState) == 1 && actState == 0 && prev(wzone) == zoneAct+1 && musicS3K == 0x7e
            }
            else clear =  byte(pstate) != 0x17 && byte(pstate) != 0x18 && screen == 0x0c
                       && prev(actState) == 1 && actState == 0 && prev(wzone) == zoneAct+l
            if (zoneName == "The Doomsday") clear = prev(zone) == zoneID && zone == zoneID+1
            if (zoneAct+l < 0xa01 || (zoneAct+l != 0xa01 && zoneAct < 0xc00 && i==1) || (zoneAct+l != 0xa01 && zoneAct+l != 0xc01 && i==0))
            leaderboard(
                title = format("[S3&K] {0} Zone{1} Speedrun{2}",zoneName,act,endT),
                description = format("Clear {0} Zone{1}{2} as fast as possible",zoneName,act,endD),
                start =  prot() && reset && state == 0 && cheats(2) == 0 && chars
                && __ornext(lzone < 0x0e || lzone > 0x12) && clear,
                cancel = always_false(),
                submit = always_true(),
                value = timeCalc,
                lower_is_better = true, format = "Frames"
            )
        }
    }
    if (i<2)
    for j in range (0,length(bonus)-1) {
        zoneName = bonus[j][0]
        ID = bonus[j][1]
        if (ID == 0x1601) {
            des=format("Clear {0} Zone",zoneName)
            sta = prev(wzone == ID) && wzone == 0xa00
            time = timeCalc
            sub = always_true()
            can = always_false()
        }
        else {
            if (ID == 0x1600) {
                st = "Lava Reef"
                sub = byte(pstate) != 0x17 && byte(pstate) != 0x18 && screen == 0x0c && prev(actState) == 1 && actState == 0 && prev(dzone) == 0x1600
            }
            else {
                st = "Death Egg"
                sub = __ornext(wzone == 0xc00 || wzone == 0xd00)
            }
            can = lbCancel
            sta = screen == 0x8c && wzone == ID
            des=format("Defeat the {0} in {1} Zone Act 2",zoneName,st)
            time = time(2) != prev(time(2))
        }
        leaderboard(
            title = format("[S3&K] {0} Speedrun{1}",zoneName,endTtl),
            description = format("{0}{1} as fast as possible",des,endDes),
            start =  prot() && state == 0 && cheats(2) == 0 && chars && sta,
            cancel = can,
            submit = sub,
            value = time,
            lower_is_better = true, format = "Frames"
        )
    }
    for j in range(0,1) {
        tp=""
        ttl = [
            ["Third Time’s the Charm","Crushing Metal"],
            ["Genius Move","Brain Power"],
            ["Pure Strength","Knock, Knock!"],
            ["Byte Them to Bits & Pieces","Triple Deluxe"]]
        single=""
        reset = always_true()
        p = 10
        if (i==3) {
            if (j==1) {
                single=" in one session"
                reset = never(screen == 0x04)
                chars = once(wzone==1)
                p = 25
            }
            else {
                chars = always_true()
                tp="progression"
                p = 10
            }
        }
        if (j==0 || i==3) {
            lb="Any%"
            des=""
            emCheck = always_true()
        }
        else {
            lb="100%"
            des=" with all Super Emeralds obtained"
            emCheck = emeralds(1) == 7
            p = 25
        }
        achievement(
            title = format("{0}",ttl[i][j]), points = p, type=tp,
            description = format("[S3&K] Complete the game{2} as {0}{1}",character[i],des,single),
            trigger = prot() && reset && state == 0 && cheats() == 0 && cheats(2) == 0 && chars && emCheck && musicS3K == 0x97
        )
        if(i<3)
        leaderboard(
            title = format("[S3&K] Full Game Speedrun - {0} - {1}",character[i],lb),
            description = format("Beat the game as {0}{1} as quickly as possible",character[i],des),
            start =  prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && chars && wzone == 0 && screen == 0x0c && musicS3K == 0x65,
            cancel = lbCancel,
            submit = emCheck && musicS3K == 0x97,
            value = always_true(),
            lower_is_better = true, format = "Frames"
        )
    }
}

for i in range(0,2) {
    ttl = ["Shining in 3D","Super Seven","Let the Chaos Begin"]
    if (i==0) {
        des="your first"
        p = 2
    }
    else {
        des="all 7"
        p = 10
    }
    if (i==2) tp="Super "
    else tp=""
    emd = emeralds(i/2)
    ems = calc(i)*6
    achievement(
        title = format("{0}",ttl[i]), points = p, type="",
        description = format("[S3&K] Collect {0} {1}Chaos Emerald",des,tp),
        trigger =  prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && musicS3K == 0x8f
                && prev(emd) == ems && emd == ems+1
    )
}

for i in range(0,5) {
    comp = ["Azure Lake","Balloon Park","Desert Palace","Chrome Gadget","Endless Mine","Grand Prix"]
    sts =  prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && lzone == 0x0e+i-i/5
        && prev(lap) == 5 && lap == 6 && competition==2-(i/5)*2
    stg =  prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && lzone == 0x0e+i-(i/5)*5 && screen == 0x8c && competition==2-(i/5)*2
    if (i==5) {
        ttl = "Small Adventure"
        des="the "
        lb=""
        modeCheck=competition==0
    }
    else {
        ttl = comp[i]
        des=""
        lb = " in Time Attack"
        modeCheck=always_true()
    }
    achievement(
        title = format("{0}",ttl), points = 2+2*(i/5), type="",
        description = format("[S3&K] Complete {0}{1}",des,comp[i]),
        trigger = prot() && state == 0 && cheats() == 0 && cheats(2) == 0 && lzone == 0x0e+i-i/5 && prev(lap) == 5 && lap == 6 && modeCheck
    )
    leaderboard(
        title = format("[S3&K] {0} Speedrun",comp[i]),
        description = format("Clear {0}{1} as fast as possible{2}",des,comp[i],lb),
        start = stg,
        cancel = lbCancel || screen == 0xc0,
        submit = sts,
        value = prev(timeCalc) != timeCalc,
        lower_is_better = true, format = "Frames"
    )
}


darknessTime = word_be(0x00ef3e34)
darknessLevel = byte(0x00ef3fc3)
hitReset = checkpointS3K == 0 && prev(screen) != 0x8c && screen == 0x8c
hurt = byte(pstate) == 0x1a
death = byte(pstate) == 0x18

function scoreCalc() {
    Array = []
    sc = [10,20,50,100,1000]
    for i in range(0,4) {
        array_push(Array, score-prev(score) == sc[i])
    }
    return Array
}

l = 0
r = 1

test = [[r, always_true()]]
angelIsland = [[l, hitReset, repeated(2,prev(bit6(cstate)) == 0 && bit6(cstate) == 1)]]
hydrocity = [[r, trigger_when(word_be(0x00ef46cc) >= 0x0f)]]
marbleGarden = [[l, hitReset, repeated(2,prev(checkpointS3K) != checkpointS3K)]]
carnivalNight = [[r, time()<5]]
icecap = [[r, trigger_when(bit5(estate) == 1)]]
launchBase = [[r, time()<3]]
mushroomHill = [[r, trigger_when(rings == 50)]]
flyinBattery = [[l, checkpointS3K == 0 && prev(screen) != 0x8c && screen == 0x8c, tally_of(scoreCalc(),10,y=>y)]]
sandopolis = [[l, checkpointS3K != 0 && screen == 0x8c,
    once(__ornext(darknessTime > prev(darknessTime) && darknessLevel <= prev(darknessLevel) && darknessLevel != 5
      || prev(darknessLevel) > darknessLevel)
    && never(once(coords()>=0x4feb && coords()<=0x50b0 && coords(4)>=0x525)))]]
lavaReef = [[l, hitReset, repeated(5,prev(!hurt) && hurt)]]
skySanctuary = [[l, rings>5]]
deathEgg = [[l, death]]

cheevo = [
    ["No Time for a Swim!",2,1,"without touching water more than once",angelIsland],
    ["Destroying the Displays of Ruins",1,2,"while destroying at least 15 monitors",hydrocity],
    ["Poles of Doom",2,3,"without activating more than 1 checkpoint",marbleGarden],
    ["The Spirits of a Small Fox",2,2,"in under 5:00",carnivalNight],
    ["Shocking Snow Sterilization",1,1,"with a Thunder Shield",icecap],
    ["Countdown to Chaos",1,3,"in under 3:00",launchBase],
    ["Small Pocket Issue",2,3,"with exactly 50 rings in hand",mushroomHill],
    ["Against the Freedom",1,0,"without destroying more than 10 enemies",flyinBattery],
    ["Haunted Heroes",2,4,"without lighting up the pyramid",sandopolis],
    ["Burned Down to the Bones",1,4,"without taking damage more than 4 times",lavaReef],
    ["Social Distancing",1,2,"without having more than 5 rings in hand",skySanctuary],
    ["Deathless Egg Zone",0,1,"without dying",deathEgg],
]

for i in range(0,length(cheevo)-1) {
    lLogic = always_false()
    rLogic = always_true()
    act = cheevo[i][1]
    cha = cheevo[i][2]
    current = cheevo[i][4]
    zoneName = S3K[i][0]
    ttrigger = trigger_when(byte(pstate) != 0x17 && byte(pstate) != 0x18 && screen == 0x0c && prev(actState) == 1 && actState == 0)
    chard = format("{0}",character[4+cha-calc(cha)*5])
    zoneAct = S3K[i][1]*0x100+act-calc(act)
    for j in range(0,length(cheevo[i][4])-1) {
        logic = current[j]
        for l in range(0,length(logic)-2) {
            if (logic[0] == 0) lLogic = lLogic || logic[1+l]
            else if (logic[0] == 1) rLogic = rLogic && logic[1+l]
        }
    }
    if (act == 0) {
        acts = format("Act 1 and 2 ")
        actCheck = prev(wzone) != zoneAct && prev(wzone) != zoneAct+1
    }
    else {
        if (zoneName == "Sky Sanctuary") acts = format("",act)
        else acts = format("Act {0} ",act)
        actCheck = wzone != zoneAct
    }
    if (cha == 1) chars = __ornext(char == cha-1 || char == cha)
    else if (cha == 4) chars = always_true()
    else chars = char == cha
    if (zoneName == "Death Egg") ttrigger = trigger_when(prev(wzone) == S3K[i][1]*0x100+1 && wzone == S3K[i][2]*0x100)
    if (zoneAct == 0x201 || zoneAct == 0x701 || zoneAct == 0x400) p = 25
    else p = 10
    if (i == 8) extra = coords() == 0x0140
    else extra = always_true()
    achievement(
        title = format("{0}",cheevo[i][0]), points = p,
        description = format("[S3&K] Complete {0} Zone {1}as {2} {3}",zoneName,acts,chard,cheevo[i][3]),
        trigger =  prot() && unless(zone >= 0x13 && zone <= 0x14 || wzone == 0x1701
                || screen == 0x34 || screen == 0x48)
                && never(screen == 0x04 || lives== 0 || actCheck || lLogic)
                && state == 0 && cheats(2) == 0 && chars
                && once(__ornext(prev(check) || screen == 0x8c || prev(wzone) != wzone)
                && !check && checkpointS3K == 0 && extra && wzone == zoneAct)
                && rLogic && ttrigger
    )
}

function bluespheres_code() {
    Array = []
    val=1
    for i in range(0,3) {
        for j in range(0,6) {
            array_push(Array, bit(j,0x00ef47a5-i)*val)
            val=val+val
        }
    }
    return Array
}

achievement(
    title = format("Test"), points = 5,
    description = format("Complete Test"),
    trigger =  sum_of(bluespheres_code(), y=>y) == 1
)
