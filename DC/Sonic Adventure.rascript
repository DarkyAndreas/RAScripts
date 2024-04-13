// Sonic Adventure 2
// #ID = 3417

story = byte(0x26a200)
state = byte(0x24EE60)
stage = byte(0x24ee64)
stageclear = byte(0x0db247)

stageNumb = {
    0: [13,16,9,10,3,5,17,7,70,23,28,25,24,32,22,30],
    1: [11,18,21,14,26,27,12,8,4,70,6,44,43,40],
    2: [34]
}

stageName = {
    0: ["City Escape","Wild Canyon","Prison Lane","Metal Harbor","Green Forest","Pumpkin Hill",
        "Mission Street","Aquatic Mine","Route 101","Hidden Base","Pyramid Cave","Death Chamber",
        "Eternal Engine","Meteor Herd","Crazy Gadget","Final Rush"],
    1: ["Iron Gate","Dry Lagoon","Sand Ocean","Radical Highway","Egg Quarters","Lost Colony",
        "Weapons Bed","Security Hall","White Jungle","Route 280","Sky Rail","Mad Space","Cosmic Wall",
        "Final Chase"],
    2: ["Cannon's Core"]
}

stageDesc = {
    0: ["Escape from the military pursuit.","Find the 3 pieces of the Master Emerald.",
        "Find the core of the Prison.","Escape from the military base.",
        "Escape from the Island in 8 minutes.","Find 3 pieces of the Master Emerald.",
        "Elude enemy pursuit.","Find the 3 pieces of the Master Emerald.",
        "Chase the President's limousine.","Find the entrance into Hidden Base.",
        "Infiltrate Eggman's Hidden Base.","Find the 3 Gate keys.",
        "Destroy the colony's power generator.","Find 3 pieces of the Master Emerald.",
        "Hurry and find Eggman.","Hurry and find the point of the Cannon."],
    1: ["Get to the core of the military base!","Find 3 pieces of the Master Emerald!",
        "Return to Hidden Base!","Break through the besieging military!","Find the 3 Gate keys!",
        "Find the way to the colony's core!","Rush into the military base!",
        "Steal the 3 Chaos Emeralds in 5 minutes!","Cut through the Jungle in 10 minutes!",
        "Chase the Tornado!","Chase the Tornado!","Find 3 pieces of the Master Emerald!",
        "Get and confront the trespassers!","Hurry to the Eclipse Cannon!"],
    2: ["Get to the core of the colony."]
}

storyName = {
    0: ["I'm Sonic, Sonic The Hedgehog !"],
    1: ["I Told You, I'm the Ultimate!"],
    2: ["Final Story"]
}

storyDesc = {
    0: ["Hero."],
    1: ["Dark"],
    2: ["Last"]
}

storyPoin = {
    0: [10],
    1: [10],
    2: [25]
}

for i in range (0, 2) {
    for j in range (0, length(stageNumb[i])-1) {
        achievement(
            title = format("{0} (copy)", stageName[i][j]), points = 3,
            description = format("{0}", stageDesc[i][j]),
            trigger =  state == 16 && stage == stageNumb[i][j] && story == i+1
                    && prev(stageclear) == 1 && stageclear == 0
        )
    }
}



for i in range (0, 1) {
        achievement(
            title = format("{0} (copy)", storyName[i]), points = storyPoin[i],
            description = format("Complete {0} Story (copy)", storyDesc[i]),
            trigger =  prior(state) == 19 && state == 0 && prior(stage) == 42 && stage == 0 && story == i+1
                    && prev(stageclear) == 0 && stageclear == 1
        )
}

    achievement(
        title = "I'm Sonic, Sonic The Hedgehog ! (copy)", points = 10,
        description = "Complete Hero Story. (copy)",
        trigger = prev(byte(0x26C47E)) == 0 && byte(0x26C47E) == 1 && byte(0x26A1FE) == 43 && byte(0x24EE60) == 0
    )

    achievement(
        title = "I Told You, I'm the Ultimate! (copy)", points = 10,
        description = "Complete Dark Story (copy)",
        trigger = byte(0x26A1FE) == 41 && byte(0x24EE60) == 0 && byte(0x26C47F) == 1 && prev(byte(0x26C47F)) == 0
    )

achievement(
    title = "Final Story (copy)", points = 25,
    description = "Complete Last Story",
    trigger = byte(0x26A1FE) == 7 && byte(0x24EE60) == 0 && prev(byte(0x26A1FE)) == 6 && byte(0x26A200) == 3
)

achievement(
    title = "Green Hill (copy)", points = 3,
    description = "Get through Green Hill.",
    trigger = byte(0x24EE64) == 31 && byte(0x24EE60) == 8
)

