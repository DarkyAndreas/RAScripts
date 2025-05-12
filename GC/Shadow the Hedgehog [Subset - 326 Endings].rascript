// Shadow the Hedgehog [Subset - 326 Endings]
// #ID = 33041

bits = []
stage = dword_be(0x0057e808)
time = float_be(0x0057e7f4)*60
gmode = dword_be(0x005ed220)
endingStart = 0x005790eb
function byteCalc(i) => endingStart-i/8+8*(i/32)
function score(i=0) => dword_be(0x005777d4+i)

endings = [
    "Punishment, Thy Name is Ruin","Prologue to World Conquest",
    "The March to a Darker World","The Ultimate Ego",
    "Purification via Ruination","Apogee of Darkness",
    "True Soldier of Destruction","Believe in Yourself",

    "An Android's Determination","For Machine, By Machine...",
    "Revenge at Last","Ego's Awakening","Destruction and Scorn",
    "The Last Remaining Purpose","The Nightmare's Insulation",
    "The Nightmare's Sublimation",

    "The Loner's Choice","Subjugation in Black","Replica's Depression",
    "Machine, Machine","Disciple from the Darkness","Beloved Clone",
    "Revenge Upon the Doctor","The Ultimate Replica",

    "Sanction's Demise","Along With My Home",
    "The Cleansing of Darkness","Birth of a God",
    "The Last Soldier's Grim Fate","Isolation and Solitude",
    "Archimedes and the Tortoise","Where Is My Happiness?",

    "Seduced By Taste of Blood","A Machine Made for War",
    "Original Definition","Machine Paradise","Last Will and Testament",
    "Enveloped in Solitude","Parricidal Savior","Copy of a Savior",

    "Excess of Intellect","Crystallization of Intellect",
    "The Ultimate Confrontation","Miracle of Love","The World's Demise",
    "The Ultimate Power","Dyed in Lovely Darkness...",
    "Vainglory or Abandonment?",

    "Messenger of Ruination","Standing at the Summit",
    "Controller from the Capsule","Beyond One's Own Power...",
    "A Clone's Determination","Machine Utopia","A Toast to the Ruler",
    "Answer from the Black Comet",

    "Transcendentalism","Imperialism","The Weight of One's Crimes",
    "Imprisoned by the Past...","The Ultimate World Conquest",
    "Black Angel","Under Darkness' Control","To Love Oneself",

    "Revenge and Determination","Birth of the Robot Emperor",
    "Shadow, the Black Android","A Solitary Android",
    "Over the Original","Machine Sunshine","Life is Guilty",
    "Fallen Angel of Despair",

    "An Eternal Rival...","This is Just the Beginning",
    "Crystal of Tragic Knowledge","Shadow's Second Death...?",
    "The Legend of Shadow","Power of Love","Deep Black",
    "Walk My Way",

    "This is Shadow's Way of Life","A Monarch's Style",
    "In the Gap of Sadness","To Be Ignorant of the Past",
    "At Vengeance's End","Machine Boys","Reborn Along with Sorrow",
    "With a Fate of Self-Denial",

    "I Am Shadow","Shining Within Memory...",
    "The Rise and Fall of the ARK","Requiem for a Fallen Angel",
    "Ultimate Shadow","For Love's Sake",
    "A Heart Awoken from Darkness","Destruction From Perfection",

    "Darkness' Strongest Soldier","Severed Chains",
    "Retribution Against Humanity","To Be Known as 'Ultimate'",
    "Dark Warrior's Advent","Arriving at the Ego",
    "Determination of a Fake","Path to the Machine Empire",

    "Demise Wrought by Tragedy","Turning Sorrow Into Strength",
    "The Liberated Soldier","Stupefaction's End","Humanity's Folly",
    "Surpassing All Else","Soldier of Grief","Reclaimed Heart",

    "Fighting Spirit of Steel","Machine Soldier Uprising",
    "The Devil Born From Betrayal","Beyond the Truth of Impact",
    "The Immortal Android","The New, Coldhearted Empire",
    "A Singular Atonement","Spawn of the Devil",

    "Black Doom's Scheme","Subjugating Heaven and Earth",
    "Road of the Dark Soldier","Dark Finale",
    "Realization While On Board","Birth of a Champion",
    "With the Black Arms","The Road to Self-Assurance",

    "The Pursuit of Dr. Eggman","Surpassing His Creator",
    "ARK, Colony of Pathos","Perfection Lost to Darkness",
    "A New Challenge","The Machines' Coup d'Etat",
    "A Vow for the Victims","The Truth of Sadness",

    "The Destined Sonic Showdown","The Black Hero's Rebirth",
    "Truth, Thy Name is Vengeance","Searching for 'Ultimate'",
    "Reborn Hatred for Humanity","A Future Taken from the Past",
    "The Devils' Victory Song","One to Succeed a God",

    "Disappointed in Humanity","Faith Taken from Solitude",
    "Planted Memories","To Unite Humanity","Isolated Soldier Shadow",
    "Answer Derived from Truth","A Fake's Disposition",
    "A New World Without Betrayal",

    "Together With Maria...","The Tragedy's Conclusion",
    "The Day That Hope Died","Dark Destroyer","Diabolical Power",
    "For Freedom","At Least, Be Like Shadow...","Seeking a Silent Paradise",

    "The Lion's Awakening","Identity","An Android's Rebellion",
    "A New Empire's Beginning","Bullets from Tears","Journey to Nihility",
    "Shadow Surpassing Shadow","Dr. Eggman's Miscalculation",

    "Along with the ARK","Requiem for the Heavens","Sonic Dethroned!",
    "Justice Reborn in Space","Steel Ruler","For the Sake of the Self",
    "Farewell to the Past","Steel Paradise",

    "The Guardian With No Past","The Ultimate Atonement",
    "A Fake's Aspiration","Machine World","Twilight Ark",
    "Compensation for a Miracle","The Strongest Hedgehog",
    "The Ultimate Punisher",

    "Voyage of Reminiscence","Wandering's End","The Ultimate Proof",
    "Punisher of Love","Messenger from the Darkness","The New Ruler",
    "Dark Soldier","The Road of Light",

    "The Machine-Laden Kingdom","New Determination",
    "Birth of the Dark Soldier","A New Journey",
    "The Android's Opposition","Founding of the Robot Nation",
    "The Eternal Protector","The Sinner's Repose",

    "A Hero's Resolution","The Weapons' Empire","Perpetual Voyage",
    "A Hero's Atonement","Dark Hegemony","And the Dream Continues",
    "Fighter for Darkness","The Path I Believed In",

    "Determination's Daybreak","Machine Kingdom at Dawn",
    "Sinful Protector","At the End of the Journey",
    "Surmounting the Nightmare","Dawn of the Machines",
    "Wandering for Eternity","At Vagrancy's End",

    "The Summit of Power","Under the Name of Love",
    "Eternally Drifting","The Importance of Truth",
    "The Beginning of Judgment","This World's Guardian",
    "Light Born from Darkness","The Order of Steel",

    "Solitary Journey","The Fall Home","Sovereign of All Creation",
    "I Shall Be the One to Judge","Gone With the Darkness",
    "The Ultimate Choice","I Am the Strongest!","Justice's Awakening",

    "Prelude to Ruination","A World United by Darkness",
    "The Pulse of Darkness","To Just Be Myself",
    "Punishment in Jet Black","The Ruler's First Cry",
    "Darkness' Conspiracy","The Faint Light of Tomorrow",

    "Time of Departure","Rise of the Machine Kingdom",
    "Despair's Quickening","The Beginning",
    "Setting Out in the Morning","The Weapons' Dawn",
    "Pure Ark","Making Up For It in the End",

    "The Coming of the Dark Time","The Throne of God",
    "God of War","Howl of Solitude","Proof of Existence",
    "Ardent Vow","A Deal With the Devil","A Reason to Live",

    "Induplicable Thoughts","Steel Struck With Flame",
    "A Heart Bound to the ARK","Tears Shed by the Stars",
    "Imitation Complex","Steel Combat Boots",
    "Protector of the Ashen Moon","A Demon Drifting",

    "The Ultimate Pride","I Know the Will of Heaven",
    "Ego Dyed in Black","Isolation By Choice",
    "Faith Without Falsehood","Machine Empire",
    "The Eternally-Closed Door","The Sealed-Away Ark of Sin",

    "Silver Emergence","Pulsating Supercurrent",
    "The Reason I Was Born","The Dark Part of the Galaxy",
    "The View From Atop the World","Maria's Testament",
    "A Genius Scientist's Lineage","Distorted Truth",

    "A Counterfeit Existence","Beloved Memories",
    "Birth of a Devil","A Dark Myth's Beginnings",
    "Black Thunder","The Torn-Away Necklace",
    "A Soul Sheltered by Iron","Steel Nation's Decree",

    "Coronation of Darkness","Opened Eyes","The Doctor's Lie",
    "The Uninvited Successor","The Closed Pandora's Box",
    "A Heart Bound by Sin","Courage from Turning Gears",
    "Fullmetal Prince",

    "Time's Watchman","Galaxy's Requiem",
    "Charm of the Chaos Emeralds","Promise of a Far-Off Day",
    "The Grim Reaper's Horn","A Flame Extinguished by Fate",
    "Shouting at the Morning Sun","Iron Ambition",

    "Sleeping on Hallowed Ground","Explanation of the Truth",
    "An Android's Dream","Metallic Quickening",
    "Funeral Procession in Space","Lost to the Universe's Abyss",
    "Destiny for Two","The Spun Threads of Fate",

    "Ark of the Heavens","Ghost of the ARK","A Pair of Shooting Stars",
    "The One Who Maria Entrusted","A.I.'s Enlightenment",
    "A Dying Empire's Cry","Moon of Atonement",
    "Tear-Soaked Hometown",

    "Sparks on the Horizon","A Use for a Saved Life",
    "Coffin of Memories","The Self-Imposed Seal",
    "Pretense in the Mirror","A Missive from 50 Years Ago",
]

