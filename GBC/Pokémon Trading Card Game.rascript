// Pokémon Trading Card Game
// #ID = 727

function measured_if(i) => measured(always_true(),when=i)
function time(i) => byte(0x00cac5+i)
function cards() {
    Array = []
    for i in range(0,0xe3)
    if(all_of([0x09,0xa0],y=>y!=i))
    array_push(Array,bit7(0x00a101+i))
    return Array
}

lookupRooms = {}
lookupTrainers = {}
titles = {
    "trades": ["An Evolutionary Trade","A Fiery Trade","A Torrential Trade","A Shocking Trade",
               "Pika Party","Flying Pikachu","Surfing Pikatwo","Surfing Pikachu","A Thunderous Trade",
               "An Energetic Trade","No Need for a Master Ball","A Gift from Pappy","Original Mew",
               "I'm Ronald","This Is Confusing","Super Retrieval Artist"],
    "battles": ["Flame","Lightning","Freeze","Dragon","Met His Match","Paper Beats Rock","All Dried Up",
                "Upstaged","Cut Down to Size","Didn't See It Coming","Funding Cancelled","Snuffed Flame",
                "Grandest of the Masters","The Mysterious Imakuni"]
}
descriptions = {
    "trades": ["Give an Oddish to a Lass in the Grass Club and receive a Vileplume LV35 card",
               "Give a Lapras to a Gal in the Water Club and receive a promotional Arcanine LV34 card",
               "Give a Charizard to a Lass in the Grass Club and receive a Blastoise LV52 card",
               "Give a Clefairy to a Lass in the Grass Club and receive a promotional Pikachu LV16 card",
               "Trade with a Man in the Fighting Club five times and receive a promotional Pikachu LV16 card",
               "Give a Ditto to Ishihara at his house and receive a promotional Flying Pikachu LV12 card",
               "Give a Clefable to Ishihara at his house and receive an identical but slightly different-looking promotional Surfing Pikachu LV13 card",
               "Give a Chansey to Ishihara at his house and receive a promotional Surfing Pikachu LV13 card",
               "Give an Electabuzz to a Chap in the Lightning Club and receive a promotional Electabuzz LV20 card",
               "Help a Lad in the Fire Club with his energy problem and receive a promotional Slowpoke LV9 card",
               "Defeat Ronald during the first Challenge Cup, held after obtaining your third medal and before your fourth, and receive a promotional Mewtwo LV60 card",
               "Talk to Pappy in the Psychic Club after defeating Murray and receive a promotional Mewtwo LV60 card",
               "Defeat Ronald during the second Challenge Cup, held after obtaining your fifth medal and before your sixth, and receive a promotional Mew LV8 card",
               "Defeat Ronald the first time he challenges you and receive a promotional Jigglypuff LV12 card",
               "Obtain the promotional Imakuni? card",
               "Defeat Ronald the second time he challenges you and receive a promotional Super Energy Retrieval card"]
}

