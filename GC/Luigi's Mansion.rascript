// Luigi's Mansion
// #ID = 4325

map = dword_be(0x4c5764)
check = prev(dword_be(0x4c5760)) == 2 && map == 2
roomlookup = {}
healthtext = {}
statPointer = (dword_be(0x003c613c) & 0x1ffffff)
coords = (dword_be(0x003c6100) & 0x1ffffff)
menu = dword_be(0x004c5760)
mode = bit0(0x4c5787)
heartKey = bit7(0x003c336e)
clubKey = bit0(0x003c336f)
diamondKey = bit1(0x003c336f)
spadeKey = bit0(0x003c33dd)
health = word_be((dword_be(0x003c6100) & 0x1ffffff) + 0xB8)
room = dword_be(statPointer + 0x35C)

function jewelCalc() {
    Array = []
    for i in range (0, 2) {
        array_push(Array, dword_be((dword_be(0x003c613c) & 0x1ffffff) + 0x330 + 4*i))
    } return sum_of(Array, y => y)
}

function booCalc() {
    Array = []
    for i in range (0, 14) {
        array_push(Array,  prev(byte((dword_be((dword_be(0x003c1f50 + 4*i) & 0x1ffffff) - 0x08) & 0x1ffffff) + 0x83)) != 4
                        && byte((dword_be((dword_be(0x003c1f50 + 4*i) & 0x1ffffff) - 0x08) & 0x1ffffff) + 0x83) == 4)
    } return trigger_when(tally_of(Array, 10, y => once(y && never(dword_be(0x003c6360) == 0))))
}

function frozenbooCalc() {
    Array = []
    for i in range (0, 3) {
      /*function pointer(i, x) => byte((dword_be((dword_be(0x004c6360) & 0x1ffffff) + 0x820 + 4*i) & 0x1ffffff) + x)
        array_push(Array, tally(50,  pointer(i, 0x0F) == 8 && prev(pointer(i, 0x344)) > pointer(i, 0x344)
                        && never(prev(pointer(i, 0xA28)) != pointer(i, 0xA28)))) The game doesn't work like that */
        array_push(Array, byte((dword_be((dword_be(0x004c6360) & 0x1ffffff) + 0x820 + 4*i) & 0x1ffffff) + 0x0F) == 8)
    } return __ornext(any_of(Array, y => y))
} 

bitflags = {
    0: [bit5(0x003c3372),bit6(0x003c3372),bit7(0x003c3372),bit4(0x003c337b),
        bit5(0x003c337b),bit6(0x003c337b),bit7(0x003c337b),bit0(0x003c337c)],
    1: ["Burn It All Down!","Dinner Is Served Cold Today","The New Gardener","Squeaky Clean",
        "The Gold Inside the Moon","Bowser's Best Buddy","Stepping in Dangerous Territory","You Got Mail"],
    2: ["fire","ice","water","Hat,","Star,","Glove,","Shoe,","Letter,"],
    3: ["Unlock the ability to use", "with your Poltergust"],
    4: ["Find Mario's", "you better keep an eye on it!"],
    5: [3,5,4,3,5,5,5,5],
}

achievement(
    title = "Musical Madness", points = 0,
    description = "Hear Totaka's Song",
    trigger =  map == 3 && prev(word_be(0x0070feea)) == 0x25 && word_be(0x0070feea) == 0x25
            && prev(dword_be((dword_be(0x00739980) & 0x1ffffff) + 0x04)) < 0x2320
            && dword_be((dword_be(0x00739980) & 0x1ffffff) + 0x04) >= 0x2320
)

achievement(
    title = "A Long Way to Mastery", points = 1,
    description = "Disappoint Professor E. Gadd twice in the tutorial without leaving",
    trigger =  never(map != 3) && once(word_be((dword_be(0x003c030c) & 0x1ffffff) + 0x17) == 0x3538)
            && tbyte_be((dword_be(0x003c030c) & 0x1ffffff) + 0xffffffef) == 0x313633
            && word_be((dword_be(0x003c030c) & 0x1ffffff) + 0x1f) == 0x3332
)

achievement(
    title = "Ghost Bustin'", points = 2,
    description = "Make Professor E. Gadd proud by catching at least 10 ghosts in the tutorial",
    trigger =  map == 3 && tbyte_be((dword_be(0x003c030c) & 0x1ffffff) - 0x11) == 0x313433
            && word_be((dword_be(0x003c030c) & 0x1ffffff) + 0xA) == 0x3331 && dword_be(statPointer + 0x21C) >= 10
)