achievement(
    title = "City Escape Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26ADB8)) + prev(byte(0x26ADB9)) + prev(byte(0x26ADBA)) + prev(byte(0x26ADBB)) +
               prev(byte(0x26ADBC))) < 25 && (byte(0x26ADB8) + byte(0x26ADB9) + byte(0x26ADBA) + byte(0x26ADBB) +
               byte(0x26ADBC)) == 25 && measured(tally(5, 
                  once(byte(0x26ADB8) == 5), 
                  once(byte(0x26ADB9) == 5), 
                  once(byte(0x26ADBA) == 5), 
                  once(byte(0x26ADBB) == 5), 
                  once(byte(0x26ADBC) == 5)
              )) && byte(0x24EE64) == 13 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Wild Canyon Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AF50)) + prev(byte(0x26AF51)) + prev(byte(0x26AF52)) + prev(byte(0x26AF53)) +
               prev(byte(0x26AF54))) < 25 && (byte(0x26AF50) + byte(0x26AF51) + byte(0x26AF52) + byte(0x26AF53) +
               byte(0x26AF54)) == 25 && measured(tally(5, 
                  once(byte(0x26AF50) == 5), 
                  once(byte(0x26AF51) == 5), 
                  once(byte(0x26AF52) == 5), 
                  once(byte(0x26AF53) == 5), 
                  once(byte(0x26AF54) == 5)
              )) && byte(0x24EE64) == 16 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Prison Lane Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AB98)) + prev(byte(0x26AB99)) + prev(byte(0x26AB9A)) + prev(byte(0x26AB9B)) +
               prev(byte(0x26AB9C))) < 25 && (byte(0x26AB98) + byte(0x26AB99) + byte(0x26AB9A) + byte(0x26AB9B) +
               byte(0x26AB9C)) == 25 && measured(tally(5, 
                  once(byte(0x26AB98) == 5), 
                  once(byte(0x26AB99) == 5), 
                  once(byte(0x26AB9A) == 5), 
                  once(byte(0x26AB9B) == 5), 
                  once(byte(0x26AB9C) == 5)
              )) && byte(0x24EE64) == 9 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Metal Harbor Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AC20)) + prev(byte(0x26AC21)) + prev(byte(0x26AC22)) + prev(byte(0x26AC23)) +
               prev(byte(0x26AC24))) < 25 && (byte(0x26AC20) + byte(0x26AC21) + byte(0x26AC22) + byte(0x26AC23) +
               byte(0x26AC24)) == 25 && measured(tally(5, 
                  once(byte(0x26AC20) == 5), 
                  once(byte(0x26AC21) == 5), 
                  once(byte(0x26AC22) == 5), 
                  once(byte(0x26AC23) == 5), 
                  once(byte(0x26AC24) == 5)
              )) && byte(0x24EE64) == 10 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Green Forest Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26A868)) + prev(byte(0x26A869)) + prev(byte(0x26A86A)) + prev(byte(0x26A86B)) +
               prev(byte(0x26A86C))) < 25 && (byte(0x26A868) + byte(0x26A869) + byte(0x26A86A) + byte(0x26A86B) +
               byte(0x26A86C)) == 25 && measured(tally(5, 
                  once(byte(0x26A868) == 5), 
                  once(byte(0x26A869) == 5), 
                  once(byte(0x26A86A) == 5), 
                  once(byte(0x26A86B) == 5), 
                  once(byte(0x26A86C) == 5)
              )) && byte(0x24EE64) == 3 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Pumpkin Hill Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26A978)) + prev(byte(0x26A979)) + prev(byte(0x26A97A)) + prev(byte(0x26A97B)) +
               prev(byte(0x26A97C))) < 25 && (byte(0x26A978) + byte(0x26A979) + byte(0x26A97A) + byte(0x26A97B) +
               byte(0x26A97C)) == 25 && measured(tally(5, 
                  once(byte(0x26A978) == 5), 
                  once(byte(0x26A979) == 5), 
                  once(byte(0x26A97A) == 5), 
                  once(byte(0x26A97B) == 5), 
                  once(byte(0x26A97C) == 5)
              )) && byte(0x24EE64) == 5 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Mission Street Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AFD8)) + prev(byte(0x26AFD9)) + prev(byte(0x26AFDA)) + prev(byte(0x26AFDB)) +
               prev(byte(0x26AFDC))) < 25 && (byte(0x26AFD8) + byte(0x26AFD9) + byte(0x26AFDA) + byte(0x26AFDB) +
               byte(0x26AFDC)) == 25 && measured(tally(5, 
                  once(byte(0x26AFD8) == 5), 
                  once(byte(0x26AFD9) == 5), 
                  once(byte(0x26AFDA) == 5), 
                  once(byte(0x26AFDB) == 5), 
                  once(byte(0x26AFDC) == 5)
              )) && byte(0x24EE64) == 17 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Aquatic Mine Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AA88)) + prev(byte(0x26AA89)) + prev(byte(0x26AA8A)) + prev(byte(0x26AA8B)) +
               prev(byte(0x26AA8C))) < 25 && (byte(0x26AA88) + byte(0x26AA89) + byte(0x26AA8A) + byte(0x26AA8B) +
               byte(0x26AA8C)) == 25 && measured(tally(5, 
                  once(byte(0x26AA88) == 5), 
                  once(byte(0x26AA89) == 5), 
                  once(byte(0x26AA8A) == 5), 
                  once(byte(0x26AA8B) == 5), 
                  once(byte(0x26AA8C) == 5)
              )) && byte(0x24EE64) == 7 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Route 101 Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26BF40)) + prev(byte(0x26BF41)) + prev(byte(0x26BF42)) + prev(byte(0x26BF43)) +
               prev(byte(0x26BF44))) < 25 && (byte(0x26BF40) + byte(0x26BF41) + byte(0x26BF42) + byte(0x26BF43) +
               byte(0x26BF44)) == 25 && measured(tally(5, 
                  once(byte(0x26BF40) == 5), 
                  once(byte(0x26BF41) == 5), 
                  once(byte(0x26BF42) == 5), 
                  once(byte(0x26BF43) == 5), 
                  once(byte(0x26BF44) == 5)
              )) && byte(0x24EE64) == 70 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Hidden Base Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B308)) + prev(byte(0x26B309)) + prev(byte(0x26B30A)) + prev(byte(0x26B30B)) +
               prev(byte(0x26B30C))) < 25 && (byte(0x26B308) + byte(0x26B309) + byte(0x26B30A) + byte(0x26B30B) +
               byte(0x26B30C)) == 25 && measured(tally(5, 
                  once(byte(0x26B308) == 5), 
                  once(byte(0x26B309) == 5), 
                  once(byte(0x26B30A) == 5), 
                  once(byte(0x26B30B) == 5), 
                  once(byte(0x26B30C) == 5)
              )) && byte(0x24EE64) == 23 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Pyramid Cave Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B5B0)) + prev(byte(0x26B5B1)) + prev(byte(0x26B5B2)) + prev(byte(0x26B5B3)) +
               prev(byte(0x26B5B4))) < 25 && (byte(0x26B5B0) + byte(0x26B5B1) + byte(0x26B5B2) + byte(0x26B5B3) +
               byte(0x26B5B4)) == 25 && measured(tally(5, 
                  once(byte(0x26B5B0) == 5), 
                  once(byte(0x26B5B1) == 5), 
                  once(byte(0x26B5B2) == 5), 
                  once(byte(0x26B5B3) == 5), 
                  once(byte(0x26B5B4) == 5)
              )) && byte(0x24EE64) == 28 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Death Chamber Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B418)) + prev(byte(0x26B419)) + prev(byte(0x26B41A)) + prev(byte(0x26B41B)) +
               prev(byte(0x26B41C))) < 25 && (byte(0x26B418) + byte(0x26B419) + byte(0x26B41A) + byte(0x26B41B) +
               byte(0x26B41C)) == 25 && measured(tally(5, 
                  once(byte(0x26B418) == 5), 
                  once(byte(0x26B419) == 5), 
                  once(byte(0x26B41A) == 5), 
                  once(byte(0x26B41B) == 5), 
                  once(byte(0x26B41C) == 5)
              )) && byte(0x24EE64) == 25 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Eternal Engine Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B390)) + prev(byte(0x26B391)) + prev(byte(0x26B392)) + prev(byte(0x26B393)) +
               prev(byte(0x26B394))) < 25 && (byte(0x26B390) + byte(0x26B391) + byte(0x26B392) + byte(0x26B393) +
               byte(0x26B394)) == 25 && measured(tally(5, 
                  once(byte(0x26B390) == 5), 
                  once(byte(0x26B391) == 5), 
                  once(byte(0x26B392) == 5), 
                  once(byte(0x26B393) == 5), 
                  once(byte(0x26B394) == 5)
              )) && byte(0x24EE64) == 24 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Meteor Herd Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B7D0)) + prev(byte(0x26B7D1)) + prev(byte(0x26B7D2)) + prev(byte(0x26B7D3)) +
               prev(byte(0x26B7D4))) < 25 && (byte(0x26B7D0) + byte(0x26B7D1) + byte(0x26B7D2) + byte(0x26B7D3) +
               byte(0x26B7D4)) == 25 && measured(tally(5, 
                  once(byte(0x26B7D0) == 5), 
                  once(byte(0x26B7D1) == 5), 
                  once(byte(0x26B7D2) == 5), 
                  once(byte(0x26B7D3) == 5), 
                  once(byte(0x26B7D4) == 5)
              )) && byte(0x24EE64) == 32 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Crazy Gadget Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B280)) + prev(byte(0x26B281)) + prev(byte(0x26B282)) + prev(byte(0x26B283)) +
               prev(byte(0x26B284))) < 25 && (byte(0x26B280) + byte(0x26B281) + byte(0x26B282) + byte(0x26B283) +
               byte(0x26B284)) == 25 && measured(tally(5, 
                  once(byte(0x26B280) == 5), 
                  once(byte(0x26B281) == 5), 
                  once(byte(0x26B282) == 5), 
                  once(byte(0x26B283) == 5), 
                  once(byte(0x26B284) == 5)
              )) && byte(0x24EE64) == 22 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Final Rush Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B6C0)) + prev(byte(0x26B6C1)) + prev(byte(0x26B6C2)) + prev(byte(0x26B6C3)) +
               prev(byte(0x26B6C4))) < 25 && (byte(0x26B6C0) + byte(0x26B6C1) + byte(0x26B6C2) + byte(0x26B6C3) +
               byte(0x26B6C4)) == 25 && measured(tally(5, 
                  once(byte(0x26B6C0) == 5), 
                  once(byte(0x26B6C1) == 5), 
                  once(byte(0x26B6C2) == 5), 
                  once(byte(0x26B6C3) == 5), 
                  once(byte(0x26B6C4) == 5)
              )) && byte(0x24EE64) == 30 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Iron Gate Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26ACA8)) + prev(byte(0x26ACA9)) + prev(byte(0x26ACAA)) + prev(byte(0x26ACAB)) +
               prev(byte(0x26ACAC))) < 25 && (byte(0x26ACA8) + byte(0x26ACA9) + byte(0x26ACAA) + byte(0x26ACAB) +
               byte(0x26ACAC)) == 25 && measured(tally(5, 
                  once(byte(0x26ACA8) == 5), 
                  once(byte(0x26ACA9) == 5), 
                  once(byte(0x26ACAA) == 5), 
                  once(byte(0x26ACAB) == 5), 
                  once(byte(0x26ACAC) == 5)
              )) && byte(0x24EE64) == 11 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Dry Lagoon Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B060)) + prev(byte(0x26B061)) + prev(byte(0x26B062)) + prev(byte(0x26B063)) +
               prev(byte(0x26B064))) < 25 && (byte(0x26B060) + byte(0x26B061) + byte(0x26B062) + byte(0x26B063) +
               byte(0x26B064)) == 25 && measured(tally(5, 
                  once(byte(0x26B060) == 5), 
                  once(byte(0x26B061) == 5), 
                  once(byte(0x26B062) == 5), 
                  once(byte(0x26B063) == 5), 
                  once(byte(0x26B064) == 5)
              )) && byte(0x24EE64) == 18 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Sand Ocean Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B1F8)) + prev(byte(0x26B1F9)) + prev(byte(0x26B1FA)) + prev(byte(0x26B1FB)) +
               prev(byte(0x26B1FC))) < 25 && (byte(0x26B1F8) + byte(0x26B1F9) + byte(0x26B1FA) + byte(0x26B1FB) +
               byte(0x26B1FC)) == 25 && measured(tally(5, 
                  once(byte(0x26B1F8) == 5), 
                  once(byte(0x26B1F9) == 5), 
                  once(byte(0x26B1FA) == 5), 
                  once(byte(0x26B1FB) == 5), 
                  once(byte(0x26B1FC) == 5)
              )) && byte(0x24EE64) == 21 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Radical Highway Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AE40)) + prev(byte(0x26AE41)) + prev(byte(0x26AE42)) + prev(byte(0x26AE43)) +
               prev(byte(0x26AE44))) < 25 && (byte(0x26AE40) + byte(0x26AE41) + byte(0x26AE42) + byte(0x26AE43) +
               byte(0x26AE44)) == 25 && measured(tally(5, 
                  once(byte(0x26AE40) == 5), 
                  once(byte(0x26AE41) == 5), 
                  once(byte(0x26AE42) == 5), 
                  once(byte(0x26AE43) == 5), 
                  once(byte(0x26AE44) == 5)
              )) && byte(0x24EE64) == 14 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Egg Quarters Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B4A0)) + prev(byte(0x26B4A1)) + prev(byte(0x26B4A2)) + prev(byte(0x26B4A3)) +
               prev(byte(0x26B4A4))) < 25 && (byte(0x26B4A0) + byte(0x26B4A1) + byte(0x26B4A2) + byte(0x26B4A3) +
               byte(0x26B4A4)) == 25 && measured(tally(5, 
                  once(byte(0x26B4A0) == 5), 
                  once(byte(0x26B4A1) == 5), 
                  once(byte(0x26B4A2) == 5), 
                  once(byte(0x26B4A3) == 5), 
                  once(byte(0x26B4A4) == 5)
              )) && byte(0x24EE64) == 26 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Lost Colony Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B528)) + prev(byte(0x26B529)) + prev(byte(0x26B52A)) + prev(byte(0x26B52B)) +
               prev(byte(0x26B52C))) < 25 && (byte(0x26B528) + byte(0x26B529) + byte(0x26B52A) + byte(0x26B52B) +
               byte(0x26B52C)) == 25 && measured(tally(5, 
                  once(byte(0x26B528) == 5), 
                  once(byte(0x26B529) == 5), 
                  once(byte(0x26B52A) == 5), 
                  once(byte(0x26B52B) == 5), 
                  once(byte(0x26B52C) == 5)
              )) && byte(0x24EE64) == 27 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Weapons Bed Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AD30)) + prev(byte(0x26AD31)) + prev(byte(0x26AD32)) + prev(byte(0x26AD33)) +
               prev(byte(0x26AD34))) < 25 && (byte(0x26AD30) + byte(0x26AD31) + byte(0x26AD32) + byte(0x26AD33) +
               byte(0x26AD34)) == 25 && measured(tally(5, 
                  once(byte(0x26AD30) == 5), 
                  once(byte(0x26AD31) == 5), 
                  once(byte(0x26AD32) == 5), 
                  once(byte(0x26AD33) == 5), 
                  once(byte(0x26AD34) == 5)
              )) && byte(0x24EE64) == 12 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Security Hall Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AB10)) + prev(byte(0x26AB11)) + prev(byte(0x26AB12)) + prev(byte(0x26AB13)) +
               prev(byte(0x26AB14))) < 25 && (byte(0x26AB10) + byte(0x26AB11) + byte(0x26AB12) + byte(0x26AB13) +
               byte(0x26AB14)) == 25 && measured(tally(5, 
                  once(byte(0x26AB10) == 5), 
                  once(byte(0x26AB11) == 5), 
                  once(byte(0x26AB12) == 5), 
                  once(byte(0x26AB13) == 5), 
                  once(byte(0x26AB14) == 5)
              )) && byte(0x24EE64) == 8 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "White Jungle Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26A8F0)) + prev(byte(0x26A8F1)) + prev(byte(0x26A8F2)) + prev(byte(0x26A8F3)) +
               prev(byte(0x26A8F4))) < 25 && (byte(0x26A8F0) + byte(0x26A8F1) + byte(0x26A8F2) + byte(0x26A8F3) +
               byte(0x26A8F4)) == 25 && measured(tally(5, 
                  once(byte(0x26A8F0) == 5), 
                  once(byte(0x26A8F1) == 5), 
                  once(byte(0x26A8F2) == 5), 
                  once(byte(0x26A8F3) == 5), 
                  once(byte(0x26A8F4) == 5)
              )) && byte(0x24EE64) == 4 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Route 280 Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26BFC8)) + prev(byte(0x26BFC9)) + prev(byte(0x26BFCA)) + prev(byte(0x26BFCB)) +
               prev(byte(0x26BFCC))) < 25 && (byte(0x26BFC8) + byte(0x26BFC9) + byte(0x26BFCA) + byte(0x26BFCB) +
               byte(0x26BFCC)) == 25 && measured(tally(5, 
                  once(byte(0x26BFC8) == 5), 
                  once(byte(0x26BFC9) == 5), 
                  once(byte(0x26BFCA) == 5), 
                  once(byte(0x26BFCB) == 5), 
                  once(byte(0x26BFCC) == 5)
              )) && byte(0x24EE64) == 70 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Sky Rail Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26AA00)) + prev(byte(0x26AA01)) + prev(byte(0x26AA02)) + prev(byte(0x26AA03)) +
               prev(byte(0x26AA04))) < 25 && (byte(0x26AA00) + byte(0x26AA01) + byte(0x26AA02) + byte(0x26AA03) +
               byte(0x26AA04)) == 25 && measured(tally(5, 
                  once(byte(0x26AA00) == 5), 
                  once(byte(0x26AA01) == 5), 
                  once(byte(0x26AA02) == 5), 
                  once(byte(0x26AA03) == 5), 
                  once(byte(0x26AA04) == 5)
              )) && byte(0x24EE64) == 6 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Mad Space Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26BE30)) + prev(byte(0x26BE31)) + prev(byte(0x26BE32)) + prev(byte(0x26BE33)) +
               prev(byte(0x26BE34))) < 25 && (byte(0x26BE30) + byte(0x26BE31) + byte(0x26BE32) + byte(0x26BE33) +
               byte(0x26BE34)) == 25 && measured(tally(5, 
                  once(byte(0x26BE30) == 5), 
                  once(byte(0x26BE31) == 5), 
                  once(byte(0x26BE32) == 5), 
                  once(byte(0x26BE33) == 5), 
                  once(byte(0x26BE34) == 5)
              )) && byte(0x24EE64) == 44 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Cosmic Wall Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26BDA8)) + prev(byte(0x26BDA9)) + prev(byte(0x26BDAA)) + prev(byte(0x26BDAB)) +
               prev(byte(0x26BDAC))) < 25 && (byte(0x26BDA8) + byte(0x26BDA9) + byte(0x26BDAA) + byte(0x26BDAB) +
               byte(0x26BDAC)) == 25 && measured(tally(5, 
                  once(byte(0x26BDA8) == 5), 
                  once(byte(0x26BDA9) == 5), 
                  once(byte(0x26BDAA) == 5), 
                  once(byte(0x26BDAB) == 5), 
                  once(byte(0x26BDAC) == 5)
              )) && byte(0x24EE64) == 43 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Final Chase Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26BC10)) + prev(byte(0x26BC11)) + prev(byte(0x26BC12)) + prev(byte(0x26BC13)) +
               prev(byte(0x26BC14))) < 25 && (byte(0x26BC10) + byte(0x26BC11) + byte(0x26BC12) + byte(0x26BC13) +
               byte(0x26BC14)) == 25 && measured(tally(5, 
                  once(byte(0x26BC10) == 5), 
                  once(byte(0x26BC11) == 5), 
                  once(byte(0x26BC12) == 5), 
                  once(byte(0x26BC13) == 5), 
                  once(byte(0x26BC14) == 5)
              )) && byte(0x24EE64) == 40 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Cannon's Core Aced (copy)", points = 10,
    description = "Get an A rating on every mission.",
    trigger = (prev(byte(0x26B8E0)) + prev(byte(0x26B8E1)) + prev(byte(0x26B8E2)) + prev(byte(0x26B8E3)) +
               prev(byte(0x26B8E4))) < 25 && (byte(0x26B8E0) + byte(0x26B8E1) + byte(0x26B8E2) + byte(0x26B8E3) +
               byte(0x26B8E4)) == 25 && measured(tally(5, 
                  once(byte(0x26B8E0) == 5), 
                  once(byte(0x26B8E1) == 5), 
                  once(byte(0x26B8E2) == 5), 
                  once(byte(0x26B8E3) == 5), 
                  once(byte(0x26B8E4) == 5)
              )) && byte(0x24EE64) == 34 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Green Hill Aced (copy)", points = 2,
    description = "Get A rating on Green Hill.",
    trigger = byte(0x24EE64) == 31 && byte(0x0DB24E) == 4 && byte(0x24EE60) == 8
)

