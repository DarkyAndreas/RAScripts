// Neighbours from Hell
// #ID = 30123

pointer = dword_be(0xdc)
pointerOff = (pointer & 0x1fffffff)
languageOff = byte(pointerOff - 0x470)
scene = byte(pointerOff + 0x2401)
impossible = byte(pointerOff + 0x2403)
check = pointer != 0x8033d550
menu = byte((dword_be(pointerOff+0x2438) & 0xffffff) +0x40257F)

sceneNumb = {}
modeNumb = {}
episodesClassic = []
episodesStandard = []
goldClassic = []
goldStandard = []

mode = ["standard","classic","impossible","freeplay"]
Mode = ["Standard","Classic","Impossible","Freeplay"]

language = {
    "English":  0,
    "German":   1,
    "French":   2,
    "Spanish":  3,
    "Italien":  4,
    "Dutch":    5,
    0: "English",
    1: "German",
    2: "French",
    3: "Spanish",
    4: "Italien",
    5: "Dutch"
}

sceneName = [
    "Peeping","Birthday","Pie","Piano","Bath","Buffet",
    "Submarine","Podium","Kite","Gong","Waterski","Harpoon",
    "Piglet","Sunny","Mothersday","Fitness","Laundry","Lifeboat",
    "Bollywood","Elevation","Melonbra","Redbull","Picnicboat","Finale",
    "Barbecue","Do It Yourself"
]

titles = {
    "Progression": {
        "Standard":     ["I'm as Mad as Hell, and I'm Not Going to Take This Anymore!","Turn on, Tune in",
                         "Welcome Home, Mr. Rottweiler","So, We Finally Get New Neighbours?"],
        "Classic":      ["Lights, Camera, ACTION!","I'm a Prankster, Not a Tour Guide",
                         "Their Homes and Their Hopes Looted and Burned","CUUUUUUUT!"],
        "Impossible":   ["Here's Woody!","Woody Brought You Dynamite for Your Birthday. Don't Ya Remember?",
                         "Shut Your Pie Hole!","Injecting Music and Hate Into People's Lives",
                         "I Prank You in the Shower, and Have a Snack","The Gentleman Who Ruined the Buffet",
                         "No Splashing, No Diving","Forget It Rottweiler, It's China",
                         "He Loved Red Kites and Blue Burning Flames","Let the Gong Ring Loud for Your Misery Day and Night",
                         "What's Up, Neighbour? Lost Your Skis?","Get the Harpoon Out of Your Chest",
                         "That'll Do Pig, That'll Do","There's No Place Like Home","A Boy's Best Friend Is His Mother",
                         "He Got an A in Science, but a D in Gym","Mixing the Laundry and Grocery List for Fresh Underwear",
                         "Just Keep Swimming","Did You Only Watch Bollywood Movies?","Oh, I Am Ready to Not Be Up High",
                         "He Used to Put Melons in My Bra All the Time","Flying to Infinity and Beyond!",
                         "You're Gonna Need a Bigger Boat","Hasta la Vista, Baby","They Call It a Royale with Cheese",
                         "Can't Rely on Anyone These Days"],
    },
    "Completion": {
        "Standard":     ["I'm Your Neighbour From, Uh, House 11","Picked a Hell of a Time to Go On Vacation, Mr. Neighbour",
                         "Have You Grown So Tired of the Same Old Thing?","Are We Done Being Neighbours?"],
        "Classic":      ["Well, My Neighbour... Half My House Is Gone","It's a Vacation and Not a Doctors Appointment",
                         "Beefing Up the Old Home Security, Huh?","Winning the Disloyalty of a Neighbour for 4 Consecutive Seasons"],
    },
    "Stamps": {
        "Standard":     ["Finding Our Long Forgotten Gold","We Got Some Gold Stamps to Cover",
                         "The True Price for His Freedom", "Eighth and Final Rule: You Have to Earn Gold"],
        "Classic":      ["Take the Gold Pill","Taking a Nice, Expensive Two-Week Vacation with His Mother",
                         "Rottweiler. Always Knew Someday You'd Come Walking Back Through","Gone for Gold"],
    },
    "Bonus": {
        "Standard":     ["This Episode Will Get Red Hot!","They're Heating Up the Home's Core","Home-wrecker",
                         "I Finally Invent Something That Works!","A Golden Bonus"],
        "Classic":      ["I Hope That's Not the Pig","Packing Heat","This Reeks of 5-Minute Crafts",
                         "Rottweiler, Can We Fix It?","House Flipper"],
    },
}

