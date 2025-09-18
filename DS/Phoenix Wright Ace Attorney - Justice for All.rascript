// Phoenix Wright: Ace Attorney - Justice for All
// #ID = 9537

function code(i) => ascii_string_equals(0x3ffe0c, codes[i])
codes = {
    "JP": "A2GJ",
    "US": "A2GE",
    "EU": "AGYX",
    "EI": "A2GP",
}

lclookup = {}
eplookup = {}
dtlookup = {}
tplookup = {}
tplookup2 = {}

game = {
    "JP": 0x000abb30,
    "US": 0x000ab58c,
    "EU": 0x000ad4ec,
    "EI": 0x000abb0c,
}

gameTime = [dword,0x00]
gameLanguage = [byte,0x04]
gameState = [byte,0x08]
gameSubState = [byte,0x09]
gameFrame = [byte,0x0a]
gameSubType = [byte,0x0b]
gameMenu = [byte,0x23]
gameCE = [word,0x2c]
gameMusic = [word,0x32]
gameMusicState = [byte,0x35]
gameEvidence = [byte,0x3f]
gameTopTrans = [byte,0x46]
gameBttmTrans = [byte,0x4E]
gameHP = [byte,0x66]
gameLocation = [byte,0x84]
gameChapter = [byte,0x85]
gameEpisode = [byte,0x86]

evnt = {
    "JP": 0x000ab790,
    "US": 0x000ab1ec,
    "EU": 0x000ae91c,
    "EI": 0x000acf3c,
}

evntCur = [word,0x4a]
evntNext = [word,0x4c]
evntLinked = [word,0x58]

prog = {
    "JP": 0x000aa334,
    "US": 0x000a9d90,
    "EU": 0x000ac430,
    "EI": 0x000aaa50,
}

progEvidence = [byte,0x08]
progProfiles = [byte,0x09]

bttm = {
    "JP": 0x000b0b6c,
    "US": 0x000b05c8,
    "EU": 0x000b2de8,
    "EI": 0x000b1408,
}

bttmType = [byte,0x00]
bttmEvidence = [byte,0x06]
bttmProfile = [byte,0x09]
bttmRecord = [byte,0x0c]

bg = {
    "JP": 0,
    "US": 1,
    "EU": 2,
    "EI": 3,
}

bgCur = [dword,0x0c]
bgPrev = [dword,0x10]

location = ["Wright & Co. Law Offices","Detention Center","Hotti Clinic","Kurain Village",
            "Meditation Room","Channeling Chamber","Winding Way","Side Room","Circus Entrance",
            "Big Top","Lodging House - Plaza","Big Top - Cafeteria","Big Top - Ringmaster's Room",
            "Moe's Room","Acro's Room","Criminal Affairs Department","Engarde's Hotel Room",
            "Corrida's Hotel Room","Hallway","Viola Hall","Hotel Lobby","Private Lounge",
            "Living Room","Wine Cellar","Private Lounge","Wine Cellar","Outside Berry Big Circus"]

cheevos = [["Maggey Byrde is found...","Dustin Prince!"],["The Result of your Arrogance","Dr. Turner Grey!"],
           ["Tears of Brothers","Russell Berry!"],
           ["Justice Ill Served","Juan Corrida with the bad ending!",0x68],
           ["Creating a Miracle","Juan Corrida with the good ending!",0x68]]

cheevos2 = ["Spiritual Battle","Medicine Madness","Catch a Murder by the Toe",
            "Reputation at Stake","Uncovering the Tricks","The World'S Greatest Murder Case",
            "On The Verge of Tears","Keeping The Show Running","The Final Samurai Showdown"]

cheevos2i = ["Maggey and Dustin","Is it over?","Believe that Acro","Files that Prove the truth",
            "Testify About his Client"]

cheevos3 = [[["A Map to Guide Yourself","Get the Guidemap of Fey Manor",2,1],0x23],
            [["Relic that Proves lies","\"Borrow\" the Magatama from Maya",2],0x2a],
            [["Right Spot Bore","Enter the suspicious Folding Screen into evidence",2],0x2c],
            [["Reason for Distraction","Find Pearl's Ball",2],0x38],
            [["Patched Vase","Enter the Sacred Urn into evidence",2],0x36],
            [["Promotional G.","Receive the Max G. Promo Poster",3],0x4b],
            [["Top Hat with Magic Feather","Find the Silk Hat buried in the snow",3],0x48],
            [["Action Figure Found","Find the Trilo Quist",3],0x4d],
            [["Alliance Hidden in the Rubble","Find the sparkling Ring",3],0x52],
            [["Glamorous and Shiny leather","Get scared to death by Léon",3],0x59],
            [["Wireless Communication","Receive the Radio Transceiver",4],0x6f],
            [["Camera for $700","Find Lotta's Camera",4],0x71],
            [["Scattered Weird","Notice the suspicious Wine Glass and note it down",4],0x76],
            [["Someone's Signature","Receive the Autograph",4],0x7b],
            [["Prohibited Espionage","Learn about the Spy Camera",4],0x82],
            [["Teddy Bear Found ","Enter the Figurine into the evidence",4],0x86],
            [["Kidnapping Portrait","Find and note down Celeste's Photo",4],0x88]]

