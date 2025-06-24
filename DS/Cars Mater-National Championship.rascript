// Cars: Mater-National Championship
// #ID = 17349

function baseChain(first,offsets,lastType, type=tbyte) {
    Array = [type(first)]
    if (length(offsets) > 1) {
        for i in range(0, length(offsets)-2) {
            Array2 = []
            array_push(Array2, type(array_pop(Array) + offsets[i]))
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}
function stars() {
    Array = [[],[]]
    for i in range(0,16) {
        rc = byte(savePointer()+rank+i)
        for j in range(1,3) {
            for l in range(0,1) {
                if (j == 1) array_push(Array[0], once(rc == j))
                else array_push(Array[0], once(rc <= j && rc > 0))
            }
        }
        array_push(Array[1], rc != prev(rc))
    }
    return Array
}
function col(val,tp) {
    Array = []
    for i in range(0,val) {
        if (tp == "rank") array_push(Array,byte(savePointer()+rank+i))
        else if (tp == "gold") array_push(Array,bit(i+1, savePointer()+0x003c2c18))
        else if (tp == "challenge") {
            if (i > 24) array_push(Array,bit(i%8, savePointer()+0x003c2c27))
            if (i > 26) array_push(Array,bit(i%8, savePointer()+0x003c2c23))
            else array_push(Array,bit(i, savePointer()+0x003c2c1c))
        }
    }
    return Array
}
function lapComb() {
    Array = [[],[]]
    for i in range(0,1) {
        for j in range(0,2) {
            array_push(Array[1], measured(always_true(),when=code(codes[i])))
            for l in range(0,2) {
                if (j != l) {
                    array_push(Array[1], measured(always_true(),when=lapData(j*4+0x50,i*4) >= lapData(l*4+0x50,i*4)))
                }
            }
            array_push(Array[1], measured(lapData(j*4+0x50,i*4)%0.7 + (lapData(j*4+0x50,i*4)/4096.0)*60))
            array_push(Array[0], all_of(Array[1], y=>y))
            for l in range(0, length(Array[1])) array_pop(Array[1])
        }
    }
    return Array[0]
}
function raceComb() {
    Array = []
    for i in range(0,1) {
        array_push(Array, measured(raceTime(i*4) / 8.0,when=code(codes[i])))
    }
    return Array
}
function boostCalc(lang=0,val=5) {
    Array = []
    laps = never(prev(lapData(0x20,lang)) == 0 && lapData(0x20,lang) != 0)
    for i in range(1,val) {
        array_push(Array, deduct(lapCount(lang) > 1 && prev(lapCount(lang)) < lapCount(lang) && laps))
    }
    array_push(Array, repeated(val,prev(boost(lang)) == 0 && boost(lang) == 1 && laps))
    return Array
}
function positionPercent(rt=0,lang=0) {
    Array = [[],[]]
    for i in range(0,3) {
        eleminated = lapData(0x4c,lang,byte,i*4)
        rivalPercent = lapData(0x48,lang,dword,i*4)
        rivalLap = lapData(0x3C,lang,dword,i*4)
        rivalPos = lapData(0x44,lang,dword,i*4)
        play1Percent = lapData(0x48,lang)
        array_push(Array[0], never(play1Percent%0x555 > 0x70 && rivalPercent%0x555 < 0x163 && eleminated == 1))
        array_push(Array[1], measured(rivalPercent%0x555 == 0x163, when=rivalPos == 4 - rivalLap, format="percent") && trigger_when(always_false()))
    }
    return Array[rt]
}
function funcStart(lang=0,start=0) {
    if (start == 0) st = code(codes[lang/4])
    else st = always_true()
    return st && once(prev(menu(lang,-4)) == 1 && menu(lang,4) != 7)
}
function funcCalc(func,val,lang=0,fmt="raw") {
    return measured(tally_of(func, val, y=>y), when=funcStart(lang), format=fmt) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}
function funcCalcSpec(func,val,lang=0) {
    func2 = func
    array_push(func2, once(always_true()))
    return unless(!code(codes[lang/4])) && measured(tally_of(func, val, y=>y), when=funcStart(lang,1)) && trigger_when(always_false())
           || unless(!code(codes[lang/4])) && unless(tally_of(func2, 1, y=>y)) && never(menu(lang) == 1) && always_false()
}
function funcCalcNev(func,val,lang=0,fmt="raw") => measured(tally_of(func, val, y=>y), when=funcStart(lang), format=fmt) && trigger_when(always_false())
function code(i) => __ornext(any_of(i, y=>ascii_string_equals(0x3ffe0c, y)))
function pointer(i=0) => 0x003c2bac+i
function savePointer() => savefile*0x88
function track(i=0) => dword(0x003c2e80+i)
function car(i=0,j=1) => byte(0x003c2e94+i*0x10+j)
function lapData(i=0,lang=0,tp=dword,j=0) => baseChain(pointer(lang),[0x84+j,0x6a8,i],tp)
function lapCount(lang=0) => lapData(0x3C,lang)
function raceTime(lang=0) => baseChain(pointer(lang),[0x84,0x6a8,0x18,0x1c],dword)
function carData(i=0,lang=0) => baseChain(pointer(lang),[0x84,i],dword)
function racePosition(lang=0) => baseChain(pointer(lang),[0x84,0x6a8,0x18,0x00,0x3f4],dword)
function boost(lang=0) => baseChain(pointer(lang),[0x84,0x7E0],byte)
function controlls(i=0,lang=0) => bit(i,tbyte(0x003c2b70+lang)+0x28)
function tokenState(lang=0) => baseChain(pointer(lang),[0x230,0x00,0x38],dword)
function menu(i=0,lang=0) => dword(0x003c2bd4+lang+i)
function flags(i) => sum_of(i, y=>bitcount(savePointer()+0x003c2c18+y))
function menuCall(val,funcA=always_true(),funcB=always_true()) => (code(codes[0]) && menu() == val &&  funcA)
                                                               || (code(codes[1]) && menu(US) == val && funcB)

modelookupM = {}
modelookupS = {}
tracklookup = {}
charslookup = {}

V = [0,0,0]
US = 4
rank = 0x003c2c04
gold = 0x003c2c18
chal = 0x003c2c1c
savefile = dword(0x003c2f34)
mode = dword(0x003c2e7c)
raceID = dword(0x003c2e78)
starCalc = measured(tally_of(stars()[0], 102, y=>y)) && never(any_of(stars()[1],y=>y) || savefile == 0xffffffff || savefile != prev(savefile))

codes = [["YCMD","YCMI","YCMS","YCMX","YCMP"],["YCME"]]
cars = ["Lightning McQueen","Sheriff","Luigi","Flo","Mater","Sarge",
        "Fillmore","Lizzie","Doc Hudson","Ramone","Otto","Koji",
        "Emma","Giovanni","Gudmund"]
tracks = [["Main Street","Willys Butte","Sarge's Boot Camp","Unused Track","Lightning's Stadium"],
          ["Ornament Airport","Underground Run","Rustbucket Stadium","Frank's Field","Windy Valley"],
          ["Tailfin Pass","Underground Mines","Ghost Town","Wheel Well Motel","Streamside Road"]]
modes = [["Story","Challenge","Challenge","Challenge","Story"],
        ["Normal Race","Elimination","Trophy Hunt","Beat the Clock","Rival Race"]]
titles = [["Achievement 1","Achievement 2","Achievement 3","Achievement 4","Achievement X"],
          ["Achievement 5","Achievement 6","Achievement 7","Achievement 8","Achievement Y"],
          ["Achievement 9","Achievement 10","Achievement 11","Achievement 12","Achievement Z"],
          ["Achievement 13","Achievement 14","Achievement 15","Achievement 16"],
          ["Challenge 1","Challenge 2","Challenge 3","Challenge 4",
           "Challenge 5","Challenge 6","Challenge 7","Challenge 8",
           "Challenge 9","Challenge 10","Challenge 11","Challenge 12",
           "Challenge 13","Challenge 14","Challenge 15","Challenge 16",
           "Challenge 17"],
          ["Token 1","Token 2","Token 3","Token 4",
           "Token 5","Token 6","Token 7","Token 8",
           "Token 9","Token 10","Token 11","Token 12",
           "Token 13","Token 14","Token 15","Token 16",
           "Token 17"]]
trackOrder = [[0,0],[1,0],[0,1],[0,1,0x0a],
              [2,0],[0,2],[1,1,0x0e],
              [2,1],[1,2],[1,2,0x0c],
              [2,2],[1,3],[2,3,0x0b],
              [2,3],[2,4],[1,4],[0,4,0x0d]]
              
for i in range(0,4) {
    rv = []
    for j in range(0,length(trackOrder)-1) {
        to = trackOrder[j]
        if (length(to) == 3) array_push(rv, to)
        tracklookup[to[0]*10 + to[1]] = tracks[to[0]][to[1]]
    }
    areas = [3,2,2,2,3]
    cib = bit(i,savePointer()+0x003c2c15)
    if (i == 2) v = 4
    else v = 6
    V[0] = V[0]+areas[i]
    V[1] = V[1]+v
    cr = rv[i]
    achievement(
        title = titles[0][i], points = 5+i/4*5, type = "progression",
        description = format("In Story Mode, win against {0} on {1}",cars[cr[2]],tracks[cr[0]][cr[1]]),
        trigger = prev(savefile) == savefile && prev(cib) == 0 && cib == 1
    )
    achievement(
        title = titles[1][i], points = 5+i/4*5,
        description = format("In Story Mode, earn all stars and gold tokens up to {0}",cars[cr[2]]),
        trigger =  prev(savefile) == savefile
                && __ornext(any_of(col(V[0],"rank"), y=>prev(y) != 1 || any_of(col(V[0],"gold"), y=>prev(y) != 1)))
                && all_of(col(V[0],"rank"), y=>y == 1 && all_of(col(V[0]-i-1,"gold"), y=>y == 1))
    )
    achievement(
        title = titles[2][i], points = 5+i/4*5,
        description = format("In Challenge Mode, complete all challenges up to {0}",tracks[cr[0]][cr[1]]),
        trigger =  prev(savefile) == savefile
                && __ornext(any_of(col(V[1],"challenge"), y=>prev(y) != 1)) && all_of(col(V[1],"challenge"), y=>y == 1)
    )
    if (i == 4) {
        achievement(
            title = titles[3][0], points = 5,
            description = "In Story Mode, earn all 102 stars",
            trigger =  prev(savefile) == savefile
                    && __ornext(any_of(col(V[0],"rank"), y=>prev(y) != 1)) && all_of(col(V[0],"rank"), y=>y == 1)
                    || starCalc && savefile == 4
        )
        achievement(
            title = titles[3][1], points = 5,
            description = "In Story Mode, earn all 12 gold tokens",
            trigger =  prev(savefile) == savefile
                    && prev(flags([0,1])) == 11
                    && measured(flags([0,1]) == 12)
        )
    }
    m = i+i/4
    modelookupM[m] = modes[0][i]
    modelookupS[m] = modes[1][i]
}

achievement(
    title = titles[3][3], points = 1,
    description = "Unlock new paintjobs by using 2 secret codes",
    trigger =  prev(savefile) == savefile
            && prev(bitcount(savePointer()+0x003c2c16)) == 1
            && bitcount(savePointer()+0x003c2c16) == 2
)

lE = 1
mE = 2
rE = 3
lU = 4
mU = 5
rU = 6

mainStreet = [[mE,lapCount() < 2],[mU,lapCount(US) < 2]]
ornamentAirport = [[rE,funcCalcSpec(boostCalc(),5)],
                   [rU,funcCalcSpec(boostCalc(US),5,US)]]
willysButte = [[lE,any_of(positionPercent(),y=>y)],[rE,any_of(positionPercent(1),y=>y)],
               [lU,any_of(positionPercent(0,US),y=>y)],[rU,any_of(positionPercent(1,US),y=>y)]]
otto = [[rE,funcCalc([prev(carData(0x214)) == 0 && carData(0x214) != 0],3)],
        [rU,funcCalc([prev(carData(0x214,US)) == 0 && carData(0x214,US) != 0],3)]]
tailfinPass = [[lE,repeated(41,prev(raceTime()) < raceTime()
            &&  prev(controlls()) == controlls() && controlls() == 1
            &&  never(prev(raceTime()) < raceTime() && controlls() == 0))],
               [lU,repeated(41,prev(raceTime(US)) < raceTime(US)
            &&  prev(controlls(0,US)) == controlls(0,US) && controlls(0,US) == 1
            &&  never(prev(raceTime(US)) < raceTime(US) && controlls(0,US) == 0))]]
sargesBootCamp = [[rE,funcCalcSpec(boostCalc(0,4),4)],
                  [rU,funcCalcSpec(boostCalc(US,4),4,US)]]
gudmund = [[lE,once(prev(raceTime()) < raceTime() && lapCount() > 0 && controlls(8) == 0
        &&  never(prev(raceTime()) < raceTime() && lapCount() > 0 && controlls(8) == 1))],
           [lU,once(prev(raceTime(US)) < raceTime(US) && lapCount(US) > 0 && controlls(8,US) == 0
        &&  never(prev(raceTime(US)) < raceTime(US) && lapCount(US) > 0 && controlls(8,US) == 1))]]
undergroundMines = [[lE,lapData(0x28) < 0x8000],[lU,lapData(0x28,US) < 0x8000]]
rustbucketStadium = [[mE,prev(lapData(0x4c,0,byte,0x10)) == 1],[mU,prev(lapData(0x4c,US,byte,0x10)) == 1]]
emma = [[lE,carData(0x7E8) != 0, carData(0x4AC) != 0],[lU,carData(0x7E8,US) != 0, carData(0x4AC,US) != 0]]
ghostTown = [[lE,carData(0x800) < 13 && lapCount() == 2],[mE,lapCount() < 3],
             [lU,carData(0x800,US) < 13 && lapCount(US) == 2],[mE,lapCount(US) < 3]]
franksField = [[lE,repeated(101,prev(raceTime()) < raceTime() && carData(0x428) == 0
            &&  never(prev(raceTime()) < raceTime() && carData(0x428) != 0))],
               [lU,repeated(101,prev(raceTime(US)) < raceTime(US) && carData(0x428,US) == 0
            &&  never(prev(raceTime(US)) < raceTime(US) && carData(0x428,US) != 0))]]
koji = [[rE,funcCalc([prev(carData(0x214)) == 0 && carData(0x214) != 0],5)],
        [rU,funcCalc([prev(carData(0x214,US)) == 0 && carData(0x214,US) != 0],5)]]
wheelWellMotel = [[mE,repeated(3276, prev(lapData(0x48)) < lapData(0x48) && lapData(0x3C) > 0 && lapData(0x44) == 2)],
                  [rE,funcCalcNev([prev(lapData(0x48)) < lapData(0x48) && lapData(0x3C) > 0
               &&  lapData(0x44) == 2],4096,fmt="percent")],
                  [mU,repeated(3276, prev(lapData(0x48,US)) < lapData(0x48,US) && lapData(0x3C,US) > 0 && lapData(0x44,US) == 2)],
                  [rU,funcCalcNev([prev(lapData(0x48,US)) < lapData(0x48,US) && lapData(0x3C,US) > 0
               &&  lapData(0x44,US) == 2],4096,US,fmt="percent")]]
streamsideRoad = [[lE,lapData(0x28) < 0x2000],[lU,lapData(0x28,US) < 0x2000]]
windyValley = [[lE,lapData(0x28) < 0x1000],[lU,lapData(0x28,US) < 0x1000]]
giovanni = [[lE,prev(carData(0x214)) == 0 && carData(0x214) != 0,carData(0x7E8) != 0,
             repeated(41,prev(lapData(0x48)) < lapData(0x48) && lapData(0x3C) > 0
         &&  lapData(0x44) > 1 && never(prev(lapData(0x3C)) < lapData(0x3C)))],
            [rE,funcCalcNev([prev(lapData(0x48)) < lapData(0x48) && lapData(0x3C) > 0
         &&  lapData(0x44) > 1 && never(prev(lapData(0x3C)) < lapData(0x3C))],555,fmt="percent")],
            [lU,prev(carData(0x214,US)) == 0 && carData(0x214,US) != 0,carData(0x7E8,US) != 0,
             repeated(41,prev(lapData(0x48,US)) < lapData(0x48) && lapData(0x3C,US) > 0
         &&  lapData(0x44,US) > 1 && never(prev(lapData(0x3C,US)) < lapData(0x3C,US)))],
            [rU,funcCalcNev([prev(lapData(0x48,US)) < lapData(0x48) && lapData(0x3C,US) > 0
         &&  lapData(0x44,US) > 1 && never(prev(lapData(0x3C,US)) < lapData(0x3C,US))],555,US,fmt="percent")]]

cheevos = [
    [0x00,2,"in a single lap",mainStreet],
    [0x01,0,"while using at least 5 boosts per lap",ornamentAirport],
    [0x04,2,"without entering the first corner before all active CPU racers are past the first U-turn",willysButte],
    [0x0a,4,"without going into the offroad more than 3 times",otto],
    [0x07,0,"without holding down the accelarator button for more than 2 seconds",tailfinPass],
    [0x05,3,"while using at least 4 boosts per lap",sargesBootCamp],
    [0x0e,5,"while only looking back",gudmund],
    [0x00,2,"without ever having less than 8 seconds left",undergroundMines],
    [0x04,1,"while letting the worst car become 2nd",rustbucketStadium],
    [0x0c,5,"without drifting or falling off",emma],
    [0x08,1,"in two laps while collecting at least 13 trophys in the first lap",ghostTown],
    [0x02,0,"without staying on the ground for more than 5 seconds",franksField],
    [0x0b,5,"without going into the offroad more than 5 times",koji],
    [0x09,2,"while saying at least 80% in second place",wheelWellMotel],
    [0x03,2,"without ever having less than 2 seconds left",streamsideRoad],
    [0x06,3,"without ever having 0 seconds left",windyValley],
    [0x0d,5,"without drifting, going into the offroad or being second place or lower for over 3% of a lap",giovanni],
]

/*

Franks Field nu hurt Coin collect
Ghost Town no hurt Coin collect
Sarge's Boot Camp no hurt Coin collect
Windy Valley no hurt Coin collect
Willys Butte Gold Token without hitting cactus
Rustbucket Shortcut all laps no boost
Wheel Well Motel Shortcut no boost

Otto perform a jump that last 5 seconds
Koji Complete full lap while only drifting
Emma perform an uninterupted donut for 3 loops and still get 1st place on the same lap
Giovanni keep red bar speed for at least 10 seconds straight
Gudmund complete a Trophy Hunt race while only looking backwards
*/

function test(l,m,r) {
    Array = []
    for i in range(0,1) {
        set = i*4
        array_push(Array, (unless(!code(codes[i])) && never(menu(set,-4) == 1 || menu(set,-4) == 8 || any_of(l[i],y=>y))
                && once(prev(menu(set,-4)) == 1 && menu(set,4) != 7) && all_of(m[i],y=>y)
                && trigger_when(carData(0x14,set) == 2 && racePosition() == 1)
                || any_of(r[i],y=>y)))
    }
    return Array
}

for i in range(0,length(trackOrder)-1) {
    dc = ["normal","rival"]
    cr = trackOrder[i]
    cur = cheevos[i]
    cha = cur[1]
    lLogic = [[],[]]
    mLogic = [[],[]]
    rLogic = [[],[]]
    for j in range(0,length(cur[3])-1) {
        logic = cur[3][j]
        for l in range(1,length(logic)-1) {
            for ii in range(1,6) {
                if (logic[0] == 1 || logic[0] == 4) {
                    array_push(lLogic[ii/4],logic[l])
                }
                else {
                    if (logic[0] == 2 || logic[0] == 5) array_push(mLogic[ii/4],logic[l])
                    else array_push(rLogic[ii/4],logic[l])
                }
            }
        }
    }
    if (cha == 0 || cha == 5) des = format("{0} race",dc[cha/5])
    else des = format("'{0}' challenge",modes[1][cha])
    achievement(
        title = format("{0}",titles[4][i]), points = 10,
        description = format("As {0} on {1} complete the {2} {3}",cars[cur[0]],tracks[cr[0]][cr[1]],des,cur[2]),
        trigger =  never(track() == cr[0] || track(4) != cr[1] || car() != cur[0] || mode != cha)
                && (any_of(test(lLogic,mLogic,rLogic),y=>y))
    )
    if (any_of([2,5], y=>i == y))
    achievement(
        title = format("{0}",titles[5][i]), points = 10,
        description = format("Collect the gold token on {0} without hitting any",tracks[cr[0]][cr[1]]),
        trigger =  never(track() == cr[0] || track(4) != cr[1] || mode != 0)
                && (unless(!code(codes[0])) && never(menu(0,-4) == 1 || menu(0,-4) == 8)
                && once(prev(menu(0,-4)) == 1 && menu(0,4) != 7) && once(always_true())
                && prev(tokenState()) == 1 && tokenState() != 1
                || unless(!code(codes[1])) && never(menu(US,-4) == 1 || menu(US,-4) == 8)
                && once(prev(menu(US,-4)) == 1 && menu(US,4) != 7)
                && trigger_when(carData(0x14,US) == 2 && racePosition(US) == 1))
    )
    for j in range(0,2) {
        if (j > 0 && all_of([0x0a,0x0b,0x0c], y=>array_contains(cr, y) == false)) {
            val = V[2]
            lbs = ["elimination","trophy hunt","timed"]
            cs = [2,1,1,3,3,1,2,3,1,3,3,2,1,2,3,1,2,1,3,1,2,1,1,2,2,3,3,1]
            leaderboard(
                title = format("{0} - {1}",tracks[cr[0]][cr[1]],modes[1][cs[val]]),
                description = format("Fastet time on a {1} race of {0} in challenge mode",tracks[cr[0]][cr[1]],lbs[cs[val]-1]),
                start  =  raceID == val && mode != 0 && mode != 5
                       && menuCall(1,menu(0,4) != 7 && carData(0x14) == 2 && racePosition() == 1,
                          menu(US,4) != 7 && carData(0x14,US) == 2 && racePosition(US) == 1),
                cancel =  always_false(),
                submit =  always_true(),
                value  =  max_of(raceComb()),
                format =  "FRAMES"
            )
            V[2] = V[2]+1
        }
        else if (j == 0) {
            for l in range(0,1) {
                lbs = [["Lap","single lap",(lapComb())],["Race","full race",raceComb()]]
                 leaderboard(
                    title = format("{0} - {1} Time - Story Mode",tracks[cr[0]][cr[1]],lbs[l][0]),
                    description = format("Fastet time on a {1} of {0} in story mode",tracks[cr[0]][cr[1]],lbs[l][1]),
                    start  =  raceID == i && __ornext(mode == 0 || mode == 5)
                           && menuCall(1,menu(0,4) != 7 && carData(0x14) == 2 && racePosition() == 1,
                              menu(US,4) != 7 && carData(0x14,US) == 2 && racePosition(US) == 1),
                    cancel =  always_false(),
                    submit =  always_true(),
                    value  =  max_of(lbs[l][2]),
                    format =  "FRAMES"
                )
            }
        }
    }
}

/*Menu to load (32-bit)
none - 0xffffffff
Racing - 0x01
Multiplayer Race? - 0x02
Animation Test - 0x03
Map Test? - 0x04
Car select - 0x05
Multiplayer Room? - 0x06
Main Menu - 0x07
Track select - 0x08
SFX Test - 0x0a
Voiceline Test - 0x0b
Music Test - 0x0c
Name - 0x0d
Unlock Screen - 0x0e
Intro Cutscene - 0x0f
End Cutscene - 0x10
Track select W/LAN - 0x12
Logos - 0x13
Codes - 0x14
Image Cutscenes - 0x15*/

for i in range(0, length(cars)-1) {
    charslookup[i] = cars[i]
}

rich_presence_conditional_display(menuCall(7), "Currently in the Main Menu")

rich_presence_conditional_display(__ornext(mode == 0 || mode == 5) && menuCall(1), "{3} is currently racing against {4}, {5} and {6} on {7} | {0} Mode | {8} | {1}/102 Stars | {2}/12 Gold Tokens",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",starCalc, "VALUE"),
rich_presence_value("Value",flags([0,1]), "VALUE"),rich_presence_lookup("cars", car(), charslookup),
rich_presence_lookup("cars", car(1), charslookup),rich_presence_lookup("cars", car(2), charslookup),
rich_presence_lookup("cars", car(3), charslookup),rich_presence_lookup("tracks", track()*10+track(4), tracklookup),
rich_presence_lookup("subMode", mode, modelookupS))
rich_presence_conditional_display(__ornext(mode == 0 || mode == 5) && menuCall(5), "Currently selecting a car | {0} Mode | {1} Stars | {2}/12 Gold Tokens",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",starCalc, "VALUE"),
rich_presence_value("Value",flags([0,1]), "VALUE"))
rich_presence_conditional_display(__ornext(mode == 0 || mode == 5) && menuCall(8), "Currently selecting a track | {0} Mode | {1}/102 Stars | {2}/12 Gold Tokens",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",starCalc, "VALUE"),
rich_presence_value("Value",flags([0,1]), "VALUE"))

rich_presence_conditional_display(mode != 0 && mode != 5 && menuCall(1), "{2} is currently racing against {3}, {4} and {5} on {6} | {0} Mode | {7} | {1}/28 Challenges",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",flags([4,5,6,7,11,15]), "VALUE"),
rich_presence_lookup("cars", car(), charslookup),rich_presence_lookup("cars", car(1), charslookup),
rich_presence_lookup("cars", car(2), charslookup),rich_presence_lookup("cars", car(3), charslookup),
rich_presence_lookup("tracks", track()*10+track(4), tracklookup),rich_presence_lookup("subMode", mode, modelookupS))
rich_presence_conditional_display(mode != 0 && mode != 5 && menuCall(5), "Currently selecting a car | {0} Mode | {1}/28 Challenges",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",flags([4,5,6,7,11,15]), "VALUE"))
rich_presence_conditional_display(mode != 0 && mode != 5 && menuCall(8), "Currently selecting a track | {0} Mode | {1}/28 Challenges",
rich_presence_lookup("mainMode", mode, modelookupM),rich_presence_value("Value",flags([4,5,6,7,11,15]), "VALUE"))
rich_presence_display(" \n//RP by Darky")