completion = ["at least","all"]

pranks = [20,28,34,38,13]

stats = {
    "English":  [0x4638d0,0x458290,0x456fd0,0x45f890,0x460950,0x459a90,
                 0x474cd0,0x454a90,0x4612d0,0x423f10,0x47c810,0x423110,
                 0x472390,0x47f710,0x482fd0,0x4835d0,0x471110,0x47bad0,
                 0x484e10,0x472b90,0x482390,0x486a90,0x471cd0,0x481d90,
                 0x479d90,0x48e810],
    "German":   [0x4616d0,0x45b090,0x45cdd0,0x465690,0x462750,0x4597d0,
                 0x474010,0x4557d0,0x462610,0x423dd0,0x47d6d0,0x466fd0,
                 0x475190,0x471510,0x488dd0,0x48b3d0,0x3bff10,0x47e090,
                 0x484e50,0x472ad0,0x4822d0,0x4869d0,0x484010,0x481cd0,
                 0x476b90,0x3bf610],
    "French":   [0x461010,0x45a2d0,0x45d710,0x460750,0x420c90,0x45a950,
                 0x475410,0x456950,0x463a10,0x424bd0,0x47e4d0,0x467dd0,
                 0x474250,0x4813d0,0x488390,0x487d10,0x48fdd0,0x47df10,
                 0x4770d0,0x473bd0,0x4833d0,0x487ad0,0x485410,0x482dd0,
                 0x47ac50,0x48f4d0],
    "Spanish":  [0x463cd0,0x4595d0,0x45c3d0,0x45fa10,0x460d50,0x45acd0,
                 0x4741d0,0x455cd0,0x4627d0,0x423dd0,0x47d6d0,0x462fd0,
                 0x473510,0x480590,0x4873d0,0x4869d0,0x48ef90,0x47ce90,
                 0x484fd0,0x473e50,0x482650,0x486d50,0x4841d0,0x486050,
                 0x479f10,0x48e690],
    "Italien":  [0x464b90,0x4593d0,0x45c290,0x460850,0x461cd0,0x45aad0,
                 0x475fd0,0x456ad0,0x4635d0,0x424fd0,0x47d8d0,0x4241d0,
                 0x474350,0x4814d0,0x488210,0x487890,0x48fed0,0x47f0d0,
                 0x477110,0x473c90,0x483490,0x487b90,0x472fd0,0x482e90,
                 0x47ad50,0x48f5d0],
}

birthday = {
    "pranks": {
        "English":  [0x47042F,0x470E2F,0x47102F,0x47362F],
        "German":   [0x46E22F,0x46EC2F,0x472E2F,0x46D42F],
        "French":   [0x47262F,0x46F02F,0x47322F,0x47582F],
        "Spanish":  [0x47182F,0x46E22F,0x47242F,0x474A2F],
        "Italien":  [0x47162F,0x46E02F,0x47242F,0x47482F],
    },
    "state": {
        "English":  [0x0046b62f],
        "German":   [0x0045d42f],
        "French":   [0x0046d82f],
        "Spanish":  [0x0046ca2f],
        "Italien":  [0x0046ca2f],
    },
    "music":    0x013c39bc,
    "sceneID":  0x01,
}

buffet = {
    "detection": {
        "English":  [0x00469434],
        "German":   [0x00469634],
        "French":   [0x0046a634],
        "Spanish":  [0x0046a834],
        "Italien":  [0x0046a834],
    },
    "music":    0x013c357c,
    "sceneID":  0x05,
}

kite = {
    "detection": {
        "English":  [0x00474234],
        "German":   [0x00475234],
        "French":   [0x00476434],
        "Spanish":  [0x00475434],
        "Italien":  [0x00476434],
    },
    "music":    0x0151a3fc,
    "sceneID":  0x08,
}

