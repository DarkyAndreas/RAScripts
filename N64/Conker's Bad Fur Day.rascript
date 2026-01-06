// Conker's Bad Fur Day
// #ID = 10164

function progression(base) {
    log = []
    cutsceneID = base[1]
    for r in regions {
        st = byte(state[r])
        ct = byte(cutscene[r])
        array_push(log, id == identifier[r] && bit6(cheats[r]) == 0 && bit7(cheats[r]) == 0 && byte(mode[r]) == 0
                     && byte(map[r]) == base[0] && prev(ct) == cutsceneID && prev(st) == 1
                     && __ornext(ct != cutsceneID || st == 0))
    }
    return log
}
function hpChallenge(base) {
    function b(i,j) {
        l = bit(i%8,j+i/8)
        return prev(j) == j && prev(l) == 0 && l == 1
    } 
    log = []
    mapID = base[0]
    cutsceneID1 = base[1]
    cutsceneID2 = base[2]
    for r in regions {
        st = byte(state[r])
        ct = byte(cutscene[r])
        hp = byte(stats[r])
        if (mapID == 0x27) start = b(cutsceneID1,tbyte(tempflags[r]))
        else start = once(ct == cutsceneID2 && st == 1) && st == 0
        if (mapID == 0x26) end = b(cutsceneID2,tbyte(bitflags[r]))
        else end = prev(ct) == cutsceneID1 && prev(st) == 1 && __ornext(ct != cutsceneID1 || st == 0)
        array_push(log, unless(id != identifier[r]) && never(byte(map[r]) != base[0] || prev(hp) > hp
                     || bit6(cheats[r]) == 1 || bit7(cheats[r]) == 1)
                     && once(start) && trigger_when(end))
    }
    return log
}
function progCheck(base) {
    log = []
    cutsceneID = base[1]
    bf = base[2]
    for r in regions {
        st = byte(state[r])
        ct = byte(cutscene[r])
        bt = bit(bf%8,tbyte(bitflags[r])+bf/8)
        array_push(log, id == identifier[r] && bit6(cheats[r]) == 0 && bit7(cheats[r]) == 0 && byte(mode[r]) == 0
                     && bt == 0 && byte(map[r]) == base[0] && __ornext(prev(ct) != cutsceneID || prev(st) == 0)
                     && ct == cutsceneID && st == 1)
    }
    return log
}
function tailCheck(base) {
    log = []
    xPos = base[1]
    for r in regions {
        cl = byte(lives[r])
        array_push(log, id == identifier[r] && byte(map[r]) == base[0]
                     && float(coordinates[r]) >= xPos && prev(cl) < cl)
    }
    return log
}
function money(base) {
    log = []
    dm = base[1]
    for r in regions {
        cm = dword(stats[r]+2)
        array_push(log, id == identifier[r] && bit6(cheats[r]) == 0 && bit7(cheats[r]) == 0 && byte(mode[r]) == base[0]
                     && prev(byte(map[r])) != 0x1d && prev(cm) < dm && cm == dm)
    }
    return log
}
function numChallenge(base) {
    log = []
    mapID = base[0]
    cutsceneID1 = base[1]
    cutsceneID2 = base[2]
    val = base[3]
    animID = base[4]
    for r in regions {
        st = byte(state[r])
        ct = byte(cutscene[r])
        an = word(anim[r])
        array_push(log, unless(id != identifier[r]) && never(byte(map[r]) != base[0]
                     || tally(val,all_of(animID,y=>prev(an) != y)
                     && __ornext(any_of(animID,y=>an == y)))
                     || bit6(cheats[r]) == 1 || bit7(cheats[r]) == 1)
                     && once(once(ct == cutsceneID2 && st == 1) && st == 0)
                     && trigger_when(prev(ct) == cutsceneID1 && prev(st) == 1
                     && __ornext(ct != cutsceneID1 || st == 0)))
    }
    return log
}

regions = ["EU","US"]
modu = ["Story","Chapter"]
prog = [[0x29,0x09],[0x0c,0x02],[0x10,0x07,0x02],[0x2c,0x03],[0x35,0x06,0x00],[0x0b,0x05],
        [0x0a,0x05],[0x31,0x04],[0x14,0x15,0x0d],[0x06,0x1e],[0x41,0x05],[0x3c,0x0c],
        [0x04,0x02],[0x23,0x17,0x09],[0x1d,0x07]]
prch = [[210,0x37,0x01],[32,0x02,0x01]]
hpch = [[0x27,0x02,127],[0x1b,0x02,0x01],[0x26,136,0x01],[0x23,0x05,0x03],[0x36,0x04,0x03]]
tails = [[0x0c,4500.0,"Barn Boys"],[0x37,2500.0,"Uga Buga"]]
numb = [[0x0a,0x04,0x02,2,[0x2f]],[0x36,0x04,0x03,8,[0x20e,0x20f]]]

