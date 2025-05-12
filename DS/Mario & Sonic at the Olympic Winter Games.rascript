// Mario & Sonic at the Olympic Winter Games
// #ID = 14813

code = dword(0x3ffe0c) == 0x504c4f43

menu = byte(0x3d9888)
submenu = byte(0x3d9889)
map = byte(0x0e3599)
event = dword(0x3d9698)
screen = dword(0x3d9a20)
pointer = tbyte(0x3bde08)
savefile = byte(0x3bde28)
saveCheck = screen != 0x1f && savefile <= 1

function L(x) => low4(pointer + x)
function H(x) => high4(pointer + x)

function titles(type, extra) {
    charMission = ["It's-a Mario Time!","Playing Second-Fiddle No More","Feeling Just Peachy","Hi I'm Daisy!",
                   "No Longer Just a Pet","The King of Koopas","Brent Screams in the Distance",
                   "Maybe Now He'll Get into Smash","Feed Me More Bananas","The Prince of Koopas",
                   "The Fastest Hedgehog Around","I Want to Fly High","Unlike Sonic, He Don't Chuckle",
                   "The Tarot Cards Read True","I Am, I Am All of Me","A Genius Mastermind of 300 IQ",
                   "What Do You Mean This Gig Doesn't Pay?!","Fear the Power of the Flames","It's No Use",
                   "The Perfect Copy, Minus a Few Bolts",]
    if (type == "charMission") return charMission[extra]
}

place = {
    0: "Frostown",
    1: "Sparkleton",
    2: "Polastraits",
    3: "Cubyrinth",
    4: "Icepeak",
    5: "Blizland",
}

character = {
    0x00:"Mario",
    0x01:"Luigi",
    0x02:"Peach",
    0x03:"Daisy",
    0x04:"Yoshi",
    0x05:"Bowser",
    0x06:"Wario",
    0x07:"Waluigi",
    0x08:"Donkey Kong",
    0x09:"Bowser Jr.",
    0x0a:"Sonic",
    0x0b:"Tails",
    0x0c:"Knuckles",
    0x0d:"Amy",
    0x0e:"Shadow",
    0x0f:"Dr. Eggman",
    0x10:"Vector",
    0x11:"Blaze",
    0x12:"Silver",
    0x13:"Metal Sonic",
}

