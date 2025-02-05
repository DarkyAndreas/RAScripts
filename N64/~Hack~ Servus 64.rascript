// ~Hack~ Servus 64
// #ID = 27594

MapID = byte(0x32ddfa)
SubMap = byte(0x33bac8)
MarioX = float(0x33b1ac)
MarioY = float(0x33b1b0)
MarioZ = float(0x33b1b4)
GroundY = float(0x33b1e0)
Last_Object = tbyte(0x33b1e8)
Mario_Animation = word(0x33b17c)
Act = byte(0x1a81a3)
Music = dword(0x22261c)
Ground_Object = tbyte(0x330e34)
Cap_Timer = word(0x33b224)
Vanish = bit1(0x33b174)
Metal = bit2(0x33b174)
Wing = bit3(0x33b174)
Wallkick = byte(0x33b199)
Last_Direct_Object = tbyte(tbyte(0x362898) + 0x20)
Last_Direct_Object2 = tbyte(tbyte(0x362898) + 0x24)
Last_Direct_Object3 = tbyte(tbyte(0x362898) + 0x28)
Last_Direct_Object4 = tbyte(tbyte(0x362898) + 0x2c)
Ride_Object = tbyte(0x33b1f4)

StarName = {
    11: "This Star Is on the House",
    12: "Taking A Swim",
    13: "Find the 8 Red Coins",
    14: "Through the Backdoor",
    15: "Hidden Hole",
    16: "Don't Get Wet",
    17: "100 Coins",
    
    //Course 02 Stars
    21: "\"I Skip Leg Day\" in Person",
    22: "Wall-Climbing to the Top",
    23: "8 Acrobatic Coins",
    24: "Blue, Grumpy Stones",
    25: "Beneath Everything",
    26: "Exploring the Tall Wall",
    27: "100 Coins",
    
    //Course 03 Stars
    31: "Cliff Exploration",
    32: "Diving Lesson",
    33: "8 Wet Coins",
    34: "Obstacle Course",
    35: "Underwater Cage",
    36: "Stuntman Mario",
    37: "100 Coins",
    
    //Course 04 Stars
    41: "Speed Ice Climbing",
    42: "Shell Abuse",
    43: "Race to the Cave Beneath",
    44: "8 Ice Cold Coins",
    45: "Hidden, Warm Spot",
    46: "All About Timing",
    47: "100 Coins",
    
    //Course 05 Stars
    51: "Ghost Busted",
    52: "Lost in a Labyrinth",
    53: "8 Spooky Coins",
    54: "The Gold of the Labyrinth",
    55: "Ghost-Jump",
    56: "Surfing to the Secret Room",
    57: "100 Coins",
    
    //Course 06 Stars
    61: "Climbing up the Chaos",
    62: "Just a Casual !-Box",
    63: "High Risk Jump to Victory",
    64: "8 Tipsy Red Coins",
    65: "5 Golden Rocks",
    66: "The Star at the Entrance",
    67: "100 Coins",
    
    //Course 07 Stars
    71: "Climbing the Main Tower",
    72: "3 Step Plan to the Top",
    73: "The Warp Beneath",
    74: "8 Athletic Coins",
    75: "Race Against Time",
    76: "One Risky Move",
    77: "100 Coins",
    
    //Course 08 Stars
    81: "Broken Wall",
    82: "High on the Hill-Top",
    83: "Wood Climbing",
    84: "8 Fussy Coins",
    85: "2D Wall Climbing",
    86: "There’s a Cave?",
    87: "100 Coins",
    
    //Course 09 Stars
    91: "Twirling Lesson",
    92: "Very Cold Dive",
    93: "The Most Useful Crazy Box",
    94: "8 Cold Hot Coins",
    95: "Firing up the Mountain",
    96: "The Twirling Exam",
    97: "100 Coins",
    
   //Course 10 Stars
   101: "You Call That a Desert?",
   102: "Hidden in a Tower",
   103: "8 Very Dry Coins",
   104: "Platforming Into the Heights",
   105: "5 Ancient Gold Secretes",
   106: "Awkward Placement",
   107: "100 Coins",
   
   //Course 11 Stars
   111: "Box Disaster",    
   112: "The Firsty Trilogy",
   113: "8 Slippy Coins",
   114: "Sliding Through Nature",
   115: "3 Caps, 3 Jobs",
   116: "Sliding Into the Void",
   117: "100 Coins",
   
   //Course 12 Stars
   121: "Beautiful Upwards Spiral",
   122: "Tight Platforming Trouble",
   123: "Windy Freedom",
   124: "10 Mystic Red Coins",
   125: "Sky Trickshot",
   126: "8-Fold Wall Hugging Move",
   127: "100 Coins",
   
   //Course 13 Stars
   131: "1v1 on the Sand Fortress",
   132: "Olympic Acrobatics",
   133: "Sand-Koopa Race",
   134: "10 Sandy Red Coins",
   135: "Gather the Spreaded Love",
   136: "Wall-Jump Parade",
   137: "100 Coins",
   
   //Course 14 Stars
   141: "Don’t Get Lost",
   142: "The Blue Path",
   143: "Hidden... Somewhere",
   144: "Looong Walljump-Wall",
   145: "Challenging Gold Nuggets",
   146: "Red Coins or Game Over?",
   147: "100 Coins",
   
   //Course 15 Stars
   151: "Warm-up in Hell",
   152: "Yet Another Annoying Climb",
   153: "Star in a Cube",
   154: "Feeling of Perfectionism",
   155: "5 Secrets of Doom",
   156: "14 Painful Red Coins",
   157: "100 Coins",
}

