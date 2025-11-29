// ~Homebrew~ Zelda's Adventure
// #ID = 24177

mapLookup = {}
itemLookup = {}

map = 0x00cbb8
itm = 0x00cba2

maps = ["Lands of Tolemac","Earth","Illusion","Air","Destiny","Water","Strenght","Fire"]
items = ["None","Wand","Bow & Arrow","Broadsword","Calm","Feather","Rings of Fire",
              "Firestorm","Gold Necklace","Hammer","Jade Amulet","Joust","Jade Ring",
              "Dagger","Noise","Pyro","Roar Stick","Short Axe", "Turquise Ring",
              "Boomerang","Ladder","Candle","Bone","Black Orb","Bouquet","Ticket",
              "Empty Bottle","Water Bottle","Coal","Diamond","Flute","Plank","Knife",
              "Harp","Admit Ticket","Life Potion","Rug","Magic Shield","Salt Cellar",
              "Raft","Red Boots","Zora Repellant","Red Ribbon","Vial of Wind",
              "Golden Boots"]


for i in range(1,length(items)-1) {
    s = " Spell"
    c = items[i]
    b = bit(i%8,itm+i/8)
    if(i == 1 || i > 19) {
        t = "Collect"
        s = ""
    }
    else t = "Unlock"
    achievement(
        title = format("{0}{1}",c,s), points = 2,
        description = format("{0} the {1}{2}",t,c,s),
        trigger = prev(b) == 0 && b == 1
    )
}