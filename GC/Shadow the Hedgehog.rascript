// Shadow the Hedgehog
// #ID = 6354

function baseChain(first,offsets,lastType) {
    type = dword_be
    bitwise = 0x1ffffff
    Array = [type(first) & bitwise]
    if (length(offsets) > 1) {
        for i in range(0, length(offsets)-2) {
            Array2 = []
            array_push(Array2, type(array_pop(Array) + offsets[i]) & bitwise)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}

function pointerChain(chains,type) => baseChain(0x00577068, [0x00,0x00,all_of(chains,y=>y)],type)

collect = [[],[]]
stage = dword_be(0x0057e808)
igmode = dword_be(0x00577040)
scoreScreen = byte(0x005a8051)
side = dword_be(0x0057e824)
gmode = dword_be(0x005ed220)
time = float_be(0x0057e7f4)*60
results = igmode == 6 && prev(scoreScreen) == 1 && scoreScreen == 0
function check(i) => stage == stages[1][i] && results
function boss(i) => stage == boss[2][i] && results
function sum(i) => sum_of(i, y=>y)
function coords(i=0) => baseChain(0x00577068, [0,0,i], float_be)
function score(i=0) => dword_be(0x005777d4+i)
function progress(i=0) => dword_be(0x00580c0c+i)
function cstick(i=0) => dword_be(0x0056fe28+i)
function rankCalc(i=0xff) {
    Array = []
    start = 0x00577ca0
    function set(mult=i) => 0x60*mult
    if (i != 0xff) {
        for j in range(1,2) {
            for l in range(0,j*2) {
                if (stages[2][i] != l && i < 22 || j == 2) {
                    if (j == 1) offset = 0x0b+0x18*l
                    else offset = 0x4c+4*l
                    calc = byte(start+offset+set(i))
                    array_push(Array, calc)
                    array_push(collect[j-1], calc)
                }
            }
        }
    }
    else {
        for j in range(0,length(boss[0])-2) {
            calc = byte(start+set(0x17)+0x23+set(j))
            array_push(Array, calc)
            array_push(collect[0], calc)
        }
    }
    return Array
}

stages = {
    0: ["Westopolis","Digital Circuit","Glyphic Canyon","Lethal Highway","Cryptic Castle","Prison Island","Circus Park",
        "Central City","The Doom","Sky Troops","Mad Matrix","Death Ruins","The ARK","Air Fleet","Iron Jungle","Space Gadget",
        "Lost Impact","GUN Fortress","Black Comet","Lava Shelter","Cosmic Fall","Final Haunt","The Last Way"],
    1: [0x64,0xc8,0xc9,0xca,0x12c,0x12d,0x12e,0x190,0x191,0x192,0x193,0x194,
        0x1f4,0x1f5,0x1f6,0x1f7,0x1f8,0x258,0x259,0x25a,0x25b,0x25c,0x2bc],
    2: [3,1,3,1,3,3,3,1,3,3,3,1,2,3,3,3,0,1,1,1,1,1,3]
}

boss = {
    0: ["Black Bull","Egg Breaker","Heavy Dog","Egg Breaker","Black Bull","Blue Falcon","Egg Breaker","Black Doom","Sonic and Diablon",
        "Egg Dealer","Sonic and Diablon","Egg Dealer","Egg Dealer","Black Doom","Black Doom","Sonic and Diablon","Devil Doom"],
    1: ["Lethal Highway","Cryptic Castle","The Doom","Mad Matrix","Death Ruins","The ARK","Iron Jungle","GUN Fortress","GUN Fortress",
        "Black Comet","Black Comet","Lava Shelter","Cosmic Fall","Cosmic Fall","Final Haunt","Final Haunt"],
    2: [0xd2,0x136,0x19a,0x19b,0x19c,0x1fe,0x1ff,0x262,0x263,0x264,0x265,0x266,0x267,0x268,0x269,0x26a,0x2c6],
}

endings = [["Pure Dark","Dark","Neutral","Hero","Pure Hero"],["Dark","Hero"],
           ["The Lost Cause","A Change of Heart?","Uncertainty Lies in the Shadows","Feeling the Light",
            "Gray Solutions","Reflecting on Ones Actions","The Dark Side Inside Me","The Not-So Perfect Hero",
            "Feeling the Corruption","Doing It Right"]]

sides = ["Dark","Neutral","Hero"]

titles = {
    0: ["Looking for Death? To Your West","Digital Pain","Painting the Glyphs Bloody Red","Lethal Injection",
        "Cryptic Castle Cracks Casuals","Imprisoned for Eternity","The Dead Clowns Makeup",
        "Till Explosions Do Us Apart","Doomed to Fail","Terror in the Sky","Driving Mad in the Matrix",
        "Newest Addition to These Ruins","A Revenge Kill for Maria","Fleeing From Death","Ironing Out Their Lives",
        "No Gadget Will Help You Out","Forever Lost","Putting It to Good Use, Now","Comet Aiming for Extermination",
        "Melted Alive","Falling to the Endless Void","Haunted in the Afterlife","His Last Play"],
    1: ["Wild Wild West","Cold Cash Circuit","The Canyons Rich Core","Road to Gold","Castle of Perfection",
        "Rebuilding the Island","Smiling for the Performance","The New Spirit in the City","Escaping the Doomsday",
        "A Sparkling Shine Across the Sky","The Right Pill for Shadow","Giving the Ruins Another Chance",
        "A Reflective Kindness","Fleeing for Freedom","Cleaning up the Jungle","Shooting Stars in Space",
        "Helping Out the Lost Ones","The Guidance U Need","To Repaint It in Color","A Warm Welcome",
        "Landing Safe With You","My Final Purpose","The Last Gold"],
}

for i in range (0,2) {
    if (i == 0) {
        modeText = " for the first time"
        function tr(j) => check(j) && gmode != 6
        function t(j,l) => format("{0} - {1} Side",stages[0][j],sides[l])
        function d(j,l) => format("Complete the {0} Side of {1} as fast as possible",sides[l],stages[0][j])
        function standsu(j,l) => check(j) && side == l && gmode != 6
    }
    else if (i == 1) {
        modeText = " in Expert Mode"
        function tr(j) => check(j) && gmode == 6
        function t(j,l) => format("{0} - Expert Mode",stages[0][j])
        function d(j,l) => format("Complete {0}{1} as fast as possible",stages[0][j],modeText)
        function standsu(j,l) => check(j) && gmode == 6
    }
    if (i == 2) {
        modeText = ""
        function tr(j) {
            cur = rankCalc(j)
            return stage == stages[1][j] && prev(sum(cur)) > 0 && measured(sum(array_map(cur, y=>~y))/0xff == length(cur))
        }
        stageText = "Get all A Ranks and Keys in"
    }
    else stageText = "Complete"
    for j in range (0, length(stages[0])-1) {
        if (i == 0) cht = format("{0}",stages[0][j])
        else cht = titles[i-1][j]
        if (i == 2 && j == 22) stageText = "Get all Keys in"
        achievement(
            title = cht, points = 5,
            description = format("{0} {1}{2}",stageText,stages[0][j],modeText),
            trigger = tr(j)
        )
        if (i == 0 && j == length(stages[0])-2) {
            for l in range(0,length(endings[0])*2-1) {
                endCalc = bit(l%8,0x00579129-l/8)
                achievement(
                    title = format("{0}",endings[2][l]), points = 10, type = "progression",
                    description = format("Complete the {0} - {1} Ending",endings[0][l/2],endings[1][l%2]),
                    trigger = gmode == 0x01 && prev(endCalc) == 0 && endCalc == 1
                )
            }
        }
        if (i == 0 && j == length(stages[0])-1) {
            last = bit2(0x00579128)
            achievement(
                title = format("Saving the World at a Cost"), points = 25, type = "progression",
                description = format("Complete the Final Story"),
                trigger = gmode == 0x01 && prev(last) == 0 && last == 1
            )
        }
        for l in range (0,2) {
            if ((i == 0 && j < 22 && stages[2][j] != l)
            ||  (i < 2 && j == 22 && l == 0) || (i == 1 && l == 0)) {
                if (i == 0 && j == 22) {
                    sts = check(j) && gmode != 6
                    ttl = format("{0}",stages[0][j])
                    des = format("Complete {0} as fast as possible",stages[0][j])
                    //log = check(j) && gmode != 6
                }
                else {
                    sts = standsu(j,l)
                    ttl = t(j,l)
                    des = d(j,l)
                    //log = standsu(j,l)
                }
                leaderboard(
                    title = format("{0}  - Fastest Time",ttl),
                    description = des,
                    start = sts,
                    cancel = always_false(),
                    submit = always_true(),
                    value = time, format="FRAMES", lower_is_better=true
                )
                if (i == 0 && j < 22) {
                    scoreTime = dword_be(0x005a809c)
                    score = dword_be(0x0057e818)
                    leaderboard(
                        title = format("{0} - {1} Side - Highest Score",stages[0][j],sides[l]),
                        description = format("Complete the {0} Side of {1} with as many points as possible",sides[l],stages[0][j]),
                        start = stage == stages[1][j] && igmode == 6 && scoreScreen == 0 && side == l && gmode != 6
                             && prev(scoreTime) > 0x205 && scoreTime == 0x205,
                        cancel = always_false(),
                        submit = always_true(),
                        value = score, format="Value", lower_is_better=false
                    )
                }
            }
        }
    }
    if (i == 2)
    for j in range (0,length(boss[0])-1) {
        if (j != length(boss[0])-1) {
            function t(id) => format("{0} in {1}",boss[0][id],boss[1][id])
            function d(id) => format("Defeat {0} in {1} as fast as possible",boss[0][id],boss[1][id])
        }
        else {
            function t(id) => format("{0}",boss[0][id])
            function d(id) => format("Defeat {0} as fast as possible",boss[0][id])
        }
        leaderboard(
            title = format("{0} - Fastest Time",t(j)),
            description = d(j),
            start = boss(j),
            cancel = always_false(),
            submit = boss(j),
            value = time, format="FRAMES", lower_is_better=true
        )
    }
}

bossCalc = rankCalc()
achievement(
    title = "The Deadly Ones", points = 10,
    description = format("Get an A Rank for every Boss"),
    trigger = stage != 0 && stage != ~0 && gmode < 2 && prev(sum(bossCalc)) > 0 && measured(sum(array_map(bossCalc,y=>~y))/0xff == length(bossCalc))
)

for i in range(0,1) {
    cur = collect[i]
    r = sum(cur)
    ir = sum(array_map(cur, y=>~y))
    tp = [["Beyond Good and Evil","Get","A Ranks"],["To Open Ones Heart and Secrets","Collect","Keys"]]
    achievement(
        title = format("{0}",tp[i][0]), points = 25,
        description = format("{0} all {1} {2}",tp[i][1],length(cur),tp[i][2]),
        trigger = stage != 0 && stage != ~0 && gmode < 2 && prev(r) > 0 && measured(ir/0xff == length(cur))
    )
}

function table() {
    Array = []
    for i in range (0,99) {
        type = baseChain(0x007f9f28, [0x00+0x20*i,0x20],dword_be)
        interaction = baseChain(0x007f9f28, [0x0c+0x20*i],dword_be)
        array_push(Array, type == 0x2589000b && prev(interaction) != 0 && interaction == 0)
    }
    return Array
}

function groundMult(i, air, ground) {
    Array = [always_true()]
    logic = [yc > air, igmode != 6 && yc <= ground]
    for index in range (0, i-1) {
        for j in range (0, length(logic)-1) {
            array_push(Array, once(array_pop(Array) && logic[j]))
        }
    }
    return array_pop(Array)
}

dScore = score(4)
nScore = score(-4)
hScore = score()
dprogress = progress()
hprogress = progress(8)
checkpoint = dword_be(0x0057707c)
respawn = float_be(0x00573e60)
xbutton = bit0(0x0056fe0f)
stick = word_be(0x0056fe24)
rings = dword_be(0x005777cc)
lives = dword_be(0x005777c4)
weaponT = dword_be(0x005777b4)
weaponA = dword_be(0x005777c0)
vehicle = float_be(0x005777e8)
gSpeed = float_be(0x0057e784)
start = once(checkpoint == 0 && prev(igmode) == 0x02 && igmode != 0x02)
tallyStart = checkpoint == 0 && prev(igmode) != 0x02 && igmode == 0x02
xc = coords()
yc = coords(4)
zc = coords(8)
behavior = baseChain(0x00577068, [0x00,0x00,0x22C,0x30,0x10], dword_be)
function bossHealth(i=0x0c) => baseChain(0x007f9f28, [i,0x5c],dword_be)

function groundTD(i) => groundMult(i,30.0,5.1)
function groundTA(i) => groundMult(i,200.0,-93.0)

function funcCalc(func, val) {
    return measured(tally_of(func, val, y=>y), when=start) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}

l = 0
m = 1
r = 2

test = [[m, always_true()]]
westopolis = [[l, igmode==3 && stick<255-14 && stick>0+15, igmode==3 && cstick() != 0.0, igmode==3 && cstick(4) != 0.0]]
digitalCircuit = [[m, trigger_when(rings==50)],[r, funcCalc([prev(rings)>rings],2)]]
glyphicCanyon = [[l, prev(lives)>lives],[m, hScore<=500]]
lethalHighway = [[r, funcCalc([igmode == 3 && prev(xbutton) == 0 && xbutton == 1],3)]]
crypticCastle = [[r, funcCalc([__ornext(prev(weaponT)==0 && weaponT>0 || prev(weaponA)<weaponA)],4)]]
prisonIsland = [[l, dprogress>0]]
circusPark = [[l, rings>10]]
centralCity = [[l, weaponA>30],[r, funcCalc([prev(weaponA)<weaponA],2)]]
theDoom = [[l, checkpoint != 0]]
skyTroops = [[l, prev(lives)>lives],[m, nScore+hScore+dScore<5000]]
madMatrix = [[r, funcCalc([prev(weaponA)-weaponA==1],4)]]
deathRuins = [[m, trigger_when(weaponA>=120)]]
theArk = [[l, __ornext(xc < 2125.0 || xc > 2275.0 ||  zc > 7700.0) && prev(vehicle) > vehicle && vehicle == 0.0],
          [r, funcCalc([__ornext(xc < 2125.0 || xc > 2275.0 ||  zc > 7700.0) && prev(vehicle) > vehicle], 3)]]
airFleet = [[l, prev(weaponT)>weaponT]]
ironJungle = [[l, prev(lives)>lives],[m, time/60 <= 90.0]]
spaceGadget = [[l, prev(lives)>lives],[m, nScore+hScore+dScore<2000]]
lostImpact  = [[l, rings-prev(rings)==1]]
gunFortress = [[l, prev(lives)>lives],[m, nScore<=1000]]
blackComet = [[l, weaponA>50],[r, funcCalc([prev(weaponA)<weaponA],1)]]
lavaShelter = [[m, time/60 <= 150.0]]
cosmicFall = [[r, funcCalc([igmode == 3 && prev(xbutton) == 0 && xbutton == 1],5)]]
finalHaunt = [[m, trigger_when(weaponA>=150)]]

bossLH = [[l, weaponT != 0, gSpeed != 1.0]]
bossCC = [[r, funcCalc(table(),4)]]
bossTD = [[r, funcCalc([groundTD(1),groundTD(2),groundTD(3),groundTD(4)],3)]]
bossMM = [[r, funcCalc([prev(behavior) != 0x1e && behavior == 0x1e],2)]]
bossDR = [[l, once(igmode == 3 && prev(bossHealth()) > bossHealth() && never(once(behavior == 0x11))), once(once(behavior == 0x11) && yc < -65.0 && igmode != 6)]]
bossTA = [[r, funcCalc([groundTA(1),groundTA(2),groundTA(3)],2)]]
bossIJ = [[l, igmode == 3 && prev(bossHealth(0x12C)) > bossHealth(0x12C) && gSpeed == 1.0]]

cheevo = [
    ["More like Northpolis",2,"while only holding forward and without using the C-Stick",westopolis],
    ["Causing a Short Circuit",0,"with exactly 50 Rings in hand and without losing your Rings more than twice",digitalCircuit],
    ["Preferring the Dark Side",1,"with less than 500 Hero points and without dying",glyphicCanyon],
    ["Going For a Roadkill",0,"without using the A Button more than 3 times",lethalHighway],
    ["Cryptic Use of Weapons",0,"with no more than 4 weapon pickups",crypticCastle],
    ["My Assistance You Approve",2,"without defeating any G.U.N. associates",prisonIsland],
    ["Clown Show",0,"without ever having more than 10 rings in hand",circusPark],
    ["Survival of the Fittest",0,"without having more than 30 ammunition or picking up more than 2 weapons",centralCity],
    ["Memorizing It All",1,"without activating any checkpoints",theDoom],
    ["No More Sins",1,"with less than 5k combined points and without dying",skyTroops],
    ["Weak Weapons",2,"without using your weapons more than 4 times",madMatrix],
    ["Death To All",0,"with 120 ammunition or more",deathRuins],
    ["A Riding Knight",1,"while only staying on the Dragon and without bonking more than 3 times",theArk],
    ["Fleeing Through the Air",2,"with only a single weapon and never getting rid of it",airFleet],
    ["Skating in the Jungle",2,"in under 1:30 and without dying",ironJungle],
    ["Space Poison",1,"with less than 2k combined points and without dying",spaceGadget],
    ["An Impact on Our Economy",1,"without collecting any rings",lostImpact],
    ["No Afford in Fort",0,"with less than 1k Normal points and without dying",gunFortress],
    ["The Blackout",0,"without having more than 50 ammunition or picking up more than 1 weapon",blackComet],
    ["Burning Soles",2,"in under 2:30 and without dying",lavaShelter],
    ["Not Falling for Your Tricks",2,"without using the A Button more than 5 times",cosmicFall],
    ["Haunted by Greed",2,"with 150 ammunition or more",finalHaunt],
]

cheevo2 = [
    ["Too Easy, Piece of Cake",3,"without slowing down the time or picking up a weapon",bossLH],
    ["Creepy Cracks",3,"without destroying more than 4 trees",bossCC],
    ["Speedy Competition",3,"without falling down more than 3 times",bossTD],
    ["Eggcellent",3,"without being hurt more than twice",bossMM],
    ["Mr Bull's Wild Ride",3,"while only staying on the rail and only attack him once you've been on the rails",bossDR],
    ["Taking A Heavy Blow",3,"without falling down more than twice",bossTA],
    ["Just In Time",3,"while only attacking him when the time is slowed down",bossIJ],
]

cheevos = [[cheevo,stages],[cheevo2,boss]]

for i in range(0,length(cheevos)-1) {
    cur = cheevos[i][0]
    for j in range (0, length(cur)-1) {
        lLogic = always_false()
        mLogic = always_true()
        rLogic = always_true()
        pSide = cur[j][1]
        current = cur[j][3]
        for l in range(0,length(current)-1) {
            logic = current[l]
            for ii in range(0,length(logic)-2) {
                if (logic[0] == 0) lLogic = lLogic || logic[1+ii]
                else if (logic[0] == 1) mLogic = mLogic && logic[1+ii]
                else if (logic[0] == 2) rLogic = rLogic && logic[1+ii]
            }
        }
        if (pSide < 3) {
            path = format("the {0}",sides[cur[j][1]])
            end = side == pSide
        }
        else {
            path = "any"
            end = always_true()
        }
        if (cur == cheevo) {
            ttl = format("{0}",cur[j][0])
            des = format("Complete {0} Ending of {1} {2}",path,stages[0][j],cur[j][2])
            stg = stages[1][j]
        }
        else {
            ttl = format("{0}",cur[j][0])
            des = format("Defeat {0} in {1} {2}",boss[0][j],boss[1][j],cur[j][2])
            stg = boss[2][j]
        }
        achievement(
            title = ttl, points = 10-i*5,
            description = des,
            trigger =  never(stage != stg || igmode == 0x07 || igmode == 0x0a || tallyStart || lLogic)
                    && start && mLogic && trigger_when(end && results)
                    || rLogic
        )
    }
}

stagelookup = {}
bosslookup = {}
typelookup = {}

modelookup = {
    0x00: "Select",
    0x01: "Story",
    0x06: "Expert",
}

for i in range(0, length(stages[0])-1) {
    stagelookup[stages[1][i]] = stages[0][i]
    typelookup[stages[1][i]] = "rushing through"
}

for i in range(0, length(boss[0])-1) {
    if (i < length(boss[0])-1) stagelookup[boss[2][i]] = format("{0} in {1}",boss[0][i],boss[1][i])
    else stagelookup[boss[2][i]] = boss[0][i]
    typelookup[boss[2][i]] = "fighting against"
}

rich_presence_conditional_display(gmode == 4, "Shadow is currently in a duell against another player")
rich_presence_conditional_display(gmode == 7, "Shadow is currently checking out the library")

rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && stage == ~0,
    "Shadow is on his way to the next stage | {0} Mode | {1}/{2} A Ranks | {3}/{4} Keys",
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Value",
    sum(array_map(collect[0], y=>~y/0xff)), "VALUE"), length(collect[0]),
    rich_presence_value("Value", sum(array_map(collect[1], y=>~y/0xff)), "VALUE"), length(collect[1]))

rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && __ornext(any_of(stages[1], y=>stage == y) || any_of(boss[2], y=>stage == y)),
    "Shadow is currently {0} {1} | {2} Mode | Time: {3} | Score: {4} | {5}/{6} A Ranks | {7}/{8} Keys",
    rich_presence_lookup("type", stage, typelookup), rich_presence_lookup("stage", stage, stagelookup),
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Frames", time, "FRAMES"),
    rich_presence_value("Value", score(-4)+score()+score(4), "VALUE"), rich_presence_value("Value",
    sum(array_map(collect[0], y=>~y/0xff)), "VALUE"), length(collect[0]),
    rich_presence_value("Value", sum(array_map(collect[1], y=>~y/0xff)), "VALUE"), length(collect[1]))
    
rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && all_of(stages[1], y=>stage != y) && all_of(boss[2], y=>stage != y),
    "Shadow is currently viewing a cutscene | {0} Mode | {1}/{2} A Ranks | {3}/{4} Keys",
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Value",
    sum(array_map(collect[0], y=>~y/0xff)), "VALUE"), length(collect[0]),
    rich_presence_value("Value", sum(array_map(collect[1], y=>~y/0xff)), "VALUE"), length(collect[1]))

rich_presence_display("Shadow is currently taking a breather in the main menu\n//RP by Darky")