StarScore = {
    11: 1,
    12: 1,
    13: 2,
    14: 1,
    15: 1,
    16: 1,
    17: 2,
    
    //Course 02 Stars
    21: 2,
    22: 1,
    23: 2,
    24: 1,
    25: 2,
    26: 1,
    27: 2,
    
    //Course 03 Stars
    31: 1,
    32: 1,
    33: 2,
    34: 1,
    35: 1,
    36: 1,
    37: 2,
    
    //Course 04 Stars
    41: 2,
    42: 2,
    43: 1,
    44: 2,
    45: 1,
    46: 2,
    47: 2,
    
    //Course 05 Stars
    51: 2,
    52: 2,
    53: 2,
    54: 2,
    55: 1,
    56: 2,
    57: 2,
    
    //Course 06 Stars
    61: 5,
    62: 3,
    63: 5,
    64: 10,
    65: 10,
    66: 5,
    67: 10,
    
    //Course 07 Stars
    71: 5,
    72: 5,
    73: 5,
    74: 10,
    75: 10,
    76: 5,
    77: 10,
    
    //Course 08 Stars
    81: 5,
    82: 5,
    83: 5,
    84: 5,
    85: 5,
    86: 5,
    87: 5,
    
    //Course 09 Stars
    91: 10,
    92: 5,
    93: 5,
    94: 5,
    95: 5,
    96: 10,
    97: 5,
    
   //Course 10 Stars
   101: 5,
   102: 5,
   103: 10,
   104: 10,
   105: 5,
   106: 10,
   107: 10,
   
   //Course 11 Stars
   111: 5,
   112: 5,
   113: 10,
   114: 10,
   115: 10,
   116: 2,
   117: 10,
   
   //Course 12 Stars
   121: 10,
   122: 10,
   123: 5,
   124: 10,
   125: 5,
   126: 10,
   127: 10,
   
   //Course 13 Stars
   131: 25,
   132: 10,
   133: 5,
   134: 10,
   135: 10,
   136: 5,
   137: 10,
   
   //Course 14 Stars
   141: 10,
   142: 10,
   143: 5,
   144: 10,
   145: 5,
   146: 25,
   147: 10,
   
   //Course 15 Stars
   151: 10,
   152: 10,
   153: 10,
   154: 10,
   155: 10,
   156: 50,
   157: 10,
}

Map = {
    01: "Beginner-Course.szs",
    02: "Whomp's Sky Base",
    03: "Wet Cliffs",
    04: "Glassy Winter",
    05: "Sketchy Ghost Estate",
    06: "Splattered Dimension",
    07: "Athletic Platforms",
    08: "Lava Flooded Field",
    09: "Hot 'N Cold Mountains",
    10: "Doomed Desert Construct",
    11: "Slippery Hills",
    12: "Mystic Skies",
    13: "Floating Sand Island",
    14: "Game Over Valley",
    15: "Painful Dimension",
}

