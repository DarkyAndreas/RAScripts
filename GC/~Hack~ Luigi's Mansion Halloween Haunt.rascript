// ~Hack~ Luigi's Mansion: Halloween Haunt
// #ID = 30713

map = dword_be(0x004d80a4)
check = prev(dword_be(0x004d80a0)) == 2 && map == 2
roomlookup = {}
healthtext = {}
statPointer = (dword_be(0x003d8b7c) & 0x1ffffff)
coords = (dword_be(0x003d8b40) & 0x1ffffff)
menu = dword_be(0x004d80a0)
health = word_be((dword_be(0x003d8b40) & 0x1ffffff) + 0xB8)
room = dword_be(statPointer + 0x35C)
mode = word_be(statPointer + 0x2C) + dword_be(0x004d80c0)

rooms = {
    0: ["Wardrobe Room","Basement","Sorcery Room","Library","Grand Hall",
        "Foyer","Master Bedroom","Haunted Bedroom","Yard","Living Room"],
    1: [0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x14],
}

modetext = {100:"Normal", 101:"Hidden", 001:"Daredevil"}

function roomCalc() {
    Array = []
    for i in range (0, length(rooms[1])-1) {
        array_push(Array, room != rooms[1][i])
    } return all_of(Array, y => y)
}
function money() {
    Array = []
    MoneyArray = {0: [5,20,100,500,800,1000,2000,5,20000,50,100,1000]}
    for i in range (0, 2) {
        array_push(Array, dword_be(statPointer + 0x324 + 4*i) * MoneyArray[0][i])
    } return sum_of(Array, y => y)
}

