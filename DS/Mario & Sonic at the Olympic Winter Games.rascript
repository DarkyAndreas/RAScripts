// Mario & Sonic at the Olympic Winter Games
// #ID = 14813

eventlookup = {}

code = ascii_string_equals(0x3ffe0c,"COLP")
menu = byte(0x3d9888)
submenu = byte(0x3d9889)
map = byte(0x0e3599)
event = dword(0x3d9698)
chars = byte(0x3d969c)
screen = dword(0x3d9a20)
pointer = tbyte(0x3bde08)
savefile = byte(0x3bde28)
saveCheck = screen != 0x1f && savefile <= 1

titles = {
    "charMission": ["It's-a Mario Time!","Playing Second-Fiddle No More","Feeling Just Peachy","Hi I'm Daisy!",
                   "No Longer Just a Pet","The King of Koopas","Brent Screams in the Distance",
                   "Maybe Now He'll Get into Smash","Feed Me More Bananas","The Prince of Koopas",
                   "The Fastest Hedgehog Around","I Want to Fly High","Unlike Sonic, He Don't Chuckle",
                   "The Tarot Cards Read True","I Am, I Am All of Me","A Genius Mastermind of 300 IQ",
                   "What Do You Mean This Gig Doesn't Pay?!","Fear the Power of the Flames","It's No Use",
                   "The Perfect Copy, Minus a Few Bolts"],
    "mission": ["Nipping at the Boards","Sparkling Medals","Aquatics Is for the Next Olympics",
                "The Cube-lympics","Podiums of the Peak","Some Tough Competition in This Blizzard"],
    "missionGold": ["Jack Frost's Got Competition","Sparkle, Sparkle, Sparkle","Midas's Ocean",
                    "A Gold Cube Medal for You","The Peak of the Peak","As Gold as Sochi Russian Bobsleighs"],
    "items": ["Frosted Over Papers","It Sparkles Off The Moonlight","The Sea Is King Out Here",
              "Everything's Cube Shaped","Only the Peak Quality Items Here","Of Metal and Snow"],
    "unlockChar": ["The Smartest Fox There Is","Ghostbuster in Town","Hard as a Rock","Frozen Peaches",
                   "A Girl with Hammer-tude","It's Yoshi Time!","Paint the Olympics Black",
                   "No Boiling and Burning Today, Thank You","Monkey Manners",
                   "He's a Detective You Want on Your Side","The Wealthy and the Wonderful",
                   "They Call Her Miss \"Tausendschön\"","Father Said It's My Turn to Play",
                   "The Evilest Rematch"],
    "unlockItem": ["A Comet across the Sky","Blow It Up!","Rodeo Dancing on the Sleigh",
                   "Bullseye!","The Spark in My Eyes","Who Can I Beat Up with This?",
                   "Faster than a Blitz!","This Is Drifting Out of My Control-ler",
                   "The Orbiting Sleigh","As Opposed to a Regular One?",
                   "Careful about the Height You Drop This"]
}

place = ["Frostown","Sparkleton","Polastraits","Cubyrinth","Icepeak","Blizland"]

character = ["Mario","Luigi","Peach","Daisy","Yoshi","Bowser","Wario",
             "Waluigi","Donkey Kong","Bowser Jr.","Sonic","Tails","Knuckles",
             "Amy","Shadow","Dr. Eggman","Vector","Blaze","Silver","Metal Sonic"]