achievement(
    title = "Sonic Upgrades (copy)", points = 5,
    description = "Obtain all the upgrades for Sonic.",
    trigger = (prev(byte(0x26A1E0)) + prev(byte(0x26A1E1)) + prev(byte(0x26A1E2)) + prev(byte(0x26A1E3)) +
               prev(byte(0x26A1E4)) + prev(byte(0x26A1E5))) < 6 && (byte(0x26A1E0) + byte(0x26A1E1) + byte(0x26A1E2) +
               byte(0x26A1E3) + byte(0x26A1E4) + byte(0x26A1E5)) == 6 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) !=
               prev(byte(0x0FBE0C)))
)

achievement(
    title = "Tails Upgrades (copy)", points = 5,
    description = "Obtain all the upgrades for Tails.",
    trigger = (prev(byte(0x26A1E6)) + prev(byte(0x26A1E7)) + prev(byte(0x26A1E8)) + prev(byte(0x26A1E9))) < 4 && 
              (byte(0x26A1E6) + byte(0x26A1E7) + byte(0x26A1E8) + byte(0x26A1E9)) == 4 && byte(0x24EE60) == 16 && 
              never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Knuckles Upgrades (copy)", points = 5,
    description = "Obtain all the upgrades for Knuckles.",
    trigger = (prev(byte(0x26A1EA)) + prev(byte(0x26A1EB)) + prev(byte(0x26A1EC)) + prev(byte(0x26A1ED)) +
               prev(byte(0x26A1EE))) < 5 && (byte(0x26A1EA) + byte(0x26A1EB) + byte(0x26A1EC) + byte(0x26A1ED) +
               byte(0x26A1EE)) == 5 && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Death to All Who Oppose Me! (copy)", points = 5,
    description = "Collect all the upgrades with Shadow",
    trigger = byte(0x26A1F0) == 1 && byte(0x26A1F1) == 1 && byte(0x26A1F2) == 1 && byte(0x26A1F3) == 1 && 
              (prev(byte(0x26A1F0)) + prev(byte(0x26A1F1)) + prev(byte(0x26A1F2)) + prev(byte(0x26A1F3))) < 4 && 
              measured(tally(4, 
                  once(byte(0x26A1F0) == 1), 
                  once(byte(0x26A1F1) == 1), 
                  once(byte(0x26A1F2) == 1), 
                  once(byte(0x26A1F3) == 1)
              )) && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Mean Machine (copy)", points = 5,
    description = "Collect all the upgrades with Eggman",
    trigger = byte(0x26A1F4) == 1 && byte(0x26A1F5) == 1 && byte(0x26A1F6) == 1 && byte(0x26A1F7) == 1 && byte(0x26A1F8)
               == 1 && (prev(byte(0x26A1F4)) + prev(byte(0x26A1F5)) + prev(byte(0x26A1F6)) + prev(byte(0x26A1F7)) +
               prev(byte(0x26A1F8))) < 5 && measured(tally(5, 
                  once(byte(0x26A1F4) == 1), 
                  once(byte(0x26A1F5) == 1), 
                  once(byte(0x26A1F6) == 1), 
                  once(byte(0x26A1F7) == 1), 
                  once(byte(0x26A1F8) == 1)
              )) && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Rouge the Treasure Hunter (copy)", points = 5,
    description = "Collect all the upgrades with Rouge",
    trigger = byte(0x26A1F9) == 1 && byte(0x26A1FA) == 1 && byte(0x26A1FB) == 1 && byte(0x26A1FC) == 1 && 
              (prev(byte(0x26A1F9)) + prev(byte(0x26A1FA)) + prev(byte(0x26A1FB)) + prev(byte(0x26A1FC))) < 4 && 
              measured(tally(4, 
                  once(byte(0x26A1F9) == 1), 
                  once(byte(0x26A1FA) == 1), 
                  once(byte(0x26A1FB) == 1), 
                  once(byte(0x26A1FC) == 1)
              )) && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Hero Side Emblems (copy)", points = 25,
    description = "Get 84 emblems for the Hero Side.",
    trigger = (prev(byte(0x26ADB8)) + prev(byte(0x26ADB9)) + prev(byte(0x26ADBA)) + prev(byte(0x26ADBB)) +
               prev(byte(0x26ADBC)) + prev(byte(0x26AF50)) + prev(byte(0x26AF51)) + prev(byte(0x26AF52)) +
               prev(byte(0x26AF53)) + prev(byte(0x26AF54)) + prev(byte(0x26AB98)) + prev(byte(0x26AB99)) +
               prev(byte(0x26AB9A)) + prev(byte(0x26AB9B)) + prev(byte(0x26AB9C)) + prev(byte(0x26AC20)) +
               prev(byte(0x26AC21)) + prev(byte(0x26AC22)) + prev(byte(0x26AC23)) + prev(byte(0x26AC24)) +
               prev(byte(0x26A868)) + prev(byte(0x26A869)) + prev(byte(0x26A86A)) + prev(byte(0x26A86B)) +
               prev(byte(0x26A86C)) + prev(byte(0x26A978)) + prev(byte(0x26A979)) + prev(byte(0x26A97A)) +
               prev(byte(0x26A97B)) + prev(byte(0x26A97C)) + prev(byte(0x26AFD8)) + prev(byte(0x26AFD9)) +
               prev(byte(0x26AFDA)) + prev(byte(0x26AFDB)) + prev(byte(0x26AFDC)) + prev(byte(0x26AA88)) +
               prev(byte(0x26AA89)) + prev(byte(0x26AA8A)) + prev(byte(0x26AA8B)) + prev(byte(0x26AA8C)) +
               prev(byte(0x26BF40)) + prev(byte(0x26BF41)) + prev(byte(0x26BF42)) + prev(byte(0x26BF43)) +
               prev(byte(0x26BF44)) + prev(byte(0x26B308)) + prev(byte(0x26B309)) + prev(byte(0x26B30A)) +
               prev(byte(0x26B30B)) + prev(byte(0x26B30C)) + prev(byte(0x26B5B0)) + prev(byte(0x26B5B1)) +
               prev(byte(0x26B5B2)) + prev(byte(0x26B5B3)) + prev(byte(0x26B5B4)) + prev(byte(0x26B418)) +
               prev(byte(0x26B419)) + prev(byte(0x26B41A)) + prev(byte(0x26B41B)) + prev(byte(0x26B41C)) +
               prev(byte(0x26B390)) + prev(byte(0x26B391)) + prev(byte(0x26B392)) + prev(byte(0x26B393)) +
               prev(byte(0x26B394)) + prev(byte(0x26B7D0)) + prev(byte(0x26B7D1)) + prev(byte(0x26B7D2)) +
               prev(byte(0x26B7D3)) + prev(byte(0x26B7D4)) + prev(byte(0x26B280)) + prev(byte(0x26B281)) +
               prev(byte(0x26B282)) + prev(byte(0x26B283)) + prev(byte(0x26B284)) + prev(byte(0x26B6C0)) +
               prev(byte(0x26B6C1)) + prev(byte(0x26B6C2)) + prev(byte(0x26B6C3)) + prev(byte(0x26B6C4)) +
               prev(byte(0x26C478)) + prev(byte(0x26C47A)) + prev(byte(0x26C47C)) + prev(byte(0x26C47E))) < 404 && 
              (byte(0x26ADB8) + byte(0x26ADB9) + byte(0x26ADBA) + byte(0x26ADBB) + byte(0x26ADBC) + byte(0x26AF50) +
               byte(0x26AF51) + byte(0x26AF52) + byte(0x26AF53) + byte(0x26AF54) + byte(0x26AB98) + byte(0x26AB99) +
               byte(0x26AB9A) + byte(0x26AB9B) + byte(0x26AB9C) + byte(0x26AC20) + byte(0x26AC21) + byte(0x26AC22) +
               byte(0x26AC23) + byte(0x26AC24) + byte(0x26A868) + byte(0x26A869) + byte(0x26A86A) + byte(0x26A86B) +
               byte(0x26A86C) + byte(0x26A978) + byte(0x26A979) + byte(0x26A97A) + byte(0x26A97B) + byte(0x26A97C) +
               byte(0x26AFD8) + byte(0x26AFD9) + byte(0x26AFDA) + byte(0x26AFDB) + byte(0x26AFDC) + byte(0x26AA88) +
               byte(0x26AA89) + byte(0x26AA8A) + byte(0x26AA8B) + byte(0x26AA8C) + byte(0x26BF40) + byte(0x26BF41) +
               byte(0x26BF42) + byte(0x26BF43) + byte(0x26BF44) + byte(0x26B308) + byte(0x26B309) + byte(0x26B30A) +
               byte(0x26B30B) + byte(0x26B30C) + byte(0x26B5B0) + byte(0x26B5B1) + byte(0x26B5B2) + byte(0x26B5B3) +
               byte(0x26B5B4) + byte(0x26B418) + byte(0x26B419) + byte(0x26B41A) + byte(0x26B41B) + byte(0x26B41C) +
               byte(0x26B390) + byte(0x26B391) + byte(0x26B392) + byte(0x26B393) + byte(0x26B394) + byte(0x26B7D0) +
               byte(0x26B7D1) + byte(0x26B7D2) + byte(0x26B7D3) + byte(0x26B7D4) + byte(0x26B280) + byte(0x26B281) +
               byte(0x26B282) + byte(0x26B283) + byte(0x26B284) + byte(0x26B6C0) + byte(0x26B6C1) + byte(0x26B6C2) +
               byte(0x26B6C3) + byte(0x26B6C4) + byte(0x26C478) + byte(0x26C47A) + byte(0x26C47C) + byte(0x26C47E)) ==
               404 && measured(tally(84, 
                  once(byte(0x26ADB8) > 0), 
                  once(byte(0x26ADB9) > 0), 
                  once(byte(0x26ADBA) > 0), 
                  once(byte(0x26ADBB) > 0), 
                  once(byte(0x26ADBC) > 0), 
                  once(byte(0x26AF50) > 0), 
                  once(byte(0x26AF51) > 0), 
                  once(byte(0x26AF52) > 0), 
                  once(byte(0x26AF53) > 0), 
                  once(byte(0x26AF54) > 0), 
                  once(byte(0x26AB98) > 0), 
                  once(byte(0x26AB99) > 0), 
                  once(byte(0x26AB9A) > 0), 
                  once(byte(0x26AB9B) > 0), 
                  once(byte(0x26AB9C) > 0), 
                  once(byte(0x26AC20) > 0), 
                  once(byte(0x26AC21) > 0), 
                  once(byte(0x26AC22) > 0), 
                  once(byte(0x26AC23) > 0), 
                  once(byte(0x26AC24) > 0), 
                  once(byte(0x26A868) > 0), 
                  once(byte(0x26A869) > 0), 
                  once(byte(0x26A86A) > 0), 
                  once(byte(0x26A86B) > 0), 
                  once(byte(0x26A86C) > 0), 
                  once(byte(0x26A978) > 0), 
                  once(byte(0x26A979) > 0), 
                  once(byte(0x26A97A) > 0), 
                  once(byte(0x26A97B) > 0), 
                  once(byte(0x26A97C) > 0), 
                  once(byte(0x26AFD8) > 0), 
                  once(byte(0x26AFD9) > 0), 
                  once(byte(0x26AFDA) > 0), 
                  once(byte(0x26AFDB) > 0), 
                  once(byte(0x26AFDC) > 0), 
                  once(byte(0x26AA88) > 0), 
                  once(byte(0x26AA89) > 0), 
                  once(byte(0x26AA8A) > 0), 
                  once(byte(0x26AA8B) > 0), 
                  once(byte(0x26AA8C) > 0), 
                  once(byte(0x26BF40) > 0), 
                  once(byte(0x26BF41) > 0), 
                  once(byte(0x26BF42) > 0), 
                  once(byte(0x26BF43) > 0), 
                  once(byte(0x26BF44) > 0), 
                  once(byte(0x26B308) > 0), 
                  once(byte(0x26B309) > 0), 
                  once(byte(0x26B30A) > 0), 
                  once(byte(0x26B30B) > 0), 
                  once(byte(0x26B30C) > 0), 
                  once(byte(0x26B5B0) > 0), 
                  once(byte(0x26B5B1) > 0), 
                  once(byte(0x26B5B2) > 0), 
                  once(byte(0x26B5B3) > 0), 
                  once(byte(0x26B5B4) > 0), 
                  once(byte(0x26B418) > 0), 
                  once(byte(0x26B419) > 0), 
                  once(byte(0x26B41A) > 0), 
                  once(byte(0x26B41B) > 0), 
                  once(byte(0x26B41C) > 0), 
                  once(byte(0x26B390) > 0), 
                  once(byte(0x26B391) > 0), 
                  once(byte(0x26B392) > 0), 
                  once(byte(0x26B393) > 0), 
                  once(byte(0x26B394) > 0), 
                  once(byte(0x26B7D0) > 0), 
                  once(byte(0x26B7D1) > 0), 
                  once(byte(0x26B7D2) > 0), 
                  once(byte(0x26B7D3) > 0), 
                  once(byte(0x26B7D4) > 0), 
                  once(byte(0x26B280) > 0), 
                  once(byte(0x26B281) > 0), 
                  once(byte(0x26B282) > 0), 
                  once(byte(0x26B283) > 0), 
                  once(byte(0x26B284) > 0), 
                  once(byte(0x26B6C0) > 0), 
                  once(byte(0x26B6C1) > 0), 
                  once(byte(0x26B6C2) > 0), 
                  once(byte(0x26B6C3) > 0), 
                  once(byte(0x26B6C4) > 0), 
                  once(byte(0x26C478) == 1), 
                  once(byte(0x26C47A) == 1), 
                  once(byte(0x26C47C) == 1), 
                  once(byte(0x26C47E) == 1)
              )) && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Fighter for Darkness (copy)", points = 25,
    description = "Collect all 74 Dark Emblems",
    trigger = (prev(byte(0x26ACA8)) + prev(byte(0x26ACA9)) + prev(byte(0x26ACAA)) + prev(byte(0x26ACAB)) +
               prev(byte(0x26ACAC)) + prev(byte(0x26B060)) + prev(byte(0x26B061)) + prev(byte(0x26B062)) +
               prev(byte(0x26B063)) + prev(byte(0x26B064)) + prev(byte(0x26B1F8)) + prev(byte(0x26B1F9)) +
               prev(byte(0x26B1FA)) + prev(byte(0x26B1FB)) + prev(byte(0x26B1FC)) + prev(byte(0x26AE40)) +
               prev(byte(0x26AE41)) + prev(byte(0x26AE42)) + prev(byte(0x26AE43)) + prev(byte(0x26AE44)) +
               prev(byte(0x26B4A0)) + prev(byte(0x26B4A1)) + prev(byte(0x26B4A2)) + prev(byte(0x26B4A3)) +
               prev(byte(0x26B4A4)) + prev(byte(0x26B528)) + prev(byte(0x26B529)) + prev(byte(0x26B52A)) +
               prev(byte(0x26B52B)) + prev(byte(0x26B52C)) + prev(byte(0x26AD30)) + prev(byte(0x26AD31)) +
               prev(byte(0x26AD32)) + prev(byte(0x26AD33)) + prev(byte(0x26AD34)) + prev(byte(0x26AB10)) +
               prev(byte(0x26AB11)) + prev(byte(0x26AB12)) + prev(byte(0x26AB13)) + prev(byte(0x26AB14)) +
               prev(byte(0x26A8F0)) + prev(byte(0x26A8F1)) + prev(byte(0x26A8F2)) + prev(byte(0x26A8F3)) +
               prev(byte(0x26A8F4)) + prev(byte(0x26BFC8)) + prev(byte(0x26BFC9)) + prev(byte(0x26BFCA)) +
               prev(byte(0x26BFCB)) + prev(byte(0x26BFCC)) + prev(byte(0x26AA00)) + prev(byte(0x26AA01)) +
               prev(byte(0x26AA02)) + prev(byte(0x26AA03)) + prev(byte(0x26AA04)) + prev(byte(0x26BE30)) +
               prev(byte(0x26BE31)) + prev(byte(0x26BE32)) + prev(byte(0x26BE33)) + prev(byte(0x26BE34)) +
               prev(byte(0x26BDA8)) + prev(byte(0x26BDA9)) + prev(byte(0x26BDAA)) + prev(byte(0x26BDAB)) +
               prev(byte(0x26BDAC)) + prev(byte(0x26BC10)) + prev(byte(0x26BC11)) + prev(byte(0x26BC12)) +
               prev(byte(0x26BC13)) + prev(byte(0x26BC14)) + prev(byte(0x26C479)) + prev(byte(0x26C47B)) +
               prev(byte(0x26C47D)) + prev(byte(0x26C47F))) < 354 && (byte(0x26ACA8) + byte(0x26ACA9) + byte(0x26ACAA) +
               byte(0x26ACAB) + byte(0x26ACAC) + byte(0x26B060) + byte(0x26B061) + byte(0x26B062) + byte(0x26B063) +
               byte(0x26B064) + byte(0x26B1F8) + byte(0x26B1F9) + byte(0x26B1FA) + byte(0x26B1FB) + byte(0x26B1FC) +
               byte(0x26AE40) + byte(0x26AE41) + byte(0x26AE42) + byte(0x26AE43) + byte(0x26AE44) + byte(0x26B4A0) +
               byte(0x26B4A1) + byte(0x26B4A2) + byte(0x26B4A3) + byte(0x26B4A4) + byte(0x26B528) + byte(0x26B529) +
               byte(0x26B52A) + byte(0x26B52B) + byte(0x26B52C) + byte(0x26AD30) + byte(0x26AD31) + byte(0x26AD32) +
               byte(0x26AD33) + byte(0x26AD34) + byte(0x26AB10) + byte(0x26AB11) + byte(0x26AB12) + byte(0x26AB13) +
               byte(0x26AB14) + byte(0x26A8F0) + byte(0x26A8F1) + byte(0x26A8F2) + byte(0x26A8F3) + byte(0x26A8F4) +
               byte(0x26BFC8) + byte(0x26BFC9) + byte(0x26BFCA) + byte(0x26BFCB) + byte(0x26BFCC) + byte(0x26AA00) +
               byte(0x26AA01) + byte(0x26AA02) + byte(0x26AA03) + byte(0x26AA04) + byte(0x26BE30) + byte(0x26BE31) +
               byte(0x26BE32) + byte(0x26BE33) + byte(0x26BE34) + byte(0x26BDA8) + byte(0x26BDA9) + byte(0x26BDAA) +
               byte(0x26BDAB) + byte(0x26BDAC) + byte(0x26BC10) + byte(0x26BC11) + byte(0x26BC12) + byte(0x26BC13) +
               byte(0x26BC14) + byte(0x26C479) + byte(0x26C47B) + byte(0x26C47D) + byte(0x26C47F)) == 354 && 
              measured(tally(74, 
                  once(byte(0x26ACA8) > 0), 
                  once(byte(0x26ACA9) > 0), 
                  once(byte(0x26ACAA) > 0), 
                  once(byte(0x26ACAB) > 0), 
                  once(byte(0x26ACAC) > 0), 
                  once(byte(0x26B060) > 0), 
                  once(byte(0x26B061) > 0), 
                  once(byte(0x26B062) > 0), 
                  once(byte(0x26B063) > 0), 
                  once(byte(0x26B064) > 0), 
                  once(byte(0x26B1F8) > 0), 
                  once(byte(0x26B1F9) > 0), 
                  once(byte(0x26B1FA) > 0), 
                  once(byte(0x26B1FB) > 0), 
                  once(byte(0x26B1FC) > 0), 
                  once(byte(0x26AE40) > 0), 
                  once(byte(0x26AE41) > 0), 
                  once(byte(0x26AE42) > 0), 
                  once(byte(0x26AE43) > 0), 
                  once(byte(0x26AE44) > 0), 
                  once(byte(0x26B4A0) > 0), 
                  once(byte(0x26B4A1) > 0), 
                  once(byte(0x26B4A2) > 0), 
                  once(byte(0x26B4A3) > 0), 
                  once(byte(0x26B4A4) > 0), 
                  once(byte(0x26B528) > 0), 
                  once(byte(0x26B529) > 0), 
                  once(byte(0x26B52A) > 0), 
                  once(byte(0x26B52B) > 0), 
                  once(byte(0x26B52C) > 0), 
                  once(byte(0x26AD30) > 0), 
                  once(byte(0x26AD31) > 0), 
                  once(byte(0x26AD32) > 0), 
                  once(byte(0x26AD33) > 0), 
                  once(byte(0x26AD34) > 0), 
                  once(byte(0x26AB10) > 0), 
                  once(byte(0x26AB11) > 0), 
                  once(byte(0x26AB12) > 0), 
                  once(byte(0x26AB13) > 0), 
                  once(byte(0x26AB14) > 0), 
                  once(byte(0x26A8F0) > 0), 
                  once(byte(0x26A8F1) > 0), 
                  once(byte(0x26A8F2) > 0), 
                  once(byte(0x26A8F3) > 0), 
                  once(byte(0x26A8F4) > 0), 
                  once(byte(0x26BFC8) > 0), 
                  once(byte(0x26BFC9) > 0), 
                  once(byte(0x26BFCA) > 0), 
                  once(byte(0x26BFCB) > 0), 
                  once(byte(0x26BFCC) > 0), 
                  once(byte(0x26AA00) > 0), 
                  once(byte(0x26AA01) > 0), 
                  once(byte(0x26AA02) > 0), 
                  once(byte(0x26AA03) > 0), 
                  once(byte(0x26AA04) > 0), 
                  once(byte(0x26BE30) > 0), 
                  once(byte(0x26BE31) > 0), 
                  once(byte(0x26BE32) > 0), 
                  once(byte(0x26BE33) > 0), 
                  once(byte(0x26BE34) > 0), 
                  once(byte(0x26BDA8) > 0), 
                  once(byte(0x26BDA9) > 0), 
                  once(byte(0x26BDAA) > 0), 
                  once(byte(0x26BDAB) > 0), 
                  once(byte(0x26BDAC) > 0), 
                  once(byte(0x26BC10) > 0), 
                  once(byte(0x26BC11) > 0), 
                  once(byte(0x26BC12) > 0), 
                  once(byte(0x26BC13) > 0), 
                  once(byte(0x26BC14) > 0), 
                  once(byte(0x26C479) == 1), 
                  once(byte(0x26C47B) == 1), 
                  once(byte(0x26C47D) == 1), 
                  once(byte(0x26C47F) == 1)
              )) && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C))) && byte(0x24EE60) == 16
)

