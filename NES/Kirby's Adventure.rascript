// Kirby's Adventure
// #ID = 1479

levelFlags = []
bossFlags = []
switchFlags = []
flags = []

ingame = byte(0x051e)
mode = byte(0x00f4)
state = byte(0x051c)
istate = byte(0x0190)
moves = byte(0x05e1)
mouthID = byte(0x05e2)
abilityID = byte(0x05e3)
mouthState = byte(0x05e7)
completion = byte(0x0528)
stage = word(0x055e)
screen = byte(0x0570)
world = byte(0x0558)
level = byte(0x0559)
health = byte(0x0597)
score = tbyte(0x0593)
big = bit1(0x0042)
hyper = bit6(0x05fb)
bossHBar = byte(0x059b)
sfx = byte(0x0782)
music = byte(0x0783)
minigame = byte(0x6236)
mngPrz = byte(0x07c2)
mngPrz2 = byte(0x07c3)
mngDraw = byte(0x6249)
mngEgg = byte(0x07b1)

titles = {
    "abilities": [
        "Burn Baby, Burn","Electric Slide","The Cutting Room Floor","The Legend of Kirby",
        "Great Balls of Fire!","Shoop Da Whoop","Tone-Deaf","You Spin Me Right 'Round",
        "Hammer Time","Singing in the Rain","Zzzzzzzzzzzzzzzzzzzz","Hide in a Haystack",
        "Let It Go","Ice Ice Baby!","Li Jinzhe","Beam Me Up, Scotty","Rock Out",
        "Perfectly Round","Kirbnado","DESTROY US ALL!!!!","Let There Be Light","Backing Up",
        "Z Button","Unidentified Cute Object",
    ],
    "boss": [
        "Lumberjack","Power Painter","Dawn at Night","Cloudy Cyclops","Mole Masher",
        "Familiar Face","The Royal Family"
    ],
    "bossChallenge": [
        "Mightiest Oak","Picasso","Star Duo","Cushy Clouds","Unbelievable! Kirby's Still Alive!",
        "Chivalrous Duel","Emperor of Dream Land","Unchivalrous Duel","Sleep Well"
    ],
    "levelChallenge": [
        "Pop a Wheelie!","Soar to the Top","Living Room","Pixel-Perfect Precision",
        "New World Record!","Wheeling Grand Prix"
    ],
    "minigame": [
        "Free Plushie","Fastest Poyo in the West","Big Omelette",
    ],
    "endings": [
        "End of the Nightmare","Star Warrior","Boss Endurance"
    ]
}

abilities = ["Fire","Spark","Cutter","Sword","Fireball","Laser","Mike","Wheel","Hammer",
             "Parasol","Sleep","Needle","Ice","Freeze","Hi-Jump","Beam","Stone","Ball","Tornado","Crash",
             "Light","Back Drop","Throw","U.F.O.","Star Rod","Bye Bye"]

boss = ["Whispy Woods","Paint Roller","Mr. Shine and Mr. Bright","Kracko","Heavy Mole",
        "Meta Knight","King Dedede","Nightmare"]


levels = [4,5,6,6,6,6,6]
switches = [[],[],[0,5],[0,2,5],[0,3,4,5],[0,1,2,3,4,5],[0,5]]
bitflags = [levelFlags,bossFlags,switchFlags]

for i in range(0,length(bitflags)-1) {
    cur = bitflags[i]
    for j in range(0,6) {
        if (i == 0)
        for l in range(0,length(levels)-1) {
            log = bit(l,0x0521+j)
            array_push(levelFlags, log)
            array_push(flags, log)
        }
        if (i == 1) {
            log = bit(7,0x0531+j)
            array_push(bossFlags, log)
            array_push(flags, log)
        }
        if (i == 2) {
            sw = switches[j]
            if (length(sw) > 0)
            for l in range(0,length(sw)-1) {
                log = bit(sw[l],0x0529+j)
                array_push(switchFlags, log)
                array_push(flags, log)
            }
        }
    }
    
}

for i in range(0,length(abilities)-3) {
    abl = abilities[i]
    logic = ingame == 1 && mouthID == 0xff && prev(abilityID) != i && abilityID == i && music != 0x03
    if (i == 0x17) {
        abl = "UFO"
        achievement(
            title = "Lost in Space", points = 5,
            description = "Get the UFO power in the secret area of level 1-1",
            trigger = logic && stage == 0x2e
        )
    }
    achievement(
        title = titles["abilities"][i], points = 1,
        description = format("Become {0} Kirby",abl),
        trigger = logic && stage != 0x138
    )
}

