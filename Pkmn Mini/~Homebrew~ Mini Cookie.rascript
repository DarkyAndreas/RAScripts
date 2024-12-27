// ~Homebrew~ Mini Cookie
// #ID = 18257

function puzzleCalc() {
    puzzle = [0x0e,0x12,0x1a,0x1f,0x29,0x2a,0x2b,
          0x2e,0x32,0x35,0x37,0x3a,0x3b,0x3e,
          0x43,0x47,0x4e,0x51,0x52,0x53,0x5f]
    include = []
    exclude = []
    for i in range(0,5) {
        for j in range (0,0x0f) {
            if (array_contains(puzzle, i*0x10+j) == false) {
                array_push(exclude, byte(0x0360 + i*0x10+j))
            }
            else array_push(include, byte(0x0360 + i*0x10+j))
        }
    }
    return sum_of(exclude, y=>prev(y)) == 3 && sum_of(exclude, y=>y) == 1 && all_of(include, y=>y == 2)
}

achievement(
    title = "Creating Puzzles Is Just So Annoying", points = 3,
    description = "Solve the fifteenth Picross puzzle and make art! (See Forum Topic)",
    trigger =  puzzleCalc()
)