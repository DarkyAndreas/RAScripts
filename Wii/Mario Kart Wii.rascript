// Mario Kart Wii
// #ID = 11071


function code(i) => ascii_string_equals(0x00, codes[i])
function baseChain(first,offsets,lastType) {
    type = dword_be
    mask = 0x1fffffff
    Array = [type(first) & mask]
    if (length(offsets) > 1) {
        for i in range(0,length(offsets)-2) {
            Array2 = []
            array_push(Array2,type(array_pop(Array) + offsets[i]) & mask)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}
function license(region) => baseChain(ptrStats[region],[0x37],byte)
function getStats(region,offset,lastType=dword_be) => baseChain(ptrStats[region],[offset+license(region)],lastType)
function getMenuData(region,off,lastType=dword_be) => baseChain(ptrMenu[region],off,lastType)
function getMainMenu(region) => baseChain(ptrMenu[region],[0x00,0x00],dword_be)
function getPlayerData(region,off,lastType=dword_be) => baseChain(ptrPlayerData[region],off,lastType)
function getRaceData(region,off,lastType=dword_be) => baseChain(ptrRaceData[region],off,lastType)
function getRaceInfo(region,off,lastType=dword_be) => baseChain(ptrRaceInfo[region],off,lastType)
function getItemHolder(region,off,lastType=dword_be) => baseChain(ptrItemHolder[region],off,lastType)
function getObjectData(region,off,lastType=dword_be) => baseChain(ptrObjectData[region],off,lastType)
function getObjectManager(region,off,lastType=dword_be) => baseChain(ptrObjectManager[region],off,lastType)
function getPlayerGraphicsData(region,off,lastType=dword_be) => baseChain(ptrPlayerGraphicsData[region],off,lastType)
function getMusicData(region) => baseChain(ptrMusic[region],[0x38,0x3C,0xbc],dword_be)
function getFrames(region) => dword_be(frames[region])

ccLookup = {}
vsLookup = {}
mapLookup = {}
cupLookup = {}
characterLookup = {}
vehicleLookup = {}
battleLookup = {}
colorLookup = {}
titles = {
    "Cups": [
        ["Brighter than a Golden Star","A Special Suprise",
         "Fresh New Paint","That's Shocking!"],
        ["Makin' the Waves","View of Gold",
         "The Power Is in Your Hands","Through the Sharp Thorns"],
        ["Tree of Faith","Crowned the Victor",
         "Reeking Havoc in the Jungle","Mountain Madness"],
        ["Volcanic Wipeout","Waiting for the Starman",
         "Chaos Circuit","Crushin' the Party"]
    ],
    "Stars": [
        ["Welcome to Mario Kart!","Mushroom Kingdom Rampage",
         "Sunset's Shining Star","Dried-up Exhaust Pipes",
         "Royal Sunshine","Keeping It Cool",
         "Burning Rubber","Real Retro Feelings"],
        ["Milking the Wins","Getting Your Money's Worth",
         "Flow of the Waves","Night Crew Cruising",
         "Hungry for Omelettes","Blowing up the Competition",
         "Developing Block-O-Phobia","Fresh Flower Parade"],
        ["Overcoming the Void","Please Respect the Shy-Guys",
         "Leaf It to Me!","King of Karts",
         "Scared of My Driving Skills?","Escaping the City Crisis",
         "Even Monkeys Can Drive","Freefall from Peak"],
        ["Industrial Revolution","Getting Greedy",
         "Hot Rock Rumble","Shooting for the Stars",
         "A Classic Never Dies","Giving the Audience a Real Show",
         "All Bark, No Bite","Fierce Final"]
    ],
    "Credits": [
        "Slow and Steady Wins the Race","Double the Speed, Double the Pressure",
        "Shifting Into Overdrive","Out of Control",
        "Putting the Crew Together"
    ],
    "Unlocks": [
        "Wizard on two Wheels","Kartastrophic Clutch","Mythical Mirror"
    ],
    "Characters": [
        "Bone-Dry Breaker","Pink Power","Cheeky Princess","Lucky Lui",
        "One Tough Kong","Learning from Papa","Royal Rival","One Killer Lady",
        "Stripping the King","Big Bad Boo","The One and Only","Ruler of the Universe",
        "Check Mii Out","Mii, Myself and I"
    ],
    "Vehicles": [
        "Cheap Moves","Monster on Four Wheels","Show Me Your Moves","Boosting My Speed",
        "Real Horsepower","Glory and Glamour","Cheeky Chomper","Slick in Style",
        "Basted Beast","Little Ducky","Magic Trickster","Popping on Impact",
        "Rapid Fire Exhaustion","Storming the Circuit","Save the Animals",
        "Present from the Galaxy","Shooting for a win","Dark Ties"
    ],
    "Time Trial": [
        "Circuit Sprint","Take the L","Confidence Boost","Second Offense",
        "The Mushrooms Quirk","Throwing a Parade","Working Class","Break in Blue",
        "Lucky 7's","Formula M","Sweet Shopping","Job Application",
        "Withstanding the Snowstorm","Crossing Borders","Rotten and Selfish","Digging for Gold",
        "Queen of Sarasaland","Lover of L","Animal Abuse","Koopa Krew",
        "Plain Asia","Autumn Plains","Fires of Mushroom Kingdom","Surviving the Heat",
        "Ancient Temple Robber","Dry Dream","Cruising Colony","Riding Moonshine",
        "No Laughing Matter","Impressing the Ruler","Star of the Road","Road to the Stars",
        "Record Waves","Beach Buster","Fall from Grace","Wavedash Novice",
        "Horrific and Heinous","Horror on the Bike","Way to Victory","Racing for the Prize",
        "Invulnerable Penguins","Pengu Panic","Don't Get Shy Now","Burying the Faith in Sand",
        "Rock on the Street","Delfino Swinging Show","One More Step","Beautiful Performance",
        "Not Dying on That Hill","Hill After Hill","Cubic Force","Theory of Tempo",
        "Jungle of Secrets","Jungle Step","Rolling Cycles","Plumbers Paradise",
        "Blocky Clutterfunk","Retro Master","Setting the Flowers on Fire","3x3 Eyed Flower",
        "Keep It Funky","Mountain of Eternal Darkness","Ruler of the Playground","Teaching Some Manners"
    ],
    "Extra": [
        "Wiinning with Ease","Nostalgia Nexus",
        "Fly Me to the Moon","Professional Robber",
        "Balloon Hoarder","Making some Bank",
        "Let Me Solo Them","Cooporative Fun",
        "Power to the Mii"
    ],
    "Items": [
        "No POWer Required","Planned Protection",
        "Crushing Dreams","Business as Usual",
        "All I See is Blue","Playing a Dangerous Game",
        "Item Smuggling","Loadout Mistake",
        "Friendly Aggression"
    ],
    "Challenges": [
        "Giving the Fans a Show","Hazard on the Road",
        "Prince Bouncy","OSHA Violations",
        "Backwards Boogie","Desire to Drive",
        "The Far Side of the Mountain","Phantom Thief",
        "Striking Crisis","Water Resistance",
        "Piling Up the Problems","Requiem of the Road",
        "Tricky Trouble","Styling Freak",
        "Firing Up the Gas","Comet in the Sky",
        "Catastrophic Quickness","Faulty Engine Express",
        "Seeking the Scare","Pipe to Doom",
        "Controlling the Drift","Xplosive Steps",
        "Glossy Guidance","Golden Performance",
        "Bonemans Adventure","Dry Out the Terror",
        "Manners of the Apes","Keeping the Safe Space",
        "Dangerous Drive","Giving Them a Chance",
        "King of Kong","Tearing It Down"
    ]
}
codes = {
    "EU": "RMCP",
    "US": "RMCE",
    "JP": "RMCJ",
    "KO": "RMCK",
}
ptrPlayerData = {
    "EU": 0x009c18f8,
    "US": 0x009bd110,
    "JP": 0x009c0958,
    "KO": 0x009aff38,
}
ptrRaceData = {
    "EU": 0x009bd728,
    "US": 0x009b8f68,
    "JP": 0x009bc788,
    "KO": 0x009abd68,
}
ptrRaceInfo = {
    "EU": 0x009bd730,
    "US": 0x009b8f70,
    "JP": 0x009bc790,
    "KO": 0x009abd70,
}
ptrItemHolder = {
    "EU": 0x009c3618,
    "US": 0x009bee20,
    "JP": 0x009c2678,
    "KO": 0x009b1c58,
}
ptrStats = {
    "EU": 0x009bd748,
    "US": 0x009b8f88,
    "JP": 0x009bc7a8,
    "KO": 0x009abd88,
}
ptrMenu = {
    "EU": 0x009c1e38,
    "US": 0x009bd508,
    "JP": 0x009c0e98,
    "KO": 0x009b0478,
}
ptrObjectData = {
    "EU": 0x009c2ef0,
    "US": 0x009be730,
    "JP": 0x009c1f50,
    "KO": 0x009b1530,
}
ptrObjectManager = {
    "EU": 0x009c4330,
    "US": 0x009bfaf0,
    "JP": 0x009c3390,
    "KO": 0x009b2970,
}
ptrPlayerGraphicsData = {
    "EU": 0x009c5278,
    "US": 0x009c0ab8,
    "JP": 0x009c42d8,
    "KO": 0x009b38b8,
}
ptrRaceGraphicsData = {
    "EU": 0x009c1870,
    "US": 0x009bd0b0,
    "JP": 0x009c08d0,
    "KO": 0x009afeb0,
}
ptrMusic = {
    "EU": 0x009c2318,
    "US": 0x009bdb58,
    "JP": 0x009c1378,
    "KO": 0x009b0958,
}
ptrCamera = {
    "EU": 0x009c19a4,
    "US": 0x009bd184,
    "JP": 0x009c0a04,
    "KO": 0x009affe4,
}
ptrLakitu = {
    "EU": 0x009c28b8,
    "US": 0x009be0f8,
    "JP": 0x009c1918,
    "KO": 0x009b0ef8,
}
ptrBalloons = {
    "EU": 0x009c4748,
    "US": 0x009bff98,
    "JP": 0x009c37a8,
    "KO": 0x009b2d88,
}
pause = {
    "EU": 0x009c1874,
    "US": 0x009bd0b4,
    "JP": 0x009c08d4,
    "KO": 0x009afeb4,
}
frames = {
    "EU": 0x009c38c0,
    "US": 0x009bf0b8,
    "JP": 0x009c2920,
    "KO": 0x009b1f00,
}
menus = {
    0x00: "Launching the Game",
    0x01: "Powering off their Wii",
    0x02: "Launching the Mario Kart Channel installer",
    0x03: "Selecting their Region",
    0x04: "Returning to the Wii Menu",
    0x05: "Resetting to the Title Screen",
    0x10: "Creating a new save",
    0x11: "Save File is corrupted",
    0x12: "Changed their Country",
    0x13: "Cannot save the data",
    0x14: "Cannot acces system memory",
    0x15: "Cannot access Mii data",
    0x16: "Seeing the ESRB Warning",
    0x17: "Being told to use 60Hz instead of 50Hz",
    0x18: "Being told to use 60Hz instead of 50Hz",
    0x35: "Watching the Grand Prix Award Ceremony",
    0x36: "Watching the VS Award Ceremony",
    0x37: "Watching the Team-VS Award Ceremony",
    0x38: "Watching the Battle Award Ceremony",
    0x39: "Watching the Credits",
    0x3a: "Watching the Credits",
    0x3b: "Watching the Credits",
    0x3c: "Watching the Credits",
    0x3d: "Posing with the crew for beating the Grand Prix mode",
    0x3e: "Posing with the crew for beating the Grand Prix mode",
    0x3f: "Currently chilling in the Main Menu",
    0x40: "Currently chilling in the Main Menu",
    0x41: "Currently chilling in the Main Menu",
    0x42: "Currently chilling in the Main Menu",
    0x43: "Currently chilling in the Main Menu",
    0x45: "Currently selecting a Mii",
    0x46: "Currently selecting a Mii",
    0x47: "Currently checking their License Settings",
    0x48: "Currently in the Single Player Menu",
    0x49: "Currently in the Single Player Menu",
    0x4a: "Currently in the Single Player Menu",
    0x4b: "Currently in the Single Player Menu",
    0x4c: "Currently in the Single Player Menu",
    0x4d: "Currently in the Single Player Menu",
    0x4e: "Currently in the Single Player Menu",
    0x4f: "Currently in the Single Player Menu",
    0x50: "Currently in the Single Player Menu",
    0x51: "Sending the Ghost Data to a friend...",
    0x53: "Watching a Replay",
    0x54: "Preparing for multiplayer fun",
    0x5a: "About to connect to the Wi-Fi service with a second player, waiting for them to pick a Mii",
    0x78: "Disconnected from the Wi-Fi services",
    0x79: "Disconnected from the Wi-Fi services",
    0x7a: "Currently in the Mario Kart Channel",
    0x7b: "Currently in the Mario Kart Channel",
    0x7c: "Currently in the Mario Kart Channel",
    0x7d: "Checking the latest Time Trial Leaderboard stats in the Mario Kart Channel",
    0x7e: "Checking the latest Time Trial Leaderboard stats in the Mario Kart Channel",
    0x7f: "Preparing for a Ghost Race",
    0x80: "Preparing for a Ghost Race",
    0x81: "Preparing for a Ghost Race",
    0x82: "Checking their downloaded Ghost list",
    0x83: "Checking out their Friend list",
    0x84: "Checking out their Friend list",
    0x85: "Preparing for a Competition",
    0x86: "Preparing for a Competition",
    0x87: "Preparing for a Competition",
    0x88: "Preparing for a Competition",
    0x89: "Preparing for a Competition",
    0x8a: "Inviting a Friend via the Message Board",
    0x8b: "Downloading the latest data...",
    0x8c: "Changing some settings around in the Options menu",
    0x8d: "Adding the Mario Kart Channel...",
    0x8e: "Choosing their new region",
    0x8f: "Joining the message service...",
    0x90: "Unlocked a new character",
    0x91: "Unlocked a new vehicle",
    0x92: "Unlocked a new character",
    0x93: "Unlocked a new mode",
    0x94: "In the Unused Mission Mode",
    0x95: "Insert the Game Disc",
    0x96: "Cannot acces system memory",
    0x97: "Cannot access Mii data",
    0x98: "Disconnected from the Wi-Fi services",
    0x99: "Seeing the ESRB Warning",
    0x9a: "Selecting their License",
    0x9b: "Selecting their License",
    0x9c: "Selecting their License",
    0x9d: "Selecting their License",
    0x9e: "In the Mario Kart Channel",
    0x9f: "In the Mario Kart Channel",
    0xa0: "In the Mario Kart Channel",
    0xa1: "Checking the Mario Kart Channel leaderboards",
    0xa2: "Checking the Mario Kart Channel competition leaderboards",
    0xa3: "Preparing for a Ghost Race",
    0xa4: "Checking their downloaded Ghost list",
    0xa5: "Checking out their Friend list",
    0xa6: "Preparing for a Competition",
    0xa7: "Inviting a Friend via the Message Board",
    0xa8: "Received an invitation from a friend via the Message Board",
    0xa9: "Downloading the latest data...",
    0xaa: "Changing some settings around in the Options menu",
    0xab: "Choosing their new region",
    0xac: "Joining the message service..."
}


regions = ["EU","US","JP","KO"]
cup = ["Mushroom","Flower","Star","Special","Shell","Banana","Leaf","Lightning"]
cc = ["50cc","100cc","150cc","Mirror mode"]
vs = ["","Team-"]
battle = ["Balloon Battle","Coin Runners"]
vehicle = ["Standard Kart S","Standard Kart M","Standard Kart L",
           "Baby Booster","Nostalgia 1","Offroader","Concerto",
           "Wild Wing","Flame Flyer","Cheep Charger","Turbo Blooper",
           "Piranha Prowler","Rally Romper","Royal Racer","Aero Glider",
           "Blue Falcon","B Dasher Mk 2","Dragonetti","Standard Bike S",
           "Standard Bike M","Standard Bike L","Bullet Bike","Mach Bike",
           "Bowser Bike","Nanobike","Bon Bon","Wario Bike","Quacker",
           "Rapide","Twinkle Star","Magikruiser","Nitrocycle","Torpedo",
           "Bubble Bike","Dolphin Dasher","Phantom"]
character = ["Mario","Baby Peach","Waluigi","Bowser","Baby Daisy",
             "Dry Bones","Baby Mario","Luigi","Toad","Donkey Kong",
             "Yoshi","Wario","Baby Luigi","Toadette","Koopa Troopa",
             "Daisy","Peach","Birdo","Diddy Kong","King Boo",
             "Bowser Jr.","Dry Bowser","Funky Kong","Rosalina","Mii"]
map = ["Mario Circuit","Moo Moo Meadows","Mushroom Gorge","Grumble Volcano",
       "Toad's Factory","Coconut Mall","DK's Snowboard Cross","Wario's Gold Mine",
       "Luigi Circuit","Daisy Circuit","Moonview Highway","Maple Treeway",
       "Bowser's Castle","Rainbow Road","Dry Dry Ruins","Koopa Cape",
       "GCN Peach Beach","GCN Mario Circuit","GCN Waluigi Stadium","GCN DK Mountain",
       "DS Yoshi Falls","DS Desert Hills","DS Peach Gardens","DS Delfino Square",
       "SNES Mario Circuit 3","SNES Ghost Valley 2","N64 Mario Raceway",
       "N64 Sherbet Land","N64 Bowser's Castle","N64 DK's Jungle Parkway",
       "GBA Bowser's Castle 3","GBA Shy Guy Beach","Delfino Pier","Block plaza",
       "Chain Chomp Roulette","Funky Stadium","Thwomp Desert","GCN Cookie Land",
       "DS Twilight House","SNES Battle Course 4","GBA Battle Course 3","N64 Skyscraper"]
color = ["🟥","🟦",""]
staff = [
    [0x07,["sato",0x10,[1,26,376]],["Uta♪",0x16,[1,19,419]]],
    [0x04,["YuNya",0x03,[1,34,159]],["Tkym",0x15,[1,25,909]]],
    [0x0d,["Murak",0x1b,[2,10,807]],["Miki",0x06,[2,1,11]]],
    [0x08,["Misa",0x21,[2,16,548]],["GQO",0x0f,[2,5,593]]],
    [0x00,["==Kony",0x1c,[1,39,469]],["fuyu",0x10,[1,33,702]]],
    [0x0f,["SiMO",0x19,[2,24,924]],["MUGI★",0x07,[2,13,333]]],
    [0x09,["mokke",0x14,[2,28,318]],["KOZ★",0x08,[2,17,546]]],
    [0x0b,["morimo",0x1a,[2,14,932]],["♪Ryo",0x08,[2,4,800]]],
    [0x0f,["Toki",0x0d,[1,51,617]],["Taeko",0x16,[1,41,362]]],
    [0x0e,["Rose",0x09,[2,54,897]],["morimo",0x21,[2,41,370]]],
    [0x12,["pico",0x04,[2,50,229]],["MUGI★",0x1f,[2,37,812]]],
    [0x15,["Gorin",0x05,[2,22,437]],["aki",0x20,[2,11,852]]],
    [0x0a,["Kei",0x04,[2,25,904]],["Akito",0x1f,[2,14,286]]],
    [0x10,["KOZ★",0x01,[2,9,956]],["Koh",0x16,[2,4,163]]],
    [0x03,["YABUKI",0x0b,[2,57,771]],["Masa",0x17,[2,42,98]]],
    [0x17,["Konno",0x1d,[2,59,970]],["Syun1",0x0e,[2,44,734]]],
    [0x10,["HIRO",0x0d,[1,30,698]],["Taeko",0x22,[1,23,140]]],
    [0x0a,["DoTak",0x1c,[1,13,846]],["FJ",0x0a,[1,9,175]]],
    [0x13,["YOKO.",0x02,[1,4,261]],["sira■",0x20,[0,58,907]]],
    [0x06,["Ichiro",0x18,[2,7,915]],["Yuuki",0x06,[1,59,53]]],
    [0x0c,["Sakat",0x1b,[2,42,721]],["FJ",0x0f,[2,28,356]]],
    [0x0e,["Kato",0x09,[1,41,44]],["Matt",0x1e,[1,32,867]]],
    [0x0b,["iwaco",0x1a,[2,34,437]],["TARO",0x11,[2,24,169]]],
    [0x02,["NARI★",0x14,[2,25,741]],["♪Ryo",0x0b,[2,12,367]]],
    [0x05,["CHIA",0x12,[2,1,141]],["solami",0x0c,[1,52,686]]],
    [0x15,["Fukuda",0x02,[2,52,926]],["A24",0x17,[2,39,391]]],
    [0x09,["Matt",0x23,[2,51,662]],["Syun1",0x08,[2,37,782]]],
    [0x00,["♪Miz",0x13,[1,55,618]],["Dai8",0x07,[1,49,939]]],
    [0x06,["iwaco",0x00,[1,34,971]],["Shige",0x15,[1,26,659]]],
    [0x01,["Ito.y",0x1e,[2,29,6]],["==Kony",0x06,[2,16,777]]],
    [0x16,["♪msk",0x1a,[2,52,48]],["Miyam",0x08,[2,38,130]]],
    [0x14,["GASK2",0x01,[3,2,466]],["Kentan",0x1f,[2,55,933]]],
]
unlocks = [[0x05,0x0d,0x04,0x0c,0x12,0x14,0x0f,
            0x11,0x15,0x13,0x16,0x17,0x18,0x18],
           [0x09,0x0c,0x0f,0x0a,0x0d,0x10,0x0b,0x0e,0x11,
            0x1b,0x1e,0x21,0x1c,0x1f,0x22,0x1d,0x20,0x23]]
courseOrder = [0x08,0x01,0x02,0x04,0x00,0x05,0x06,0x07,0x09,0x0f,0x0b,
               0x03,0x0e,0x0a,0x0c,0x0d,0x10,0x14,0x19,0x1a,0x1b,0x1f,
               0x17,0x12,0x15,0x1e,0x1d,0x11,0x18,0x16,0x13,0x1c]

for i in range(0,3) {
    for j in range(0,7) {
        off = 0x70*j
        off2 = 0x380*i
        credits = [[],[]]
        cups = [[],[]]
        cu = [[],[]]
        for r in regions {
            st = getStats(r,0xae+off+off2,byte)
            cr = getStats(r,0xbf+off+off2)
            sr = getStats(r,0xb8+off+off2)
            for l in range (0,1) {
                lg = [cr,sr]
                array_push(cups[l],code(r) && getMainMenu(r) == 0x35 && __ornext(prev(st) == 0 || prev(lg[l]) > 0)
                               && st == 1 && lg[l] == 0)
            }
            cb = 6+i+(j/4)*8+(j%2)*4
            bit = bit(cb%8,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9036-cb/8)
            md = bit(6+i,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9034)
            mm = bit(4,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9039)
            array_push(credits[0],code(r) && getRaceData(r,[0xB6C]) == i && prev(getMainMenu(r)) != 0x3d && getMainMenu(r) == 0x3d)
            array_push(credits[1],code(r) && getMainMenu(r) == 0x3e && prev(getStats(r,9038,bit0)) == 0 && getStats(r,9038,bit0) == 1)
            array_push(cu[0],code(r) && getMainMenu(r) == 0x93 && prev(bit) == 0 && bit == 1)
            if (i < 2) array_push(cu[1],code(r) && getMainMenu(r) == 0x91 && prev(md) == 0 && md == 1)
            else if (i == 2) array_push(cu[1],code(r) && getMainMenu(r) == 0x93 && prev(mm) == 0 && mm == 1)
        }
        for l in range(1,1) {
            des = [["Gold Trophy","the golden trophy"],["3 Stars","a 3 star ranking"]]
            achievement(
                title = titles["Stars"][i][j], points = 10,
                description = format("Earn {0} for the {1} Cup on {2}",des[l][1],cup[j],cc[i]),
                trigger = any_of(cups[l],y=>y)
            )
        }
        if (j%4 > 1)
        achievement(
            title = titles["Cups"][i][j%2+j/4], points = 3, type = "progression",
            description = format("Unlock the {0} Cup on {1}",cup[j],cc[i]),
            trigger = any_of(cu[0],y=>y)
        )
        if (i < 3 && j == 7) {
            veh = ["bikes","karts"]
            if (i < 2) vhs = format("the ability to use {0} in {1}",veh[i],cc[i])
            else vhs = "Mirror Mode"
            achievement(
                title = titles["Unlocks"][i], points = 3,
                description = format("Unlock {0}",vhs),
                trigger = any_of(cu[1],y=>y)
            )
        }
        if (j > 6) {
            achievement(
                title = titles["Credits"][i], points = 10, type = "progression",
                description = format("Watch the credits on {0}",cc[i]),
                trigger = any_of(credits[0],y=>y)
            )
            if (i > 2) {
                achievement(
                    title = titles["Credits"][i+1], points = 25,
                    description = format("Watch the credits after achieving full completion",cc[i]),
                    trigger = any_of(credits[1],y=>y)
                )
            }
        }
    }
}

for i in range(0,1) {
    for j in range(0,length(unlocks[i])-1) {
        lg = []
        un = [character,vehicle]
        tt = ["Characters","Vehicles"]
        mii = ["A","B"]
        cur = unlocks[i][j]
        for r in regions {
            if (cur == 0x18) v = 2
            else v = 0
            cb = i*2+j
            bit = bit(cb%8,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9037+i*4-cb/8)
            array_push(lg,code(r) && getMainMenu(r) == 0x90+i+v && prev(bit) == 0 && bit == 1)
        }
        if (i > 0) t = "the "
        else t = ""
        if (i < 1 && j > 11) und = format("{0} {1}",un[i][cur],mii[j%12])
        else und = format("{1}{0}",un[i][cur],t)
        achievement(
            title = titles[tt[i]][j], points = 3,
            description = format("Unlock {0}",und),
            trigger = any_of(lg,y=>y)
        )
    }
}

for i in range(0,length(staff)-1) {
    function gs(tp) {
        Array = []
        for r in regions {
            cur = staff[i][1+tp]
            tm = [[],[]]
            st = getRaceInfo(r,[0x28])
            for j in range(0,2) {
                off = [[100000,word_be],[1000,byte],[1,word_be]]
                array_push(tm[0],getRaceInfo(r,[0x0c,0x00,0x40,0x04+0x02*j],off[j][1])*off[j][0])
                array_push(tm[1],cur[2][j]*off[j][0])
            }
            array_push(Array,code(r) && getMainMenu(r) == 0x1f && getRaceData(r,[0xB68]) == courseOrder[i]
                    && getRaceData(r,[0x30]) == cur[1] && getRaceData(r,[0x34]) == staff[i][0]
                    && sum_of(tm[0],y=>y) <= sum_of(tm[1],y=>y) && prev(st) != 0x04 && st == 0x04)
        }
        return Array
    }
    for j in range(0,1) {
        tp = ["Easy","Hard"]
        cur = staff[i][1+j]
        time = cur[2]
        id = courseOrder[i]
        t0 = format("{0}:",time[0])
        if (time[1] < 10) t1 = format("0{0}",time[1])
        else t1 = time[1]
        if (time[2] < 10) t2 = format("00{0}",time[2])
        else if (time[2] < 100) t2 = format("0{0}",time[2])
        else t2 = time[2]
        if (j==0) des = " with a time of at least "
        else des = "'s time of "
        achievement(
            title = titles["Time Trial"][i*2+j], points = 5+5*j,
            description = format("Beat Nin★{0}{1}{2}.{3} on {4} using {5} driving the {6}",
            cur[0]+des,t0,t1,t2,map[id],character[staff[i][0]],vehicle[cur[1]]),
            trigger = any_of(gs(j),y=>y)
        )
    }
}

for i in range(0,1) {
    lg = [[],[],[],[]]
    mii = []
    for r in regions {
        if (i < 1) log = getRaceInfo(r,[0x0c,0x00,0x22],word_be) >= 20
        else log = baseChain(ptrBalloons[r],[0x3C4],dword_be) == 5
        array_push(lg[0],unless(!code(r)) && never(prev(license(r)) != license(r))
                      && tally_of([0,1,2,3,4,5],5,y=>once(__ornext(any_of([0,1],x=>getMusicData(r) == 0x6b+x))
                      && getMainMenu(r) == 0x28 && getRaceData(r,[0xB68]) == 0x20+y+i*5)))
        array_push(lg[1],code(r) && getMusicData(r) == 0x6c && getMainMenu(r) == 0x28
                      && getRaceData(r,[0xB78]) == i && getStats(r,0x9174) == 2
                      && getStats(r,0x91A4) == 1 && getStats(r,0x91b4) >= 3)
        array_push(lg[2],code(r) && __ornext(any_of([0,1],y=>getMusicData(r) == 0x6b+y))
                      && getMainMenu(r) == 0x28
                      && getRaceData(r,[0xB78]) == i && getStats(r,0x9174) == 2
                      && log)
        array_push(lg[3],code(r) && getMusicData(r) == 0xcb && getMainMenu(r) == 0x36+i
                      && getStats(r,0x9160) >= 2 && getStats(r,0x9170) == 2
                      && getStats(r,0x91A0) == 1 && getStats(r,0x91B0) >= 7)
        array_push(mii,unless(!code(r)) && never(prev(license(r)) != license(r))
                      && tally_of([0x08,0x04,0x06,0x07,0x09,0x0f,0x0e,0x0a],8,y=>
                      once(__ornext(any_of([0x1e,0x20],x=>getMainMenu(r) == x))
                      && getRaceData(r,[0x34]) == 0x18 && getRaceInfo(r,[0x28]) >= 3
                      && getRaceInfo(r,[0x0C,0x00,0x20]) == 1)))
    }
    btl = ["Wii","Retro"]
    typ = ["5 balloons","at least 20 coins"]
    achievement(
        title = titles["Extra"][i], points = 2,
        description = format("Win on every {0} Battle map",btl[i]),
        trigger = any_of(lg[0],y=>y)
    )
    achievement(
        title = titles["Extra"][i+2], points = 2,
        description = format("Win a {0} match of 5 points against hard CPUs with aggressive items enabled",battle[i]),
        trigger = any_of(lg[1],y=>y)
    )
    achievement(
        title = titles["Extra"][i+4], points = 3,
        description = format("Win a {0} match against hard CPUs while having {1}",battle[i],typ[i]),
        trigger = any_of(lg[2],y=>y)
    )
    achievement(
        title = titles["Extra"][i+6], points = 3,
        description = format("Win a 150ccm {0}VS match of 16 races or more against hard cpus with aggressive items enabled",vs[i]),
        trigger = any_of(lg[3],y=>y)
    )
    if (i < 1)
    achievement(
        title = titles["Extra"][8], points = 2,
        description = "Win on every track that features a transformable decoration when playing as a Mii",
        trigger = any_of(mii,y=>y)
    )
}

function players(r,i) {
    Array = []
    for p in range(1,11) {
        statHits = getPlayerData(r,[0x20,0x00,0x14,0x38,0x08])
        hitType = getPlayerData(r,[0x20,0x04*p,0x48,0x1C])
        subType = getPlayerData(r,[0x20,0x04*p,0x48,0x20])
        if (i == 0)
        array_push(Array, once(getRaceData(r,[0xF4+0xF0*p]) == 2
                       || getRaceData(r,[0xF4+0xF0*p]) != getRaceData(r,[0xF4])
                       && prev(getItemHolder(r,[0x14,0x2D4+0x248*p])) == 8))
        else {
            if (i == 1)
            t = 0x0d
            if (i == 2)
            t = 0x03
            array_push(Array, prev(statHits) < statHits
                && __ornext(prev(hitType) != t || prev(subType) != 0)
                && hitType == t && subType == 0)
        }
    }
    return Array
}

for i in range(0,8) {
    log = []
    descriptions = [
        "Successfully dodge an opponent's POW Block item",
        "Successfully dodge an opponent's Lightning item",
        "Crush at least 5 opponents with a single use of a Mega Mushroom item",
        "Hurt at least 5 opponents with a single use of a Star item",
        "Succesfully dodge a Blue Shell",
        "Get to 1st place while holding a Blue Shell",
        "Get to 1st place while holding a Star, Bullet Bill, Mega Mushroom, Golden Mushroom, or Lightning item",
        "Obtain a Thundercloud from an item box and pass it off before you're shocked",
        "Manage to find a way to squash Lakitu during a race"]
    for r in regions {
        POW = __ornext(prev(getPlayerData(r,[0x20,0x00,0x48,0x1C])) != 0x0b || prev(getPlayerData(r,[0x20,0x00,0x48,0x20])) != 1)
            && getPlayerData(r,[0x20,0x00,0x48,0x1C]) == 0x0b && getPlayerData(r,[0x20,0x00,0x48,0x20]) == 1
        Shock = never(baseChain(ptrRaceGraphicsData[r],[0x9C],dword_be) == 0) && getPlayerData(r,[0x20,0x00,0x20,0x0F],bit7) == 0
            && tally_of(players(r,0),1,y=>y)
        Mega = never(getPlayerData(r,[0x20,0x00,0x20,0x0E],bit7) == 0) && measured(tally_of(players(r,1),5,y=>once(y)))
        Star = never(getPlayerData(r,[0x20,0x00,0x20,0x08],bit7) == 0) && measured(tally_of(players(r,2),5,y=>once(y)))
        Blue = getItemHolder(r,[0x100,0x00]) != 0 && getItemHolder(r,[0x100,0x00,0x2EC],byte) == 0
            && prev(getItemHolder(r,[0x100,0x00,0x2C1],byte)) == 0x06
            && getPlayerData(r,[0x20,0x00,0x48,0x1C]) != 0x07
        Blue2 = prev(getRaceInfo(r,[0x0C,0x00,0x20])) != 1 && getRaceInfo(r,[0x0C,0x00,0x20]) == 1
            && getItemHolder(r,[0x14,0x8C]) == 7
        Power = prev(getRaceInfo(r,[0x0C,0x00,0x20],byte)) != 1 && getRaceInfo(r,[0x0C,0x00,0x20],byte) == 1
            && __ornext(any_of([0x08,0x09,0x0a,0x0b,0x0f],y=>getItemHolder(r,[0x14,0x8C]) == y))
            && getItemHolder(r,[0x14,0xA8]) == 0
        TC = never(getItemHolder(r,[0x254]) == 0)
            && once(getItemHolder(r,[0x14]) == getItemHolder(r,[0x244,0x00,0x1A0])
            && getItemHolder(r,[0x244,0x00,0x1D8]) == 0)
            && getItemHolder(r,[0x14]) != getItemHolder(r,[0x244,0x00,0x1A0])
            && getItemHolder(r,[0x244,0x00,0x1D8]) == 257
        Lakitu = prev(baseChain(ptrLakitu[r],[0x14,0x37C],dword_be)) != 1
            && baseChain(ptrLakitu[r],[0x14,0x37C],dword_be) == 1
        logic = [POW,Shock,Mega,Star,Blue,Blue2,Power,TC,Lakitu]
        array_push(log,unless(!code(r)) && __ornext(any_of([0x1e,0x20,0x24,0x28],y=>getMainMenu(r) == y))
                   && getRaceInfo(r,[0x28]) == 2 && logic[i])
    }
    achievement(
        title = titles["Items"][i], points = 5-5*i/8,
        description = descriptions[i],
        trigger = any_of(log,y=>y)
    )
}

lLog = 0
mLog = 1
rLog = 2

function zipper(r) => getPlayerData(r,[0x20,0x00,0x20,0x0a],bit7)
function trick(r) => getPlayerData(r,[0x20,0x00,0x20,0x0b],bit6)
function drift(r) => getPlayerData(r,[0x20,0x00,0x44,0x102],word_be)
function pos(r,i) => getPlayerData(r,[0x20,0x00,0x24,0x90,0x04,0x68+i],float_be)
function kcl(r,i) => getPlayerData(r,[0x20,0x00,0x38,0xf0+i],word_be)
function time(r,i=0) => getMenuData(r,[0x00,0xbc,0x1AC+i*0x0c],word_be)*6000
    + getMenuData(r,[0x00,0xbc,0x1AE+i*0x0c],byte)*100
    + getMenuData(r,[0x00,0xbc,0x1B0+i*0x0c],word_be)/10
function lapCount(r,val,func) {
    Array = []
    lap = getRaceInfo(r,[0x0c,0x00,0x24],word_be)
    raceP = getRaceInfo(r,[0x0c,0x00,0x0c],float_be)
    lapP = getRaceInfo(r,[0x0c,0x00,0x1c],float_be)
    calc = raceP/1.0
    laps = never(prev(raceP) <= lapP+calc && raceP > lapP+calc)
    for i in range(1,val) {
        array_push(Array, deduct(lap > 1 && prev(lap) < lap && laps))
    }
    array_push(Array, repeated(val,func && laps))
    return Array
}
function itemboxes(r,val,IDs) {
    Array = []
    for i in range(0,val) {
        itemboxState = getObjectManager(r,[0x1C,i*4,0xB0],dword_be)
        array_push(Array,once(__ornext(any_of(IDs,y=>
            getObjectManager(r,[0x1C,i*4,0x88],word_be) == y)) && prev(itemboxState) != itemboxState
            && prev(getPlayerGraphicsData(r,[0x00,0x27C,0x78])) != getPlayerGraphicsData(r,[0x00,0x27C,0x78])))
    }
    return Array
}
function trickAreas(r,area) {
    Array = []
    for i in range(0,length(area)-1) {
        pX = pos(r,0)
        pZ = pos(r,8)
        x1 = area[i][0]
        x2 = area[i][1]
        z1 = area[i][2]
        z2 = area[i][3]
        array_push(Array, once(prev(zipper(r)) == 0 && prev(trick(r)) == 0
            && __ornext(zipper(r) == 1 || trick(r) == 1) && pX >= x1 && pX <= x2
            && pZ >= z1 && pZ <= z2))
    }
    return Array
}
function cataquack(r,val) {
    Array = []
    for i in range(0,val) {
        array_push(Array,getObjectManager(r,[0x1C,i*4,0x88],word_be) == 0x197
            && getObjectManager(r,[0x1C,i*4,0x3A4]) == 0x00
            && getObjectManager(r,[0x1C,i*4,0x394]) == 0x02)
    }
    return Array
}
function leafs(r,val) {
    Array = []
    for i in range(0,val) {
        state = getObjectManager(r,[0x1C,i*4,0xB0])
        array_push(Array,getObjectManager(r,[0x1C,i*4,0x88],word_be) == 0x176
            && prev(state) == 0x01 && state == 2
            && all_of([0,1],y=>getObjectManager(r,[0x1C,i*4,0x30+0x08*y],float_be)
            - getPlayerData(r,[0x20,0x00,0x50,0x04,0x04+0x08*y],float_be) >= -20.0
            && getObjectManager(r,[0x1C,i*4,0x30+0x08*y],float_be)
            - getPlayerData(r,[0x20,0x00,0x50,0x04,0x04+0x08*y],float_be) <= 20.0))
    }
    return Array
}
function cones(r) {
    Array = []
    for i in range(0,24) {
        count = getPlayerData(r,[0x20,0x00,0x38,0x08])
        objCount = getObjectManager(r,[0x58,0x00+i*4,0x08,0x18,0x2C])
        objState = getObjectManager(r,[0x58,0x00+i*4,0xB0])
        array_push(Array,__ornext(prev(objState) - objState == 1 || prev(objCount) < objCount)
            && getObjectManager(r,[0x58,0x00+i*4,0x88],word_be) == 0x144
            && prev(count) < count)
    }
    return Array
}
function thwomp(r,obj) {
    Array = []
    for i in range(0,length(obj)-1) {
        pX = pos(r,0)
        pZ = pos(r,8)
        tX = obj[i][0]
        tZ = obj[i][1]
        if (length(obj[i]) < 3) {
            o1 = 460.0
            o2 = 400.0
        }
        else {
            o1 = 400.0
            o2 = 460.0
        }
        array_push(Array, once(pX >= tX - o1 && pX <= tX + o1
            && pZ >= tZ - o2 && pZ <= tZ + o2))
    }
    return Array
}
function customChecks(r,obj) {
    Array = []
    for i in range(0,length(obj)-1) {
        pX = pos(r,0)
        pZ = pos(r,8)
        cX1 = obj[i][0]
        cX2 = obj[i][1]
        cZ1 = obj[i][2]
        cZ2 = obj[i][3]
        if (i == 0)
        array_push(Array, once(pX >= cX1 && pX <= cX2
            && pZ >= cZ1 && pZ <= cZ2))
        else
        array_push(Array, once(array_pop(Array) && pX >= cX1 && pX <= cX2
            && pZ >= cZ1 && pZ <= cZ2))
    }
    return Array
}
function superslide(r) {
    Array = []
    for i in [bit2,bit3,bit4] {
        b = getPlayerData(r,[0x20,0x00,0x20,0x06],i)
        if (i == bit2)
        j = 1
        else 
        j = 0
        array_push(Array, prev(b) == b && b == j)
    }
    return Array
}
function ultra(r) {
    kcp = getRaceInfo(r,[0x0c,0x00,0x28],byte)*1.0
    race = getRaceInfo(r,[0x0c,0x00,0x0c],float_be)
    return kcp-prev(kcp) > 1.0 && race > prev(race)
}
function alternate(r,i) {
    cp = getRaceInfo(r,[0x0c,0x00,0x0b],byte)*1.0
    race = getRaceInfo(r,[0x0c,0x00,0x0c],float_be)
    return cp-prev(cp) >= 1.0*i && race > prev(race)
}
function lapTime() {
    Array = [[],[]]
    for r in regions {
        for i in range(1,3) {
            array_push(Array[1], code(r))
            for j in range(1,3) {
                if (i != j) array_push(Array[1], time(r,i) <= time(r,j))
            }
            array_push(Array[0], measured(time(r,i), when=all_of(Array[1],y=>y)))
            for j in range(0, length(Array[1])) array_pop(Array[1])
        }
    }
    return Array[0]
}
function funcCalc(r,func,val) {
    return unless(!code(r)) && measured(tally_of(func,val,y=>y), when=getRaceInfo(r,[0x28]) == 2)
        && trigger_when(always_false())
        || unless(!code(r)) && never(tally_of(func,val+1,y=>y)) && always_false()
}
function funcCalcSpec(r,func,val) {
    func2 = func
    array_push(func2, once(always_true()))
    return unless(!code(r)) && measured(tally_of(func,val,y=>y), when=getRaceInfo(r,[0x28]) == 2)
        && trigger_when(always_false())
        || unless(!code(r)) && unless(tally_of(func2,1,y=>y)) && never(getRaceInfo(r,[0x28]) == 2)
        && always_false()
}
function funcMeasured(r,func) {
    return unless(!code(r)) && measured(func,when=getRaceInfo(r,[0x28]) == 2) && trigger_when(always_false())
}

kinoko = [0x3ec,0x3ed,0x3e8,0x3e9,0x3eb,0x3ee,0x3ef,0x3f0,
          0x3f1,0x3f2,0x3f4,0x3f5,0x3f6,0x3f7,0x3fa,0x3fb]
trickPos = [
    [-19600.0,-19000.0,18600.0,31300.0],[-19300.0,-18700.0,-29000.0,-22000.0],
    [-15600.0,-12000.0,-29000.0,-24500.0],[29000.0,30800.0,-12000.0,-3400.0],
    [-10000.0,1500.0,32200.0,33300.0]
]
thwomps = [
    [-34400.0,20000.0],[1686.456909,-13546.8125],[-96.537582,-10997.720703],
    [-28500.0,-19000.0],[-27002.128906,-21981.992188,1],[-34137.1875,33954.449219],
    [-25133.501953,32964.675781,1],[-24500.0,22000.0],[-26000.0,22000.0],
    [25000.0,15750.0],[26036.658203,-6184.412598]
]
enemies = [[0x04,0x02],[0x03,0x02],[0x01,0x02]]
checkpoints = [
    [3850.0,8700.0,-2021.0,1973.0],
    [2200.0,4660.0,-6800.0,-1820.0],
    [-31510.0,-31000.0,2920.0,6500.0],
    [-35930.0,-35000.0,-33500.0,-31000.0],
    [-35250.0,-31300.0,-34500.0,-33750.0],
    [-34500.0,-32450.0,31750.0,34700.0],
    [34750.0,35900.0,-32600.0,-29300.0]
]
allItemboxes = [0x65,0x76,0xc9,0xd4,0xd5,0xee]

for i in range(0,31) {
    log = []
    ach = []
    id = courseOrder[i]
    for r in regions {
        lc = [[lLog, pos(r,0) > -2880.0 && pos(r,4) < 1585.0 && pos(r,8) > 43850.0, kcl(r,0) == 6]]
        mmm = [[lLog, kcl(r,0) == 0x03, getPlayerData(r,[0x20,0x00,0x20,0x0e],bit4) == 1]]
        mg = [[lLog, getPlayerData(r,[0x20,0x00,0x20,0x07],bit4) == 1],[mLog, tally_of(kinoko,length(kinoko),
            y=>once(kcl(r,0) == 0x08 && kcl(r,2) == 0x04
            && getObjectData(r,[0x1C,0x00,0x10,0xA6],word_be) == y))]]
        tf = [[rLog, funcCalcSpec(r,[dword_be(pause[r]) == 0 && kcl(r,0) == 0x15],120)]]
        mc = [[lLog, getFrames(r) > 0xf0 && baseChain(ptrCamera[r],[0x14,0x00,0x335],bit5) == 0]]
        cm = [[rLog, funcCalc(r,[prev(kcl(r,0)) != 0x06 && kcl(r,0) == 0x06
            && never(prev(getRaceInfo(r,[0x0c,0x00,0x24],word_be))
            < getRaceInfo(r,[0x0c,0x00,0x24],word_be))],2),
            getPlayerData(r,[0x20,0x00,0x20,0x08],bit6) == 1]]
        dksc = [[lLog, kcl(r,0) == 0x04],
            [rLog, funcCalcSpec(r,lapCount(r,10,prev(zipper(r)) == 0 && prev(trick(r)) == 0
            && __ornext(zipper(r) == 1 || trick(r) == 1)),10)]]
        wgm = [[rLog, funcCalc(r,lapCount(r,length(trickPos),
            all_of(trickAreas(r,trickPos),y=>y)),length(trickPos))]]
        dc = [[lLog, prev(getPlayerGraphicsData(r,[0x00,0x7B5]) == 0x64)
            && getPlayerGraphicsData(r,[0x00,0x7B5]) == 0x00]]
        kc = [[rLog, funcCalc(r,[dword_be(pause[r]) == 0 && kcl(r,0) == 0x0b
            && never(prev(getRaceInfo(r,[0x0c,0x00,0x24],word_be))
            < getRaceInfo(r,[0x0c,0x00,0x24],word_be))],240)],]
        mt = [[lLog, getPlayerData(r,[0x20,0x00,0x20,0x07],bit4) == 1,
            prev(getPlayerGraphicsData(r,[0x00,0x7B4]) == 0x64)
            && getPlayerGraphicsData(r,[0x00,0x7B4]) == 0x00]]
        gv = [[lLog, kcl(r,0) == 0x02]]
        ddr = [[lLog, getPlayerData(r,[0x20,0x00,0x20,0x08],bit6) == 1,
            getPlayerData(r,[0x20,0x00,0x20,0x0A],bit6) == 1]]
        mh = [[lLog, kcl(r,0) == 0x06]]
        bcw = [[lLog, getPlayerData(r,[0x20,0x00,0x44,0x102]) != 0x00,
            getRaceInfo(r,[0x0c,0x00,0x24],word_be) > 1
            && prev(getRaceInfo(r,[0x0C,0x00,0x20],byte)) > getRaceInfo(r,[0x0C,0x00,0x20],byte)]]
        rr = [[rLog, funcCalc(r,[dword_be(pause[r]) == 0
            && never(getPlayerData(r,[0x20,0x00,0x20,0x05],bit4) == 1
            || getPlayerData(r,[0x20,0x00,0x20,0x09],bit6) == 1
            || getPlayerData(r,[0x20,0x00,0x20,0x09],bit7) == 1)],300)]]
        rPB = [[lLog, any_of(cataquack(r,100),y=>y)]]
        rYF = [[rLog, funcCalc(r,[dword_be(pause[r]) == 0
            && never(getPlayerData(r,[0x20,0x00,0x20,0x07],bit0) == 0
            || getPlayerData(r,[0x20,0x00,0x20,0x05],bit4) == 1)],180)]]
        rGV2 = [[lLog, prev(getPlayerGraphicsData(r,[0x00,0x27C,0x78])) == 0x00
            && getPlayerGraphicsData(r,[0x00,0x27C,0x78]) != 0x00]]
        rMR = [[lLog, pos(r,0) <= -182.0 && pos(r,0) >= -16465.0
            && pos(r,4) >= 7200.0 && pos(r,4) <= 11700.0]]
        rSL = [[rLog, funcCalcSpec(r,lapCount(r,4,prev(drift(r)) < drift(r)
            && getPlayerData(r,[0x20,0x00,0x44,0xFC],word_be) == 2),4),
            funcCalcSpec(r,lapCount(r,4,prev(drift(r)) < drift(r)
            && getPlayerData(r,[0x20,0x00,0x44,0xFC],word_be) == 3),4)]]
        rSGB = [[rLog, funcCalc(r,[dword_be(pause[r]) == 0
            && __ornext(any_of([0x02,0x03,0x04],y=>kcl(r,0) == y))],180)]]
        rDS = [[mLog, trigger_when(tally(3000, dword_be(pause[r]) == 0
            && getPlayerData(r,[0x20,0x00,0x20,0x04],bit5) == 1))],
            [rLog, funcMeasured(r,tally(3000, dword_be(pause[r]) == 0
            && getPlayerData(r,[0x20,0x00,0x20,0x04],bit5) == 1))]]
        rWS = [[rLog, funcCalc(r,lapCount(r,2,prev(getPlayerData(r,[0x20,0x00,0x20,0x1C])) < 60
            && getPlayerData(r,[0x20,0x00,0x20,0x1C]) >= 60),2)]]
        rDH = [[lLog, getPlayerData(r,[0x20,0x00,0x14,0x38,0x08]) > 0]]
        rBC3 = [[rLog, funcCalc(r,lapCount(r,length(thwomps),
            all_of(thwomp(r,thwomps),y=>y)),length(thwomps))]]
        rDKJP = [[lLog, __ornext(getRaceInfo(r,[0x0c,0x00,0x24],word_be) < 3
            || getRaceInfo(r,[0x0c,0x00,0x28],byte) < 0x05
            || getRaceInfo(r,[0x0c,0x00,0x0b],byte) < 0x46)
            && getRaceInfo(r,[0x0c,0x00,0x24],word_be) > 1
            && getRaceInfo(r,[0x0c,0x00,0x20],byte) > 6]]
        rMC = [[lLog, any_of(enemies,y=>all_of([0,1],x=>
            getPlayerData(r,[0x20,0x00,0x48,0x1C+x*4]) == y[x]))]]
        rMC3 = [[lLog, prev(getPlayerGraphicsData(r,[0x00,0x7B6]) == 0x64)
            && getPlayerGraphicsData(r,[0x00,0x7B6]) == 0x00]]
        rPG = [[rLog, funcCalc(r,lapCount(r,1,all_of(customChecks(r,checkpoints),y=>y)),length(checkpoints))]]
        rDKM = [[lLog, kcl(r,0) == 0x17, all_of([bit2,bit4],y=>getPlayerData(r,[0x20,0x00,0x20,0x0B],y) == 0)
            && getPlayerData(r,[0x20,0x00,0x20,0x1C]) > 60]]
        rBC = [[lLog, prev(getRaceInfo(r,[0x0C,0x00,0x20],byte)) > getRaceInfo(r,[0x0C,0x00,0x20],byte),
            prev(all_of([0,1],y=>getPlayerGraphicsData(r,[0x00,0x7B4+y]) == 0x64))
            && __ornext(any_of([0,1],y=>getPlayerGraphicsData(r,[0x00,0x7B4+y]) == 0x00))]]

        cheevo = [["without toucing any boost pads while using the upper path at the end of every lap",[0x10,0x07],lc],
                  ["without touching any patches of grass and mole ridges",[0x00,0x04],mmm],
                  ["while touching every bouncy mushroom without falling down",[0x18,0x0d],mg],
                  ["without touching the conveyors for a total of two seconds",[0x1b,0x08],tf],
                  ["while only looking behind",[0x1c,0x00],mc],
                  ["without touching any trickable surfaces and only using a single boost pad per lap",[0x16,0x11],cm],
                  ["without touching any deep snow",[0x05,0x09],dksc],
                  ["while tricking off of every trickable surface on every lap",[0x23,0x0b],wgm],
                  ["without striking any cones",[0x0d,0x0f],dc],
                  ["without touching waterstreams for more than four seconds total",[0x1e,0x0e],kc],
                  ["without hitting any walls nor falling off the track",[0x0a,0x12],mt],
                  ["without ever getting off-road",[0x20,0x15],gv],
                  ["without touching any trickable surfaces except for boost ramps",[0x12,0x05],ddr],
                  ["without touching any boost pads",[0x19,0x10],mh],
                  ["without ever losing a position nor using and drift boosts",[0x08,0x03],bcw],
                  ["while boosting or tricking at least every five seconds",[0x17,0x17],rr],
                  ["without ever being spotted by any Cataquacks",[0x04,0x10],rPB],
                  ["while not accelerating between boosts for more than three seconds",[0x01,0x0a],rYF],
                  ["without ever touching any item box",[0x0e,0x13],rGV2],
                  ["without ever entering the pipe",[0x22,0x00],rMR],
                  ["while performing at least four mini turbos and super mini turbos per lap",[0x09,0x0c],rSL],
                  ["without touching any patches of grass or water for more than three seconds total",[0x21,0x0e],rSGB],
                  ["while performing wheelies for at least 50 seconds total",[0x1f,0x11],rDS],
                  ["without ever being airborne for longer than a second at once",[0x1d,0x02],rWS],
                  ["without hitting any opponent with an item",[0x03,0x05],rDH],
                  ["while driving under each thwomp on every lap without getting crushed",[0x11,0x15],rBC3],
                  ["while staying on the bottom half until the bridge on the last lap",[0x0b,0x09],rDKJP],
                  ["without getting hit by enemies on the road",[0x0c,0x0c],rMC],
                  ["and without running into any other character",[0x15,0x06],rMC3],
                  ["while always taking the longest route when lead by an arrow",[0x0f,0x01],rPG],
                  ["without touching any patches of grass nor being airborne for longer than a second at once",[0x1a,0x16],rDKM],
                  ["without ever losing a position nor hitting walls or objects",[0x07,0x14],rBC]]
        lLogic = always_false()
        mLogic = always_true()
        rLogic = always_false()
        current = cheevo[i][2]
        combination = cheevo[i][1]
        for j in range(0,length(current)-1) {
            logic = current[j]
            for l in range(0,length(logic)-2) {
                if (logic[0] == lLog) lLogic = lLogic || logic[1+l]
                else if (logic[0] == mLog) mLogic = mLogic && logic[1+l]
                else if (logic[0] == rLog) rLogic = rLogic || logic[1+l]
            }
        }
        array_push(log,unless(!code(r)) && never(all_of([0x1e,0x20],y=>getMainMenu(r) != y)
            || getRaceData(r,[0xB68]) != id || getRaceData(r,[0x30]) != combination[0]
            || getRaceData(r,[0x34]) != combination[1] || all_of(superslide(r), y=>y)
            || ultra(r) || lLogic) && once(getRaceInfo(r,[0x28]) == 0)
            && getRaceData(r,[0x175C]) == 0x02 && getRaceData(r,[0x176c]) == 0x02
            && getRaceData(r,[0x1770]) == 0 && __ornext(getStats(r,0x9180) == 0
            || getMainMenu(r) == 0x1e) && mLogic
            && trigger_when(getRaceInfo(r,[0x28]) >= 3 && getRaceInfo(r,[0x0C,0x00,0x20]) == 1)
            || rLogic)
        array_push(ach,cheevo[i][0])
        array_push(ach,vehicle[combination[0]])
        array_push(ach,character[combination[1]])

    }
    achievement(
        title = titles["Challenges"][i], points = 10,
        description = format("As {0} driving the {1}, finish in 1st place on 150cc {2}"
        +" against hard CPUs, with all vehicles and balanced items enabled, and {3}",
        array_pop(ach),array_pop(ach),map[id],array_pop(ach)),
        trigger = any_of(log,y=>y)
    )
}

for i in range(0,3) {
    for j in range(0,7) {
        Array = [[],[],[],[]]
        for r in regions {
                f = getFrames(r)
                array_push(Array[0],unless(!code(r)) && getRaceData(r,[0x175C]) == i
                && getRaceData(r,[0x1780],bit0) == i/3 && getRaceData(r,[0x1778]) == j
                && getRaceData(r,[0x177C],byte) == 0 && getMainMenu(r) == 0x19)
                array_push(Array[1], code(r) && getMainMenu(r) == 0x41)
                array_push(Array[2], code(r) && getMainMenu(r) == 0x35)
                array_push(Array[3], measured(repeated(0,getMainMenu(r) == 0x1e
                && getRaceInfo(r,[0x28]) == 0x02 && prev(f) != f),
                when=code(r)))
        }
        leaderboard(
            title = format("{0} Cup - {1}",cup[j],cc[i]),
            description = format("Fastest time completing the {0} Cup on {1}",cup[j],cc[i]),
            start  =  any_of(Array[0],y=>y),
            cancel =  any_of(Array[1],y=>y),
            submit =  any_of(Array[2],y=>y),
            value  =  max_of(Array[3]),
            format =  "FRAMES", lower_is_better = true
        )
    }
}

for i in range(0,31) {
    for j in range (0,3) {
        for l in range(0,1) {
            Array = [[],[],[],[],[]]
            id = courseOrder[i]
            current = map[id]
            lap = [["Time Trial","time trial"],["Fastest Lap","lap"]]
            for r in regions {
                if (i == 2) {
                    tp = "Gap Jump"
                    extra = alternate(r,3)
                }
                else if (i == 3) {
                    tp = "Box Clip"
                    extra = alternate(r,3)
                }
                else if (i == 11) {
                    tp = "Rock Hop"
                    extra = alternate(r,4)
                }
                else if (i == 14) {
                    tp = "Wall Clip"
                    extra = alternate(r,4)
                }
                else if (i == 24) {
                    tp = "Lake Cut"
                    extra = alternate(r,5)
                }
                else if (i == 25) {
                    tp = "U-Turn Skip"
                    extra = alternate(r,5)
                }
                else if (i == 26) {
                    tp = "Spiral Skip"
                    extra = alternate(r,10)
                }
                else if (i == 30) {
                    tp = "Fence Clip"
                    extra = alternate(r,10)
                }
                else {
                    tp = ""
                    extra = always_false()
                }
                checks = [
                    ["Non-SC",never(all_of(superslide(r), y=>y) || ultra(r) || extra)],
                    ["Ultra",never(all_of(superslide(r), y=>y)) && once(ultra(r))],
                    ["Superslide",once(all_of(superslide(r), y=>y))],
                    ["Alternate SC: "+tp,never(all_of(superslide(r), y=>y) || ultra(r)) && once(extra)]
                ]
                times = [measured(time(r), when=code(r)),array_map(lapTime(),y=>y)]
                array_push(Array[0],unless(!code(r)) && never(getMainMenu(r) != 0x1f
                    || getRaceData(r,[0xB68]) != id) && checks[j][1]
                    && once(getRaceInfo(r,[0x28]) == 0x01) && getRaceInfo(r,[0x28]) >= 0x03)
                array_push(Array[1], always_false())
                array_push(Array[2], always_true())
                array_push(Array[4], tp)
                array_push(Array, checks[j][0])
                if (l < 1) array_push(Array[3], times[l])
                else Array[3] = times[l]
            }
            cat = array_pop(Array)
            alt = array_pop(Array[4])
            if (alt != "" || j < 3)
            leaderboard(
                title = format("{0} - {1} - {2}",current,cat,lap[l][0]),
                description = format("Fastest {0} time on {1} in the {2} category",lap[l][1],current,cat),
                start  =  any_of(Array[0],y=>y),
                cancel =  any_of(Array[1],y=>y),
                submit =  any_of(Array[2],y=>y),
                value  =  max_of(Array[3]),
                format =  "MILLISECS", lower_is_better = true
            )
        }
    }
}

for i in range(0, length(cc)-1) ccLookup[i] = cc[i]
for i in range(0, length(vs)-1) vsLookup[i] = vs[i]
for i in range(0, length(map)-1) mapLookup[i] = map[i]
for i in range(0, length(cup)-1) cupLookup[i] = cup[i]
for i in range(0, length(color)-1) colorLookup[i] = color[i]
for i in range(0, length(character)-1) characterLookup[i] = character[i]
for i in range(0, length(vehicle)-1) vehicleLookup[i] = vehicle[i]
for i in range(0, length(battle)-1) battleLookup[i] = battle[i]
for i in range(0, length(battle)-1) battleLookup[i] = battle[i]

function menuLookup() {
    Array = []
    for i in range(0,0xac) {
        if(dictionary_contains_key(menus,i)) array_push(Array,i)
    }
    return Array
}
function rpMenu(id,p=0) {
    Array = []
    for r in regions {
        if (p == 0) e = always_true()
        else e = getMenuData(r,[0x98,0x124]) == p
        array_push(Array,code(r) && __ornext(any_of(id,y=>getMainMenu(r) == y)) && e)
    }
    return any_of(Array,y=>y)
}
function rpTypes(n) {
    Array = []
    ccs = ["C",[],ccLookup]
    team = ["r",[],vsLookup]
    maps = ["m",[],mapLookup]
    cups = ["p",[],cupLookup]
    r1 = ["V",[],"VALUE"]
    r2 = ["V",[],"VALUE"]
    t1 = ["t",[],colorLookup]
    c1 = ["c",[],characterLookup]
    v1 = ["v",[],vehicleLookup]
    rp1 = ["V",[],"VALUE"]
    bp1 = ["V",[],"VALUE"]
    t2 = ["t",[],colorLookup]
    c2 = ["c",[],characterLookup]
    v2 = ["v",[],vehicleLookup]
    rp2 = ["V",[],"VALUE"]
    bp2 = ["V",[],"VALUE"]
    t3 = ["t",[],colorLookup]
    c3 = ["c",[],characterLookup]
    v3 = ["v",[],vehicleLookup]
    rp3 = ["V",[],"VALUE"]
    bp3 = ["V",[],"VALUE"]
    t4 = ["t",[],colorLookup]
    c4 = ["c",[],characterLookup]
    v4 = ["v",[],vehicleLookup]
    rp4 = ["V",[],"VALUE"]
    bp4 = ["V",[],"VALUE"]
    battles = ["b",[],battleLookup]
    time = ["F",[],"FRAMES"]
    ps = ["V",[],"VALUE"]
    s = ["s",[],{1:""},"s"]
    vr = ["V",[],"VALUE"]
    br = ["V",[],"VALUE"]
    menuID = ["M",[],menus,"Loading the next menu..."]
    for r in regions {
        array_push(ccs[1],measured(getRaceData(r,[0x175C]),when=code(r)))
        array_push(team[1],measured(getRaceData(r,[0x1780],bit1),when=code(r)))
        array_push(maps[1],measured(getRaceData(r,[0x1758]),when=code(r)))
        array_push(cups[1],measured(getRaceData(r,[0x1778]),when=code(r)))
        array_push(r1[1],measured(getRaceData(r,[0x177c]),when=code(r)))
        array_push(r2[1],measured(getRaceData(r,[0x177d]),when=code(r)))
        array_push(battles[1],measured(getRaceData(r,[0x1768]),when=code(r)))
        array_push(time[1],measured(getRaceInfo(r,[0x14,0x48]),when=code(r)))
        array_push(ps[1],measured(getMenuData(r,[0x98,0x124]),when=code(r)))
        array_push(s[1],measured(getMenuData(r,[0x98,0x124]),when=code(r)))
        array_push(vr[1],measured(getStats(r,0x9050,word_be),when=code(r)))
        array_push(br[1],measured(getStats(r,0x9058,word_be),when=code(r)))

        array_push(t1[1],measured(getRaceData(r,[0xce4]),when=code(r)))
        array_push(c1[1],measured(getRaceData(r,[0xc24]),when=code(r)))
        array_push(v1[1],measured(getRaceData(r,[0xc20]),when=code(r)))
        array_push(rp1[1],measured(getRaceData(r,[0xcf2],word_be),when=code(r)))
        array_push(bp1[1],measured(getRaceInfo(r,[0x0c,0x00,0x22],word_be),when=code(r)))
        

        array_push(t2[1],measured(getRaceData(r,[0xce4+0xf0*1]),when=code(r)))
        array_push(c2[1],measured(getRaceData(r,[0xc24+0xf0*1]),when=code(r)))
        array_push(v2[1],measured(getRaceData(r,[0xc20+0xf0*1]),when=code(r)))
        array_push(rp2[1],measured(getRaceData(r,[0xcf2+0xf0*1],word_be),when=code(r)))
        array_push(bp2[1],measured(getRaceInfo(r,[0x0c,0x04,0x22],word_be),when=code(r)))

        array_push(t3[1],measured(getRaceData(r,[0xce4+0xf0*2]),when=code(r)))
        array_push(c3[1],measured(getRaceData(r,[0xc24+0xf0*2]),when=code(r)))
        array_push(v3[1],measured(getRaceData(r,[0xc20+0xf0*2]),when=code(r)))
        array_push(rp3[1],measured(getRaceData(r,[0xcf2+0xf0*2],word_be),when=code(r)))
        array_push(bp3[1],measured(getRaceInfo(r,[0x0c,0x08,0x22],word_be),when=code(r)))

        array_push(t4[1],measured(getRaceData(r,[0xce4+0xf0*3]),when=code(r)))
        array_push(c4[1],measured(getRaceData(r,[0xc24+0xf0*3]),when=code(r)))
        array_push(v4[1],measured(getRaceData(r,[0xc20+0xf0*3]),when=code(r)))
        array_push(rp4[1],measured(getRaceData(r,[0xcf2+0xf0*3],word_be),when=code(r)))
        array_push(bp4[1],measured(getRaceInfo(r,[0x0c,0x0C,0x22],word_be),when=code(r)))

        array_push(menuID[1],measured(getMainMenu(r),when=code(r)))
    }
    all = [
        [ccs,team,maps,cups,t1,c1,v1,t2,c2,v2,t3,c3,v3,t4,c4,v4,battles,s],
        [r1,r2,rp1,bp1,rp2,bp2,rp3,bp3,rp4,bp4,time,ps,vr,br],
        [menuID]
    ]
    for i in range(0,2) {
        for j in range(0,length(all[i])-1) {
            cur = all[i][j]
            name = cur[0]
            expr = max_of(cur[1])
            dict = cur[2]
            if (length(cur) > 3) ext = cur[3]
            else ext = ""
            if (i == 0) array_push(Array, rich_presence_lookup(name,expr,dict,ext))
            else if (i == 1) array_push(Array, rich_presence_value(name,expr,dict))
            else array_push(Array, rich_presence_lookup(name,expr,dict,ext))
        }
    }
    return Array[n]
}

/*rich_presence_conditional_display(rpMenu(menuLookup()),"{32}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))*/

rich_presence_conditional_display(rpMenu([0x19,0x1e],1),"In a {0} Grand Prix Race on {2} using {5}"
    + " on {6} | {3} Cup",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1a,0x20,0x24],1),"In a {0} {1}VS Race on {2} using {4}{5}"
    + " on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1a,0x21,0x25],2),"In a {0} {1}VS Race on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1a,0x22,0x26],3),"In a {0} {1}VS Race on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9} | {10}{11} on {12}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1a,0x23,0x27],4),"In a {0} {1}VS Race on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9} | {10}{11} on {12} | {13}{14} on {15}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1b,0x28],1),"In a {16} match on {2} using {4}{5}"
    + " on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1b,0x28],2),"In a {16} match on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1b,0x28],3),"In a {16} match on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9} | {10}{11} on {12}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1b,0x28],4),"In a {16} match on {2} using {4}{5}"
    + " on {6} | {7}{8} on {9} | {10}{11} on {12} | {13}{14} on {15}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1c,0x1d]),"Competing against a boss on {2} using {4}{5}"
    + " on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x1f,0x30,0x31]),"Racing for the best time on {2} using {4}{5}"
    + " on {6} | Time: {28}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

