// Wario World
// #ID = 2259

function baseChain(first,offsets,lastType,prev=[]) {
    type = dword_be
    mask = 0x1ffffff
    if (length(prev) > 0) {
        if (prev[0] == "prev")
        Array = [prev(type(first) & mask)]
        else
        Array = [type(first) & mask]
    }
    else
    Array = [type(first) & mask]
    if (length(offsets) > 1) {
        for i in range(0,length(offsets)-2) {
            Array2 = []
            c = i+1
            func = type(array_pop(Array) + offsets[i]) & mask
            if (length(prev) > c) {
                if (prev[c] == "prev")
                array_push(Array2,prev(func))
                else
                array_push(Array2,func)
            }
            else 
            array_push(Array2,func)
            Array = Array2
        }
    }
    return lastType(array_pop(Array) + offsets[length(offsets)-1])
}
function coll(i) => dword_be(0x001ce3a4+i*4)
function piledrive(i,j,p) => world == i && level == j && prev(piledrive) < p && piledrive >= p

titles = {
    "story": ["Have a Rotten Day, Greenie!",
              "Great, Now There's Sand Everywhere",
              "DinoMighty? More Like DinoWimpy!",
              "I'm Not Scared of Anything!",
              "Just Kidding, I'm Scared of Clowns",
              "Two Heads Aren't Better Than One!",
              "Giving Him My Cold Shoulder! Ha! I'm So Clever!",
              "What’s That Word for Being Afraid of Spiders?",
              "Crispy Bacon",
              "Staff Job, Double the Money!",
              "I Worked Up a Sweat! Now Where's the AC?",
              "Your Booty is Mine Now, Old Man!"],
    "spirit": ["These Guys Are Weird, but They're Sorta a Collectable",
               "Finally! Some Color Around Here!",
               "Get Outta Here Guys, It's Scary Here!",
               "You Guys Aren't Clowns Too, Are You?",
               "Are You Guys Cold? I'm Not! WAHAHAHA!",
               "Get Your Jack-Looking Butts Outta Here!",
               "There's Only Five of You Here, Right?",
               "You Guys Stink, Making Me Come Out to Egypt!"],
    "statue": ["Victory Is Mine!",
               "I Am Not a Crook! I Just Love Money!",
               "Check Out This Flex! Ho!",
               "A Testament to My Glorious Laugh!",
               "This Statue Hits Almost as Hard as I Do!",
               "Consider This Thumbs Up Your Payment!",
               "I'm the Greatest Anime Protagonist! WAHAHA!",
               "Check Out These Pythons!"],
    "treasure": ["Gemstones, Lovely Gemstones!",
                 "Treasure Hunting in Some Ruins? Now It’s a Wario Game!",
                 "There's Always Interesting Things in the Basement!",
                 "Something's Funny About These Treasures...",
                 "Help! I Lost the Glass Treasures in the Snow!",
                 "No Golden Harp? Fairy Tales Lied to Me!",
                 "In This Level Only, I Have Two of Each! HA!",
                 "Treasures in the Sand"],
    "diamond": ["Not Sure If I Want These, but I'll Take Them Too!",
                "Whoever These Belonged To, They're Wario's Now!",
                "This Color Reminds Me of Blood... Cool!",
                "These Aren't Clown Noses, Thank Goodness!",
                "Maybe If I Rub These Together, I Can Start a Fire!",
                "I Heard If You Plant These You Get More, Is That True?",
                "Rose-Tinted Reflections",
                "Diamonds in the Rough"],
    "piledrive": ["Seeds and Teeth",
                  "What's a Few More Cracks?",
                  "Them Bones Are Now Powder",
                  "Breaking Them Funny Bones",
                  "Frozen Bones Are Easily Shattered",
                  "Planting Spines",
                  "70 Years Bad Luck? Excellent!",
                  "By the Time They Find You, You’ll Be History!"],
    "boss": ["You Call THAT a Fight? Ridiculous!",
             "That Reminds Me, I Need to Mow the Lawn after This",
             "And Your Outfit Stinks Too!",
             "Destroying the Collector's Value",
             "Great, I'm Even More Scared of Clowns Now!",
             "Double Dragon... I Should Name My Next Game That!",
             "Giving Him the... Colder Shoulder! Ha! Nailed It!",
             "Arachnophobia! Glad I Remembered! WAHAHA!",
             "Burnt Bacon",
             "More Like Master of None! WAHA!",
             "Come on and Slam, and Welcome to My Land!",
             "Given an Inch, Took a Nautical Mile",
             "I, Wario, Can Beat You Up without Throwing a Punch!",
             "Trial of the Dragon"],
    "coll": ["It's a Start","Getting Closer...",
             "I'll Just BUY a New Castle!",
             "I've Got a Little List",
             "Wario Warfare","Home of the Knuckle Sandwich"],
    "bit": ["Kingpin","You Have a Lot of Nerve Being Alive!"],
    "end": ["You're Welcome! No, You're Not Invited to My New Castle!",
            "No Time For Losers!"]    
}
descriptions = {
    "story": ["some green guy","a puny worm with claws",
              "a weird looking crocodile","a dumb doll",
              "the creepy elf clown thing","two gross dragonheads",
              "some blue guy with a huge head","a disgusting spider",
              "some steroid-taking pig","sick green wizard",
              "an iron statue","some boneheaded buccaneer"],
    "bit": ["Show off my bowling skills and knock out all 5 pins in Wonky Circus",
            "Have me defeat Big Scorper in Pecan Sands! And this time, stay dead!"]
}

