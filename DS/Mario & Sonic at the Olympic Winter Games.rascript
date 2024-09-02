// Mario & Sonic at the Olympic Winter Games
// #ID = 14813

achievement(
    title = "Heatin' up the Winter Games", points = 2,
    description = "Unlock the Stardust Shoes and complete your first mission",
    id = 294525, badge = "326584", published = "27.02.2023 18:24:18", modified = "10.03.2023 08:46:31",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Child's Play", points = 5, type="progression",
    description = "Defeat Bowser Jr. in Frostown",
    id = 294497, badge = "326556", published = "27.02.2023 18:24:08", modified = "10.03.2023 08:46:31",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Bullying Parade", points = 10,
    description = "As Mario, defeat Bowser Jr. in Frostown while only using the L Button at the Start and in the U-Turns",
    id = 294557, badge = "326616", published = "27.02.2023 18:24:29", modified = "29.06.2023 19:18:42",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 13) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 0) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((dword(0x0BE774) >= 16384 && dword(0x0BE774) <= 742912 && byte(0x0AF8AC) == 0 && bit1(0x0AFE81) == 1)) &&
              never((dword(0x0BE774) >= 1575424 && dword(0x0BE774) <= 2240000 && byte(0x0AF8AC) == 0 && bit1(0x0AFE81) == 1)) &&
              never((dword(0x0BE774) >= 2994944 && dword(0x0BE774) <= 3707154 && byte(0x0AF8AC) == 0 && bit1(0x0AFE81) == 1)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "A Comet across the Sky", points = 2,
    description = "Unlock the Comet Skies",
    id = 294526, badge = "326585", published = "27.02.2023 18:24:18", modified = "10.03.2023 08:46:32",
    trigger = dword(0x3D9A20) == 36 && prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit1(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Brain Breaker", points = 5,
    description = "Unlock Tails in Frostown",
    id = 294498, badge = "326557", published = "27.02.2023 18:24:08", modified = "10.03.2023 08:46:32",
    trigger = dword(0x3D9A20) == 36 && prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit3(0x0E3785) > prev(bit3(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "I have standards, y'know?", points = 10,
    description = "As Sonic, defeat Tails in Frostown without getting anything worse than Great",
    id = 294558, badge = "326617", published = "27.02.2023 18:24:30", modified = "29.06.2023 19:18:43",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 2) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 10) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((prev(byte(0x0E6DAF)) == 84 && byte(0x0E6DAF) == 0 && byte(0x0C2B68) < 2 &&
                  tbyte(tbyte(0x0AF628) + 0x00022D) == 0)
              ) &&
              never((prev(byte(0x0E6DAF)) == 93 && byte(0x0E6DAF) == 0 && byte(0x0C2B70) < 2 &&
                  tbyte(tbyte(0x0AF628) + 0x00022D) == 0)
              ) && once(dword(0x3D9A20) == 4 && prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Ghostbuster in Town", points = 5,
    description = "Unlock Luigi in Frostown",
    id = 294499, badge = "326558", published = "27.02.2023 18:24:09", modified = "10.03.2023 08:46:33",
    trigger = dword(0x3D9A20) == 36 && prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit1(0x0E3784) > prev(bit1(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Take the L", points = 10,
    description = "As Tails, defeat Luigi in Frostown without boosting",
    id = 294559, badge = "326618", published = "27.02.2023 18:24:30", modified = "29.06.2023 19:18:43",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 6) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 11) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(prev(dword(0x0D0494)) == 1) &&
              once(dword(0x3D9A20) == 11 && prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Chance's of Winning: Negative", points = 5, type="progression",
    description = "Defeat Eggman Nega in Frostown",
    id = 294501, badge = "326560", published = "27.02.2023 18:24:09", modified = "10.03.2023 08:46:34",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "You Rushed your Score", points = 10,
    description = "As Sonic, defeat Eggman Nega in Frostown in the Ski-Jumping LH portion with at least 170k Points",
    id = 294589, badge = "326648", published = "27.02.2023 18:24:41", modified = "29.06.2023 19:18:54",
    trigger = never(byte(0x0AF915) == 6) && never((dword(0x3D9698) != 2 && dword(0x3D9698) != 6)) &&
              never(dword(0x3D96D4) != 3) && never(byte(0x3D969C) != 10) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(dword(0x3D9A20) != 4 && dword(0x3D9A20) != 11 && prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((once(prev(dword(0x0C343C)) >= 170000) && prev(dword(0x3D9698)) == 2 && dword(0x3D9698) == 6))
)

achievement(
    title = "Negative Time", points = 10,
    description = "As Sonic, defeat Eggman Nega in Frostown in the Cross-Country portion in under 15 minutes",
    id = 294561, badge = "326620", published = "27.02.2023 18:24:31", modified = "29.06.2023 19:18:43",
    trigger = never(byte(0x0AF915) == 6) && never((dword(0x3D9698) != 2 && dword(0x3D9698) != 6)) &&
              never(dword(0x3D96D4) != 3) && never(byte(0x3D969C) != 10) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((once(dword(0x0D4414) == 0) && dword(0x0D4414) > 27000)) &&
              once(dword(0x3D9A20) != 4 && dword(0x3D9A20) != 11 && prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Hard as a Rock", points = 5,
    description = "Unlock Knuckles in Frostown",
    id = 294500, badge = "326559", published = "27.02.2023 18:24:09", modified = "10.03.2023 08:46:35",
    trigger = dword(0x3D9A20) == 36 && prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit4(0x0E3785) > prev(bit4(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Knock! Knock! It's your broken knuckle!", points = 10,
    description = "As Luigi, defeat Knuckles in Frostown without missing any shots",
    id = 294560, badge = "326619", published = "27.02.2023 18:24:30", modified = "29.06.2023 19:18:43",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 7) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 1) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((byte(0x0CF308) == prev(byte(0x0CF308)) && byte(0x0CF309) == prev(byte(0x0CF309)) &&
                  byte(0x0CF30A) == prev(byte(0x0CF30A)) && byte(0x0CF30B) == prev(byte(0x0CF30B)) &&
                  byte(0x0CF30C) == prev(byte(0x0CF30C)) && byte(0x0CF16C) > prev(byte(0x0CF16C)))
              ) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Frostown's Items", points = 10,
    description = "Find all obtainable Items in Frostown",
    id = 294537, badge = "326596", published = "27.02.2023 18:24:22", modified = "19.06.2023 14:28:22",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E0))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E0))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E0))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E1))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E1))) +
              (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E1))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E2))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E2))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E3))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E3))) +
              (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E4))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E5))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E5))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E5))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E5))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E6))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E6))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E7))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E8))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E8))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E9))) + (bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EA)) +
              (bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EB)) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007EC))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000890))) - (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007EC)))) < 38 &&
              measured((bit1(0x0E379C) + bit4(0x0E379C) + bit7(0x0E379C) + bit2(0x0E379D) + bit3(0x0E379D) +
                  bit7(0x0E379D) + bit1(0x0E379E) + bit4(0x0E379E) + bit2(0x0E379F) + bit7(0x0E379F) + bit3(0x0E37A0) +
                  bit1(0x0E37A1) + bit4(0x0E37A1) + bit5(0x0E37A1) + bit7(0x0E37A1) + bit1(0x0E37A2) + bit4(0x0E37A2) +
                  bit1(0x0E37A3) + bit1(0x0E37A4) + bit2(0x0E37A4) + bit6(0x0E37A5) + bit3(0x0E37A6) + bitcount(0x0E37A7) +
                  bitcount(0x0E37A8) + bit1(0x0E3834) - bit7(0x0E37A8)) == 38,
                  when=byte(0x0E3599) == 0 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Frostown's Mission", points = 10,
    description = "Complete all Missions in Frostown on any Rank",
    id = 294543, badge = "326602", published = "27.02.2023 18:24:24", modified = "01.07.2023 08:41:43",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000744))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000744))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000745))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000745))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074D))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x000750))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000750))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000751))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000751))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000754))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000754))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000755))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000755))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075B))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075C))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000744))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000744))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000745))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000745))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074D))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000750))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000750))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000751))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000751))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000754))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000754))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000755))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000755))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075B))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075C))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)))) < 20 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000744)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000744)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000745)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000745)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074C)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074D)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000750)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000750)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000751)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000751)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000754)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000754)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000755)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075C)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075D)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000744)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000744)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000745)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000745)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074C)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074D)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000750)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000750)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000751)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000751)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000754)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000754)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000755)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075C)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075D))) == 20, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Frostown", points = 10,
    description = "Complete all Missions in Frostown on Gold Rank",
    id = 294544, badge = "326603", published = "27.02.2023 18:24:25", modified = "01.07.2023 08:41:43",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000744)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000744)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000745)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000745)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074D)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000750)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000750)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000751)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000751)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000754)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000754)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075B)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00075C)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) / 4)) < 20 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000744) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000744) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000745) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x000745) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074C) / 4) + (high4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x00074C) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074D) / 4) + (high4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x00074D) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000750) / 4) +
                  (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000750) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000751) / 4)
                  + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000751) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000754) /
                  4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000754) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755)
                  / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000755) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075B) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075C) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x00075C) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D) / 4)) == 20,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "BLOW IT UP!", points = 2,
    description = "Unlock the Battle Snow Machine",
    id = 294527, badge = "326586", published = "27.02.2023 18:24:18", modified = "10.03.2023 08:46:36",
    trigger = dword(0x3D9A20) == 36 && prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit2(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Frozen Peaches", points = 5,
    description = "Unlock Peach in Sparkleton",
    id = 294502, badge = "326561", published = "27.02.2023 18:24:09", modified = "10.03.2023 08:46:37",
    trigger = dword(0x3D9A20) == 36 && prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit2(0x0E3784) > prev(bit2(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Complicated Love", points = 10,
    description = "As Mario, defeat Peach in Sparkleton without taking more than half the damage",
    id = 294562, badge = "326621", published = "27.02.2023 18:24:31", modified = "29.06.2023 19:18:44",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 26) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 0) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(dword(0x0C8470) < 1638400) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Metal Head", points = 5, type="progression",
    description = "Defeat Metal Sonic in Sparkleton",
    id = 294496, badge = "326650", published = "27.02.2023 18:23:30", modified = "10.03.2023 08:46:38",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Scrap Metal", points = 10,
    description = "As Peach, defeat Metal Sonic in Sparkleton with a difference of at least 500 meters",
    id = 294563, badge = "326622", published = "27.02.2023 18:24:31", modified = "29.06.2023 19:18:44",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 3) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 2) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((dword(0x0C755C) - dword(0x0C8FB0)) >= 20480) &&
                  prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Rodeo dancing on the sleigh", points = 2,
    description = "Unlock the Rodeo Bobsleigh",
    id = 294528, badge = "326587", published = "27.02.2023 18:24:19", modified = "10.03.2023 08:46:38",
    trigger = dword(0x3D9A20) == 36 && prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit4(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Pink Party", points = 5,
    description = "Unlock Amy in Sparkleton",
    id = 294503, badge = "326562", published = "27.02.2023 18:24:10", modified = "10.03.2023 08:46:39",
    trigger = dword(0x3D9A20) == 36 && prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit5(0x0E3785) > prev(bit5(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Pink Problems", points = 10,
    description = "As Tails, defeat Amy in Sparkleton without shooting any golden targets",
    id = 294564, badge = "326623", published = "27.02.2023 18:24:32", modified = "19.10.2023 14:04:48",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 8) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 11) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((dword(0x0C5B78) == 4294967295 && dword(0x0C5B7C) == 0 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 500)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 1 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 1000)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 2 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 1500)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 3 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 2000)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 4 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 2500)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 5 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 3000)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 6 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 3500)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 7 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 4000)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 8 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 4500)) &&
              never((dword(0x0C5B78) <= 1 && dword(0x0C5B7C) == 9 && (dword(0x0CA32C) - prev(dword(0x0CA32C))) == 5000)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Bullseye!", points = 2,
    description = "Unlock the Shooting Rifle",
    id = 294529, badge = "326588", published = "27.02.2023 18:24:19", modified = "10.03.2023 08:46:39",
    trigger = dword(0x3D9A20) == 36 && prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit3(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0
)

achievement(
    title = "Bone Breaker", points = 5, type="progression",
    description = "Defeat Dry Bowser in Sparkleton",
    id = 294504, badge = "326563", published = "27.02.2023 18:24:10", modified = "10.03.2023 08:46:40",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Knockin' down the dry Bones", points = 10,
    description = "As Knuckles, defeat Dry Bowser in Sparkleton without using more than 2 shrooms",
    id = 294565, badge = "326624", published = "27.02.2023 18:24:32", modified = "19.10.2023 14:04:49",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 1) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 12) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(repeated(3, once(dword(0x0BC9C8) == 0) && prev(dword(0x0BC9C8)) > dword(0x0BC9C8))) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Sparkleton's Items", points = 10,
    description = "Find all obtainable Items in Sparkleton",
    id = 294538, badge = "326597", published = "27.02.2023 18:24:22", modified = "10.03.2023 08:46:40",
    trigger = ((prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000800))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000800))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000800))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x000801))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000801))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000801))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000801))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000801))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000801))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000802))) +
              (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000802))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000802))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000802))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000803))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000803))) +
              (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000804))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000804))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000804))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x000804))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x000805))) +
              (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x000806))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x000807))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000807))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000807))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000807))) + (bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000890)) - (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000805)))) < 39 &&
              measured((bit4(0x0E37BC) + bit5(0x0E37BC) + bit7(0x0E37BC) + bit0(0x0E37BD) + bit1(0x0E37BD) +
                  bit2(0x0E37BD) + bit4(0x0E37BD) + bit5(0x0E37BD) + bit6(0x0E37BD) + bit1(0x0E37BE) + bit3(0x0E37BE) +
                  bit5(0x0E37BE) + bit7(0x0E37BE) + bit2(0x0E37BF) + bit6(0x0E37BF) + bit0(0x0E37C0) + bit1(0x0E37C0) +
                  bit4(0x0E37C0) + bit7(0x0E37C0) + bitcount(0x0E37C1) + bitcount(0x0E37C2) + bit0(0x0E37C3) +
                  bit1(0x0E37C3) + bit2(0x0E37C3) + bit3(0x0E37C3) + bit5(0x0E3834) - bit0(0x0E37C1)) == 39,
                  when=byte(0x0E3599) == 3 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Sparkleton's Mission", points = 10,
    description = "Complete all Missions in Sparkleton on any Rank",
    id = 294545, badge = "326604", published = "27.02.2023 18:24:25", modified = "01.07.2023 08:41:44",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000742))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000742))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000743))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000743))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000746))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000746))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000747))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000747))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x00074E))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074F))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000752))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000752))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000753))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000753))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000742))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000742))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000743))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000743))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000746))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000746))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000747))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000747))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074F))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000752))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000752))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000753))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000753)))) < 16 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000742)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000742)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000743)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000743)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000746)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000746)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000747)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000747)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074E)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074F)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000752)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000752)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000753)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000753)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000742)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000742)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000743)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000743)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000746)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000746)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000747)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000747)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074E)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074F)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000752)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000752)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000753)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000753))) == 16, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Sparkleton", points = 10,
    description = "Complete all Missions in Sparkleton on Gold Rank",
    id = 294546, badge = "326605", published = "27.02.2023 18:24:26", modified = "01.07.2023 08:41:44",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000742)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000742)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000743)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000746)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000746)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000747)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00074E)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074F)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000752)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000752)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000753)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000753)) / 4)) < 16 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000742) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000742) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000743) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x000743) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000746) / 4) + (high4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x000746) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000747) / 4) + (high4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x000747) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E) / 4) +
                  (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074E) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F) / 4)
                  + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074F) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000752) /
                  4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000752) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000753)
                  / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000753) / 4)) == 16,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "The Spark in my Eyes", points = 2,
    description = "Unlock Spark Luge",
    id = 294530, badge = "326589", published = "27.02.2023 18:24:19", modified = "10.03.2023 08:46:42",
    trigger = dword(0x3D9A20) == 36 && prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit5(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Green Foe", points = 5,
    description = "Unlock Yoshi in Polastraits",
    id = 294505, badge = "326564", published = "27.02.2023 18:24:10", modified = "10.03.2023 08:46:42",
    trigger = dword(0x3D9A20) == 36 && prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit4(0x0E3784) > prev(bit4(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Safety Slide at 150km/h and above", points = 10,
    description = "As Amy, defeat Yoshi in Polastraits without ever bonking against the wall",
    id = 294566, badge = "326625", published = "27.02.2023 18:24:33", modified = "19.10.2023 14:04:49",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 21) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 13) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(dword(0x0D5C98) == 1) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "I ain't scared of you", points = 5, type="progression",
    description = "Defeat King Boo in Polastraits",
    id = 294506, badge = "326565", published = "27.02.2023 18:24:11", modified = "10.03.2023 08:46:43",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "All it takes to make a grown Boo cry", points = 10,
    description = "As Luigi, defeat King Boo in Polastraits without missing any goals",
    id = 294567, badge = "326626", published = "27.02.2023 18:24:33", modified = "19.10.2023 14:04:50",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 0) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 1) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((dword(0x0D3480) - dword(0x0D3484)) != 0) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Who can I beat up with this?", points = 2,
    description = "Unlock Fighter's Stick",
    id = 294531, badge = "326590", published = "27.02.2023 18:24:20", modified = "10.03.2023 08:46:43",
    trigger = dword(0x3D9A20) == 36 && prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit7(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Time Travel Shenanigans", points = 5,
    description = "Defeat Silver and Blaze in Polastraits",
    id = 294507, badge = "326566", published = "27.02.2023 18:24:11", modified = "21.03.2023 07:45:30",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "You had enough time to learn the basics", points = 10,
    description = "As Sonic and Knuckles, defeat Silver and Blaze in Polastraits with a difference of at least 6 goals",
    id = 294568, badge = "326627", published = "27.02.2023 18:24:33", modified = "19.10.2023 14:04:50",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 22) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 10 && byte(0x3D969C) != 12)) &&
              never((byte(0x3D96A0) != 10 && byte(0x3D96A0) != 12)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((prev(dword(0x0DBE40)) + prev(dword(0x0DBE44)) + 240 - prev(dword(0x0DBE34)) -
                  prev(dword(0x0DBE38))) >= 246) && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Faster than a Blitz!", points = 2,
    description = "Unlock Blitz Skeleton",
    id = 294532, badge = "326591", published = "27.02.2023 18:24:20", modified = "10.03.2023 08:46:44",
    trigger = dword(0x3D9A20) == 36 && prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000714)) == 0 && bit6(0x0E3788) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "You never learn, do ya?", points = 5, type="progression",
    description = "Defeat Eggman Nega in Polastraits",
    id = 294508, badge = "326567", published = "27.02.2023 18:24:11", modified = "10.03.2023 08:46:45",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Gettin' my Revenge", points = 10,
    description = "As Yoshi, defeat Eggman Nega in Polastraits without ever bonking against the wall",
    id = 294570, badge = "326629", published = "27.02.2023 18:24:34", modified = "19.10.2023 14:04:50",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 20) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 4) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(dword(0x0D5C98) == 1) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Smells kinda rotten here", points = 5,
    description = "Defeat Wario and Waluigi in Polastraits",
    id = 294509, badge = "326568", published = "27.02.2023 18:24:12", modified = "10.03.2023 08:46:45",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Cut them Corners!", points = 10,
    description = "As Luigi and Tails, defeat Wario and Waluigi in Polastraits in under a minute",
    id = 294569, badge = "326628", published = "27.02.2023 18:24:34", modified = "19.10.2023 14:04:52",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 18) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 1 && byte(0x3D969C) != 11)) &&
              never((byte(0x3D96A0) != 1 && byte(0x3D96A0) != 11)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((once(dword(0x0E2010) == 0) && dword(0x0E2010) >= 1800)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Polastraits's Items", points = 10,
    description = "Find all obtainable Items in Polastraits",
    id = 294539, badge = "326598", published = "27.02.2023 18:24:22", modified = "20.06.2023 15:24:47",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007ED))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007ED))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007ED))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007ED))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EE))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EE))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007EE))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EE))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007EE))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EF))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EF))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007EF))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EF))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F0))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F0))) +
              (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F1))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F1))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F1))) + (prev(bitcount((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F2))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F3))) +
              (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F4))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F5))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F5))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F5))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F5))) +
              (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F5))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) +
              0x000890)))) < 48 &&
              measured((bit1(0x0E37A9) + bit4(0x0E37A9) + bit5(0x0E37A9) + bit7(0x0E37A9) + bit1(0x0E37AA) +
                  bit2(0x0E37AA) + bit4(0x0E37AA) + bit5(0x0E37AA) + bit7(0x0E37AA) + bit3(0x0E37AB) + bit5(0x0E37AB) +
                  bit6(0x0E37AB) + bit7(0x0E37AB) + bit6(0x0E37AC) + bit7(0x0E37AC) + bit0(0x0E37AD) + bit1(0x0E37AD) +
                  bit7(0x0E37AD) + bitcount(0x0E37AE) + bitcount(0x0E37AF) + bitcount(0x0E37B0) + bit0(0x0E37B1) +
                  bit1(0x0E37B1) + bit2(0x0E37B1) + bit3(0x0E37B1) + bit4(0x0E37B1) + bit7(0x0E3834)) == 48,
                  when=byte(0x0E3599) == 1 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Polastraits's Mission", points = 10,
    description = "Complete all Missions in Polastraits on any Rank",
    id = 294547, badge = "326606", published = "27.02.2023 18:24:26", modified = "01.07.2023 08:41:45",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000740))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000740))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000741))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000741))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000765))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000766))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000766))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000767))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000769))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076B))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x00076C))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076D))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x00076E))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000740))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000740))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000741))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000741))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000765))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000766))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000766))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000767))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000769))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076B))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x00076C))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076D))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x00076E))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)))) < 20 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000740)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000740)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000741)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000741)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000766)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000766)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000767)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000769)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076A)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076B)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076C)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076D)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076E)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076F)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000740)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000740)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000741)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000741)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000766)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000766)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000767)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000769)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076A)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076B)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076C)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076D)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076E)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076F))) == 20, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Polastraits", points = 10,
    description = "Complete all Missions in Polastraits on Gold Rank",
    id = 294548, badge = "326607", published = "27.02.2023 18:24:26", modified = "01.07.2023 08:41:47",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000740)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000740)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000741)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000766)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000766)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000769)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076B)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00076C)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00076D)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00076E)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) / 4)) < 20 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000740) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000740) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000741) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x000741) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000765) / 4) + (low4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x000766) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000766) / 4) + (low4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x000767) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769) / 4) +
                  (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076A) / 4)
                  + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076B) /
                  4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076C)
                  / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076D) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00076D) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076E) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x00076E) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F) / 4)) == 20,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "This is drifting out of my control-ler", points = 2,
    description = "Unlock Drift Board",
    id = 294533, badge = "326592", published = "27.02.2023 18:24:20", modified = "10.03.2023 08:46:47",
    trigger = dword(0x3D9A20) == 36 && prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000715)) == 0 && bit0(0x0E3789) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Paint the Olympics Black", points = 5,
    description = "Unlock Shadow in Cubyrinth",
    id = 294510, badge = "326569", published = "27.02.2023 18:24:12", modified = "10.03.2023 08:46:47",
    trigger = dword(0x3D9A20) == 36 && prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit6(0x0E3785) > prev(bit6(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Making his life a lot worse", points = 10,
    description = "As Peach, defeat Shadow in Cubyrinth without getting any items",
    id = 294571, badge = "326630", published = "27.02.2023 18:24:34", modified = "19.10.2023 14:04:52",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 5) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 2) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((prev(dword(0x0CE710)) == 27 && dword(0x0CE710) != 27)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "There was no way he wouldn't lose", points = 5, type="progression",
    description = "Defeat Jet in Cubyrinth",
    id = 294511, badge = "326570", published = "27.02.2023 18:24:12", modified = "10.03.2023 08:46:48",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "No Sweat!", points = 10,
    description = "As Sonic, defeat Jet in Cubyrinth with at least double the Points",
    id = 294572, badge = "326631", published = "27.02.2023 18:24:35", modified = "19.10.2023 14:04:52",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 10) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 10) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((dword(0x0C1814) >= 15050 && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5)
              )
)

