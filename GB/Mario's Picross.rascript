// Mario's Picross
// #ID = 2450

function puzzle(lvl,off) {
    Array = []
    for i in range(0,7) {
        array_push(Array, bit7(save*off+lvl+i))
    }
    return Array
}
function time(i) => byte(0x00d809+i)

puzzleLookup = {}
letterLookup = {}
diffLookup = {}
selectLookup = {}
titles = {
    "Easy": ["We'll Be Working Together From Now On",
             "Simple Symbolism",
             "As Many Puzzles As Stars In The Sky",
             "I Can Solve My House From Here!",
             "The Coming Storm",
             "It's-a Me!",
             "Picross Magician",
             "Time Enough For Mario"],
    "Kinoko": ["Just Play The Game, Boy",
               "Chief? I'm On My Way",
               "As Fast As A Speeding Bullet",
               "Some Kinda Super Picross",
               "Pairly Decent",
               "Way Past Cool, Huh?",
               "Cherub's Blessing",
               "Best Solved Cold"],
    "Star": ["Mario de Mambo",
             "King of Dirty Rascals",
             "Brain Not Included",
             "Lakitu's Gift",
             "Hey, Wrong Course!",
             "A 15x15 Point Buck",
             "Always Watching You",
             "You Are The Walrus"],
    "Time Trial": ["Witch's Brew",
                   "Bow-ow-ow-ow-ow",
                   "Neil Armstrong Award",
                   "Ring Ring, Do This Thing",
                   "Gigantic Melon",
                   "Ready For A Day Out",
                   "Touchdown",
                   "Lucky Feets",
                   "Always Watching",
                   "Green Means 'Wait', Yellow Means 'Go'",
                   "Amaizeing",
                   "Kind of A 'Strich",
                   "Chronofortune",
                   "Who Lives There?",
                   "Feathers Of A Feather Feather Tofeather",
                   "Computer's Best Friend",
                   "Blooper Reel",
                   "Cheep Ripoff",
                   "Johnny Approves",
                   "A Stab In The Dirk",
                   "Impuzzleable Shell",
                   "Bee There, Do That",
                   "Cat-a-pillar",
                   "Koopa's Troopers",
                   "Sweeter Than Canned Days",
                   "Where Is Andy The Crane?",
                   "A Battering Animal",
                   "What Sound Do These Make?",
                   "Horoscope Predicts Speed",
                   "Sheila's Outback Picross",
                   "This Little Puzzle Got Solved",
                   "Siegfried And Roy Ripoff",
                   "What, No Gourd?",
                   "Botanistic Power",
                   "Cujo - The Early Years",
                   "Beat It, Shrimp!",
                   "Did You Get That Thing I Sent Ya?",
                   "Nature's Basket",
                   "Gyroid's Powers",
                   "Wee-Snaw",
                   "First Put On Your Shoes",
                   "SymmetryrtemmyS",
                   "Solved By A Hare",
                   "My Friends Call Me Coach",
                   "Experience High Tide",
                   "No, YOU Calyptus",
                   "The Secrets I Keep",
                   "Chick Filet",
                   "The Original Fish Out Of Water",
                   "Slick, Slack And Slither",
                   "Beware The White Eye",
                   "Elephant Virus",
                   "Neigh",
                   "Half Past Tea",
                   "Herculean Steed",
                   "One-Horned Wonder",
                   "Angle Of The Dangle",
                   "Do You Like It?",
                   "Dirty Birdy",
                   "Death Becomes You",
                   "I HATE THAT HEDGEHOG",
                   "Tonk Tonk",
                   "Puzzleduster",
                   "This Puzzle's Big Enough For Us"]
}
puzzleType = {
    0x00: "is currently solving",
    0xff: "has solved"
}

