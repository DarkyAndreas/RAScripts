// ~Homebrew~ Tetris (Austria)
// #ID = 24691

function score(i=0) => word_be(0x0002E0+i)
function scrca(i=0) => score(i) - prev(score(i))
function controls(i=0) => byte(0xf8+i)
function screen() {
    Array = [[[],[]],[[],[]]]
    for i in range(0,4) {
        for j in range(0,4) {
            for l in range(0,1) {
                log = byte(0x0002B1+l*9+j-0x10*i)
                array_push(Array[l][0],prev(log) != 0)
                array_push(Array[l][1],log == 0)
            }
        }
    }
    return Array
}
function logic(i=0,l=0) {
    if (i==0) pLog = always_true()
    else pLog = players == 2
    if (l==0) nLog = (controls(1-i) != 0x70 || controls(3-i) != 0x70)
    else nLog = (byte(0x2d6+i) != 0)
    return ((once(pLog && prev(screen) == 0x64 && screen == 0xa0
          && never(nLog))
          && trigger_when(prev(score(i*2)) < 0x50+0xB0*l && score(i*2) >= 0x50+0xB0*l)))
}

screen = byte(0xdb)
players = byte(0xe4)

for i in range(0,3) {
    cheevo = [["Easy Start",100,0x100,5],["Block for Block, Point for Point",500,0x500,10],
              ["Crushing the Triple-Digit",1000,0x1000,25],["Tetris Master",2000,0x2000,50]]
    cheevo2 = [["Double the Fun",100,0x100,10],["Pure Concentration",500,0x500,25]]
    cheevo3 = [["Double It!",0x31],["Better Thrice Than Twice",0x61],["TETRIS!",0x101]]
        achievement(
        title = cheevo[i][0], points = cheevo[i][3], type="progression",
        description = format("Reach a Score of {0} with one player",cheevo[i][1]),
        trigger = screen == 0xa0 && __ornext(any_of([0,2],y=>score(y) >= cheevo[i][2]))
    )
    if (i < 2)
    achievement(
        title = cheevo2[i][0], points = cheevo2[i][3],
        description = format("Reach a Score of {0} with both players",cheevo2[i][1]),
        trigger = screen == 0xa0 && players == 2 && all_of([0,2],y=>score(y) >= cheevo[i][2])
    )
    if (i < 3)
    achievement(
        title = cheevo3[i][0], points = i+2,
        description = format("Clear {0} Lines at once",i+2),
        trigger = screen == 0xa0 && __ornext(any_of([0,2],y=>scrca(y) ==  cheevo3[i][1]))
    )
}

achievement(
    title = "Back 2 Black", points = 5,
    description = "Get a Back-to-Back Tetris",
    trigger =  never(screen != 0xa0) && any_of([0,2],y=>repeated(2, scrca(y) == 0x101
            && never(scrca(y) == 0x11 || scrca(y) == 0x31 || scrca(y) == 0x61)))
)

achievement(
    title = "Somebody Has to Clean up This Mess", points = 10,
    description = "Get a Perfect Clear",
    trigger = screen == 0xa0 && any_of(screen(),y=>all_of(y[0],x=>x) && all_of(y[1],x=>x))
)

achievement(
    title = "Block Building Against Time", points = 10,
    description = "Reach at least 50 points while only controlling one player in 2 player mode",
    trigger =  never(screen != 0xa0) && players == 2 && any_of([0,1],y=>logic(y))
)

achievement(
    title = "Check Out My Cool Rotation", points = 10,
    description = "Reach at least 100 points without turning any blocks",
    trigger = never(screen != 0xa0) && any_of([0,1],y=>logic(y,1))
)


rich_presence_conditional_display(screen == 0,"Currently on the Title Screen")
rich_presence_conditional_display(screen == 0x64,"A new Match is about to begin")
rich_presence_conditional_display(screen == 0xa0 && players == 1, "Currently in a 1P Match | P1 Score: {0}",
    rich_presence_value("Value", bcd(score()))
)
rich_presence_conditional_display(screen == 0xa0 && players == 2, "Currently in a 2P Match | P1 Score: {0} | P2 Score: {1}",
    rich_presence_value("Value", bcd(score())),
    rich_presence_value("Value", bcd(score(2)))
)

rich_presence_display(" \n//RP by Darky")