achievement(
    title = "The Future is in our hand", points = 5,
    description = "Unlock Silver and Blaze in Cubyrinth",
    id = 294512, badge = "326571", published = "27.02.2023 18:24:13", modified = "10.03.2023 08:46:49",
    trigger = dword(0x3D9A20) == 36 && prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000712)) == 0 &&
              bit1(0x0E3786) > prev(bit1(0x0E3786)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Dream of some goals and you may get some Absolution", points = 10,
    description = "As Knuckes and Shadow, defeat Silver and Blaze in Cubyrinth with a difference of at least 200 points",
    id = 294573, badge = "326632", published = "27.02.2023 18:24:35", modified = "19.10.2023 14:04:53",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 23) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 12 && byte(0x3D969C) != 14)) &&
              never((byte(0x3D96A0) != 12 && byte(0x3D96A0) != 14)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((prev(dword(0x0DBE40)) + prev(dword(0x0DBE44)) + 3840 - prev(dword(0x0DBE34)) -
                  prev(dword(0x0DBE38))) >= 4040) && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Slip and Sleigh through the Planet", points = 2,
    description = "Unlock Planetary Bobsleigh",
    id = 294534, badge = "326593", published = "27.02.2023 18:24:21", modified = "10.03.2023 08:46:49",
    trigger = dword(0x3D9A20) == 36 && prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000715)) == 0 && bit1(0x0E3789) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0
)

achievement(
    title = "Bringing Big Bullet Bill to Tears", points = 5, type="progression",
    description = "Defeat Big Bullet Bill in Cubyrinth",
    id = 294513, badge = "326572", published = "27.02.2023 18:24:13", modified = "10.03.2023 08:46:50",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Big Bullet Bill's Big Bully Broblem", points = 10,
    description = "As Silver and Blaze, defeat Big Bullet Bill in Cubyrinth without losing half of your health",
    id = 294574, badge = "326633", published = "27.02.2023 18:24:36", modified = "19.10.2023 14:04:54",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 19) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 17 && byte(0x3D969C) != 18)) &&
              never((byte(0x3D96A0) != 17 && byte(0x3D96A0) != 18)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((prev(dword(0x0D5F0C)) <= 100 && prev(dword(0x0D5F0C)) > 50 && dword(0x0D5F0C) <= 50)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Cubyrinth's Items", points = 10,
    description = "Find all obtainable Items in Cubyrinth",
    id = 294540, badge = "326599", published = "27.02.2023 18:24:23", modified = "20.06.2023 15:24:34",
    trigger = ((prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000807))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000807))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000807))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x000808))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000808))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000808))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) +
              0x000808))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x000809))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x00080A))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x00080A))) +
              (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x00080A))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x00080B))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00080B))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x00080B))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00080C))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00080C))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) +
              0x00080C))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00080D))) + (prev(bit3((dword(0x3BDE08) &
              0xFFFFFF) + 0x00080D))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x00080D))) +
              (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x00080E))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x00080F))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0E37CB))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x00080F))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x00080F))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00080F))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x000810))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000810))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000810))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000810))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000891))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000891))) - (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000809)))) < 38 &&
              measured((bit4(0x0E37C3) + bit5(0x0E37C3) + bit6(0x0E37C3) + bit0(0x0E37C4) + bit1(0x0E37C4) +
                  bit6(0x0E37C4) + bit7(0x0E37C4) + bitcount(0x0E37C5) + bit0(0x0E37C6) + bit3(0x0E37C6) + bit4(0x0E37C6) +
                  bit0(0x0E37C7) + bit1(0x0E37C7) + bit2(0x0E37C7) + bit2(0x0E37C8) + bit5(0x0E37C8) + bit7(0x0E37C8) +
                  bit2(0x0E37C9) + bit3(0x0E37C9) + bit7(0x0E37C9) + bit0(0x0E37CA) + bit0(0x0E37CB) + bit1(0x0E37CB) +
                  bit2(0x0E37CB) + bit4(0x0E37CB) + bit5(0x0E37CB) + bit0(0x0E37CC) + bit1(0x0E37CC) + bit2(0x0E37CC) +
                  bit3(0x0E37CC) + bit1(0x0E3835) + bit2(0x0E3835) - bit7(0x0E37C5)) == 38,
                  when=byte(0x0E3599) == 4 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Cubyrinth's Mission", points = 10,
    description = "Complete all Missions in Cubyrinth on any Rank",
    id = 294549, badge = "326608", published = "27.02.2023 18:24:27", modified = "01.07.2023 08:41:48",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000748))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000748))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000749))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000749))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000756))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000756))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000757))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000757))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000767))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000768))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000768))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000769))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x000770))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000770))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000771))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000748))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000748))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000749))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000749))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000756))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000756))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000757))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000757))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000767))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000768))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000768))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000769))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x00076F))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000770))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000770))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000771)))) < 16 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000748)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000748)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000749)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000749)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000756)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000756)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000757)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000757)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000768)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000768)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000769)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000770)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000770)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000771)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000748)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000748)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000749)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000749)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000756)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000756)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000757)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000757)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000768)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000768)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000769)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000770)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000770)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000771))) == 16, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Cubyrinth", points = 10,
    description = "Complete all Missions in Cubyrinth on Gold Rank",
    id = 294550, badge = "326609", published = "27.02.2023 18:24:27", modified = "01.07.2023 08:41:48",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000748)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000748)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000749)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000749)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000756)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000756)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000757)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000768)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000768)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000769)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000770)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000770)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000771)) / 4)) < 16 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000748) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000748) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000749) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x000749) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000756) / 4) + (high4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x000756) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000757) / 4) + (high4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x000757) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000767) / 4) +
                  (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000768) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000768) / 4)
                  + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000769) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00076F) /
                  4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000770) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000770)
                  / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000771) / 4)) == 16,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Worthy of a true Leader", points = 2,
    description = "Unlock Leader's Curling Stone",
    id = 294535, badge = "326594", published = "27.02.2023 18:24:21", modified = "10.03.2023 08:46:51",
    trigger = dword(0x3D9A20) == 36 && prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000715)) == 0 && bit2(0x0E3789) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Monkey Manners", points = 5,
    description = "Unlock Donkey Kong in Icepeak",
    id = 294514, badge = "326573", published = "27.02.2023 18:24:14", modified = "10.03.2023 08:46:52",
    trigger = dword(0x3D9A20) == 36 && prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit0(0x0E3785) > prev(bit0(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "UH KAY?", points = 10,
    description = "As Silver, defeat Donkey Kong in Icepeak without missing more than 5 arrows",
    id = 294575, badge = "326634", published = "27.02.2023 18:24:36", modified = "19.10.2023 14:04:55",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 4) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 18) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(byte(0x0BF132) > 5) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Mf is waitin' here since 2010", points = 5, type="progression",
    description = "Defeat Dry Bones in Icepeak",
    id = 294515, badge = "326574", published = "27.02.2023 18:24:14", modified = "10.03.2023 08:46:52",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Dried Out Skills", points = 10,
    description = "As Yoshi, defeat Dry Bones in Icepeak with a difference of at least 3 points",
    id = 294576, badge = "326635", published = "27.02.2023 18:24:36", modified = "19.10.2023 14:04:55",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 24) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 4) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((prev(dword(0x0C60C8)) + prev(dword(0x0C60D0)) + 240 - prev(dword(0x0C60CC)) -
                  prev(dword(0x0C60D4))) >= 243) && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Drop the Bass and some Money too", points = 5,
    description = "Unlock Vector in Icepeak",
    id = 294516, badge = "326575", published = "27.02.2023 18:24:15", modified = "10.03.2023 08:46:53",
    trigger = dword(0x3D9A20) == 36 && prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000712)) == 0 &&
              bit0(0x0E3786) > prev(bit0(0x0E3786)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Golden Performance", points = 10,
    description = "As Donkey Kong, defeat Vector in Icepeak without using the R Button in Lap 2 and 4",
    id = 294577, badge = "326636", published = "27.02.2023 18:24:37", modified = "08.05.2024 07:22:06",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 14) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 8) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((dword(0x0CA528) == 2 || dword(0x0CA528) == 4 || dword(0x0CA528) == 5) && byte(0x0AF8AC) == 0 &&
                  bit0(0x0AFE81) == 1
              ) && once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "The Wealthy and the Wonderful", points = 5,
    description = "Unlock Wario and Waluigi in Icepeak",
    id = 294517, badge = "326576", published = "27.02.2023 18:24:15", modified = "10.03.2023 08:46:54",
    trigger = dword(0x3D9A20) == 36 && prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit6(0x0E3784) > prev(bit6(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "Stop drifting before I stab you", points = 10,
    description = "As Vector, defeat Wario and Waluigi in Icepeak without drifting",
    id = 294578, badge = "326637", published = "27.02.2023 18:24:37", modified = "19.10.2023 14:04:56",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 11) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 16) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((byte(0x0AF8AC) == 0 && bit0(0x0AFE81) == 1)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Heatin' up the Winter games in another Way", points = 5, type="progression",
    description = "Defeat Rouge in Icepeak",
    id = 294518, badge = "326577", published = "27.02.2023 18:24:15", modified = "10.03.2023 08:46:55",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Love is in the Air", points = 10,
    description = "As Shadow, defeat Rouge in Icepeak with a Total Score of at least 100k",
    id = 294579, badge = "326638", published = "27.02.2023 18:24:37", modified = "19.10.2023 14:04:57",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 16) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 14) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((dword(0x0DA4A8) + dword(0x0DA4AC)) >= 100000) &&
                  prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Icepeak's Items", points = 10,
    description = "Find all obtainable Items in Icepeak",
    id = 294541, badge = "326600", published = "27.02.2023 18:24:23", modified = "10.03.2023 08:46:55",
    trigger = ((prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F5))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F6))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F6))) + (prev(bit3((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F6))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F6))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F6))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F7))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F7))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F8))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F8))) +
              (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F8))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F8))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F8))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F9))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F9))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F9))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F9))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FA))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007FA))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FA))) +
              (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FA))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007FA))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FB))) + (prev(bit4((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007FB))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FB))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FC))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007FC))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FC))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007FC))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FD))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FD))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007FD))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FD))) + (prev(bitcount((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007FE))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FF))) +
              (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000800))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000800))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000800))) + (bit7((dword(0x3BDE08) & 0xFFFFFF) +
              0x000891)) - (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FE)))) < 52 &&
              measured((bit5(0x0E37B1) + bit1(0x0E37B2) + bit2(0x0E37B2) + bit3(0x0E37B2) + bit4(0x0E37B2) +
                  bit6(0x0E37B2) + bit2(0x0E37B3) + bit7(0x0E37B3) + bit0(0x0E37B4) + bit1(0x0E37B4) + bit3(0x0E37B4) +
                  bit6(0x0E37B4) + bit7(0x0E37B4) + bit1(0x0E37B5) + bit5(0x0E37B5) + bit6(0x0E37B5) + bit7(0x0E37B5) +
                  bit0(0x0E37B6) + bit1(0x0E37B6) + bit3(0x0E37B6) + bit4(0x0E37B6) + bit6(0x0E37B6) + bit0(0x0E37B7) +
                  bit4(0x0E37B7) + bit7(0x0E37B7) + bit2(0x0E37B8) + bit4(0x0E37B8) + bit5(0x0E37B8) + bit6(0x0E37B8) +
                  bit0(0x0E37B9) + bit1(0x0E37B9) + bit3(0x0E37B9) + bit5(0x0E37B9) + bitcount(0x0E37BA) +
                  bitcount(0x0E37BB) + bit0(0x0E37BC) + bit1(0x0E37BC) + bit2(0x0E37BC) + bit7(0x0E3835) - bit2(0x0E37BA))
                  == 52, when=byte(0x0E3599) == 2 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Icepeak's Mission", points = 10,
    description = "Complete all Missions in Icepeak on any Rank",
    id = 294551, badge = "326610", published = "27.02.2023 18:24:27", modified = "01.07.2023 08:41:49",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074A))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x00074B))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000758))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000758))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000759))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000759))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075D))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075F))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000761))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x000762))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000762))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000763))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000771))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000772))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000772))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000773))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074A))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x00074B))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000758))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000758))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000759))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000759))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075D))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075F))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000761))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000762))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000762))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000763))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000771))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000772))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000772))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000773)))) < 20 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074A)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074B)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000758)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000758)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000759)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000759)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075E)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075F)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000762)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000762)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000763)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000771)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000772)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000772)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000773)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074A)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074B)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000758)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000758)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000759)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000759)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075E)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075F)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000762)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000762)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000763)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000771)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000772)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000772)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000773))) == 20, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Icepeak", points = 10,
    description = "Complete all Missions in Icepeak on Gold Rank",
    id = 294552, badge = "326611", published = "27.02.2023 18:24:28", modified = "01.07.2023 08:41:49",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00074A)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00074B)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000758)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000758)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000759)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000759)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075E)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00075F)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000762)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000762)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000771)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000772)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000772)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000773)) / 4)) < 20 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074A) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00074A) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00074B) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x00074B) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000758) / 4) + (high4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x000758) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000759) / 4) + (high4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x000759) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075D) / 4) +
                  (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075E) / 4)
                  + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075F) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761) /
                  4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000762) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000762)
                  / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000771) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000772) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x000772) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773) / 4)) == 20,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "They call her Miss 'Tausendschön'", points = 5,
    description = "Unlock Daisy in Blizland",
    id = 294519, badge = "326578", published = "27.02.2023 18:24:16", modified = "10.03.2023 08:46:56",
    trigger = dword(0x3D9A20) == 36 && prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit3(0x0E3784) > prev(bit3(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "The burning flower between cat's teeth", points = 10,
    description = "As Blaze, defeat Daisy in Blizland while defeating at least 16 enemies and collecting at least 100 Rings",
    id = 294580, badge = "326639", published = "27.02.2023 18:24:38", modified = "19.10.2023 14:04:58",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 17) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 17) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((dword(0x0CA6BC) >= 100 && dword(0x0CA6C0) >= 16 &&
                  prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5)
              )
)

achievement(
    title = "Busted Machine", points = 5, type="progression",
    description = "Defeat Omega in Blizland",
    id = 294520, badge = "326579", published = "27.02.2023 18:24:16", modified = "10.03.2023 08:46:57",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "Power to the Flower", points = 10,
    description = "As Daisy, defeat Omega in Blizland without losing half of your health",
    id = 294581, badge = "326640", published = "27.02.2023 18:24:38", modified = "19.10.2023 14:04:58",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 15) && never(dword(0x3D96D4) != 3) &&
              never(byte(0x3D969C) != 3) && never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((once(dword(0x0CA558) == 409600) && dword(0x0CA558) <= 204800)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Crushing the opponents like a Meteor", points = 2,
    description = "Unlock Meteor Curling Stone",
    id = 294536, badge = "326595", published = "27.02.2023 18:24:21", modified = "10.03.2023 08:46:58",
    trigger = dword(0x3D9A20) == 36 && prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000715)) == 0 && bit3(0x0E3789) == 1 &&
              dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 && dword(0x0E3560) < 50331648
)

achievement(
    title = "Dry Aged Turtle gone Wrong", points = 5, type="progression",
    description = "Defeat Dry Bowser in Blzland",
    id = 294521, badge = "326580", published = "27.02.2023 18:24:16", modified = "10.03.2023 08:46:58",
    trigger = dword(0x3D9A20) == 36 && prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) < 2 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775) > 1 &&
              low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775) > prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "I've got a Bone to pick with ya", points = 10,
    description = "As both Wario and Waluig, defeat Dry Bowser in Blizland back to back with both characters",
    id = 294582, badge = "326641", published = "27.02.2023 18:24:38", modified = "19.10.2023 14:04:59",
    trigger = never(dword(0x3D9A20) == 81) && never((dword(0x3D9698) != 4294967295 && dword(0x3D9698) != 25)) &&
              never(dword(0x3D96D4) != 3) && never((byte(0x3D969C) != 6 && byte(0x3D969C) != 7)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never(repeated(2, byte(0x3D969C) == 6 && prev(byte(0x0AF915)) != 6 && byte(0x0AF915) == 6)) &&
              never(repeated(2, byte(0x3D969C) == 7 && prev(byte(0x0AF915)) != 6 && byte(0x0AF915) == 6)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(once(byte(0x3D969C) == 6 && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5)
              ) &&
              trigger_when(once(byte(0x3D969C) == 7 && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5)
              )
)

achievement(
    title = "The Beautiful Winter of Vancouver", points = 5, type="win_condition",
    description = "Defeat Bowser and Dr. Eggman in Blizland",
    id = 294522, badge = "326581", published = "27.02.2023 18:24:17", modified = "10.03.2023 08:46:58",
    trigger = dword(0x3D9A20) == 36 && prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)) < 2 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776) > 1 &&
              high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776) > prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)) &&
              dword(0x3D9698) == 4294967295
)

achievement(
    title = "This is What u Need to feel a bit hotter", points = 10,
    description = "As Mario and Sonic, defeat Bowser and Dr. Eggman in Blizland in the Blazing Bobsleigh portion without boosting",
    id = 294583, badge = "326642", published = "27.02.2023 18:24:39", modified = "19.10.2023 14:04:59",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 19) && never(dword(0x3D96D4) != 4) &&
              never((byte(0x3D969C) != 0 && byte(0x3D969C) != 10)) &&
              never((byte(0x3D96A0) != 0 && byte(0x3D96A0) != 10)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) && never((byte(0x0AF8AC) == 0 && bit0(0x0AFE81) == 1)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Fight Against Somewhat Stronger Hockey Players", points = 10,
    description = "As Mario and Sonic, defeat Bowser and Dr. Eggman in Blizland in the Fever Hockey portion without letting the others score",
    id = 294585, badge = "326644", published = "27.02.2023 18:24:39", modified = "19.10.2023 14:05:00",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 23) && never(dword(0x3D96D4) != 4) &&
              never((byte(0x3D969C) != 0 && byte(0x3D969C) != 10)) &&
              never((byte(0x3D96A0) != 0 && byte(0x3D96A0) != 10)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              never((dword(0x0DBE30) == 0 && prev(dword(0x0DBE40)) == 0 && dword(0x0DBE40) < prev(dword(0x0DBE40)))) &&
              never((dword(0x0DBE30) == 1 && prev(dword(0x0DBE38)) == 0 && dword(0x0DBE38) < prev(dword(0x0DBE38)))) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "But how will I know when I'm your Super Star?", points = 10,
    description = "As Mario or Sonic, defeat Bowser and Dr. Eggman in Blizland in the Extreme Snowboarding portion without using any items",
    id = 294587, badge = "326646", published = "27.02.2023 18:24:40", modified = "19.10.2023 14:05:01",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 12) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 0 && byte(0x3D969C) != 10)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              ) &&
              never((once(dword(0x0CD06C) == 27) && prev(bit1(0x0AFE81)) == 1 && prev(dword(0x0CD06C)) != 27 &&
                  dword(0x0CD06C) != prev(dword(0x0CD06C)))
              )
)

achievement(
    title = "Father said it's my turn to play", points = 5,
    description = "Unlock Bowser Jr. and Metal Sonic",
    id = 294523, badge = "326582", published = "27.02.2023 18:24:17", modified = "10.03.2023 08:47:00",
    trigger = dword(0x3D9A20) == 36 && prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000711)) == 0 &&
              bit1(0x0E3785) > prev(bit1(0x0E3785)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "The Evilest Rematch", points = 10,
    description = "Defeat Bowser and Dr. Eggman in Blizland again and unlock them",
    id = 294524, badge = "326583", published = "27.02.2023 18:24:17", modified = "10.03.2023 08:47:00",
    trigger = dword(0x3D9A20) == 36 && prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000710)) == 0 &&
              bit5(0x0E3784) > prev(bit5(0x0E3784)) && dword(0x3D9698) == 4294967295 && dword(0x0E3560) != 0 &&
              dword(0x0E3560) < 50331648
)

