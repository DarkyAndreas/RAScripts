// Shadow the Hedgehog [Subset - 326 Endings]
// #ID = 22070

bits = []
mode = byte(0x007d1398)
endingStart = 0x009bd218
function byteCalc(i) => endingStart+i/8

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
        title = format("{0}",endings[i]), points = 10, id = 277911+i,
        description = format("Complete the Ending: {0}",endings[i]),
        trigger = mode == 0x01 && prev(current) == 0 && current == 1
    )
    array_push(bits, current)
}

for i in range(1,5) {
    titles = ["Lost in the Pain","The Lust for Blood","Smelling Their Weakness","Choosing the Right Way","A Clear Picture"]
    current = sum_of(bits,y=>y)
    percent = 65*i
    calc = percent+percent/325
    achievement(
        title = titles[i-1], points = 10,
        description = format("Complete {0}% of all 326 Endings",20*i),
        trigger = mode == 0x01 && prev(current) < calc && current == calc
    )
}