sprt = []
worlds = ["Excitement Central","Spooktastic World","Thrillsville","Sparkle Land"]
levels = [["Greenhorn Forest","Greenhorn Ruins"],
          ["Horror Manor","Wonky Circus"],
          ["Shivering Mountains","Beanstalk Way"],
          ["Mirror Mansion","Pecan Sands"]]
bosses = [["Greenfist","Big Scorper","DinoMighty"],
          ["Brawl Doll","Clown-a-Round","Dual Dragon"],
          ["Winter Windster","Spideraticus","Red-Brief J"],
          ["Mean Emcee","Ironsider","Captain Skull"]]
collection = [["losers - I mean, Spritelings","spirit"],
              ["pieces of my statue","statue"],
              ["treasures","treasure"],
              ["red diamonds","diamond"]]
piledrives = [40.0,32.0,26.0,67.0,41.0,50.0,57.0,43.0]

menu = dword_be(0x0043b0b0)
world = dword_be(0x001ce398)
level = dword_be(0x001ce39c)
sublv = dword_be(0x001ce3a0)
ctsn = dword_be(0x001fd944)
hpChar = dword_be(0x001c5830)
pause = dword_be(0x001fd93c)
respawn = word_be(0x001fd91c)
time = dword_be(0x001fd934)
sfxP = dword_be(0x001fdcc8)
sfxA = byte(0x001fdcd8)
bBtn = bit1(0x001fce00)
rBtn = bit5(0x001fce01)
hpBoss = baseChain(0x001ce6d0,[0x14,0x10],word_be,["prev"])
piledrive = baseChain(0x001c5820,[0x74,0x10],float_be)
byebye = baseChain(0x001c5820,[0x128],dword_be)
crates =  baseChain(0x001fd910,[0x18,0x20,0x227],byte)