achievement(
    title = "They don't like to play in the snow", points = 10,
    description = "As Bowser Jr. and Metal Sonic, defeat Bowser and Dr. Eggman in Blizland in the Blazing Bobsleigh portion without losing any health",
    id = 294584, badge = "326643", published = "27.02.2023 18:24:39", modified = "19.10.2023 14:05:03",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 19) && never(dword(0x3D96D4) != 4) &&
              never((byte(0x3D969C) != 9 && byte(0x3D969C) != 19)) &&
              never((byte(0x3D96A0) != 9 && byte(0x3D96A0) != 19)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) && never(dword(0x0D5F0C) < prev(dword(0x0D5F0C))) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Fear me Father", points = 10,
    description = "As Bowser Jr. and Metal Sonic, defeat Bowser and Dr. Eggman in Blizland in the Fever Hockey portion with a difference of at least 250",
    id = 294586, badge = "326645", published = "27.02.2023 18:24:40", modified = "19.10.2023 14:05:04",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 23) && never(dword(0x3D96D4) != 4) &&
              never((byte(0x3D969C) != 9 && byte(0x3D969C) != 19)) &&
              never((byte(0x3D96A0) != 9 && byte(0x3D96A0) != 19)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when(((prev(dword(0x0DBE40)) + prev(dword(0x0DBE44)) + 3840 - prev(dword(0x0DBE34)) -
                  prev(dword(0x0DBE38))) >= 4090) && prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) > 0 && tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Don't shed a tear 'cause, The Wnter is Never Ending;", points = 10,
    description = "As Bowser Jr. or Metal Sonic, defeat Bowser and Dr. Eggman in Blizland in the Extreme Snowboarding portion without drifting and bonking",
    id = 294588, badge = "326647", published = "27.02.2023 18:24:40", modified = "19.10.2023 14:05:04",
    trigger = never(byte(0x0AF915) == 6) && never(dword(0x3D9698) != 12) && never(dword(0x3D96D4) != 3) &&
              never((byte(0x3D969C) != 9 && byte(0x3D969C) != 19)) &&
              never(prev(tbyte(tbyte(0x0AF628) + 0x000364)) == 1) && never(dword(0x0D5F0C) < prev(dword(0x0D5F0C))) &&
              never((prev(dword(0x0CD1BC)) == 0 && dword(0x0CD1BC) != 0)) &&
              never((byte(0x0AF8AC) == 0 && bit0(0x0AFE81) == 1)) &&
              once(prev(byte(0x0AF915)) == 6 && byte(0x0AF915) == 0) &&
              trigger_when((prev(tbyte(tbyte(0x0AF628) + 0x000208)) == 0) && tbyte(tbyte(0x0AF628) + 0x000208) > 0 &&
                  tbyte(tbyte(0x0AF628) + 0x000208) < 5
              )
)

achievement(
    title = "Blizland's Items", points = 10,
    description = "Find all obtainable Items in Blizland",
    id = 294542, badge = "326601", published = "27.02.2023 18:24:24", modified = "20.06.2023 15:25:13",
    trigger = ((prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000810))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000810))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000811))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000811))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000811))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000811))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000811))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000812))) + (prev(bit4((dword(0x3BDE08) &
              0xFFFFFF) + 0x000812))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000812))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000813))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000813))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000813))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x000814))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000814))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000814))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x000814))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000814))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x000815))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000815))) +
              (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x000815))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000815))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000816))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000816))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000816))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000817))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x000817))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000817))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000817))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000818))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000818))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000818))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000818))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x000818))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000819))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000819))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000819))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00081A))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x00081B))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x00081B))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00081B))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x00081C))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00081C))) + (prev(bit3((dword(0x3BDE08) &
              0xFFFFFF) + 0x00081D))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x00081D))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x00081D))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00081D))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x00081D))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x00081E))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00081E))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00081E))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x00081E))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000891))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000891))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000892)))) < 55 &&
              measured((bit4(0x0E37CC) + bit5(0x0E37CC) + bit0(0x0E37CD) + bit2(0x0E37CD) + bit4(0x0E37CD) +
                  bit5(0x0E37CD) + bit6(0x0E37CD) + bit2(0x0E37CE) + bit4(0x0E37CE) + bit7(0x0E37CE) + bit2(0x0E37CF) +
                  bit4(0x0E37CF) + bit6(0x0E37CF) + bit0(0x0E37D0) + bit1(0x0E37D0) + bit2(0x0E37D0) + bit3(0x0E37D0) +
                  bit6(0x0E37D0) + bit0(0x0E37D1) + bit2(0x0E37D1) + bit3(0x0E37D1) + bit6(0x0E37D1) + bit1(0x0E37D2) +
                  bit2(0x0E37D2) + bit5(0x0E37D2) + bit1(0x0E37D3) + bit3(0x0E37D3) + bit4(0x0E37D3) + bit5(0x0E37D3) +
                  bit0(0x0E37D4) + bit2(0x0E37D4) + bit4(0x0E37D4) + bit6(0x0E37D4) + bit7(0x0E37D4) + bit0(0x0E37D5) +
                  bit1(0x0E37D5) + bit2(0x0E37D5) + bit6(0x0E37D6) + bit0(0x0E37D7) + bit4(0x0E37D7) + bit6(0x0E37D7) +
                  bit0(0x0E37D8) + bit2(0x0E37D8) + bit3(0x0E37D9) + bit4(0x0E37D9) + bit5(0x0E37D9) + bit6(0x0E37D9) +
                  bit7(0x0E37D9) + bit0(0x0E37DA) + bit1(0x0E37DA) + bit2(0x0E37DA) + bit3(0x0E37DA) + bit5(0x0E3835) +
                  bit6(0x0E3835) + bit1(0x0E3836)) == 55,
                  when=byte(0x0E3599) == 5 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Blizland's Mission", points = 10,
    description = "Complete all Missions in Blizland on any Rank",
    id = 294553, badge = "326612", published = "27.02.2023 18:24:28", modified = "01.07.2023 08:41:49",
    trigger = ((prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075A))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075F))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000760))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000760))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000761))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000763))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x000764))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000764))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000765))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000773))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000774))) + (prev(bit5((dword(0x3BDE08) &
              0xFFFFFF) + 0x000774))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000775))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000775))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x000776))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000776))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x00075A))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075F))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000760))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000760))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000761))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000763))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000764))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000764))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x000765))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000773))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000774))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x000774))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000775))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000775))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000776))) +
              (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)))) < 18 &&
              measured(((bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075A)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075F)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000760)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000760)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000763)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000764)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000764)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000773)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000774)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000774)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000775)) + (bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)) + (bit5((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000776)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075A)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075F)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000760)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000760)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000761)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000763)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000764)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000764)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000773)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000774)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000774)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000775)) + (bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)) + (bit6((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000776))) == 18, when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Pure Gold in Blizland", points = 10,
    description = "Complete all Missions in Blizland on Gold Rank",
    id = 294554, badge = "326613", published = "27.02.2023 18:24:28", modified = "01.07.2023 08:41:49",
    trigger = ((prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x00075A)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x00075F)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000760)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000760)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000761)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000763)) / 4) + (prev(low4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000764)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000764)) / 4) +
              (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000765)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000773)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000774)) / 4) + (prev(high4((dword(0x3BDE08)
              & 0xFFFFFF) + 0x000774)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) / 4) +
              (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)) / 4) + (prev(low4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000776)) / 4) + (prev(high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776)) / 4)) < 18 &&
              measured(((low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075A) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x00075A) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x00075B) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF)
                  + 0x00075F) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000760) / 4) + (high4((dword(0x3BDE08) &
                  0xFFFFFF) + 0x000760) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000761) / 4) + (high4((dword(0x3BDE08)
                  & 0xFFFFFF) + 0x000763) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000764) / 4) +
                  (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000764) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000765) / 4)
                  + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000773) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000774) /
                  4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000774) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775)
                  / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000775) / 4) + (low4((dword(0x3BDE08) & 0xFFFFFF) +
                  0x000776) / 4) + (high4((dword(0x3BDE08) & 0xFFFFFF) + 0x000776) / 4)) == 18,
                  when=(byte(0x3D9888) == 16 && byte(0x3D9889) == 1)
              )
)

achievement(
    title = "Doppelmayr's tour through the Alps", points = 5,
    description = "Unlock every shortcut",
    id = 294556, badge = "326615", published = "27.02.2023 18:24:29", modified = "19.10.2023 14:05:06",
    trigger = ((prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007C5))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007C6))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007C7))) + (prev(bitcount((dword(0x3BDE08)
              & 0xFFFFFF) + 0x0007C8))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007C9))) +
              (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) + 0x0007CA))) + (prev(bitcount((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007CB))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007CC))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007CC)))) < 58 &&
              measured((byte(0x0E36BC) / 3 + byte(0x0E36BD) / 3 + byte(0x0E36BE) / 3 + byte(0x0E36BF) / 3 +
                  byte(0x0E36C0) / 3 + byte(0x0E36C1) / 3 + byte(0x0E36C2) / 3 + byte(0x0E36C3) / 3 + byte(0x0E36C4) / 3 +
                  byte(0x0E36C5) / 3 + byte(0x0E36C6) / 3 + byte(0x0E36C7) / 3 + byte(0x0E36C8) / 3 + byte(0x0E36C9) / 3 +
                  byte(0x0E36CA) / 3 + byte(0x0E36CB) / 3 + byte(0x0E36CC) / 3 + byte(0x0E36CD) / 3 + byte(0x0E36CE) / 3 +
                  byte(0x0E36CF) / 3 + byte(0x0E36D0) / 3 + byte(0x0E36D1) / 3 + byte(0x0E36D2) / 3 + byte(0x0E36D3) / 3 +
                  byte(0x0E36D4) / 3 + byte(0x0E36D5) / 3 + byte(0x0E36D6) / 3 + byte(0x0E36D7) / 3 + byte(0x0E36D8) / 3) ==
                  29, when=dword(0x3D9A20) == 36 && dword(0x3D9698) == 4294967295
              )
)

achievement(
    title = "Hiding behind a mask and a ticket", points = 1, type="missable",
    description = "Use a Shy Guy Ticket",
    id = 294555, badge = "326614", published = "27.02.2023 18:24:29", modified = "10.03.2023 08:47:03",
    trigger = dword(0x3D9698) == 4294967295 && prev(byte((dword(0x3BDE08) & 0xFFFFFF) + 0x00089D)) == 128 &&
              byte((dword(0x3BDE08) & 0xFFFFFF) + 0x00089D) == 0
)

achievement(
    title = "Keeping me up to date", points = 25,
    description = "Collect all News brief's and Adventure Log's",
    id = 294590, badge = "326649", published = "27.02.2023 18:24:41", modified = "10.03.2023 08:47:03",
    trigger = ((prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E0))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E4))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E5))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E6))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E6))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E7))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007E8))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x0007E8))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007E9))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EA))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007ED))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007EE))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x0007EF))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007EF))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F0))) +
              (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F0))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F1))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F1))) + (prev(bit2((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007F6))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F6))) +
              (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x0007F8))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007F8))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FA))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x0007FA))) + (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FD))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x0007FD))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x0007FE))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000800))) + (prev(bit7((dword(0x3BDE08) &
              0xFFFFFF) + 0x000800))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000801))) +
              (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000801))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) +
              0x000802))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000803))) + (prev(bit6((dword(0x3BDE08) &
              0xFFFFFF) + 0x000803))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000804))) +
              (prev(bit1((dword(0x3BDE08) & 0xFFFFFF) + 0x000804))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) +
              0x000804))) + (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000804))) + (prev(bit4((dword(0x3BDE08) &
              0xFFFFFF) + 0x000807))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000807))) +
              (prev(bit7((dword(0x3BDE08) & 0xFFFFFF) + 0x000808))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) +
              0x000809))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000806))) + (prev(bit0((dword(0x3BDE08) &
              0xFFFFFF) + 0x00080A))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x00080B))) +
              (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) + 0x00080D))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) +
              0x00080E))) + (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000812))) + (prev(bit4((dword(0x3BDE08) &
              0xFFFFFF) + 0x000812))) + (prev(bit0((dword(0x3BDE08) & 0xFFFFFF) + 0x000814))) +
              (prev(bit2((dword(0x3BDE08) & 0xFFFFFF) + 0x000815))) + (prev(bit3((dword(0x3BDE08) & 0xFFFFFF) +
              0x000815))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) + 0x000815))) + (prev(bit1((dword(0x3BDE08) &
              0xFFFFFF) + 0x000817))) + (prev(bit5((dword(0x3BDE08) & 0xFFFFFF) + 0x000817))) +
              (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x000818))) + (prev(bit6((dword(0x3BDE08) & 0xFFFFFF) +
              0x00081A))) + (prev(bit4((dword(0x3BDE08) & 0xFFFFFF) + 0x00081B)))) < 58 &&
              measured((bit4(0x0E379C) + bit3(0x0E37A0) + bit7(0x0E37A1) + bit1(0x0E37A2) + bit4(0x0E37A2) +
                  bit1(0x0E37A3) + bit1(0x0E37A4) + bit2(0x0E37A4) + bit6(0x0E37A5) + bit3(0x0E37A6) + bit5(0x0E37A9) +
                  bit2(0x0E37AA) + bit6(0x0E37AB) + bit7(0x0E37AB) + bit5(0x0E37AC) + bit7(0x0E37AC) + bit0(0x0E37AD) +
                  bit7(0x0E37AD) + bit2(0x0E37B2) + bit6(0x0E37B2) + bit0(0x0E37B4) + bit3(0x0E37B4) + bit3(0x0E37B6) +
                  bit6(0x0E37B6) + bit1(0x0E37B9) + bit5(0x0E37B9) + bit0(0x0E37BA) + bit4(0x0E37BC) + bit7(0x0E37BC) +
                  bit2(0x0E37BD) + bit5(0x0E37BD) + bit5(0x0E37BE) + bit2(0x0E37BF) + bit6(0x0E37BF) + bit0(0x0E37C0) +
                  bit1(0x0E37C0) + bit4(0x0E37C0) + bit7(0x0E37C0) + bit4(0x0E37C3) + bit6(0x0E37C3) + bit7(0x0E37C4) +
                  bit2(0x0E37C5) + bit6(0x0E37C5) + bit0(0x0E37C6) + bit2(0x0E37C7) + bit3(0x0E37C9) + bit0(0x0E37CA) +
                  bit2(0x0E37CE) + bit4(0x0E37CE) + bit0(0x0E37D0) + bit2(0x0E37D1) + bit3(0x0E37D1) + bit6(0x0E37D1) +
                  bit1(0x0E37D3) + bit5(0x0E37D3) + bit4(0x0E37D4) + bit6(0x0E37D6) + bit4(0x0E37D7)) == 58,
                  when=byte(0x0E3599) <= 5 && dword(0x3D9A20) == 36 &&   measured_if(dword(0x3D9698) == 4294967295)
)

achievement(
    title = "Short Track 500m Qualifier", points = 2,
    description = "Win a Gold Medal in Speed Skating 500m on easy difficulty or higher",
    id = 251315, badge = "314092", published = "24.09.2022 09:29:07", modified = "26.01.2023 18:50:45",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 14) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BA))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BA))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BA)) + bit1(tbyte(0x3BDE08) + 0x0003BA)) == 2
)

achievement(
    title = "Short Track 500m Medalist", points = 3,
    description = "Win a Gold Medal in Speed Skating 500m on normal difficulty or higher",
    id = 251316, badge = "314093", published = "24.09.2022 09:29:08", modified = "26.01.2023 18:50:46",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 14) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BA))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BA))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BA)) + bit3(tbyte(0x3BDE08) + 0x0003BA)) == 2
)

achievement(
    title = "Short Track 500m Olympian", points = 5,
    description = "Win a Gold Medal in Speed Skating 500m on hard difficulty",
    id = 251317, badge = "314094", published = "24.09.2022 09:29:08", modified = "26.01.2023 18:50:46",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 14) && byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BA))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BA))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BA)) + bit5(tbyte(0x3BDE08) + 0x0003BA)) == 2
)

achievement(
    title = "Alphine Skiing GS Qualifier", points = 2,
    description = "Win a Gold Medal in Alphine Skiing GS on easy difficulty or higher",
    id = 253858, badge = "310405", published = "02.10.2022 07:39:40", modified = "14.01.2023 12:04:49",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 0) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003AC))) + prev(bit1(tbyte(0x3BDE08) + 0x0003AC))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003AC)) + bit1(tbyte(0x3BDE08) + 0x0003AC)) == 2
)

achievement(
    title = "Alphine Skiing GS Medalist", points = 3,
    description = "Win a Gold Medal in Alphine Skiing GS on normal difficulty or higher",
    id = 253859, badge = "310406", published = "02.10.2022 07:39:41", modified = "14.01.2023 12:04:50",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 0) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003AC))) + prev(bit3(tbyte(0x3BDE08) + 0x0003AC))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003AC)) + bit3(tbyte(0x3BDE08) + 0x0003AC)) == 2
)

achievement(
    title = "Alphine Skiing GS Olympian", points = 5,
    description = "Win a Gold Medal in Alphine Skiing GS on hard difficulty",
    id = 253860, badge = "310407", published = "02.10.2022 07:39:41", modified = "14.01.2023 12:04:50",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 0) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003AC))) + prev(bit5(tbyte(0x3BDE08) + 0x0003AC))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003AC)) + bit5(tbyte(0x3BDE08) + 0x0003AC)) == 2
)

achievement(
    title = "Supersonic Downhill Qualifier", points = 2,
    description = "Win a 1st Medal in Supersonic Downhill on easy difficulty or higher",
    id = 253861, badge = "317127", published = "02.10.2022 07:39:56", modified = "12.02.2023 16:15:26",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 1) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003AD))) + prev(bit1(tbyte(0x3BDE08) + 0x0003AD))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003AD)) + bit1(tbyte(0x3BDE08) + 0x0003AD)) == 2
)

achievement(
    title = "Supersonic Downhill Medalist", points = 3,
    description = "Win a 1st Medal in Supersonic Downhill on normal difficulty or higher",
    id = 253862, badge = "317119", published = "02.10.2022 07:39:57", modified = "12.02.2023 16:15:26",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 1) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003AD))) + prev(bit3(tbyte(0x3BDE08) + 0x0003AD))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003AD)) + bit3(tbyte(0x3BDE08) + 0x0003AD)) == 2
)

achievement(
    title = "Supersonic Downhill Olympian", points = 5,
    description = "Win a 1st Medal in Supersonic Downhill on hard difficulty",
    id = 253863, badge = "317128", published = "02.10.2022 07:39:57", modified = "12.02.2023 16:15:25",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 1) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003AD))) + prev(bit5(tbyte(0x3BDE08) + 0x0003AD))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003AD)) + bit5(tbyte(0x3BDE08) + 0x0003AD)) == 2
)

achievement(
    title = "Ski Jumping LH Qualifier", points = 2,
    description = "Win a Gold Medal in Ski Jumping LH on easy difficulty or higher",
    id = 253864, badge = "310408", published = "02.10.2022 07:40:06", modified = "14.01.2023 12:06:24",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 2) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003AE))) + prev(bit1(tbyte(0x3BDE08) + 0x0003AE))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003AE)) + bit1(tbyte(0x3BDE08) + 0x0003AE)) == 2
)

achievement(
    title = "Ski Jumping LH Medalist", points = 3,
    description = "Win a Gold Medal in Ski Jumping LH on normal difficulty or higher",
    id = 253865, badge = "310409", published = "02.10.2022 07:40:06", modified = "14.01.2023 12:06:25",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 2) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003AE))) + prev(bit3(tbyte(0x3BDE08) + 0x0003AE))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003AE)) + bit3(tbyte(0x3BDE08) + 0x0003AE)) == 2
)

achievement(
    title = "Ski Jumping LH Olympian", points = 5,
    description = "Win a Gold Medal in Ski Jumping LH on hard difficulty",
    id = 253866, badge = "310410", published = "02.10.2022 07:40:06", modified = "14.01.2023 12:06:25",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 2) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003AE))) + prev(bit5(tbyte(0x3BDE08) + 0x0003AE))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003AE)) + bit5(tbyte(0x3BDE08) + 0x0003AE)) == 2
)

achievement(
    title = "Rocket Ski Jumping Qualifier", points = 2,
    description = "Win a 1st Medal in Rocket Ski Jumping on easy difficulty or higher",
    id = 253867, badge = "317124", published = "02.10.2022 07:40:12", modified = "12.02.2023 16:15:38",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 3) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003AF))) + prev(bit1(tbyte(0x3BDE08) + 0x0003AF))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003AF)) + bit1(tbyte(0x3BDE08) + 0x0003AF)) == 2
)

achievement(
    title = "Rocket Ski Jumping Medalist", points = 3,
    description = "Win a 1st Medal in Rocket Ski Jumping on normal difficulty or higher",
    id = 253868, badge = "317125", published = "02.10.2022 07:40:12", modified = "12.02.2023 16:15:38",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 3) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003AF))) + prev(bit3(tbyte(0x3BDE08) + 0x0003AF))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003AF)) + bit3(tbyte(0x3BDE08) + 0x0003AF)) == 2
)

achievement(
    title = "Rocket Ski Jumping Olympian", points = 5,
    description = "Win a 1st Medal in Rocket Ski Jumping on hard difficulty",
    id = 253869, badge = "317126", published = "02.10.2022 07:40:12", modified = "12.02.2023 16:15:37",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 3) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003AF))) + prev(bit5(tbyte(0x3BDE08) + 0x0003AF))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003AF)) + bit5(tbyte(0x3BDE08) + 0x0003AF)) == 2
)

achievement(
    title = "Moguls Qualifier", points = 2,
    description = "Win a Gold Medal in Moguls on easy difficulty or higher",
    id = 253870, badge = "312314", published = "02.10.2022 07:40:23", modified = "20.01.2023 18:59:50",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 4) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B0))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B0))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B0)) + bit1(tbyte(0x3BDE08) + 0x0003B0)) == 2
)

achievement(
    title = "Moguls Medalist", points = 3,
    description = "Win a Gold Medal in Moguls on normal difficulty or higher",
    id = 253871, badge = "312315", published = "02.10.2022 07:40:23", modified = "20.01.2023 18:59:50",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 4) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B0))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B0))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B0)) + bit3(tbyte(0x3BDE08) + 0x0003B0)) == 2
)