achievement(
    title = "Congratz, You're a Legend! (copy)", points = 25,
    description = "Get all 180 emblems.",
    trigger = (prev(byte(0x26ADB8)) + prev(byte(0x26ADB9)) + prev(byte(0x26ADBA)) + prev(byte(0x26ADBB)) +
               prev(byte(0x26ADBC)) + prev(byte(0x26AF50)) + prev(byte(0x26AF51)) + prev(byte(0x26AF52)) +
               prev(byte(0x26AF53)) + prev(byte(0x26AF54)) + prev(byte(0x26AB98)) + prev(byte(0x26AB99)) +
               prev(byte(0x26AB9A)) + prev(byte(0x26AB9B)) + prev(byte(0x26AB9C)) + prev(byte(0x26AC20)) +
               prev(byte(0x26AC21)) + prev(byte(0x26AC22)) + prev(byte(0x26AC23)) + prev(byte(0x26AC24)) +
               prev(byte(0x26A868)) + prev(byte(0x26A869)) + prev(byte(0x26A86A)) + prev(byte(0x26A86B)) +
               prev(byte(0x26A86C)) + prev(byte(0x26A978)) + prev(byte(0x26A979)) + prev(byte(0x26A97A)) +
               prev(byte(0x26A97B)) + prev(byte(0x26A97C)) + prev(byte(0x26AFD8)) + prev(byte(0x26AFD9)) +
               prev(byte(0x26AFDA)) + prev(byte(0x26AFDB)) + prev(byte(0x26AFDC)) + prev(byte(0x26AA88)) +
               prev(byte(0x26AA89)) + prev(byte(0x26AA8A)) + prev(byte(0x26AA8B)) + prev(byte(0x26AA8C)) +
               prev(byte(0x26BF40)) + prev(byte(0x26BF41)) + prev(byte(0x26BF42)) + prev(byte(0x26BF43)) +
               prev(byte(0x26BF44)) + prev(byte(0x26B308)) + prev(byte(0x26B309)) + prev(byte(0x26B30A)) +
               prev(byte(0x26B30B)) + prev(byte(0x26B30C)) + prev(byte(0x26B5B0)) + prev(byte(0x26B5B1)) +
               prev(byte(0x26B5B2)) + prev(byte(0x26B5B3)) + prev(byte(0x26B5B4)) + prev(byte(0x26B418)) +
               prev(byte(0x26B419)) + prev(byte(0x26B41A)) + prev(byte(0x26B41B)) + prev(byte(0x26B41C)) +
               prev(byte(0x26B390)) + prev(byte(0x26B391)) + prev(byte(0x26B392)) + prev(byte(0x26B393)) +
               prev(byte(0x26B394)) + prev(byte(0x26B7D0)) + prev(byte(0x26B7D1)) + prev(byte(0x26B7D2)) +
               prev(byte(0x26B7D3)) + prev(byte(0x26B7D4)) + prev(byte(0x26B280)) + prev(byte(0x26B281)) +
               prev(byte(0x26B282)) + prev(byte(0x26B283)) + prev(byte(0x26B284)) + prev(byte(0x26B6C0)) +
               prev(byte(0x26B6C1)) + prev(byte(0x26B6C2)) + prev(byte(0x26B6C3)) + prev(byte(0x26B6C4)) +
               prev(byte(0x26ACA8)) + prev(byte(0x26ACA9)) + prev(byte(0x26ACAA)) + prev(byte(0x26ACAB)) +
               prev(byte(0x26ACAC)) + prev(byte(0x26B060)) + prev(byte(0x26B061)) + prev(byte(0x26B062)) +
               prev(byte(0x26B063)) + prev(byte(0x26B064)) + prev(byte(0x26B1F8)) + prev(byte(0x26B1F9)) +
               prev(byte(0x26B1FA)) + prev(byte(0x26B1FB)) + prev(byte(0x26B1FC)) + prev(byte(0x26AE40)) +
               prev(byte(0x26AE41)) + prev(byte(0x26AE42)) + prev(byte(0x26AE43)) + prev(byte(0x26AE44)) +
               prev(byte(0x26B4A0)) + prev(byte(0x26B4A1)) + prev(byte(0x26B4A2)) + prev(byte(0x26B4A3)) +
               prev(byte(0x26B4A4)) + prev(byte(0x26B528)) + prev(byte(0x26B529)) + prev(byte(0x26B52A)) +
               prev(byte(0x26B52B)) + prev(byte(0x26B52C)) + prev(byte(0x26AD30)) + prev(byte(0x26AD31)) +
               prev(byte(0x26AD32)) + prev(byte(0x26AD33)) + prev(byte(0x26AD34)) + prev(byte(0x26AB10)) +
               prev(byte(0x26AB11)) + prev(byte(0x26AB12)) + prev(byte(0x26AB13)) + prev(byte(0x26AB14)) +
               prev(byte(0x26A8F0)) + prev(byte(0x26A8F1)) + prev(byte(0x26A8F2)) + prev(byte(0x26A8F3)) +
               prev(byte(0x26A8F4)) + prev(byte(0x26BFC8)) + prev(byte(0x26BFC9)) + prev(byte(0x26BFCA)) +
               prev(byte(0x26BFCB)) + prev(byte(0x26BFCC)) + prev(byte(0x26AA00)) + prev(byte(0x26AA01)) +
               prev(byte(0x26AA02)) + prev(byte(0x26AA03)) + prev(byte(0x26AA04)) + prev(byte(0x26BE30)) +
               prev(byte(0x26BE31)) + prev(byte(0x26BE32)) + prev(byte(0x26BE33)) + prev(byte(0x26BE34)) +
               prev(byte(0x26BDA8)) + prev(byte(0x26BDA9)) + prev(byte(0x26BDAA)) + prev(byte(0x26BDAB)) +
               prev(byte(0x26BDAC)) + prev(byte(0x26BC10)) + prev(byte(0x26BC11)) + prev(byte(0x26BC12)) +
               prev(byte(0x26BC13)) + prev(byte(0x26BC14)) + prev(byte(0x26B8E0)) + prev(byte(0x26B8E1)) +
               prev(byte(0x26B8E2)) + prev(byte(0x26B8E3)) + prev(byte(0x26B8E4)) + prev(byte(0x26C478)) +
               prev(byte(0x26C479)) + prev(byte(0x26C47A)) + prev(byte(0x26C47B)) + prev(byte(0x26C47C)) +
               prev(byte(0x26C47D)) + prev(byte(0x26C47E)) + prev(byte(0x26C47F)) + prev(byte(0x26C480)) +
               prev(byte(0x26C210)) + prev(byte(0x26C211)) + prev(byte(0x26C212)) + prev(byte(0x26C213)) +
               prev(byte(0x26C214)) + prev(byte(0x26C215)) + prev(byte(0x26C216)) + prev(byte(0x26C217)) +
               prev(byte(0x26C218)) + prev(byte(0x26C219)) + prev(byte(0x26C05C)) + prev(byte(0x26C069)) +
               prev(byte(0x26C076)) + prev(byte(0x26C481)) + prev(byte(0x26C482)) + prev(byte(0x26C483))) < 800 && 
              (byte(0x26ADB8) + byte(0x26ADB9) + byte(0x26ADBA) + byte(0x26ADBB) + byte(0x26ADBC) + byte(0x26AF50) +
               byte(0x26AF51) + byte(0x26AF52) + byte(0x26AF53) + byte(0x26AF54) + byte(0x26AB98) + byte(0x26AB99) +
               byte(0x26AB9A) + byte(0x26AB9B) + byte(0x26AB9C) + byte(0x26AC20) + byte(0x26AC21) + byte(0x26AC22) +
               byte(0x26AC23) + byte(0x26AC24) + byte(0x26A868) + byte(0x26A869) + byte(0x26A86A) + byte(0x26A86B) +
               byte(0x26A86C) + byte(0x26A978) + byte(0x26A979) + byte(0x26A97A) + byte(0x26A97B) + byte(0x26A97C) +
               byte(0x26AFD8) + byte(0x26AFD9) + byte(0x26AFDA) + byte(0x26AFDB) + byte(0x26AFDC) + byte(0x26AA88) +
               byte(0x26AA89) + byte(0x26AA8A) + byte(0x26AA8B) + byte(0x26AA8C) + byte(0x26BF40) + byte(0x26BF41) +
               byte(0x26BF42) + byte(0x26BF43) + byte(0x26BF44) + byte(0x26B308) + byte(0x26B309) + byte(0x26B30A) +
               byte(0x26B30B) + byte(0x26B30C) + byte(0x26B5B0) + byte(0x26B5B1) + byte(0x26B5B2) + byte(0x26B5B3) +
               byte(0x26B5B4) + byte(0x26B418) + byte(0x26B419) + byte(0x26B41A) + byte(0x26B41B) + byte(0x26B41C) +
               byte(0x26B390) + byte(0x26B391) + byte(0x26B392) + byte(0x26B393) + byte(0x26B394) + byte(0x26B7D0) +
               byte(0x26B7D1) + byte(0x26B7D2) + byte(0x26B7D3) + byte(0x26B7D4) + byte(0x26B280) + byte(0x26B281) +
               byte(0x26B282) + byte(0x26B283) + byte(0x26B284) + byte(0x26B6C0) + byte(0x26B6C1) + byte(0x26B6C2) +
               byte(0x26B6C3) + byte(0x26B6C4) + byte(0x26ACA8) + byte(0x26ACA9) + byte(0x26ACAA) + byte(0x26ACAB) +
               byte(0x26ACAC) + byte(0x26B060) + byte(0x26B061) + byte(0x26B062) + byte(0x26B063) + byte(0x26B064) +
               byte(0x26B1F8) + byte(0x26B1F9) + byte(0x26B1FA) + byte(0x26B1FB) + byte(0x26B1FC) + byte(0x26AE40) +
               byte(0x26AE41) + byte(0x26AE42) + byte(0x26AE43) + byte(0x26AE44) + byte(0x26B4A0) + byte(0x26B4A1) +
               byte(0x26B4A2) + byte(0x26B4A3) + byte(0x26B4A4) + byte(0x26B528) + byte(0x26B529) + byte(0x26B52A) +
               byte(0x26B52B) + byte(0x26B52C) + byte(0x26AD30) + byte(0x26AD31) + byte(0x26AD32) + byte(0x26AD33) +
               byte(0x26AD34) + byte(0x26AB10) + byte(0x26AB11) + byte(0x26AB12) + byte(0x26AB13) + byte(0x26AB14) +
               byte(0x26A8F0) + byte(0x26A8F1) + byte(0x26A8F2) + byte(0x26A8F3) + byte(0x26A8F4) + byte(0x26BFC8) +
               byte(0x26BFC9) + byte(0x26BFCA) + byte(0x26BFCB) + byte(0x26BFCC) + byte(0x26AA00) + byte(0x26AA01) +
               byte(0x26AA02) + byte(0x26AA03) + byte(0x26AA04) + byte(0x26BE30) + byte(0x26BE31) + byte(0x26BE32) +
               byte(0x26BE33) + byte(0x26BE34) + byte(0x26BDA8) + byte(0x26BDA9) + byte(0x26BDAA) + byte(0x26BDAB) +
               byte(0x26BDAC) + byte(0x26BC10) + byte(0x26BC11) + byte(0x26BC12) + byte(0x26BC13) + byte(0x26BC14) +
               byte(0x26B8E0) + byte(0x26B8E1) + byte(0x26B8E2) + byte(0x26B8E3) + byte(0x26B8E4) + byte(0x26C478) +
               byte(0x26C479) + byte(0x26C47A) + byte(0x26C47B) + byte(0x26C47C) + byte(0x26C47D) + byte(0x26C47E) +
               byte(0x26C47F) + byte(0x26C480) + byte(0x26C210) + byte(0x26C211) + byte(0x26C212) + byte(0x26C213) +
               byte(0x26C214) + byte(0x26C215) + byte(0x26C216) + byte(0x26C217) + byte(0x26C218) + byte(0x26C219) +
               byte(0x26C05C) + byte(0x26C069) + byte(0x26C076) + byte(0x26C481) + byte(0x26C482) + byte(0x26C483)) ==
               800 && measured(tally(180, 
                  once(byte(0x26ADB8) == 5), 
                  once(byte(0x26ADB9) == 5), 
                  once(byte(0x26ADBA) == 5), 
                  once(byte(0x26ADBB) == 5), 
                  once(byte(0x26ADBC) == 5), 
                  once(byte(0x26AF50) == 5), 
                  once(byte(0x26AF51) == 5), 
                  once(byte(0x26AF52) == 5), 
                  once(byte(0x26AF53) == 5), 
                  once(byte(0x26AF54) == 5), 
                  once(byte(0x26AB98) == 5), 
                  once(byte(0x26AB99) == 5), 
                  once(byte(0x26AB9A) == 5), 
                  once(byte(0x26AB9B) == 5), 
                  once(byte(0x26AB9C) == 5), 
                  once(byte(0x26AC20) == 5), 
                  once(byte(0x26AC21) == 5), 
                  once(byte(0x26AC22) == 5), 
                  once(byte(0x26AC23) == 5), 
                  once(byte(0x26AC24) == 5), 
                  once(byte(0x26A868) == 5), 
                  once(byte(0x26A869) == 5), 
                  once(byte(0x26A86A) == 5), 
                  once(byte(0x26A86B) == 5), 
                  once(byte(0x26A86C) == 5), 
                  once(byte(0x26A978) == 5), 
                  once(byte(0x26A979) == 5), 
                  once(byte(0x26A97A) == 5), 
                  once(byte(0x26A97B) == 5), 
                  once(byte(0x26A97C) == 5), 
                  once(byte(0x26AFD8) == 5), 
                  once(byte(0x26AFD9) == 5), 
                  once(byte(0x26AFDA) == 5), 
                  once(byte(0x26AFDB) == 5), 
                  once(byte(0x26AFDC) == 5), 
                  once(byte(0x26AA88) == 5), 
                  once(byte(0x26AA89) == 5), 
                  once(byte(0x26AA8A) == 5), 
                  once(byte(0x26AA8B) == 5), 
                  once(byte(0x26AA8C) == 5), 
                  once(byte(0x26BF40) == 5), 
                  once(byte(0x26BF41) == 5), 
                  once(byte(0x26BF42) == 5), 
                  once(byte(0x26BF43) == 5), 
                  once(byte(0x26BF44) == 5), 
                  once(byte(0x26B308) == 5), 
                  once(byte(0x26B309) == 5), 
                  once(byte(0x26B30A) == 5), 
                  once(byte(0x26B30B) == 5), 
                  once(byte(0x26B30C) == 5), 
                  once(byte(0x26B5B0) == 5), 
                  once(byte(0x26B5B1) == 5), 
                  once(byte(0x26B5B2) == 5), 
                  once(byte(0x26B5B3) == 5), 
                  once(byte(0x26B5B4) == 5), 
                  once(byte(0x26B418) == 5), 
                  once(byte(0x26B419) == 5), 
                  once(byte(0x26B41A) == 5), 
                  once(byte(0x26B41B) == 5), 
                  once(byte(0x26B41C) == 5), 
                  once(byte(0x26B390) == 5), 
                  once(byte(0x26B391) == 5), 
                  once(byte(0x26B392) == 5), 
                  once(byte(0x26B393) == 5), 
                  once(byte(0x26B394) == 5), 
                  once(byte(0x26B7D0) == 5), 
                  once(byte(0x26B7D1) == 5), 
                  once(byte(0x26B7D2) == 5), 
                  once(byte(0x26B7D3) == 5), 
                  once(byte(0x26B7D4) == 5), 
                  once(byte(0x26B280) == 5), 
                  once(byte(0x26B281) == 5), 
                  once(byte(0x26B282) == 5), 
                  once(byte(0x26B283) == 5), 
                  once(byte(0x26B284) == 5), 
                  once(byte(0x26B6C0) == 5), 
                  once(byte(0x26B6C1) == 5), 
                  once(byte(0x26B6C2) == 5), 
                  once(byte(0x26B6C3) == 5), 
                  once(byte(0x26B6C4) == 5), 
                  once(byte(0x26ACA8) == 5), 
                  once(byte(0x26ACA9) == 5), 
                  once(byte(0x26ACAA) == 5), 
                  once(byte(0x26ACAB) == 5), 
                  once(byte(0x26ACAC) == 5), 
                  once(byte(0x26B060) == 5), 
                  once(byte(0x26B061) == 5), 
                  once(byte(0x26B062) == 5), 
                  once(byte(0x26B063) == 5), 
                  once(byte(0x26B064) == 5), 
                  once(byte(0x26B1F8) == 5), 
                  once(byte(0x26B1F9) == 5), 
                  once(byte(0x26B1FA) == 5), 
                  once(byte(0x26B1FB) == 5), 
                  once(byte(0x26B1FC) == 5), 
                  once(byte(0x26AE40) == 5), 
                  once(byte(0x26AE41) == 5), 
                  once(byte(0x26AE42) == 5), 
                  once(byte(0x26AE43) == 5), 
                  once(byte(0x26AE44) == 5), 
                  once(byte(0x26B4A0) == 5), 
                  once(byte(0x26B4A1) == 5), 
                  once(byte(0x26B4A2) == 5), 
                  once(byte(0x26B4A3) == 5), 
                  once(byte(0x26B4A4) == 5), 
                  once(byte(0x26B528) == 5), 
                  once(byte(0x26B529) == 5), 
                  once(byte(0x26B52A) == 5), 
                  once(byte(0x26B52B) == 5), 
                  once(byte(0x26B52C) == 5), 
                  once(byte(0x26AD30) == 5), 
                  once(byte(0x26AD31) == 5), 
                  once(byte(0x26AD32) == 5), 
                  once(byte(0x26AD33) == 5), 
                  once(byte(0x26AD34) == 5), 
                  once(byte(0x26AB10) == 5), 
                  once(byte(0x26AB11) == 5), 
                  once(byte(0x26AB12) == 5), 
                  once(byte(0x26AB13) == 5), 
                  once(byte(0x26AB14) == 5), 
                  once(byte(0x26A8F0) == 5), 
                  once(byte(0x26A8F1) == 5), 
                  once(byte(0x26A8F2) == 5), 
                  once(byte(0x26A8F3) == 5), 
                  once(byte(0x26A8F4) == 5), 
                  once(byte(0x26BFC8) == 5), 
                  once(byte(0x26BFC9) == 5), 
                  once(byte(0x26BFCA) == 5), 
                  once(byte(0x26BFCB) == 5), 
                  once(byte(0x26BFCC) == 5), 
                  once(byte(0x26AA00) == 5), 
                  once(byte(0x26AA01) == 5), 
                  once(byte(0x26AA02) == 5), 
                  once(byte(0x26AA03) == 5), 
                  once(byte(0x26AA04) == 5), 
                  once(byte(0x26BE30) == 5), 
                  once(byte(0x26BE31) == 5), 
                  once(byte(0x26BE32) == 5), 
                  once(byte(0x26BE33) == 5), 
                  once(byte(0x26BE34) == 5), 
                  once(byte(0x26BDA8) == 5), 
                  once(byte(0x26BDA9) == 5), 
                  once(byte(0x26BDAA) == 5), 
                  once(byte(0x26BDAB) == 5), 
                  once(byte(0x26BDAC) == 5), 
                  once(byte(0x26BC10) == 5), 
                  once(byte(0x26BC11) == 5), 
                  once(byte(0x26BC12) == 5), 
                  once(byte(0x26BC13) == 5), 
                  once(byte(0x26BC14) == 5), 
                  once(byte(0x26B8E0) == 5), 
                  once(byte(0x26B8E1) == 5), 
                  once(byte(0x26B8E2) == 5), 
                  once(byte(0x26B8E3) == 5), 
                  once(byte(0x26B8E4) == 5), 
                  once(byte(0x26C478) == 1), 
                  once(byte(0x26C479) == 1), 
                  once(byte(0x26C47A) == 1), 
                  once(byte(0x26C47B) == 1), 
                  once(byte(0x26C47C) == 1), 
                  once(byte(0x26C47D) == 1), 
                  once(byte(0x26C47E) == 1), 
                  once(byte(0x26C47F) == 1), 
                  once(byte(0x26C480) == 1), 
                  once(byte(0x26C210) == 1), 
                  once(byte(0x26C211) == 1), 
                  once(byte(0x26C212) == 1), 
                  once(byte(0x26C213) == 1), 
                  once(byte(0x26C214) == 1), 
                  once(byte(0x26C215) == 1), 
                  once(byte(0x26C216) == 1), 
                  once(byte(0x26C217) == 1), 
                  once(byte(0x26C218) == 1), 
                  once(byte(0x26C219) == 1), 
                  once(byte(0x26C05C) == 1), 
                  once(byte(0x26C069) == 1), 
                  once(byte(0x26C076) == 1), 
                  once(byte(0x26C481) == 1), 
                  once(byte(0x26C482) == 1), 
                  once(byte(0x26C483) == 1)
              )) && byte(0x24EE60) == 16 && never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Big Foot Challenge (copy)", points = 5,
    description = "Defeat Big Foot without allowing him to land or breaking the middle boxes.",
    trigger = (byte(0x0DB228) > 7 || byte(0x0DB227) > 0) && byte(0x24EE60) == 16 && trigger_when(word(tbyte(0x24DCC0) +
               0xFFFFFF6A) == 0) && unless(once(word(tbyte(0x24DCC0) + 0xFFFFFFA4) == 1792)) && 
              unless(once((dword(tbyte(0x5BB404) + 0x000008) == 0) || (dword(tbyte(0x5BB404) + 0x000018) == 0) ||
               (dword(tbyte(0x5BB404) + 0x000044) == 0) || dword(tbyte(0x5BB404) + 0x000048) == 0)) &&
              (always_false() || (never(byte(0x24EE60) == 7) && never(byte(0x24EE64) != 50)))
)

