// ~Hack~ Paper Mario: TTYD64
// #ID = 25610

function baseChain(first,offsets,lastType) {
    type = tbyte
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
function battlePointers(i,j) => byte(tbyte(0xdc150 + i) + 0x135) == j
function measuredIf(i) => measured(always_true(),when=i)
function diffDesc(i) => format("on {0} difficulty",difficulty[i][1])
function itemCheck(item) {
    Array = []
    for i in range(0,31) {
        array_push(Array, word(0x10f304+2*i) == item)
    }
    return Array
}
function bossDesc(i) {
    if(enemies[i] == "G Ninjakoopa") d = "Koopa Bros."
    else d = format("{0}",enemies[i])
    return d
}
function areaDesc(i,j=0) {
    if(i == 0x1f || i == 0x20) d = format("on {0}",maplookup[i])
    else if (i == 0x1e) d = format("near {0}",maplookup[i])
    else if (j == 0x5b) d = format("in Pit of 100 Trials")
    else d = format("in {0}",maplookup[i])
    return d
}
function moleGame(i=0) => dword(0x4345a0+i)
function mHP (i=0) => byte(0x10f290+i)
function turn (i=0) => bit(i,0x0dc074)
function enemyPTR(i, j=0, l=byte) => baseChain(0x0dc150+j,[i],l)
function movecheck (i) => __ornext(any_of(i,y=>moveID == y))
function badges(grp) {
    Array = []
    Array2 = []
    bdg = [[0xe0,0x14f],[0x16d,0x18d]]
    for i in range(bdg[grp][0],bdg[grp][1]) {
        for j in range(0,127) {
            array_push(Array2, word(0x10f344+2*j) == i)
        }
        array_push(Array, once(any_of(Array2,y=>y)))
        for j in range(0,length(Array2)-1) {
            array_pop(Array2)
        }
    }
    return Array
}
function funcCalcSpec(func, val, id) {
    func2 = func
    array_push(func2, once(always_true()))
    return measured(tally_of(func, val, y=>y), when=once(load == 1) && once(battlePointers(0,id))) && trigger_when(always_false())
           || unless(tally_of(func2, 1, y=>y)) && never(roundEnd) && always_false()
}
function generalGuy() {
    Array = []
    for i in range(0,4) {
        ept = tbyte(0x0dc150+i*4)
        ehp = enemyPTR(0x01BB,i*4)
        array_push(Array,  once(ept != 0x00 && prev(ehp) > ehp
                        && never(once(prev(fp) != fp
                        && never(roundEnd)))))
    }
    return Array
}
function crystalKing() {
    Array = []
    for i in range(1,20) {
        for j in range(1,i) {
            ept = tbyte(0x0dc150)
            ehp = enemyPTR(0x01BB)
            if (i < 20) array_push(Array,  ept != 0x00 && prev(ehp) - ehp == i)
            else array_push(Array,  ept != 0x00 && prev(ehp) - ehp >= i)
        }
    }
    for i in range(1,20) {
        array_push(Array, deduct(roundEnd))
    }
    return Array
}
function bowser(badges) {
    Array = []
    Array2 = []
    for i in range(0,127) {
        array_push(Array, all_of(badges, y=>word(0x10f498+2*i) != y))
    }
    return Array
}

enemies = ["Red Goomba","R. Paragoomba","Gloomba","Paragloomba","Spiked Gloomba",
"Dark Koopa","D. Paratroopa","Goomba","Paragoomba","Spiked Goomba","Fuzzy","Koopa Troopa",
"Paratroopa","Bob-omb","Bob-omb","Bullet Bill","Bill Blaster","Cleft","Monty Mole","Bandit",
"Pokey","Pokey Mummy","Swooper","Buzzy Beetle","Stone Chomp","Piranha Plant","Forest Fuzzy",
"Hyper Goomba","Hyper Paragoomba","Hyper Cleft","Clubba","Shy Guy","Groove Guy","Sky Guy",
"Medi Guy","Pyro Guy","Spy Guy","Fuzzipede","Hurt Plant","M. Bush","Aqua Fuzzy","Jungle Fuzzy",
"Spear Guy","Lava Bubble","Spike Top","Putrid Piranha","Lakitu","Spiny","Monty Mole","Bzzap!",
"Grazee Dayzee","Amazy Dayzee","Ruff Puff","Spike?","Gulpit","Gulpits' Rocks","White Clubba",
"Frost Piranha","Swoopula","Duplighost","Goombario???","Kooper???","Bombette???","Parakarry???",
"Bow???","Watt???","Sushie???","Lakilester","Albino Dino","Ember","Bony Beetle","Dry Bones","Dry Bones",
"B. Bill Blaster","Bombshell Bill","Hammer Bros.","Koopatrol","Magikoopa","Magikoopa","Magikoopa",
"Magikoopa","R Magikoopa","R Magikoopa","GRN Magikoopa","GRN Magikoopa","Y Magikoopa","Y Magikoopa",
"GRY Magikoopa","GRY Magikoopa","W Magikoopa","W Magikoopa","Bowser!?!?!?","Badge Bandit","Poison Puff",
"Dark Lakitu","Sky Blue Spiny","Dark Hammer Bros.","Dark Monty Mole","Dark Magikoopa","Dark Ember",
"Swampire","Gus","Pider","Bulky Bob-omb","Swampire","Dark Puff","Pale Piranha","The Master","The Master",
"The Master","The Master","The Master","The Master","The Master","The Master","The Master","The Master",
"The Master","The Master","Twink","The Master","The Master","The Master","The Master","The Master","Chan",
"Lee","Goombario","Kooper","Bombette","Parakarry","Bow","Watt","Sushie","Lakilester","Kammy Koopa","Jr. Troopa",
"Jr. Troopa","Jr. Troopa","Jr. Troopa","Jr. Troopa","Jr. Troopa","Jr. Troopa","Jr. Troopa","Blue Goomba",
"Red Goomba","Goomba King","Goomnut Tree","Goombario","Magikoopa","Magikoopa","Magikoopa","Magikoopa",
"Bowser???","Koopa Bros.","G Ninjakoopa","R Ninjakoopa","B Ninjakoopa","Y Ninjakoopa","Goombario",
"Buzzar","Tutankoopa","Chomp","Tubba Blubba","Tubba Blubba","Tubba's Heart","Stilt Guy","Shy Stack",
"Shy Squad","General Guy","General Guy","Bulb","Shy Guy","Shy Squad","Shy Guy","Anti Guy","Anti Guy",
"Big Lantern Ghost","Goomba King","Lava Piranha","Lava Piranha","Lava Bud","Lava Bud","Petit Piranha",
"Lava Piranha","Kent C. Koopa","Huff N. Puff","Tuff Puff","Monstar","Crystal King","Crystal King",
"Crystal Bit","Bowser","Bowser","Bowser","Bowser","Bowser","Bowser","Bowser","Blooper","Electro Blooper",
"Electro Blooper","Super Blooper","Super Blooper","Blooper Baby","Lakilester???","Slot Machine (start)",
"Slot Machine (stop)","Wacka","Slot Machine (start)","Slot Machine (start)","Slot Machine (start)"]

titles = {
    "tattle": [
        "Goomba Boom","Koopa Kang","2 Dried Out 4 Battle","Yum Yum Ghosts","Broken Toys","You Gonna Let It Burn?",
        "Garden Escape","Hoho, I Shiver!","The Final Stretch","Plumber Job","To the Core"
    ],
    "starpieces": [
        "Crashing in Goomba Town","Keepings of Koopas","Buried in the Sand","Ghostly Tricks","Not Safe for Kids to Play With",
        "Molten Treasure","Brighter Than The Sun","Star of The Shnow","Princess Peach's Present","Trouble in Toad Town","",
    ],
    "shines": [
        "Shining in the Brightest Light","Shiny Shells","The Sun's Shine feels Super","A Glamorous Horror Time","Why So Shy My Sunshine?",
        "Jungle Fever","Source of a Plant's Life","Served as an Icicle","Even the Darkest Place Needs Some Light","Drippy Trip","",
    ],
    "bosses": [
        ["Big Baby Broblems","Close Call"],
        ["Goomba Kings Decree","King of Idiots","Stomping On Ones's Dream"],
        ["Attack of the Koopa Bros.","Koopa Bros. Keep Cool","Keeping Myself Healthy"],
        ["A Thug Koopa","A Pleasant Challenge"],
        ["Chomp Attack","Turning Tutankoopa to Dust","Hammering You Back To The Grave"],
        ["Heartless Heart","My Heart Only Beats for Your Death","Heartbreaking To See Them In Pain"],
        ["Ghost Gulping","Hungry For Justice"],
        ["Forever Troubled","Oh, Very Scary!"],
        ["Keeping Pace","From General to Private","This Guy Is Fully Perplexed"],
        ["Go! Mario! Go!","Volcanics Core Problem","Melting Magma Meltdown"],
        ["Coming From The Deep Sea","I Heard You Are A Great Swimmer"],
        ["Huffin' and Puffin'","Cloudy with a Chance of Hatred","Saving the Flower's Power"],
        ["Aren't You Getting Bored?","Keeping Me Entertained In The Cold"],
        ["Scared Yet?","I Am The Monstar Now"],
        ["Freeze!","Crystal King Hard","Crytsalized Agony"],
        ["Bowser's Best Minion?","See You Next Time..."],
        ["King of the Koopas","Bowser's Rage","Besting Bowser Badgeless"],
        ["Bli Bla Bloop","His Size Is Just For Show"],
        ["Buzz Off!","Such A Buzzkill"],
        ["It Takes No Afford","You Underestimated us Gravely"],
        ["That's Shockin'!","Electric Boogaloo"],
        ["Super Easy I'd Say","Super Duper Gooper"],
        ["The Price Is Awful","Paying With A Fight"],
        ["Another Nuisance Time Invest","God, U're a Yoke"],
        ["Just a Fake","Broken Machine!?!?!?"],
    ],
    "chapters": [
        [["A Plea from the Stars","Was This A Mistake?"],
        ["Creepy Adventure","Did My Partners Die?"],
        ["Generating The Optimal Run","Keeping MY Numbers In Check"],
        ["Running It Back",""]],
        [["Storming Koopa Bros. Fortress","Teenage Koopa Ninja Turtles"],
        ["Tales of The Creepy Castle","Haunting The Koopa's Dreams"],
        ["Acting Like A Sly Thief","Kooping with my Luck"],
        ["The Ninja's Message",""]],
        [["The Mystery of Dry, Dry Ruins","Dried Out Anger"],
        ["A Death's Sweat","Too Hot Even For Boos"],
        ["Dusty Console's Breakpoint","Blasting Coded Dunes"],
        ["Engraved Desert",""]],
        [["The \"Invincible\" Tubba Blubba","Feisty Fighting The Feast"],
        ["MY Time To Shine","Ghost Bustin'"],
        ["Pullin' A Prank","The Boos Limitbreak"],
        ["Can You Kill What's Already Dead?",""]],
        [["Trials in the Toy Box","Childish Threats"],
        ["Just Playin' With Ya","Tricks & Taunts"],
        ["Stryding Forward No Matter Watt","Completing A Chapter Crashes Paper Mario"],
        ["Shy Guy Riot",""]],
        [["Hot, Hot Times on Lavalava Island","Welcome to Yoshi's Island"],
        ["Bow Down To Me","Hunting for Hidden Riches"],
        ["Overheating Processor","Keep On Grinding"],
        ["Burning Down The Jungle",""]],
        [["Dark Days in Flower Fields","Flower Field Rondo"],
        ["Story of Bees and Boos","Bow's Bee Balm"],
        ["Blitzkrieg Bop","Digital Love"],
        ["Erasing The Flowers",""]],
        [["A Star Spirit on Ice","Ice-Cold Killer"],
        ["My Heart Is As Cold As Your Soul","The Frozen Shine"],
        ["Cold Computing","Cold Coding"],
        ["Ripping Away The King of Snow",""]],
        [["A Star-Powered Showdown!","King Koopa's Fall"],
        ["See you In The Mansion","Only A Boo In His Head"],
        ["Not As Random As One Thought","A Demizing End"],
        ["The Final Tear",""]]
    ],
    "partners": [
        [["Weird Looking Mushroom","Making the Family Proud"],["Full of Knowledge","Hero of the Goombas"]],
        [["Returning the Favor","Blue Blur"],["Hard Shell Cafe","A Real German-Tank Now"]],
        [["Blow Up Expert","Short-Fused"],["Booming Business","Bitter Blast"]],
        [["Karry Me Home","Kare For A Ride?"],["Kareful Now With Such Power","Kombat Killer"]],
        [["Afraid of A Ghost?","Like A Lady"],["Haunted Hours","Midnight Scares"]],
        [["Watt Was Our Mission Again?","Little Amp Powering Voltswagen"],["A Bright Idea","Brightest Tool in The Shed"]],
        [["Fish Food Production","Water Resistant"],["Jungle's Gem","This Fish Will Cook You Instead"]],
        [["On Cloud 9","Hard Hitting Hero"],["Not Laking In Power Anymore","Just Pure Lak or All Skill?"]],
    ],
    "items": [
        [["Stepping Up in Style","Boots of Destiny"],["Ultra Stride","A Hero's Footsteps"]],
        [["Great Hammer, Kid!","Hammer Time!"],["I'm Gonna Wreck It!","Hammerhead's Headache"]],
    ]
}

mapsIcons = [
    ["Toad Town",0x01],["Toad Town Tunnels",0x02],["Koopa Bros. Fortress",0x07],["Mt. Rugged",0x08],
    ["Dry Dry Outpost",0x09],["Dry Dry Desert",0x0a],["Dry Dry Ruins",0x0b],["Forever Forest",0x0c],
    ["Boo's Mansion",0x0d],["Tubba Blubba's Castle",0x0f],["Shy Guy's Toy Box",0x10],
    ["Mt. Lavalava",0x12],["Crystal Palace",0x15],["Bowser's Castle",0x16],["Princess Peach's Castle",0x19],
    ["Princess Peach's Castle",0x1a],["Shooting Star Summit",0x1b],["Star Way",0x1c],
    ["Star Haven",0x1d],["Goomba Village",0x1e],["Goomba Road",0x1f],["Pleasant Path",0x20],
    ["Koopa Village",0x21],["Gusty Gulch",0x22],["Windy Mill",0x23],["Jade Jungle",0x24],
    ["Yoshi's Village",0x25],["Flower Fields",0x26],["Cloudy Climb",0x27],["Shiver City",0x28],
    ["Shiver Snowfield",0x29],["Starborn Valley",0x2a],["Shiver Mountain",0x2b],["Mario's House",0x2c],
]

modelookup = {}
difficultylookup = {}
itemlookup = {}
maplookup = {}
partnerlookup = {}
bosslookup = {}
enemyNumb = {}
bossID = []
tattles = []
tattlesNumb = []
star = []
starNumb = []
blocks = []
blocksNumb = []
npcs = []
recipes = []
for i in range(0,12) {
    array_push(recipes, bitcount(0x3570e5+i))
}
for i in range(0, length(mapsIcons)-1) {
    maplookup[mapsIcons[i][1]] = mapsIcons[i][0]
}

lLog = 0
mLog = 1
rLog = 2
og = 0x0dbc70
mod = 0x357000
mainMap = byte(0x0740a8)
subMap = byte(0x0740b2)
fp = byte(0x10f296)
lvl = byte(0x10f29a)
cooking = word(0x52199c)
state = byte(0x074097)
load = bit3(0x09a650)
win = bit0(0x0dc074)
partner = byte(0x10f2a1)
pHP = byte((partner*8)+0x10f2b2-8)
pLP = byte((partner*8)+0x10f2ae-8)
mMVE = byte(0x0dc0bf)
pMVE = byte(0x0dc0cf)
mTRN = turn(3)
pTRN = turn(4)
mve = byte(0x0dc074)
moveID = word(0x0dc1ee)
modeVal = byte(0x356008)
diffVal = byte(0x35600a)
menuVal = byte(0x0a094a)
starSpirits = byte(0x10f51d)
starPieces = word(0x10f5be)
character = byte(0x0740a1)
music = dword(0x159b00)
icon = byte(0x0dbf1a)
dialog = dword(0x154c38)
newGame = byte(0x356009)
stylish = byte(0x434fe1)
smG = dword(0x521128)
jpG = dword(0x518be0)
round = turn(1)+turn(2)
roundEnd = prev(round) == 2 && round == 0
menuCheck = menuVal == 1 && music != 0xa5

test = [[mLog,always_true()],"Test"]
bsGK = [[lLog,any_of([4,8], y=>tbyte(0x0dc150+y) != 0 && enemyPTR(0x01BB,y) < 0x02)],
        [mLog,trigger_when(repeated(5, roundEnd))],
        "without hurting anyone but Goomba King and surviving 5 rounds before attacking"]
bsKG = [[lLog,mHP(1) < mHP()/2],
        "without Mario ever having less than half of his maximum HP"]
bsTK = [[lLog,any_of([pTRN == 1,mTRN == 1 && mMVE != 0x01], y=>y && tbyte(0x0dc150) != 0 && prev(enemyPTR(0x01BB)) > enemyPTR(0x01BB))],
        "while only attacking Tutankoopa with the Hammer"]
bsTB = [[lLog, mHP(1) > 5, pHP > 5],
        "while only staying in Danger or Peril with both Mario and his partner"]
bsGG = [[lLog,any_of(generalGuy(), y=>y)],
        "while only using FP attacks"]
bsLP = [[lLog,any_of([0,1], y=>turn(3+y) == 1 && mMVE == 0x02),
         any_of([0x04,0x08,0x0C,0x10], y=>tbyte(0x0dc150+y) != 0 && prev(enemyPTR(0x01BB,y)) > enemyPTR(0x01BB,y))],
        "without hurting anyone but Lava Piranha and using no Items"]
bsHP = [[lLog,once(prev(fp) != fp && never(roundEnd)) && tbyte(0x0dc150) != 0x00 && prev(enemyPTR(0x01BB)) > enemyPTR(0x01BB)],
        "without using FP attacks to hurt Huff N. Puff"]
bsCK = [[rLog,funcCalcSpec(crystalKing(),20,0xbd)],
        "while doing at least 20 damage to Crystal King per round"]
bsKB = [[lLog, any_of(bowser([0x00,0xF3,0xF7,0x11E,0x11F,0x12D,0x144,0x145,0x146,0x147,0x148,0x149,0x173,0x174]),y=>y)],
        "without any spent Badge Points"]

bosses = {
    0: [[0x88,0x1e],[0x92,0x1f,bsGK],[0x9b,0x07,bsKG],[0x89,0x20],[0xa1,0x0b,bsTK],
        [0xa5,0x23,bsTB],[0xa3,0x22],[0x8a,0x0c],[0xa9,0x10,bsGG],
        [0xb3,0x12,bsLP],[0x8b,0x01],[0xba,0x27,bsHP],[0x8c,0x29],[0xbc,0x29],[0xbd,0x15,bsCK],
        [0x8d,0x16],[0xc5,0x1a,bsKB]],
    1: [[0xc7,0x02],[0xa0,0x08],[0xaf,0x10],[0xc8,0x02],[0xca,0x02],
        [0xb9,0x20],[0xb0,0x16],[0x5b,0x02]]
}

modes = ["Normal","Bow Only","Randomizer","New Game+"]
difficulty = [["Easy","easy"],["Normal","normal"],["Hard","hard"],["Extreme","extreme"],["Any","any"]]
partners = ["Goombario","Kooper","Bombette","Parakarry","Goompa","Watt","Sushie","Lakilester","Bow"]
items = ["Super","Ultra"]

for i in range (0,length(enemies)-1) {
    enemyNumb[i] = enemies[i]
}

for i in range (0,1) {
    if (i==0) {
        diffCheck = always_true()
        prog = "progression"
    }
    else {
        diffCheck = diffVal == 3
        prog = ""
    }
    for j in range (0,3) {
        if (j == 0) {
            for l in range(0,7) {
                if (l != 4) offset = 8*l
                else offset = 8*8
                unlock = byte(0x10f2af + offset)
                level = byte(0x10f2ae + offset)
                achievement(
                    title = titles["partners"][l][0][i], points = 2+3*i, type = prog,
                    description = format("Unlock {0} {1}", partners[offset/8],diffDesc(4-i)),
                    trigger = menuCheck && diffCheck && newGame == 0 && prev(unlock) == 0 && unlock == 1
                )
                achievement(
                    title = titles["partners"][l][1][i], points = 2+3*i,
                    description = format("Fully upgrade {0} {1}", partners[offset/8],diffDesc(4-i)),
                    trigger = menuCheck && diffCheck && newGame == 0 && prev(level) == 1 && level == 2
                )
                partnerlookup[offset/8+1] = partners[offset/8]
            }
            for l in range(0,1) {
                for n in range(0,1) {
                    item = byte(0x10f293-n)
                    itemType = ["Boots", "Hammer"]
                    achievement(
                        title = titles["items"][n][l][i], points = 2+3*i, type = prog,
                        description = format("Obtain the {0} {1} {2}", items[l],itemType[n],diffDesc(4-i)),
                        trigger = menuCheck && diffCheck && newGame == 0 && prev(item) == 0+l && item == 1+l
                    )
                }
            }
            diploma = ["of The Fools","of The Worthy"]
            achievement(
                title = format("Diploma {0}", diploma[i]), points = 5+5*i,
                description = format("Earn the Diploma {0}",diffDesc(4-i)),
                trigger =  menuCheck && diffCheck && newGame == 0
                        && all_of(itemCheck(0x0e),y=>prev(!y)) && __ornext(any_of(itemCheck(0x0e),y=>y))
            )
            for l in range(0,1) {
                curBoss = bosses[l]
                for ii in range(0, length(curBoss)-1) {    
                    bossINF = curBoss[ii]
                    if (i == 0 && l == 0) prog = "progression"
                    else if (l == 1 && ii == 6) prog = "missable"
                    else prog = ""
                    if (l == 0 && ii == 5) log = dialog == 0xe00c6 && load == 1
                    else log = prev(win) == 0 && win == 1
                    achievement(
                        title = titles["bosses"][17*l+ii][i], points = 2+i*3, type = prog,
                        description = format("Defeat {0} {1} {2}",bossDesc(bossINF[0]),areaDesc(bossINF[1],bossINF[0]),diffDesc(4-i)),
                        trigger =  never(state == 0) && once(battlePointers(0,bossINF[0]))
                                && diffCheck && newGame == 0 && log
                    )
                }
            }
        }
        des = format("for the first time in {0} Mode {1}",modes[j],diffDesc(4-i))
        mode = modeVal == j
        if (j == 3) {
            des = format("on {0}",modes[j])
            mode = always_true()
        }
        if (j < 3) || (i == 0 && j == 3) {
            for l in range(0,7) {
                if (l == 0) {
                    ch = "the Prologue"
                    log =  mainMap == 0 && prev(subMap) == 0x09 && subMap == 0x0f
                        && bit1(0x0dbc70) == 0
                }
                else {
                    ch = format("Chapter {0}",l)
                    log = prev(starSpirits) == l-1 && starSpirits == l
                }
                achievement(
                    title = titles["chapters"][l][j][i], points = 5+5*i,
                    description = format("Complete {0} {1}", ch,des),
                    trigger = menuCheck && mode && diffCheck && newGame == 0+j/3 && log
                )
            }
            achievement(
                title = titles["chapters"][8][j][i], points = 10+15*i,
                description = format("Complete the game {0}",des),
                trigger = menuCheck && mode && diffCheck && newGame == 0+j/3 && prev(music) == ~0 && music == 0x6e
            )
        }
    }
}

for i in range(0, length(bosses[0])-1) {
    curBoss = bosses[0]
    if (i == 0) {
        array_push(bossID,7)
        array_push(bossID,0)
    }
    if (length(curBoss[i]) == 3) {
        bossINF = curBoss[i]
        lLogic = always_false()
        mLogic = always_true()
        rLogic = always_true()
        current = bossINF[2]
        for l in range(0,length(current)-2) {
            logic = current[l]
            for j in range(1,length(logic)-1) {
                if (logic[0] == 0) lLogic = lLogic || logic[j]
                else if (logic[0] == 1) mLogic = mLogic && logic[j]
                else if (logic[0] == 2) rLogic = rLogic && logic[j]
            }
        }
        if (i == 5) log = dialog == 0xe00c6 && load == 1
        else log = prev(win) == 0 && win == 1
        achievement(
            title = titles["bosses"][i][2], points = 10,
            description = format("Defeat {0} {1} on extreme New Game+ difficulty",bossDesc(bossINF[0]),current[length(current)-1]),
            trigger =  never(state == 0 || lLogic) && once(load == 1) && once(battlePointers(0,curBoss[i][0]))
                    && diffVal == 3 && newGame == 1 && mLogic
                    && trigger_when(log)
                    || rLogic
        )
        boss = bossID[0]
        run = bossID[1]
        if (run == 1) {
            bosslookup[boss*0x100+bossINF[1]] = bossDesc(bossINF[0])
            bosslookup[(boss+1)*0x100+bossINF[1]] = "Trojan Bowser"
            bosslookup[(boss+1)*0x100+0x02] = "Trojan Bowser X"
            bossID[0] = boss+2
        }
        else if (run == 4) {
            bossINF2 = bosses[0][i+1]
            bosslookup[boss*0x100+bossINF[1]] = bossDesc(bossINF[0])
            bosslookup[boss*0x100+bossINF2[1]] = "Tubba Blubba"
            bossID[0] = boss+1
        }
        else if (run != 8) {
            bosslookup[boss*0x100+bossINF[1]] = bossDesc(bossINF[0])
            bossID[0] = boss+1
        }
        else {
            bosslookup[5*0x100+bossINF[1]] = format("Final {0}",bossDesc(bossINF[0]))
            bosslookup[0x66*0x100+bossINF[1]] = bossDesc(bossINF[0])
            bosslookup[0x67*0x100+bossINF[1]] = bossDesc(bossINF[0])
            bossID[0] = boss+1
        }
        bossID[1] = run+1
    }
}

areaPrologue = {
    "tattle": [
        bit7(0x0DBEDE), //Goomba
        bit0(0x0DBEDD), //Paragoomba
        bit1(0x0DBEDD), //Spiked Goomba
        bit0(0x0DBEEC), //Blue Goomba
        bit1(0x0DBEEC), //Red Goomba
        bit2(0x0DBEEC), //Goomba King
        bit3(0x0DBEEC), //Goomnut Tree
    ],
    "starpieces": [
        [0x04A,0x052,0x056,0x058,0x05A],//dolly?
        [0x075]
    ],
    "blocks": [
        [0x034],
        [0x070,0x071,0x072,0x073]
    ]
}

areaChapter1 = {
    "tattle": [
        bit3(0x0DBEDD), //Koopa Troopa
        bit4(0x0DBEDD), //Paratroopa
        bit1(0x0DBEED), //Jr. Troopa 2
        bit1(0x0DBEF7), //Kent C. Koopa
        bit2(0x0DBEDD), //Fuzzy
        bit5(0x0DBEDD), //Bob-omb
        bit7(0x0DBEDD), //Bullet Bill
        bit0(0x0DBEDC), //Bill Blaster
        bit1(0x0DBEF3), //Bowser???
        bit2(0x0DBEF3), //Koopa Bros.
        bit3(0x0DBEF3), //Green Ninjakoopa
        bit4(0x0DBEF3), //Red Ninjakoopa
        bit5(0x0DBEF3), //Black Ninjakoopa
        bit6(0x0DBEF3), //Yellow Ninjakoopa
    ],
    "starpieces": [
        [0x243,0x244,0x251,0x25E,0x260,0x261,0x27E],
        [0x269,0x26D,0x26E,0x29E]
    ],
    "shines": [
        [],
        [0x270,0x29B]
    ],
    "blocks": [
        [0x257]
    ]
}

areaChapter2 = {
    "tattle": [
        bit2(0x0DBEDC), //Monty Mole
        bit1(0x0DBEDC), //Cleft
        bit0(0x0DBEF2), //Buzzar
        bit3(0x0DBEDC), //Bandit
        bit4(0x0DBEDC), //Pokey
        bit5(0x0DBEDC), //Pokey Mummy
        bit7(0x0DBEDC), //Buzzy Beetle
        bit6(0x0DBEDC), //Swooper
        bit0(0x0DBEE3), //Stone Chomp
        bit2(0x0DBEF2), //Chomp
        bit1(0x0DBEF2), //Tutankoopa
    ],
    "starpieces": [
        [0x2AF,0x2B0,0x2CD,0x2F4,0x31C,0x375],//artifact?
        [0x2D7,0x2DA,0x2FD,0x300]
    ],
    "npcs": [
        [0x312]
    ],
    "shines": [
        [0x2D1,0x33D,0x387],
        [0x2D8,0x2D9,0x2FA,0x2FF,0x38E]
    ],
    "blocks": [
        [0x31F,0x32A,0x32D,0x32E]
    ]
}

areaChapter3 = {
    "tattle": [
        bit1(0x0DBEE3), //Piranha Plant
        bit2(0x0DBEE3), //Forest Fuzzy
        //bit1(0x0DBEE0), //Bzzap!
        bit2(0x0DBEED), //Jr. Troopa 3
        bit3(0x0DBEE3), //Hyper Goomba
        bit4(0x0DBEE3), //Hyper Paragoomba
        bit5(0x0DBEE3), //Hyper Cleft
        bit6(0x0DBEE3), //Clubba
        bit5(0x0DBEF2), //Tubba's Heart
        bit3(0x0DBEF2), //Tubba Blubba
    ],
    "starpieces": [
       [0x3A5,0x3C1,0x3C4,0x3CC,0x3D0,0x3D4,0x3FB,0x412,0x41A],
       [0x3E1]
    ],
    "shines": [
        [0x416],
        [0x3E2,0x3E5,0x430,0x432]
    ]
}

areaChapter4 = {
    "tattle": [
        bit7(0x0DBEE3), //Shy Guy
        bit7(0x0DBEF1), //Anti Guy
        bit0(0x0DBEE2), //Groove Guy
        bit1(0x0DBEE2), //Sky Guy
        bit2(0x0DBEE2), //Medi Guy
        bit4(0x0DBEE2), //Spy Guy
        bit3(0x0DBEE2), //Pyro Guy
        bit1(0x0DBEF0), //Big Lantern Ghost
        bit0(0x0DBEF1), //Shy Squad
        bit6(0x0DBEF2), //Stilt Guy
        bit7(0x0DBEF2), //Shy Stack
        bit2(0x0DBEF1), //General Guy
    ],
    "starpieces": [
        [0x46C,0x46D,0x496,0x4A6,0x4A7,0x4A8,0x4A9],
        [0x484]
    ],
    "shines": [
        [0x4AA],
        [0x490]
    ],
    "blocks": [
        [0x456,0x457,0x45B,0x45D,0x470,0x471,0x473,0x479,0x498,0x49A,0x49D,0x49E,0x4A1]
    ]
}

areaChapter5 = {
    "tattle": [
        bit1(0x0DBEE1), //Jungle Fuzzy
        bit2(0x0DBEE1), //Spear Guy
        bit6(0x0DBEE2), //Hurt Plant
        bit7(0x0DBEE2), //M. Bush
        bit5(0x0DBEE1), //Putrid Piranha
        bit2(0x0DBEEB), //White Magikoopa
        bit3(0x0DBEE1), //Lava Bubble
        bit4(0x0DBEE1), //Spike Top
        bit5(0x0DBEF0), //Lava Bud
        bit3(0x0DBEF0), //Lava Piranha
        bit6(0x0DBEF0), //Lava Bud
        bit4(0x0DBEF0), //Lava Piranha
        bit7(0x0DBEF0), //Petit Piranha
    ],
    "starpieces": [
        [0x4CD,0x4E4,0x4F5,0x4F6,0x502,0x53A,0x53B],
        [0x506,0x508,0x50B,0x50C,0x50D]
    ],
    "shines": [
        [0x4FE,0x530,0x531],
        [0x503,0x509,0x511,0x53D,0x53E,0x53F]
    ],
    "blocks": [
        [0x4DE,0x4DF,0x4E1,0x4E2,0x4E3,0x520]
    ]
}

areaChapter6 = {
    "tattle": [
        bit2(0x0DBEE0), //Crazee Dayzee
        bit1(0x0DBEE0), //Bzzap!
        bit0(0x0DBEE0), //Monty Mole (Green)
        bit4(0x0DBEE0), //Ruff Puff
        bit3(0x0DBEE0), //Amazy Dayzee
        bit7(0x0DBEE1), //Spiny
        bit6(0x0DBEE1), //Lakitu
        bit2(0x0DBEF7), //Huff N. Puff
    ],
    "starpieces": [
        [0x565,0x56B,0x56C,0x57C,0x57E,0x57F],
        [0x589,0x592]
    ],
    "shines": [
        [0x57A,0x57B],
        [0x58A,0x58B,0x58C,0x58D,0x58F,0x590]
    ],
    "blocks": [
        [0x56E,0x572,0x580,0x581],
        [0x586]
    ]
}

areaChapter7 = {
    "tattle": [
        bit4(0x0DBEED), //Jr. Troopa 5
        bit6(0x0DBEE0), //Gulpit
        bit1(0x0DBEE7), //Frost Piranha
        bit4(0x0DBEF7), //Monstar
        bit3(0x0DBEE7), //Duplighost
        bit0(0x0DBEE7), //White Clubba
        bit2(0x0DBEE4), //Red Magikoopa
        bit5(0x0DBEE4), //Yellow Magikoopa
        bit7(0x0DBEE4), //Gray Magikoopa
        bit3(0x0DBEE4), //Green Magikoopa
        bit2(0x0DBEE7), //Swoopula
        bit7(0x0DBEF7), //Crystal Bit
        bit5(0x0DBEF7), //Crystal King
    ],
    "starpieces": [
        [0x5B8,0x5E2,0x59C,0x5A5,0x5E6,0x5E8],
        [0x5BF,0x5C5]
    ],
    "shines": [
        [0x5B1],
        [0x5BE,0x5C2,0x5C3]
    ],
    "blocks": [
        [0x5AA,0x5B0,0x5E7]
    ]
}

areaChapter8 = {
    "tattle": [
        bit5(0x0DBEE6), //Ember
        bit4(0x0DBEE5), //Koopatrol
        bit3(0x0DBEE5), //Hammer Bro
        bit0(0x0DBEE4), //Magikoopa (Bowser's Castle)
        bit6(0x0DBEE6), //Bony Beetle
        bit2(0x0DBEE5), //Bombshell Bill
        bit1(0x0DBEE5), //Bombshell Bill Blaster
        bit7(0x0DBEE6), //Dry Bones
        bit3(0x0DBEE7), //Duplighost
        bit5(0x0DBEED), //Jr. Troopa 5
        bit1(0x0DBEF6), //Bowser 2
        bit3(0x0DBEF6), //Bowser 3
    ],
    "starpieces": [
        [],
        [0x200,0x202,0x203,0x204,0x222,0x638,0x63D,0x641,0x642]
    ],
    "blocks": [
        [0x62E,0x637],
        [0x63E]
    ]
}

areaTTown = {
    "tattle": [
        bit5(0x0DBEEA), //Gus
        bit6(0x0DBEEC), //Magikoopa
        bit3(0x0DBEED), //Jr. Troopa 4
        bit5(0x0DBEEF), //Chan
        bit6(0x0DBEEF), //Lee
        bit2(0x0DBEEF), //The Master 1
        bit3(0x0DBEEF), //The Master 2
        bit4(0x0DBEEF), //The Master 3
        bit2(0x0DBEDE), //Gloomba
        bit3(0x0DBEDE), //Paragloomba
        bit4(0x0DBEDE), //Spiked Gloomba
        bit7(0x0DBEF6), //Blooper
        bit0(0x0DBEF5), //Electro Blooper
        bit2(0x0DBEF5), //Super Blooper
        bit4(0x0DBEF5), //Blooper Baby
        bit5(0x0DBEDE), //Dark Koopa
        bit4(0x0DBEE1), //Spike Top
        bit7(0x0DBEE1), //Spiny
        //bit1(0x0DBEF7), //Kent C. Koopa
    ],
    "starpieces": [
        [0x127,0x129,0x12A,0x12C,0x12D,0x12E,0x194,0x220,0x21A,0x21B,0x21C],//dictionary?,mailbag?
        [0x172,0x173,0x17C,0x1B9,0x1CC,0x1CE,0x1CF,0x1D0,0x1D1,0x1D2,0x273]
    ],
    "npcs": [
        [0x0F4,0x10A]
    ],
    "shines": [
        [0x1B1,0x1B2,0x1B3,0x1B4,0x1B5],
        [0x17D,0x1BA,0x1BC,0x1C5,0x1C6]
    ],
    "blocks": [
        [0x195,0x196,0x197,0x198,0x19C,0x19D,0x19E,0x19F,0x1A0,0x1A1,0x1A2,0x1A4,0x66B]
    ]
}

areaPit = {
    "tattle": [
        bit6(0x0dbede), //Dark Paratroopa
        bit0(0x0dbeea), //Dark Hammer Bros.
        bit1(0x0dbeea), //Dark Monty Mole
        bit2(0x0dbeea), //Dark Magikoopa
        bit3(0x0dbeea), //Dark Ember
        bit4(0x0dbeea), //Swampire
        bit3(0x0dbeeb), //Bowser!?!?!?
        bit4(0x0dbeeb), //Badge Bandit
        bit5(0x0dbeeb), //Poison Puff
        bit6(0x0dbeeb), //Dark Lakitu
        bit7(0x0dbeeb), //Sky Blue Spiny
    ]
}

area = {
    0: [areaPrologue,areaChapter1,areaChapter2,areaChapter3,areaChapter4,
        areaChapter5,areaChapter6,areaChapter7,areaChapter8,areaTTown,areaPit],
    1: ["Goomba Village & Goomba Road","Pleasant Path, Koopa Village & Koopa Bros. Fortress",
        "Mt. Rugged, Dry Dry Desert & Dry Dry Ruins","Forever Forest, Gusty Gulch, Tubba Blubba's Castle & Windy Mill",
        "Shy Guy's Toy Box","Lavalava Island & Mt. Lavalava","Flower Fields & Cloudy Climb",
        "Shiver Snowfield, Shiver Mountain & Crystal Palace","Star Way, Bowser's Castle & Princess Peach's Castle",
        "Toad Town, Toad Town Tunnels & Shooting Star Summit","Pit of 100 Trials"]
}
function sum(arr, val = og) => sum_of(arr, y=>bit(y%8,val+y/8))
function hits(arr, val = og) => array_map(arr, y=>once(bit(y%8,val+y/8) == 1))
function len(arr) => length(arr)

for i in range(1,5) {
    Array = []
    for j in range(0,2) {
        array_push(npcs, sum_of([byte(0x0dbecf)], y=>-(~y/(0x100-i*4))))
    }
}

for i in range(0,2) {
    n = [1,5,10]
    Array = []
    array_push(npcs, sum_of([byte(0x0dbdab)], y=>-(~y/(0x100-n[i]))))
}

for i in range(0, length(area[0])-1) {
    cur = area[0][i]
    offset = [og,mod]
    lookout = ["tattle","starpieces","shines","blocks","npcs"]
    for j in range(0,length(lookout)-1) {
        typ = lookout[j]
        Array = [[],[]]
        nds = format(" {0}",typ)
        tp = ""
        if (typ == "blocks") {
            des = "Activate every hidden"
        }
        else if (typ != "npcs") {
            ttl = titles[typ][i]
            des = "Obtain all"
        }
        if (typ == "tattle") {
            des = "Tattle all enemies mostly"
            nds = ""
            tp = "missable"
            if (i == 9) ar = "Toad Town Tunnels & Shooting Star Summit"
            else ar = area[1][i]
        }
        else ar = area[1][i]
        if (dictionary_contains_key(cur, typ) == true) {
            if (typ != "tattle")
            for l in range(0, length(cur[typ])-1) {
                if (length(cur[typ][l]) > 0) {
                    array_push(Array[0], sum(cur[typ][l], offset[l]))
                    array_push(Array[1], len(cur[typ][l]))
                }
            }
            else {
                array_push(Array[0], sum_of(cur[typ], y=>y))
                array_push(Array[1], len(cur[typ]))
            }
            if (typ != "blocks" && typ != "npcs") {
                val = sum_of(Array[1],y=>y)
                if (val <= 5) pt = val
                else if (val > 5 && val < 7) pt = 5
                else pt = 10
                achievement(
                    title = ttl, points = pt, type = tp,
                    description = format("{0}{1} found around {2}",des,nds,ar),
                    trigger =  measuredIf(menuCheck) && sum_of(Array[0], y=>prev(y)) == sum_of(Array[1],y=>y)-1
                            && measured(sum_of(Array[0], y=>y) == sum_of(Array[1],y=>y))
                )
            }
            if (typ != "shines")
            for l in range(0, length(Array[0])-1) {
                if (typ == "tattle") {
                    array_push(tattles, array_pop(Array[0]))
                    array_push(tattlesNumb, array_pop(Array[1]))
                }
                else if (typ == "starpieces") {
                    array_push(star, array_pop(Array[0]))
                    array_push(starNumb, array_pop(Array[1]))
                }
                else if (typ == "blocks") {
                    array_push(blocks, array_pop(Array[0]))
                    array_push(blocksNumb, array_pop(Array[1]))
                }
                else if (typ == "npcs") {
                    array_push(npcs, array_pop(Array[0]))
                    array_pop(Array[1])
                }
            }
        }
    }
}

/*achievement(
    title = "NPC Star", points = 5,
    description = "Obtain all starpieces from NPCs",
    trigger =  measuredIf(menuCheck) && measured(18+sum_of(npcs,y=>y) == 21)
)*/

achievement(
    title = "Goombapedia", points = 25, type = "missable",
    description = "Tattle all enemies",
    trigger =  measuredIf(menuCheck) && sum_of(tattles, y=>prev(y)) == sum_of(tattlesNumb, y=>y)-1
            && measured(sum_of(tattles, y=>y) == sum_of(tattlesNumb, y=>y))
)

achievement(
    title = "Twinkle, Twinkle, Little Star", points = 10,
    description = "Obtain all starpieces",
    trigger =  measuredIf(menuCheck)
            && prev(starPieces) < 104+21+11
            && measured(starPieces == 104+21+11) // normal Starpieces + NPC Starpieces + Letter Starpieces
)

achievement(
    title = "A Secret For Most Players", points = 10,
    description = "Activate every hidden block",
    trigger =  measuredIf(menuCheck) && sum_of(blocks, y=>prev(y)) == sum_of(blocksNumb, y=>y)-1
            && measured(sum_of(blocks, y=>y) == sum_of(blocksNumb, y=>y))
)

achievement(
    title = "Cooking For Pros", points = 10,
    description = "Cook all 89 possible Recipes",
    trigger =  measuredIf(menuCheck) && sum_of(recipes, y=>prev(y)) == 89-1
            && measured(sum_of(recipes, y=>y) == 89)
)

achievement(
    title = "Too Special For My Recipe List", points = 2,
    description = "Cook a Tayce Special",
    trigger =  measuredIf(menuCheck) && prev(cooking) == 0x1c5
            && cooking == 0x00
)

for i in range(0,2) {
    ttl = [["A Heartful Reward","Heart"],["Feeling The Flower's Power","Flower"],["Badged Up","Badge"]]
    cl = (i/2)*20
    lv =  byte(0x10f297-(i/1)*3)
    if (i == 2) byte(0x10f29b)
    achievement(
        title = ttl[i][0], points = 5,
        description = format("Upgrade your {0} Points past {1}",ttl[i][1],50-cl),
        trigger =  measuredIf(menuCheck) && prev(lv) == 50-cl && lv > 50-cl
    )
}

achievement(
    title = "No Limits Afterall", points = 10,
    description = "Reach a Level of 28 with Mario",
    trigger =  measuredIf(menuCheck) && prev(lvl) == 27 && lvl == 28
)

for i in range(0,1) {
    flags = bitcount(0x0dbd7c+i*2) + bitcount(0x0dbd7d+i*2)
    btf = [["Info around The World","Mario's Letters"],["Uncovering The Truth","Luigi's Diary Pages"]]
    achievement(
        title = btf[i][0], points = 3,
        description = format("Read all of {0}",btf[i][1]),
        trigger =  menuCheck && prev(flags) == 10+i && flags == 11+i
    )
}

function letters() {
    Array = []
    for i in range(0,18) {
        array_push(Array, bit((4+i)%8, 0x0dbc85+(4+i)/8))
    }
    return Array
}

achievement(
    title = "Post Party", points = 3, type = "missable",
    description = "Read all of the partner letters",
    trigger =  menuCheck
            && sum_of(letters(),y=>(prev(y))) == length(letters())-1
            && sum_of(letters(),y=>(y)) == length(letters())
)

achievement(
    title = "Minigames", points = 5,
    description = "Win at every Minigame in the Minigame Room",
    trigger =  menuCheck && measured(tally_of([0x80042,0x80035,0x80036,0x80037],4,
               y=>once(prev(dialog) != y && dialog == y)))
)

leaderboard(
    title = "Whack-A-Mole",
    description = "Highest score earned in Whack-A-Mole",
    start = menuCheck && mainMap == 0x00 && subMap == 0x12 && prev(moleGame()) > 0 && moleGame() == 0,
    cancel = always_false(),
    submit = always_true(),
    value = moleGame(4),
    format = "Value"
)

for i in range(0,1) {
    mng = ["Smash","Jump"]
    for j in range(0,i*2) {
        jmp = ""
        g = 0x42
        b = 0x44
        val = smG/3
        if (i == 1) {
            jmp = format(" - {0}-Blocks",5+j*2)
            g = 0x35+j
            b = 0x34
            val = jpG
            if (j == 2) val = jpG*2
        }
        function id(l=g) => 0x80000+l
        str = menuCheck && mainMap == 0x19 && subMap == 2-i && prev(dialog) != id() && dialog == id()
        leaderboard(
            title = format("{0} Attack{1}",mng[i],jmp),
            description = format("Most Coins earned in {0} Attack{1}",mng[i],jmp),
            start = str,
            cancel = always_false(),
            submit = always_true(),
            value = val,
            format = "Value"
        )
        leaderboard(
            title = format("{0} Attack{1} - Win Streak",mng[i],jmp),
            description = format("Most Wins in a row in {0} Attack{1}",mng[i],jmp),
            start = str,
            cancel = always_false(),
            submit = __ornext(prev(mainMap) != mainMap || prev(subMap) != subMap || dialog == id(b)),
            value = tally(0,prev(dialog) != id() && dialog == id()),
            format = "Value"
        )
    }
}

leaderboard(
    title = "Stylish Bombing",
    description = "Highest amount of Bombette's stylish moves performed in a single turn",
    start =  menuCheck && state == 1 && partner == 3
          && prev(stylish) == 0 && stylish == 1
          && movecheck([0x92,0x93,0x94]),
    cancel = always_false(),
    submit = prev(pTRN) == 1 && pTRN == 0,
    value = tally(0,prev(stylish) != stylish),
    format = "Value"
)

leaderboard(
    title = "Stylish Power Bouncing",
    description = "Highest amount of Mario's stylish moves performed in a single turn",
    start =  menuCheck && state == 1
          && prev(stylish) == 0 && stylish == 1
          && movecheck([0x20]),
    cancel = always_false(),
    submit = prev(mTRN) == 1 && mTRN == 0,
    value = tally(0,prev(stylish) != stylish),
    format = "Value"
)

partnerMoves = [
    [0x85,2],[0x86],[0x88],
    [0x8b,2],[0x8c],[0x8d,2],[0x8e,2],
    [0x91],[0x92],[0x93],[0x94],
    [0x97],[0x98],[0x99],[0x9a],
    [0xb5],[0xb6],[0xb7,2],[0xb8,2], //0xb6 needs Prior
    [0xa3],[0xa4],[0xa5],[0xa6],
    [0xa9,2],[0xaa],[0xab],[0xac],
    [0xaf,2],[0xb0],[0xb1],[0xb2]
]

marioMoves = [
    [0x03,2],[0x08],[0x09],[0x0a,4],[0x0d,2],[0x0e],[0x0f], // 0x3 same as 0x4 and 0x5
    [0x11,4],[0x14],[0x15,4],[0x17,4],[0x1a,2],[0x1f],[0x20], // 0x1a same as 0x1b and 0x1c
    [0x21,3],[0x22,4],[0x25,2],[0x27,2],[0x2b,2],[0x2d,2],[0x2e,4],
    [0x2f,4],
]

function style (i) {
    if (length(i) == 2) stl = i[1]
    else stl = 1
    if (i[0] == 0xb6) mv = prior(moveID) == 0xb6
    else if (i[0] == 3 || i[0] == 0x1a) mv = movecheck([i[0],i[0]+1,i[0]+2])
    else mv = movecheck([i[0]])
    return mv && state == 1 && prev(stylish) == stl-1 && stylish == stl
}

for i in range(0,1) {
    chv = [["Nice Moves, Partner","the partner",partnerMoves],["Buy It, Use It, Style It","Mario",marioMoves]]
    achievement(
        title = chv[i][0], points = 5,
        description = format("Perfectly perform all of {0}'s stylish moves in a single session",chv[i][1]),
        trigger =  never(menuVal == 0 || music == 0xa5)
                && measured(tally_of(chv[i][2],length(chv[i][2]),y=>once(style(y))))
    )
}

ngp = {
    0: "",
    1: " | New Game+"
}


for i in range(0,length(modes)-1) modelookup[i] = modes[i]
for i in range(0,length(difficulty)-2) difficultylookup[i] = difficulty[i][0]
for i in range(0,length(items)-1) {
    itemlookup[0xff] = "No "
    itemlookup[0] = ""
    itemlookup[i+1] = format("{0} ",items[i])
}

rich_presence_conditional_display(menuVal == 0, "Mario is currently enjoying the Title Screen")
rich_presence_conditional_display(menuCheck && mainMap == 0 && subMap == 0x11, "Mario is currently setting up his playthrough{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup))
rich_presence_conditional_display(menuCheck && mainMap == 0x18, "Mario is currently enjoying the ending parade{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup))
rich_presence_conditional_display(menuCheck && mainMap == 0 && subMap == 0x10, "Mario is currently enjoying a nice firework to celebrate his end of an adventure{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup))

rich_presence_conditional_display(menuCheck && __ornext(any_of([1,5,0x0d],y=>character == y)) && state != 1,"Peach and Twink are currently walking around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && __ornext(any_of([1,5,7,0x0d],y=>character == y)) && state == 1 && music == 0x67,"Peach and Twink are currently fighting against Kammy Koopa{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && __ornext(any_of([1,5,7,0x0d],y=>character == y)) && state == 1,"Peach and Twink are currently fighting around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))

rich_presence_conditional_display(menuCheck && partner == 0 && state != 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] is currently walking around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && partner == 0 && state == 1 && music == 0x67,"Mario [Lv.{3} | {4}Boots | {5}Hammer] is currently fighting against Bowser{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && partner == 0 && state == 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] is currently fighting around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))

rich_presence_conditional_display(menuCheck && partner == 5 && state != 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] and Goompa are currently walking around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && partner == 5 && state == 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] and Goompa are currently fighting around {6}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("a", icon, maplookup))

rich_presence_conditional_display(menuCheck && state != 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] and {6} [Lv.{7}] are currently walking around {8}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("p", partner, partnerlookup),rich_presence_value("Value", pLP, "VALUE"),
rich_presence_lookup("a", icon, maplookup))
rich_presence_conditional_display(menuCheck && state == 1 && music > 5 && music < 0x10,"Mario [Lv.{3} | {4}Boots | {5}Hammer] and {6} [Lv.{7}] are currently fighting against {8}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("p", partner, partnerlookup),rich_presence_value("Value", pLP, "VALUE"),
rich_presence_lookup("b", measured(music*0x100+icon), bosslookup))
rich_presence_conditional_display(menuCheck && state == 1 && __ornext(any_of([5,0x66,0x67],y=>music == y)),"Mario [Lv.{3} | {4}Boots | {5}Hammer] and {6} [Lv.{7}] are currently fighting against {8}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("p", partner, partnerlookup),rich_presence_value("Value", pLP, "VALUE"),
rich_presence_lookup("b", measured(music*0x100+icon), bosslookup))
rich_presence_conditional_display(menuCheck && state == 1,"Mario [Lv.{3} | {4}Boots | {5}Hammer] and {6} [Lv.{7}] are currently fighting around {8}{0} | {1} Mode | {2} Difficulty",
rich_presence_lookup("n", newGame, ngp),rich_presence_lookup("m", modeVal, modelookup),
rich_presence_lookup("d", diffVal, difficultylookup),rich_presence_value("Value", lvl, "VALUE"),
rich_presence_lookup("i", byte(0x10f293), itemlookup),rich_presence_lookup("i", byte(0x10f292), itemlookup),
rich_presence_lookup("p", partner, partnerlookup),rich_presence_value("Value", pLP, "VALUE"),
rich_presence_lookup("a", icon, maplookup))


rich_presence_display("Playing Paper Mario: TTYD64\n//RP by Darky")