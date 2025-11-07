// ~Hack~ Luigi's Mansion Beta Restoration
// #ID = 30151

function baseChain(first,offsets,lastType) {
    type = dword_be
    mask = 0x1ffffff
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
function stats(i,j=dword_be) => baseChain(0x003d8b7c,[i],j)
function time(i=0) => dword_be(0x004d8718+i)
function sum(i) => sum_of(i,y=>y)

roomlookup = {
    0x00:"E.gadd's Labs",
    0x02:"Entrance",
    0x1f:"Entrance 2F",
    0x24:"Living room",
    0x1e:"West hall 2F",
    0x23:"Study",
    0x22:"Bed room 1",
    0x1a:"Child's room",
    0x06:"Main hall 1F (South)",
    0x08:"Dining room",
    0x07:"Kitchen",
    0x0b:"Back yard",
    0x0a:"Main hall 1F (Middle)",
    0x11:"Main hall 1F (North)",
    0x14:"Main hall 1F (North)",
    0x10:"Lavatory",
    0x15:"Bath room"
}

visited = []
cleared = []
rooms = [0x05,0x0d,0x0f,0x11,0x13,0x17,0x23,0x25,0x29,0x31,0x3b,0x3d,0x43,0x45,0x47,0x6b]
light = [0x11,0x13,0x23,0x31,0x43,0x45,0x47]

for i in range(0,length(rooms)-1) {
    cur = rooms[i]
    array_push(visited, bit0(0x003cdf50+cur))
    if(array_contains(light, cur)) array_push(cleared, bit1(0x003cdf50+cur))
}

menu = dword_be(0x004d80a0)
map = dword_be(0x004d80c8)
health = baseChain(0x003d8b40,[0xb8],word_be)
room = stats(0x35c)
coins = stats(0x324)
frames = time(-4)
counter = time()*60+time(4)
comp = sum(visited)+sum(cleared)
clen = length(visited)+length(cleared)
clear = trigger_when(prev(sum(cleared)) < length(cleared) && sum(cleared) == length(cleared))
hp = prev(health) > health && health < 100

achievement(
    title = "Paid Training", points = 3,
    description = "In the training room, capture at least 8 ghosts and collect 8 coins",
    trigger = never(map != 0x03) && tally(8, prev(coins) < coins, deduct(prev(coins) > coins))
)

achievement(
    title = "Training Can Hurt", points = 1,
    description = "Find a way to get hurt in the training room",
    trigger = menu != 0x01 && map == 0x03 && hp
)

achievement(
    title = "Dog Percent", points = 3,
    description = "Reach the back yard before 0:20 AM",
    trigger = menu != 0x01 && map == 0x02 && counter < 20 && trigger_when(room == 0x0b)
)

achievement(
    title = "E3 Coin Collector", points = 10,
    description = "Collect 300 coins",
    trigger = map == 0x02 && prev(coins) < 300 && coins >= 300
)

achievement(
    title = "E3 Mansion Cleared!", points = 5, type = "Win_condition",
    description = "Visit and clear every possible room",
    trigger = map == 0x02 && prev(comp) < clen && comp == clen
)

achievement(
    title = "Rushed Beta", points = 5,
    description = "Clear every possible room before 0:45 AM",
    trigger = menu != 0x01 && map == 0x02 && counter < 45 && clear
)

achievement(
    title = "E3 Mansion Master", points = 10,
    description = "Clear every possible room without taking damage in any room",
    trigger =  never(menu == 0x01 || map != 0x02 || hp)
            && once(prev(map) != 0x02 && map == 0x02) && clear
)

leaderboard(
    title = "Beta Money",
    description = "Most coins collected before E. Gadd calls you to end the beta",
    start = map == 0x02 && prev(frames < 0x3f46) && frames >= 0x3f46,
    cancel = always_false(),
    submit = always_true(),
    value = measured(coins), format="VALUE"
)

rich_presence_conditional_display(menu == 1, "Starting the E3 beta")
rich_presence_conditional_display(map == 3, "Luigi is catching fake ghosts in the training room")
rich_presence_display("Luigi is exploring the E3 mansion in the {0} ❤ {1}% / 💰 {2} / 🕒 {3}am
//original RP by dericobanjo
//fixes and cleanup by Darky",
    rich_presence_lookup("Room", room, roomlookup,"void of the mansion"),
    rich_presence_value("Value", health, "VALUE"), rich_presence_value("Value", coins, "VALUE"),
    rich_presence_value("SECS", counter, "SECS"))