achievement(
    title = "King Boom Boo Challenge (copy)", points = 5,
    description = "Defeat King Boom Boo without him noticing you coming from behind. (Don't Restart too often !)",
    trigger = (byte(0x0DB228) > 7 || byte(0x0DB227) > 0) && byte(0x24EE60) == 16 && once(word(tbyte(0x24DCC0) +
               0xFFFFFFA0) == 257) && trigger_when(word(tbyte(0x24DCC0) + 0xFFFFFF6A) == 0) && 
              unless(once(word(tbyte(0x24DCC0) + 0xFFFFFFA0) == 259)) &&
              (always_false() || (never(byte(0x24EE60) == 7) && never(byte(0x24EE64) != 53)))
)

achievement(
    title = "Hot Shot GG (copy)", points = 5,
    description = "Defeat Hot Shot without taking damage",
    trigger = never(prev(word(0x0DB270)) > word(0x0DB270)) && byte(0x24EE64) == 51 && word(0x24EE60) == 16 && 
              once(word(tbyte(0x24DCC0) + 0xFFFFFF6A) == 16512) && trigger_when(word(tbyte(0x24DCC0) + 0xFFFFFF6A) == 0) && 
              once(byte(0x0DB227) == 0 && byte(0x0DB228) == 0) && (byte(0x0DB227) > 0 || byte(0x0DB228) > 0)
)