v=0
for i in range(0,3) {
    for j in range(0,2) { 
        o = i*3+j
        p2 = 4
        if (j < 2) {
            c = levels[i][j]
            d = format(" in {0}",c)
            d2 = format("clear {0}",c)
            s = 0x02
            if (o > 5) p2 = 5
        }
        else {
            d = ""
            d2 = format("get their key")
            s = 0x00
            p2 = 10
        }
        if (o == 0) {
            p = 4
            p2 = 3
        }
        else if (o == 6 || o > 9) p = 10
        else p = 5
        b = bit(o%8,0x001ce3ad-o/8)
        boss = bosses[i][j]
        achievement(
            title = titles["story"][o], points = p2, type = "progression",
            description = format("Help me defeat {0} so I can {1}!",descriptions["story"][o],d2),
            trigger =  world == i && level == j && sublv == s && prev(b) < b
        )
        if (j < 2) {
            function bits(off) => bitcount(0x001ce3b5+off+o*0x10)
            for l in range(0,3) {
                co = bits(l*2)
                if (l > 0) {
                    d4 = "collect"
                    ic = 8
                }
                else {
                    d4 = "rescue"
                    ic = 5
                }
                if (l == 0) {
                    if (o == 0) p3 = 1
                    else if (o < 7) p3 = v
                    else p3 = 4-o/9
                    array_push(sprt, co) 
                }
                else if (l == 1) {
                    if (o == 10) p3 = 10
                    else p3 = p2
                }
                else if (l == 2) {
                    if (o == 10) p3 = 4
                    else p3 = p2
                }
                else if (l == 3) {
                    if (o == 10) p3 = 10
                    else if (o < 6) p3 = 4
                    else p3 = 5
                }
                achievement(
                    title = titles[collection[l][1]][v], points = p3,
                    description = format("Help me {0} all the {1}{2}",d4,collection[l][0],d),
                    trigger =  world == i && level == j && prev(co) == ic-1 && co == ic
                )
            }
            if (any_of([1,7,10],y=>o==y)) p4 = 4
            else p4 = 3
            pd = piledrives[v]
            achievement(
                title = titles["piledrive"][v], points = p4,
                description = format("In {0}, have me Piledrive an enemy with a force of {1} or greater",c,pd),
                trigger = piledrive(i,j,pd)
            )
            if (o < 2) p5 = 3+v
            else p5 = 10+(v/4)*15
            co = coll(0)
            achievement(
                title = format("Unithorn Challenge: {0}",c), points = p5,
                description = format("Have me enter Unithorn's Lair in {0}, break every crate, then leave without losing any coins and with at least 1 coin to spare!",c),
                trigger = never(world != i || level != j || sublv != 0x03 || prev(co) > co)
                    && once(prev(sublv) == 0x05 && sublv == 0x03) && co > 0
                    && trigger_when(once(prev(crates) > 0 && crates == 0) && prev(ctsn) == 0 && ctsn == 1)
            )
            v=v+1
        }
        for l in range(0,1)
        if (any_of([2,5],y=>o==y) || l == 0) {    
            df = "defeat"
            ex = prev(hpChar) > hpChar
            if (l == 1) {
                function button(btn) => pause == 0 && ctsn == 0 && any_of(btn,y=>prev(y) < y)
                ttl = titles["boss"][12+o/5]
                p1 = 5
                if (o == 2) {
                    df = "damage"
                    bp = "or R button"
                    ex = button([bBtn,rBtn])
                }
                else {
                    bp = "button or dying"
                    ex = button([bBtn]) || hpChar == 0
                }
                des = format("Have me {0} {1} without pressing the B {2} - exit the stage if you screw up!",df,boss,bp)
            }
            else {
                ttl = titles["boss"][o]
                p1 = p
                des = format("Have me defeat {0}{1} without getting hurt (and if I do it's your fault!)",boss,d)
            }
            achievement(
                title = ttl, points = p1,
                description = des,
                trigger =  never(world != i || level != j || sublv != s || ex)
                        && once(prev(sublv) == 0x05 && sublv == s)
                        && trigger_when(prev(hpBoss) > 0 && hpBoss == 0)
            )
        }
        if (j < 2) {
            t = c
            d = format("Fastest run through {0} without using ByeBye Balloons",t)
            m = 0x04
        }
        else {
            t = boss
            d = format("Fastest time defeating {0}",t)
            m = 0x38
        }
        leaderboard(
            title = format("{0} - Speedrun",t),
            description = d,
            start =  world == i && level == j && sublv == 0
                  && respawn == 0 && time == 1 && ctsn != 0,
            cancel = sublv == 0 && prev(byebye) == 0 && byebye == 1 || menu == 0x25,
            submit = world == i && level == j && menu == m,
            value = measured(tally(0,pause == 0 && ctsn == 0)), format="Frames", lower_is_better=true
        )
    }
}