function jewelCalc() {
    Array = []
    for i in range (1, 1) {
        array_push(Array, dword_be((dword_be(0x003d8b7c) & 0x1ffffff) + 0x330 + 4*i))
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

bitflags = {
    0: [bit5(0x003d5db2),bit7(0x003d5db2),bit6(0x003d339b),],
    1: ["Unlock the ability to use","with your Poltergust"],
    2: ["Fire","Water","Toad"],
    3: ["Rescue","with the help of Madame Clairvoya"],
}

bitflagsN = {
    0: ["My Precious!","Reflected in the Water","Scream Shroom"],
    1: ["Heated Pumpkin Soup","Reflected in the Ghosts Tears","Watching over You"],
    2: ["The Owners Cold Shoulder","The Fire Against This Dry Place","Out of the Darkness"],
}

ending = {
    0: ["Hollow Haunt","Flooded in Terror","Ghostly Lies and Dares"],
    1: ["Normal","Hidden","Daredevil"],
    2: [word_be(statPointer + 0x2C) == 100 && dword_be(0x004d80c0) == 0,
        word_be(statPointer + 0x2C) == 100 && dword_be(0x004d80c0) == 1,
        word_be(statPointer + 0x2C) == 1 && dword_be(0x004d80c0) == 0],
}

p = {
    0: [3,5,10],
    1: [5,10,25],
}

for i in range (0, 2) {
    for j in range (0, length(bitflags[0])-1) {
        achievement(
            title = format("{0}",bitflagsN[i][j]), points = p[0][i],
            description = format("{0} {1} {2} in the {3} Mansion",bitflags[1+(j/2)*2][0], bitflags[2][j], bitflags[1+(j/2)*2][1], ending[1][i]),
            trigger = check && ending[2][i] && prev(bitflags[0][j]) == 0 && bitflags[0][j] == 1
        )
    }
    achievement(
        title = format("{0}",ending[0][i]), points = p[1][i], type = "win_condition",
        description = format("Lift the curse of Toad and you in the {0} Mansion",ending[1][i]),
        trigger =  dword_be(0x003a3ae4) == 5 && prev(room) == 3 && ending[2][i]
    )
    leaderboard(
    title = format("{0} Mansion - Most Money",ending[1][i]),
    description = format("Most amount of money accumulated during the {0} mansion cleaning",ending[1][i]),
    start = ending[2][i] && map == 2 && room == 6 && prev(byte(0x004d8212)) == 0 && byte(0x004d8212) == 1,
    cancel = dword_be(0x003a3ae4) == 1,
    submit = dword_be(0x003a3ae4) == 5 && prev(room) == 3,
    value = measured(prev(money()*1000)), format="VALUE", lower_is_better=false
)
}

achievement(
    title = format("Paying the Price"), points = 2,
    description = format("Get a bad ending by being cursed forever or escaping without Toad"),
    trigger =  check && __ornext(room == 3 || room == 6) && bitflags[0][0] == 1 && dword_be(0x003d2d5c) == 7
)

achievement(
    title = "Plundering the House", points = 5,
    description = "Collect all 6 Emeralds and get out of the mansion together with Toad",
    trigger =  dword_be(0x003a3ae4) == 5 && prev(room) == 3 && prev(jewelCalc()) >= 6
)

achievement(
    title = format("Ruler of Money"), points = 5,
    description = format("Successfully leave the mansion with 3.500.000G or more"),
    trigger =  dword_be(0x003a3ae4) == 5 && prev(room) == 3 && prev(money()) >= 3500
)

menutext = {
    1:"taking a look at the horrific Title Screen",
    3:"getting spooked on the File Select Screen",
    4:"watching his own frightening Intro",
    7:"enjoying a Pikmin movie"
}

maptext = {
    1:"being laughed at by E. Gadd in the Laboratory",
}

rich_presence_conditional_display(menu == 1 || menu == 3 || menu == 4 || menu == 7, "Luigi is currently {0}",
    rich_presence_lookup("Menu", menu, menutext))
rich_presence_conditional_display(dword_be(0x003a3ae4) == 5, "Luigi is currently enjoying the Credits")
rich_presence_conditional_display(menu == 6, "Luigi has lifted the curse! He cleared the manion with a score of {0}.000G | {1}/6 Emeralds",
    rich_presence_value("Fixed3", prior(money()), "FIXED3"), rich_presence_value("Value", prior(jewelCalc()), "Value"))
rich_presence_conditional_display(map == 2 && room == 8, "Luigi is currently fighting against the hoard of minions in {0} | Health: {1} | Cash: {2}.000G | {3} Mansion | {4}/6 Emeralds",
    rich_presence_lookup("Room", room, roomlookup), rich_presence_value("Value", health, "VALUE"),
    rich_presence_value("Fixed3", money(), "FIXED3"), rich_presence_lookup("Mode", mode, modetext),
    rich_presence_value("Value", jewelCalc(), "Value"))
rich_presence_conditional_display(roomCalc() && health == 0, "Luigi is getting ready to hunt ghosts")
/*rich_presence_conditional_display(map != 2 && menu == 2 || menu == 5, "Luigi is currently {0} | Health: {2} | Cash: {3}.000G | {4} Mansion | {5}/8 Emeralds",
    rich_presence_lookup("Map", map, maptext), rich_presence_lookup("Room", room, roomlookup),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("Mode", mode, modetext), rich_presence_value("Value", prior(jewelCalc()), "Value"))*/
rich_presence_conditional_display(roomCalc(), "Luigi is currently {0} in {1} X={6} Y={7} Z={8} | Health: {2} | Cash: {3}.000G | {4} Mansion | {5}/6 Emeralds",
    rich_presence_lookup("Health", health, healthtext), rich_presence_value("Value", room, "VALUE"),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("Mode", mode, modetext), rich_presence_value("Value", jewelCalc(), "Value"),
    rich_presence_value("Value", dword_be(coords + 0), "VALUE"), rich_presence_value("Value", dword_be(coords + 4), "VALUE"),
    rich_presence_value("Value", dword_be(coords + 8), "VALUE"))
rich_presence_display("Luigi is currently {0} in {1} | Health: {2} | Cash: {3}.000G | {4} Mansion | {5}/6 Emeralds\n//RP by DarkyAndreas",
    rich_presence_lookup("Health", health, healthtext), rich_presence_lookup("Room", room, roomlookup),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Fixed3", money(), "FIXED3"),
    rich_presence_lookup("Mode", mode, modetext), rich_presence_value("Value", jewelCalc(), "Value"))