achievement(
    title = "I Am the Eggman (copy)", points = 5,
    description = "Defeat Egg Golem as Eggman without letting it start the headbutt attack",
    trigger = byte(0x24EE64) == 57 && word(0x24EE60) == 16 && once(dword(tbyte(0x608F20) + 0x000014) == 1086324736) && 
              trigger_when(dword(tbyte(0x608F20) + 0x000014) == 0) && never(byte(tbyte(0x608F20) + 0x000004) == 9)
)

achievement(
    title = "Toward the Future (copy)", points = 10,
    description = "Complete the hero side boss attack without losing a life. (Failing, Return to Menu)",
    trigger = once(prev(byte(0x26A200)) == 0 && byte(0x26A200) == 12) && prev(byte(0x24EE60)) == 16 && 
              trigger_when((byte(0x24EE64) == 42 && byte(0x24EE60) == 8)) && never(byte(0x0DB26C) <
               prev(byte(0x0DB26C))) && never(byte(0x26A200) != 12)
)

achievement(
    title = "Living in the Dark (copy)", points = 10,
    description = "Complete the dark side boss attack without losing a life (Failing, Return to Menu)",
    trigger = once(prev(byte(0x26A200)) == 0 && byte(0x26A200) == 13) && prev(byte(0x24EE60)) == 16 && 
              trigger_when((byte(0x24EE64) == 42 && byte(0x24EE60) == 8)) && never(byte(0x0DB26C) <
               prev(byte(0x0DB26C))) && never(byte(0x26A200) != 13)
)