achievement(
    title = "Moguls Olympian", points = 5,
    description = "Win a Gold Medal in Moguls on hard difficulty",
    id = 253872, badge = "312316", published = "02.10.2022 07:40:24", modified = "20.01.2023 18:59:51",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 4) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B0))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B0))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B0)) + bit5(tbyte(0x3BDE08) + 0x0003B0)) == 2
)

achievement(
    title = "Ski Cross Racing Qualifier", points = 2,
    description = "Win a 1st Medal in Ski Cross Racing on easy difficulty or higher",
    id = 253873, badge = "314115", published = "02.10.2022 07:40:32", modified = "12.02.2023 16:15:37",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 5) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B1))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B1))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B1)) + bit1(tbyte(0x3BDE08) + 0x0003B1)) == 2
)

achievement(
    title = "Ski Cross Racing Medalist", points = 3,
    description = "Win a 1st Medal in Ski Cross Racing on normal difficulty or higher",
    id = 253874, badge = "314113", published = "02.10.2022 07:40:32", modified = "12.02.2023 16:15:37",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 5) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B1))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B1))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B1)) + bit3(tbyte(0x3BDE08) + 0x0003B1)) == 2
)

achievement(
    title = "Ski Cross Racing Olympian", points = 5,
    description = "Win a 1st Medal in Ski Cross Racing on hard difficulty",
    id = 253875, badge = "314114", published = "02.10.2022 07:40:32", modified = "12.02.2023 16:15:36",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 5) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B1))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B1))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B1)) + bit5(tbyte(0x3BDE08) + 0x0003B1)) == 2
)

achievement(
    title = "Cross-Country Qualifier", points = 2,
    description = "Win a Gold Medal in Cross-Country on easy difficulty or higher",
    id = 253876, badge = "312317", published = "02.10.2022 07:40:41", modified = "20.01.2023 19:00:15",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B2))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B2))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B2)) + bit1(tbyte(0x3BDE08) + 0x0003B2)) == 2
)

achievement(
    title = "Cross-Country Medalist", points = 3,
    description = "Win a Gold Medal in Cross-Country on normal difficulty or higher",
    id = 253877, badge = "312318", published = "02.10.2022 07:40:41", modified = "20.01.2023 19:00:15",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B2))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B2))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B2)) + bit3(tbyte(0x3BDE08) + 0x0003B2)) == 2
)

achievement(
    title = "Cross-Country Olympian", points = 5,
    description = "Win a Gold Medal in Cross-Country on hard difficulty",
    id = 253878, badge = "312319", published = "02.10.2022 07:40:42", modified = "20.01.2023 19:00:16",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B2))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B2))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B2)) + bit5(tbyte(0x3BDE08) + 0x0003B2)) == 2
)

achievement(
    title = "Nordic Combined Qualifier", points = 2,
    description = "Win a Gold Medal in Nordic Combined on easy difficulty or higher",
    id = 253879, badge = "312320", published = "02.10.2022 07:40:42", modified = "15.03.2023 20:04:05",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B5))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B5))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B5)) + bit1(tbyte(0x3BDE08) + 0x0003B5)) == 2
)

achievement(
    title = "Nordic Combined Medalist", points = 3,
    description = "Win a Gold Medal in Nordic Combined on normal difficulty or higher",
    id = 253880, badge = "312321", published = "02.10.2022 07:40:42", modified = "15.03.2023 20:04:06",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B5))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B5))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B5)) + bit3(tbyte(0x3BDE08) + 0x0003B5)) == 2
)

achievement(
    title = "Nordic Combined Olympian", points = 5,
    description = "Win a Gold Medal in Nordic Combined on hard difficulty",
    id = 253881, badge = "312322", published = "02.10.2022 07:40:43", modified = "15.03.2023 20:04:06",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 6) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B5))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B5))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B5)) + bit5(tbyte(0x3BDE08) + 0x0003B5)) == 2
)

achievement(
    title = "Biathlon Qualifier", points = 2,
    description = "Win a Gold Medal in Biathlon on easy difficulty or higher",
    id = 253928, badge = "314083", published = "02.10.2022 12:30:18", modified = "26.01.2023 18:06:59",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 7) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B3))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B3))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B3)) + bit1(tbyte(0x3BDE08) + 0x0003B3)) == 2
)

achievement(
    title = "Biathlon Medalist", points = 3,
    description = "Win a Gold Medal in Biathlon on normal difficulty or higher",
    id = 253929, badge = "314084", published = "02.10.2022 12:30:22", modified = "26.01.2023 18:06:59",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 7) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B3))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B3))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B3)) + bit3(tbyte(0x3BDE08) + 0x0003B3)) == 2
)

achievement(
    title = "Biathlon Olympian", points = 5,
    description = "Win a Gold Medal in Biathlon on hard difficulty",
    id = 253930, badge = "314085", published = "02.10.2022 12:30:25", modified = "26.01.2023 18:07:00",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 7) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B3))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B3))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B3)) + bit5(tbyte(0x3BDE08) + 0x0003B3)) == 2
)

achievement(
    title = "Ski Shooting Qualifier", points = 2,
    description = "Win a 1st Medal in Ski Shooting on easy difficulty or higher",
    id = 253931, badge = "317129", published = "02.10.2022 12:42:58", modified = "12.02.2023 16:15:36",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 8) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B4))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B4))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B4)) + bit1(tbyte(0x3BDE08) + 0x0003B4)) == 2
)

achievement(
    title = "Ski Shooting Medalist", points = 3,
    description = "Win a 1st Medal in Ski Shooting on normal difficulty or higher",
    id = 253932, badge = "317130", published = "02.10.2022 12:42:58", modified = "12.02.2023 16:15:36",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 8) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B4))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B4))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B4)) + bit3(tbyte(0x3BDE08) + 0x0003B4)) == 2
)

achievement(
    title = "Ski Shooting Olympian", points = 5,
    description = "Win a 1st Medal in Ski Shooting on hard difficulty",
    id = 253933, badge = "317131", published = "02.10.2022 12:42:58", modified = "12.02.2023 16:15:35",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 8) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B4))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B4))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B4)) + bit5(tbyte(0x3BDE08) + 0x0003B4)) == 2
)

achievement(
    title = "Deluxe Halfpipe Qualifier", points = 2,
    description = "Win a 1st Medal in Deluxe Halfpipe on easy difficulty or higher",
    id = 253934, badge = "317132", published = "02.10.2022 12:42:59", modified = "12.02.2023 16:15:34",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 10) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B6))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B6))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B6)) + bit1(tbyte(0x3BDE08) + 0x0003B6)) == 2
)

achievement(
    title = "Deluxe Halfpipe Medalist", points = 3,
    description = "Win a 1st Medal in Deluxe Halfpipe on normal difficulty or higher",
    id = 253935, badge = "317133", published = "02.10.2022 12:42:59", modified = "12.02.2023 16:15:34",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 10) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B6))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B6))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B6)) + bit3(tbyte(0x3BDE08) + 0x0003B6)) == 2
)

achievement(
    title = "Deluxe Halfpipe Olympian", points = 5,
    description = "Win a 1st Medal in Deluxe Halfpipe on hard difficulty",
    id = 253936, badge = "317134", published = "02.10.2022 12:42:59", modified = "12.02.2023 16:15:33",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 10) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B6))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B6))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B6)) + bit5(tbyte(0x3BDE08) + 0x0003B6)) == 2
)

achievement(
    title = "Snowboard Cross Qualifier", points = 2,
    description = "Win a Gold Medal in Snowboard Cross on easy difficulty or higher",
    id = 253937, badge = "314086", published = "02.10.2022 12:43:00", modified = "26.01.2023 18:07:26",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 11) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B7))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B7))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B7)) + bit1(tbyte(0x3BDE08) + 0x0003B7)) == 2
)

achievement(
    title = "Snowboard Cross Medalist", points = 3,
    description = "Win a Gold Medal in Snowboard Cross on normal difficulty or higher",
    id = 253938, badge = "314087", published = "02.10.2022 12:43:00", modified = "26.01.2023 18:07:26",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 11) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B7))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B7))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B7)) + bit3(tbyte(0x3BDE08) + 0x0003B7)) == 2
)

achievement(
    title = "Snowboard Cross Olympian", points = 5,
    description = "Win a Gold Medal in Snowboard Cross on hard difficulty",
    id = 253939, badge = "314088", published = "02.10.2022 12:43:00", modified = "26.01.2023 18:07:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 11) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B7))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B7))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B7)) + bit5(tbyte(0x3BDE08) + 0x0003B7)) == 2
)

achievement(
    title = "Extreme Snowboarding Qualifier", points = 2,
    description = "Win a 1st Medal in Extreme Snowboarding on easy difficulty or higher",
    id = 253940, badge = "317135", published = "02.10.2022 12:43:01", modified = "12.02.2023 16:15:33",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 12) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B8))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B8))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B8)) + bit1(tbyte(0x3BDE08) + 0x0003B8)) == 2
)

achievement(
    title = "Extreme Snowboarding Medalist", points = 3,
    description = "Win a 1st Medal in Extreme Snowboarding on normal difficulty or higher",
    id = 253941, badge = "317136", published = "02.10.2022 12:43:01", modified = "12.02.2023 16:15:32",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 12) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B8))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B8))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B8)) + bit3(tbyte(0x3BDE08) + 0x0003B8)) == 2
)

achievement(
    title = "Extreme Snowboarding Olympian", points = 5,
    description = "Win a 1st Medal in Extreme Snowboarding on hard difficulty",
    id = 253942, badge = "317137", published = "02.10.2022 12:43:01", modified = "12.02.2023 16:15:32",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 12) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B8))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B8))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B8)) + bit5(tbyte(0x3BDE08) + 0x0003B8)) == 2
)

achievement(
    title = "Speed Skating 500m Qualifier", points = 2,
    description = "Win a Gold Medal in Speed Skating 500m on easy difficulty or higher",
    id = 253950, badge = "314095", published = "02.10.2022 12:58:14", modified = "26.01.2023 18:51:38",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 13) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003B9))) + prev(bit1(tbyte(0x3BDE08) + 0x0003B9))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003B9)) + bit1(tbyte(0x3BDE08) + 0x0003B9)) == 2
)

achievement(
    title = "Speed Skating 500m Medalist", points = 3,
    description = "Win a Gold Medal in Speed Skating 500m on normal difficulty or higher",
    id = 253951, badge = "314096", published = "02.10.2022 12:58:15", modified = "26.01.2023 18:51:39",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 13) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003B9))) + prev(bit3(tbyte(0x3BDE08) + 0x0003B9))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003B9)) + bit3(tbyte(0x3BDE08) + 0x0003B9)) == 2
)

achievement(
    title = "Speed Skating 500m Olympian", points = 5,
    description = "Win a Gold Medal in Speed Skating 500m on hard difficulty",
    id = 253952, badge = "314097", published = "02.10.2022 12:58:15", modified = "26.01.2023 18:51:39",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 13) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003B9))) + prev(bit5(tbyte(0x3BDE08) + 0x0003B9))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003B9)) + bit5(tbyte(0x3BDE08) + 0x0003B9)) == 2
)

achievement(
    title = "Intense Short Track Qualifier", points = 2,
    description = "Win a 1st Medal in Intense Short Track on easy difficulty or higher",
    id = 253953, badge = "317138", published = "02.10.2022 12:58:15", modified = "12.02.2023 16:15:32",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 15) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BB))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BB))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BB)) + bit1(tbyte(0x3BDE08) + 0x0003BB)) == 2
)

achievement(
    title = "Intense Short Track Medalist", points = 3,
    description = "Win a 1st Medal in Intense Short Track on normal difficulty or higher",
    id = 253954, badge = "317139", published = "02.10.2022 12:58:15", modified = "12.02.2023 16:15:31",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 15) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BB))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BB))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BB)) + bit3(tbyte(0x3BDE08) + 0x0003BB)) == 2
)

achievement(
    title = "Intense Short Track Olympian", points = 5,
    description = "Win a 1st Medal in Intense Short Track on hard difficulty",
    id = 253955, badge = "317140", published = "02.10.2022 12:58:16", modified = "12.02.2023 16:15:31",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 15) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BB))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BB))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BB)) + bit5(tbyte(0x3BDE08) + 0x0003BB)) == 2
)

achievement(
    title = "Figure Skating Qualifier", points = 2,
    description = "Win a Gold Medal in Figure Skating on easy difficulty or higher",
    id = 253956, badge = "314098", published = "02.10.2022 12:58:16", modified = "26.01.2023 18:52:06",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 16) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BC))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BC))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BC)) + bit1(tbyte(0x3BDE08) + 0x0003BC)) == 2
)

achievement(
    title = "Figure Skating Medalist", points = 3,
    description = "Win a Gold Medal in Figure Skating on normal difficulty or higher",
    id = 253957, badge = "314099", published = "02.10.2022 12:58:16", modified = "26.01.2023 18:52:06",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 16) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BC))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BC))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BC)) + bit3(tbyte(0x3BDE08) + 0x0003BC)) == 2
)

achievement(
    title = "Figure Skating Olympian", points = 5,
    description = "Win a Gold Medal in Figure Skating on hard difficulty",
    id = 253958, badge = "314100", published = "02.10.2022 12:58:17", modified = "26.01.2023 18:52:07",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 16) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BC))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BC))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BC)) + bit5(tbyte(0x3BDE08) + 0x0003BC)) == 2
)

achievement(
    title = "Ultimate Figure Skating Qualifier", points = 2,
    description = "Win a 1st Medal in Ultimate Figure Skating on easy difficulty or higher",
    id = 253959, badge = "317141", published = "02.10.2022 12:58:17", modified = "12.02.2023 16:15:30",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 17) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BD))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BD))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BD)) + bit1(tbyte(0x3BDE08) + 0x0003BD)) == 2
)

achievement(
    title = "Ultimate Figure Skating Medalist", points = 3,
    description = "Win a 1st Medal in Ultimate Figure Skating on normal difficulty or higher",
    id = 253960, badge = "317142", published = "02.10.2022 12:58:17", modified = "12.02.2023 16:15:30",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 17) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BD))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BD))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BD)) + bit3(tbyte(0x3BDE08) + 0x0003BD)) == 2
)

achievement(
    title = "Ultimate Figure Skating Olympian", points = 5,
    description = "Win a 1st Medal in Ultimate Figure Skating on hard difficulty",
    id = 253961, badge = "317143", published = "02.10.2022 12:58:18", modified = "12.02.2023 16:15:30",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 17) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BD))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BD))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BD)) + bit5(tbyte(0x3BDE08) + 0x0003BD)) == 2
)

achievement(
    title = "Bobsleigh Qualifier", points = 2,
    description = "Win a Gold Medal in Bobsleigh on easy difficulty or higher",
    id = 253962, badge = "314101", published = "02.10.2022 12:58:18", modified = "26.01.2023 18:52:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 18) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BE))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BE))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BE)) + bit1(tbyte(0x3BDE08) + 0x0003BE)) == 2
)

achievement(
    title = "Bobsleigh Medalist", points = 3,
    description = "Win a Gold Medal in Bobsleigh on normal difficulty or higher",
    id = 253963, badge = "314102", published = "02.10.2022 12:58:18", modified = "26.01.2023 18:52:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 18) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BE))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BE))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BE)) + bit3(tbyte(0x3BDE08) + 0x0003BE)) == 2
)

achievement(
    title = "Bobsleigh Olympian", points = 5,
    description = "Win a Gold Medal in Bobsleigh on hard difficulty",
    id = 253964, badge = "314103", published = "02.10.2022 12:58:19", modified = "26.01.2023 18:52:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 18) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BE))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BE))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BE)) + bit5(tbyte(0x3BDE08) + 0x0003BE)) == 2
)

achievement(
    title = "Blazing Bobsleigh Qualifier", points = 2,
    description = "Win a 1st Medal in Blazing Bobsleigh on easy difficulty or higher",
    id = 253965, badge = "317144", published = "02.10.2022 12:58:19", modified = "12.02.2023 16:15:29",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 19) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003BF))) + prev(bit1(tbyte(0x3BDE08) + 0x0003BF))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003BF)) + bit1(tbyte(0x3BDE08) + 0x0003BF)) == 2
)

achievement(
    title = "Blazing Bobsleigh Medalist", points = 3,
    description = "Win a 1st Medal in Blazing Bobsleigh on normal difficulty or higher",
    id = 253966, badge = "317145", published = "02.10.2022 12:58:19", modified = "12.02.2023 16:15:29",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 19) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003BF))) + prev(bit3(tbyte(0x3BDE08) + 0x0003BF))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003BF)) + bit3(tbyte(0x3BDE08) + 0x0003BF)) == 2
)

achievement(
    title = "Blazing Bobsleigh Olympian", points = 5,
    description = "Win a 1st Medal in Blazing Bobsleigh on hard difficulty",
    id = 253967, badge = "317146", published = "02.10.2022 12:58:20", modified = "12.02.2023 16:15:28",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 19) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003BF))) + prev(bit5(tbyte(0x3BDE08) + 0x0003BF))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003BF)) + bit5(tbyte(0x3BDE08) + 0x0003BF)) == 2
)

achievement(
    title = "Skeleton Qualifier", points = 2,
    description = "Win a Gold Medal in Skeleton on easy difficulty or higher",
    id = 253969, badge = "314104", published = "02.10.2022 13:03:08", modified = "26.01.2023 18:52:51",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 20) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C0))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C0))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C0)) + bit1(tbyte(0x3BDE08) + 0x0003C0)) == 2
)

achievement(
    title = "Skeleton Medalist", points = 3,
    description = "Win a Gold Medal in Skeleton on normal difficulty or higher",
    id = 253970, badge = "314105", published = "02.10.2022 13:03:09", modified = "26.01.2023 18:52:51",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 20) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C0))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C0))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C0)) + bit3(tbyte(0x3BDE08) + 0x0003C0)) == 2
)

achievement(
    title = "Skeleton Olympian", points = 5,
    description = "Win a Gold Medal in Skeleton on hard difficulty",
    id = 253971, badge = "314106", published = "02.10.2022 13:03:09", modified = "26.01.2023 18:52:51",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 20) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C0))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C0))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C0)) + bit5(tbyte(0x3BDE08) + 0x0003C0)) == 2
)

achievement(
    title = "Luge Qualifier", points = 2,
    description = "Win a Gold Medal in Luge on easy difficulty or higher",
    id = 253972, badge = "314107", published = "02.10.2022 13:03:09", modified = "26.01.2023 18:53:15",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 21) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C1))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C1))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C1)) + bit1(tbyte(0x3BDE08) + 0x0003C1)) == 2
)

achievement(
    title = "Luge Medalist", points = 3,
    description = "Win a Gold Medal in Luge on normal difficulty or higher",
    id = 253973, badge = "314108", published = "02.10.2022 13:03:10", modified = "26.01.2023 18:53:16",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 21) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C1))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C1))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C1)) + bit3(tbyte(0x3BDE08) + 0x0003C1)) == 2
)

achievement(
    title = "Luge Olympian", points = 5,
    description = "Win a Gold Medal in Luge on hard difficulty",
    id = 253974, badge = "314109", published = "02.10.2022 13:03:10", modified = "26.01.2023 18:53:16",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 21) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C1))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C1))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C1)) + bit5(tbyte(0x3BDE08) + 0x0003C1)) == 2
)

achievement(
    title = "Ice Hockey Qualifier", points = 2,
    description = "Win a Gold Medal in Ice Hockey on easy difficulty or higher",
    id = 253975, badge = "314091", published = "02.10.2022 13:03:10", modified = "26.01.2023 18:18:56",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 22) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C2))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C2))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C2)) + bit1(tbyte(0x3BDE08) + 0x0003C2)) == 2
)

achievement(
    title = "Ice Hockey Medalist", points = 3,
    description = "Win a Gold Medal in Ice Hockey on normal difficulty or higher",
    id = 253976, badge = "314089", published = "02.10.2022 13:03:11", modified = "26.01.2023 18:18:55",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 22) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C2))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C2))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C2)) + bit3(tbyte(0x3BDE08) + 0x0003C2)) == 2
)

achievement(
    title = "Ice Hockey Olympian", points = 5,
    description = "Win a Gold Medal in Ice Hockey on hard difficulty",
    id = 253977, badge = "314090", published = "02.10.2022 13:03:11", modified = "26.01.2023 18:18:55",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 22) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C2))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C2))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C2)) + bit5(tbyte(0x3BDE08) + 0x0003C2)) == 2
)

achievement(
    title = "Fever Hockey Qualifier", points = 2,
    description = "Win a 1st Medal in Fever Hockey on easy difficulty or higher",
    id = 253978, badge = "317147", published = "02.10.2022 13:03:11", modified = "12.02.2023 16:15:28",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 23) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C3))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C3))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C3)) + bit1(tbyte(0x3BDE08) + 0x0003C3)) == 2
)

achievement(
    title = "Fever Hockey Medalist", points = 3,
    description = "Win a 1st Medal in Fever Hockey on normal difficulty or higher",
    id = 253979, badge = "317148", published = "02.10.2022 13:03:12", modified = "12.02.2023 16:15:28",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 23) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C3))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C3))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C3)) + bit3(tbyte(0x3BDE08) + 0x0003C3)) == 2
)

achievement(
    title = "Fever Hockey Olympian", points = 5,
    description = "Win a 1st Medal in Fever Hockey on hard difficulty",
    id = 253980, badge = "317149", published = "02.10.2022 13:03:12", modified = "12.02.2023 16:15:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 23) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C3))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C3))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C3)) + bit5(tbyte(0x3BDE08) + 0x0003C3)) == 2
)

achievement(
    title = "Curling Qualifier", points = 2,
    description = "Win a Gold Medal in Curling on easy difficulty or higher",
    id = 253981, badge = "314110", published = "02.10.2022 13:07:48", modified = "26.01.2023 18:53:41",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 24) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C4))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C4))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C4)) + bit1(tbyte(0x3BDE08) + 0x0003C4)) == 2
)