missions = [
    [ //frostown
        [0x744,low4], //Land with Style!
        [0x744,high4], //Fight the Wind!
        [0x745,low4], //Hit the K point!
        [0x745,high4], //Beat Tails!
        [0x74C,low4], //Finish 2nd or better!
        [0x74C,high4], //5-sprint challenge!
        [0x74D,low4], //Win without crouching!
        [0x74D,high4], //Beat Luigi!
        [0x750,low4], //Land 4+ shots!
        [0x750,high4], //Win on the hills!
        [0x751,low4], //No-acceleration run!
        [0x751,high4], //Beat Knuckles!
        [0x754,low4], //Get a skill!
        [0x754,high4], //Clear the penalty!
        [0x755,low4], //Maintain the lead!
        [0x755,high4,"Eggman Nega","Chances of Winning: Negative"], //Beat Eggman Nega!
        [0x75B,high4,"Stardust Shoes","Heatin' up the Winter Games",2], //Finish in 50 sec!
        [0x75C,low4], //Final sprint!
        [0x75C,high4], //Do a curve dash!
        [0x75D,low4,"Bowser Jr.","Child's Play"], //Beat Bowser Jr.!
    ],
    [ //sparkleton
        [0x742,low4], //Go faster than 150km/h!
        [0x742,high4], //Finish the race!
        [0x743,low4], //Use the Mushroom Dash!
        [0x743,high4,"Dry Bowser","Bone Breaker"], //Beat Dry Bowser!
        [0x746,low4], //Go through rings!
        [0x746,high4], //Pass 2400m!
        [0x747,low4], //Use the ring dash!
        [0x747,high4,"Metal Sonic","Metal Head"], //Beat Metal Sonic!
        [0x74E,low4], //Break the ice!
        [0x74E,high4], //Blow 'em away!
        [0x74F,low4], //Use the charge shot!
        [0x74F,high4], //Beat Peach!
        [0x752,low4], //Shoot only red targets!
        [0x752,high4], //Win a close victory!
        [0x753,low4], //Hit Egg Hammer 3 times!
        [0x753,high4], //Beat Amy!
    ],
    [ //polastraits
        [0x740,low4], //Ace the Gate Dash!
        [0x740,high4], //Red gates mean go!
        [0x741,low4], //Advanced Gate Dash!
        [0x741,high4,"King Boo","I Ain't Scared of You"], //Beat King Boo!
        [0x765,high4], //Jump aboard!
        [0x766,low4], //Don't fill the gauge!
        [0x766,high4], //Reverse controls!
        [0x767,low4,"Wario and Waluigi","Smells Kinda Rotten Here"], //Beat Wario & Waluigi!
        [0x769,high4], //Jump aboard!
        [0x76A,low4], //Do 3 dashes!
        [0x76A,high4], //Don't hit the walls!
        [0x76B,low4,"Eggman Nega","You Never Learn, Do Ya?"], //Beat Eggman Nega!
        [0x76B,high4], //Use the start dash!
        [0x76C,low4], //No-crash run!
        [0x76C,high4], //Keep the boost maxed!
        [0x76D,low4], //Beat Yoshi!
        [0x76D,high4], //Pass the puck!
        [0x76E,low4], //Land a solid check!
        [0x76E,high4], //Score first!
        [0x76F,low4,"Silver and Blaze","The Time and Dimension Travelers"], //Beat Silver & Blaze!
    ],
    [ //cubyrinth
        [0x748,low4], //Stick the Jump dash!
        [0x748,high4], //Grab rings!
        [0x749,low4], //Don't use items!
        [0x749,high4], //Beat Shadow!
        [0x756,low4], //Do a perfect spin!
        [0x756,high4], //Grab coins!
        [0x757,low4], //Do a special trick!
        [0x757,high4,"Jet","There Was No Way He Wouldn't Lose"], //Beat Jet!
        [0x767,high4], //Spin your rival!
        [0x768,low4], //Win backwards!
        [0x768,high4], //No-heart run!
        [0x769,low4,"Big Bullet Bill","Bringing Big Bullet Bill to Tears"], //Beat Big Bullet Bill!
        [0x76F,high4], //Hit the bonus gate!
        [0x770,low4], //Score a super shot!
        [0x770,high4], //50 pts by intermission!
        [0x771,low4], //Beat Silver & Blaze!
    ],
    [ //icepeak
        [0x74A,low4], //Ace the bump turn!
        [0x74A,high4], //Land 2 air tricks!
        [0x74B,low4], //Do 2 air tricks!
        [0x74B,high4], //Beat Donkey Kong!
        [0x758,low4], //Land your best jump!
        [0x758,high4], //Slipstream!
        [0x759,low4], //Drift dash!
        [0x759,high4], //Beat Wario & Waluigi!
        [0x75D,high4], //Avoid your rivals!
        [0x75E,low4], //Win with no recovery!
        [0x75E,high4], //Win without stamina!
        [0x75F,low4], //Beat Vector!
        [0x761,high4], //Land a triple spin!
        [0x762,low4], //Combo Jump!
        [0x762,high4], //Got rhythm?
        [0x763,low4,"Rouge","Heatin' up the Winter Games in Another Way"], //Beat Rouge!
        [0x771,high4], //Knock a stone away!
        [0x772,low4], //Deliver to set area!
        [0x772,high4], //Win all 2 ends!
        [0x773,low4,"Dry Bones","The Clack of the Stones"], //Beat Dry Bones!
    ],
    [ //blizland
        [0x75A,low4], //Land a special dash!
        [0x75A,high4], //Fill the trick gauge!
        [0x75B,low4], //Win on a clean run!
        [0x75F,high4], //Special dash!
        [0x760,low4], //Stay on the course!
        [0x760,high4], //Pothole track!
        [0x761,low4,"Omega","Busted Machine"], //Beat Omega!
        [0x763,high4], //Grab 99 rings!
        [0x764,low4], //Ace a jump!
        [0x764,high4], //Beat 10+ Kikis!
        [0x765,low4], //Beat Daisy!
        [0x773,high4], //Knock down Goombas!
        [0x774,low4], //Knock one down!
        [0x774,high4], //Get a mini strike!
        [0x775,low4,"Dry Bowser","Dry Aged Turtle Gone Wrong"], //Beat Dry Bowser!
        [0x775,high4], //Beat Bowser & Eggman!
        [0x776,low4], //Beat Bowser & Eggman!
        [0x776,high4,"Bowser and Dr. Eggman","The Beautiful Winter of Vancouver"], //Beat Bowser & Eggman!
    ],
]