achievement(
    title = "Skating in the Jungle (copy)", points = 5,
    description = "Complete White Jungle mission 2 using only the control stick (no buttons)",
    trigger = byte(0x24EE64) == 4 && byte(0x24EE60) == 16 && byte(0x0DB22E) == 1 && trigger_when(dword(0x0DB270) >= 100) && 
              never(byte(0x24EEF0) > 0) && once(byte(0x0DB227) == 0) && once(byte(0x0DB228) == 0)
)

achievement(
    title = "Faster than Sonic (copy)", points = 5,
    description = "Defeat Sonic in the jungle in less than 20 seconds (story mode)",
    trigger = byte(0x24EE60) == 16 && byte(0x24EE64) == 19 && word(0xCFAE8A) == 0 && byte(0x0DB227) == 0 && 
              byte(0x0DB228) <= 20 && byte(0x26A200) == 2
)

achievement(
    title = "Sonic the Ring Hog (copy)", points = 5,
    description = "Get the ring counter to 999",
    trigger = word(0x0DB270) == 999 && word(0x24EE60) == 16
)

achievement(
    title = "Time Trial Beginner Karting (copy)", points = 5,
    description = "Achieve a new best time of under 2 minutes on the beginner kart race",
    trigger = byte(0x24EE64) == 71 && byte(0x24EE60) == 16 && byte(0x26C050) < 2 && (byte(0x26C050) !=
               prev(byte(0x26C050)) || byte(0x26C051) != prev(byte(0x26C051)) || byte(0x26C052) != prev(byte(0x26C052))) && 
              never(byte(0x0FBE0C) != prev(byte(0x0FBE0C)))
)

