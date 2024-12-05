// Mario & Sonic at the Olympic Winter Games
// #ID = 14813

menu = byte(0x3d9888)
submenu = byte(0x3d9889)

function L(x) => low4(tbyte(0x3bde08) + x)
function H(x) => high4(tbyte(0x3bde08) + x)

place = {
    0: "Frostown",
    1: "Sparkleton",
    2: "Polastraits",
    3: "Cubyrinth",
    4: "Icepeak",
    5: "Blizland",
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
    
    ],
    1: [ //sparkleton
    
    ],
    2: [ //polastraits
    
    ],
    3: [ //cubyrinth
    
    ],
    4: [ //icepeak
    
    ],
    5: [ //blizland
    
    ],
}

function missionCalc(i, x) {
    Array = []
    for j in range (0, length(missions[i]) -1) {
        array_push(Array, missions[i][j]/x)
    }
    return sum_of(Array, y => prev(y)) == length(missions[i]) - 1 && measured(sum_of(Array, y => y) == length(missions[i]))
}

for i in range (0, length(missions) -1) {
    achievement(
    title = format("{0}'s Mission",place[i]), points = 10,
    description = format("Complete all Missions in {0} on any Rank",place[i]),
    trigger = measured(always_true(), when=menu == 16 && submenu == 1) && missionCalc(i,3)
    )
    achievement(
    title = format("Pure Gold in {0}",place[i]), points = 10,
    description = format("Complete all Missions in {0} on Gold Rank",place[i]),
    trigger = measured(always_true(), when=menu == 16 && submenu == 1) && missionCalc(i,4)
    )
}