items = [
    [ //frostown
        [0x0e379c,[bit1,bit4,bit7]],
        [0x0e379d,[bit2,bit3,bit7]],
        [0x0e379e,[bit1,bit4]],
        [0x0e379f,[bit2,bit7]],
        [0x0e37a0,[bit3]],
        [0x0e37a1,[bit1,bit4,bit5,bit7]],
        [0x0e37a2,[bit1,bit4]],
        [0x0e37a3,[bit1]],
        [0x0e37a4,[bit1,bit2]],
        [0x0e37a5,[bit6]],
        [0x0e37a6,[bit3]],
        [0x0e37a7,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37a8,[bit0,bit1,bit2,bit3,bit4,bit5,bit6]],
        [0x0e3834,[bit1]],
    ],
    [ //sparkleton
        [0x0e37bc,[bit4,bit5,bit7]],
        [0x0e37bd,[bit0,bit1,bit2,bit4,bit5,bit6]],
        [0x0e37be,[bit1,bit3,bit5,bit7]],
        [0x0e37bf,[bit2,bit6]],
        [0x0e37c0,[bit0,bit1,bit4,bit7]],
        [0x0e37c1,[bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37c2,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37c3,[bit0,bit1,bit2,bit3]],
        [0x0e3834,[bit5]],
    ],
    [ //polastraits
        [0x0e37a9,[bit1,bit4,bit5,bit7]],
        [0x0e37aa,[bit1,bit2,bit4,bit5,bit7]],
        [0x0e37ab,[bit3,bit5,bit6,bit7]],
        [0x0e37ac,[bit6,bit7]],
        [0x0e37ad,[bit0,bit1,bit7]],
        [0x0e37ae,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37af,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37b0,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37b1,[bit0,bit1,bit2,bit3,bit4]],
        [0x0e3834,[bit7]],
    ],
    [ //cubyrinth
        [0x0e37c3,[bit4,bit5,bit6]],
        [0x0e37c4,[bit0,bit1,bit6,bit7]],
        [0x0e37c5,[bit0,bit1,bit2,bit3,bit4,bit5,bit6]],
        [0x0e37c6,[bit0,bit3,bit4]],
        [0x0e37c7,[bit0,bit1,bit2]],
        [0x0e37c8,[bit2,bit5,bit7]],
        [0x0e37c9,[bit2,bit3,bit7]],
        [0x0e37ca,[bit0]],
        [0x0e37cb,[bit0,bit1,bit2,bit4,bit5,bit6,bit7]],
        [0x0e37cc,[bit0,bit1,bit2,bit3]],
        [0x0e3835,[bit1]],
        [0x0e3835,[bit2]],
    ],
    [ //icepeak
        [0x0e37b1,[bit5]],
        [0x0e37b2,[bit1,bit2,bit3,bit4,bit6]],
        [0x0e37b3,[bit2,bit7]],
        [0x0e37b4,[bit0,bit1,bit3,bit6,bit7]],
        [0x0e37b5,[bit1,bit5,bit6,bit7]],
        [0x0e37b6,[bit0,bit1,bit3,bit4,bit6]],
        [0x0e37b7,[bit0,bit4,bit7]],
        [0x0e37b8,[bit2,bit4,bit5,bit6]],
        [0x0e37b9,[bit0,bit1,bit3,bit5]],
        [0x0e37ba,[bit0,bit1,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37bb,[bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7]],
        [0x0e37bc,[bit0,bit1,bit2]],
        [0x0e3835,[bit7]],
    ],
    [ //blizland
        [0x0e37cc,[bit4,bit5]],
        [0x0e37cd,[bit0,bit2,bit4,bit5,bit6]],
        [0x0e37ce,[bit2,bit4,bit7]],
        [0x0e37cf,[bit2,bit4,bit6]],
        [0x0e37d0,[bit0,bit1,bit2,bit3,bit6]],
        [0x0e37d1,[bit0,bit2,bit3,bit6]],
        [0x0e37d2,[bit1,bit2,bit5]],
        [0x0e37d3,[bit1,bit3,bit4,bit5]],
        [0x0e37d4,[bit0,bit2,bit4,bit6,bit7]],
        [0x0e37d5,[bit0,bit1,bit2]],
        [0x0e37d6,[bit6]],
        [0x0e37d7,[bit0,bit4,bit6]],
        [0x0e37d8,[bit0,bit2]],
        [0x0e37d9,[bit3,bit4,bit5,bit6,bit7]],
        [0x0e37da,[bit0,bit1,bit2,bit3]],
        [0x0e3835,[bit5,bit6]],
        [0x0e3836,[bit1]],
    ],
]

events = {
    "Olympic":  [[0x3AC,"Alpine Skiing GS",0x00],[0x3AE,"Ski Jumping LH",0x02],[0x3B0,"Moguls",0x04],
                 [0x3B2,"Cross-Country",0x06],[0x3B3,"Biathlon",0x07],[0x3B5,"Nordic Combined",0x09],
                 [0x3B7,"Snowboard Cross",0x0b],[0x3B9,"Speed Skating 500m",0x0d],
                 [0x3BA,"Short Track 500m",0x0e],[0x3BC,"Figure Skating",0x10],[0x3BE,"Bobsleigh",0x12],
                 [0x3C0,"Skeleton",0x14],[0x3C1,"Luge",0x15],[0x3C2,"Ice Hockey",0x16],
                 [0x3C4,"Curling",0x18]],
    "Dream":    [[0x3AD,"Supersonic Downhill",0x01],[0x3AF,"Rocket Ski Jumping",0x03],
                 [0x3B1,"Ski Cross Racing",0x05],[0x3B4,"Ski Shooting",0x08],[0x3B6,"Deluxe Halfpipe",0x0a],
                 [0x3B8,"Extreme Snowboarding",0x0c],[0x3BB,"Intense Short Track",0x0f],
                 [0x3BD,"Ultimate Figure Skating",0x11],[0x3BF,"Blazing Bobsleigh",0x13],
                 [0x3C3,"Fever Hockey",0x17],[0x3C5,"Curling Bowling",0x19],
                 [0x3C6,"Snow Machine Fight",0x1a]],
}

unlocks = {
    "chars":    [[0x711,bit3,"Tails",0],[0x710,bit1,"Luigi",0],[0x711,bit4,"Knuckles",0],
                 [0x710,bit2,"Peach",1],[0x711,bit5,"Amy",1],[0x710,bit4,"Yoshi",2],
                 [0x711,bit6,"Shadow",3],[0x712,bit1,"Silver and Blaze",3],[0x711,bit0,"Donkey Kong",4],
                 [0x712,bit0,"Vector",4],[0x710,bit6,"Wario and Waluigi",4],[0x710,bit3,"Daisy",5],
                 [0x711,bit1,"Bowser Jr. and Metal Sonic"],[0x710,bit5,"Bowser and Dr. Eggman",5]],
    "items":    [[0x714,bit1,"Comet Skis",0],[0x714,bit2,"Battle Snow Machine",1],
                 [0x714,bit4,"Rodeo Bobsleigh",1],[0x714,bit3,"Shooting Rifle",1],
                 [0x714,bit5,"Spark Luge",2],[0x714,bit7,"Fighter's Stick",2],
                 [0x714,bit6,"Blitz Skeleton",2],[0x715,bit0,"Drift Board",3],
                 [0x715,bit1,"Planetary Bobsleigh",3],[0x715,bit2,"Leader's Curling Stone",4],
                 [0x715,bit3,"Meteor Curling Stone",5]],
}

years = [[2006,2002],[1998,1994,1992],[1988,1984,1980],[1976,1972],
         [1968,1964,1960],[1956,1952],[1948],[1936,1932],[1928,1924]]

emblems = [
    ["Gate Master","Finish Alpine Skiing GS in 00:50.000 or less"],
    ["Long Jumper","Jump Beyond 133.000m in Ski Jumping LH"],
    ["In-and-Out Canada Style","Finish Moguls with more than 25.000 points"],
    ["Around Canada in 14 Minutes","Finish Cross-Country in 14:00.000 or less"],
    ["Snow Shooter","Finish Biathlon in 15:00.000 or less"],
    ["King of Skiers","Finish Nordic Combined in 14:30.000 or less"],
    ["Drift Boarder","Finish Snowboard Cross in 00:55.000 or less"],
    ["Sprint like You're Skating","Finish Speed Skating 500m in 00:33.000 or less"],
    ["Track Skater","Finish Short Track 500m in 00:40.000 or less"],
    ["Ice Rink Dancer","Finish any Figure Skating routine with 100.000 points or more"],
    ["Blew the Stickers off That Sleigh","Finish Bobsleigh in 00:57.000 or less"],
    ["Rattlin' the Cage","Finish Skeleton in 00:57.000 or less"],
    ["High Speed","Finish Luge in 00:50.000 or less"],
    ["Like a True Canadian","Win in Ice Hockey by a 10-point margin"],
    ["Broom Master","Achieve 3 or more points in a single end in Curling"],
    ["Everybody's Supersonic Downhilling","Finish Supersonic Downhill in 00:21.000 or less"],
    ["Aerial Ace","Jump further than 2,000m in Rocket Ski Jumping"],
    ["Terrain Racer","Finish Ski Cross Racing in 01:30.000 or less"],
    ["Hit Your Marks","Finish Ski Shooting with more than 15,000 points"],
    ["Trick Artist","Finish Deluxe Halfpipe with more than 17,000 points"],
    ["Drift Monster","Finish Extreme Snowboarding in 03:00.000 or less"],
    ["Speed Demon","Finish Intense Short Track in 02:00.000 or less"],
    ["Dream Dancer","Finish Ultimate Figure Skating with more than 3,000 points"],
    ["Blazing Fast","Finish Blazing Bobsleigh in 01:15.000 or less"],
    ["Goal Hunter","Score more than 100 points in Fever Hockey"],
    ["Point Hound","Achieve at least 5 badges in Snow Machine Fight"],
    ["Miracle Bowler","Achieve 3 (Super) Strikes in a row in Curling Bowling"],
    ["The Tournament of Champions","Win a Multi-Round Match"],
    ["It's Party Time","Win each of the Party Games once"],
    ["Ghost Fighter","Defeat all Level 2 Staff Ghosts"],
    ["Ghost Master","Defeat all Level 3 Staff Ghosts"],
    ["Addicted","Start the Game 50 Times"],
    ["Daytime","Start Game between 6:00 AM and 6:30 AM"],
    ["Nighttime","Start Game between 6:00 PM and 6:30 PM"],
    ["Round-the-Clock Olympic Coverage","Play all Events once"],
    ["The Gang's All Here","Play as every character once"],
    ["Gold Medals","All Gold Medals Hard Difficulty"],
    ["Emblem Party","Got All Emblems"],
    ["Multi Pary","Played Single/Multi-Card play mode "],
    ["Trader","Save/Trade a Ghost (SINGLE/MULTIPLAYER)"],
    ["Wiimmfi","Connect to Nintendo WFC"]]

chevo = [
    [
        [[0x07],[0x00],"Bowser Jr.","while only using the L Button at the starting Dash and in the U-Turns",bJR],
        [[0x04],[0x0a],"Tails","without getting anything worse than Great",bT],
        [[0x0b],[0x0b],"Luigi","without boosting",bL],
        [[0x09],[0x01],"Knuckles","without missing any shots",bK],
        [[0x0d],[0x0a],"Eggman Nega","in the Ski-Jumping LH portion with at least a combined score of 170,000",bNF],
        [[0x0e],[0x0a],"Eggman Nega","in the Cross-Country portion in under 15:00.00",bNF2],
    ]
]

function missionCalc(i, x) {
    Array = []
    for j in range (0, length(missions[i]) -1) {
        mis = missions[i][j]
        array_push(Array, mis[1](pointer+mis[0])/x)
    }
    return sum_of(Array, y => prev(y)) == length(Array)-1 && measured(sum_of(Array, y => y) == length(Array))
}

function itemCalc(i) {
    Array = [[],[]]
    Array2 = [[],[]]
    for j in range (0, length(items[i]) -1) {
        off = items[i][j][0]
        size = items[i][j][1]
        Array2[0] = array_map(size, y=>y(off))
        Array2[1] = array_map(size, y=>y(pointer+off-0xE2FBC))
        for l in range (0, length(Array2[0]) - 1) {
            array_push(Array[0], Array2[0][l])
            array_push(Array[1], Array2[1][l])
        }
    }
    return sum_of(Array[1], y => prev(y)) < length(Array[1]) && measured(sum_of(Array[0], y => y) == length(Array[0]))
}

function charCalc(char) {
    Array = []
    val = 1
    bitCalc=0
    bitCalc = (char%2)*10
    offsetCalc = char/2*4
    for i in range(0,9) {
        array_push(Array, bit(i+bitCalc,pointer+0x718+offsetCalc)*val)
        val=val+val
    }
    return sum_of(Array, y => prev(y)) == 9 && sum_of(Array, y => y) == 10
}


function medalCalc(diff,evnt) {
    Array = []
    bitCalc = diff*2
    offset = pointer+evnt
    array_push(Array, bit(bitCalc,offset) + bit(bitCalc+1,offset))
    return sum_of(Array, y => prev(y)) < 2 && sum_of(Array, y => y) == 2
}

function memorabiliaCalc(decade,code) {
    comb = []
    neg = [0]
    pos = []
    for i in range(0,decade) {
        if (i!=decade)
        for j in range(0,length(years[i])-1) {
            if (years[i][j] <= 1948) bits = 2
            else if (years[i][j] > 1948 && years[i][j] < 1976) bits = 3
            else bits = 4
            for l in range(1,bits)
            array_push(neg, l/l)
        }
        if (i==decade)
        for j in range(0,length(years[i])-1) {
            if (years[i][j] <= 1948) bits = 2
            else if (years[i][j] > 1948 && years[i][j] < 1976) bits = 3
            else bits = 4
            for l in range(1,bits) {
                if (j == 0) ext = 0
                else ext = 1
                array_push(pos, l/l)
                array_push(comb, bit((sum_of(pos,y=>y)+sum_of(neg,y=>y))%8+7,pointer+0x8C3+(sum_of(pos,y=>y)+sum_of(neg,y=>y))/8))
            }
        }
    }
    if (code == "ach") return sum_of(comb, y => prev(y)) < length(comb) && measured(sum_of(comb, y => y) == length(comb))
    else if (code == "pon") {
        if (length(comb) < 3) pon = 2
        else if (length(comb) >= 3 && length(comb) < 5) pon = 4
        else if (length(comb) >= 5 && length(comb) < 8) pon = 5
        else if (length(comb) >= 8 && length(comb) < 13) pon = 10
        return pon
    }
    
}

function yearDes(yr) {
    Array = []
    for i in range(0,length(years[yr])-1) {
        if (i == 0) array_push(Array, format("{0}",years[yr][length(years[yr])-1-i]))
        else if (i > 0 && i < length(years[yr])-1) array_push(Array, format("{0}, {1}",array_pop(Array),years[yr][length(years[yr])-1-i]))
        else if (i == length(years[yr])-1) array_push(Array, format("{0} and {1}",array_pop(Array),years[yr][length(years[yr])-1-i]))
    }
    return format("{0}",array_pop(Array))
}

function triviaCalc() {
    Array = []
    for i in range(0,19) {
        array_push(Array, bit(i,pointer+0x8C0))
    }
    return sum_of(Array, y => prev(y)) == length(Array)-1 && measured(sum_of(Array, y => y) == length(Array))
}

for i in range (0, length(missions)-1) {
    start = measured(always_true(), when=once(screen == 0x51))
    nstart = measured(always_true(), when=code) && never(screen == 0x1d || screen == 0x27)
    achievement(
        title = titles["mission"][i], points = 10,
        description = format("Complete all missions in {0} with any star rank",place[i]),
        trigger = nstart && start && missionCalc(i,3)
    )
    achievement(
        title = titles["missionGold"][i], points = 10,
        description = format("Complete all missions in {0} with a gold star",place[i]),
        trigger = nstart && start && missionCalc(i,4)
    )
    achievement(
        title = titles["items"][i], points = 10,
        description = format("Find all obtainable Items in {0}",place[i]),
        trigger = nstart && start && map == i && screen == 0x24 && event == ~0 && itemCalc(i)
    )
    enemy = missions[i]
    for j in range(0,length(enemy)-1) {
        enm = enemy[j]
        ptr = enm[1](pointer+enm[0])
        tp = "progression"
        if (length(enemy[j]) > 2) {
            if (length(enemy[j]) == 5) p = enm[4]
            else p = 5
            if (enm[0] == 0x75b) {
                tp = ""
                des = format("Collect the {0} and complete your first mission",enm[2])
            }
            else des = format("Defeat {0} in {1}",enm[2],place[i])
            if (any_of([0x767,0x76f],y=>enm[0] == y)) tp = ""
            if (enm[0] == 0x776) tp = "win_condition"
            achievement(
                title = format("{0}",enm[3]), points = p, type = tp,
                description = format("{0}",des),
                trigger =  code && screen == 0x24 && event == ~0
                        && prev(ptr) < 2 && ptr > 1
            )
        }
    }
}

for i in range(0,1) {
    tp = ["chars","items"]
    ttl = ["unlockChar","unlockItem"]
    for j in range (0, length(unlocks[tp[i]])-1) {
        cur = unlocks[tp[i]][j]
        off = 0xE3074
        if (i == 0) {
            p = 5
            if (length(cur) == 4) des = format("Recruit {0} to your party in {1}",cur[2],place[cur[3]])
            else if (length(cur) == 3) des = format("Recruit {0} to your party",cur[2])
            if (j == length(unlocks[tp[i]])-1) {
                p = 10
                des = format("Defeat {0} in {1} again and recruit them to your party",cur[2],place[cur[3]])
            }
        }
        else {
            p = 2
            des = format("Collect the {0}",cur[2])
        }
        achievement(
            title = format("{0}",titles[ttl[i]][j]), points = p,
            description = format("{0}",des),
            trigger =  code && screen == 0x24 && event == ~0 && prev(cur[1](pointer+cur[0])) == 0
                    && prev(cur[1](off+cur[0])) == 0 && cur[1](off+cur[0]) == 1
        )
    }
}

for i in range(0,length(character)-1) {
    achievement(
        title = format("{0}",titles["charMission"][i]), points = 3,
        description = format("Complete 10 Missions as {0}",character[i]),
        trigger = code && saveCheck && charCalc(i)
    )
}

for i in range(0,1) {
    ttl = ["Qualifier","Medalist","Olympian"]
    des = ["Easy","Normal","Hard"]
    eventType = [["Olympic","Gold"],["Dream","1st"]]
    evnt = eventType[i][0]
    medl = eventType[i][1]
    for j in range(0,length(events[evnt])-1) {
        for l in range(0,2) {
            if (l != 2) hg = " or higher"
            else hg = ""
            achievement(
                title = format("{0} {1}",events[evnt][j][1],ttl[l]), points = 2+l+l/2,
                description = format("Win a {3} Medal in {0} on {1} difficulty{2}",events[evnt][j][1],des[l],hg,medl),
                trigger =  code && saveCheck && medalCalc(l,events[evnt][j][0])
            )
        }
        eventlookup[events[evnt][j][2]] = events[evnt][j][1]
    }
}

for i in range(0,length(years)-1) {
    achievement(
        title = format("{0}'s Memorabilia Collector",2000-i*10), points = memorabiliaCalc(i,"pon"),
        description = format("Collect all Memorabilia from the {0} Winter Olympics",yearDes(i)),
        trigger =  code && saveCheck && memorabiliaCalc(i,"ach")
    )
}

achievement(
    title = format("Trivia Master"), points = 25,
    description = format("Collect all Olympic Trivia"),
    trigger =  code && saveCheck && triviaCalc()
)

for i in range(1,41) {
    offsetCalc = i/8
    emblem = bit(i%8,pointer+0x3C8+offsetCalc)
    if (emblems[i-1][0] == "Ghost Master") pts = 10
    else pts = 5
    achievement(
        title = format("{0}",emblems[i-1][0]), points = pts,
        description = format("{0}",emblems[i-1][1]),
        trigger =  code && saveCheck && prev(emblem) == 0 && emblem == 1
    )
}



function lb(evnt,sec="",log=always_true()) {
    if (any_of([0x02,0x03,0x04,0x08,0x0a,0x10,0x11,0x16,0x17,0x18,0x19,0x1a],y=>evnt==y)) {
        des = "as many points as possible"
        fmt = "Value"
        lib = false
    }
    else {
        des = "the fastest possible time"
        fmt = "Frames"
        lib = true
    }
    if (sec != "") des2 = format(": {0}",sec)
    else des2 = ""
    leaderboard(
        title = format("{0}{1}",eventlookup[evnt],des2),
        description = format("Get {0} in {1}{2}",des,eventlookup[evnt],des2),
        start = event == evnt,
        cancel = always_false(),
        submit = always_true(),
        value = measured(dword(0x000c343c)),
        format = fmt, lower_is_better=lib
    )
}
for i in range(0,length(eventlookup)-1) {
    vals = [word(0x000d2df6)*60+word(0x000d2df4)*0.06,dword(0x001568d8)*2,dword(0x000c343c)]
    if (any_of([0x10,0x11],y=>i == y)) {
        for j in range(0,2) {
            songs= [["Die Fledermaus","Carmen","Die Fledermaus"],
            ["Mario Medley","Sonic Medley","Mario & Sonic Medley"]]
            lb(i,songs[i-0x10][j]) 
        }
    }
    else lb(i) 
}