missions = {
    0: [ //frostown
    L(0x744), //Land with Style!
    H(0x744), //Fight the Wind!
    L(0x745), //Hit the K point!
    H(0x745), //Beat Tails!
    L(0x74C), //Finish 2nd or better!
    H(0x74C), //5-sprint challenge!
    L(0x74D), //Win without crouching!
    H(0x74D), //Beat Luigi!
    L(0x750), //Land 4+ shots!
    H(0x750), //Win on the hills!
    L(0x751), //No-acceleration run!
    H(0x751), //Beat Knuckles!
    L(0x754), //Get a skill!
    H(0x754), //Clear the penalty!
    L(0x755), //Maintain the lead!
    H(0x755), //Beat Eggman Nega!
    H(0x75B), //Finish in 50 sec!
    L(0x75C), //Final sprint!
    H(0x75C), //Do a curve dash!
    L(0x75D), //Beat Bowser Jr.!
    ],
    1: [ //sparkleton
    L(0x742), //Go faster than 150km/h!
    H(0x742), //Finish the race!
    L(0x743), //Use the Mushroom Dash!
    H(0x743), //Beat Dry Bowser!
    L(0x746), //Go through rings!
    H(0x746), //Pass 2400m!
    L(0x747), //Use the ring dash!
    H(0x747), //Beat Metal Sonic!
    L(0x74E), //Break the ice!
    H(0x74E), //Blow 'em away!
    L(0x74F), //Use the charge shot!
    H(0x74F), //Beat Peach!
    L(0x752), //Shoot only red targets!
    H(0x752), //Win a close victory!
    L(0x753), //Hit Egg Hammer 3 times!
    H(0x753), //Beat Amy!
    ],
    2: [ //polastraits
    L(0x740), //Ace the Gate Dash!
    H(0x740), //Red gates mean go!
    L(0x741), //Advanced Gate Dash!
    H(0x741), //Beat King Boo!
    H(0x765), //Jump aboard!
    L(0x766), //Don't fill the gauge!
    H(0x766), //Reverse controls!
    L(0x767), //Beat Wario & Waluigi!
    H(0x769), //Jump aboard!
    L(0x76A), //Do 3 dashes!
    H(0x76A), //Don't hit the walls!
    L(0x76B), //Beat Eggman Nega!
    H(0x76B), //Use the start dash!
    L(0x76C), //No-crash run!
    H(0x76C), //Keep the boost maxed!
    L(0x76D), //Beat Yoshi!
    H(0x76D), //Pass the puck!
    L(0x76E), //Land a solid check!
    H(0x76E), //Score first!
    L(0x76F), //Beat Silver & Blaze!
    ],
    3: [ //cubyrinth
    L(0x748), //Stick the Jump dash!
    H(0x748), //Grab rings!
    L(0x749), //Don't use items!
    H(0x749), //Beat Shadow!
    L(0x756), //Do a perfect spin!
    H(0x756), //Grab coins!
    L(0x757), //Do a special trick!
    H(0x757), //Beat Jet!
    H(0x767), //Spin your rival!
    L(0x768), //Win backwards!
    H(0x768), //No-heart run!
    L(0x769), //Beat Big Bullet Bill!
    H(0x76F), //Hit the bonus gate!
    L(0x770), //Score a super shot!
    H(0x770), //50 pts by intermission!
    L(0x771), //Beat Silver & Blaze!
    ],
    4: [ //icepeak
    L(0x74A), //Ace the bump turn!
    H(0x74A), //Land 2 air tricks!
    L(0x74B), //Do 2 air tricks!
    H(0x74B), //Beat Donkey Kong!
    L(0x758), //Land your best jump!
    H(0x758), //Slipstream!
    L(0x759), //Drift dash!
    H(0x759), //Beat Wario & Waluigi!
    H(0x75D), //Avoid your rivals!
    L(0x75E), //Win with no recovery!
    H(0x75E), //Win without stamina!
    L(0x75F), //Beat Vector!
    H(0x761), //Land a triple spin!
    L(0x762), //Combo Jump!
    H(0x762), //Got rhythm?
    L(0x763), //Beat Rouge!
    H(0x771), //Knock a stone away!
    L(0x772), //Deliver to set area!
    H(0x772), //Win all 2 ends!
    L(0x773), //Beat Dry Bones!
    ],
    5: [ //blizland
    L(0x75A), //Land a special dash!
    H(0x75A), //Fill the trick gauge!
    L(0x75B), //Win on a clean run!
    H(0x75F), //Special dash!
    L(0x760), //Stay on the course!
    H(0x760), //Pothole track!
    L(0x761), //Beat Omega!
    H(0x763), //Grab 99 rings!
    L(0x764), //Ace a jump!
    H(0x764), //Beat 10+ Kikis!
    L(0x765), //Beat Daisy!
    H(0x773), //Knock down Goombas!
    L(0x774), //Knock one down!
    H(0x774), //Get a mini strike!
    L(0x775), //Beat Dry Bowser!
    H(0x775), //Beat Bowser & Eggman!
    L(0x776), //Beat Bowser & Eggman!
    H(0x776), //Beat Bowser & Eggman!
    ],
}