SlideStarNames = {
    01: "Red Coins of Toad's Hidden Garden Slide",
    02: "Narrow Path",
    03: "Little Outcast",
    04: "The Right Side to Choose",
    05: "Hidden Behind the Building",
    06: "At the End of the Fun",
}

SlideStarScore = {
    01: 5,
    02: 2,
    03: 1,
    04: 2,
    05: 1,
    06: 5,
}

SlideStarDescription = {
    01: "Red Coins of Toad's Hidden Garden Slide",
    02: "on a narrow Path",
    03: "in a small hideout",
    04: "on the right side of the slide",
    05: "hidden behind a building",
    06: "at the end of the slide",
}

MCStarNames = {
    01: "Red Coins of Molten Metal Cap Cave",
    02: "Small Plattform Shenanigans",
    03: "Side Path",
    04: "Across the Lava",
    05: "Underground Parkour",
    06: "Molten Magma Mystery",
}

MCStarScore = {
    01: 5,
    02: 4,
    03: 3,
    04: 5,
    05: 5,
    06: 3,
}

MCStarDescription = {
    01: "Red Coins of Molten Metal Cap Cave",
    02: "on some small plattforms",
    03: "on a side path",
    04: "on a path across the lave",
    05: "in an underground parkour",
    06: "for finding a secret",
}

WCStarNames = {
    01: "Red Coins of Sky-High Switch Place",
    02: "High Speed, High Pressure",
    03: "Around the Corner",
}

WCStarScore = {
    01: 4,
    02: 5,
    03: 2,
}

WCStarDescription = {
    01: "Red Coins of Sky-High Switch Palace",
    02: "where you need enough speed",
    03: "around the corner",
}

VCStarNames = {
    01: "Red Coins of Vanish Cap on Cloud 7",
    02: "Encaged Casper",
    03: "Moving Fast With the Wind",
    04: "Dizzying Heights",
}

VCStarScore = {
    01: 4,
    02: 5,
    03: 5,
    04: 5,
}

VCStarDescription = {
    01: "Red Coins of Vanish Cap on Cloud 7",
    02: "who is encaged",
    03: "where you need to be fast enough",
    04: "in dizzying heights",
}

Bowser1StarNames = {
    01: "Red Coins of Bowser in Toxic Heights",
    02: "Underside Shell Path",
    03: "Lonely Box on Toxic Waste",
}

Bowser1StarScore = {
    01: 4,
    02: 3,
    03: 3,
}

Bowser1StarDescription = {
    01: "Red Coins of Bowser in Toxic Heights",
    02: "past a shell path",
    03: "in a lonely box",
}

Bowser3StarNames = {
    01: "Red Coins of Bowsers Dark Cave Complex",
    02: "Slopes of Death",
    03: "Twirling Graduation",
    04: "Timed Jumps on Timer Switches",
    05: "Heave-Ho Cooperation",
    06: "Prance Perfectionism",
}

Bowser3StarScore = {
    01: 25,
    02: 10,
    03: 5,
    04: 5,
    05: 5,
    06: 10,
}

Bowser3StarDescription = {
    01: "Red Coins of Bowsers Dark Cave Complex",
    02: "past some slopes",
    03: "for perfectly twirling",
    04: "after some timed jumps on switches",
    05: "up in the air with the help of Heave-Ho's",
    06: "in a walljump room",
}

OverworldStarNames = {
    01: "The One Known as Cordula Grün",
    02: "Wait... You Can Dive?",
    03: "Deadly Parkour",
    04: "Rabbit Fever",
    05: "Am Ende der Straße sitzt ein Has'",
}

OverworldStarScore = {
    01: 2,
    02: 2,
    03: 5,
    04: 2,
    05: 2,
}

OverworldStarDescription = {
    01: " held by a Toad in Dale of Peace",
    02: " held by a Toad in Border of Intimidation",
    03: " held by a Toad in Castle of Agony",
    04: " held by a little rabbit in Dale of Peace",
    05: "... YOU AGAIN?!",
}

MapIDs = {
    01: 0x09,
    02: 0x18,
    03: 0x0c,
    04: 0x05,
    05: 0x04,
    06: 0x07,
    07: 0x16,
    08: 0x08,
    09: 0x17,
    10: 0x0a,
    11: 0x0b,
    12: 0x24,
    13: 0x0d,
    14: 0x0e,
    15: 0x0f,
}

