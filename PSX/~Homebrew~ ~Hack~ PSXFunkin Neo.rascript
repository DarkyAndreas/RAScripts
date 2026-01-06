// ~Homebrew~ ~Hack~ PSXFunkin: Neo
// #ID = 25378

nextScreen = byte(0x1d6b75)
Screen = byte(0x1d6b74)
Song = byte(0x1d6ca0)
Health = word(0x1d6d58)
Combo = word(0x1d6d5a)
Score = dword(0x1d6d60)
Difficulty = byte(0x1d6b91)
Gamemode = byte(0x1d6c5c)
GhostTap = byte(0x1d6c58)
Time = dword(0x1d6d20)
Completion = byte(0x1fff90)

SongList = {
    0x00:"Bopeebo",
    0x01:"Fresh",
    0x02:"Dad Battle",
    0x03:"Tutorial",
    0x04:"Spookeez",
    0x05:"South",
    0x06:"Illusion",
    0x07:"Pico",
    0x08:"Philly Nice",
    0x09:"Blammed",
    0x0a:"Satin Panties",
    0x0b:"High",
    0x0c:"Milf",
    0x0d:"Cocoa",
    0x0e:"Eggnog",
    0x0f:"Hallucination",
}

StorySong = {
    0:0x03,
    1:0x02,
    2:0x06,
    3:0x09,
    4:0x0c,
    5:0x10
}

StoryWeek = {
    0:"the Tutorial",
    1:"Daddy's Week",
    2:"Skid & Pump's Week",
    3:"Pico's Week",
    4:"Mommy's Week",
    5:"Christmas Week"
}

WeekTitle = {
    00:"Vibin'",
    01:"Demon Dilemma",
    02:"Trick or Beat",
    03:"Talkin' Smack",
    04:"Makeout Mommy",
    05:"Mr. and Mrs. Santa",
    10:"Swop 'no' Stop",
    11:"A Real Sugardaddy",
    12:"DEAD BEATS",
    13:"On the Run",
    14:"Hot Moms Mear You",
    15:"Gettin' Freaky on a Christmas Night"
}

WeekTitleNeo = {
    00:"Neon Nigh'",
    01:"Convinced Yet, Oh Dearest Dad?",
    02:"Show and Candy Stealers",
    03:"Brightest Street in Town",
    04:"Blowin' up the Boxes",
    05:"Cheesy Christmas",
    10:"Show 'Em How It's Done",
    11:"What a Glow Up",
    12:"Bringing the Whole Halloween Party Back Town",
    13:"School Kid Rampage",
    14:"Like Daughter, Like Mother",
    15:"Future Son in Law's Present"
}

DifficultyText = {
    0:"Chill",
    1:"Basic",
    2:"Neo"
}

GamemodeText = {
    0:"Normal",
    1:"Swap",
}

function SongID (i) {
    if (i>=0x0d) {return 0x01} else {return 0x00}
}

function p (i) {
    if (i==0x00) {return 2} else {return 5}
}

function p2 (i) {
    if (i==0x08 || i==0x0c) {return 25} else {return 10}
}

function cheevo1(i, j) {
    return never(Screen != 0x03 && Screen != 0x07) && once(Screen == 0x03) && Gamemode == j && GhostTap == 0 && Song == StorySong[i] &&
    prev(Completion) == 0 && Completion == 1
}

function cheevo2(i, j) {
    return never(Screen != 0x07) && never(prev(Health) > Health) && never(prev(Combo) > Combo) &&
    once(prev(Time) > 0xf0000000 && Time < 0xf0000000) && Gamemode == j && GhostTap == 0 &&
    Song == i+SongID(i) && trigger_when(prev(Completion) == 0 && Completion == 1)
}

for i in range (0,5) {
    for j in range(0,1) {
        achievement(
            title = format(WeekTitle[j*10 + i]), points=p(i),
            description = format("Complete {0} in {1} Mode", StoryWeek[i], GamemodeText[j]),
            trigger = cheevo1(i, j)
            )
    }
}

for i in range (0,5) {
    for j in range(0,1) {
        achievement(
            title = format(WeekTitleNeo[j*10 + i]), points=p(i)*2,
            description = format("Complete {0} on Neo Difficulty in {1} Mode", StoryWeek[i], GamemodeText[j]),
            trigger = cheevo1(i, j) && Difficulty == 2
            )
    }
}

for i in range(0x00,0x0f) {
    for j in range(0,1) {
        achievement(
            title = format("Full Combo of {0} - {1} Mode", SongList[i], GamemodeText[j]), points=p2(i),
            description = format("Get a full Combo in {0} on Neo Difficulty in {1} Mode", SongList[i], GamemodeText[j]),
            trigger = cheevo2(i, j) && Difficulty == 2
            )
    }
}

function StartAndSubmit(i, j, z) {
    return Screen == 0x07 && Difficulty == j && Gamemode == z && GhostTap == 0 && Song == i+SongID(i) && prev(Completion) == 0 && Completion == 1
}

function Cancel(i, j, z) {
    return __ornext(Screen != 0x07 || Difficulty != j || Gamemode != z || GhostTap != 0 || Song != i+SongID(i))
}

for z in range(0,1) {
    for i in range(0x00,0x0f) {
        for j in range(0,2) {
            leaderboard(
                title = format("{0} - {1} Difficulty - {2} Mode", SongList[i], DifficultyText[j], GamemodeText[z]),
                description = format("Complete {0} on {1} Difficulty in {2} Mode with the highest possible score",
                SongList[i], DifficultyText[j], GamemodeText[z]),
                start = StartAndSubmit(i, j, z),
                cancel = always_false(),
                submit = always_true(),
                value = Score * 10, format="SCORE", lower_is_better=false)
        }
    }
}
