// Phoenix Wright: Ace Attorney
// #ID = 12747

function code(i) => ascii_string_equals(0x3ffe0c, codes[i])
codes = {
    "JP": "AGYJ",
    "US": "AGYE",
    "EU": "AGYX",
    "FR": "AGYP",
}

lclookup = {}
eplookup = {}
dtlookup = {}
tplookup = {}
tplookup2 = {}

game = {
    "JP": 0x000ceda8,
    "US": 0x000ceb08,
    "EU": 0x000cdbb0,
    "FR": 0x000d0c08,
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
gameSpray = [byte,0x53]
gameLocation = [byte,0x68]
gameChapter = [byte,0x69]
gameEpisode = [byte,0x6a]
gameHP = [byte,0x6b]

evnt = {
    "JP": 0x000cf754,
    "US": 0x000cf4b4,
    "EU": 0x000cf21c,
    "FR": 0x000d2274,
}

evntCur = [word,0x4a]
evntNext = [word,0x4c]
evntLinked = [word,0x58]

prog = {
    "JP": 0x000ce230,
    "US": 0x000cdf90,
    "EU": 0x000cd034,
    "FR": 0x000d0090,
}

progEvidence = [byte,0x08]
progProfiles = [byte,0x09]

bttm = {
    "JP": 0x000d4760,
    "US": 0x000d44c0,
    "EU": 0x000d36e8,
    "FR": 0x000d6740,
}

bttmType = [byte,0x00]
bttmEvidence = [byte,0x06]
bttmProfile = [byte,0x09]
bttmRecord = [byte,0x0c]

bg = {
    "JP": 0x000ce300,
    "US": 0x000ce060,
    "EU": 0x000cd104,
    "FR": 0x000d0160,
}

bgCur = [dword,0x0c]
bgPrev = [dword,0x10]

location = ["Fey & Co. Law Offices - Reception","Fey & Co. Law Offices - Office",
            "Detention Center","Grossberg Law Offices","Bluecorp","Gatewater Hotel",
            "Fey & Co. Law Offices","Studio - Main Gate","Employee Area","Dressing Room",
            "Outside Studio One","Inside Studio One","Outside Studio Two","Trailer",
            "Criminal Affairs Department","Records Room","Gourd Lake Entrance",
            "Gourd Lake Public Beach","Gourd Lake Woods","Boat Rental Shop",
            "Caretaker's Shack","Underground Parking Lot","Underground Parking Lot",
            "High Prosecutor's Office","Police Department Entrance","Chief's Office",
            "Security Guard Office","Evidence Room"]

cheevos = [["Thinking It Through","Cindy Stone!"],["Mia's Legacy","Mia Fey!"],
           ["The Evil Magistrate's Demise","Jack Hammer!"],
           ["Ghosts of the Past","Robert Hammond and the unsolved mystery of the DL-6 Incident!",0x68],
           ["A New Beginning","Bruce Goodman and the unsolved mystery of the SL-9 Incident!",0xcc]]

cheevos2 = ["In the Big Leagues Now","Unraveling the Web","Lay Your Life on the Line",
            "Shaky Start","Buying Time","A Stacked Deck","Hammer Time","Samurai Showdown",
            "Boxed In","Unsolved Mysteries","Going All In","Manhunt","Wheel of Karma",
            "Familiar Feelings","Looking for Bloody Hints","Police Problems",
            "The Final Stretch","Ending It All for Good"]

cheevos3 = [[["Like Clockwork","Find \"The Thinker\"",2],0x1c],
            [["Written in Blood","Find the Receipt",2],0x1e],
            [["A Helpful Reminder","Receive Maya's Memo",2],0x19],
            [["Girlie Phone","Fast-talk your way into obtaining Maya's Cell Phone",2],0x1a],
            [["Tippity-Tappity","Discover a suspicious Wiretap",2],0x20],
            [["Memo from Murder Manor","Receive the Bellboy's Affadavit",2],0x21],
            [["Mia's Trump Card","Discover the Newspaper Clipping",2],0x24],
            [["50 Cents","Obtain the Guidemap of Global Studios",3],0x36],
            [["Samurai Snooping","Discover an employee Cardkey",3],0x33],
            [["Mysterious Flask","Obtain the Empty Bottle",3],0x39],
            [["Borrowing Trouble","Borrow the Trailer Key",3],0x3a],
            [["Another Talking Clock!?","Enter Mr. Monkey's Head into evidence",3],0x3d],
            [["Yu-Gi-Noh","Receive the photo book titled \"The Steel Samurai: Path to Glory\"",3],0x40],
            [["Prince of Tennis","Receive the Five-Year-Old Photo",3],0x44],
            [["Popping Off","Find a Popper",4],0x51],
            [["The Power of German Engineering","Enter Lotta's Camera into evidence",4],0x55],
            [["Beachcombing","Borrow a Metal Detector",4],0x64],
            [["International Air","Discover an Air Tank",4],0x61],
            [["Lorekeeper","Enter Polly the Parrot into evidence",4],0x65],
            [["Shocking Discovery","Enter the DL-6 Bullet into evidence",4],0x6a],
            [["Positively Scientific","Retrieve Bruce Goodman's ID from his wallet",5],0x7e],
            [["Reliable Precision","Enter Edgeworth's Parking Stub into evidence",5],0x80],
            [["Guardian of Justice","Enter the Blue Badger into evidence",5],0x92],
            [["New-Fangled Ring-Tunes","Discover a dropped Cell Phone",5],0x86],
            [["On the Trail","Receive a Steak Lunch",5],0x91],
            [["Putting the Pieces Together","Enter the Unstable Jar into evidence",5,4],0x9b],
            [["Getting Your Hands Dirty","Enter Marshall's Prints into evidence",5,3],0x9f],
            [["Lucky Number Seven","Finish assembling the Unstable Jar",5,5],0x9c]]

cheevos4 = [[["Detective Detective Detective","Detective Gumshoe",0x02,5],[0xa2]],
            [["The Lady of the Lie","April May",0x02,5],[0xd1]],
            [["At Your Service","the Bellboy",0x02,5,0],[0x110]],
            [["A View to a Kill","Redd White",0x04,4,2],[0xa3]],
            [["Dodge and Swerve","Redd White",0x04,4,3],[0xb4]],
            [["Giving Chase","Redd White",0x04,4,4],[0xca]],
            [["Spirited Defense","Redd White",0x04,5,5],[0xe0]],
            [["Full of Hot Air","Wendy Oldbag",0x06,5],[0xdb]],
            [["R00d D00d","Sal Manella",0x08,5],[0xa4]],
            [["Number One Samurai Fan","Cody Hackins",0x08,5],[0xdb]],
            [["In the Van","Dee Vasquez",0x0a,4,2],[0x8e]],
            [["Falling Star","Dee Vasquez",0x0a,4,3],[0xcb]],
            [["Forensic Focus","Detective Gumshoe",0x0c,5,0],[0x90]],
            [["Sure as a Country Gal","Lotta Hart",0x0c,5],[0xe1]],
            [["Dead Certain","the boat shop caretaker",0x0e,5,0],[0x94]],
            [["Christmas Eve Blues","Larry Butz",0x0e,5],[0xbd]],
            [["Evasive Manuevers","the boat shop caretaker",0x10,5,0],[0xbd]],
            [["Hello! Hello!","Polly",0x10,4,1],[0x9f]],
            [["The Long Nightmare","Miles Edgeworth",0x10,5],[0xcb,0xc0]],
            [["If the Glove Fits","Angel Starr",0x13,4,2],[0x9a]],
            [["Coughing Up Blood","Angel Starr",0x13,4,3],[0xab]],
            [["Not Such a Starr Witness","Angel Starr",0x14,4,4],[0x99]],
            [["Blood on the Asphalt","Angel Starr",0x14,4,5],[0xbd]],
            [["Swimming with the Sharks","Damon Gant",0x15,5,0],[0xaa]],
            [["Do Unto Others","Mike Meekins",0x19,5],[0xb8]],
            [["A Desperado's Soul","Jake Marshall",0x1a,5],[0xba]],
            [["Flash of Insight","Ema Skye",0x1f,5],[0xbd]],
            [["Me, Myself, and I","Damon Gant",0x20,10],[0xbb]],
            [["Setting the Scene","Lana Skye",0x21,5,2],[0x9f]],
            [["Rising Action","Lana Skye",0x21,5,3],[0xab]],
            [["Climax","Damon Gant",0x21,5,6],[0xba]]]

cheevos5 = [["Improvised Interrogation",10,0x00],
            ["Cold Blood",10,0x04],
            ["A Hero to Children Everywhere",10,0x0a],
            ["Perfect Record",25,0x10],
            ["Reunited Once Again",25,0x21]]

cheevos6 = [["Plant Lives Mater","",0x9c,0x01]]

function regions(func,pass) => any_of(["JP","US","EU","FR"],y=>func(y,pass))

function itemCheck(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == 0 && gameLocation[0](game[lang]+gameLocation[1]) == 0
    && bttmEvidence[0](bttm[lang]+bttmEvidence[1]) == i && bttmRecord[0](bttm[lang]+bttmRecord[1]) == 0
    && __ornext(bttmType[0](bttm[lang]+bttmType[1]) == 0x12 || bttmType[0](bttm[lang]+bttmType[1]) == 0x1a)

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
    && gameHP[0](game[lang]+gameHP[1]) == 5

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

function blood(lang,i) => code(lang) && gameChapter[0](game[lang]+gameChapter[1]) == 0x18
    && gameLocation[0](game[lang]+gameLocation[1]) == 0x1a && prev(gameSpray[0](game[lang]+gameSpray[1])) == 0x08
    && gameSpray[0](game[lang]+gameSpray[1]) == 0x01

function answ(lang,ids) => unless(!code(lang)) && never(gameState[0](game[lang]+gameState[1]) == 0x01)
    && all_of(ids, y=>once(prev(evntCur[0](evnt[lang]+evntCur[1])) == y && evntCur[0](evnt[lang]+evntCur[1]) != y))

for i in range(0,length(location)-1) lclookup[i] = location[i]

for i in range(0,0x22) {
    ord = [0,1,5,11,17,35]
    sub = [[1],[0,1,0,1],[0,1,0,1,0,1],[0,1,0,1,0,1],[0,0,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,1]]
    for j in range(0,4) {
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

for i in range(0,1) {
    cheevo = [["Pride in Your Profession","your Attorney's Badge"],["Meticulous Preparation","Cindy's Autopsy Report"]]
    achievement(
        title = cheevo[i][0], points = 1,
        description = format("[Episode 1] Check {0}",cheevo[i][1]),
        trigger = regions(itemCheck,i)
    ) 
}

for i in range(0,4) {
    if (i < 3) log = regions(chpEnd,i+1)
    else if (i == 3) log = regions(chpFin,cheevos[i][2])
    else log = regions(chpObj,i)
    if (i > 0) p = 10
    else p = 5
    if (i < 4) tp = "progression"
    else tp = "win_condition"
    achievement(
        title = cheevos[i][0], points = p, type = tp,
        description = format("[Episode {0}] Solve the murder of {1}",i+1,cheevos[i][1]),
        trigger = log
    )
    if (i == 4)
    achievement(
        title = "Keeping You In Memory", points = 1, type = "missable",
        description = "[Episode 5] Find a hidden letter with a special photo at the end of the credits",
        trigger = regions(chpFin,cheevos[i][2])
    )
}

base = 0
for i in range(0,0x22) {
    if (dtlookup[i] > 1) {
        if (tplookup[i-1] != tplookup[i]) { 
            if (i == 0x0f || i == 0x10 || i == 0x1c || i == 0x1f) p = 3
            else p = 2
            achievement(
                title = cheevos2[base], points = p, type = "progression",
                description = format("[Episode {0}] Begin the {1} on Day {2}!",eplookup[i],tplookup[i],dtlookup[i]),
                trigger = regions(chpNXT,i-1)
            )
            base = base+1
        }
    }
}

for i in cheevos3 {
    cr = i[0]
    if (length(cr) == 4) p = cr[3]
    else p = 2
    achievement(
        title = cr[0], points = p, type = "progression",
        description = format("[Episode {0}] {1}",cr[2],cr[1]),
        trigger = regions(itemReceive,i[1])
    )
}

for i in cheevos4 {
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
    else {
        if (cr[1] == "Miles Edgeworth") ds = des1()
        else ds = des1("s")
    }
    achievement(
        title = cr[0], points = cr[3], type = "progression",
        description = format("[Episode {0}] {1}",eplookup[cr[2]],ds),
        trigger = regions(evntCheck,[cr[2],i[1]])
    )
}

for i in cheevos5 {
    achievement(
        title = i[0], points = i[1], type="missable",
        description = format("[Episode {0}] Complete the case without being penalized!",eplookup[i[2]]),
        trigger = regions(verdictHP,i[2])
    )
}

for i in cheevos6 {
    achievement(
        title = i[0], points = 2,
        description = format("[Episode {0}] {1}",eplookup[i[3]],i[1]),
        trigger = regions(dialogCheck,[i[3],i[2]])
    )
}

achievement(
    title = "Crown of Thorns", points = 4, type = "missable",
    description = "[Episode 5] Discover a bloodstain that tells a tale in the Security Guard Office",
    trigger = regions(blood,0)
)

achievement(
    title = "Underprepared Battle", points = 1, type = "missable",
    description = "[Episode 1] Give the Judge all the wrong answers when he is testing you",
    trigger = regions(answ,[0x84,0x85,0x88,0x89,0x8c,0x8d])
)