Map1Up = {
    01: 3,
    02: 2,
    03: 2,
    04: 5,
    05: 2,
    06: 2,
    07: 4,
    08: 5,
    09: 1,
    10: 6,
    11: 4,
    12: 4,
    13: 2,
    14: 4,
    15: 5,
}

Map1UpScore = {
    01: 1,
    02: 2,
    03: 2,
    04: 3,
    05: 3,
    06: 4,
    07: 3,
    08: 3,
    09: 1,
    10: 10,
    11: 10,
    12: 3,
    13: 4,
    14: 10,
    15: 10,
}

Map1UpTitle = {
    01: "I",
    02: "II",
    03: "III",
    04: "IV",
    05: "V",
    06: "VI",
    07: "VII",
    08: "VIII",
    09: "IX",
    10: "X",
    11: "XI",
    12: "XII",
    13: "XIII",
    14: "XIV",
    15: "XV",
}

MapBlue = {
    01: 6,
    02: 6,
    03: 4,
    04: 9,
    05: 7,
    06: 6,
    07: 4,
    08: 5,
    09: 6,
    10: 5,
    11: 9,
    12: 6,
    13: 6,
    14: 6,
    15: 8,
}

MapBlueScore = {
    01: 2,
    02: 3,
    03: 3,
    04: 10,
    05: 5,
    06: 5,
    07: 5,
    08: 5,
    09: 5,
    10: 5,
    11: 10,
    12: 5,
    13: 5,
    14: 10,
    15: 25,
}

function star(j, i) {
return byte(0x32dd83) == j && byte(0x32dd87) == i
    && __ornext(word(0x33b17c) == 0x1302 || word(0x33b17c) == 0x1303 || word(0x33b17c) == 0x1307)
}

function level_entry() {
return once(MapID != prev(MapID)) && once(Mario_Animation == 0x1924)
}

function A_Button(i) {
return repeated(i, once(Mario_Animation == 0x1924) && prev(MarioY) == prev(GroundY) && prev(bit7(0x367057)) == 0 && bit7(0x367057) == 1)
}

function A_Button_Shell(i) {
return repeated(i, once(Mario_Animation == 0x1924) && Ride_Object != 0 && prev(MarioY) == prev(GroundY) && prev(bit7(0x367057)) == 0
    && bit7(0x367057) == 1)
}

function SwitchPointer(m, i1, j1, i2, j2)
{
    return never(dword((0x33d488 + 608 * m) + i1)  == j1 && dword((0x33d488 + 608 * m) + i2)  != j2)
}

function SwitchLogic()
{
    PointerArray = []
    for m in range (0, 239) {
        array_push(PointerArray, SwitchPointer(m, 0x20c, 0x800ec62c, 0x14c, 0)) }
        
    return all_of(PointerArray, p => p)
}

function ObjectAchievement(j,i,x, type)
{
    Array = []
    if (type == "lives") obj = [0x800ef15c, 0x800ef190, 0x800ef1c4, 0x800ef1fc, 0x800ef26c, 0x800ef2c8]
    else if (type == "blues") obj = [0x800ed708]
    for l in range (0,239) {
        array_push(Array, any_of(obj, y=>dword(0x33d694 + 0x260 * l) == y)
        && prev(dword(0x33d4fc + 0x260 * l)) != 1 && dword(0x33d4fc + 0x260 * l) == 1)
    }
    return never(MapID != j) && never(SubMap != i) && measured(tally(x, Array))
}

for j in range (1, 15) { j=j
for i in range (1, 7) {
x=((j*10) + i)
if (i<7) {
achievement(
    title = format(StarName[x]), points = StarScore[x],
    description = format("Collect the star {0} in {1}",StarName[x], Map[j]),
    trigger = star(j, i)
) }
else {
achievement(
    title = format("{0} {1}",Map[j], StarName[x]), points = StarScore[x],
    description = format("Collect the star for {0} in {1}",StarName[x], Map[j]),
    trigger = star(j, i)
) }
}
}