harpoon = {
    "state": {
        "English":  [0x00476e2f],
        "German":   [0x0047402f],
        "French":   [0x0047502f],
        "Spanish":  [0x0047522f],
        "Italien":  [0x0047602f],
    },
    "music":    0x0151915c,
    "sceneID":  0x0b,
}

mothersday = {
    "coords": {
        "English":  [0x00495044],
        "German":   [0x00496e44],
        "French":   [0x00496244],
        "Spanish":  [0x00495444],
        "Italien":  [0x00496244],
    },
    "music":    0x0150157c,
    "sceneID":  0x0e,
}

laundry = {
    "detection": {
        "English":  [0x004a1e34],
        "German":   [0x004a3c34],
        "French":   [0x004a4034],
        "Spanish":  [0x004a3234],
        "Italien":  [0x004a4234],
    },
    "music":    0x014fd6bc,
    "sceneID":  0x10,
}

bollywood = {
    "detection": {
        "English":  [0x00495a34],
        "German":   [0x00495c34],
        "French":   [0x00496c34],
        "Spanish":  [0x00495e34],
        "Italien":  [0x00496e34],
    },
    "music":    0x016fb3fc,
    "sceneID":  0x12,
}

redbull = {
    "neighbour": {
        "English":  [0x0049582c],
        "German":   [0x0049882c],
        "French":   [0x00499a2c],
        "Spanish":  [0x00498a2c],
        "Italien":  [0x00499a2c],
    },
    "mother": {
        "English":  [0x0049622c],
        "German":   [0x0049942c],
        "French":   [0x0049a42c],
        "Spanish":  [0x0049962c],
        "Italien":  [0x0049a62c],
    },
    "woody": {
        "English":  [0x00497a2c],
        "German":   [0x0049ac2c],
        "French":   [0x0049bc2c],
        "Spanish":  [0x0049ae2c],
        "Italien":  [0x0049be2c],
    },
    "music":    0x0176e1bc,
    "sceneID":  0x15,
}

function mode(i, calc) {
    if (i == 0) t = low4(pointerOff + 0x23C8 + calc)
    else t = high4(pointerOff + 0x23C8 + calc)
    
    return t
}

function goldStamp(season, mode) {
    function g(x) => (pointerOff + 0x23F2 + mode*4 + x)
    
    gold = {
    0: [bit0(g(0)), bit1(g(0)), bit2(g(0)), bit3(g(0)), bit4(g(0)), bit5(g(0))],
    1: [bit6(g(0)), bit7(g(0)), bit0(g(1)), bit1(g(1)), bit2(g(1)), bit3(g(1))], 
    2: [bit4(g(1)), bit5(g(1)), bit6(g(1)), bit7(g(1)), bit0(g(2)), bit1(g(2))],
    3: [bit2(g(2)), bit3(g(2)), bit4(g(2)), bit5(g(2)), bit6(g(2)), bit7(g(2))],
    4: [bit0(g(3)), bit1(g(3))],
    }
        
    return gold[season]
}

for i in range (0, 3) {
    for j in range (0, length(sceneName)-1) {
        sceneNumb[j + 0x1c * i] = sceneName[j]
        modeNumb[j + 0x1c * i] = Mode[i]
    }
}

function sceneCalc(ID) {
    Array = []
    for i in range (0, 3) array_push(Array, ID + 0x1c * i)
    return Array
}