cheevos4 = [["Pearl",0x05,0x04,107338],["Ini",0x05,0x06,107335],["Mia",0x05,0x01,107389],
            ["Max",0x08,0x01,107376],["Moe",0x0b,0x0b,107351],["Acro",0x0b,0x0e,107352],
            ["Oldbag",0x0f,0x14,107363],["Lotta",0x0f,0x12,107364,10],["Andrews",0x0f,0x10,107366,10],
            ["Engarde",0x13,0x01,107375]]

cheevos5 = [[["Writing on the Ground","Detective Gumshoe",0x00,5],[0xc0]],
            [["What Happened Next","Richard Wellington",0x01,5],[0xaf]]]

cheevos6 = [["The Truth For Arrogance","Maya",0x07,0x00],
            ["Keeping the Show Runnin'","Regina",0x0d,0x00],
            ["Edgeworth's gift to Franziska","Franziska von Karma",0x15,0x00]]

cheevos7 = [["Taking your Memories Back",25,0x01],
            ["The Truth Revealed",25,0x07],
            ["The Perfect Ace",25,0x0d],
            ["Fallen Star",25,0x15,0x6e]]

cheevos8 = [["Plant Lives Mater","",0x9c,0x01]]

function regions(func,pass) => any_of(["JP","US","EU","EI"],y=>func(y,pass))

function itemCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == 0 && gameLocation[0](game[lang]+gameLocation[1]) == 0
    && bttmEvidence[0](bttm[lang]+bttmEvidence[1]) == i && bttmRecord[0](bttm[lang]+bttmRecord[1]) == 0
    && __ornext(bttmType[0](bttm[lang]+bttmType[1]) == 0x12 || bttmType[0](bttm[lang]+bttmType[1]) == 0x1a)

function lockCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && gameLocation[0](game[lang]+gameLocation[1]) == i[1] && gameState[0](game[lang]+gameState[1]) == 0x04
    && gameSubState[0](game[lang]+gameSubState[1]) == 0x0b && gameFrame[0](game[lang]+gameFrame[1]) == 0x07
    && prev(gameSubType[0](game[lang]+gameSubType[1])) == 0x01 && gameSubType[0](game[lang]+gameSubType[1]) == 0x03

function evntCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && prev(evntCur[0](evnt[lang]+evntCur[1])) != 0 && all_of(i[1], y=>prev(evntCur[0](evnt[lang]+evntCur[1])) != y)
    && __ornext(any_of(i[1], y=>evntCur[0](evnt[lang]+evntCur[1]) == y))

function dialogCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && prev(evntCur[0](evnt[lang]+evntCur[1])) == i[1] && __ornext(evntCur[0](evnt[lang]+evntCur[1]) != i[1]
    || bttmType[0](bttm[lang]+bttmType[1]) != 0x3c)