achievement(
    title = "Time Trial Standard Karting (copy)", points = 5,
    description = "Achieve a new best time of under 2 minutes 30 seconds on the standard kart race",
    trigger = byte(0x24EE64) == 71 && byte(0x24EE60) == 16 && (byte(0x26C05D) != prev(byte(0x26C05D)) || byte(0x26C05E)
               != prev(byte(0x26C05E)) || byte(0x26C05F) != prev(byte(0x26C05F))) && never(byte(0x0FBE0C) !=
               prev(byte(0x0FBE0C))) &&
              ((byte(0x26C05D) == 2 && byte(0x26C05E) < 30) ||
               (byte(0x26C05D) < 2))
)

achievement(
    title = "Time Trial Expert Karting (copy)", points = 5,
    description = "Achieve a new best time of under 3 minutes 20 seconds on the expert kart race",
    trigger = byte(0x24EE64) == 71 && byte(0x24EE60) == 16 && (byte(0x26C06A) != prev(byte(0x26C06A)) || byte(0x26C06B)
               != prev(byte(0x26C06B)) || byte(0x26C06C) != prev(byte(0x26C06C))) && never(byte(0x0FBE0C) !=
               prev(byte(0x0FBE0C))) &&
              ((byte(0x26C06A) == 3 && byte(0x26C06B) < 20) ||
               (byte(0x26C06A) < 3))
)

achievement(
    title = "Sonic Chao Explorer (copy)", points = 5,
    description = "As Sonic, break all chao containers in one session.",
    trigger = measured(tally(18, 
                  once(byte(0x24EE64) == 13 && word(0x2533FA) == 36), 
                  once(byte(0x24EE64) == 13 && word(0x252AAA) == 36), 
                  once(byte(0x24EE64) == 13 && word(0x252ABA) == 36), 
                  once(byte(0x24EE64) == 10 && word(0x2523EA) == 36), 
                  once(byte(0x24EE64) == 10 && word(0x251EDA) == 36), 
                  once(byte(0x24EE64) == 10 && word(0x25251A) == 36), 
                  once(byte(0x24EE64) == 3 && word(0x251D7A) == 36), 
                  once(byte(0x24EE64) == 3 && word(0x251F5A) == 36), 
                  once(byte(0x24EE64) == 3 && word(0x251A0A) == 36), 
                  once(byte(0x24EE64) == 28 && word(0x25200A) == 36), 
                  once(byte(0x24EE64) == 28 && word(0x2526BA) == 36), 
                  once(byte(0x24EE64) == 28 && word(0x2518EA) == 36), 
                  once(byte(0x24EE64) == 22 && word(0x252B2A) == 36), 
                  once(byte(0x24EE64) == 22 && word(0x25294A) == 36), 
                  once(byte(0x24EE64) == 22 && word(0x251ACA) == 36), 
                  once(byte(0x24EE64) == 30 && word(0x2529CA) == 36), 
                  once(byte(0x24EE64) == 30 && word(0x2522DA) == 36), 
                  once(byte(0x24EE64) == 30 && word(0x2516CA) == 36)
              )) && unless(byte(0x24EE60) != 16)
)

achievement(
    title = "Tails Chao Explorer (copy)", points = 5,
    description = "As Tails, break all chao containers in one session.",
    trigger = measured(tally(11, 
                  once(byte(0x24EE64) == 9 && word(0x2515AA) == 36), 
                  once(byte(0x24EE64) == 9 && word(0x2525CA) == 36), 
                  once(byte(0x24EE64) == 9 && word(0x251C4A) == 36), 
                  once(byte(0x24EE64) == 17 && word(0x25166A) == 36), 
                  once(byte(0x24EE64) == 17 && word(0x2530BA) == 36), 
                  once(byte(0x24EE64) == 17 && word(0x251E5A) == 36), 
                  once(byte(0x24EE64) == 23 && word(0x2515FA) == 36), 
                  once(byte(0x24EE64) == 23 && word(0x25249A) == 36), 
                  once(byte(0x24EE64) == 24 && word(0x25212A) == 36), 
                  once(byte(0x24EE64) == 24 && word(0x2515FA) == 36), 
                  once(byte(0x24EE64) == 24 && word(0x2539AA) == 36)
              )) && unless(byte(0x24EE60) != 16)
)

achievement(
    title = "Knuckles Chao Explorer (copy)", points = 5,
    description = "As Knuckles, break all chao containers in one session.",
    trigger = measured(tally(15, 
                  once(byte(0x24EE64) == 16 && word(0x2522DA) == 36), 
                  once(byte(0x24EE64) == 16 && word(0x2522DA) == 36), 
                  once(byte(0x24EE64) == 16 && word(0x25306A) == 36), 
                  once(byte(0x24EE64) == 5 && word(0x2526AA) == 36), 
                  once(byte(0x24EE64) == 5 && word(0x25276A) == 36), 
                  once(byte(0x24EE64) == 5 && word(0x25277A) == 36), 
                  once(byte(0x24EE64) == 7 && word(0x251A2A) == 36), 
                  once(byte(0x24EE64) == 7 && word(0x25224A) == 36), 
                  once(byte(0x24EE64) == 7 && word(0x251E1A) == 36), 
                  once(byte(0x24EE64) == 25 && word(0x25337A) == 36), 
                  once(byte(0x24EE64) == 25 && word(0x25338A) == 36), 
                  once(byte(0x24EE64) == 25 && word(0x251D4A) == 36), 
                  once(byte(0x24EE64) == 32 && word(0x252ECA) == 36), 
                  once(byte(0x24EE64) == 32 && word(0x252EBA) == 36), 
                  once(byte(0x24EE64) == 32 && word(0x252EAA) == 36)
              )) && unless(byte(0x24EE60) != 16)
)

achievement(
    title = "Shadow Chao Explorer (copy)", points = 5,
    description = "Break all of the Chao containers on Shadow stages (Single Session)",
    trigger = never(byte(0x0FBE0C) != prev(byte(0x0FBE0C))) && measured(tally(12, 
                  once(byte(0x2521CA) == 36), 
                  once(byte(0x25225A) == 36), 
                  once(byte(0x251B7A) == 36), 
                  once(byte(0x2527DA) == 36), 
                  once(byte(0x253A2A) == 36), 
                  once(byte(0x25353A) == 36), 
                  once(byte(0x251F8A) == 36), 
                  once(byte(0x25186A) == 36), 
                  once(byte(0x251BCA) == 36), 
                  once(byte(0x252A7A) == 36), 
                  once(byte(0x252AFA) == 36), 
                  once(byte(0x252D3A) == 36)
              ))
)

achievement(
    title = "Eggman Chao Explorer (copy)", points = 5,
    description = "Break all of the Chao containers on Eggman stages (Single Session)",
    trigger = never(byte(0x0FBE0C) != prev(byte(0x0FBE0C))) && measured(tally(15, 
                  once(byte(0x2527CA) == 36), 
                  once(byte(0x25250A) == 36), 
                  once(byte(0x251C1A) == 36), 
                  once(byte(0x2515CA) == 36), 
                  once(byte(0x25161A) == 36), 
                  once(byte(0x251C6A) == 36), 
                  once(byte(0x251A3A) == 36), 
                  once(byte(0x252D1A) == 36), 
                  once(byte(0x251AAA) == 36), 
                  once(byte(0x25303A) == 36), 
                  once(byte(0x252ADA) == 36), 
                  once(byte(0x252AEA) == 36), 
                  once(byte(0x2542EA) == 36), 
                  once(byte(0x253C1A) == 36), 
                  once(byte(0x2536EA) == 36)
              ))
)

achievement(
    title = "Rouge Chao Explorer (copy)", points = 5,
    description = "Break all of the Chao containers on Rouge stages (Single Session)",
    trigger = never(byte(0x0FBE0C) != prev(byte(0x0FBE0C))) && measured(tally(12, 
                  once(byte(0x25268A) == 36), 
                  once(byte(0x25267A) == 36), 
                  once(byte(0x25269A) == 36), 
                  once(byte(0x25245A) == 36), 
                  once(byte(0x2515BA) == 36), 
                  once(byte(0x25262A) == 36), 
                  once(byte(0x2533BA) == 36), 
                  once(byte(0x25366A) == 36), 
                  once(byte(0x2517DA) == 36), 
                  once(byte(0x2538EA) == 36), 
                  once(byte(0x2538FA) == 36), 
                  once(byte(0x2519DA) == 36)
              ))
)

achievement(
    title = "Cannon's Core Chao Explorer (copy)", points = 5,
    description = "Break all of the Chao containers on Cannon's Core (Single Session)",
    trigger = never(byte(0x0FBE0C) != prev(byte(0x0FBE0C))) && measured(tally(3, 
                  once(byte(0x25205A) == 36), 
                  once(byte(0x25173A) == 36), 
                  once(byte(0x251A0A) == 36)
              )) && unless((byte(0x24EE64) < 34 || byte(0x24EE64) > 38))
)