achievement(
    title = "To the Depths with Ye!", points = 4,
    description = "In his boss fight, have me Piledrive Captain Skull with a force of 58.0 or greater - doing damage doesn't matter, just do it!",
    trigger = piledrive(3,2,58.0)
)

achievement(
    title = "I Win! I Win! WAHAHAHAHAHA!", points = 10, type = "win_condition",
    description = "Help me defeat Black Jewel! Now where's my castle?",
    trigger =  menu == 0x34 && prev(hpBoss) > 0 && hpBoss == 0
)

achievement(
    title = "I'm-a Number One!", points = 25,
    description = "Have me defeat Black Jewel without getting hurt (and if I do it's your fault!)",
    trigger =  never(menu != 0x34 || prev(hpChar) > hpChar)
            && once(prev(menu) != 0x34 && menu == 0x34)
            && trigger_when(prev(hpBoss) > 0 && hpBoss == 0)
)

leaderboard(
    title = "Black Jewel - Speedrun",
    description = "Fastest time defeating Black Jewel",
    start = world == ~0 && level == ~0 && prev(menu) != 0x34 && menu == 0x34,
    cancel = prev(menu) != 0x0e && menu == 0x0e,
    submit = prev(menu) != 0x12 && menu == 0x12,
    value = measured(tally(0,pause == 0 && ctsn == 0)), format="Frames", lower_is_better=true
)

for i in range(0,1) {
    for j in range(0,2) {
        t = [["collect","coins","held","Hardest Grindsets"],
             ["defeat","enemies","defeated","Largest Kill Count"]]
        t2 = [["It's not a lot, but it's a start!",
               "I'm starting to get more comfortable now....",
               "Now that's more like it!"],
              ["This feels pretty nice!",
               "I could do this all day you little chumps!",
               "Wahahaha! Just a bunch of losers!"]]
        val = [[500,1000,2000],[75,150,250]]
        c = val[i][j]
        if (c < 100) d = format("{0}",c)
        else d = format("{0},00",c/100,c%100)
        v = coll(i)
        v2 = c*10
        achievement(
            title = titles["coll"][i*3+j], points = (j+1)*5+(j/2)*10,
            description = format("Have me {0} over {1}0 {2}! {3}",t[i][0],d,t[i][1],t2[i][j]),
            trigger = menu != 0x1b && prev(v) < v2 && v >= v2
        )
        if (j < 1)
        leaderboard(
            title = t[i][3],
            description = format("Most {0} {1} (by me!) when beating Black Jewel",t[i][1],t[i][2]),
            start = world == ~0 && level == ~0 && prev(menu) != 0x12 && menu == 0x12,
            cancel = always_false(),
            submit = always_true(),
            value = measured(v), format="Value", lower_is_better=false
        )
    }
    end = [["","all 40","s","I'm such a nice guy! Now get outta here!"],
           ["missable","only one","","You have to understand, money was more important than you guys!"]]
    e = end[i]
    s = sum_of(sprt, y=>y)
    v = 40-i*39
    m = 0x0b-i*0x03
    achievement(
        title = titles["end"][i], points = 10+i*15, type = e[0],
        description = format("Beat my game having rescued {0} Spriteling{1}. {2}",e[1],e[2],e[3]),
        trigger =  s == v && prev(menu) != m && menu == m
    )
    btf = [[1,1,bit0(0x001ce5a3)],[3,1,bit3(0x001ce450)]]
    b = btf[i][2]
    achievement(
        title = titles["bit"][i], points = i+2,
        description = descriptions["bit"][i],
        trigger =  world == btf[i][0] && level == btf[i][1] && sublv == 0 && prev(b) < b
    )
}

achievement(
    title = "Sorry...", points = 2,
    description = "Fine, I'll stop singing the song of my people. I'll run out of breath if you keep it paused for this long!",
    trigger = pause == 1 && prev(sfxP != 0 && sfxA == 0) && sfxP == 0 && sfxA == 1
)