for i in range (1, 6) {
if (i==1) {
achievement(
    title = format(SlideStarNames[i]), points = SlideStarScore[i],
    description = format("Collect the star {0}",SlideStarDescription[i]),
    trigger = star(0x13, i)
) }
else {
achievement(
    title = format(SlideStarNames[i]), points = SlideStarScore[i],
    description = format("Collect the star {0} in Toad's Hidden Garden Slide",SlideStarDescription[i]),
    trigger = star(0x13, i)
) }
}

for i in range (1, 6) {
if (i==1) {
achievement(
    title = format(MCStarNames[i]), points = MCStarScore[i],
    description = format("Collect the star {0}",MCStarDescription[i]),
    trigger = star(0x14, i)
) }
else {
achievement(
    title = format(MCStarNames[i]), points = MCStarScore[i],
    description = format("Collect the star {0} in Molten Metal Cap Cave",MCStarDescription[i]),
    trigger = star(0x14, i)
) }
}

for i in range (1, 3) {
if (i==1) {
achievement(
    title = format(WCStarNames[i]), points = WCStarScore[i],
    description = format("Collect the star {0}",WCStarDescription[i]),
    trigger = star(0x15, i)
) }
else {
achievement(
    title = format(WCStarNames[i]), points = WCStarScore[i],
    description = format("Collect the star {0} in Sky-High Switch Place",WCStarDescription[i]),
    trigger = star(0x15, i)
) }
}

for i in range (1, 4) {
if (i==1) {
achievement(
    title = format(VCStarNames[i]), points = VCStarScore[i],
    description = format("Collect the star {0}",VCStarDescription[i]),
    trigger = star(0x16, i)
) }
else {
achievement(
    title = format(VCStarNames[i]), points = VCStarScore[i],
    description = format("Collect the star {0} in Vanish Cap on Cloud 7",VCStarDescription[i]),
    trigger = star(0x16, i)
) }
}

for i in range (1, 3) {
if (i==1) {
achievement(
    title = format(Bowser1StarNames[i]), points = Bowser1StarScore[i],
    description = format("Collect the star {0}",Bowser1StarDescription[i]),
    trigger = MapID != 30 && star(0x10, i)
) }
else {
achievement(
    title = format(Bowser1StarNames[i]), points = Bowser1StarScore[i],
    description = format("Collect the star {0} in Bowser in Toxic Heights",Bowser1StarDescription[i]),
    trigger = star(0x10, i)
) }
}

achievement(
title = "Red Coins of Bowsers Lava Pipe Leak", points = 5,
    description = "Collect the star Red Coins of Bowsers Lava Pipe Leak",
    trigger = MapID != 33 && star(0x11, 1)
    )

for i in range (1, 6) {
if (i==1) {
achievement(
    title = format(Bowser3StarNames[i]), points = Bowser3StarScore[i],
    description = format("Collect the star {0}",Bowser3StarDescription[i]),
    trigger = star(0x12, i)
) }
else {
achievement(
    title = format(Bowser3StarNames[i]), points = Bowser3StarScore[i],
    description = format("Collect the star {0} in Bowsers Dark Cave Complex",Bowser3StarDescription[i]),
    trigger = star(0x12, i)
) }
}

for i in range (1, 5) {
achievement(
    title = format(OverworldStarNames[i]), points = OverworldStarScore[i],
    description = format("Collect the star{0}",OverworldStarDescription[i]),
    trigger = star(0x00, i)
) }

achievement(
    title = "Servus Oida!", points = 10,
    description = "Defeat Bowser in Bowser in Toxic Heights and obtain the key to the second overworld",
    trigger = MapID == 0x1e
    && __ornext(word(0x33b17c) == 0x1302 || word(0x33b17c) == 0x1303 || word(0x33b17c) == 0x1307)
) 

achievement(
    title = "Mein Servus!", points = 10,
    description = "Defeat Bowser in Bowsers Lava Pipe Leak and obtain the key to the third overworld",
    trigger = MapID == 0x21
    && __ornext(word(0x33b17c) == 0x1302 || word(0x33b17c) == 0x1303 || word(0x33b17c) == 0x1307)
)

achievement(
    title = "Tschüß, Servus!", points = 25,
    description = "Defeat Bowser in Bowsers Dark Cave Complex and collect the final star",
    trigger = star(0x18, 1)
)

