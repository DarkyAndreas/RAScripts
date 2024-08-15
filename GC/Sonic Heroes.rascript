// Sonic Heroes
// #ID = 6313

story = byte(0x452c48)
stage = byte(0x29c33f)
state = byte(0x29c31f)
teams = byte(0x29c54f)
stagestart = byte(0x29c34f)
stageRanks = 0x3e77a3
bossRanks = 0x3e7bfb

ranks = []
rankb = []
chaos = []

stageName = {
    0: ["Seaside Hill","Ocean Palace","Grand Metropolis","Power Plant","Casino Park","Bingo Highway","Rail Canyon",
        "Bullet Station","Frog Forest","Lost Jungle","Hang Castle","Mystic Mansion","Egg Fleet","Final Fortress"],
}

stageDesc = {
    0: ["Resorting to the Seaside Vacation Spots","Keep the Emeralds Away from Any Chao in the Water","Stealing Your Energy to Keep Playing",
        "A City Controlled by Eggman, Is This His Land?","24 Hours Left, Better Risk the World and Your Savings",
        "No Potato or Computer Chips Found Here","Keeping Your Eyes on the Rails and Your Ranks","Now Departing the Eggman Cannon Station",
        "The Perfect Spot for Frog Fishing","Not Lost When You Know What to Do","Getting Ranks and Vanishing Faster than the Ghosts",
        "No Reason to Always Be Halloween Season","This Great Army Shall Also Be Fleeting","The Key to Success Shall Destroy the Doctor's Plans"],
}

hardName = {
    0: ["Silent Seaside Hill","Ruined Palace, Toxicated Ocean","The Dark Futurism","Dying Nature",
        "Rather Radical Royal Rush","Big Wins, Big Numbers, Big Problems","The S in Canyon Means Safety","Pay the Bill, or Take a Bullet",
        "A Small-Sized Frog's Dessert","No Time to Blow Up!","Hanging the Chances","Let Your Soul Be Free!","Crash Landing","High Time Pressure"],
}

bossPoints = {
    0: [3,5,5,5,5,10,10],
}

bossNumb = {
    0: [16,17,18,19,20,21,22],
}

bossName = {
    0: ["the Egg Hawk","Team ","the Robot Carnival","the Egg Albatross","Team ","the Robot Storm",
        "the Egg Emperor. Now play another story!"],
    1: ["Rose","Chaotix","Sonic","Dark"],
    4: ["Dark","Sonic","Chaotix","Rose"],
}

bossDesc = {
    0: ["Amazing Machine, but Not Amazing Enough","Marriage? No Way!","Making Robots is the Same as Breaking Them!",
        "Eggman, You'll Never Beat Us!","Hey Guys, Chill Out","Not a Very Bright Move for a Genius","Great Party, Eggman!"],
    1: ["CRUISER BATTLESHIP, DESTROYED!","You Should Thank Me for Letting You Live","Phew, Did We Get Them All?",
        "LARGE WEAPON TRANSPORTER BATTLESHIP, DESTROYED!","Just a Fake, Like I Thought","I've Had Enough of Those Guys",
        "LARGE ULTIMATE BATTLE ROBOT, DESTROYED!"],
    2: ["That Was a Huge Birdy","Sonic, Let's Go on Our Honeymoon!","That was Quite a Challenge",
        "Let's Go Look for Froggy and Chocola Now!","You Cannot Have Cheese!","Robot Freaks are so Disgusting!",
        "We Did it! Now I can Take Froggy Home With Me!"],
    3: ["Death to the Evil One! Prepare to Die, Eggman!","Before Picking a Fight, Better Know Who You're Up Against",
        "Such a Disorderly Crowd, Just a Waste of Our Time","That Giant Ship was so Cool Looking! Too Bad We Destroyed it!",
        "Sorry Ladies, We Took it Easy on Ya","Did He Really Think He Could Stop Us With That?","All Right Boys, a Job Well Done"],
}

teamsName = {
    0: ["Sonic"],
    1: ["Dark"],
    2: ["Rose"],
    3: ["Chaotix"],
}

exitName = {
    0: ["Enjoying the Night Life without Zero Chasing You"],
    1: ["Be Careful Exploring, Lest You Find Kisaragi Station"],
    2: ["A Shitake Mushroom? I'm Getting Hungry"],
    3: ["I'm Not Lost... I Just Don't Know Where I'm Going Now"],
}

exitDesc = {
    0: ["As Team Rose, skip the first Goal Ring of Casino Park and make your way to the one farther in the stage. Did you know their Team Blast gives you Speed Shoes?"],
    1: ["As Team Rose, skip the first Goal Ring of Bullet Station and make your way to the one farther in the stage"],
    2: ["As Team Rose, skip the first Goal Ring of Frog Forest and make your way to the one farther in the stage"],
    3: ["As Team Rose, skip the first Goal Ring of Lost Jungle and make your way to the one farther in the stage"],
}

exitPos = {
    0: [4760.0],
    1: [-11550.0],
    2: [-27928.0],
    3: [-14376.0],
}

EmeraldTime = {
    0: ["I","30 seconds",0x1e00],
    1: ["II","15 seconds",0x0f00],
    2: ["III","35 seconds",0x2300],
    3: ["IV","20 seconds",0x1400],
    4: ["V","25 seconds",0x1900],
    5: ["VI","30 seconds",0x1e00],
    6: ["VII","1 minute and 10 seconds",0x010a00],
}