titles = {
    "prog": ["Pan Handling","Animal Control","Hasta la Vista, Baby","Down Here, We All Float",
             "Bowel Movement","Get Your Arse in Gear!","Great Balls of Fire","Dumb As Rocks",
             "A Reptile Dysfunction","B-Bucks","What's the Bloody Point?","Nice Going, Bat-Ass!",
             "Rock n' Load","Terror Teddy","Long Live the King"],
    "boss": ["Buff You, Asshole!","Prince Charmin","T-Wrecked","Experi-Mental Breakdown"],
    "prch": ["Prolonging the Inevitable","I'll Be Back..."],
    "hpch": ["Sting Operation","Tough Nut to Crack","Seeing Red","The Runt of Red October",
             "I Know Conk-Fu..."],
    "tail": ["A Squirrel Has Ten Lives","Buga's Bushy Secret"],
    "mone": ["Cash Prizes","All About the Benjamins"],
    "numb": ["Super Soaker","Believe the Unbelievable"]
} 
descriptions = {
    "prog": ["Show the Gargoyle the back of your frying pan in \"Gargoyle\"",
             "Help Jack with his rodent problem in \"Marvin\"",
             "Eliminate Haybot in \"Haybot Wars\"",
             "Take the confidence pills in \"Sewage Sucks\"",
             "Flush the Great Mighty Poo in \"Sweet Melody\"",
             "Help the lady cogs exact their revenge in \"Cogs' Revenge\"",
             "Defeat the big-bollocked boiler in \"Brass Monkey\"",
             "Have Berri fail to recognize Conker in his costume in \"Rock Solid\"",
             "Let Buga's \"biggest\" secret be known in \"Buga the Knut\"",
             "Make another contribution to the Bee community in \"Wasps' Revenge\"",
             "Replace your frying pan with something better in \"Mr. Death\"",
             "Finish feeding your ancestor in \"Count Batula\"",
             "Fulfill your patriotic duty in \"TNT\"",
             "Defeat Poppet and Reagan in \"The Experiment\"",
             "Drink a whisky at The Cock and Plucker alehouse at last call"],
    "prch": ["Talk to the guards at the entrance of Uga Buga without having met Gregg yet",
             "Arrive at the cavemen's home without ever having entered the barn before"],
    "hpch": ["Complete the wasp turret section in \"Wasps' Revenge\"",
             "Survive your first encounter with the Tediz in \"Sole Survivor\"",
             "Complete the turret section in \"Casualty Department\"",
             "Destroy all of the submarines in \"Little Girl\"",
             "Complete \"Enter the Vertex\""],
    "numb": ["Put out the Fire Imps in the boiler room in \"Pisstastic\" without getting drunk more than once",
             "Complete \"Enter the Vertex\" without jumping more than 8 times"]
}
identifier = {
    "EU": 0x74d0,
    "US": 0x71e0
}
cheats = {
    "EU": 0x0ea132,
    "US": 0x0e9d02
}
mode = {
    "EU": 0x0d3263,
    "US": 0x0d2e43
}
map = {
    "EU": 0x0bee10,
    "US": 0x0be9f0
}
cutscene = {
    "EU": 0x0c3a0b,
    "US": 0x0c35eb
}
state = {
    "EU": 0x0c3a09,
    "US": 0x0c35e9
}
stats = {
    "EU": 0x0d2566,
    "US": 0x0d2146
}
bitflags = {
    "EU": 0x0d326c,
    "US": 0x0d2e4c
}
tempflags = {
    "EU": 0x0d252c,
    "US": 0x0d210c
}
lives = {
    "EU": 0x0dc8e6,
    "US": 0x0dc4b6
}
coordinates = {
    "EU": 0x0cc704,
    "US": 0x0cc2e4
}
anim = {
    "EU": 0x0cc776,
    "US": 0x0cc356
}

val = 0
id = word(0x04)

for i in range(0,length(prog)-1) {
    c = prog[i]
    if (i == length(prog)-1) tp = "win_condition"
    else tp = "progression"
    achievement(
        title = titles["prog"][i], points = 5, type = tp,
        description = descriptions["prog"][i],
        trigger = any_of(progression(c),y=>y)
    )
    if (length(prog[i]) == 3) {
        achievement(
            title = titles["boss"][val], points = 10,
            description = format("{0} without being harmed",descriptions["prog"][i]),
            trigger = any_of(hpChallenge(c),y=>y)
        )
        val = val+1
    }
}

for i in range(0,length(hpch)-1) {
    c = hpch[i]
    achievement(
        title = titles["hpch"][i], points = 10+i/4*15,
        description = format("{0} without being harmed",descriptions["hpch"][i]),
        trigger = any_of(hpChallenge(c),y=>y)
    )
}

for i in range(0,length(numb)-1) {
    c = numb[i]
    achievement(
        title = titles["numb"][i], points = 10+i*15,
        description = descriptions["numb"][i],
        trigger = any_of(numChallenge(c),y=>y)
    )
}

for i in range(0,1) {
    p = 5+5*i
    achievement(
        title = titles["prch"][i], points = p, type = "missable",
        description = descriptions["prch"][i],
        trigger = any_of(progCheck(prch[i]),y=>y)
    )
    cr = tails[i]
    achievement(
        title = titles["tail"][i], points = 5,
        description = format("Collect a special tail worth {0} lives in \"{1}\"",10-5*i,cr[2]),
        trigger = any_of(tailCheck(cr),y=>y)
    )
    mn = 2310+400*i
    if (i == 0) tp = "missable"
    else tp = ""
    achievement(
        title = titles["mone"][i], points = p, type = tp,
        description = format("Earn ${0},{1} in {2} Mode",mn/1000,mn%1000,modu[i]),
        trigger = any_of(money([i,mn]),y=>y)
    )
}