achievement(
    title = "BOOsting Out!", points = 3, type = "progression",
    description = "Set free a hoard of Boos that have been locked away for good",
    trigger =  dword_be(0x4c5760) == 2 && map == 1 && dword_be((dword_be(0x003c613c) & 0x1ffffff) + 0x35C) == 14
            && prev(bit0(0x003bb275)) == 0 && bit0(0x003bb275) == 1
)

achievement(
    title = "BOOsting the Confidence", points = 2, type = "progression",
    description = "Capture 5 Boos",
    trigger =  check && prev(byte((dword_be(0x00391024) & 0x1ffffff) + 0x77)) == 4
            && byte((dword_be(0x00391024) & 0x1ffffff) + 0x77) == 5
)

for i in range (0, length(bitflags[0])-1) {
    achievement(
        title = format("{0}",bitflags[1][i]), points = bitflags[5][i], type = "progression",
        description = format("{0} {1} {2}",bitflags[3+3%(i+1)/3][0], bitflags[2][i], bitflags[3+3%(i+1)/3][1]),
        trigger = check && prev(bitflags[0][i]) == 0 && bitflags[0][i] == 1
    )
}

achievement(
    title = "Telephone Prank", points = 2, type = "missable",
    description = "Learn about Uncle Grimmly and successfully escape a pack of ghosts",
    trigger =  check && prev(byte(0x4c58e2)) == 1 && byte(0x4c58e2) == 0 && room == 53
)

achievement(
    title = "The Final Laugh", points = 2, type = "progression",
    description = "Obtain the Spade Key and gain access to the Secret Altar",
    trigger =  check && prev(bit0(0x003c33dd)) == 0 && bit0(0x003c33dd) == 1
)

achievement(
    title = "Hidden Riches", points = 5,
    description = "Collect all 30 Emeralds, Sapphires, and Rubies in the Normal Mansion, or all 15 in the Hidden Mansion",
    trigger =  check && bit3(0x003bb3cc) == 1 && bit7(0x003bb3ba) == 1 && bit4(0x003bb3c7) == 1
            && (byte(0x004c5787) == 0 && prev(jewelCalc()) <= 30 && jewelCalc() == 30
            || byte(0x004c5787) == 1 && prev(jewelCalc()) <= 15 && jewelCalc() == 15)
)

achievement(
    title = "BOOrning to See Them Like That", points = 1,
    description = "Use a certain element on a Boo to capture it faster",
  //descriptOld = "Use Ice on a Boo to take away at least 50 HP without letting him leave the room",
    trigger =  check && dword_be((dword_be(0x003c613c) & 0x1ffffff) + 0x1B4) == 4 && frozenbooCalc()
)

achievement(
    title = "BOOld of You to BOOll up Like That", points = 5, type = "missable",
    description = "Freeze at least 10 Little Boos at once using an ice ball during the Boolossus fight",
    trigger =  dword_be(0x4c5760) == 2 && map == 11
            && byte((dword_be((dword_be(0x003c1f4c) & 0x1ffffff) - 0x08) & 0x1ffffff) + 0x24C) >= 10 && booCalc()
            
)

rooms = {
    0: ["Butler's Room","Hidden Room","Foyer","Fortune-teller's Room","Mirror Room",
    "Laundry Room","Hallway (1F)","Kitchen","Dining Room","Ball Room ","Hallway (1F)","Boneyard",
    "Billiards Room","Projection Room","Storage Room","Graveyard","Washroom (1F)",
    "Hallway (1F)","Stairs 1F - 2F","Hallway (1F)","Bathroom (1F)","Conservatory",
    "Rec Room","Courtyard","Nursery","The Twin's Room","Sitting Room","Guest Room",
    "Family Hallway","Upstairs Foyer","Hallway (2F)","Stairs 2F - 3F","Master Bedroom",
    "Study","Parlor","Sealed Room","Hallway (2F)","Hallway (2F)","Small Balcony","Wardrobe Room",
    "Anteroom","Astrall Hall","Observatory","Washroom (2F)","Hallway (2F)","Hallway (2F)",
    "Bathroom (2F)","Nana's Room","Tea Room","Armory","Hallway (3F)","Telephone Room",
    "Safari Room","Stairs 2F - 3F","Ceramics Studio","Clockwork Room","The Artist's Studio",
    "Hallway (3F)","Balcony","Roof","Cold Storage","Hallway (BF)","Cellar","Stairs 1F - BF",
    "Pipe Room","Breaker Room","Hallway (BF)","Hallway (BF)","Bottom of the Well","Secret Altar"],
    1: [0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
    0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11,0x12,
    0x14,0x15,0x16,0x17,0x18,0x1a,0x1b,0x1c,0x1d,0x1e,
    0x1f,0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,
    0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,0x30,0x31,0x32,
    0x33,0x34,0x35,0x37,0x38,0x3a,0x3b,0x3c,0x3d,0x3e,
    0x3f,0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,
    0x49],
}