for i in range(0,325) {
    current = bit(i%8,byteCalc(i))
    achievement(
        title = format("{0}",endings[i]), points = 10,
        description = format("Complete the Ending: {0}",endings[i]),
        trigger = gmode == 0x01 && prev(current) == 0 && current == 1
    )
    array_push(bits, current)
}

for i in range(1,5) {
    titles = ["Regaining Memories","Murder on His Mind","Master of the Weapon","The Last Pieces","The Full Story"]
    current = sum_of(bits,y=>y)
    percent = 65*i
    calc = percent+percent/325
    achievement(
        title = titles[i-1], points = 10,
        description = format("Complete {0}% of all 326 Endings",20*i),
        trigger = gmode == 0x01 && prev(current) < calc && current == calc
    )
}

//Rich Presence
stagelookup = {}
bosslookup = {}
typelookup = {}

stages = {
    0: ["Westopolis","Digital Circuit","Glyphic Canyon","Lethal Highway","Cryptic Castle","Prison Island","Circus Park",
        "Central City","The Doom","Sky Troops","Mad Matrix","Death Ruins","The ARK","Air Fleet","Iron Jungle","Space Gadget",
        "Lost Impact","GUN Fortress","Black Comet","Lava Shelter","Cosmic Fall","Final Haunt","The Last Way"],
    1: [0x64,0xc8,0xc9,0xca,0x12c,0x12d,0x12e,0x190,0x191,0x192,0x193,0x194,
        0x1f4,0x1f5,0x1f6,0x1f7,0x1f8,0x258,0x259,0x25a,0x25b,0x25c,0x2bc],
    2: [3,1,3,1,3,3,3,1,3,3,3,1,2,3,3,3,0,1,1,1,1,1,3]
}