achievement(
    title = "Curling Medalist", points = 3,
    description = "Win a Gold Medal in Curling on normal difficulty or higher",
    id = 253982, badge = "314111", published = "02.10.2022 13:07:48", modified = "26.01.2023 18:53:41",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 24) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C4))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C4))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C4)) + bit3(tbyte(0x3BDE08) + 0x0003C4)) == 2
)

achievement(
    title = "Curling Olympian", points = 5,
    description = "Win a Gold Medal in Curling on hard difficulty",
    id = 253983, badge = "314112", published = "02.10.2022 13:07:48", modified = "26.01.2023 18:53:42",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 24) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C4))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C4))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C4)) + bit5(tbyte(0x3BDE08) + 0x0003C4)) == 2
)

achievement(
    title = "Curling Bowling Qualifier", points = 2,
    description = "Win a 1st Medal in Curling Bowling on easy difficulty or higher",
    id = 253984, badge = "317150", published = "02.10.2022 13:07:49", modified = "12.02.2023 16:16:11",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 25) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C5))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C5))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C5)) + bit1(tbyte(0x3BDE08) + 0x0003C5)) == 2
)

achievement(
    title = "Curling Bowling Medalist", points = 3,
    description = "Win a 1st Medal in Curling Bowling on normal difficulty or higher",
    id = 253985, badge = "317151", published = "02.10.2022 13:07:49", modified = "12.02.2023 16:16:10",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 25) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C5))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C5))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C5)) + bit3(tbyte(0x3BDE08) + 0x0003C5)) == 2
)

achievement(
    title = "Curling Bowling Olympian", points = 5,
    description = "Win a 1st Medal in Curling Bowling on hard difficulty",
    id = 253986, badge = "317152", published = "02.10.2022 13:07:49", modified = "12.02.2023 16:16:10",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 25) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C5))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C5))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C5)) + bit5(tbyte(0x3BDE08) + 0x0003C5)) == 2
)

achievement(
    title = "Snow Machine Fight Qualifier", points = 2,
    description = "Win a 1st Medal in Snow Machine Fight on easy difficulty or higher",
    id = 253987, badge = "317153", published = "02.10.2022 13:07:50", modified = "12.02.2023 16:15:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 26) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) <= 2 &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0003C6))) + prev(bit1(tbyte(0x3BDE08) + 0x0003C6))) <= 1 &&
              ((bit0(tbyte(0x3BDE08) + 0x0003C6)) + bit1(tbyte(0x3BDE08) + 0x0003C6)) == 2
)

achievement(
    title = "Snow Machine Fight Medalist", points = 3,
    description = "Win a 1st Medal in Snow Machine Fight on normal difficulty or higher",
    id = 253988, badge = "317154", published = "02.10.2022 13:07:50", modified = "12.02.2023 16:15:27",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 26) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) >= 1 &&
              ((prev(bit2(tbyte(0x3BDE08) + 0x0003C6))) + prev(bit3(tbyte(0x3BDE08) + 0x0003C6))) <= 1 &&
              ((bit2(tbyte(0x3BDE08) + 0x0003C6)) + bit3(tbyte(0x3BDE08) + 0x0003C6)) == 2
)

achievement(
    title = "Snow Machine Fight Olympian", points = 5,
    description = "Win a 1st Medal in Snow Machine Fight on hard difficulty",
    id = 253989, badge = "317155", published = "02.10.2022 13:07:50", modified = "12.02.2023 16:15:26",
    trigger = never(word(0x0AC180) == 0) && never(dword(0x3D9698) != 26) && repeated(120, word(0x0AC180) != 0) &&
              byte(tbyte(0x0AF628) + 0x0001F8) == 2 &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0003C6))) + prev(bit5(tbyte(0x3BDE08) + 0x0003C6))) <= 1 &&
              ((bit4(tbyte(0x3BDE08) + 0x0003C6)) + bit5(tbyte(0x3BDE08) + 0x0003C6)) == 2
)

achievement(
    title = "Mastery of Mario", points = 3,
    description = "Complete 10 missions as Mario",
    id = 267964, badge = "311331", published = "19.11.2022 10:54:42", modified = "16.01.2023 17:10:14",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 0 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000718)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000718)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000718) == 1) && bit3(tbyte(0x3BDE08) + 0x000718) == 1)
)

achievement(
    title = "Mastery of Luigi", points = 3,
    description = "Complete 10 missions as Luigi",
    id = 267965, badge = "311332", published = "19.11.2022 10:54:43", modified = "16.01.2023 17:10:14",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 1 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000719)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000719)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000719) == 1) && bit5(tbyte(0x3BDE08) + 0x000719) == 1)
)

achievement(
    title = "Mastery of Peach", points = 3,
    description = "Complete 10 missions as Peach",
    id = 267966, badge = "311333", published = "19.11.2022 10:54:43", modified = "16.01.2023 17:10:15",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 2 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x00071C)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x00071C)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x00071C) == 1) && bit3(tbyte(0x3BDE08) + 0x00071C) == 1)
)

achievement(
    title = "Mastery of Daisy", points = 3,
    description = "Complete 10 missions as Daisy",
    id = 267967, badge = "311334", published = "19.11.2022 10:54:43", modified = "16.01.2023 17:10:15",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 3 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x00071D)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x00071D)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x00071D) == 1) && bit5(tbyte(0x3BDE08) + 0x00071D) == 1)
)

achievement(
    title = "Mastery of Yoshi", points = 3,
    description = "Complete 10 missions as Yoshi",
    id = 267968, badge = "311335", published = "19.11.2022 10:54:44", modified = "16.01.2023 17:10:15",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 4 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000720)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000720)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000720) == 1) && bit3(tbyte(0x3BDE08) + 0x000720) == 1)
)

achievement(
    title = "Mastery of Bowser", points = 3,
    description = "Complete 10 missions as Bowser",
    id = 267969, badge = "311336", published = "19.11.2022 10:54:44", modified = "16.01.2023 17:10:15",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 5 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000721)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000721)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000721) == 1) && bit5(tbyte(0x3BDE08) + 0x000721) == 1)
)

achievement(
    title = "Mastery of Wario", points = 3,
    description = "Complete 10 missions as Wario",
    id = 267970, badge = "311337", published = "19.11.2022 10:54:44", modified = "20.06.2023 17:09:21",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 6 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000724)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000724)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000724) == 1) && bit3(tbyte(0x3BDE08) + 0x000724) == 1)
)

achievement(
    title = "Mastery of Waluigi", points = 3,
    description = "Complete 10 missions as Waluigi",
    id = 267971, badge = "311338", published = "19.11.2022 10:54:45", modified = "16.01.2023 17:10:16",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 7 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000725)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000725)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000725) == 1) && bit5(tbyte(0x3BDE08) + 0x000725) == 1)
)

achievement(
    title = "Mastery of Donkey Kong", points = 3,
    description = "Complete 10 missions as Donkey Kong",
    id = 267972, badge = "311339", published = "19.11.2022 10:54:45", modified = "16.01.2023 17:10:16",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 8 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000728)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000728)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000728) == 1) && bit3(tbyte(0x3BDE08) + 0x000728) == 1)
)

achievement(
    title = "Mastery of Bowser Jr.", points = 3,
    description = "Complete 10 missions as Bowser Jr.",
    id = 267973, badge = "311340", published = "19.11.2022 10:54:45", modified = "20.06.2023 17:12:18",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 9 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000729)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000729)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000729) == 1) && bit5(tbyte(0x3BDE08) + 0x000729) == 1)
)

achievement(
    title = "Mastery of Sonic", points = 3,
    description = "Complete 10 missions as Sonic",
    id = 268919, badge = "311341", published = "23.11.2022 17:32:36", modified = "16.01.2023 17:11:11",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 10 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x00072C)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x00072C)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x00072C) == 1) && bit3(tbyte(0x3BDE08) + 0x00072C) == 1)
)

achievement(
    title = "Mastery of Tails", points = 3,
    description = "Complete 10 missions as Tails",
    id = 268920, badge = "311342", published = "23.11.2022 17:32:37", modified = "11.03.2023 19:14:24",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 11 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x00072D)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x00072D)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x00072D) == 1) && bit5(tbyte(0x3BDE08) + 0x00072D) == 1)
)

achievement(
    title = "Mastery of Knuckles", points = 3,
    description = "Complete 10 missions as Knuckles",
    id = 268921, badge = "311343", published = "23.11.2022 17:32:37", modified = "11.03.2023 19:14:24",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 12 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000730)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000730)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000730) == 1) && bit3(tbyte(0x3BDE08) + 0x000730) == 1)
)

achievement(
    title = "Mastery of Amy", points = 3,
    description = "Complete 10 missions as Amy",
    id = 268922, badge = "311344", published = "23.11.2022 17:32:37", modified = "16.01.2023 17:11:12",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 13 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000731)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000731)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000731) == 1) && bit5(tbyte(0x3BDE08) + 0x000731) == 1)
)

achievement(
    title = "Mastery of Shadow", points = 3,
    description = "Complete 10 missions as Shadow",
    id = 268923, badge = "311345", published = "23.11.2022 17:32:38", modified = "16.01.2023 17:11:12",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 14 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000734)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000734)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000734) == 1) && bit3(tbyte(0x3BDE08) + 0x000734) == 1)
)

achievement(
    title = "Mastery of Dr. Eggman", points = 3,
    description = "Complete 10 missions as Dr. Eggman",
    id = 268924, badge = "311346", published = "23.11.2022 17:32:38", modified = "16.01.2023 17:11:12",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 15 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000735)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000735)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000735) == 1) && bit5(tbyte(0x3BDE08) + 0x000735) == 1)
)

achievement(
    title = "Mastery of Vector", points = 3,
    description = "Complete 10 missions as Vector",
    id = 268925, badge = "311347", published = "23.11.2022 17:32:38", modified = "16.01.2023 17:11:13",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 16 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x000738)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x000738)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x000738) == 1) && bit3(tbyte(0x3BDE08) + 0x000738) == 1)
)

achievement(
    title = "Mastery of Blaze", points = 3,
    description = "Complete 10 missions as Blaze",
    id = 268926, badge = "311348", published = "23.11.2022 17:32:39", modified = "16.01.2023 17:11:13",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 17 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x000739)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x000739)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x000739) == 1) && bit5(tbyte(0x3BDE08) + 0x000739) == 1)
)

achievement(
    title = "Mastery of Silver", points = 3,
    description = "Complete 10 missions as Silver",
    id = 268927, badge = "311349", published = "23.11.2022 17:32:39", modified = "16.01.2023 17:11:13",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 18 &&
              (prev(bit0(tbyte(0x3BDE08) + 0x00073C)) == 1) && prev(bit3(tbyte(0x3BDE08) + 0x00073C)) == 1 &&
              trigger_when((bit1(tbyte(0x3BDE08) + 0x00073C) == 1) && bit3(tbyte(0x3BDE08) + 0x00073C) == 1)
)

achievement(
    title = "Mastery of Metal Sonic", points = 3,
    description = "Complete 10 missions as Metal Sonic",
    id = 268928, badge = "311350", published = "23.11.2022 17:32:39", modified = "16.01.2023 17:11:14",
    trigger = word(0x0AC180) != 0 && byte(0x3D96D0) == 1 && byte(0x3D969C) == 19 &&
              (prev(bit2(tbyte(0x3BDE08) + 0x00073D)) == 1) && prev(bit5(tbyte(0x3BDE08) + 0x00073D)) == 1 &&
              trigger_when((bit3(tbyte(0x3BDE08) + 0x00073D) == 1) && bit5(tbyte(0x3BDE08) + 0x00073D) == 1)
)