level = ["Easy","Kinoko","Star","Time Trial"]
puzzles = ["N","L","E","T","S","W","O","R","K","Note","Diamond","Spade","Heart",
       "Clover","Question Mark","Dollar Sign","Arrow","Crescent","Star",
       "Sailboat","Car","Cactus","Apple","Chestnut","Doughnut","Knife and Fork",
       "Flag","Cup","Flask","House","Glove","Balloon","Pencil","Pot","Umbrella",
       "Bell","Boot","Candle","Faucet","Bulb","Anchor","Choplifter","Ball",
       "Boo Diddly","Panda","Wild Duck","Chicken","Snail","Mario","Lipstick",
       "Silk Hat","Ax","Wood Stove","Locomotive","Frozen Pop","Carrot","Whale",
       "Chair","Hourglass","Bottles","Skillet","Coffee Maker","Mail Box","Camera",
       "Scissors","Game Boy","Star","High Heel","Bread","Cake","Hanger","Bus",
       "Tinkle","Skate","Shoe","Cap","Telephone","Can","Garlic","Hand","Hamburger",
       "Shovel","Necklace","UFO","Bullet Bill","Tomato","Flower","Grand Goombas",
       "Coffee Cup","Mutt","Overalls","Leaf","Unicorn","Bull","Controller","Onion",
       "Skull and Crossbones","Snowman","Chameleon","Cucumber","Buildings","Pear",
       "Owl","Rice Ball","Soap Bubbles","Baby Buggy","Bomb","Kettle","Weightlifting",
       "Coffee Mill","Plug","Sunglasses","Crow","Vacuum","Nessie","Camel","Oranges",
       "Bucket","Angel","Racing Car","Purse","Rocking Horse","Ice Cream Cone","Deer",
       "Strawberry","Bicycle","Atlantic Penguin","Ambulance","Backhoe",
       "Bubble Pipe","Shirt","Hermit Crab","Shooting Star","Acorn","Lamp","Sun Fish",
       "Green Peas","Ladybug","Balance","Samurai","Wild Duck","Mini Yoshi",
       "Weathercock","Crown","Poodle","Scarecrow","Grapes","Cannon","Ship",
       "Duckbill","Crab Beetle","Christmas Tree","Tiger","Bowling Pins","Sea Lion",
       "Sunflower","Ice Cream Sundae","Cowboy Hat","Ray","Spiny","Cherry",
       "Palm Tree","Tank","Hawk","Fly","Spinning Top","Mushroom","Squirrel","Bath",
       "Skiing","Coat","Crab","Goldfish","Reindeer","Jack-O'-Lantern","Mud",
       "Chili Peppers","Radar","Mermaid","Fox","Sumo Wrestler","Frog","Cat Fish",
       "Racket","Guitar","Spider","Pelican","Dragonfly","Wild Boar","Beetle",
       "Seal","Kite","Armadillo","Witch","Bow","Man In The Moon","Alarm Clock",
       "Watermelon","Straw Hat","Rocket","Rabbit","Bird","Banana","Corn","Ostrich",
       "Teruterubouzo","Pineapple","Feather","Mouse","Blooper","Fish","Monkey",
       "Dirk","Buzzy Beetle","Bee","Cat","Koopa Troopas","Candy","Crane","Ram",
       "Giraffe","Scorpion","Kangaroo","Pig","White Lion","Sake Bottle","Flower",
       "Friendly Dog","Shrimp","Hippopotamus","Tulip","Clay Figure","Wooden Horse",
       "Socks","Butterfly","Tortoise","Football","Scooter","Koala","Lock","Chick",
       "Cheep-Cheeps","Snake","White Eye","Elephant","Horse","Tea Cup","Pegasus",
       "Rhinoceros","Angler","Ring","Woodpecker","Grim Reaper","Hedgehog",
       "Dump Truck","Bi-Plane","Sheriff"]
letters = ["A","B","C","D","E","F","G","H"]
select = ["Title Screen","Save File","Game Mode","Course","Picoss","Picross"]

save = byte(0x00a065)
puzzleID = word(0x00d807)
puzzleState = byte(0x00d805)
gameState = byte(0x00d634)
subState = byte(0x00d635)

for i in range(0,2) {
    for j in range(0,7) {
        if (i == 0) {
            str = 0x00a2c7
            off = 0x40
            if (j == 0) p = 3
            else if (j == 1) p = 4
            else p = 5
        }
        else {
            str = 0x00aa62+i/2*0x40
            off = 0xc0
            p = 5
        }
        bits = sum_of(puzzle(str+j*8,off),y=>y)
        achievement(
            title = titles[level[i]][j], points = p, type = "progression",
            description = format("Complete all level {0} {1} puzzles.",j+1,level[i]),
            trigger = prev(save) == save && prev(bits) == 7 && measured(bits == 8)
        )
    }
}

for i in range(0,length(puzzles)-1) {
    t = "Time Trial"
    if (i < 0x41) n = "n"
    else n = ""
    if (i > 0xc0) {
        achievement(
            title = titles[t][i-0xc1], points = 2,
            description = format("Solve the puzzle '{0}' in {1}.",puzzles[i],t),
            trigger =  puzzleID == i && puzzleState == 0xff && gameState == 0x09
                    && prev(subState) == 1 && subState == 2
        )
        diffLookup[i] = format("a {0}",t)
    }
    else diffLookup[i] = format("a{0} {1}",n,level[i/0x41])
    if (i < 0xc0) letterLookup[i+1] = format("{0}-{1}",(i/8)%8+1,letters[i%8])
    puzzleLookup[i] = puzzles[i]
}

achievement(
    title = "King of Puzzles", points = 5,
    description = "Get first place in Time Trial.",
    trigger =  time(1)*10+time(0) < 15 && gameState == 0x07
            && prev(subState) == 4 && subState == 5
)

for i in range(0,length(select)-1) selectLookup[i] = select[i]

rich_presence_conditional_display(gameState == 0x00, "Mario is currently relaxing on the Title Screen")
rich_presence_conditional_display(gameState > 0x00 && gameState < 0x06, "Mario is currently selecting a {0}",
rich_presence_lookup("Select",gameState,selectLookup))
rich_presence_conditional_display(gameState == 0x06, "Mario is currently teaching how to play the game")
rich_presence_conditional_display(gameState == 0x07, "Mario is currently checking out the Time Trial Rankings")
rich_presence_conditional_display(gameState > 0x07, "Mario {2} {3} Puzzle | {0} | Level {1}",
rich_presence_lookup("Puzzles",puzzleID,puzzleLookup),rich_presence_lookup("Level",puzzleID,letterLookup),
rich_presence_lookup("Type",puzzleState,puzzleType),rich_presence_lookup("Difficulty",puzzleID,diffLookup))
rich_presence_display("Playing Mario's Picross
//RP by Darky")