/*rich_presence_conditional_display(rpMenu([0x2c]),"In a Mission on {2} using {4}{5}"
    + " on {6} | Time: {28}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))*/

rich_presence_conditional_display(rpMenu([0x2d]),"In a Tournament on {2} using {4}{5}"
    + " on {6} | Time: {28}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x2e]),"Watching a {0} Grand Prix Replay on {2} using {5}"
    + " on {6} | {3} Cup",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x2f,0x32,0x33,0x34]),"Watching a Time Trial Replay on {2}"
    + " using {4}{5} on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x44]),"Watching a Demo on {2}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

/*rich_presence_conditional_display(rpMenu([0x54]),"Preparing for multiplayer fun with {29} more"
    + " player{17}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))*/

rich_presence_conditional_display(rpMenu([0x55,0x56,0x57]),"Connected to the Wi-Fi services"
    + " and preparing to compete against players from all over the world | {30}VR | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x58]),"Voting on the next track to get picked"
    + " | Global | {5} on {6} | {30}VR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x59]),"Voting on the next battle map to get picked"
    + " | Global | {5} on {6} | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x5b,0x5c,0x5d]),"Connected to the Wi-Fi services"
    + " with a second player and preparing to compete against players from all over the world"
    + " | {30}VR | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x5e]),"Voting on the next track to get picked"
    + " | Global | {5} on {6} | {8} on {9} | {30}VR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x5e]),"Voting on the next battle map to get picked"
    + " | Global | {5} on {6} | {8} on {9} | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x60,0x61]),"Voting on the next track to get picked"
    + " | Friend Room | {5} on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x62,0x63]),"Voting on the next battle map to get picked"
    + " | Friend Room | {5} on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x64,0x65]),"Voting on the next track to get picked"
    + " | Friend Room | {5} on {6} | {8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x66,0x67]),"Voting on the next battle map to get picked"
    + " | Friend Room | {5} on {6} | {8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x68]),"In a VS Race on {2}"
    + " | Global | {5} on {6} | {30}VR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x69]),"In a VS Race on {2}"
    + " | Global | {5} on {6} | {8} on {9} | {30}VR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x6a,0x6b]),"Watching others race on {2}"
    + " | Global | {30}VR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x6c]),"In a {16} match on {2}"
    + " | Global | {5} on {6} | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x6d]),"In a {16} match on {2}"
    + " | Global | {5} on {6} | {8} on {9} | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x6e,0x6f]),"Watching others battle on {2}"
    + " | Global | {31}BR",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x70,0x71]),"In a {1}VS Race on {2}"
    + " | Friend Room | {5} on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x72,0x73]),"In a {16} match on {2}"
    + " | Friend Room | {5} on {6}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x74,0x75]),"In a {1}VS Race on {2}"
    + " | Friend Room | {5} on {6} | {8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_conditional_display(rpMenu([0x76,0x77]),"In a {16} match on {2}"
    + " | Friend Room | {5} on {6} | {8} on {9}",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))

rich_presence_display("{32}\n//RP by Darky",
    rpTypes(0),rpTypes(1),rpTypes(2),rpTypes(3),rpTypes(4),rpTypes(5),
    rpTypes(6),rpTypes(7),rpTypes(8),rpTypes(9),rpTypes(10),rpTypes(11),
    rpTypes(12),rpTypes(13),rpTypes(14),rpTypes(15),rpTypes(16),rpTypes(17),
    rpTypes(18),rpTypes(19),rpTypes(20),rpTypes(21),rpTypes(22),rpTypes(23),
    rpTypes(24),rpTypes(25),rpTypes(26),rpTypes(27),rpTypes(28),rpTypes(29),
    rpTypes(30),rpTypes(31),rpTypes(32))