achievement(
    title = "Gate Master", points = 5,
    description = "Finish Alphine Skiing GS in 00:50.000 or less",
    id = 275287, badge = "311351", published = "27.12.2022 18:07:31", modified = "16.01.2023 17:16:36",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 0 &&
              prev(bit1(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit1(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Long Jumper", points = 5,
    description = "Jump Beyond 133.000m in Ski Jumping LH",
    id = 275288, badge = "311352", published = "27.12.2022 18:07:31", modified = "16.01.2023 17:16:36",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 2 &&
              prev(bit2(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit2(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Yellow Bib", points = 5,
    description = "Get more than 25.000pts in Moguls",
    id = 275289, badge = "311353", published = "27.12.2022 18:07:31", modified = "16.01.2023 17:16:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 4 &&
              prev(bit3(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit3(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Backcountry", points = 5,
    description = "Finish Cross-Country in 14:00.000 or less",
    id = 275290, badge = "311354", published = "27.12.2022 18:07:32", modified = "16.01.2023 17:16:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 6 &&
              prev(bit4(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit4(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Snow Shooter", points = 5,
    description = "Finish Biathlon in 15:00.000 or less",
    id = 275291, badge = "311355", published = "27.12.2022 18:07:32", modified = "16.01.2023 17:16:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 7 &&
              prev(bit5(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit5(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "King of Skiers", points = 5,
    description = "Finish Nordic Combined in 14:30.000 or less",
    id = 275292, badge = "311356", published = "27.12.2022 18:07:32", modified = "15.03.2023 17:33:39",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 6 &&
              prev(bit6(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit6(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Drift Boarder", points = 5,
    description = "Finish Snowboard Cross in 00:55.000 or less",
    id = 275293, badge = "311357", published = "27.12.2022 18:07:33", modified = "16.01.2023 17:16:38",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 11 &&
              prev(bit7(tbyte(0x3BDE08) + 0x0003C8)) == 0 && trigger_when(bit7(tbyte(0x3BDE08) + 0x0003C8) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Sprinter", points = 5,
    description = "Finish Speed Skating 500m in 00:33.000 or Less",
    id = 275294, badge = "311358", published = "27.12.2022 18:08:56", modified = "16.01.2023 17:16:38",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 13 &&
              prev(bit0(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit0(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Track Skater", points = 5,
    description = "Finish Short Track 500m in 00:40.000 or Less",
    id = 275295, badge = "311359", published = "27.12.2022 18:08:56", modified = "16.01.2023 17:16:39",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 14 &&
              prev(bit1(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit1(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Ice Rink Dancer", points = 5,
    description = "Finish any Figure Skating routine with 100.000pts or more.",
    id = 275296, badge = "311360", published = "27.12.2022 18:08:57", modified = "16.01.2023 17:16:39",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 16 &&
              prev(bit2(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit2(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Express", points = 5,
    description = "Finish Bobsleigh in 00:57.000 or less",
    id = 275297, badge = "311361", published = "27.12.2022 18:08:57", modified = "16.01.2023 17:16:39",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 18 &&
              prev(bit3(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit3(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Nonstop", points = 5,
    description = "Finish Skeleton in 00:57.000 or less",
    id = 275298, badge = "311362", published = "27.12.2022 18:08:57", modified = "16.01.2023 17:16:40",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 20 &&
              prev(bit4(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit4(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "High Speed", points = 5,
    description = "Finish Luge in 00:50.000 or less",
    id = 275299, badge = "311363", published = "27.12.2022 18:08:58", modified = "16.01.2023 17:16:40",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 21 &&
              prev(bit5(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit5(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Ice Warrior", points = 5,
    description = "Win in Ice Hockey by a 10-point margin",
    id = 275300, badge = "311364", published = "27.12.2022 18:08:58", modified = "16.01.2023 17:16:40",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 22 &&
              prev(bit6(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit6(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Broom Master", points = 5,
    description = "Get 3 or more points in 1 end at Curling",
    id = 275301, badge = "311365", published = "27.12.2022 18:08:58", modified = "16.01.2023 17:16:41",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 24 &&
              prev(bit7(tbyte(0x3BDE08) + 0x0003C9)) == 0 && trigger_when(bit7(tbyte(0x3BDE08) + 0x0003C9) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Speedster", points = 5,
    description = "Finish Supersonic Downhill in 00:21.000 or less",
    id = 275302, badge = "311366", published = "27.12.2022 18:32:51", modified = "16.01.2023 17:16:41",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 1 &&
              prev(bit0(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit0(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Arial Ace", points = 5,
    description = "Jump further than 2000m in Rocket Ski Jumping",
    id = 275303, badge = "311367", published = "27.12.2022 18:32:51", modified = "16.01.2023 17:16:41",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 3 &&
              prev(bit1(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit1(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Terrain Racer", points = 5,
    description = "Finish Ski Cross Racing in 01:30.000 or less",
    id = 275304, badge = "311368", published = "27.12.2022 18:32:52", modified = "16.01.2023 17:16:42",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 5 &&
              prev(bit2(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit2(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Sharpshooter", points = 5,
    description = "Get more than 15000pts in Ski Shooting",
    id = 275305, badge = "311369", published = "27.12.2022 18:32:52", modified = "16.01.2023 17:16:42",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 8 &&
              prev(bit3(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit3(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Trick Artist", points = 5,
    description = "Get more than 17000pts in Deluxe Halfpipe",
    id = 275306, badge = "311370", published = "27.12.2022 18:32:52", modified = "16.01.2023 17:16:42",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 10 &&
              prev(bit4(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit4(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Drift Monster", points = 5,
    description = "Finish Extreme Snowboarding in 03:00.000 or less",
    id = 275307, badge = "311371", published = "27.12.2022 18:32:53", modified = "16.01.2023 17:16:43",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 12 &&
              prev(bit5(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit5(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Speed Demon", points = 5,
    description = "Finish Intense Short Track in 02:00.000 or less",
    id = 275308, badge = "311372", published = "27.12.2022 18:32:53", modified = "16.01.2023 17:18:05",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 15 &&
              prev(bit6(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit6(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Dream Dancer", points = 5,
    description = "Get more than 3000pts in Ultimate Figure Skating",
    id = 275309, badge = "311373", published = "27.12.2022 18:32:53", modified = "16.01.2023 17:18:05",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 17 &&
              prev(bit7(tbyte(0x3BDE08) + 0x0003CA)) == 0 && trigger_when(bit7(tbyte(0x3BDE08) + 0x0003CA) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Kamikaze", points = 5,
    description = "Finish Blazing Bobsleigh in 01:15.000 or less",
    id = 275310, badge = "311374", published = "27.12.2022 18:43:14", modified = "16.01.2023 17:18:06",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 19 &&
              prev(bit0(tbyte(0x3BDE08) + 0x0003CB)) == 0 && trigger_when(bit0(tbyte(0x3BDE08) + 0x0003CB) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Goal Hunter", points = 5,
    description = "Score 100+ points in Fever Hockey",
    id = 275311, badge = "311375", published = "27.12.2022 18:43:14", modified = "16.01.2023 17:18:06",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 23 &&
              prev(bit1(tbyte(0x3BDE08) + 0x0003CB)) == 0 && trigger_when(bit1(tbyte(0x3BDE08) + 0x0003CB) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Point Hound", points = 5,
    description = "Get at least 5 badges in Snow Machine Fight",
    id = 275312, badge = "311376", published = "27.12.2022 18:43:15", modified = "16.01.2023 17:18:06",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 26 &&
              prev(bit2(tbyte(0x3BDE08) + 0x0003CB)) == 0 && trigger_when(bit2(tbyte(0x3BDE08) + 0x0003CB) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Miracle Bowler", points = 5,
    description = "Get 3 (Super) Strikes in a row in Curling Bowling",
    id = 275313, badge = "311377", published = "27.12.2022 18:43:15", modified = "16.01.2023 17:18:07",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) && dword(0x3D9698) == 25 &&
              prev(bit3(tbyte(0x3BDE08) + 0x0003CB)) == 0 && trigger_when(bit3(tbyte(0x3BDE08) + 0x0003CB) == 1) &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Round Champion", points = 5,
    description = "Win a Multi-Round Match",
    id = 275532, badge = "310747", published = "28.12.2022 17:42:18", modified = "15.01.2023 13:13:36",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit4(tbyte(0x3BDE08) + 0x0003CB)) == 0 && bit4(tbyte(0x3BDE08) + 0x0003CB) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Party", points = 5,
    description = "Win in each of the Party Games",
    id = 275533, badge = "310748", published = "28.12.2022 17:42:19", modified = "15.01.2023 13:13:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit5(tbyte(0x3BDE08) + 0x0003CB)) == 0 && bit5(tbyte(0x3BDE08) + 0x0003CB) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Ghost Fighter", points = 5,
    description = "Defeat all Lvl 2 Staff Ghosts",
    id = 275534, badge = "310749", published = "28.12.2022 17:42:19", modified = "15.01.2023 13:13:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit6(tbyte(0x3BDE08) + 0x0003CB)) == 0 && bit6(tbyte(0x3BDE08) + 0x0003CB) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Ghost Master", points = 10,
    description = "Defeat all Lvl 3 Staff Ghosts",
    id = 275535, badge = "310750", published = "28.12.2022 17:42:19", modified = "15.01.2023 13:13:37",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit7(tbyte(0x3BDE08) + 0x0003CB)) == 0 && bit7(tbyte(0x3BDE08) + 0x0003CB) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Full Play", points = 5,
    description = "Play all events once",
    id = 275536, badge = "310751", published = "28.12.2022 17:42:19", modified = "15.01.2023 13:13:38",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit3(tbyte(0x3BDE08) + 0x0003CC)) == 0 && bit3(tbyte(0x3BDE08) + 0x0003CC) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "Collaborative", points = 5,
    description = "Play as every character once",
    id = 275537, badge = "310752", published = "28.12.2022 17:42:20", modified = "15.01.2023 13:13:38",
    trigger = never(word(0x0AC180) == 0) && repeated(120, word(0x0AC180) != 0) &&
              prev(bit4(tbyte(0x3BDE08) + 0x0003CC)) == 0 && bit4(tbyte(0x3BDE08) + 0x0003CC) == 1 &&
              never(byte(0x3BDE28) != prev(byte(0x3BDE28)))
)

achievement(
    title = "1920's Memorabilia Collector", points = 4,
    description = "Collect all Memorabilia from the 1924 and 1928 Winter Olympics",
    id = 280191, badge = "310753", published = "12.01.2023 18:22:49", modified = "20.06.2023 16:50:24",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0008CB))) + (prev(bit5(tbyte(0x3BDE08) + 0x0008CB))) +
              (prev(bit6(tbyte(0x3BDE08) + 0x0008CB))) + prev(bit7(tbyte(0x3BDE08) + 0x0008CB))) == 3 &&
              measured(((bit4(tbyte(0x3BDE08) + 0x0008CB)) + (bit5(tbyte(0x3BDE08) + 0x0008CB)) + (bit6(tbyte(0x3BDE08)
                  + 0x0008CB)) + bit7(tbyte(0x3BDE08) + 0x0008CB)) == 4, format="percent"
              )
)

achievement(
    title = "1930's Memorabilia Collector", points = 4,
    description = "Collect all Memorabilia from the 1932 and 1936 Winter Olympics",
    id = 280192, badge = "310754", published = "12.01.2023 18:22:49", modified = "20.06.2023 16:51:58",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0008CB))) + (prev(bit1(tbyte(0x3BDE08) + 0x0008CB))) +
              (prev(bit2(tbyte(0x3BDE08) + 0x0008CB))) + prev(bit3(tbyte(0x3BDE08) + 0x0008CB))) == 3 &&
              ((bit0(tbyte(0x3BDE08) + 0x0008CB)) + (bit1(tbyte(0x3BDE08) + 0x0008CB)) + (bit2(tbyte(0x3BDE08) +
              0x0008CB)) + bit3(tbyte(0x3BDE08) + 0x0008CB)) == 4
)

achievement(
    title = "1940's Memorabilia Collector", points = 2,
    description = "Collect all Memorabilia from the 1948 Winter Olympics",
    id = 280193, badge = "310755", published = "12.01.2023 18:22:50", modified = "15.01.2023 13:13:39",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit6(tbyte(0x3BDE08) + 0x0008CA))) + prev(bit7(tbyte(0x3BDE08) + 0x0008CA))) == 1 &&
              measured(((bit6(tbyte(0x3BDE08) + 0x0008CA)) + bit7(tbyte(0x3BDE08) + 0x0008CA)) == 2, format="percent")
)

achievement(
    title = "1950's Memorabilia Collector", points = 5,
    description = "Collect all Memorabilia from the 1952 and 1956 Winter Olympics",
    id = 280194, badge = "310756", published = "12.01.2023 18:22:50", modified = "20.06.2023 16:53:33",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0008CA))) + (prev(bit1(tbyte(0x3BDE08) + 0x0008CA))) +
              (prev(bit2(tbyte(0x3BDE08) + 0x0008CA))) + (prev(bit3(tbyte(0x3BDE08) + 0x0008CA))) +
              (prev(bit4(tbyte(0x3BDE08) + 0x0008CA))) + prev(bit5(tbyte(0x3BDE08) + 0x0008CA))) == 5 &&
              measured(((bit0(tbyte(0x3BDE08) + 0x0008CA)) + (bit1(tbyte(0x3BDE08) + 0x0008CA)) + (bit2(tbyte(0x3BDE08)
                  + 0x0008CA)) + (bit3(tbyte(0x3BDE08) + 0x0008CA)) + (bit4(tbyte(0x3BDE08) + 0x0008CA)) +
                  bit5(tbyte(0x3BDE08) + 0x0008CA)) == 6, format="percent"
              )
)

achievement(
    title = "1960's Memorabilia Collector", points = 10,
    description = "Collect all Memorabilia from the 1960, 1964 and 1968 Winter Olympics",
    id = 280195, badge = "310757", published = "12.01.2023 18:22:50", modified = "15.01.2023 13:13:40",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit7(tbyte(0x3BDE08) + 0x0008C8))) + prev(bitcount(tbyte(0x3BDE08) + 0x0008C9))) == 8 &&
              measured(((bit7(tbyte(0x3BDE08) + 0x0008C8)) + bitcount(tbyte(0x3BDE08) + 0x0008C9)) == 9, format="percent")
)

achievement(
    title = "1970's Memorabilia Collector", points = 5,
    description = "Collect all Memorabilia from the 1972 and 1976 Winter Olympics",
    id = 280196, badge = "310758", published = "12.01.2023 18:22:51", modified = "20.06.2023 16:58:58",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit0(tbyte(0x3BDE08) + 0x0008C8))) + (prev(bit1(tbyte(0x3BDE08) + 0x0008C8))) +
              (prev(bit2(tbyte(0x3BDE08) + 0x0008C8))) + (prev(bit3(tbyte(0x3BDE08) + 0x0008C8))) +
              (prev(bit4(tbyte(0x3BDE08) + 0x0008C8))) + (prev(bit5(tbyte(0x3BDE08) + 0x0008C8))) +
              prev(bit6(tbyte(0x3BDE08) + 0x0008C8))) == 6 &&
              measured(((bit0(tbyte(0x3BDE08) + 0x0008C8)) + (bit1(tbyte(0x3BDE08) + 0x0008C8)) + (bit2(tbyte(0x3BDE08)
                  + 0x0008C8)) + (bit3(tbyte(0x3BDE08) + 0x0008C8)) + (bit4(tbyte(0x3BDE08) + 0x0008C8)) +
                  (bit5(tbyte(0x3BDE08) + 0x0008C8)) + bit6(tbyte(0x3BDE08) + 0x0008C8)) == 7, format="percent"
              )
)

achievement(
    title = "1980's Memorabilia Collector", points = 10,
    description = "Collect all Memorabilia from the 1980, 1984 and 1988 Winter Olympics",
    id = 280197, badge = "310759", published = "12.01.2023 18:22:51", modified = "20.06.2023 17:00:29",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bit4(tbyte(0x3BDE08) + 0x0008C6))) + (prev(bit5(tbyte(0x3BDE08) + 0x0008C6))) +
              (prev(bit6(tbyte(0x3BDE08) + 0x0008C6))) + (prev(bit7(tbyte(0x3BDE08) + 0x0008C6))) +
              prev(bitcount(tbyte(0x3BDE08) + 0x0008C7))) == 11 &&
              measured(((bit4(tbyte(0x3BDE08) + 0x0008C6)) + (bit5(tbyte(0x3BDE08) + 0x0008C6)) + (bit6(tbyte(0x3BDE08)
                  + 0x0008C6)) + (bit7(tbyte(0x3BDE08) + 0x0008C6)) + bitcount(tbyte(0x3BDE08) + 0x0008C7)) == 12,
                  format="percent"
              )
)

achievement(
    title = "1990's Memorabilia Collector", points = 10,
    description = "Collect all Memorabilia from the 1992, 1994 and 1998 Winter Olympics",
    id = 280198, badge = "310760", published = "12.01.2023 18:22:51", modified = "15.01.2023 13:13:41",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bitcount(tbyte(0x3BDE08) + 0x0008C5))) + (prev(bit0(tbyte(0x3BDE08) + 0x0008C6))) +
              (prev(bit1(tbyte(0x3BDE08) + 0x0008C6))) + (prev(bit2(tbyte(0x3BDE08) + 0x0008C6))) +
              prev(bit3(tbyte(0x3BDE08) + 0x0008C6))) == 11 &&
              measured(((bitcount(tbyte(0x3BDE08) + 0x0008C5)) + (bit0(tbyte(0x3BDE08) + 0x0008C6)) +
                  (bit1(tbyte(0x3BDE08) + 0x0008C6)) + (bit2(tbyte(0x3BDE08) + 0x0008C6)) + bit3(tbyte(0x3BDE08) +
                  0x0008C6)) == 12, format="percent"
              )
)

achievement(
    title = "2000's Memorabilia Collector", points = 10,
    description = "Collect all Memorabilia from the 2002 and 2006 Winter Olympics",
    id = 280199, badge = "310761", published = "12.01.2023 18:22:52", modified = "15.01.2023 13:13:41",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) && prev(bitcount(tbyte(0x3BDE08) + 0x0008C4)) == 7 &&
              measured(bitcount(tbyte(0x3BDE08) + 0x0008C4) == 8, format="percent")
)

achievement(
    title = "Trivia Master", points = 25,
    description = "Collect all Olympic Trivia",
    id = 280200, badge = "310762", published = "12.01.2023 18:27:13", modified = "20.06.2023 16:48:53",
    trigger = never(byte(0x3BDE28) != prev(byte(0x3BDE28))) && never(word(0x0AC180) == 0) &&
              repeated(120, word(0x0AC180) != 0) &&
              ((prev(bitcount(tbyte(0x3BDE08) + 0x0008C0))) + (prev(bitcount(tbyte(0x3BDE08) + 0x0008C1))) +
              (prev(bit0(tbyte(0x3BDE08) + 0x0008C2))) + (prev(bit1(tbyte(0x3BDE08) + 0x0008C2))) +
              (prev(bit2(tbyte(0x3BDE08) + 0x0008C2))) + prev(bit3(tbyte(0x3BDE08) + 0x0008C2))) == 19 &&
              measured(((bitcount(tbyte(0x3BDE08) + 0x0008C0)) + (bitcount(tbyte(0x3BDE08) + 0x0008C1)) +
                  (bit0(tbyte(0x3BDE08) + 0x0008C2)) + (bit1(tbyte(0x3BDE08) + 0x0008C2)) + (bit2(tbyte(0x3BDE08) +
                  0x0008C2)) + bit3(tbyte(0x3BDE08) + 0x0008C2)) == 20
              )
)

leaderboard(
    id = 59761, title = "Alpine Skiing GS - Mario",
    description = "Finish Alpine Skiing GS as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60012, title = "Alpine Skiing GS - Luigi",
    description = "Finish Alpine Skiing GS as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59762, title = "Alpine Skiing GS - Peach",
    description = "Finish Alpine Skiing GS as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59763, title = "Alpine Skiing GS - Daisy",
    description = "Finish Alpine Skiing GS as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59764, title = "Alpine Skiing GS - Yoshi",
    description = "Finish Alpine Skiing GS as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59765, title = "Alpine Skiing GS - Bowser",
    description = "Finish Alpine Skiing GS as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59766, title = "Alpine Skiing GS - Wario",
    description = "Finish Alpine Skiing GS as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59767, title = "Alpine Skiing GS - Waluigi",
    description = "Finish Alpine Skiing GS as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59768, title = "Alpine Skiing GS - Donkey Kong",
    description = "Finish Alpine Skiing GS as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59769, title = "Alpine Skiing GS - Bowser Jr.",
    description = "Finish Alpine Skiing GS as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59770, title = "Alpine Skiing GS - Sonic",
    description = "Finish Alpine Skiing GS as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60013, title = "Alpine Skiing GS - Tails",
    description = "Finish Alpine Skiing GS as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60014, title = "Alpine Skiing GS - Knuckles",
    description = "Finish Alpine Skiing GS as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60015, title = "Alpine Skiing GS - Amy",
    description = "Finish Alpine Skiing GS as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60016, title = "Alpine Skiing GS - Shadow",
    description = "Finish Alpine Skiing GS as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60017, title = "Alpine Skiing GS - Dr. Eggman",
    description = "Finish Alpine Skiing GS as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60018, title = "Alpine Skiing GS - Vector",
    description = "Finish Alpine Skiing GS as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60019, title = "Alpine Skiing GS - Blaze",
    description = "Finish Alpine Skiing GS as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60020, title = "Alpine Skiing GS - Silver",
    description = "Finish Alpine Skiing GS as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60021, title = "Alpine Skiing GS - Metal Sonic",
    description = "Finish Alpine Skiing GS as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 0 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 0,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59771, title = "Supersonic Downhill - Mario",
    description = "Finish Supersonic Downhill as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60022, title = "Supersonic Downhill - Luigi",
    description = "Finish Supersonic Downhill as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59772, title = "Supersonic Downhill - Peach",
    description = "Finish Supersonic Downhill as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59773, title = "Supersonic Downhill - Daisy",
    description = "Finish Supersonic Downhill as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59774, title = "Supersonic Downhill - Yoshi",
    description = "Finish Supersonic Downhill as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59775, title = "Supersonic Downhill - Bowser",
    description = "Finish Supersonic Downhill as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59776, title = "Supersonic Downhill - Wario",
    description = "Finish Supersonic Downhill as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59777, title = "Supersonic Downhill - Waluigi",
    description = "Finish Supersonic Downhill as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59778, title = "Supersonic Downhill - Donkey Kong",
    description = "Finish Supersonic Downhill as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59779, title = "Supersonic Downhill - Bowser Jr.",
    description = "Finish Supersonic Downhill as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59780, title = "Supersonic Downhill - Sonic",
    description = "Finish Supersonic Downhill as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60023, title = "Supersonic Downhill - Tails",
    description = "Finish Supersonic Downhill as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60024, title = "Supersonic Downhill - Knuckles",
    description = "Finish Supersonic Downhill as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60025, title = "Supersonic Downhill - Amy",
    description = "Finish Supersonic Downhill as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60026, title = "Supersonic Downhill - Shadow",
    description = "Finish Supersonic Downhill as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60027, title = "Supersonic Downhill - Dr. Eggman",
    description = "Finish Supersonic Downhill as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60028, title = "Supersonic Downhill - Vector",
    description = "Finish Supersonic Downhill as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60029, title = "Supersonic Downhill - Blaze",
    description = "Finish Supersonic Downhill as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60030, title = "Supersonic Downhill - Silver",
    description = "Finish Supersonic Downhill as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 60031, title = "Supersonic Downhill - Metal Sonic",
    description = "Finish Supersonic Downhill as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 1 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 1,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x1568D8) * 3.0 + dword(0x1568D8))),
    format = "FRAMES"
)

leaderboard(
    id = 59781, title = "Ski Jumping LH - Mario",
    description = "Get as many Points as possible in Ski Jumping LH with Mario",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 0) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60032, title = "Ski Jumping LH - Luigi",
    description = "Get as many Points as possible in Ski Jumping LH with Luigi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 1) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59782, title = "Ski Jumping LH - Peach",
    description = "Get as many Points as possible in Ski Jumping LH with Peach",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 2) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59783, title = "Ski Jumping LH - Daisy",
    description = "Get as many Points as possible in Ski Jumping LH with Daisy",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 3) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59784, title = "Ski Jumping LH - Yoshi",
    description = "Get as many Points as possible in Ski Jumping LH with Yoshi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 4) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59785, title = "Ski Jumping LH - Bowser",
    description = "Get as many Points as possible in Ski Jumping LH with Bowser",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 5) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59786, title = "Ski Jumping LH - Wario",
    description = "Get as many Points as possible in Ski Jumping LH with Wario",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 6) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59787, title = "Ski Jumping LH - Waluigi",
    description = "Get as many Points as possible in Ski Jumping LH with Waluigi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 7) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59788, title = "Ski Jumping LH - Donkey Kong",
    description = "Get as many Points as possible in Ski Jumping LH with Donkey Kong",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 8) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59789, title = "Ski Jumping LH - Bowser Jr.",
    description = "Get as many Points as possible in Ski Jumping LH with Bowser Jr.",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 9) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59790, title = "Ski Jumping LH - Sonic",
    description = "Get as many Points as possible in Ski Jumping LH with Sonic",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 10) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60033, title = "Ski Jumping LH - Tails",
    description = "Get as many Points as possible in Ski Jumping LH with Tails",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 11) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60034, title = "Ski Jumping LH - Knuckles",
    description = "Get as many Points as possible in Ski Jumping LH with Knuckles",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 12) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60035, title = "Ski Jumping LH - Amy",
    description = "Get as many Points as possible in Ski Jumping LH with Amy",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 13) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60036, title = "Ski Jumping LH - Shadow",
    description = "Get as many Points as possible in Ski Jumping LH with Shadow",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 14) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60037, title = "Ski Jumping LH - Dr. Eggman",
    description = "Get as many Points as possible in Ski Jumping LH with Dr. Eggman",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 15) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60038, title = "Ski Jumping LH - Vector",
    description = "Get as many Points as possible in Ski Jumping LH with Vector",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 16) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60039, title = "Ski Jumping LH - Blaze",
    description = "Get as many Points as possible in Ski Jumping LH with Blaze",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 17) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60040, title = "Ski Jumping LH - Silver",
    description = "Get as many Points as possible in Ski Jumping LH with Silver",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 18) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 60041, title = "Ski Jumping LH - Metal Sonic",
    description = "Get as many Points as possible in Ski Jumping LH with Metal Sonic",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 19) &&
             never(dword(0x3D9698) != 2) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(byte(0x0C090C) == 0) &&
             repeated(2, (once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0C343C)) != dword(0x0C343C)),
    cancel = dword(0x3D9698) != 2,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0C343C),
    format = "SCORE"
)

leaderboard(
    id = 59791, title = "Rocket Ski Jumping - Mario",
    description = "Get as many Points as possible in Rocket Ski Jumping with Mario",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 0) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60042, title = "Rocket Ski Jumping - Luigi",
    description = "Get as many Points as possible in Rocket Ski Jumping with Luigi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 1) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59792, title = "Rocket Ski Jumping - Peach",
    description = "Get as many Points as possible in Rocket Ski Jumping with Peach",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 2) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59793, title = "Rocket Ski Jumping - Daisy",
    description = "Get as many Points as possible in Rocket Ski Jumping with Daisy",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 3) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59794, title = "Rocket Ski Jumping - Yoshi",
    description = "Get as many Points as possible in Rocket Ski Jumping with Yoshi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 4) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59795, title = "Rocket Ski Jumping - Bowser",
    description = "Get as many Points as possible in Rocket Ski Jumping with Bowser",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 5) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59796, title = "Rocket Ski Jumping - Wario",
    description = "Get as many Points as possible in Rocket Ski Jumping with Wario",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 6) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59797, title = "Rocket Ski Jumping - Waluigi",
    description = "Get as many Points as possible in Rocket Ski Jumping with Waluigi",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 7) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59798, title = "Rocket Ski Jumping - Donkey Kong",
    description = "Get as many Points as possible in Rocket Ski Jumping with Donkey Kong",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 8) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59799, title = "Rocket Ski Jumping - Bowser Jr.",
    description = "Get as many Points as possible in Rocket Ski Jumping with Bowser Jr.",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 9) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59800, title = "Rocket Ski Jumping - Sonic",
    description = "Get as many Points as possible in Rocket Ski Jumping with Sonic",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 10) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60043, title = "Rocket Ski Jumping - Tails",
    description = "Get as many Points as possible in Rocket Ski Jumping with Tails",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 11) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60044, title = "Rocket Ski Jumping - Knuckles",
    description = "Get as many Points as possible in Rocket Ski Jumping with Knuckles",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 12) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60045, title = "Rocket Ski Jumping - Amy",
    description = "Get as many Points as possible in Rocket Ski Jumping with Amy",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 13) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60046, title = "Rocket Ski Jumping - Shadow",
    description = "Get as many Points as possible in Rocket Ski Jumping with Shadow",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 14) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60047, title = "Rocket Ski Jumping - Dr. Eggman",
    description = "Get as many Points as possible in Rocket Ski Jumping with Dr. Eggman",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 15) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60048, title = "Rocket Ski Jumping - Vector",
    description = "Get as many Points as possible in Rocket Ski Jumping with Vector",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 16) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60049, title = "Rocket Ski Jumping - Blaze",
    description = "Get as many Points as possible in Rocket Ski Jumping with Blaze",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 17) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60050, title = "Rocket Ski Jumping - Silver",
    description = "Get as many Points as possible in Rocket Ski Jumping with Silver",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 18) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 60051, title = "Rocket Ski Jumping - Metal Sonic",
    description = "Get as many Points as possible in Rocket Ski Jumping with Metal Sonic",
    start  = never(byte(0x3D9888) != 0) && never(byte(0x3D9889) != 1) && never(byte(0x3D969C) != 19) &&
             never(dword(0x3D9698) != 3) && never(byte(tbyte(0x0AF628) + 0x000364) != 0) && never(dword(0x0C755C) == 0) &&
             once((once(byte(tbyte(0x0AF628) + 0x0002F0) == 1)) && prev(dword(0x0D008C)) != dword(0x0D008C)),
    cancel = dword(0x3D9698) != 3,
    submit = prev(dword(0x0C343C)) != dword(0x0C343C),
    value  = dword(0x0D008C),
    format = "SCORE"
)

leaderboard(
    id = 59801, title = "Moguls - Mario",
    description = "Get as many Points as possible in Moguls with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60052, title = "Moguls - Luigi",
    description = "Get as many Points as possible in Moguls with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59802, title = "Moguls - Peach",
    description = "Get as many Points as possible in Moguls with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59803, title = "Moguls - Daisy",
    description = "Get as many Points as possible in Moguls with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59804, title = "Moguls - Yoshi",
    description = "Get as many Points as possible in Moguls with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59805, title = "Moguls - Bowser",
    description = "Get as many Points as possible in Moguls with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59806, title = "Moguls - Wario",
    description = "Get as many Points as possible in Moguls with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59807, title = "Moguls - Waluigi",
    description = "Get as many Points as possible in Moguls with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59808, title = "Moguls - Donkey Kong",
    description = "Get as many Points as possible in Moguls with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59809, title = "Moguls - Bowser Jr.",
    description = "Get as many Points as possible in Moguls with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59810, title = "Moguls - Sonic",
    description = "Get as many Points as possible in Moguls with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60053, title = "Moguls - Tails",
    description = "Get as many Points as possible in Moguls with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60054, title = "Moguls - Knuckles",
    description = "Get as many Points as possible in Moguls with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60055, title = "Moguls - Amy",
    description = "Get as many Points as possible in Moguls with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60056, title = "Moguls - Shadow",
    description = "Get as many Points as possible in Moguls with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60057, title = "Moguls - Dr. Eggman",
    description = "Get as many Points as possible in Moguls with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60058, title = "Moguls - Vector",
    description = "Get as many Points as possible in Moguls with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60059, title = "Moguls - Blaze",
    description = "Get as many Points as possible in Moguls with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60060, title = "Moguls - Silver",
    description = "Get as many Points as possible in Moguls with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 60061, title = "Moguls - Metal Sonic",
    description = "Get as many Points as possible in Moguls with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 4 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 4,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C49E0),
    format = "SCORE"
)

