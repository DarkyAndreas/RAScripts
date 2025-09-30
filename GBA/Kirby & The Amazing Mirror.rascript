// Kirby & The Amazing Mirror
// #ID = 769

mirrorShards = []
maps = []
paint = []
note = []
chests = []
doors = []
rooms = []
bitflags = []

sub = 0x042d10
ingame = dword(0x003a20)
stage = word(0x028fe6)
abilityID = byte(0x028fe3)
story = word(0x042d2c)
music = word(0x0016a0)
lives = byte(0x028fe2)
candy = bit1(0x028f48)
phone = byte(0x028fbc)
hearts = byte(0x040980)
func = word(0x028fc2)
subGame = word(0x0280ae)
crack = word(0x003b00)
igCheck = prev(ingame) == 0xffd43a4c

abilities = ["Normal","Fire","Ice","Burning","Wheel","Parasol",
             "Cutter","Beam","Stone","Bomb","Throw","Sleep","Cook",
             "Laser","U.F.O.","Spark","Tornado","Hammer","Sword",
             "Cupid","Fighter","Magic","Smash","Mini","Crash",
             "Missile","Master"]

boss = ["Kracko","King Golem","Master Hand and Crazy Hand",
        "Gobbler","Wiz","Moley","Mega Titan","Dark Meta Knight",
        "Dark Mind"]

titles = {
    "abilities": [
        "We Didn't Start the Fire","Let It Go","Burning Desire",
        "The Wheels on the Bus","Parasol Star","Cutting Edge",
        "Beaming Reception","Rock and Roll All Night",
        "Somebody Set Kirby up the Bomb","Judo Warrior",
        "So Tired!","Today on Cooking With Kirby","Optic Blast!",
        "A Strange Sighting!","Shocking Personality",
        "Storm's a Coming","Wham! Bam! Slam!","Kirby's Awakening",
        "Love Is In the Air","Dragon Fist","The Great Kirbdini",
        "Super Smash Brothers!","It's a Small World",
        "DESTROY THEM ALL!","Bogey on Your Six","Guardian of the Galaxia"
    ],
    "boss": [
        "Eyes on Me","Who dares awaken my slumber?!","Create or Destroy",
        "A Lifeguard You Can Trust","Nobody Beats the Wiz","Moley MOLEY MOLEY!",
        "End of the Golden Age","I Challenge You to a Duel",
        "Who is the fairest of them all?","Boss Butcher","Tough it Out"
    ],
    "collection": [
        "Magic Mirror on the Wall","Cartographer","ADO","Music Box","Switch Happy"
    ],
    "minigames": [
        "Fastest in the Universe!","Karate Chop","New Academy Record!"
    ],
    "lives": [
        "Pocket Full of Kirby","Kirby to the Power of 20"
    ]
}

for i in range(1,length(abilities)-1) {
    des = format("Get {0} ability!",abilities[i])
    p = 1
    tp = ""
    if (i == length(abilities)-1) {
        des = "Get Galaxia Sword!"
        p = 3
        tp = "progression"
    }
    achievement(
        title = titles["abilities"][i-1], points = p, type = tp,
        description = des,
        trigger = igCheck && prev(abilityID) != i && abilityID == i
    )
}

for i in range(0,length(boss)-1) {
    btf = bit(i,0x040970)
    if (i == length(boss)-1) {
        des = format("Beat the last form of {0} and complete the game!",boss[i])
        p = 25
        tp = "win_condition"
        log = igCheck && ingame == 0xfd3c3ce4 && bit5(sub) == 1 && bit6(sub) == 1
        off = [[2,100],[1,10],[0,1]]
        achievement(
            title = "Poked in the Eye", points = 10,
            description = "Get a score of 120 points in the \"Shoot the eye\" mini game!",
            trigger = log && sum_of(off,y=>bcd(byte(tbyte(0x02b730)+0x8068+y[0])*y[1])) >= 120
        )
    }
    else {
        des = format("Beat {0} and claim a mirror shard.",boss[i])
        p = 5
        tp = "progression"
        log = igCheck && prev(btf) == 0 && btf == 1
        array_push(mirrorShards,btf)
        array_push(bitflags,btf)
    }
    achievement(
        title = titles["boss"][i], points = p, type = tp,
        description = des,
        trigger = log
    )
}