for i in range(0,length(boss)-1) {
    bossflag = bit(7,0x0531+i)
    if (i < length(boss)-1)
    achievement(
        title = titles["boss"][i], points = 5, type = "progression",
        description = format("Defeat {0}",boss[i]),
        trigger = ingame == 1 && mode == 0 && prev(bossflag) == 0 && bossflag == 1
    )
    l = 0
    tp = "missable"
    bossDes = boss[i]
    logic = [always_false(),always_true()]
    bossID = stage != 0x08+i+i/5
    trigger = trigger_when(prev(music) != 0xff && music == 0xff)
    HPcheck = prev(health) > health
    if (i < 4 || i == 6) {
        logic[0] = HPcheck || abilityID != 0xff
        des = ["without taking damage or using copy abilities"]
        if (i == 6) {
            l = 1
            logic[0] = HPcheck
            logic[1] = abilityID == 0x08
            array_push(des, "with the Hammer ability and without taking damage")
        }
        
    }
    else if (i == 4) {
        logic[0] =  __ornext(mode == 0 || mode == 2) && health != 0x2f
               || mode == 1 && health != 0x2f || abilityID != 0xff
        des = ["with full health and without using copy abilities"]
    }
    else if (i == 5 || i == 7) {
        logic[0] = HPcheck
        des = ["without taking damage"]
        if (i == 7) {
            tp = ""
            bossDes = format("both forms of the {0}",boss[i])
            bossID = stage != 0x0f && stage != 0x10 && stage != 0xff00
            trigger = trigger_when(prev(music) == 0x0e && music == 0xff)
        }
    }
    for j in range(0,l)
    achievement(
        title = titles["bossChallenge"][i+j+i/7], points = 10+j*15+(i/7)*15, type = tp,
        description = format("Defeat {0} {1}",bossDes,des[j]),
        trigger =  never(bossID || health == 0xff || logic[0])
                && once(prev(bossHBar) == 0xff && bossHBar == 0xf0)
                && logic[1] && trigger
    )
    if (i == 3)
    achievement(
        title = "Cloud Climber", points = 25, type = tp,
        description = format("Reach {0}'s highest cloud using only regular jumps and the ball ability, without losing the ability",bossDes),
        trigger =  never(bossID || health == 0xff || abilityID != 0x11 || big == 1)
                && once(prev(stage) != 0x0b && stage == 0x0b)
                && trigger_when(prev(bossHBar) == 0xff && bossHBar == 0xf0)
    )
}

for i in range(0,1) {
    ttl = titles["levelChallenge"]
    chl = [["Defeat the Grand Wheelie in the Butter Building Arena",0x26,always_false(),prev(music) == 0x14 && music == 0x17],
           ["Clear the normal path of level 7-2",0x71,stage == 0x85,prev(stage) == 0x7e && stage == 0x8d]]
    achievement(
        title = ttl[i], points = 5+i*20,
        description = format("{0} without taking damage or using copy abilities",chl[i][0]),
        trigger =  never(stage == 2+i*4 || health == 0xff || abilityID != 0xff || chl[i][2])
                && once(prev(stage) != chl[i][1] && stage == chl[i][1])
                && trigger_when(chl[i][3])
    )
    trns = [["Enter the secret 1-up room in level 7-2",0x8c],
            ["Be fired from the cannon in level 7-5",0xa7]]
    achievement(
        title = ttl[2+i], points = 10,
        description = trns[i][0],
        trigger = ingame == 1 && prev(stage) != trns[i][1] && stage == trns[i][1]
    )
    oup = [["Get a 1-up in the hi-jump mini game",0x2a],
           ["Get the 1-up in level 4-4",0x101]]
    achievement(
        title = ttl[4+i], points = 5+i*5,
        description = oup[i][0],
        trigger = ingame == 1 && stage == oup[i][1] && prev(sfx) != 0x21 && sfx == 0x21
    )
}

for i in range(0,2) {
    des = ["game!","Extra Game mode","Vs. Boss bonus game"]
    if (i == 0) tp = "win_condition"
    else tp = ""
    achievement(
        title = titles["endings"][i], points = 25+(i/2)*25, type = tp,
        description = format("Beat the {0}",des[i]),
        trigger =  mode == i && prev(stage) != 0x11 && stage == 0x11
    )
    mng = [["Get four 1-ups in the Crane Fever",0x24,0x30,mngPrz == 2 && mngPrz2 == 2],
           ["Win the Quick Draw",0x26,0x30,mngDraw == 5],
           ["Catch every egg in Egg Catcher",0x33,0x2f,mngEgg == 30]]
    achievement(
        title = titles["minigame"][i], points = 25,
        description = format("{0} mini game on challenging difficulty",mng[i][0]),
        trigger =  minigame == i && istate == mng[i][1] && prev(music) != mng[i][2] && music == mng[i][2]
                && mng[i][3]
    )
}

achievement(
    title = "Hungry Monster", points = 3,
    description = "Eat Invincibility Candy",
    trigger = ingame == 1 && prev(hyper) == 0 && hyper == 1
)

achievement(
    title = "Shaken, Not Stirred", points = 1,
    description = "Eat two copyable enemies at the same time",
    trigger = ingame == 1 && mouthState == 2 && prev(moves) == 0x09 && moves != 0x09
)

achievement(
    title = "HAL of Fame", points = 4,
    description = "Enter HAL Room in 1-2",
    trigger = stage == 0x2f && prev(screen) == 4 && screen == 5
)

achievement(
    title = "Gourmet", points = 5,
    description = "Score 500,000 points",
    trigger = ingame == 1 && prev(score) < 50000 && score >= 50000
)

switches = sum_of(switchFlags,y=>y)
achievement(
    title = "Pressed for Time", points = 5,
    description = "Press your first secret button",
    trigger = ingame == 1 && prev(switches) == 0 && switches == 1
)

savedata = completion/8 + sum_of(flags,y=>y)
achievement(
    title = "Button Masher", points = 25,
    description = "Complete the Normal Mode on 100%",
    trigger = ingame == 1 && prev(savedata) == 63 && measured(savedata == 64,format="percent")
)