leaderboard(
    id = 59811, title = "Ski Cross Racing - Mario",
    description = "Finish Ski Cross Racing as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60062, title = "Ski Cross Racing - Luigi",
    description = "Finish Ski Cross Racing as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59812, title = "Ski Cross Racing - Peach",
    description = "Finish Ski Cross Racing as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59813, title = "Ski Cross Racing - Daisy",
    description = "Finish Ski Cross Racing as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59814, title = "Ski Cross Racing - Yoshi",
    description = "Finish Ski Cross Racing as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59815, title = "Ski Cross Racing - Bowser",
    description = "Finish Ski Cross Racing as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59816, title = "Ski Cross Racing - Wario",
    description = "Finish Ski Cross Racing as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59817, title = "Ski Cross Racing - Waluigi",
    description = "Finish Ski Cross Racing as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59818, title = "Ski Cross Racing - Donkey Kong",
    description = "Finish Ski Cross Racing as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59819, title = "Ski Cross Racing - Bowser Jr.",
    description = "Finish Ski Cross Racing as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59820, title = "Ski Cross Racing - Sonic",
    description = "Finish Ski Cross Racing as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60063, title = "Ski Cross Racing - Tails",
    description = "Finish Ski Cross Racing as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60064, title = "Ski Cross Racing - Knuckles",
    description = "Finish Ski Cross Racing as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60065, title = "Ski Cross Racing - Amy",
    description = "Finish Ski Cross Racing as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60066, title = "Ski Cross Racing - Shadow",
    description = "Finish Ski Cross Racing as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60067, title = "Ski Cross Racing - Dr. Eggman",
    description = "Finish Ski Cross Racing as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60068, title = "Ski Cross Racing - Vector",
    description = "Finish Ski Cross Racing as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60069, title = "Ski Cross Racing - Blaze",
    description = "Finish Ski Cross Racing as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60070, title = "Ski Cross Racing - Silver",
    description = "Finish Ski Cross Racing as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 60071, title = "Ski Cross Racing - Metal Sonic",
    description = "Finish Ski Cross Racing as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 5 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 5,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D2968) * 3.0 + dword(0x0D2968))),
    format = "FRAMES"
)

leaderboard(
    id = 59821, title = "Cross-Country - Mario",
    description = "Finish Cross-Country as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60072, title = "Cross-Country - Luigi",
    description = "Finish Cross-Country as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59822, title = "Cross-Country - Peach",
    description = "Finish Cross-Country as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59823, title = "Cross-Country - Daisy",
    description = "Finish Cross-Country as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59824, title = "Cross-Country - Yoshi",
    description = "Finish Cross-Country as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59825, title = "Cross-Country - Bowser",
    description = "Finish Cross-Country as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59826, title = "Cross-Country - Wario",
    description = "Finish Cross-Country as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59827, title = "Cross-Country - Waluigi",
    description = "Finish Cross-Country as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59828, title = "Cross-Country - Donkey Kong",
    description = "Finish Cross-Country as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59829, title = "Cross-Country - Bowser Jr.",
    description = "Finish Cross-Country as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59830, title = "Cross-Country - Sonic",
    description = "Finish Cross-Country as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60073, title = "Cross-Country - Tails",
    description = "Finish Cross-Country as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60074, title = "Cross-Country - Knuckles",
    description = "Finish Cross-Country as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60075, title = "Cross-Country - Amy",
    description = "Finish Cross-Country as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60076, title = "Cross-Country - Shadow",
    description = "Finish Cross-Country as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60077, title = "Cross-Country - Dr. Eggman",
    description = "Finish Cross-Country as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60078, title = "Cross-Country - Vector",
    description = "Finish Cross-Country as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60079, title = "Cross-Country - Blaze",
    description = "Finish Cross-Country as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60080, title = "Cross-Country - Silver",
    description = "Finish Cross-Country as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 60081, title = "Cross-Country - Metal Sonic",
    description = "Finish Cross-Country as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 6 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 6,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D4414) * 3.0 + dword(0x0D4414))),
    format = "FRAMES"
)

leaderboard(
    id = 59831, title = "Biathlon - Mario",
    description = "Finish Biathlon as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60082, title = "Biathlon - Luigi",
    description = "Finish Biathlon as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59832, title = "Biathlon - Peach",
    description = "Finish Biathlon as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59833, title = "Biathlon - Daisy",
    description = "Finish Biathlon as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59834, title = "Biathlon - Yoshi",
    description = "Finish Biathlon as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59835, title = "Biathlon - Bowser",
    description = "Finish Biathlon as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59836, title = "Biathlon - Wario",
    description = "Finish Biathlon as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59837, title = "Biathlon - Waluigi",
    description = "Finish Biathlon as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59838, title = "Biathlon - Donkey Kong",
    description = "Finish Biathlon as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59839, title = "Biathlon - Bowser Jr.",
    description = "Finish Biathlon as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59840, title = "Biathlon - Sonic",
    description = "Finish Biathlon as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60083, title = "Biathlon - Tails",
    description = "Finish Biathlon as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60084, title = "Biathlon - Knuckles",
    description = "Finish Biathlon as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60085, title = "Biathlon - Amy",
    description = "Finish Biathlon as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60086, title = "Biathlon - Shadow",
    description = "Finish Biathlon as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60087, title = "Biathlon - Dr. Eggman",
    description = "Finish Biathlon as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60088, title = "Biathlon - Vector",
    description = "Finish Biathlon as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60089, title = "Biathlon - Blaze",
    description = "Finish Biathlon as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60090, title = "Biathlon - Silver",
    description = "Finish Biathlon as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60091, title = "Biathlon - Metal Sonic",
    description = "Finish Biathlon as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 7 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 7,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59841, title = "Ski Shooting - Mario",
    description = "Get as many Points as possible in Ski Shooting with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60092, title = "Ski Shooting - Luigi",
    description = "Get as many Points as possible in Ski Shooting with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59842, title = "Ski Shooting - Peach",
    description = "Get as many Points as possible in Ski Shooting with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59843, title = "Ski Shooting - Daisy",
    description = "Get as many Points as possible in Ski Shooting with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59844, title = "Ski Shooting - Yoshi",
    description = "Get as many Points as possible in Ski Shooting with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59845, title = "Ski Shooting - Bowser",
    description = "Get as many Points as possible in Ski Shooting with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59846, title = "Ski Shooting - Wario",
    description = "Get as many Points as possible in Ski Shooting with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59847, title = "Ski Shooting - Waluigi",
    description = "Get as many Points as possible in Ski Shooting with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59848, title = "Ski Shooting - Donkey Kong",
    description = "Get as many Points as possible in Ski Shooting with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59849, title = "Ski Shooting - Bowser Jr.",
    description = "Get as many Points as possible in Ski Shooting with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59850, title = "Ski Shooting - Sonic",
    description = "Get as many Points as possible in Ski Shooting with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60093, title = "Ski Shooting - Tails",
    description = "Get as many Points as possible in Ski Shooting with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60094, title = "Ski Shooting - Knuckles",
    description = "Get as many Points as possible in Ski Shooting with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60095, title = "Ski Shooting - Amy",
    description = "Get as many Points as possible in Ski Shooting with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60096, title = "Ski Shooting - Shadow",
    description = "Get as many Points as possible in Ski Shooting with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60097, title = "Ski Shooting - Dr. Eggman",
    description = "Get as many Points as possible in Ski Shooting with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60098, title = "Ski Shooting - Vector",
    description = "Get as many Points as possible in Ski Shooting with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60099, title = "Ski Shooting - Blaze",
    description = "Get as many Points as possible in Ski Shooting with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60100, title = "Ski Shooting - Silver",
    description = "Get as many Points as possible in Ski Shooting with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 60101, title = "Ski Shooting - Metal Sonic",
    description = "Get as many Points as possible in Ski Shooting with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 8 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 8,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D9468) * 3.0 + dword(0x0D9468))),
    format = "FRAMES"
)

leaderboard(
    id = 59851, title = "Deluxe Halfpipe - Mario",
    description = "Get as many Points as possible in Deluxe Halfpipe with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60102, title = "Deluxe Halfpipe - Luigi",
    description = "Get as many Points as possible in Deluxe Halfpipe with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59852, title = "Deluxe Halfpipe - Peach",
    description = "Get as many Points as possible in Deluxe Halfpipe with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59853, title = "Deluxe Halfpipe - Daisy",
    description = "Get as many Points as possible in Deluxe Halfpipe with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59854, title = "Deluxe Halfpipe - Yoshi",
    description = "Get as many Points as possible in Deluxe Halfpipe with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59855, title = "Deluxe Halfpipe - Bowser",
    description = "Get as many Points as possible in Deluxe Halfpipe with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59856, title = "Deluxe Halfpipe - Wario",
    description = "Get as many Points as possible in Deluxe Halfpipe with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59857, title = "Deluxe Halfpipe - Waluigi",
    description = "Get as many Points as possible in Deluxe Halfpipe with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59858, title = "Deluxe Halfpipe - Donkey Kong",
    description = "Get as many Points as possible in Deluxe Halfpipe with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59859, title = "Deluxe Halfpipe - Bowser Jr.",
    description = "Get as many Points as possible in Deluxe Halfpipe with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59860, title = "Deluxe Halfpipe - Sonic",
    description = "Get as many Points as possible in Deluxe Halfpipe with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60103, title = "Deluxe Halfpipe - Tails",
    description = "Get as many Points as possible in Deluxe Halfpipe with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60104, title = "Deluxe Halfpipe - Knuckles",
    description = "Get as many Points as possible in Deluxe Halfpipe with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60105, title = "Deluxe Halfpipe - Amy",
    description = "Get as many Points as possible in Deluxe Halfpipe with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60106, title = "Deluxe Halfpipe - Shadow",
    description = "Get as many Points as possible in Deluxe Halfpipe with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60107, title = "Deluxe Halfpipe - Dr. Eggman",
    description = "Get as many Points as possible in Deluxe Halfpipe with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60108, title = "Deluxe Halfpipe - Vector",
    description = "Get as many Points as possible in Deluxe Halfpipe with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60109, title = "Deluxe Halfpipe - Blaze",
    description = "Get as many Points as possible in Deluxe Halfpipe with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60110, title = "Deluxe Halfpipe - Silver",
    description = "Get as many Points as possible in Deluxe Halfpipe with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 60111, title = "Deluxe Halfpipe - Metal Sonic",
    description = "Get as many Points as possible in Deluxe Halfpipe with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 10 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 10,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured(dword(0x0C1814)),
    format = "SCORE"
)

leaderboard(
    id = 59861, title = "Snowboard Cross - Mario",
    description = "Finish Snowboard Cross as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60112, title = "Snowboard Cross - Luigi",
    description = "Finish Snowboard Cross as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59862, title = "Snowboard Cross - Peach",
    description = "Finish Snowboard Cross as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59863, title = "Snowboard Cross - Daisy",
    description = "Finish Snowboard Cross as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59864, title = "Snowboard Cross - Yoshi",
    description = "Finish Snowboard Cross as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59865, title = "Snowboard Cross - Bowser",
    description = "Finish Snowboard Cross as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59866, title = "Snowboard Cross - Wario",
    description = "Finish Snowboard Cross as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59867, title = "Snowboard Cross - Waluigi",
    description = "Finish Snowboard Cross as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59868, title = "Snowboard Cross - Donkey Kong",
    description = "Finish Snowboard Cross as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59869, title = "Snowboard Cross - Bowser Jr.",
    description = "Finish Snowboard Cross as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59870, title = "Snowboard Cross - Sonic",
    description = "Finish Snowboard Cross as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60113, title = "Snowboard Cross - Tails",
    description = "Finish Snowboard Cross as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60114, title = "Snowboard Cross - Knuckles",
    description = "Finish Snowboard Cross as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60115, title = "Snowboard Cross - Amy",
    description = "Finish Snowboard Cross as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60116, title = "Snowboard Cross - Shadow",
    description = "Finish Snowboard Cross as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60117, title = "Snowboard Cross - Dr. Eggman",
    description = "Finish Snowboard Cross as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60118, title = "Snowboard Cross - Vector",
    description = "Finish Snowboard Cross as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60119, title = "Snowboard Cross - Blaze",
    description = "Finish Snowboard Cross as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60120, title = "Snowboard Cross - Silver",
    description = "Finish Snowboard Cross as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60121, title = "Snowboard Cross - Metal Sonic",
    description = "Finish Snowboard Cross as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 11 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 11,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59871, title = "Extreme Snowboarding - Mario",
    description = "Finish Extreme Snowboarding as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60122, title = "Extreme Snowboarding - Luigi",
    description = "Finish Extreme Snowboarding as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59872, title = "Extreme Snowboarding - Peach",
    description = "Finish Extreme Snowboarding as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59873, title = "Extreme Snowboarding - Daisy",
    description = "Finish Extreme Snowboarding as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59874, title = "Extreme Snowboarding - Yoshi",
    description = "Finish Extreme Snowboarding as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59875, title = "Extreme Snowboarding - Bowser",
    description = "Finish Extreme Snowboarding as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59876, title = "Extreme Snowboarding - Wario",
    description = "Finish Extreme Snowboarding as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59877, title = "Extreme Snowboarding - Waluigi",
    description = "Finish Extreme Snowboarding as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59878, title = "Extreme Snowboarding - Donkey Kong",
    description = "Finish Extreme Snowboarding as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59879, title = "Extreme Snowboarding - Bowser Jr.",
    description = "Finish Extreme Snowboarding as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 59880, title = "Extreme Snowboarding - Sonic",
    description = "Finish Extreme Snowboarding as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60123, title = "Extreme Snowboarding - Tails",
    description = "Finish Extreme Snowboarding as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60124, title = "Extreme Snowboarding - Knuckles",
    description = "Finish Extreme Snowboarding as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60125, title = "Extreme Snowboarding - Amy",
    description = "Finish Extreme Snowboarding as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60126, title = "Extreme Snowboarding - Shadow",
    description = "Finish Extreme Snowboarding as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60127, title = "Extreme Snowboarding - Dr. Eggman",
    description = "Finish Extreme Snowboarding as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60128, title = "Extreme Snowboarding - Vector",
    description = "Finish Extreme Snowboarding as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60129, title = "Extreme Snowboarding - Blaze",
    description = "Finish Extreme Snowboarding as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60130, title = "Extreme Snowboarding - Silver",
    description = "Finish Extreme Snowboarding as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 60131, title = "Extreme Snowboarding - Metal Sonic",
    description = "Finish Extreme Snowboarding as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 12 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 12,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D1C34) * 3.0 + dword(0x0D1C34))),
    format = "FRAMES"
)

leaderboard(
    id = 51216, title = "Speed Skating 500m - Mario",
    description = "Finish Speed Skating 500m as fast as possible with Mario",
    start  = byte(0x3D969C) == 0 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51332, title = "Speed Skating 500m - Luigi",
    description = "Finish Speed Skating 500m as fast as possible with Luigi",
    start  = byte(0x3D969C) == 1 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51334, title = "Speed Skating 500m - Peach",
    description = "Finish Speed Skating 500m as fast as possible with  Peach",
    start  = byte(0x3D969C) == 2 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51335, title = "Speed Skating 500m - Daisy",
    description = "Finish Speed Skating 500m as fast as possible with Daisy",
    start  = byte(0x3D969C) == 3 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51336, title = "Speed Skating 500m - Yoshi",
    description = "Finish Speed Skating 500m as fast as possible with Yoshi",
    start  = byte(0x3D969C) == 4 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51337, title = "Speed Skating 500m - Bowser",
    description = "Finish Speed Skating 500m as fast as possible with Bowser",
    start  = byte(0x3D969C) == 5 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51338, title = "Speed Skating 500m - Wario",
    description = "Finish Speed Skating 500m as fast as possible with Wario",
    start  = byte(0x3D969C) == 6 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51339, title = "Speed Skating 500m - Waluigi",
    description = "Finish Speed Skating 500m as fast as possible with Waluigi",
    start  = byte(0x3D969C) == 7 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51340, title = "Speed Skating 500m - Donkey Kong",
    description = "Finish Speed Skating 500m as fast as possible with Donkey Kong",
    start  = byte(0x3D969C) == 8 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51341, title = "Speed Skating 500m - Bowser Jr.",
    description = "Finish Speed Skating 500m as fast as possible with Bowser Jr.",
    start  = byte(0x3D969C) == 9 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51342, title = "Speed Skating 500m - Sonic",
    description = "Finish Speed Skating 500m as fast as possible with Sonic",
    start  = byte(0x3D969C) == 10 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0 && byte(0x0C4614) == 1,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51343, title = "Speed Skating 500m - Tails",
    description = "Finish Speed Skating 500m as fast as possible with Tails",
    start  = byte(0x3D969C) == 11 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51344, title = "Speed Skating 500m - Knuckles",
    description = "Finish Speed Skating 500m as fast as possible with Knuckes",
    start  = byte(0x3D969C) == 12 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51345, title = "Speed Skating 500m - Amy",
    description = "Finish Speed Skating 500m as fast as possible with Amy",
    start  = byte(0x3D969C) == 13 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51346, title = "Speed Skating 500m - Shadow",
    description = "Finish Speed Skating 500m as fast as possible with Shadow",
    start  = byte(0x3D969C) == 14 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51347, title = "Speed Skating 500m - Dr. Eggman",
    description = "Finish Speed Skating 500m as fast as possible with Dr. Eggman",
    start  = byte(0x3D969C) == 15 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51348, title = "Speed Skating 500m - Vector",
    description = "Finish Speed Skating 500m as fast as possible with Vector",
    start  = byte(0x3D969C) == 16 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51349, title = "Speed Skating 500m - Blaze",
    description = "Finish Speed Skating 500m as fast as possible with Blaze",
    start  = byte(0x3D969C) == 17 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51350, title = "Speed Skating 500m - Silver",
    description = "Finish Speed Skating 500m as fast as possible with Silver",
    start  = byte(0x3D969C) == 18 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 51351, title = "Speed Skating 500m - Metal Sonic",
    description = "Finish Speed Skating 500m as fast as possible with Metal Sonic",
    start  = byte(0x3D969C) == 19 && dword(0x3D9698) == 13 && byte(0x0BE664) == 1 && byte(0x0BC5CC) == 0 &&
             dword(0x3D96D0) == 0,
    cancel = always_true() &&
             ((dword(0x0BE67C) < prev(dword(0x0BE67C))) ||
              (dword(0x3D9698) != 13)),
    submit = byte(0x0BE664) == 1,
    value  = measured((dword(0x0BE67C) * 3.0 + dword(0x0BE67C))),
    format = "FRAMES"
)

leaderboard(
    id = 59881, title = "Short Track 500m - Mario",
    description = "Finish Short Track 500m as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60132, title = "Short Track 500m - Luigi",
    description = "Finish Short Track 500m as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59882, title = "Short Track 500m - Peach",
    description = "Finish Short Track 500m as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59883, title = "Short Track 500m - Daisy",
    description = "Finish Short Track 500m as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59884, title = "Short Track 500m - Yoshi",
    description = "Finish Short Track 500m as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59885, title = "Short Track 500m - Bowser",
    description = "Finish Short Track 500m as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59886, title = "Short Track 500m - Wario",
    description = "Finish Short Track 500m as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59887, title = "Short Track 500m - Waluigi",
    description = "Finish Short Track 500m as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59888, title = "Short Track 500m - Donkey Kong",
    description = "Finish Short Track 500m as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59889, title = "Short Track 500m - Bowser Jr.",
    description = "Finish Short Track 500m as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59890, title = "Short Track 500m - Sonic",
    description = "Finish Short Track 500m as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60133, title = "Short Track 500m - Tails",
    description = "Finish Short Track 500m as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60134, title = "Short Track 500m - Knuckles",
    description = "Finish Short Track 500m as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60135, title = "Short Track 500m - Amy",
    description = "Finish Short Track 500m as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60136, title = "Short Track 500m - Shadow",
    description = "Finish Short Track 500m as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60137, title = "Short Track 500m - Dr. Eggman",
    description = "Finish Short Track 500m as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60138, title = "Short Track 500m - Vector",
    description = "Finish Short Track 500m as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60139, title = "Short Track 500m - Blaze",
    description = "Finish Short Track 500m as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60140, title = "Short Track 500m - Silver",
    description = "Finish Short Track 500m as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60141, title = "Short Track 500m - Metal Sonic",
    description = "Finish Short Track 500m as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 14 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 14,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59891, title = "Intense Short Track - Mario",
    description = "Finish Intense Short Track as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60142, title = "Intense Short Track - Luigi",
    description = "Finish Intense Short Track as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59892, title = "Intense Short Track - Peach",
    description = "Finish Intense Short Track as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59893, title = "Intense Short Track - Daisy",
    description = "Finish Intense Short Track as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59894, title = "Intense Short Track - Yoshi",
    description = "Finish Intense Short Track as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59895, title = "Intense Short Track - Bowser",
    description = "Finish Intense Short Track as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59896, title = "Intense Short Track - Wario",
    description = "Finish Intense Short Track as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59897, title = "Intense Short Track - Waluigi",
    description = "Finish Intense Short Track as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59898, title = "Intense Short Track - Donkey Kong",
    description = "Finish Intense Short Track as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59899, title = "Intense Short Track - Bowser Jr.",
    description = "Finish Intense Short Track as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59900, title = "Intense Short Track - Sonic",
    description = "Finish Intense Short Track as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60143, title = "Intense Short Track - Tails",
    description = "Finish Intense Short Track as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60144, title = "Intense Short Track - Knuckles",
    description = "Finish Intense Short Track as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60145, title = "Intense Short Track - Amy",
    description = "Finish Intense Short Track as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60146, title = "Intense Short Track - Shadow",
    description = "Finish Intense Short Track as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60147, title = "Intense Short Track - Dr. Eggman",
    description = "Finish Intense Short Track as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60148, title = "Intense Short Track - Vector",
    description = "Finish Intense Short Track as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60149, title = "Intense Short Track - Blaze",
    description = "Finish Intense Short Track as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60150, title = "Intense Short Track - Silver",
    description = "Finish Intense Short Track as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 60151, title = "Intense Short Track - Metal Sonic",
    description = "Finish Intense Short Track as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 15 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 15,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0D0238) * 3.0 + dword(0x0D0238))),
    format = "FRAMES"
)