cardIDs = [
    "","Grass Energy","Fire Energy Storage","Water Energy","Lightning Energy","Fighting Energy",
    "Physic Energy","Double Colorless Energy","Bulbasaur","Ivysaur","Venosaur","Venusaur",
    "Caterpie","Metapod","Butterfree","Weedle","Kakuna","Beedrill","Ekans","Arbok","Nidoran Female",
    "Nidorina","Nidoqueen","Nidoran Male","Nidorino","Nidoking","Zubat","Golbat","Oddish","Gloom",
    "Vileplume","Paras","Parasect","Venomat","Venomoth","Bellsprout","Weepinbell","Victreebel",
    "Grimer","Muk","Exeggcute","Exeggutor","Koffing","Weezing","Tangela","Tangela","Scyther","Pinsir",
    "Charmander","Charmeleon","Charizard","Vulpix","Ninetails","Ninetails","Growlithe","Arcanine",
    "Arcanine","Ponyta","Rapidash","Magmar","Magmar","Flareon","Flareon","Moltres","Moltres",
    "Squirtle","Wartortle","Blastoise","Psyduck","Golduck","Poliwag","Poliwhirl","Poliwrath",
    "Tentacool","Tentacruel","Seel","Dewgong","Shellder","Cloyster","Krabby","Kingler","Horsea",
    "Seadra","Goldeen","Seaking","Staryu","Starmie","Magikarp","Gyarados","Lapras","Vaporeon",
    "Vaporeon","Omanyte","Omastar","Articuno","Articuno","Pikachu","Pikachu","Pikachu","Pikachu",
    "Flying Pikachu","Surfing Pikachu","Surfing Pikachu","Raichu","Raichu","Magnemite","Magnemite",
    "Magneton","Magneton","Voltorb","Electrode","Electrode","Electabuzz","Electabuzz","Jolteon",
    "Jolteon","Zapdos","Zapdos","Zapdos","Sandshrew","Sandslash","Diglett","Dugtrio","Mankey",
    "Primeape","Machop","Machoke","Machamp","Geodude","Graveler","Golem","Onix","Cubone","Marowak",
    "Marowak","Hitmonlee","Hitmonchan","Rhyhorn","Rhydon","Kabuto","Kabutops","Aerodactyl","Abra",
    "Kadabra","Alakazam","Slowpoke","Slowpoke","Slowbro","Gastly","Gastly","Haunter","Haunter",
    "Gengar","Drowzee","Hypno","Mr. Mime","Jynx","Mewtwo","Mewtwo","Mewtwo","Mew","Mew","Mew",
    "Pidgey","Pidgeotto","Pidgeot","Pidgeot","Rattata","Raticate","Spearow","Fearow","Clefairy",
    "Clefable","Jigglypuff","Jigglypuff","Jigglypuff","Wigglytuff","Meowth","Meowth","Persian",
    "Farfetch'D","Doduo","Dodrio","Lickitung","Chansey","Kangaskhan","Tauros","Ditto","Eevee",
    "Porygon","Snorlax","Dratini","Dragonair","Dragonite","Dragonite","Professor Oak",
    "Imposter Professor Oak","Bill","Mr. Fuji","Lass","Imakumi?","Pokemon Trader","Pokemon Breeder",
    "Clefairy Doll","Mysterious Fossil","Energy Retrieval","Super Energy Retrieval",
    "Energy Search","Energy Removal","Super Energy Removal","Switch","Pokemon Center",
    "Poke Ball","Scoop Up","Computer Search","Pokedex","Pluspower","Defender","Item Finder",
    "Gust of Wind","Devolution Spray","Potion","Super Potion","Full Heal","Revive","Maintenance",
    "Pokemon Flute","Gambler","Recycle"
]
trainers = ["Sam","","","","","","","","","Aaron","Aaron","Aaron",
            "Courtney","Steve","Jack","Rod","Mitch","Gene","Amy","Isaac",
            "Nikki","Murray","Rick","Ken","Ronald","Ronald","Ronald",
            "Ronald","Chris","Michael","Jessica","Ryan","Andrew","Matthew",
            "Sara","Amanda","Joshua","Jennifer","Nicholas","Brandon",
            "Brittany","Kristin","Heather","Robert","Daniel","Stephanie",
            "Joseph","David","Erik","John","Adam","Jonathan","Imakuni?"
]
clubs = ["Fighting","Rock","Water","Lightning","Grass","Psychic",
         "Science","Fire","Challenge Hall","Pokémon Dome"]
trades = [[0x1e],[0x37],[0x43],[0x62],[0x63],[0x64],[0x65],
          [0x66],[0x70],[0x91,5],[0x9e,10],[0x9f],[0xa0,10],
          [0xad,10],[0xc8,10],[0xce,10]]

save = byte(0x00a100)
time = byte(0x00cac4)
card = byte(0x00cc2b)
song = byte(0x00dd80)
enem = byte(0x00cc19)
btle = byte(0x00d0c2)
mchn = byte(0x00ba47)
room = byte(0x00d0bb)
credit = bit1(0x00cab7)
ingame = byte(0x00cad3)

for i in range(0,1) {
    crd = [["Collector","half of the",""],["Master","all 226","missable"]]
    val = length(cards())/(2-i)
    achievement(
        title = format("Card {0}",crd[i][0]), points = 5+20*i, type = crd[i][2],
        description = format("Collect {0} obtainable cards in the game",crd[i][1]),
        trigger =  measured_if(prev(save) == save) && time == 1 && sum_of(cards(),y=>~prev(y)) > length(cards()) - val
                && measured(sum_of(cards(),y=>~y) >= val)
    )
}

for i in range(0,length(trades)-1) {
    cur = trades[i]
    c = cur[0]
    p = 5
    t = ""
    if (length(cur) > 1) {
        p = cur[1]
        if(c != 0xc8)
        t = "missable"
    }
    achievement(
        title = titles["trades"][i], points = p, type = t,
        description = descriptions["trades"][i],
        trigger =  time == 1 && card == c && prev(song) != 0x9d && song == 0x9d
    )
}

