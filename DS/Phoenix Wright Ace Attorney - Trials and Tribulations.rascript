// Phoenix Wright: Ace Attorney - Trials and Tribulations
// #ID = 3103

function code(i) => ascii_string_equals(0x3ffe0c, codes[i])
codes = {
    "JP": "YG3J",
    "US": "YG3E",
    "EU": "YG3P",
    "FD": "YG3X",
    "EI": "YG3Y",
}

chlookup = {}
lclookup = {}
eplookup = {}
dtlookup = {}
tplookup = {}
tplookup2 = {}

game = {
    "JP": 0x000bf394,
    "US": 0x000bd2ec,
    "EU": 0x000bc174,
    "FD": 0x000bcad4,
    "EI": 0x000bc954,
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
    "JP": 0x000c0e5c,
    "US": 0x000bedb4,
    "EU": 0x000bdc3c,
    "FD": 0x000c171c,
    "EI": 0x000c159c,
}

evntCur = [word,0x4a]
evntNext = [word,0x4c]
evntLinked = [word,0x58]
evntCall = [word,0x88]

prog = {
    "JP": 0x000be658,
    "US": 0x000bc5b0,
    "EU": 0x000bb438,
    "FD": 0x000bbd98,
    "EI": 0x000bbc18,
}

progEvidence = [byte,0x08]
progProfiles = [byte,0x09]

bttm = {
    "JP": 0x000c5db8,
    "US": 0x000c3d10,
    "EU": 0x000c2b98,
    "FD": 0x000c37f8,
    "EI": 0x000c3678,
}

bttmType = [byte,0x00]
bttmEvidence = [byte,0x06]
bttmProfile = [byte,0x09]
bttmRecord = [byte,0x0c]

bg = {
    "JP": 0x000be6a8,
    "US": 0x000bc600,
    "EU": 0x000bb488,
    "FD": 0x000bbde8,
    "EI": 0x000bbc68,
}

bgCur = [word,0x0c]
bgPrev = [word,0x10]

location = ["Wright & Co. Law Offices","Detention Center","Atmey Detective Agency",
            "Basement Warehouse","Main Exhibition Hall","CEO's Office","Security Room",
            "DeMasque's Hideout","Trés Bien","Kitchen","Blue Screens, Incorporated",
            "Tender Lender","Vitamin Square","Criminal Affairs Department","Main Gate",
            "Courtyard","Main Hall","Suspension Bridge","Inner Temple Gate","Training Hall",
            "Garden","Heavenly Hall"]

cheevos = [["Beginning of a Journey","Doug Swallow!"],["Rebuilding what it Takes","Kane Bullard!"],
           ["Lunch Made to Taste","Glen Elg!"],
           ["A Demonic \"promise\"","Valerie Hawthorne!"],
           ["End of a Masterpiece","Elise Deauxnim!",0x16,0x78]]

cheevos2 = ["Stolen Secrets","Double Troubles","Trial of Aces",
            "Dinner Well Served","Sweet Taste of Truth","Cooking A Perfect Case",
            "Trapped In A Cold Dark Nightmare","Looking Beyond the Edge","Spiritual Mystery"]

cheevos3 = [[["Fey's Family Treasure","Note down the suspicous Golden Statue of Ami Fey",2],0x23],
            [["Piece of Plastic","Enter the Shichishito into evidence",2],0x2c],
            [["Quick Pass Card","Obtain the Key Card from Larry",2],0x35],
            [["Alarm Button","Get scared for life by the Buzzer in the CEO Office and note it down",2],0x3a],
            [["Pink Painted Trash","Enter Maya's Urn Box into evidence",2],0x43],
            [["Latest News","Borrow the Sports Paper from Trés Bien",3],0x59],
            [["Make-up","Pick up a small Bottle from the Kitchen in Trés Bien",3],0x5e],
            [["Vehicle left Behind","Enter the broken down Scooter into evidence",3],0x62],
            [["Scheduled Date Race","Take a note of Glen's Calendar",3],0x70],
            [["That Reminds you of Something, Right?","Be flabbergasted by the Paper Badge and take it with you",3],0x71],
            [["Chinese Manuscript Banner","Enter the Hanging Scroll into evidence",5],0xac],
            [["Little White Hat","Receive the spiritual hood from Iris",5],0xaf],
            [["What's that in the Snow?","Dig out the Kurain Master's Talisman from the snow",5],0xbe],
            [["Someone's improved Staff","Uncover a dangerous secret of the Victim's Staff",5],0xb5],
            [["Burned Pages ","Receive the burnt Letter from Gumshoe",5],0xbf]]