leaderboard(
    id = 59901, title = "Figure Skating: The Nutcracker - Mario",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60152, title = "Figure Skating: The Nutcracker - Luigi",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59902, title = "Figure Skating: The Nutcracker - Peach",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59903, title = "Figure Skating: The Nutcracker - Daisy",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59904, title = "Figure Skating: The Nutcracker - Yoshi",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59905, title = "Figure Skating: The Nutcracker - Bowser",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59906, title = "Figure Skating: The Nutcracker - Wario",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59907, title = "Figure Skating: The Nutcracker - Waluigi",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59908, title = "Figure Skating: The Nutcracker - Donkey Kong",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59909, title = "Figure Skating: The Nutcracker - Bowser Jr.",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59910, title = "Figure Skating: The Nutcracker - Sonic",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60153, title = "Figure Skating: The Nutcracker - Tails",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60154, title = "Figure Skating: The Nutcracker - Knuckles",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60155, title = "Figure Skating: The Nutcracker - Amy",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60156, title = "Figure Skating: The Nutcracker - Shadow",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60157, title = "Figure Skating: The Nutcracker - Dr. Eggman",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60158, title = "Figure Skating: The Nutcracker - Vector",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60159, title = "Figure Skating: The Nutcracker - Blaze",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60160, title = "Figure Skating: The Nutcracker - Silver",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60161, title = "Figure Skating: The Nutcracker - Metal Sonic",
    description = "Get as many Points as possible in Figure Skating: The Nutcracker with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 0,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59911, title = "Figure Skating: Carmen - Mario",
    description = "Get as many Points as possible in Figure Skating: Carmen with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60162, title = "Figure Skating: Carmen - Luigi",
    description = "Get as many Points as possible in Figure Skating: Carmen with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59912, title = "Figure Skating: Carmen - Peach",
    description = "Get as many Points as possible in Figure Skating: Carmen with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59913, title = "Figure Skating: Carmen - Daisy",
    description = "Get as many Points as possible in Figure Skating: Carmen with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59914, title = "Figure Skating: Carmen - Yoshi",
    description = "Get as many Points as possible in Figure Skating: Carmen with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59915, title = "Figure Skating: Carmen - Bowser",
    description = "Get as many Points as possible in Figure Skating: Carmen with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59916, title = "Figure Skating: Carmen - Wario",
    description = "Get as many Points as possible in Figure Skating: Carmen with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59917, title = "Figure Skating: Carmen - Waluigi",
    description = "Get as many Points as possible in Figure Skating: Carmen with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59918, title = "Figure Skating: Carmen - Donkey Kong",
    description = "Get as many Points as possible in Figure Skating: Carmen with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59919, title = "Figure Skating: Carmen - Bowser Jr.",
    description = "Get as many Points as possible in Figure Skating: Carmen with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59920, title = "Figure Skating: Carmen - Sonic",
    description = "Get as many Points as possible in Figure Skating: Carmen with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60163, title = "Figure Skating: Carmen - Tails",
    description = "Get as many Points as possible in Figure Skating: Carmen with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60164, title = "Figure Skating: Carmen - Knuckles",
    description = "Get as many Points as possible in Figure Skating: Carmen with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60165, title = "Figure Skating: Carmen - Amy",
    description = "Get as many Points as possible in Figure Skating: Carmen with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60166, title = "Figure Skating: Carmen - Shadow",
    description = "Get as many Points as possible in Figure Skating: Carmen with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60167, title = "Figure Skating: Carmen - Dr. Eggman",
    description = "Get as many Points as possible in Figure Skating: Carmen with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60168, title = "Figure Skating: Carmen - Vector",
    description = "Get as many Points as possible in Figure Skating: Carmen with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60169, title = "Figure Skating: Carmen - Blaze",
    description = "Get as many Points as possible in Figure Skating: Carmen with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60170, title = "Figure Skating: Carmen - Silver",
    description = "Get as many Points as possible in Figure Skating: Carmen with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60171, title = "Figure Skating: Carmen - Metal Sonic",
    description = "Get as many Points as possible in Figure Skating: Carmen with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 1,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59921, title = "Figure Skating: Die Fledermaus - Mario",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60172, title = "Figure Skating: Die Fledermaus - Luigi",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59922, title = "Figure Skating: Die Fledermaus - Peach",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59923, title = "Figure Skating: Die Fledermaus - Daisy",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59924, title = "Figure Skating: Die Fledermaus - Yoshi",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59925, title = "Figure Skating: Die Fledermaus - Bowser",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59926, title = "Figure Skating: Die Fledermaus - Wario",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59927, title = "Figure Skating: Die Fledermaus - Waluigi",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59928, title = "Figure Skating: Die Fledermaus - Donkey Kong",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59929, title = "Figure Skating: Die Fledermaus - Bowser Jr.",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59930, title = "Figure Skating: Die Fledermaus - Sonic",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60173, title = "Figure Skating: Die Fledermaus - Tails",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60174, title = "Figure Skating: Die Fledermaus - Knuckles",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60175, title = "Figure Skating: Die Fledermaus - Amy",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60176, title = "Figure Skating: Die Fledermaus - Shadow",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60177, title = "Figure Skating: Die Fledermaus - Dr. Eggman",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60178, title = "Figure Skating: Die Fledermaus - Vector",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60179, title = "Figure Skating: Die Fledermaus - Blaze",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60180, title = "Figure Skating: Die Fledermaus - Silver",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 60181, title = "Figure Skating: Die Fledermaus - Metal Sonic",
    description = "Get as many Points as possible in Figure Skating: Die Fledermaus with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 16 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0DA4E8) == 2,
    cancel = dword(0x3D9698) != 16,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DA4B4) + dword(0x0DA4B8))),
    format = "SCORE"
)

leaderboard(
    id = 59931, title = "Ultimate Figure Skating: Mario Medley - Mario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60182, title = "Ultimate Figure Skating: Mario Medley - Luigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59932, title = "Ultimate Figure Skating: Mario Medley - Peach",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59933, title = "Ultimate Figure Skating: Mario Medley - Daisy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59934, title = "Ultimate Figure Skating: Mario Medley - Yoshi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59935, title = "Ultimate Figure Skating: Mario Medley - Bowser",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59936, title = "Ultimate Figure Skating: Mario Medley - Wario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59937, title = "Ultimate Figure Skating: Mario Medley - Waluigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59938, title = "Ultimate Figure Skating: Mario Medley - Donkey Kong",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59939, title = "Ultimate Figure Skating: Mario Medley - Bowser Jr.",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59940, title = "Ultimate Figure Skating: Mario Medley - Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60183, title = "Ultimate Figure Skating: Mario Medley - Tails",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60184, title = "Ultimate Figure Skating: Mario Medley - Knuckles",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60185, title = "Ultimate Figure Skating: Mario Medley - Amy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60186, title = "Ultimate Figure Skating: Mario Medley - Shadow",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60187, title = "Ultimate Figure Skating: Mario Medley - Dr. Eggman",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60188, title = "Ultimate Figure Skating: Mario Medley - Vector",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60189, title = "Ultimate Figure Skating: Mario Medley - Blaze",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60190, title = "Ultimate Figure Skating: Mario Medley - Silver",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60191, title = "Ultimate Figure Skating: Mario Medley - Metal Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario Medley with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 0,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59941, title = "Ultimate Figure Skating: Sonic Medley - Mario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60192, title = "Ultimate Figure Skating: Sonic Medley - Luigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59942, title = "Ultimate Figure Skating: Sonic Medley - Peach",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59943, title = "Ultimate Figure Skating: Sonic Medley - Daisy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59944, title = "Ultimate Figure Skating: Sonic Medley - Yoshi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59945, title = "Ultimate Figure Skating: Sonic Medley - Bowser",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59946, title = "Ultimate Figure Skating: Sonic Medley - Wario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59947, title = "Ultimate Figure Skating: Sonic Medley - Waluigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59948, title = "Ultimate Figure Skating: Sonic Medley - Donkey Kong",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59949, title = "Ultimate Figure Skating: Sonic Medley - Bowser Jr.",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59950, title = "Ultimate Figure Skating: Sonic Medley - Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60193, title = "Ultimate Figure Skating: Sonic Medley - Tails",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60194, title = "Ultimate Figure Skating: Sonic Medley - Knuckles",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60195, title = "Ultimate Figure Skating: Sonic Medley - Amy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60196, title = "Ultimate Figure Skating: Sonic Medley - Shadow",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60197, title = "Ultimate Figure Skating: Sonic Medley - Dr. Eggman",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60198, title = "Ultimate Figure Skating: Sonic Medley - Vector",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60199, title = "Ultimate Figure Skating: Sonic Medley - Blaze",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60200, title = "Ultimate Figure Skating: Sonic Medley - Silver",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60201, title = "Ultimate Figure Skating: Sonic Medley - Metal Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Sonic Medley with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 1,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59951, title = "Ultimate Figure Skating: Mario & Sonic Medley - Mario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60202, title = "Ultimate Figure Skating: Mario & Sonic Medley - Luigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59952, title = "Ultimate Figure Skating: Mario & Sonic Medley - Peach",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59953, title = "Ultimate Figure Skating: Mario & Sonic Medley - Daisy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59954, title = "Ultimate Figure Skating: Mario & Sonic Medley - Yoshi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59955, title = "Ultimate Figure Skating: Mario & Sonic Medley - Bowser",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59956, title = "Ultimate Figure Skating: Mario & Sonic Medley - Wario",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59957, title = "Ultimate Figure Skating: Mario & Sonic Medley - Waluigi",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59958, title = "Ultimate Figure Skating: Mario & Sonic Medley - Donkey Kong",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59959, title = "Ultimate Figure Skating: Mario & Sonic Medley - Bowser Jr.",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59960, title = "Ultimate Figure Skating: Mario & Sonic Medley - Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60203, title = "Ultimate Figure Skating: Mario & Sonic Medley - Tails",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60204, title = "Ultimate Figure Skating: Mario & Sonic Medley - Knuckles",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60205, title = "Ultimate Figure Skating: Mario & Sonic Medley - Amy",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60206, title = "Ultimate Figure Skating: Mario & Sonic Medley - Shadow",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60207, title = "Ultimate Figure Skating: Mario & Sonic Medley - Dr. Eggman",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60208, title = "Ultimate Figure Skating: Mario & Sonic Medley - Vector",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60209, title = "Ultimate Figure Skating: Mario & Sonic Medley - Blaze",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60210, title = "Ultimate Figure Skating: Mario & Sonic Medley - Silver",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 60211, title = "Ultimate Figure Skating: Mario & Sonic Medley - Metal Sonic",
    description = "Get as many Points as possible in Ultimate Figure Skating: Mario & Sonic Medley with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 17 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1 && dword(0x0C7CD4) == 2,
    cancel = dword(0x3D9698) != 17,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0CA6BC) * 10 + dword(0x0CA6C0) * 30 + dword(0x0CA6C8))),
    format = "SCORE"
)

leaderboard(
    id = 59961, title = "Skeleton - Mario",
    description = "Finish Skeletonas fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60212, title = "Skeleton - Luigi",
    description = "Finish Skeletonas fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59962, title = "Skeleton - Peach",
    description = "Finish Skeletonas fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59963, title = "Skeleton - Daisy",
    description = "Finish Skeletonas fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59964, title = "Skeleton - Yoshi",
    description = "Finish Skeletonas fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59965, title = "Skeleton - Bowser",
    description = "Finish Skeletonas fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59966, title = "Skeleton - Wario",
    description = "Finish Skeletonas fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59967, title = "Skeleton - Waluigi",
    description = "Finish Skeletonas fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59968, title = "Skeleton - Donkey Kong",
    description = "Finish Skeletonas fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59969, title = "Skeleton - Bowser Jr.",
    description = "Finish Skeletonas fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59970, title = "Skeleton - Sonic",
    description = "Finish Skeletonas fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60213, title = "Skeleton - Tails",
    description = "Finish Skeletonas fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60214, title = "Skeleton - Knuckles",
    description = "Finish Skeletonas fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60215, title = "Skeleton - Amy",
    description = "Finish Skeletonas fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60216, title = "Skeleton - Shadow",
    description = "Finish Skeletonas fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60217, title = "Skeleton - Dr. Eggman",
    description = "Finish Skeletonas fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60218, title = "Skeleton - Vector",
    description = "Finish Skeletonas fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60219, title = "Skeleton - Blaze",
    description = "Finish Skeletonas fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60220, title = "Skeleton - Silver",
    description = "Finish Skeletonas fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60221, title = "Skeleton - Metal Sonic",
    description = "Finish Skeletonas fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 20 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 20,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59971, title = "Luge - Mario",
    description = "Finish Luge as fast as possible with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60222, title = "Luge - Luigi",
    description = "Finish Luge as fast as possible with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59972, title = "Luge - Peach",
    description = "Finish Luge as fast as possible with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59973, title = "Luge - Daisy",
    description = "Finish Luge as fast as possible with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59974, title = "Luge - Yoshi",
    description = "Finish Luge as fast as possible with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59975, title = "Luge - Bowser",
    description = "Finish Luge as fast as possible with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59976, title = "Luge - Wario",
    description = "Finish Luge as fast as possible with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59977, title = "Luge - Waluigi",
    description = "Finish Luge as fast as possible with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59978, title = "Luge - Donkey Kong",
    description = "Finish Luge as fast as possible with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59979, title = "Luge - Bowser Jr.",
    description = "Finish Luge as fast as possible with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59980, title = "Luge - Sonic",
    description = "Finish Luge as fast as possible with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60223, title = "Luge - Tails",
    description = "Finish Luge as fast as possible with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60224, title = "Luge - Knuckles",
    description = "Finish Luge as fast as possible with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60225, title = "Luge - Amy",
    description = "Finish Luge as fast as possible with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60226, title = "Luge - Shadow",
    description = "Finish Luge as fast as possible with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60227, title = "Luge - Dr. Eggman",
    description = "Finish Luge as fast as possible with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60228, title = "Luge - Vector",
    description = "Finish Luge as fast as possible with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60229, title = "Luge - Blaze",
    description = "Finish Luge as fast as possible with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60230, title = "Luge - Silver",
    description = "Finish Luge as fast as possible with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60231, title = "Luge - Metal Sonic",
    description = "Finish Luge as fast as possible with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 21 &&
             byte(tbyte(0x0AF628) + 0x0002F0) == 1 && byte(tbyte(0x0AF628) + 0x000364) == 0,
    cancel = dword(0x3D9698) != 21,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 59981, title = "Curling - Mario",
    description = "Get as many Points as possible in Curling with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60232, title = "Curling - Luigi",
    description = "Get as many Points as possible in Curling with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59982, title = "Curling - Peach",
    description = "Get as many Points as possible in Curling with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59983, title = "Curling - Daisy",
    description = "Get as many Points as possible in Curling with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59984, title = "Curling - Yoshi",
    description = "Get as many Points as possible in Curling with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59985, title = "Curling - Bowser",
    description = "Get as many Points as possible in Curling with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59986, title = "Curling - Wario",
    description = "Get as many Points as possible in Curling with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59987, title = "Curling - Waluigi",
    description = "Get as many Points as possible in Curling with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59988, title = "Curling - Donkey Kong",
    description = "Get as many Points as possible in Curling with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59989, title = "Curling - Bowser Jr.",
    description = "Get as many Points as possible in Curling with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59990, title = "Curling - Sonic",
    description = "Get as many Points as possible in Curling with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60233, title = "Curling - Tails",
    description = "Get as many Points as possible in Curling with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60234, title = "Curling - Knuckles",
    description = "Get as many Points as possible in Curling with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60235, title = "Curling - Amy",
    description = "Get as many Points as possible in Curling with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60236, title = "Curling - Shadow",
    description = "Get as many Points as possible in Curling with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60237, title = "Curling - Dr. Eggman",
    description = "Get as many Points as possible in Curling with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60238, title = "Curling - Vector",
    description = "Get as many Points as possible in Curling with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60239, title = "Curling - Blaze",
    description = "Get as many Points as possible in Curling with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60240, title = "Curling - Silver",
    description = "Get as many Points as possible in Curling with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 60241, title = "Curling - Metal Sonic",
    description = "Get as many Points as possible in Curling with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 24 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 24,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0C60C8) + dword(0x0C60D0))),
    format = "SCORE"
)

leaderboard(
    id = 59991, title = "Curling Bowling - Mario",
    description = "Get as many Points as possible in Curling Bowling with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60242, title = "Curling Bowling - Luigi",
    description = "Get as many Points as possible in Curling Bowling with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59992, title = "Curling Bowling - Peach",
    description = "Get as many Points as possible in Curling Bowling with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59993, title = "Curling Bowling - Daisy",
    description = "Get as many Points as possible in Curling Bowling with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59994, title = "Curling Bowling - Yoshi",
    description = "Get as many Points as possible in Curling Bowling with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59995, title = "Curling Bowling - Bowser",
    description = "Get as many Points as possible in Curling Bowling with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59996, title = "Curling Bowling - Wario",
    description = "Get as many Points as possible in Curling Bowling with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59997, title = "Curling Bowling - Waluigi",
    description = "Get as many Points as possible in Curling Bowling with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59998, title = "Curling Bowling - Donkey Kong",
    description = "Get as many Points as possible in Curling Bowling with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 59999, title = "Curling Bowling - Bowser Jr.",
    description = "Get as many Points as possible in Curling Bowling with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60000, title = "Curling Bowling - Sonic",
    description = "Get as many Points as possible in Curling Bowling with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60243, title = "Curling Bowling - Tails",
    description = "Get as many Points as possible in Curling Bowling with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60244, title = "Curling Bowling - Knuckles",
    description = "Get as many Points as possible in Curling Bowling with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60245, title = "Curling Bowling - Amy",
    description = "Get as many Points as possible in Curling Bowling with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60246, title = "Curling Bowling - Shadow",
    description = "Get as many Points as possible in Curling Bowling with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60247, title = "Curling Bowling - Dr. Eggman",
    description = "Get as many Points as possible in Curling Bowling with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60248, title = "Curling Bowling - Vector",
    description = "Get as many Points as possible in Curling Bowling with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60249, title = "Curling Bowling - Blaze",
    description = "Get as many Points as possible in Curling Bowling with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60250, title = "Curling Bowling - Silver",
    description = "Get as many Points as possible in Curling Bowling with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60251, title = "Curling Bowling - Metal Sonic",
    description = "Get as many Points as possible in Curling Bowling with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 25 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 25,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0E1080),
    format = "SCORE"
)

leaderboard(
    id = 60001, title = "Snow Machine Fight - Mario",
    description = "Get as many Points as possible in Snow Machine Fight with Mario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 0 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60252, title = "Snow Machine Fight - Luigi",
    description = "Get as many Points as possible in Snow Machine Fight with Luigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 1 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60002, title = "Snow Machine Fight - Peach",
    description = "Get as many Points as possible in Snow Machine Fight with Peach",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 2 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60003, title = "Snow Machine Fight - Daisy",
    description = "Get as many Points as possible in Snow Machine Fight with Daisy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 3 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60004, title = "Snow Machine Fight - Yoshi",
    description = "Get as many Points as possible in Snow Machine Fight with Yoshi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 4 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60005, title = "Snow Machine Fight - Bowser",
    description = "Get as many Points as possible in Snow Machine Fight with Bowser",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 5 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60006, title = "Snow Machine Fight - Wario",
    description = "Get as many Points as possible in Snow Machine Fight with Wario",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 6 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60007, title = "Snow Machine Fight - Waluigi",
    description = "Get as many Points as possible in Snow Machine Fight with Waluigi",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 7 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60008, title = "Snow Machine Fight - Donkey Kong",
    description = "Get as many Points as possible in Snow Machine Fight with Donkey Kong",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 8 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60009, title = "Snow Machine Fight - Bowser Jr.",
    description = "Get as many Points as possible in Snow Machine Fight with Bowser Jr.",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 9 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60010, title = "Snow Machine Fight - Sonic",
    description = "Get as many Points as possible in Snow Machine Fight with Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 10 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60253, title = "Snow Machine Fight - Tails",
    description = "Get as many Points as possible in Snow Machine Fight with Tails",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 11 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60254, title = "Snow Machine Fight - Knuckles",
    description = "Get as many Points as possible in Snow Machine Fight with Knuckles",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 12 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60255, title = "Snow Machine Fight - Amy",
    description = "Get as many Points as possible in Snow Machine Fight with Amy",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 13 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60256, title = "Snow Machine Fight - Shadow",
    description = "Get as many Points as possible in Snow Machine Fight with Shadow",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 14 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60257, title = "Snow Machine Fight - Dr. Eggman",
    description = "Get as many Points as possible in Snow Machine Fight with Dr. Eggman",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 15 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60258, title = "Snow Machine Fight - Vector",
    description = "Get as many Points as possible in Snow Machine Fight with Vector",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 16 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60259, title = "Snow Machine Fight - Blaze",
    description = "Get as many Points as possible in Snow Machine Fight with Blaze",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 17 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60260, title = "Snow Machine Fight - Silver",
    description = "Get as many Points as possible in Snow Machine Fight with Silver",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 18 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60261, title = "Snow Machine Fight - Metal Sonic",
    description = "Get as many Points as possible in Snow Machine Fight with Metal Sonic",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && byte(0x3D969C) == 19 && dword(0x3D9698) == 26 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 26,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = dword(0x0C84C0),
    format = "SCORE"
)

leaderboard(
    id = 60262, title = "Bobsleigh",
    description = "Finish Bobsleigh as fast as possible",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && dword(0x3D9698) == 18 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 18,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60263, title = "Blazing Bobsleigh",
    description = "Finish Blazing Bobsleigh as fast as possible",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && dword(0x3D9698) == 19 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 19,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0E2010) * 3.0 + dword(0x0E2010))),
    format = "FRAMES"
)

leaderboard(
    id = 60264, title = "Ice Hockey",
    description = "Get as many Points as possible in Ice Hockey",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && dword(0x3D9698) == 22 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 22,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DBE40) + dword(0x0DBE44))),
    format = "SCORE"
)

leaderboard(
    id = 60265, title = "Fever Hockey",
    description = "Get as many Points as possible in Fever Hockey",
    start  = byte(0x3D9888) == 0 && byte(0x3D9889) == 1 && dword(0x3D9698) == 23 &&
             byte(tbyte(0x0AF628) + 0x000364) == 0 && byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    cancel = dword(0x3D9698) != 23,
    submit = byte(tbyte(0x0AF628) + 0x0002F0) == 1,
    value  = measured((dword(0x0DBE40) + dword(0x0DBE44))),
    format = "SCORE"
)
