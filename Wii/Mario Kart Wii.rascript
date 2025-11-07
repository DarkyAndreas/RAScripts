// Mario Kart Wii
// #ID = 11071

function baseChain(first,offsets,lastType) {
    type = dword_be
    mask = 0x1fffffff
    Array = [type(first) & mask]
    if (length(offsets) > 1) {
        for i in range(0,length(offsets)-2) {
            Array2 = []
            array_push(Array2,type(array_pop(Array) + offsets[i]) & mask)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}
function license(region) => baseChain(ptrStats[region],[0x37],byte)
function stats(region,offset,lastType) => baseChain(ptrStats[region],[offset+license(region)],lastType)
function mainMenu(region) => baseChain(ptrMenu[region],[0x00,0x00],dword_be)

titles = {
    "Trophy": "",
    "Stars": "",
    "Unlocks": ["Bikes Unlocked!","Karts Delocked!","Mirror Mode Mirrored!"],
}
ptrRaceData = {
    "EU": 0x009bd728,
    "US": 0x009b8f68,
    "JP": 0x009bc788,
    "KO": 0x009abd68,
}
ptrRaceInfo = {
    "EU": 0x009bd730,
    "US": 0x009b8f70,
    "JP": 0x009bc790,
    "KO": 0x009abd70,
}
ptrStats = {
    "EU": 0x009bd748,
    "US": 0x009b8f88,
    "JP": 0x009bc7a8,
    "KO": 0x009abd88,
}
ptrMenu = {
    "EU": 0x009c1e38,
    "US": 0x009bd508,
    "JP": 0x009c0e98,
    "KO": 0x009b0478,
}

regions = ["EU","US","JP","KO"]
cups = ["Mushroom","Flower","Star","Special","Shell","Banana","Leaf","Lightning"]
ccm = ["50","100","150","Mirror"]
vehicle = ["Standard Kart S","Standard Kart M","Standard Kart L",
           "Baby Booster","Nostalgia 1","Offroader","Concerto",
           "Wild Wing","Flame Flyer","Cheep Charger","Turbo Blooper",
           "Piranha Prowler","Rally Romper","Royal Racer","Aero Glider",
           "Blue Falcon","B Dasher Mk 2","Dragonetti","Standard Bike S",
           "Standard Bike M","Standard Bike L","Bullet Bike","Mach Bike",
           "Bowser Bike","Nanobike","Bon Bon","Wario Bike","Quacker",
           "Rapide","Twinkle Star","Magikruiser","Ntriocycle","Torpedo",
           "Bubble Bike","Dolphin Dasher","Phantom"]
character = ["Mario","Baby Peach","Waluigi","Bowser","Baby Daisy",
             "Dry Bones","Baby Mario","Luigi","Toad","Donkey Kong",
             "Yoshi","Wario","Baby Luigi","Toadette","Koopa Troopa",
             "Daisy","Peach","Birdo","Diddy Kong","King Boo",
             "Bowser Jr.","Dry Bowser","Funky Kong","Rosalina","Mii"]
map = ["Mario Circuit","Moo Moo Meadows","Mushroom Gorge","Grumble Volcano",
       "Toad's Factory","Coconut Mall","DK's Snowboard Cross","Wario's Gold Mine",
       "Luigi Circuit","Daisy Circuit","Moonview Highway","Maple Treeway",
       "Bowser's Castle","Rainbow Road","Dry Dry Ruins","Koopa Cape",
       "GCN Peach Beach","GCN Mario Circuit","GCN Waluigi Stadium","GCN DK Mountain",
       "DS Yoshi Falls","DS Desert Hills","DS Peach Gardens","DS Delfino Square",
       "SNES Mario Circuit 3","SNES Ghost Valley 2","N64 Mario Raceway",
       "N64 Sherbet Land","N64 Bowser's Castle","N64 DK's Jungle Parkway",
       "GBA Bowser's Castle 3","GBA Shy Guy Beach","Delfino Pier","Block plaza",
       "Chain Chomp Roulette","Funky Stadium","Thwomp Desert","GCN Cookie Land",
       "DS Twilight House","SNES Battle Course 4","GBA Battle Course 3","N64 Skyscraper"]
staff = [[0x00,["==Kony",0x1c,[1,39,469]],["fuyu",0x10,[1,33,702]]],
         [0x04,["YuNya",0x03,[1,34,159]],["Tkym",0x15,[1,25,909]]],
         [0x0d,["Murak",0x1b,[2,10,807]],["Miki",0x06,[2,1,11]]],
         [0x15,["Gorin",0x05,[2,22,437]],["aki",0x20,[2,11,852]]],
         [0x08,["Misa",0x21,[2,16,548]],["GQO",0x0f,[2,5,593]]],
         [0x0f,["SiMO",0x19,[2,24,924]],["MUGI★",0x07,[2,13,333]]],
         [0x09,["mokke",0x14,[2,28,318]],["KOZ★",0x08,[2,17,546]]],
         [0x0b,["morimo",0x1a,[2,14,932]],["♪Ryo",0x08,[2,4,800]]],
         [0x07,["sato",0x10,[1,26,376]],["Uta♪",0x16,[1,19,419]]],
         [0x0f,["Toki",0x0d,[1,51,617]],["Taeko",0x16,[1,41,362]]],
         [0x10,["KOZ★",0x01,[2,9,956]],["Koh",0x16,[2,4,163]]],
         [0x12,["pico",0x04,[2,50,229]],["MUGI★",0x1f,[2,37,812]]],
         [0x03,["YABUKI",0x0b,[2,57,771]],["Masa",0x17,[2,42,98]]],
         [0x17,["Konno",0x1d,[2,59,970]],["Syun1",0x0e,[2,44,734]]],
         [0x0a,["Kei",0x04,[2,25,904]],["Akito",0x1f,[2,14,286]]],
         [0x0e,["Rose",0x09,[2,54,897]],["morimo",0x21,[2,41,370]]],
         [0x10,["HIRO",0x0d,[1,30,698]],["Taeko",0x22,[1,23,140]]],
         [0x00,["♪Miz",0x13,[1,55,618]],["Dai8",0x07,[1,49,939]]],
         [0x02,["NARI★",0x14,[2,25,741]],["♪Ryo",0x0b,[2,12,367]]],
         [0x16,["♪msk",0x1a,[2,52,48]],["Miyam",0x08,[2,38,130]]],
         [0x0a,["DoTak",0x1c,[1,13,846]],["FJ",0x0a,[1,9,175]]],
         [0x05,["CHIA",0x12,[2,1,141]],["solami",0x0c,[1,52,686]]],
         [0x01,["Ito.y",0x1e,[2,29,6]],["==Kony",0x06,[2,16,777]]],
         [0x0b,["iwaco",0x1a,[2,34,437]],["TARO",0x11,[2,24,169]]],
         [0x06,["iwaco",0x00,[1,34,971]],["Shige",0x15,[1,26,659]]],
         [0x13,["YOKO.",0x02,[1,4,261]],["sira■",0x20,[0,58,907]]],
         [0x06,["Ichiro",0x18,[2,7,915]],["Yuuki",0x06,[1,59,53]]],
         [0x0c,["Sakat",0x1b,[2,42,721]],["FJ",0x0f,[2,28,356]]],
         [0x14,["GASK2",0x01,[3,2,466]],["Kentan",0x1f,[2,55,933]]],
         [0x09,["Matt",0x23,[2,51,662]],["Syun1",0x08,[2,37,782]]],
         [0x15,["Fukuda",0x02,[2,52,926]],["A24",0x17,[2,39,391]]],
         [0x0e,["Kato",0x09,[1,41,44]],["Matt",0x1e,[1,32,867]]]]
unlocks = [[0x05,0x0d,0x04,0x0c,0x12,0x14,0x0f,
            0x11,0x15,0x13,0x16,0x17,0x18,0x18],
           [0x09,0x0c,0x0f,0x0a,0x0d,0x10,0x0b,0x0e,0x11,
            0x1b,0x1e,0x21,0x1c,0x1f,0x22,0x1d,0x20,0x23]]

for i in range(0,3) {
    for j in range(0,7) {
        off = 0x70*j
        off2 = 0x380*i
        cup = [[],[]]
        cu = [[],[]]
        for r in regions {
            st = stats(r,0xae+off+off2,byte)
            cr = stats(r,0xbf+off+off2,dword_be)
            sr = stats(r,0xb8+off+off2,dword_be)
            for l in range (0,1) {
                lg = [cr,sr]
                array_push(cup[l],mainMenu(r) == 0x35 && __ornext(prev(st) == 0 || prev(lg[l]) > 0)
                               && st == 1 && lg[l] == 0)
            }
            cb = 6+i+(j/4)*8+(j%2)*4
            bit = bit(cb%8,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9036-cb/8)
            md = bit(6+i,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9034)
            mm = bit(4,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9039)
            array_push(cu[0],mainMenu(r) == 0x93 && prev(bit) == 0 && bit == 1)
            if (i < 2) array_push(cu[1],mainMenu(r) == 0x91 && prev(md) == 0 && md == 1)
            else if (i == 2) array_push(cu[1],mainMenu(r) == 0x93 && prev(mm) == 0 && mm == 1)
        }
        if (i < 3) spd = format("{0}ccm",ccm[i])
        else spd = ccm[i]
        for l in range(0,1) {
            des = [["Gold Trophy","the golden trophy"],["3 Stars","a 3 star ranking"]]
            achievement(
                title = format("{0} Cup - {1} - {2}",cups[j],spd,des[l][0]), points = 1,
                description = format("Earn {0} for the {1} Cup on {2}",des[l][1],cups[j],spd),
                trigger = any_of(cup[l],y=>y)
            )
        }
        if (j%4 > 1)
        achievement(
            title = format("Unlock {0} Cup - {1}",cups[j],spd), points = 1,
            description = format("Unlock the {0} Cup on {1}",cups[j],spd),
            trigger = any_of(cu[0],y=>y)
        )
        if (i < 3 && j == 7) {
            veh = ["Bikes","Karts"]
            if (i < 2) vhs = format("the ability to use {0} in {1}",veh[i],spd)
            else vhs = "Mirror Mode"
            achievement(
                title = titles["Unlocks"][i], points = 1,
                description = format("Unlock {0}",vhs),
                trigger = any_of(cu[1],y=>y)
            )
        }
    }
}

for i in range(0,1) {
    for j in range(0,length(unlocks[i])-1) {
        lg = []
        un = [character,vehicle]
        mii = ["A","B"]
        cur = unlocks[i][j]
        for r in regions {
            if (cur == 0x18) v = 2
            else v = 0
            cb = i*2+j
            bit = bit(cb%8,(dword_be(ptrStats[r]) & 0x1fffffff)+0x9037+i*4-cb/8)
            array_push(lg,mainMenu(r) == 0x90+i+v && prev(bit) == 0 && bit == 1)
        }
        if (i < 1 && j > 11) und = format("{0} {1}",un[i][cur],mii[j%12])
        else und = format("{0}",un[i][cur])
        achievement(
            title = format("Unlock {0}",und), points = 1,
            description = format("Unlock {0}",und),
            trigger = any_of(lg,y=>y)
        )
    }
}

for i in range(0,length(staff)-1) {
    function gs(tp) {
        Array = []
        for r in regions {
            function rd(off) => baseChain(ptrRaceData[r],off,dword_be)
            cur = staff[i][1+tp]
            tm = [[],[]]
            st = baseChain(ptrRaceInfo[r],[0x28],dword_be)
            for j in range(0,2) {
                off = [[0,100000,byte],[1,1000,byte],[4,1,word_be]]
                array_push(tm[0],baseChain(ptrRaceInfo[r],[0x0c,0x00,0x91+off[j][0]],off[j][2])*off[j][1])
                array_push(tm[1],cur[2][j]*off[j][1])
            }
            array_push(Array,rd([0xB70]) == 0x02 && rd([0xB68]) == i && rd([0x30]) == cur[1]
                    && rd([0x34]) == staff[i][0] && sum_of(tm[0],y=>y) <= sum_of(tm[1],y=>y)
                    && prev(st) != 0x04 && st == 0x04)
        }
        return Array
    }
    for j in range(0,1) {
        tp = ["Easy","Hard"]
        cur = staff[i][1+j]
        time = cur[2]
        if (time[0] < 1) t0 = ""
        else t0 = format("{0}:",time[0])
        if (time[1] < 10) t1 = format("0{0}",time[1])
        else t1 = time[1]
        if (time[2] < 10) t2 = format("00{0}",time[2])
        else if (time[2] < 100) t2 = format("0{0}",time[2])
        else t2 = time[2]
        if (j==0) des = format("Beat Nin★{0} with a time of at least {1}{2}.{3} on {4} using {5} and {6}",
                        cur[0],t0,t1,t2,map[i],character[staff[i][0]],vehicle[cur[1]])
        else des = format("Beat Nin★{0}'s time of {1}{2}.{3} on {4} using {5} and {6}",
                   cur[0],t0,t1,t2,map[i],character[staff[i][0]],vehicle[cur[1]])
        achievement(
            title = format("{0} - {1}",map[i],tp[j]), points = 1,
            description = des,
            trigger = any_of(gs(j),y=>y)
        )
    }
}