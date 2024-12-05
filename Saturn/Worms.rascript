// Worms
// #ID = 11649

function alts(i) {
    return i(0) || i(1) || i(2) || i(3)
}

function worm(exclude,val) {
    Array = []
    for i in range(0, 3) {
        if (i != exclude) {
            for j in range(0,3) {
                array_push(Array, byte(0x1d4e54 + val + 0xAC * j + 0x2B0 * i))
            }
        }
    }
    return Array
}

function calc(i,j,l) {
    return tally_of(worm(i,j), 1, y=>prev(y) != l && y == l)
}

function kamikaze(i) {
    n = array_map(worm(i,0x7A),y=>deduct(once(prev(y) != 2 && y == 2)))
    array_push(n, repeated(1, always_true()))
    return unless(tally(1, n)) && calc(i,0x66,0) && byte(0x15ec26+i*4) == 3
        && byte(0x1d616e) >= i*4 && byte(0x1d616e) <= 0x03 + i*4
}


achievement(
    title= "Reverse Kamikaze", points = 25,
    description = "Kill a Worm using another Worm",
    trigger = always_true() && (alts(kamikaze))
)