v = 0
for i in range(0,length(trainers)-1) {    
    if (i < 1 || i > 8)
    lookupTrainers[i] = trainers[i]
    if (i > 0x0b && i < 0x18 || i == 0x1b || i == 0x34) {
        ttl = titles["battles"][v]
        if (i == 0x1b) {
            p = 25
            t = "win_condition"
            d = "Defeat the final challenge and become Grand Champion"
        }
        else if (i == 0x34) {
            p = 5
            t = ""
            d = format("Defeat {0}",trainers[i])
        }
        else {
            p = 10
            t = "progression"
            if (i < 0x10) {
                ttl = format("Grand Master of {0}",titles["battles"][v])
                d = format("Defeat {0} in the Pokémon Dome",trainers[i])
            }
            else d = format("Defeat {0} and obtain the {1} Medal",trainers[i],clubs[i-0x10])
            
        }
        achievement(
            title = ttl, points = p, type = t,
            description = d,
            trigger =  time == 1 && btle == 1 && enem == i && prev(song) != 0x98 && song == 0x98
        )
        v = v+1
    }
}

achievement(
    title = "Tech Tamed", points = 5,
    description = "Defeat any of Tech Aaron's decks at Dr. Mason's Laboratory",
    trigger =  time == 1 && btle == 1 && __ornext(any_of([0x09,0x0a,0x0b],y=>enem == y))
            && prev(song) != 0x98 && song == 0x98
)

achievement(
    title = "Aaron Aced", points = 10,
    description = "Defeat all of Tech Aaron's decks at Dr. Mason's Laboratory in a single session",
    trigger =  never(time == 0) && tally_of([0x09,0x0a,0x0b],3,y=>once(btle == 1 && enem == y && prev(song) != 0x98 && song == 0x98))
            
)

achievement(
    title = "A Dr. Mason Creation", points = 10,
    description = "Defeat ten consecutive opponents in Dr. Mason's Challenge Machine after beating the game",
    trigger =  time == 1 && prev(mchn) == 9 && mchn == 10
            
)

for i in range(0,0x21) {
    v = i%3
    v2 = (i-4)/3
    if (i < 4) {
        lookupRooms[0] = "Overworld"
        lookupRooms[1] = "Mason Laboratory"
        lookupRooms[2] = "Mason Laboratory: Machine Room"
        lookupRooms[3] = "Ishihara's House"
    }
    else if (i < 0x21) {
        if (i < 0x1c) c = " Club"
        else c = ""
        if (v == 0) r = "Lobby"
        else if (v == 1) r = "Lounge"
        else if (v == 2) r = "Main Hall"
        lookupRooms[i] = format("{0}{1}: {2}",clubs[v2],c,r)
    }
    else lookupRooms[i] = format("{0}: Hall of Honor",clubs[v2])
}

rich_presence_conditional_display(credit == 1, "Currently watching the Credits | {0}/226 Cards | {1}/8 Master Medals | {2}",
rich_presence_value("Value",sum_of(cards(),y=>~y),"VALUE"),rich_presence_value("Value",bitcount(0x00d3d2),"VALUE"),
rich_presence_value("Frames",time(0)+time(1)*60+time(2)*3600+time(3)*216000,"FRAMES"))
rich_presence_conditional_display(ingame == 0x0e, "Currently exploring the {3} | {0}/226 Cards | {1}/8 Master Medals | {2}",
rich_presence_value("Value",sum_of(cards(),y=>~y),"VALUE"),rich_presence_value("Value",bitcount(0x00d3d2),"VALUE"),
rich_presence_value("Frames",time(0)+time(1)*60+time(2)*3600+time(3)*216000,"FRAMES"),rich_presence_lookup("Room",room,lookupRooms))
rich_presence_conditional_display(btle == 1, "Currently battling against {4} in {3} | {0}/226 Cards | {1}/8 Master Medals | {2}",
rich_presence_value("Value",sum_of(cards(),y=>~y),"VALUE"),rich_presence_value("Value",bitcount(0x00d3d2),"VALUE"),
rich_presence_value("Frames",time(0)+time(1)*60+time(2)*3600+time(3)*216000,"FRAMES"),rich_presence_lookup("Room",room,lookupRooms),
rich_presence_lookup("Trainer",enem,lookupTrainers))
rich_presence_display("Currently sitting on the Title Screen")