// ~Hack~ Dog Collab
// #ID = 22569

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
function funcCalc(func,val) {
    return measured(tally_of(func, val, y=>y)) && trigger_when(always_false())
           || never(tally_of(func, val+1, y=>y)) && always_false()
}
function funcCalcS(cal,start,end) {
    func = []
    func2 = []
    array_push(func2, once(always_true()))
    for i in range (0, length(cal)-1) {
        array_push(func, cal[i])
        array_push(func2, cal[i])
    }
    return measured(tally_of(func, 99, y=>y), when=once(start)) && trigger_when(always_false())
           || unless(tally_of(func2, 1, y=>y)) && never(end) && always_false()
}
function fct() {
    Array = []
    array_push(Array, deduct(prev(reds) < reds))
    for i in [5,7] {
        btn = bit(i, 0x15a547)
        array_push(Array, deduct(prev(btn) == 0 && btn == 1))
    }
    array_push(Array, coins - prev(coins) == 1)
    return Array
}
function grd() {
    Array = []
    for i in range (0,240) {
    function cur(j,tp=dword) => tp(0x246db0+i*0x264+j)
    array_push(Array, cur(0x210) == 0x803fa96c && cur(0x150,byte) == 3)
    }
    return Array
}

maplookup = {}
map = byte(0x23a140)
health = byte(0x273d9d)
savefile = byte(0x23a146)
coins = byte(0x273d9a)
reds = byte(0x244b06)
dialog = word(0x23906a)
screen = byte(0x244c9b)
ground = word(0x24494e)
function savebits(i,j) => bit(i, savefile*0x40+0x089c60+j)
function starData(i=0) => byte(0x23ad38+i)
function mario(i=0,tp=dword) => tp(0x273ce0+i)
function negate(i) => map != i || screen == 1 && health == 0

maps = [[0x0b,"Maple Markindon",0x0d],[0x04,"Cumulus Correctional Center",0x0b],[0x09,"Hair-Raising High Rise",0x07],
[0x18,"Koopa Atoll",0x06],[0x05,"Peach Ruins",0x04,"Ruined Memories"],[0x0c,"Swirling Circus",0x05],[0x08,"Awe-Inspiring Spires",0x08],
[0x16,"Sakura Stronghold",0x09,"A Strong Bond With My Dog"],[0x07,"Forbidden Factory",0x0a],[0x17,"Desolate Reservoir",0x0f],
[0x11,"Bowser's Rainbow Rings",0x10],[0x13,"Bowser's Flying Fortress",0x17],[0x1b,"Bowser's Furious Finale",0x15],
[0x00,"Loading"],[0x01,"Title Screen"],[0x06,"Intro"],[0x10,"Level Select"],[0x19,"The End"],
[0x15,"Bowser's Furious Finale"],[0x1e,"Bowser's Rainbow Rings (Arena)"],[0x21,"Bowser's Furious Finale (Arena)"],
[0x22,"Bowser's Flying Fortress (Arena)"]]

for i in range(0,length(maps)-1) {
    cur = maps[i]
    maplookup[cur[0]] = cur[1]
    if (length(cur) == 4) {
        off = cur[2]
        if (all_of([0x11,0x13,0x1b],y=>cur[0] != y)) {
            bits = bitcount(savefile*0x40+0x089c60+off)-savebits(7,off)
            if(any_of([0x05,0x16],y=>cur[0] == y))
            achievement(
                title = cur[3], points = 5,
                description = format("Collect all 7 Power Stars in {0}",cur[1]),
                trigger = prev(bits) == 6 && measured(bits == 7, when=map != 0x01)
            )
        }
        /*else {
            bits = bit0(savefile*40+off)
            achievement(
                title = cur[1], points = 5,
                description = format("Collect the Red COin Star in {0}",cur[1]),
                trigger = prev(bits) == 6 && measured(bits == 7, when=map != 0x01)
            )
        }*/
    }
}

achievement(
    title = "Melting Money Melee", points = 5,
    description = "In Peach Ruins collect the star '8 Red Hot Reds' with each yellow coin earning you points while red coins and A/Z button uses cost a point",
    trigger =  never(negate(5)) && once(mario(0x18,word) == 0x1924)
            && trigger_when(mario(0x18,word) == 0x1302 && starData() == 4 && starData(1) == 4)
            || funcCalcS(fct(),mario(0x18,word) == 0x1924,map == 5)
)

achievement(
    title = "Overthrowing the General", points = 5,
    description = "In Peach Ruins defeat General Motos without taking damage from his attacks",
    trigger =  never(negate(5) || mario(0x1c,word) != 0x460 && prev(health) > health) && once(dialog == 0)
            && trigger_when(dialog == 1)
)

achievement(
    title = "Ninji in Training", points = 5,
    description = "In Sakura Stronghold collect the star 'Courtyard's 8 Red Coins' without being spotted by a guard or touching the mud",
    trigger =  never(negate(0x16) || mario(0x4c) == mario(0x80) && ground == 9 || any_of(grd(),y=>y))
            && once(mario(0x18,word) == 0x1924) && trigger_when(mario(0x18,word) == 0x1302 && starData() == 7 && starData(1) == 4)
)