achievement(
    title = "Bist du Deppert, Oida!?", points = 50,
    description = "Collect your price for obtaining all 140 stars",
    trigger = star(0x17, 1)
)

achievement(
    title = "C1-C1", points = 0,
    description = format("Collect the star {0} in {1} without using the Purple Switch",StarName[12], Map[1]),
    trigger = never(MapID != MapIDs[1]) && SwitchLogic() && once(MarioX <= 14037.0 && MarioX >= 10180.0 && MarioZ <= -6650.0
           && MarioZ >= -11134.0 && MarioY == 308.0) && trigger_when(star(0x01, 0x02))
)

achievement(
    title = "C1-C2", points = 0,
    description = format("Collect the star {0} in {1} without using the Warp",StarName[15], Map[1]),
    trigger = never(MapID != MapIDs[1]) && never(dword(Last_Object + 0x20c) == 0x800eb900 && dword(Last_Object + 0xa0) == 0x45ec3800
           && dword(Last_Object + 0xa4) == 0x43c80000 && dword(Last_Object + 0xa8) == 0xc5b44000) && level_entry()
           && trigger_when(star(0x01, 0x05))
)

//achievement(
//    title = "C2-C0", points = 0, //manually remove the hit from the ResetIf cause it's dumb
//    description = format("Collect the star {0} in {1} while only staying on Whomp King's platform",StarName[21], Map[2]),
//    trigger = never(MapID != MapIDs[2]) && Act == 0 && never(once(dword(Ground_Object + 0x20c) == 0x800edd38
//           && dword(Ground_Object + 0x184) < prev(dword(Ground_Object + 0x184)) && never(once(level_entry() && MarioX > -1500.0
//           && MarioY == 616.0)))) && never(once(level_entry() && MarioX > -1500.0
//           && MarioY == 616.0) && MarioX < -1500.0
//           && prev(MarioY) == 616.0) && once(level_entry() && MarioX > -1500.0
//           && MarioY == 616.0) && trigger_when(star(0x02, 0x01))
//)

achievement(
    title = "C2-C1", points = 0,
    description = format("Collect the star {0} in {1} without jumping more than once",StarName[25], Map[2]),
    trigger = never(MapID != MapIDs[2]) && never(A_Button(2)) && level_entry() && trigger_when(star(0x02, 0x05))
)

achievement(
    title = "C2-C2", points = 0,
    description = format("In {1} reach the area of act 1 on any other act",StarName[25], Map[2]),
    trigger = never(MapID != MapIDs[2]) && Act != 0 && level_entry()
           && trigger_when(MarioZ >= 3700.0 && MarioY == GroundY)
)

achievement(
    title = "C3-C1", points = 0,
    description = format("In {1} activate the purple switch while wearing a vanish cap",StarName[25], Map[3]),
    trigger = MapID == MapIDs[3] && Vanish == 1 && trigger_when(dword(Ground_Object + 0x20c) == 0x800ec62c)
)

achievement(
    title = "C4-C1", points = 0,
    description = format("Collect the star {0} in {1} without using the shell",StarName[42], Map[4]),
    trigger = never(MapID != MapIDs[4]) && never(Ride_Object != 0) && level_entry() && trigger_when(star(0x02, 0x05))
)

//achievement(
//    title = "C5-C1", points = 0, //manually add the ResetIf conditions since RATools doesn't like them
//    description = format("Collect the star {0} in {1} while hurting the Big Boo only with a walljump + dive combo",StarName[51], Map[5]),
//    trigger = never(MapID != MapIDs[5]) && Act == 0 && level_entry() && trigger_when(star(0x05, 0x01))
//)

achievement(
    title = "C5-C2", points = 0,
    description = format("In {1} reach the secret room without jumping while riding on the shell",StarName[55], Map[5]),
    trigger = never(MapID != MapIDs[5]) && Act != 0 && never(A_Button_Shell(1)) && level_entry()
           && trigger_when(MarioX >= 4794.0 && MarioZ <= -3198.0 && MarioZ >= -4410.0)
)

achievement(
    title = "C8-C1", points = 0,
    description = format("Collect the star {0} in {1} without jumping once",StarName[86], Map[8]),
    trigger = never(MapID != MapIDs[8]) && never(A_Button(1)) && level_entry() && trigger_when(star(0x08, 0x06))
)