function roomCalc() {
    Array = []
    for i in range (0, length(rooms[0])-1) {
        array_push(Array, room != rooms[1][i])
    } return all_of(Array, y => y)
}
function money() {
    Array = []
    MoneyArray = {0: [5,20,100,500,800,1000,2000,5,20000,50,100,1000]}
    for i in range (0, 11) {
        array_push(Array, dword_be(statPointer + 0x324 + 4*i) * MoneyArray[0][i])
    } return sum_of(Array, y => y)
}

for i in range (0, 100) {
    if (i < 34) healthtext[i] = "about to go flat"
    else if (i > 65) healthtext[i] = "keeping his cool"
    else healthtext[i] = "starting to shake"
}


for i in range (0, length(rooms[0])-1) {
    roomlookup[rooms[1][i]] = rooms[0][i]
}

heart = {0:"♡", 1:"♥"}
club = {0:"♧", 1:"♣"}
diamond = {0:"♢", 1:"♦"}
spade = {0:"♤", 1:"♠"}
modetext = {0:"", 1:" | Hidden Mansion"}

menutext = {
    1:"taking a look at the horrific Title Screen",
    3:"getting spooked on the File Select Screen",
    4:"watching his own frightening Intro",
    7:"enjoying a Pikmin movie"
}

maptext = {
    0:"stuck in the Test Map",
    1:"talking with E. Gadd in the Laboratory",
    3:"preparing himself in the Training Room",
    4:"watching the creations of paintings by the Ghost Portrificationizer",
    5:"inhaling dust in the Beta Gallery",
    6:"taking a look at his caught ghosts in the Gallery",
    7:"stepping on bugs in the Beta Gallery 2",
    8:"glitching around in the Beta Gallery 3",
    9:"giving it his all to save his brother in a fight against Bowser and King Boo",
    10:"going through the struggles of a father in a fight against Chauncey",
    11:"letting his hands freeze in a fight against Boolossus",
    12:"watching the creation of a brother by the Mario Deportrificationizer",
    13:"losing trust in his shadow in a fight against Bogmire",
}

rich_presence_conditional_display(menu == 1 || menu == 3 || menu == 4 || menu == 7, "Luigi is currently {0}{1}",
    rich_presence_lookup("Menu", menu, menutext), rich_presence_lookup("Mode", mode, modetext))
rich_presence_conditional_display(dword_be(0x00390dbc) == 5, "Luigi is currently enjoying the Credits")
rich_presence_conditional_display(menu == 6, "Luigi has defeated Bowser and King Boo! He cleared the manion with a score of {0}.000G",
    rich_presence_value("Fixed3", money(), "FIXED3"))
rich_presence_conditional_display(map != 2 && menu == 2 || menu == 5, "Luigi is currently {0} | Health: {2} | Cash: {3}.000G | Keys: {4} {5} {6} {7}{8}",
    rich_presence_lookup("Map", map, maptext), rich_presence_lookup("Room", room, roomlookup),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("KeyHeart", heartKey, heart), rich_presence_lookup("KeyClub", clubKey, club),
    rich_presence_lookup("KeyDiamond", diamondKey, diamond), rich_presence_lookup("KeySpade", spadeKey, spade),
    rich_presence_lookup("Mode", mode, modetext))
rich_presence_conditional_display(roomCalc(), "Luigi is currently {0} in {1} X={8} Y={9} Z={10} | Health: {2} | Cash: {3}.000G | Keys: {4} {5} {6} {7}{11}",
    rich_presence_lookup("Health", health, healthtext), rich_presence_value("Value", room, "VALUE"),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("KeyHeart", heartKey, heart), rich_presence_lookup("KeyClub", clubKey, club),
    rich_presence_lookup("KeyDiamond", diamondKey, diamond), rich_presence_lookup("KeySpade", spadeKey, spade),
    rich_presence_value("Value", dword_be(coords + 0), "VALUE"), rich_presence_value("Value", dword_be(coords + 4), "VALUE"),
    rich_presence_value("Value", dword_be(coords + 8), "VALUE"), rich_presence_lookup("Mode", mode, modetext))
rich_presence_display("Luigi is currently {0} in {1} | Health: {2} | Cash: {3}.000G | Keys: {4} {5} {6} {7}{8}\n//RP by DarkyAndreas",
    rich_presence_lookup("Health", health, healthtext), rich_presence_lookup("Room", room, roomlookup),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("KeyHeart", heartKey, heart), rich_presence_lookup("KeyClub", clubKey, club),
    rich_presence_lookup("KeyDiamond", diamondKey, diamond), rich_presence_lookup("KeySpade", spadeKey, spade),
    rich_presence_lookup("Mode", mode, modetext))