cheevos4 = [["Atmey",0x02,0x02,109771],["Larry",0x04,0x06,109776],["Andrews",0x04,0x03,109777],
            ["Old Man",0x07,0x0c,109791],["Armstrong",0x07,0x08,109789],["Gumshoe",0x09,0x08,109792],
            ["Lisa",0x09,0x0a,109795],["Viola",0x09,0x0b,109797],["Iris",0x0f,0x01,109816],
            ["Larry",0x0f,0x15,109817],["Bikini",0x12,0x10,109821],["Iris",0x13,0x13,109825],
            ["Pearl",0x13,0x15,109824]]

cheevos5 = [[["When I Pushed the Victim","Phoenix Wright",0x00,5],[0xce]],
            [["The Poisoning","Dahlia Hawthorne",0x01,5],[0xd2]],
            [["Fight With The Thief","Ron DeLite",0x03,5],[0x9e],0x03],
            [["At The CEO's Office","Ron DeLite",0x05,5],[0xc0]],
            [["The Alibi","Luke Atmey",0x06,5,2],[0x9c]],
            [["The Sacred Urn Heist","Luke Atmey",0x06,5,3],[0xaa]],
            [["Motive for Murder","Luke Atmey",0x06,5,4],[0xc6]],
            [["The Investigation","Detective Gumshoe",0x08,5],[0xa6]],
            [["The Final Showdown","Victor Kudo",0x08,5],[0x96],0x11],
            [["The Confession","Jean Armstrong",0x0a,5],[0xe0]],
            [["The Tiger's Alibi","Furio Tigre",0x0b,5,2],[0x98]],
            [["The Victim, Glen Elg","Furio Tigre",0x0b,5,3],[0xa4]],
            [["At Tres Bien","Furio Tigre",0x0b,5,4],[0xb7]],
            [["Ties to the Victim","Furio Tigre",0x0b,5,5],[0xdf]],
            [["Events on Dusky Bridge","Detective Gumshoe",0x0c,5],[0xa9]],
            [["The Witness's Photograph","Melissa Foster",0x0c,5,2],[0xc5]],
            [["Melissa Foster's History ","Dahlia Hawthorne",0x0d,5,2],[0xac]],
            [["5 Years Ago","Dahlia Hawthorne",0x0d,5,3],[0x8e],0x14],
            [["Location of the Weapon","Bikini",0x10,5],[0xde]],
            [["Proof That Iris Flew","Larry Butz",0x11,5],[0xcf]],
            [["The Real Murderer","Iris",0x14,5,2],[0x95]],
            [["The Battle","Iris",0x14,5,3],[0xa7]],
            [["Sister Iris's Cover-Up","Iris",0x14,5,4],[0xc0]],
            [["Dahlia, how we've missed you","Dahlia Hawthorne",0x14,5,2],[0xb0],0x19],
            [["The Plan","Dahlia Hawthorne",0x15,5,3],[0x92]],
            [["Now that SHE is taken care of...","Dahlia Hawthorne",0x15,5,4],[0x9d]],
            [["At the Inner Temple","Maya Fey",0x16,5,2],[0x9e]],
            [["The Killer","Maya Fey",0x16,5,3],[0xbb]],
            [["After the Incident","Maya Fey",0x16,5,4],[0xd3]],
            [["The Time of the Murder","Maya Fey",0x16,5,5],[0x82],0x1b]]