for i in range (0, 1) {
    for j in range (0,1) {
        for l in range (0, 3) {
            if (j == 0) t = "Progression"
            else t = "Completion"
            if (j == 0 && l == 3) tp = "win_condition"
            else tp = ""
            seasons = []
            for x in range (0, 5) array_push(seasons, mode(i, x + 5 * l + l))
            pr = pranks[l] + j * 6
            achievement(
                title = format("{0}",titles[t][Mode[i]][l]), points = 5 + 5 * j, type = tp,
                description = format("Complete Season {0} in {1} mode by pulling {2} {3} pranks",l+1,Mode[i],completion[j],pr),
                trigger =  check
                        && prev(sum_of(seasons, y=>y) > 0)
                        && prev(sum_of(seasons, y=>y) < pr)
                        && sum_of(seasons, y=>y) >= pr
            )
            if (j == 1) {
            achievement(
                title = format("{0}",titles["Stamps"][Mode[i]][l]), points = 5 + 5 * j,
                description = format("Collect all Gold Stamps of Season {0} in {1} mode",l+1,Mode[i]),
                trigger =  check && prev(sum_of(goldStamp(l, i), y=>y)) == 5 && sum_of(goldStamp(l, i), y=>y) == 6
            )
            }
            array_pop(seasons)
        }
    }
    for l in range (0, 1) {
        achievement(
            title = format("{0}",titles["Bonus"][Mode[i]][2*l]), points = 2,
            description = format("Unlock the bonus episode \"{0}\" in {1} mode",sceneNumb[0x50 + l],Mode[i]),
            trigger =  check && prev(sum_of(goldStamp(1+l, i), y=>y)) == 2 && sum_of(goldStamp(1+l, i), y=>y) == 3
        )
        achievement(
            title = format("{0}",titles["Bonus"][Mode[i]][1+2*l]), points = 3,
            description = format("Pull of all {0} pranks in the bonus episode \"{2}\" of {1} mode",6+l,Mode[i],sceneNumb[0x50 + l]),
            trigger =  check && prev(sum_of(goldStamp(1+l, i), y=>y)) >= 3 && prev(mode(i, 0x18 + l)) < 6+l && mode(i, 0x18 + l) == 6+l
        )
    }
    achievement(
        title = format("{0}",titles["Bonus"][Mode[i]][4]), points = 5,
        description = format("Collect all Gold Stamps in the bonus episodes of {0} mode",Mode[i]),
        trigger =  check && prev(sum_of(goldStamp(4, i), y=>y)) == 1 && sum_of(goldStamp(4, i), y=>y) == 2
    )
}

for i in range (0, length(sceneName)-1) {
    if (i == 23) tp = "win_condition"
    else tp = ""
    if (i < 24) dc = ""
    else dc = "bonus "
    achievement(
    title = format("{0}",titles["Progression"]["Impossible"][i]), points = 5, type = tp,
    description = format("Complete the {1}episode \"{0}\" in Impossible mode",sceneNumb[i+0x38], dc),
    trigger =  check && prev(impossible) == i && impossible == i+1
    )
}


//Challenges
function alts(i,j) {
    return (i("English",j)
         || i("German",j)
         || i("French",j)
         || i("Spanish",j)
         || i("Italien",j))
}

function start(i) {
    return never(all_of(sceneCalc(i["sceneID"]), y=>scene != y)) && challenge(i["music"])
}

function challenge(i) {
    music = dword_be(i)
    pausing = music != 0x205
    laughing = music != 0x76
    return once(music == 0xa8) && trigger_when(prev(music) != music && prev(pausing) && pausing && prev(laughing) && laughing)
}

function languageCheck(i) {
    if (i == 0) langCheck = languageOff != language["Dutch"]
    else langCheck = always_true()
    return unless(languageOff != i && langCheck)
}

function challengeCheck(lang, i) {
    return languageCheck(language[lang]) && never(dword_be(i + 8) != 3)
}

function trigger(i) {
    return trigger_when(dword_be(i) == dword_be(i + 4))
}

function detectionCalc(i) {
    xcoord = dword_be(i + 0x10)
    ycoord = dword_be(i + 0x14)
    run = dword_be(i + 0x24)
    ndetection = prev(xcoord) + prev(ycoord) != xcoord + ycoord && run == 0
    detection = dword_be(i) + dword_be(i + 0x24) != 0
    return once(ndetection) && detection
}

function birthdayChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    state = byte(currentscene["state"][lang][0]) == 0x25
    return challengeCheck(lang,currentState)
        && never(any_of(currentscene["pranks"][lang], y=>once(state && never(once(byte(y) == 0x20)))))
        && trigger(currentState)
}

function buffetChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    return challengeCheck(lang,currentState)
        && never(dword_be(currentscene["detection"][lang][0]) != 0
        || dword_be(currentscene["detection"][lang][0] + 0x10) < 0xf0000000
        && prev(dword_be(currentscene["detection"][lang][0] + 0x24)) == 0 && dword_be(currentscene["detection"][lang][0] + 0x24) != 0)
        && trigger(currentState)
}

function kiteChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    return challengeCheck(lang,currentState)
        && trigger_when(once(dword_be(currentscene["detection"][lang][0]) != 0 && dword_be(currentState) == 0)
        && once(dword_be(currentscene["detection"][lang][0]) != 0 && dword_be(currentState) == dword_be(currentState + 4) - 1))
        && trigger(currentState)
}

function harpoonChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    currentPrank = dword_be(currentState)
    finalPrank = dword_be(currentState + 4)
    state = byte(currentscene["state"][lang][0]) == 0x25
    nstate = byte(currentscene["state"][lang][0]) == 0x21
    return challengeCheck(lang,currentState)
        && never(currentPrank > 0 && currentPrank < finalPrank - 1 && nstate) && never(byte(currentscene["state"][lang][0] - 0x02) == 0x08)
        && trigger_when(once(prev(currentPrank) == 0 && currentPrank == 1 && state))
        && trigger_when(once(prev(currentPrank) == finalPrank - 1 && currentPrank == finalPrank && state))
        && trigger(currentState)
}

function mothersdayChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    coords = currentscene["coords"][lang][0]
    return challengeCheck(lang,currentState)
        && never(repeated(2, prev(dword_be(coords)) == 0x1ab && dword_be(coords) == 0x137))
        && trigger(currentState)
}

function laundryChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    detection = currentscene["detection"][lang][0]
    return challengeCheck(lang,currentState)
        && never(once(detectionCalc(detection)) && detectionCalc(detection))
        && trigger(currentState)
}

function bollywoodChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    detection = currentscene["detection"][lang][0]
    return challengeCheck(lang,currentState)
        && trigger_when(once(once(detectionCalc(detection)) && detectionCalc(detection)))
        && trigger(currentState)
}

function redbullChallenge(lang,i) {
    currentscene = i
    currentState = stats[lang][currentscene["sceneID"]]
    neighbour = currentscene["neighbour"][lang][0]
    mother = currentscene["mother"][lang][0]
    woody = currentscene["woody"][lang][0]
    function detection(i) => dword_be(i + 0x08)
    function run(i) => dword_be(i + 0x2C)
    return challengeCheck(lang,currentState)
        && never(detection(neighbour) != 0 || run(neighbour) != 0
        || detection(mother) != 0 || run(mother) != 0
        || dword_be(woody + 0x18) >= 0x217 && byte(woody + 0x03) == 0x25)
        && trigger(currentState)
}

achievement(
    title = format("Drop In a Little Dynamite There and Try ‘N Cook ‘Im Down"), points = 5,
    description = format("Complete the episode \"Birthday\" without losing a life and without hiding before activating each prank at least once"),
    trigger =  never(!check) && start(birthday)
            && alts(birthdayChallenge,birthday)
)

achievement(
    title = format("Hunger for Pranks"), points = 5,
    description = format("Complete the episode \"Buffet\" without losing a life and without being detected even once"),
    trigger =  never(!check) && start(buffet)
            && alts(buffetChallenge,buffet)
)

achievement(
    title = format("Benjamin Franklin Comes Knockin' on Your Door"), points = 5,
    description = format("Complete the episode \"Kite\" without losing a life, while alerting the neighbour before the first and last prank"),
    trigger =  never(!check) && start(kite)
            && alts(kiteChallenge,kite)
)

achievement(
    title = format("The Pain Inside a Dark Place"), points = 5,
    description = format("Complete the episode \"Harpoon\" without losing a life, while watching all pranks happen from inside the barrel without leaving it or using the prank camera"),
    trigger =  never(!check) && start(harpoon)
            && alts(harpoonChallenge,harpoon)
)

achievement(
    title = format("Proudly Ruining a Mother's Life"), points = 5,
    description = format("Complete the episode \"Mothersday\" without losing a life and without letting the neighbour enter the bathroom more than once"),
    trigger =  never(!check) && start(mothersday)
            && alts(mothersdayChallenge,mothersday)
)

