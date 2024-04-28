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

stageName = {
    0: ["Seaside Hill","Ocean Palace","Grand Metropolis","Power Plant","Casino Park","Bingo Highway","Rail Canyon",
        "Bullet Station","Frog Forest","Lost Jungle","Hang Castle","Mystic Mansion","Egg Fleet","Final Fortress"],
}

stageDesc = {
    0: ["Resorting to the Seaside Vacation Spots","Keep the Emeralds Away From any Chao in the Water","Stealing Your Energy to Keep Playing",
        "A City Controlled by Eggman, is This His Land?","24 Hours Left, Better Risk the World and Your Savings",
        "No Potato or Computer Chips Found Here","Keeping Your Eyes on the Rails and Your Ranks","Now Departing the Eggman Cannon Station",
        "The Perfect Spot for Frog Fishing","Not Lost When You Know What to Do","Getting Ranks and Vanishing Faster Than the Ghosts",
        "No Reason to Always Be Halloween Season","This Great Army Shall Also Be Fleeting","The Key to Success Shall Destroy the Doctor's Plans"],
}

hardName = {
    0: ["The Silent of Seaside's Hill","Ruined Palaced, Toxicated Ocean","The Dark Futurerism","Dying Nature",
        "Nig Wins, Big Numbers, Big Problems","Rather Radical","The S in Canyon means Safety","Pay the Bill, ot take a Bullet",
        "A Small Sized Frog's Dessert","No Time to Blow Up!","Hanging the Chances","Let your Soul be Free!","Crash Landing","High Time Pressure"],
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

for i in range (0, 3) {
    for j in range (0, length(bossNumb[0])-1) {
        x = ""
        if (j == 1 || j == 4) x = bossName[j][i]
        achievement(
            title = format("{0}", bossDesc[i][j]), points = bossPoints[0][j],
            description = format("As Team {0}, defeat {1}{2}", teamsName[i][0], bossName[0][j], x),
            trigger = story == 0 && teams == i && stage == bossNumb[0][j] && state == 12
        )
    }
}

achievement(
    title = "Collect More Than Just Blue Spheres!", points = 10,
    description = "Obtain all seven Chaos Emeralds, you ready to battle the real villan?",
    trigger = state == 12 && prev(bit0(0x3e7dc4) + bit0(0x3e7dd0) + bit0(0x3e7ddc) + bit0(0x3e7de8)
            + bit0(0x3e7df4) + bit0(0x3e7e00) + bit0(0x3e7e0c)) == 6 && bit0(0x3e7dc4) + bit0(0x3e7dd0)
            + bit0(0x3e7ddc) + bit0(0x3e7de8) + bit0(0x3e7df4) + bit0(0x3e7e00) + bit0(0x3e7e0c) == 7
)

achievement(
    title = "Too Bad it's All Over... for You!", points = 25,
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
        trigger =  state == 12 && prev(rankCalc()) == 7
                && measured(rankCalc() == 8)
    )
    array_push (ranks, rankCalc())
    stageRanks = stageRanks + 0x44
}

for i in range (0, 28) {
    array_push (rankb, byte(bossRanks + (i*4))/5)
}
achievement(
        title = "Perfected! Impossible! Nooooooo!", points = 10,
        description = "Earn an A rank on every boss battle with all teams",
        trigger =  state == 12 && sum_of(rankb, y=>prev(y)) == 28
                && measured(sum_of(rankb, y=>y) == 29)
)

achievement(
        title = "All Emblem Data... Has Been Copied", points = 25,
        description = "Earn all 120 emblems, but how are your ranks?",
        trigger =  state == 8 && prev(byte(0x3e776e)) == 119 && measured(byte(0x3e776e) == 120)
)

achievement(
        title = "All Missions Kneel Before Your Master!", points = 50,
        description = "Earn all 141 A ranks in the game, are you ready for Super Hard?",
        trigger =  state == 12 && sum_of(ranks, y=>prev(y)) + sum_of(rankb, y=>prev(y)) == 140
                && measured(sum_of(ranks, y=>y) + sum_of(rankb, y=>y) == 141)
)

for i in range (0, length(stageName[0])-1) {
    achievement(
            title = format("{0}", hardName[0][i]), points = 5,
            description = format("Clear {0} on Super Hard difficulty", stageName[0][i]),
            trigger = story == 2 && stage == 2 + i && state == 12
    )
}