cheevos6 = [[["What Really Happened","Crime Photo 1",0x00],[0xb6]],
            [["Mask DeMasque's Crimes","Security Camera Photo",0x03],[0x95]],
            [["The Mirror","Crime Photo",0x0a],[0xa2]],
            [["Running from the Crime","Dusky Bridge Map",0x0c],[0xb0],0x10],
            [["Moving the Body","Larry's Sketch",0x14],[0x97],0x19]]

cheevos7 = [["Embracing the cause","Ron DeLite",0x06,0x94,0x03],
            ["It's delicious, try it","Maggey Byrde",0x0b,0x8d,0x03],
            ["Profile of a Friend","Franziska von Karma",0x16,0x86,0x05]]

cheevos8 = [["Deductions from a Master",25,0x01],
            ["Something to Remember",25,0x06],
            ["Fighting Fire With Fire",25,0x0b],
            ["Who Terry Fawles Saw",25,0x0d,0x6e],
            ["Tears Of Blood",25,0x16]]

//cheevos8 = [["Plant Lives Mater","",0x9c,0x01]]

function regions(func,pass) => any_of(["JP","US","EU","FD","EI"],y=>func(y,pass))

function itemCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == 0
    && gameLocation[0](game[lang]+gameLocation[1]) == 0 && bttmEvidence[0](bttm[lang]+bttmEvidence[1]) == i
    && bttmRecord[0](bttm[lang]+bttmRecord[1]) == 0 && __ornext(bttmType[0](bttm[lang]+bttmType[1]) == 0x12
    || bttmType[0](bttm[lang]+bttmType[1]) == 0x1a)

function lockCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && gameLocation[0](game[lang]+gameLocation[1]) == i[1] && gameState[0](game[lang]+gameState[1]) == 0x04
    && gameSubState[0](game[lang]+gameSubState[1]) == 0x0b && gameFrame[0](game[lang]+gameFrame[1]) == 0x07
    && prev(gameSubType[0](game[lang]+gameSubType[1])) == 0x01 && gameSubType[0](game[lang]+gameSubType[1]) == 0x03

function evntCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && evntCall[0](evnt[lang]+evntCall[1]) == i[2] && prev(evntCur[0](evnt[lang]+evntCur[1])) != 0
    && all_of(i[1], y=>prev(evntCur[0](evnt[lang]+evntCur[1])) != y)
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