EmeraldPoints = {
    0: [10,5,10,10,10,10,25],
}

for i in range (0, 3) {
    for j in range (0, length(bossNumb[0])-1) {
        x = ""
        if (j == 1 || j == 4) x = bossName[j][i]
        achievement(
            title = format("{0}", bossDesc[i][j]), points = bossPoints[0][j], type = "progression",
            description = format("As Team {0}, defeat {1}{2}", teamsName[i][0], bossName[0][j], x),
            trigger =  story == 0 && teams == i && stage == bossNumb[0][j] && state == 12
                    && byte(bossRanks + (16 * j) + (i*4)) == 0
        )
    }
}

for i in range (0, 6) {
    array_push (chaos, dword_be(0x3e7dc4 + 0x0C * i))
}

achievement(
    title = "Collect More than Just Blue Spheres!", points = 10, type = "progression",
    description = "Obtain all seven Chaos Emeralds. Are you ready to battle the real villain?",
    trigger = __ornext(state == 8 || state == 12) && sum_of(chaos, y=>prev(y)) == 6
                && sum_of(chaos, y=>y) == 7
)

achievement(
    title = "Too Bad it's All Over... for You!", points = 25, type = "progression",
    description = "Defeat the Metal Overlord to finish the Last Story",
    trigger = story == 0 && stagestart == 24 && state == 12
)

function rankCalc () {
    return byte(stageRanks + 0x00)/5 + byte(stageRanks + 0x0C)/5 + byte(stageRanks + 0x18)/5 + byte(stageRanks + 0x1C)/5
        +  byte(stageRanks + 0x28)/5 + byte(stageRanks + 0x2C)/5 + byte(stageRanks + 0x38)/5 + byte(stageRanks + 0x44)/5
}

for i in range (0, length(stageName[0])-1) {
    achievement(
        title = format("{0}", stageDesc[0][i]), points = 10,
        description = format("Earn an A rank on every mission for {0}", stageName[0][i]),
        trigger =  __ornext(state == 8 || state == 12) && prev(rankCalc()) == 7
                && measured(rankCalc() == 8)
    )
    array_push (ranks, rankCalc())
    stageRanks = stageRanks + 0x50
}

for i in range (0, 28) {
    array_push (rankb, byte(bossRanks + (i*4))/5)
}
achievement(
        title = "Perfected! Impossible! Nooooooo!", points = 10,
        description = "Earn an A rank on every boss battle with all teams",
        trigger =  __ornext(state == 8 || state == 12) && sum_of(rankb, y=>prev(y)) == 28
                && measured(sum_of(rankb, y=>y) == 29)
)

achievement(
        title = "All Emblem Data... Has Been Copied", points = 25,
        description = "Earn all 120 emblems... but how are your ranks?",
        trigger =  __ornext(state == 8 || state == 12) && prev(byte(0x3e776e)) == 119 && measured(byte(0x3e776e) == 120)
)

achievement(
        title = "All Missions Kneel Before Your Master!", points = 50,
        description = "Earn all 141 A ranks in the game. Are you ready for Super Hard?",
        trigger =  __ornext(state == 8 || state == 12) && sum_of(ranks, y=>prev(y)) + sum_of(rankb, y=>prev(y)) == 140
                && measured(sum_of(ranks, y=>y) + sum_of(rankb, y=>y) == 141)
)

for i in range (0, length(stageName[0])-1) {
    achievement(
            title = format("{0}", hardName[0][i]), points = 5,
            description = format("Clear {0} on Super Hard difficulty", stageName[0][i]),
            trigger = story == 2 && stage == 2 + i && state == 12
    )
}

function exitLogic(i)
{
    Array = []
    for j in range (0, 7) {
        if (i==0) array_push(Array, float_be((exit(i, j) & 0x1ffffff) +0x94) >= exitPos[i][0])
        else array_push(Array, float_be((exit(i, j) & 0x1ffffff) +0x94) <= exitPos[i][0])
         }
        
    return __ornext(any_of(Array, y => y))
}

function exit(i, j) => dword_be((dword_be(byte(0x9d986b) * 4 + 0x2ad070) & 0x1ffffff) + (0x40 + 8*j))

for i in range (0, 3) {
    achievement(
            title = format("{0}", exitName[i][0]), points = 3 + i + ((i*-1)/2),
            description = format("{0}", exitDesc[i][0]),
            trigger =  stage == 6 + (2*(1%(i+1))) + (i/1) && state == 12 && teams == 2 && exitLogic(i) && byte(0x00452c38) == 0
    )
}

for i in range (0, 6) {
    achievement(
            title = format("Chaotic Blitzing for the Emeralds - {0}", EmeraldTime[i][0]), points = EmeraldPoints[0][i],
            description = format("Obtain the Chaos Emerald in Emerald Challenge {0} while at speed level 3 in {1} or less", i+1, EmeraldTime[i][1]),
            trigger =  stage == 52 + i && state >= 3 && tbyte_be(0x0042c2fb) <= EmeraldTime[i][2]
                    && trigger_when(state == 12 && float_be((dword_be(0x002d5e80) & 0x1ffffff) + 0x7a50) >= 200.0)
    )
}