items = {
    0: [ //frostown
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
    1: [ //sparkleton
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
    2: [ //polastraits
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
    3: [ //cubyrinth
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
    4: [ //icepeak
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
    5: [ //blizland
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
}

events = {
    "Olympic":  [[0x3AC,"Alpine Skiing GS"],[0x3AE,"Ski Jumping LH"],[0x3B0,"Moguls"],
                 [0x3B2,"Cross-Country"],[0x3B3,"Biathlon"],[0x3B5,"Nordic Combined"],
                 [0x3B7,"Snowboard Cross"],[0x3B9,"Speed Skating 500m"],[0x3BA,"Short Track 500m"],
                 [0x3BC,"Figure Skating"],[0x3BE,"Bobsleigh"],[0x3C0,"Skeleton"],
                 [0x3C1,"Luge"],[0x3C2,"Ice Hockey"],[0x3C4,"Curling"]],
    "Dream":    [[0x3AD,"Supersonic Downhill"],[0x3AF,"Rocket Ski Jumping"],[0x3B1,"Ski Cross Racing"],
                 [0x3B4,"Ski Shooting"],[0x3B6,"Deluxe Halfpipe"],[0x3B8,"Extreme Snowboarding"],
                 [0x3BB,"Intense Short Track"],[0x3BD,"Ultimate Figure Skating"],[0x3BF,"Blazing Bobsleigh"],
                 [0x3C3,"Fever Hockey"],[0x3C5,"Curling Bowling"],[0x3C6,"Snow Machine Fight"]],
}

years = [[2006,2002],[1998,1994,1992],[1988,1984,1980],[1976,1972],
         [1968,1964,1960],[1956,1952],[1948],[1936,1932],[1928,1924]]

emblems = [
    ["Gate Master","Finish Alpine Skiing GS in 00:50.000 or less"],
    ["Long Jumper","Jump Beyond 133.000m in Ski Jumping LH"],
    ["Yellow Bib","Get more than 25.000pts in Moguls"],
    ["Backcountry","Finish Cross-Country in 14:00.000 or less"],
    ["Snow Shooter","Finish Biathlon in 15:00.000 or less"],
    ["King of Skiers","Finish Nordic Combined in 14:30.000 or less"],
    ["Drift Boarder","Finish Snowboard Cross in 00:55.000 or less"],
    ["Sprinter","Finish Speed Skating 500m in 00:33.000 or Less"],
    ["Track Skater","Finish Short Track 500m in 00:40.000 or Less"],
    ["Ice Rink Dancer","Finish any Figure Skating routine with 100.000pts or more"],
    ["Express","Finish Bobsleigh in 00:57.000 or less"],
    ["Nonstop","Finish Skeleton in 00:57.000 or less"],
    ["High Speed","Finish Luge in 00:50.000 or less"],
    ["Ice Warrior","Win in Ice Hockey by a 10-point margin"],
    ["Broom Master","Get 3 or more points in 1 end at Curling"],
    ["Speedster","Finish Supersonic Downhill in 00:21.000 or less"],
    ["Arial Ace","Jump further than 2000m in Rocket Ski Jumping"],
    ["Terrain Racer","Finish Ski Cross Racing in 01:30.000 or less"],
    ["Sharpshooter","Get more than 15000pts in Ski Shooting"],
    ["Trick Artist","Get more than 17000pts in Deluxe Halfpipe"],
    ["Drift Monster","Finish Extreme Snowboarding in 03:00.000 or less"],
    ["Speed Demon","Finish Intense Short Track in 02:00.000 or less"],
    ["Dream Dancer","Get more than 3000pts in Ultimate Figure Skating"],
    ["Kamikaze","Finish Blazing Bobsleigh in 01:15.000 or less"],
    ["Goal Hunter","Score 100+ points in Fever Hockey"],
    ["Point Hound","Get at least 5 badges in Snow Machine Fight"],
    ["Miracle Bowler","Get 3 (Super) Strikes in a row in Curling Bowling"],
    ["Round Champion","Win a Multi-Round Match"],
    ["Party","Win each of the Party Games once"],
    ["Ghost Fighter","Defeat all Level 2 Staff Ghosts"],
    ["Ghost Master","Defeat all Level 3 Staff Ghosts"],
    ["Addicted","Start the Game 50 Times"],
    ["Daytime","Start Game between 6:00 AM and 6:30 AM"],
    ["Nighttime","Start Game between 6:00 PM and 6:30 PM"],
    ["Full Play","Play all Events once"],
    ["Collaborative","Play as every character once"],
    ["Gold Medals","All Gold Medals Hard Difficulty"],
    ["Emblem Party","Got All Emblems"],
    ["Multi Pary","Played Single/Multi-Card play mode "],
    ["Trader","Save/Trade a Ghost (SINGLE/MULTIPLAYER)"],
    ["Wiimmfi","Connect to Nintendo WFC"]]

function missionCalc(i, x) {
    Array = []
    for j in range (0, length(missions[i]) -1) {
        array_push(Array, missions[i][j]/x)
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

for i in range (0, length(missions) -1) {
    start = measured(always_true(), when=once(screen == 0x51))
    nstart = never(screen == 0x1d || screen == 0x27)
    achievement(
        title = format("{0}'s Mission",place[i]), points = 10,
        description = format("Complete all Missions in {0} on any Rank",place[i]),
        trigger = nstart && start && missionCalc(i,3)
    )
    achievement(
        title = format("Pure Gold in {0}",place[i]), points = 10,
        description = format("Complete all Missions in {0} on Gold Rank",place[i]),
        trigger = nstart && start && missionCalc(i,4)
    )
    achievement(
    title = format("{0}'s Items",place[i]), points = 10,
    description = format("Find all obtainable Items in {0}",place[i]),
    trigger = nstart && start && map == i && screen == 0x24 && event == ~0 && itemCalc(i)
    )
}

for i in range(0,length(character)-1) {
    achievement(
        title = format("{0}",titles("charMission",i)), points = 3,
        description = format("Complete 10 Missions as {0}",character[i]),
        trigger =  code && saveCheck && charCalc(i)
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