function chpNxt(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i
    && gameState[0](game[lang]+gameState[1]) == 0x03 && gameSubState[0](game[lang]+gameSubState[1]) == 0x01
    && gameSubType[0](game[lang]+gameSubType[1]) == 0xff

function chpEnd(lang,i) => code(lang) && gameState[0](game[lang]+gameState[1]) == 0x03
    && gameSubState[0](game[lang]+gameSubState[1]) == 0x01 && gameSubType[0](game[lang]+gameSubType[1]) == i

function chpFin(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && prev(bgCur[0](bg[lang]+bgCur[1])) == i[1] && bgCur[0](bg[lang]+bgCur[1]) != i[1]

function chpFinPrev(lang,i) => code(lang) && prev(bgPrev[0](bg[lang]+bgPrev[1])) == i
    && bgPrev[0](bg[lang]+bgPrev[1]) != i

function chpFinHP(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == i[0]
    && prev(bgCur[0](bg[lang]+bgCur[1])) != i[1] && bgCur[0](bg[lang]+bgCur[1]) == i[1]
    && gameHP[0](game[lang]+gameHP[1]) == 0x50

function itemReceive(lang,id) => code(lang) && prev(bttmType[0](bttm[lang]+bttmType[1])) != 0x14
    && bttmType[0](bttm[lang]+bttmType[1]) == 0x14 && gameEvidence[0](game[lang]+gameEvidence[1]) == id

function answ(lang,ids) => unless(!code(lang)) && never(gameState[0](game[lang]+gameState[1]) == 0x01)
    && all_of(ids, y=>once(prev(evntCur[0](evnt[lang]+evntCur[1])) == y && evntCur[0](evnt[lang]+evntCur[1]) != y))

for i in range(0,length(location)-1) lclookup[i] = location[i]

for i in range(0,0x16) {
    ord = [0,2,7,12,14,23]
    sub = [[1,1],[0,1,0,1,1],[0,1,0,1,1],[1,1],[0,0,1,1,0,0,1,1,1]]
    for j in range(0,4) {
        n = ord[j]
        r = i-1
        if (i >= n && i < ord[j+1]) {
            eplookup[i] = j+1
            if (j == 0 || j == 3) chlookup[i] = "Mia"
            else {
                if (any_of([0x0f,0x10,0x11],y=>i == y)) chlookup[i] = "Edgeworth"
                else chlookup[i] = "Phoenix"
            }
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

for i in range(0,4) {
    if (i < 4) log = regions(chpEnd,i+1)
    else log = regions(chpFin,[cheevos[i][2],cheevos[i][3]])
    if (i < 4) tp = "progression"
    else tp = "win_condition"
    achievement(
        title = cheevos[i][0], points = 10, type = tp,
        description = format("[Episode {0}] Solve the murder of {1}",i+1,cheevos[i][1]),
        trigger = log
    )
}

base = 0
for i in range(0,0x15) {
    if (dtlookup[i] > 1) {
        if (tplookup[i-1] != tplookup[i]) { 
            if (i == 0x0f || i == 0x10 || i == 0x1c || i == 0x1f) p = 3
            else p = 2
            achievement(
                title = cheevos2[base], points = p, type = "progression",
                description = format("[Episode {0}] Begin the {1} on Day {2}!",eplookup[i],tplookup[i],dtlookup[i]),
                trigger = regions(chpNxt,i-1)
            )
            base = base+1
        }
    }
}

for i in cheevos3 {
    cr = i[0]
    achievement(
        title = cr[0], points = 3, type = "progression",
        description = format("[Episode {0}] {1}",cr[2],cr[1]),
        trigger = regions(itemReceive,i[1])
    )
}

for i in cheevos4 {
    achievement(
        title = format("{0}'s Psyche-Locks",i[0]), points = 5, type = "progression", id = i[3],
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
    if (length(i) == 3) l = i[2]
    else l = 0
    achievement(
        title = cr[0], points = cr[3], type = "progression",
        description = format("[Episode {0}] {1}",eplookup[cr[2]],ds),
        trigger = regions(evntCheck,[cr[2],i[1],l])
    )
}

for i in cheevos6 {
    cr = i[0]
    if (length(i) == 3) l = i[2]
    else l = 0
    achievement(
        title = cr[0], points = 5, type = "progression",
        description = format("[Episode {0}] Point to the right spot in {1}",eplookup[cr[2]],cr[1]),
        trigger = regions(evntCheck,[cr[2],i[1],l])
    )
}

for i in cheevos7 {
    achievement(
        title = i[0], points = 1, type = "missable",
        description = format("[Episode {0}] Give something special to {1} at the end of the case",eplookup[i[2]],i[1]),
        trigger = regions(evntCheck,[i[2],[i[3]],i[4]])
    )
}

for i in cheevos8 {
    if (length(i) == 4) log = regions(chpFinHP,[i[2],i[3]])
    else log = regions(verdictHP,i[2])
    achievement(
        title = i[0], points = i[1], type="missable",
        description = format("[Episode {0}] Complete the case without being penalized!",eplookup[i[2]]),
        trigger = log
    )
}

/*for i in cheevos7 {
    achievement(
        title = i[0], points = 2,
        description = format("[Episode {0}] {1}",eplookup[i[3]],i[1]),
        trigger = regions(dialogCheck,[i[3],i[2]])
    )
}

