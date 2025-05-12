// Shadow the Hedgehog
// #ID = 9454

function baseChain(first,offsets,lastType) {
    type = dword
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

collect = [[],[]]
stage = dword(0x009c7e58)
igmode = byte(0x009bb2d8)
scoreScreen = byte(0x0069dd2c)
side = dword(0x009c7e6c)
gmode = byte(0x007d1398)
time = float(0x009c7e44)*60
results = igmode == 6 && prev(scoreScreen) == 1 && scoreScreen == 0
function check(i) => stage == stages[1][i] && results
function boss(i) => stage == boss[2][i] && results
function sum(i) => sum_of(i, y=>y)
function rankCalc(i=0xff) {
    Array = []
    start = 0x009bc058
    function set(mult=i) => 0x54*mult
    if (i != 0xff) {
        for j in range(1,2) {
            for l in range(0,j*2) {
                if (stages[2][i] != l && i < 22 || j == 2) {
                    if (j == 1) offset = 0x05+0x14*l
                    else offset = 0x43+4*l
                    calc = byte(start+offset+set())
                    array_push(Array, calc)
                    array_push(collect[j-1], calc)
                }
            }
        }
    }
    else {
        for j in range(0,length(boss[0])-2) {
            calc = byte(start+set(0x17)+0x19+set(j))
            array_push(Array, calc)
            array_push(collect[0], calc)
        }
    }
    return Array
}

stages = {
    0: ["Westopolis","Digital Circuit","Glyphic Canyon","Lethal Highway","Cryptic Castle","Prison Island","Circus Park",
        "Central City","The Doom","Sky Troops","Mad Matrix","Death Ruins","The Ark","Air Fleet","Iron Jungle","Space Gadget",
        "Lost Impact","Gun Fortress","Black Comet","Lava Shelter","Cosmic Fall","Final Haunt","The Last Way"],
    1: [0x64,0xc8,0xc9,0xca,0x12c,0x12d,0x12e,0x190,0x191,0x192,0x193,0x194,
        0x1f4,0x1f5,0x1f6,0x1f7,0x1f8,0x258,0x259,0x25a,0x25b,0x25c,0x2bc],
    2: [3,1,3,1,3,3,3,1,3,3,3,1,2,3,3,3,0,1,1,1,1,1,3]
}

boss = {
    0: ["Black Bull","Egg Breaker","Heavy Dog","Egg Breaker","Black Bull","Blue Falcon","Egg Breaker","Black Doom","Sonic and Diablon",
        "Egg Dealer","Sonic and Diablon","Egg Dealer","Egg Dealer","Black Doom","Black Doom","Sonic and Diablon","Devil Doom"],
    1: ["Lethal Highway","Cryptic Castle","The Doom","Mad Matrix","Death Ruins","The Ark","Iron Jungle","Gun Fortress","Gun Fortress",
        "Black Comet","Black Comet","Lava Shelter","Cosmic Fall","Cosmic Fall","Final Haunt","Final Haunt"],
    2: [0xd2,0x136,0x19a,0x19b,0x19c,0x1fe,0x1ff,0x262,0x263,0x264,0x265,0x266,0x267,0x268,0x269,0x26a,0x2c6],
}

endings = [["Pure Dark","Dark","Neutral","Hero","Pure Hero"],["Dark","Hero"],
           ["Shrouded in Shadow","The Shadow's Redemption","Chaos Corruption","Dark Triumph",
            "Between the Darkness and Light","The Gray Way","Dark Justice","The Light in the Shadows",
            "Pure Hero's Dilemma","The Brightest Light Casts the Darkest Shadow"]]

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
        ids = 54395
        modeText = " for the first time"
        function tr(j) => check(j)// && gmode != 6
        function t(j,l) => format("{0} - {1} Side",stages[0][j],sides[l])
        function d(j,l) => format("Complete the {0} Side of {1} as fast as possible",sides[l],stages[0][j])
        function standsu(j,l) => check(j) && side == l && gmode != 6
    }
    else if (i == 1) {
        ids = 54468
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
            return stage == stages[1][j] && prev(sum(cur)) > 0 && sum(cur) == 0
        }
        stageText = "Get all A Ranks and Keys in"
    }
    else stageText = "Complete"
    for j in range (0, length(stages[0])-1) {
        if (i == 0) cht = ""
        else if (i == 1) cht = "Worthy Challenge of "
        else if (i == 2) cht = "Perfectionist in "
        if (i == 2 && j == 22) stageText = "Get all Keys in"
        achievement(
            title = format("{0}{1}",cht,stages[0][j]),points = 5,
            description = format("{0} {1}{2}",stageText,stages[0][j],modeText),
            trigger = tr(j)
        )
        if (i == 0 && j == length(stages[0])-2) {
            for l in range(0,length(endings[0])*2-1) {
                endCalc = bit(l%8,0x009bd258+l/8)
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
                title = format("A Dooms Fall"), points = 25, type = "win_condition",
                description = format("Complete the Final Story"),
                trigger = stage == boss[2][length(boss[2])-1] && results//gmode == 0x01 && prev(last) == 0 && last == 1
            )
        }
        for l in range (0,2) {
            if ((i == 0 && j < 22 && stages[2][j] != l)
            ||  (i < 2 && j == 22 && l == 0) || (i == 1 && l == 0)) {
                if (i == 0 && j == 22) {
                    ids = 54466
                    ttl = format("{0}",stages[0][j])
                    des = format("Complete {0} as fast as possible",stages[0][j])
                    sts = check(j) && gmode != 6
                    //log = check(j) && gmode != 6
                }
                else {
                    ttl = t(j,l)
                    des = d(j,l)
                    sts = standsu(j,l)
                    //log = standsu(j,l)
                }
                leaderboard(
                    title = format("{0}",ttl),
                    description = des,
                    start = sts,
                    cancel = always_false(),
                    submit = always_true(),
                    value = time, format="FRAMES", lower_is_better=true, id=ids
                )
                ids = ids+1
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
            title = format("{0}",t(j)),
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
    title = "Perfectionist of the Bosses", points = 10,
    description = format("Get an A Rank for every Boss"),
    trigger = stage != ~0 && gmode != 0xff && prev(sum(bossCalc)) > 0 && sum(bossCalc) == 0
)

for i in range(0,1) {
    cur = collect[i]
    r = sum(cur)
    ir = sum(array_map(cur, y=>~y))
    tp = [["Chaos Ace","Get","A Ranks"],["The Key to Victory","Collect","Keys"]]
    achievement(
        title = format("{0}",tp[i][0]), points = 25,
        description = format("{0} all {1} {2}",tp[i][1],length(cur),tp[i][2]),
        trigger = stage != ~0 && gmode != 0xff && prev(r) > 0 && measured(ir/0xff == length(cur))
    )
}
/*
checkpoint = dword(0x009bf6f0)
xbutton = baseChain(0x009bb290,[0x08,0x38,0x2a4,0x18],bit3)
start = once(checkpoint == 0 && prev(igmode) == 0x02 && igmode != 0x02)
tallyStart = checkpoint == 0 && prev(igmode) != 0x02 && igmode == 0x02

function funcCalc(func, val) {
    return measured(tally_of(func, val, y=>y), when=start) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}

l = 0
m = 1
r = 2

test = [[m, always_true()]]
westopolis = [[l, baseChain(0x009bb290,[0x08,0x38,0x2a4,0x18],bit3)]]
digitalCircuit = [[]]
glyphicCanyon = [[]]
lethalHighway = [[]]
crypticCastle = [[]]
prisonIsland = [[]]
circusPark = [[]]
centralCity = [[]]
theDoom = [[]]
skyTroops = [[]]
madMatrix = [[]]
deathRuins = [[]]
theArk = [[]]
airFleet = [[]]
ironJungle = [[]]
spaceGadget = [[]]
lostImpact  = [[]]
gunFortress = [[]]
blackComet = [[]]
lavaShelter = [[]]
cosmicFall = [[]]
finalHaunt = [[]]

cheevo = [
    ["More like Northpolis",3,"while only holding forward and without using the C-Stick",westopolis],
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




for j in range (0, length(cheevo)-1) {
    lLogic = always_false()
    mLogic = always_true()
    rLogic = always_true()
    pSide = cur[j][1]
    current = cur[j][3]
    for l in range(0,length(cur[j][3])-1) {
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
}
    achievement(
        title = format("{0}",cur[j][0]), points = 10-i*5,
        description = format("Complete {0} Ending of {1} {2}",path,stages[0][j],cur[j][2]),
        trigger =  never(stage != stages[1][j] || igmode == 0x07 || igmode == 0x0a || tallyStart || lLogic)
                && start && rLogic && trigger_when(end && results)
    )
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
    typelookup[stages[1][i]] = "speeding 'n' shooting through"
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