achievement(
    title = format("Keep It Chill on Sunday"), points = 5,
    description = format("Complete the episode \"Laundry\" without losing a life and without alerting the neighbour more than once"),
    trigger =  never(!check) && start(laundry)
            && alts(laundryChallenge,laundry)
)

achievement(
    title = format("What We've Got Here Is Failure to Communicate"), points = 5,
    description = format("Complete the episode \"Bollywood\" without losing a life, while alerting the neighbour at least twice"),
    trigger =  never(!check) && start(bollywood)
            && alts(bollywoodChallenge,bollywood)
)

achievement(
    title = format("This Bull Can Only See Red, White, Red"), points = 5,
    description = format("Complete the episode \"Redbull\" hiding only inside the cart, without losing a life and without alerting neither the mother nor the neighbour"),
    trigger =  never(!check) && start(redbull)
            && alts(redbullChallenge,redbull)
)

life = {
    0: "0 Lives",
    1: "1 Life",
    2: "2 Lives",
    3: "3 Lives",
}


rich_presence_display("Woody is currently on his way to the filmset \n//RP by DarkyAndreas")
for i in range (0, 1) {
    if (i == 0) {t = episodesClassic z = goldClassic}
    else {t = episodesStandard z = goldStandard}
    for j in range (0, length(sceneName)-1)  array_push(t, mode(i, j))
    for l in range (0, 4)  array_push(z, sum_of(goldStamp(l, i), y=>y))
    rich_presence_conditional_display(!check && menu != 0x0b && __ornext(menu == 0x0c+i || prior(menu == 0x0c+i)),"Woody is currently selecting the next episode in {2}{3} Mode | {0} / 157 Pranks | {1} / 26 Golden Stamps",
    rich_presence_value("V", sum_of(t, y=>y), "VALUE"), rich_presence_value("V", sum_of(z, y=>y), "VALUE"),
    rich_presence_lookup("E", menu, {0x0C: "Standard",0x0D: "Classic"}), rich_presence_lookup("E", prior(menu), {0x0C: "Standard",0x0D: "Classic"})
    )
}
rich_presence_conditional_display(!check && menu != 0x0b && __ornext(menu == 0x0e || prior(menu == 0x0e)),"Woody is currently selecting the next episode in Freeplay Mode")
rich_presence_conditional_display(!check && menu != 0x0b && __ornext(menu == 0x0f || prior(menu == 0x0f)),"Woody is currently selecting the next episode in Impossible Mode | Current Progress: {0}",
rich_presence_lookup("S", impossible, sceneNumb))
rich_presence_conditional_display(!check,"Woody is currently in the Main Menu")
for i in range (0, 4) {
    for j in range (0, length(sceneName)-1) {
        scenes = []
        currentLang = language[i]
        for l in range (0, 3) array_push(scenes, scene == j + 0x1c * l)
        if (language[currentLang] == 0) langCheck = languageOff == language["Dutch"]
        else langCheck = always_true()
        rich_presence_conditional_display(never(!check) && __ornext(languageOff == i || langCheck) && __ornext(any_of(scenes, y=>y))
        && once(prev(dword_be(stats[currentLang][j] + 0x18) == 0) && dword_be(stats[currentLang][j] + 0x18) == 1),
        "{0}{1} | {2} Mode | {3} | {4}/{5} Pranks | {6}/{5} Rages",
            rich_presence_lookup("L", byte(0), {}, "Woody is currently pranking his neighbour in "),
            rich_presence_lookup("S", scene, sceneNumb), rich_presence_lookup("M", scene, modeNumb),
            rich_presence_lookup("P", dword_be(stats[currentLang][j] + 0x08), life),
            rich_presence_value("V", dword_be(stats[currentLang][j] + 0x00), "VALUE"),
            rich_presence_value("V", dword_be(stats[currentLang][j] + 0x04), "VALUE"),
            rich_presence_value("V", dword_be(stats[currentLang][j] + 0x10), "VALUE")
        )
    }
}