for i in range(0,2) {
    mng = [["Speed Eaters",0xfbdc3e44,0x003e40,0x003b1c,10],
           ["Crackity Hack",0xfa04401c,0x004018,0x003b10,5],
           ["Kirby Wave Ride",0xfa7c3fa4,0x003fa0,0x003b29,5]]
    cur = mng[i]
    trg = prev(subGame) != 0xff && subGame == 0xff
    achievement(
        title = titles["minigames"][i], points = cur[4],
        description = format("Win the {0} Sub-Game on Level 3.",cur[0]),
        trigger =  ingame == cur[1] && byte(cur[2]) == 2 && byte(cur[3]) == 0
                && trg
    )
    if (i == 1)
    achievement(
        title = "Earth Cracker", points = 5,
        description = format("Reach a score of 999 in {0}.",cur[0]),
        trigger =  ingame == cur[1] && crack > 0x1f38
                && trg
    )
}

for i in range(0,1) {
    lvs = (i+1)*10
    achievement(
        title = titles["lives"][i], points = 3+(i*2),
        description = format("Collect {0} extra lives!",lvs),
        trigger = igCheck && prev(lives) == lvs-1 && lives == lvs
    )
    if (i == 1) {
        des = " without replenishing health between battles"
        log = func != 0x0a
    }
    else {
        des = ""
        log = always_true()
    }
    achievement(
        title = titles["boss"][i+9], points = 25+(i*25),
        description = format("Beat the Boss Endurance Sub-Game{0}.",des),
        trigger = igCheck && ingame == 0xff743aac && bit2(sub) == 1 && bit6(sub) == 1 && log
    )
}

for i in range(0,9)
array_push(maps,bit(i,0x04097c))

for i in range(0,10)
array_push(note,bit(i,0x040978))

for i in range(0,13)
array_push(paint,bit(i,0x040974))

for i in range(0,14) {
    log = byte(0x030c14+i*4)
    array_push(doors,log)
    array_push(bitflags,log)
}

for i in range(0,0x53) {
    log = bit(i%8,0x040960+i/8)
    array_push(chests,log)
    array_push(bitflags,log)
}

for i in range(0,0x117) {
    if (i !=1 && i != 4) {
        log = bit7(0x030ca1+i*2)
        array_push(rooms,log)
        array_push(bitflags,log)
    }
}

collection = [[mirrorShards,"Collect all mirror shards.","progression"],
              [maps,"Find every map!"],
              [paint,"Find every Spray Paint."],
              [note,"Find every music note for the Sound Player."],
              [doors,"Unlock every door in the Mirror Plaza."]]

for i in range(0,length(collection)-1) {
    cur = collection[i]
    flag = cur[0]
    if (length(cur) == 3) tp = cur[2]
    else tp = ""
    achievement(
        title = titles["collection"][i], points = 10, type = tp,
        description = cur[1],
        trigger =  igCheck
                && prev(sum_of(flag,y=>y)) < length(flag)
                && measured(sum_of(flag,y=>y) == length(flag))
    )
}

achievement(
    title = "Have a Heart", points = 10,
    description = "Find every Vitality Enhancer.",
    trigger = igCheck && prev(hearts) < 4 && hearts == 4
)

achievement(
    title = "Ring Ring Banana Phone", points = 1,
    description = "Make a phone call in-game.",
    trigger = igCheck && prev(phone) > phone
)

achievement(
    title = "Happy Goalie", points = 3, type = "progression",
    description = "Reach a goal.",
    trigger = igCheck && __ornext(any_of([0,1,2],y=>prev(stage) == 0x3d4+y)) && stage == 0x321
)

achievement(
    title = "Jumbo Sweets", points = 1,
    description = "Get Invincibility Candy.",
    trigger = igCheck && prev(candy) == 1 && candy == 0
)

comp = story/10000 + sum_of(bitflags,y=>y)
achievement(
    title = "Crazy Completionist", points = 25,
    description = "Achieve 100% completion on your save file.",
    trigger = igCheck && prev(comp) == length(bitflags) && measured(comp == length(bitflags)+1,format="percent")
)