function dialogCheckN(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && prev(evntCur[0](evnt[lang]+evntCur[1])) != i[1] && __ornext(evntCur[0](evnt[lang]+evntCur[1]) == i[1]
    || bttmType[0](bttm[lang]+bttmType[1]) != 0x3c)

function verdict(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i
    && gameState[0](game[lang]+gameState[1]) == 0x09 && gameSubType[0](game[lang]+gameSubType[1]) == 0x01

function verdictHP(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i
    && gameState[0](game[lang]+gameState[1]) == 0x09 && gameSubType[0](game[lang]+gameSubType[1]) == 0x01
    && gameHP[0](game[lang]+gameHP[1]) == 0x50

function chpNXT(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i
    && gameState[0](game[lang]+gameState[1]) == 0x03 && gameSubState[0](game[lang]+gameSubState[1]) == 0x01
    && gameSubType[0](game[lang]+gameSubType[1]) == 0xff

function chpEnd(lang,i) => code(lang) && gameState[0](game[lang]+gameState[1]) == 0x03
    && gameSubState[0](game[lang]+gameSubState[1]) == 0x01 && gameSubType[0](game[lang]+gameSubType[1]) == i

function chpFin(lang,i) => code(lang) && prev(bgCur[0](bg[lang]+bgCur[1])) == i
    && bgCur[0](bg[lang]+bgCur[1]) != i

function chpObj(lang,i) => code(lang) && prev(bttmType[0](bttm[lang]+bttmType[1])) == 0x5a
    && bttmType[0](bttm[lang]+bttmType[1]) == 0x02

function itemReceive(lang,id) => code(lang) && prev(bttmType[0](bttm[lang]+bttmType[1])) != 0x14
    && bttmType[0](bttm[lang]+bttmType[1]) == 0x14 && gameEvidence[0](game[lang]+gameEvidence[1]) == id

function answ(lang,ids) => unless(!code(lang)) && never(gameState[0](game[lang]+gameState[1]) == 0x01)
    && all_of(ids, y=>once(prev(evntCur[0](evnt[lang]+evntCur[1])) == y && evntCur[0](evnt[lang]+evntCur[1]) != y))

for i in range(0,length(location)-1) lclookup[i] = location[i]

for i in range(0,0x15) {
    ord = [0,2,8,14,22]
    sub = [[1,1],[0,1,1,0,1,1],[0,1,1,0,1,1],[0,0,1,1,0,0,1,1]]
    for j in range(0,3) {
        n = ord[j]
        r = i-1
        if (i >= n && i < ord[j+1]) {
            eplookup[i] = j+1
            if (i == n) dtlookup[i] = 1
            if (sub[j][i-n] == 0) {
                tplookup[i] = "Investigation"
                tplookup2[i] = "investigating"
                if (i > n) dtlookup[i] = dtlookup[r]
            }
            else if (sub[j][i-n] != 0) {
                tplookup[i] = "Trial"
                tplookup2[i] = "in Court"
                if (i > n) {
                    if (sub[j][i-n] != sub[j][r-n]) dtlookup[i] = dtlookup[r]+1
                    else dtlookup[i] = dtlookup[r]
                }
            }
        }
    }
}

achievement(
    title = "Your Pride and your Hope", points = 1,
    description = "[Episode 1] Check your Attorney's Badge",
    trigger = regions(itemCheck,0)
)

for i in range(0,4) {
    if (i < 3) log = regions(chpEnd,i+1)
    else log = regions(chpFin,cheevos[i][2])
    if (i > 0) p = 10
    else p = 5
    if (i < 3) tp = "progression"
    else tp = "win_condition"
    achievement(
        title = cheevos[i][0], points = p, type = tp,
        description = format("[Episode {0}] Solve the murder of {1}",i+1,cheevos[i][1]),
        trigger = log
    )
}

base = 0
for i in range(0,0x15) {    
    if (dtlookup[i] > 1) {
        if (tplookup[i-1] != tplookup[i]) {
            achievement(
                title = cheevos2[base], points = 2, type = "progression",
                description = format("[Episode {0}] Begin the {1} on Day {2}!",eplookup[i],tplookup[i],dtlookup[i]),
                trigger = regions(chpNXT,i-1)
            )
            base = base+1
        }
    }
}

base = 0
for i in range(0,0x15) {    
    if (i > 0) {
        if (tplookup[i-1] == "Trial" && tplookup[i-1] == tplookup[i] && (eplookup[i] == 1 || dtlookup[i] == 3 || eplookup[i] == 4 && dtlookup[i] == 2)) {
            achievement(
                title = cheevos2i[base], points = 2, type = "progression",
                description = format("[Episode {0}] Begin the second part of the {1} on Day {2}!",eplookup[i],tplookup[i],dtlookup[i]),
                trigger = regions(chpNXT,i-1)
            )
            base = base+1
        }
    }
}


for i in cheevos3 {
    cr = i[0]
    if (length(cr) == 4) p = cr[3]
    else p = 3
    achievement(
        title = cr[0], points = p, type = "progression",
        description = format("[Episode {0}] {1}",cr[2],cr[1]),
        trigger = regions(itemReceive,i[1])
    )
}

for i in cheevos4 {
    if (length(i) == 5) p = i[4]
    else p = 5
    achievement(
        title = format("{0}'s Psyche-Locks",i[0]), points = p, type = "progression", id = i[3],
        description = format("[Episode {0}] Successfully unlock {1}'s Psyche-Lock in {2}",eplookup[i[1]],i[0],lclookup[i[2]]),
        trigger = regions(lockCheck,[i[1],i[2]])
    )
}

for i in cheevos5 {
    function des1(m="",s="",e="") => format("Find the {2}contradiction{1} in {0}'s {3}testimony",cr[1],m,s,e)
    function des2(g) => format("Fully interrogate {0} during {1} testimony",cr[1],g)
    cr = i[0]
    if (length(cr) == 5) {
        statement = ["first","second","third","fourth"]
        if (cr[4] == 0) ds = des2("his")
        else if (cr[4] == 1) ds = des2("her")
        else if (cr[4] == 6) ds = des1("s",e="second ")
        else ds = des1("",s=format("{0} ",statement[cr[4]-2]))
    }
    else ds = des1("s")
    achievement(
        title = cr[0], points = cr[3], type = "progression",
        description = format("[Episode {0}] {1}",eplookup[cr[2]],ds),
        trigger = regions(evntCheck,[cr[2],i[1]])
    )
}

for i in cheevos6 {
    achievement(
        title = i[0], points = 5, type = "missable",
        description = format("[Episode {0}] Give something special to {1} at the end of the case",eplookup[i[2]],i[1]),
        trigger = regions(evntCheck,[i[2],[i[3]]])
    )
}

for i in cheevos7 {
    log = regions(verdictHP,i[2])
    achievement(
        title = i[0], points = i[1], type="missable",
        description = format("[Episode {0}] Complete the case without being penalized!",eplookup[i[2]]),
        trigger = log
    )
}

for i in cheevos8 {
    achievement(
        title = i[0], points = 2,
        description = format("[Episode {0}] {1}",eplookup[i[3]],i[1]),
        trigger = regions(dialogCheck,[i[3],i[2]])
    )
}