//achievement(
//    title = "C10-C2", points = 0,
//    description = format("Collect the star {0} in {1} without jumping once",StarName[106], Map[10]),
//    trigger = never(MapID != MapIDs[10]) && level_entry() && trigger_when(star(10, 0x06))
//)

for j in range (1, 15) {
achievement(
    title = format("Saving Lives {0}", Map1UpTitle[j]), points = Map1UpScore[j],
    description = format("Collect all 1-Ups in {0}", Map[j]),
    trigger = ObjectAchievement(MapIDs[j], 1, x=Map1Up[j], type = "lives")
)
}

achievement(
    title = "Saving Lives XVI", points = 2,
    description = "Collect all 1-Ups in Toad's Hidden Garden Slide",
    trigger = ObjectAchievement(0x1b, 1, 1, type = "lives")
)

achievement(
    title = "Saving Lives XVII", points = 2,
    description = "Collect all 1-Ups in Molten Metal Cap Cave",
    trigger = ObjectAchievement(0x1c, 1, 2, type = "lives")
)

achievement(
    title = "Saving Lives XVIII", points = 3,
    description = "Collect all 1-Ups in Vanish Cap on Cloud 7",
    trigger = ObjectAchievement(0x12, 1, 3, type = "lives")
)

achievement(
    title = "Saving Lives XIX", points = 5,
    description = "Collect all 1-Ups in Bowsers Lava Pipe Leak",
    trigger = ObjectAchievement(0x13, 1, 5, type = "lives")
)

achievement(
    title = "Saving Lives XX", points = 1,
    description = "Collect all 1-Ups in Bowsers Fragment Arena",
    trigger = ObjectAchievement(0x21, 1, 1, type = "lives")
)

achievement(
    title = "Saving Lives XXI", points = 25,
    description = "Collect all 1-Ups in Bowsers Dark Cave Complex",
    trigger = ObjectAchievement(0x15, 1, 3, type = "lives")
)

achievement(
    title = "Saving Lives XXII", points = 1,
    description = "Collect all 1-Ups in Dale of Peace",
    trigger = ObjectAchievement(0x06, 1, 2, type = "lives")
)

achievement(
    title = "Saving Lives XXIII", points = 2,
    description = "Collect all 1-Ups in Border of Intimidation",
    trigger = ObjectAchievement(0x1a, 1, 4, type = "lives")
)

achievement(
    title = "Saving Lives XXIV", points = 3,
    description = "Collect all 1-Ups in Castle of Agony",
    trigger = ObjectAchievement(0x10, 1, 3, type = "lives")
)

achievement(
    title = "Saving Lives XXV", points = 50,
    description = "Collect all 1-Ups in Transition to Paradise",
    trigger = ObjectAchievement(0x14, 0, 1, type = "lives")
)

achievement(
    title = "Saving Lives XXVI", points = 1,
    description = "Collect all 1-Ups in Heavenly Garden - The End",
    trigger = ObjectAchievement(0x1f, 1, 3, type = "lives")
)

achievement(
    title = "Saving Lives XXVII", points = 4,
    description = "Collect all 1-Ups in Experimental World",
    trigger = ObjectAchievement(0x14, 3, 2, type = "lives")
)

achievement(
    title = "Saving Lives XXVIII", points = 10,
    description = "Collect all 1-Ups in Sandy Dimension",
    trigger = never(MarioX == -6268.0 && MarioY >= 11716.0) && ObjectAchievement(0x11, 2, 7, type = "lives")
)

achievement(
    title = "Saving Lives XXIX", points = 4,
    description = "Collect all 1-Ups in Boundaries of the Unused Land",
    trigger = ObjectAchievement(0x16, 2, 4, type = "lives")
)

achievement(
    title = "Saving Lives XXX", points = 0,
    description = "Collect all 1-Ups in Sandy Dimension...wait?",
    trigger = MapID == 0x11 && SubMap == 2 && MarioX == -6268.0 && MarioY == 11991.0
)

for j in range (1, 15) {
achievement(
    title = format("Blue Blues of {0}", Map[j]), points = MapBlueScore[j],
    description = format("Collect all Blue Coins in {0}", Map[j]),
    trigger = ObjectAchievement(MapIDs[j], 1, MapBlue[j], type = "blues")
)
}