boss = {
    0: ["Black Bull","Egg Breaker","Heavy Dog","Egg Breaker","Black Bull","Blue Falcon","Egg Breaker","Black Doom","Sonic and Diablon",
        "Egg Dealer","Sonic and Diablon","Egg Dealer","Egg Dealer","Black Doom","Black Doom","Sonic and Diablon","Devil Doom"],
    1: ["Lethal Highway","Cryptic Castle","The Doom","Mad Matrix","Death Ruins","The ARK","Iron Jungle","GUN Fortress","GUN Fortress",
        "Black Comet","Black Comet","Lava Shelter","Cosmic Fall","Cosmic Fall","Final Haunt","Final Haunt"],
    2: [0xd2,0x136,0x19a,0x19b,0x19c,0x1fe,0x1ff,0x262,0x263,0x264,0x265,0x266,0x267,0x268,0x269,0x26a,0x2c6],
}

modelookup = {
    0x00: "Select",
    0x01: "Story",
    0x06: "Expert",
}

for i in range(0, length(stages[0])-1) {
    stagelookup[stages[1][i]] = stages[0][i]
    typelookup[stages[1][i]] = "rushing through"
}

for i in range(0, length(boss[0])-1) {
    if (i < length(boss[0])-1) stagelookup[boss[2][i]] = format("{0} in {1}",boss[0][i],boss[1][i])
    else stagelookup[boss[2][i]] = boss[0][i]
    typelookup[boss[2][i]] = "fighting against"
}

rich_presence_conditional_display(gmode == 4, "Shadow is currently in a duell against another player")
rich_presence_conditional_display(gmode == 7, "Shadow is currently checking out the library")

rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && stage == ~0,
    "Shadow is on his way to the next stage | {0} Mode | {1}/{2} Endings",
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Value",
       sum_of(bits,y=>y), "VALUE"), length(bits))

rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && __ornext(any_of(stages[1], y=>stage == y) || any_of(boss[2], y=>stage == y)),
    "Shadow is currently {0} {1} | {2} Mode | Time: {3} | Score: {4} | {5}/{6} Endings",
    rich_presence_lookup("type", stage, typelookup), rich_presence_lookup("stage", stage, stagelookup),
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Frames", time, "FRAMES"),
    rich_presence_value("Value", score(-4)+score()+score(4), "VALUE"), rich_presence_value("Value",
sum_of(bits,y=>y), "VALUE"), length(bits))

rich_presence_conditional_display(__ornext(gmode < 2 || gmode == 6)
    && all_of(stages[1], y=>stage != y) && all_of(boss[2], y=>stage != y),
    "Shadow is currently viewing a cutscene | {0} Mode | {1}/{2} Endings",
    rich_presence_lookup("mode", gmode, modelookup), rich_presence_value("Value",
       sum_of(bits,y=>y), "VALUE"), length(bits))

rich_presence_display("Shadow is currently taking a breather in the main menu\n//RP by Darky")

