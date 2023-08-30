// Sonic Classic Collection
// #ID = 14810

achievement(
    title = "Green Hill Zone", points = 5,
    description = "Complete Green Hill Zone for the first time",
    id = 243590, badge = "270495", published = "28.08.2022 20:50:43", modified = "28.08.2022 21:24:00",
    trigger = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && 
              never(byte(0x0AF5B1) != 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) ==
               0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2)
)

achievement(
    title = "Marble Zone", points = 5,
    description = "Complete Marble Zone for the first time",
    id = 243591, badge = "270496", published = "28.08.2022 20:50:44", modified = "28.08.2022 21:26:45",
    trigger = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && 
              never(byte(0x0AF5B1) != 2) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) ==
               0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2)
)

achievement(
    title = "Spring Yard Zone", points = 5,
    description = "Complete Spring Yard Zone for the first time",
    id = 243592, badge = "270497", published = "28.08.2022 20:50:44", modified = "28.08.2022 21:26:45",
    trigger = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && 
              never(byte(0x0AF5B1) != 4) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) ==
               0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2)
)

achievement(
    title = "Labyrinth Zone", points = 5,
    description = "Complete Labyrinth Zone for the first time",
    id = 243593, badge = "270498", published = "28.08.2022 20:50:44", modified = "28.08.2022 21:26:45",
    trigger = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && 
              never(byte(0x0AF5B1) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) ==
               0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2)
)

achievement(
    title = "Star Light Zone", points = 5,
    description = "Complete Star Light Zone for the first time",
    id = 243594, badge = "270499", published = "28.08.2022 20:50:45", modified = "28.08.2022 21:26:46",
    trigger = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && 
              never(byte(0x0AF5B1) != 3) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) ==
               0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2)
)

achievement(
    title = "Scrap Brain Zone", points = 5,
    description = "Complete Scrap Brain Zone for the first time",
    id = 243595, badge = "270500", published = "28.08.2022 20:50:45", modified = "29.08.2022 20:12:17",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never((byte(0x0AF5B1) != 5 && byte(0x0AF5B1)
               != 1)) && once(byte(0x0AEDA1) == 12 && byte(0x0AF5B1) == 5 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
               == 1 && prev(byte(0x0AF5B0)) == 0) && once(byte(0x0AEDA1) == 12 && byte(0x0AF5B1) == 5 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && prev(byte(0x0AF5B0)) == 1) && 
              once(prior(byte(0x0AF5B1)) == 1 && byte(0x0AF5B1) == 5) && unless((prev(byte(0x0AFB50)) == 1 &&
               word(0x0AF5B0) != prev(word(0x0AF5B0))))
)

achievement(
    title = "Final Zone", points = 5,
    description = "Complete Final Zone for the first time",
    id = 243596, badge = "270501", published = "28.08.2022 20:50:45", modified = "28.08.2022 21:26:46",
    trigger = byte(0x09E6CC) == 0 && byte(0x0AF783) == 0 && byte(0x0AEDA1) == 24
)

achievement(
    title = "Oldie but Goodie", points = 10,
    description = "Complete Sonic the Hedgehog in one session",
    id = 243597, badge = "270502", published = "28.08.2022 20:50:46", modified = "29.08.2022 05:45:57",
    trigger = never(byte(0x09E6CC) != 0) && unless(byte(0x0AF783) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1)
               == 4)) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
               == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78))
               == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12
               && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 1
               && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 2 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 2 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 3 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 3 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && 
              once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && prev(byte(0x0AF5B0)) == 0) && 
              once(byte(0x0AF5B1) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               prev(byte(0x0AF5B0)) == 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               prior(byte(0x0AF5B1)) == 1 && byte(0x0AF5B1) == 5) && once(byte(0x0AEDA1) == 24) && never(byte(0x09E488)
               == 1)
)

achievement(
    title = "Not so Super Sonic Ending", points = 25,
    description = "[Sonic 1] Complete Sonic the Hedgehog in one session with all Chaos Emeralds",
    id = 243627, badge = "270532", published = "28.08.2022 20:50:56", modified = "29.08.2022 05:44:02",
    trigger = never(byte(0x09E6CC) != 0) && unless(byte(0x0AF783) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1)
               == 4)) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
               == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78))
               == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12
               && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 1
               && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 2 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 2 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 3 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 3 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && 
              once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 2) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && prev(byte(0x0AF5B0)) == 0) && 
              once(byte(0x0AF5B1) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               prev(byte(0x0AF5B0)) == 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               prior(byte(0x0AF5B1)) == 1 && byte(0x0AF5B1) == 5) && once(byte(0x0AEDA1) == 24) && once(byte(0x0AF5F6)
               == 6) && never(byte(0x09E488) == 1)
)

achievement(
    title = "Emerald Hill Zone", points = 5,
    description = "Complete Emerald Hill Zone for the first time",
    id = 243598, badge = "270503", published = "28.08.2022 20:50:46", modified = "28.08.2022 21:26:47",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 0) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Chemical Plant Zone", points = 5,
    description = "Complete Chemical Plant Zone for the first time",
    id = 243599, badge = "270504", published = "28.08.2022 20:50:46", modified = "28.08.2022 21:26:47",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 13) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Aquatic Ruin Zone", points = 5,
    description = "Complete Aquatic Ruin Zone for the first time",
    id = 243600, badge = "270505", published = "28.08.2022 20:50:47", modified = "28.08.2022 21:26:48",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 15) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Casino Night Zone", points = 5,
    description = "Complete Casino Night Zone for the first time",
    id = 243601, badge = "270506", published = "28.08.2022 20:50:47", modified = "28.08.2022 21:26:48",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 12) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Hill Top Zone", points = 5,
    description = "Complete Hill Top Zone for the first time",
    id = 243602, badge = "270507", published = "28.08.2022 20:50:47", modified = "28.08.2022 21:26:48",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 7) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Mystic Cave Zone", points = 5,
    description = "Complete Mystic Cave Zone for the first time",
    id = 243603, badge = "270508", published = "28.08.2022 20:50:48", modified = "28.08.2022 21:26:49",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 11) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Oil Ocean Zone", points = 5,
    description = "Complete Oil Ocean Zone for the first time",
    id = 243604, badge = "270509", published = "28.08.2022 20:50:48", modified = "28.08.2022 21:26:49",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never(byte(0x0AF5B1) != 10) &&
              ((unless(byte(0x09E6CC) != 1) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)) ||
               (unless(byte(0x09E6CC) != 4) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0)
                 == 0) && once(prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1)))
)

achievement(
    title = "Metropolis Zone", points = 5,
    description = "Complete Metropolis Zone for the first time",
    id = 243605, badge = "270510", published = "28.08.2022 20:50:48", modified = "29.08.2022 21:27:29",
    trigger = unless(byte(0x0AEDA1) != 12) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && 
              never((byte(0x0AF5B1) != 4 && byte(0x0AF5B1) != 5)) &&
              ((unless(byte(0x09E6CC) != 1) && once(byte(0x0AF5B1) == 4 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1 && byte(0x0AF5B0) == 0)) ||
               (unless(byte(0x09E6CC) != 4) && once(byte(0x0AF5B1) == 4 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) != 4 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1 && byte(0x0AF5B0) == 0)))
)

achievement(
    title = "Sky Chase", points = 5,
    description = "Complete Sky Chase Zone for the first time",
    id = 243606, badge = "270511", published = "28.08.2022 20:50:49", modified = "28.08.2022 21:26:50",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              prev(byte(0x0AF5B1)) == 16 && byte(0x0AF5B1) == 6
)

achievement(
    title = "Wing Fortress", points = 5,
    description = "Complete Wing Fortress Zone for the first time",
    id = 243607, badge = "270512", published = "28.08.2022 20:50:49", modified = "28.08.2022 21:26:50",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              prev(byte(0x0AF5B1)) == 6 && byte(0x0AF5B1) == 14
)

achievement(
    title = "Death Egg Zone", points = 5,
    description = "Complete Death Egg Zone for the first time",
    id = 243608, badge = "270513", published = "28.08.2022 20:50:49", modified = "28.08.2022 21:26:50",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              byte(0x0AEDA1) == 32
)

achievement(
    title = "Wanna See Him Fail Again?", points = 10,
    description = "Complete Sonic the Hedgehog 2 in one session as Sonic",
    id = 243653, badge = "270558", published = "28.08.2022 20:51:04", modified = "01.09.2022 09:55:22",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF710) == 2) && never(byte(0x09E6CC) != 1) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(prev(byte(0x0AF5B1)) == 16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 &&
               byte(0x0AF5B1) == 14) && once(byte(0x0AEDA1) == 32) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1)
               == 8)
)

achievement(
    title = "The Difference of 1 Emerald", points = 25,
    description = "[Sonic 2] Complete Sonic the Hedgehog 2 in one session with all Chaos Emeralds as Sonic",
    id = 243656, badge = "270561", published = "28.08.2022 20:51:05", modified = "01.09.2022 09:55:23",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF710) == 2) && never(byte(0x09E6CC) != 1) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(prev(byte(0x0AF5B1)) == 16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 &&
               byte(0x0AF5B1) == 14) && once(byte(0x0AEDA1) == 32) && once(byte(0x0AF750) == 7) && never(byte(0x09E488)
               == 1) && never(byte(0x0AEDA1) == 8)
)

achievement(
    title = "Calculated Failure", points = 10,
    description = "Complete Sonic the Hedgehog 2 in one session as Tails",
    id = 243655, badge = "270560", published = "28.08.2022 20:51:05", modified = "01.09.2022 09:55:22",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF710) != 2) && never(byte(0x09E6CC) != 1) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(prev(byte(0x0AF5B1)) == 16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 &&
               byte(0x0AF5B1) == 14) && once(byte(0x0AEDA1) == 32) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1)
               == 8)
)

achievement(
    title = "You're Better Off Playing Alone Than with Sonic Together", points = 25,
    description = "[Sonic 2] Complete Sonic the Hedgehog 2 in one session with all Chaos Emeralds as Tails",
    id = 243658, badge = "270563", published = "28.08.2022 20:51:06", modified = "01.09.2022 09:55:23",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF710) != 2) && never(byte(0x09E6CC) != 1) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
               byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && 
              once(prev(byte(0x0AF5B1)) == 16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 &&
               byte(0x0AF5B1) == 14) && once(byte(0x0AEDA1) == 32) && once(byte(0x0AF750) == 7) && never(byte(0x09E488)
               == 1) && never(byte(0x0AEDA1) == 8)
)

achievement(
    title = "These Are Some Weird Time Travel Shenanigans", points = 10,
    description = "Complete Sonic the Hedgehog 2 in one session as Knuckles",
    id = 243654, badge = "270559", published = "28.08.2022 20:51:05", modified = "01.09.2022 09:55:22",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x09E6CC) != 4) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(prev(byte(0x0AF5B1)) ==
               16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 && byte(0x0AF5B1) == 14) && 
              once(byte(0x0AEDA1) == 32) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8)
)

achievement(
    title = "The Power of These Emeralds Allows Me to Feel", points = 25,
    description = "[Sonic 2] Complete Sonic the Hedgehog 2 in one session with all Chaos Emeralds as Knuckles",
    id = 243657, badge = "270562", published = "28.08.2022 20:51:06", modified = "01.09.2022 09:55:23",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x09E6CC) != 4) && once(byte(0x0AF5B1) == 0 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 0 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 13 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 15 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 15 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 7 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 7 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 11 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 10 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 10 &&
               byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && 
              once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 &&
               byte(0x0AF5B0) == 0) && once(byte(0x0AF5B1) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 &&
               byte(0x103DFE) == 1 && byte(0x0AF5B0) == 1) && once(byte(0x0AF5B1) == 5 && byte(0x0AEDA1) == 12 &&
               prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1 && byte(0x0AF5B0) == 0) && once(prev(byte(0x0AF5B1)) ==
               16 && byte(0x0AF5B1) == 6) && once(prev(byte(0x0AF5B1)) == 6 && byte(0x0AF5B1) == 14) && 
              once(byte(0x0AEDA1) == 32) && once(byte(0x0AF750) == 7) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8)
)

achievement(
    title = "Angel Island Zone", points = 5,
    description = "Complete Angel Island Zone for the first time",
    id = 243609, badge = "270514", published = "28.08.2022 20:50:50", modified = "12.07.2023 08:20:01",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AE5EF) != 0)) &&
              ((unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 2) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Hydrocity Zone", points = 5,
    description = "Complete Hydrocity Zone for the first time",
    id = 243610, badge = "270515", published = "28.08.2022 20:50:50", modified = "12.07.2023 08:20:05",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AF5B1) != 1)) &&
              ((unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 2) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Marble Garden Zone", points = 5,
    description = "Complete Marble Garden Zone for the first time",
    id = 243611, badge = "270516", published = "28.08.2022 20:50:50", modified = "12.07.2023 08:20:05",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AF5B1) != 2)) &&
              ((unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 2) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Carnival Night Zone", points = 5,
    description = "Complete Carnival Night Zone for the first time",
    id = 243612, badge = "270517", published = "28.08.2022 20:50:51", modified = "12.07.2023 08:20:05",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AF5B1) != 3)) &&
              ((unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 2) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Icecap Zone", points = 5,
    description = "Complete Icecap Zone for the first time",
    id = 243613, badge = "270518", published = "28.08.2022 20:50:51", modified = "12.07.2023 08:20:00",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AF5B1) != 5)) &&
              ((unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 2) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) !=
                 byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Launch Base Zone", points = 5,
    description = "Complete Launch Base Zone for the first time",
    id = 243614, badge = "270519", published = "28.08.2022 20:50:51", modified = "12.07.2023 08:20:00",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AF5B1) != 6)) &&
              ((unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && unless(byte(0x09E6CC) != 2) && 
                once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x0AEDA1) != 12) && unless(byte(0x09E6CC) != 5) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Eggman I've Had Enough!", points = 5,
    description = "Complete the Sonic 3 portion in one session as Sonic",
    id = 243615, badge = "270520", published = "28.08.2022 20:50:52", modified = "01.09.2022 09:55:20",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "The Full Gem Collection?", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic 3 portion in one session with all Chaos Emeralds as Sonic",
    id = 243659, badge = "270564", published = "28.08.2022 20:51:06", modified = "01.09.2022 09:55:24",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && byte(0x0AF752) >= 1 && byte(0x0AF753) >= 1 && 
              byte(0x0AF754) >= 1 && byte(0x0AF755) >= 1 && byte(0x0AF756) >= 1 && byte(0x0AF757) >= 1 && byte(0x0AF759)
               >= 1 && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Never Get on My Bad Side", points = 5,
    description = "Complete the Sonic 3 portion in one session as Tails",
    id = 243651, badge = "270556", published = "28.08.2022 20:51:04", modified = "01.09.2022 09:55:21",
    trigger = unless((byte(0x0AF77B) == 1 || byte(0x0AF79B) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF6A8) != 2) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "He Needs Them for His Own Creations", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic 3 portion in one session with all Chaos Emeralds as Tails",
    id = 243661, badge = "270566", published = "28.08.2022 20:51:07", modified = "01.09.2022 09:55:24",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF6A8) != 2) && byte(0x0AF752) >= 1 && byte(0x0AF753) >= 1 && byte(0x0AF754) >= 1 && 
              byte(0x0AF755) >= 1 && byte(0x0AF756) >= 1 && byte(0x0AF757) >= 1 && byte(0x0AF759) >= 1 && 
              never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Knock! Knock!", points = 5,
    description = "Complete the Sonic 3 portion in one session as Knuckles",
    id = 243616, badge = "270521", published = "28.08.2022 20:50:52", modified = "01.09.2022 09:55:20",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF6A8) != 3) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Stealing Them from Sonic Was Easier", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic 3 portion in one session with all Chaos Emeralds as Knuckles",
    id = 243660, badge = "270565", published = "28.08.2022 20:51:07", modified = "01.09.2022 09:55:24",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) ==
               4)) && never(byte(0x0AF6A8) != 3) && byte(0x0AF752) >= 1 && byte(0x0AF753) >= 1 && byte(0x0AF754) >= 1 && 
              byte(0x0AF755) >= 1 && byte(0x0AF756) >= 1 && byte(0x0AF757) >= 1 && byte(0x0AF759) >= 1 && 
              never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((unless(byte(0x09E6CC) != 2) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73))
                 != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AEDA1) == 32)) ||
               (unless(byte(0x09E6CC) != 5) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84))
                 != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 &&
                 byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE)
                 == 1) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 && byte(0x0AEDA1) != 12)) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 0 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AEDA1) == 32)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 0 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) ==
                 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF)
                 == 1 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 2 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 3 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 5 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 6 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Mushroom Hill Zone", points = 5,
    description = "Complete Mushroom Hill Zone for the first time",
    id = 243617, badge = "270522", published = "28.08.2022 20:50:52", modified = "12.07.2023 08:20:00",
    trigger = unless(byte(0x0AF783) == 1) && never((word(0x0AE5EE) != 5889 && byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AE5EF) != 7)) &&
              ((unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Flying Battery Zone", points = 5,
    description = "Complete Flying Battery Zone for the first time",
    id = 243618, badge = "270523", published = "28.08.2022 20:50:53", modified = "12.07.2023 08:20:00",
    trigger = unless(byte(0x0AF783) == 1) && never((word(0x0AE5EE) != 5889 && byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AE5EF) != 4)) &&
              ((unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Sandopolis Zone", points = 5,
    description = "Complete Sandopolis Zone for the first time",
    id = 243619, badge = "270524", published = "28.08.2022 20:50:53", modified = "12.07.2023 08:20:00",
    trigger = unless(byte(0x0AF783) == 1) && never((word(0x0AE5EE) != 5889 && byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AE5EF) != 8)) &&
              ((unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 0) && once(prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1 &&
                 byte(0x0AE5EE) == 1)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 1)))
)

achievement(
    title = "Lava Reef Zone", points = 5,
    description = "Complete Lava Reef Zone for the first time",
    id = 243620, badge = "270525", published = "28.08.2022 20:50:53", modified = "12.07.2023 08:19:59",
    trigger = unless(byte(0x0AF783) == 1) && never((word(0x0AE5EE) != 5889 && byte(0x0AF5B1) != 20 && byte(0x0AF5B1) !=
               21 && byte(0x0AE5EF) != 9 && byte(0x0AE5EF) != 22)) &&
              ((unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 9 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && prev(byte(0x102A84)) !=
                 byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 9 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0)))
)

achievement(
    title = "Sky Sanctuary", points = 5,
    description = "Complete Sky Sanctuary Zone for the first time",
    id = 243621, badge = "270526", published = "28.08.2022 20:50:54", modified = "31.08.2022 19:35:08",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF) != 10) &&
              ((byte(0x0AEDA1) == 12 && byte(0x0AF6A8) != 3 && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84)
                 == 1 && byte(0x0AE5EE) == 0) ||
               (prev(byte(0x0AEDA1)) == 12 && byte(0x0AF6A8) == 3 && repeated(2, prev(byte(0x0AAA18)) == 1 &&
                 byte(0x0AAA18) == 0 && never(byte(0x0AA7C0) == 24))) ||
               (byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0))
)

achievement(
    title = "Death Egg Zone", points = 5,
    description = "Complete Death Egg Zone for the first time",
    id = 243622, badge = "270527", published = "28.08.2022 20:50:54", modified = "03.09.2022 15:15:40",
    trigger = unless(byte(0x0AF783) == 1) && never((byte(0x0AE5EF) != 11 && byte(0x0AE5EF) != 23 && byte(0x0AE5EF) != 12
               && byte(0x0AE5EF) != 13)) &&
              ((unless(byte(0x0AEDA1) != 12) && once(byte(0x0AE5EF) == 11 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && (byte(0x0AE5EF) == 12 || byte(0x0AE5EF) == 13) &&
                 prev(byte(0x0AE5EF)) == 23) ||
               (unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && once(byte(0x0AE5EF) == 11 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && (byte(0x0AE5EF) == 12 ||
                 byte(0x0AE5EF) == 13) && prev(byte(0x0AE5EF)) == 23))
)

achievement(
    title = "The Doomsday Zone", points = 5,
    description = "Complete The Doomsday Zone for the first time",
    id = 243623, badge = "270528", published = "28.08.2022 20:50:54", modified = "30.08.2022 08:56:43",
    trigger = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && prev(byte(0x0AE5EF)) == 12 && 
              byte(0x0AE5EF) == 13
)

achievement(
    title = "I'm Gonna Take Down Your Plans for the Last Time!", points = 5,
    description = "Complete the Sonic & Knuckles portion in one session as Sonic",
    id = 243624, badge = "270529", published = "28.08.2022 20:50:55", modified = "01.09.2022 09:55:20",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && 
              never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && 
              never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "Half of What Their Worth", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic & Knuckles portion in one session with all Chaos Emeralds as Sonic",
    id = 243662, badge = "270567", published = "28.08.2022 20:51:07", modified = "01.09.2022 09:55:25",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && 
              never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && 
              once(byte(0x0AF752) >= 1) && once(byte(0x0AF753) >= 1) && once(byte(0x0AF754) >= 1) && once(byte(0x0AF755)
               >= 1) && once(byte(0x0AF756) >= 1) && once(byte(0x0AF757) >= 1) && once(byte(0x0AF759) >= 1) && 
              never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "The things I go through just to beat your ass", points = 5,
    description = "Complete the Sonic & Knuckles portion in one session as Tails",
    id = 243652, badge = "270557", published = "28.08.2022 20:51:04", modified = "01.09.2022 09:55:21",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 2) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "Not Even Science Can Make Them Super", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic & Knuckles portion in one session with all Chaos Emeralds as Tails",
    id = 243664, badge = "270569", published = "28.08.2022 20:51:08", modified = "01.09.2022 09:55:25",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 2) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once(byte(0x0AF752) >= 1) && 
              once(byte(0x0AF753) >= 1) && once(byte(0x0AF754) >= 1) && once(byte(0x0AF755) >= 1) && once(byte(0x0AF756)
               >= 1) && once(byte(0x0AF757) >= 1) && once(byte(0x0AF759) >= 1) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "It's Knuckles!", points = 5,
    description = "Complete the Sonic & Knuckles portion in one session as Knuckles",
    id = 243625, badge = "270530", published = "28.08.2022 20:50:55", modified = "04.09.2022 09:30:58",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 3) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) == 25 && byte(0x0AFA14) == 20)))
)

achievement(
    title = "Not Super Enough for Knuckles", points = 10,
    description = "[Sonic 3 & Knuckles] Complete the Sonic & Knuckles portion in one session with all Chaos Emeralds as Knuckles",
    id = 243663, badge = "270568", published = "28.08.2022 20:51:08", modified = "04.09.2022 09:30:58",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 3) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once(byte(0x0AF752) >= 1) && 
              once(byte(0x0AF753) >= 1) && once(byte(0x0AF754) >= 1) && once(byte(0x0AF755) >= 1) && once(byte(0x0AF756)
               >= 1) && once(byte(0x0AF757) >= 1) && once(byte(0x0AF759) >= 1) && never(byte(0x09E488) == 1) && 
              never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) == 25 && byte(0x0AFA14) == 20)))
)

achievement(
    title = "Crackin Eggs", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session as Sonic",
    id = 243668, badge = "270573", published = "28.08.2022 20:51:09", modified = "01.09.2022 11:38:10",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && 
              never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && never(byte(0x09E6CC) != 5) && never(byte(0x09E488)
               == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "Power to the Nature Enthusiast!", points = 25,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session with all Super Chaos Emeralds as Sonic",
    id = 243665, badge = "270570", published = "28.08.2022 20:51:08", modified = "01.09.2022 09:55:26",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && 
              never((byte(0x0AF6A8) != 0 && byte(0x0AF6A8) != 1)) && never(byte(0x09E6CC) != 5) && once(byte(0x0AF752)
               == 3) && once(byte(0x0AF753) == 3) && once(byte(0x0AF754) == 3) && once(byte(0x0AF755) == 3) && 
              once(byte(0x0AF756) == 3) && once(byte(0x0AF757) == 3) && once(byte(0x0AF759) == 3) && 
              never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "Battle of the scientists", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session as Tails",
    id = 243669, badge = "270574", published = "28.08.2022 20:51:10", modified = "01.09.2022 09:55:27",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 2) && never(byte(0x09E6CC) != 5) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "These Emeralds Can’t Be Explained with Science", points = 25,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session with all Super Chaos Emeralds as Tails",
    id = 243666, badge = "270571", published = "28.08.2022 20:51:09", modified = "01.09.2022 09:55:26",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 2) && never(byte(0x09E6CC) != 5) && once(byte(0x0AF752) == 3) && once(byte(0x0AF753) == 3) && 
              once(byte(0x0AF754) == 3) && once(byte(0x0AF755) == 3) && once(byte(0x0AF756) == 3) && once(byte(0x0AF757)
               == 3) && once(byte(0x0AF759) == 3) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 1 &&
                 byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 22 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40
                 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 11
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && 
                once(byte(0x0AE5EF) == 13)))
)

achievement(
    title = "I Thought You Were My Friend", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session as Knuckles",
    id = 243670, badge = "270575", published = "28.08.2022 20:51:10", modified = "04.09.2022 09:30:59",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 3) && never(byte(0x09E6CC) != 5) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) == 25 && byte(0x0AFA14) == 20)))
)

achievement(
    title = "Takin Back What's Mine", points = 25,
    description = "[Sonic 3 & Knuckles] Complete Sonic 3 & Knuckles in one session with all Super Chaos Emeralds as Knuckles",
    id = 243667, badge = "270572", published = "28.08.2022 20:51:09", modified = "04.09.2022 09:30:59",
    trigger = unless(byte(0x0AF77B) == 1) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && never(byte(0x0AF6A8)
               != 3) && never(byte(0x09E6CC) != 5) && once(byte(0x0AF752) == 3) && once(byte(0x0AF753) == 3) && 
              once(byte(0x0AF754) == 3) && once(byte(0x0AF755) == 3) && once(byte(0x0AF756) == 3) && once(byte(0x0AF757)
               == 3) && once(byte(0x0AF759) == 3) && never(byte(0x09E488) == 1) && never(byte(0x0AEDA1) == 8) &&
              ((once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AE5EF) == 13)) ||
               (unless(prev(byte(0x0AFA14)) == 52) && once(byte(0x0AE5EF) == 0 && byte(0x0AEDA1) == 12 &&
                 prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 0
                 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 2 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 2 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 3 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 5 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 5 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 6 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 7 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 7 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) == 4 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) !=
                 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && once(byte(0x0AE5EF) == 8 && byte(0x0AEDA1) == 12
                 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && once(byte(0x0AE5EF) ==
                 8 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) && 
                once(byte(0x0AE5EF) == 9 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40
                 && byte(0x0AE5EE) == 0) && once(prev(byte(0x0AE5EF)) == 9 && byte(0x0AE5EF) == 22) && 
                once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) == 25 && byte(0x0AFA14) == 20)))
)

achievement(
    title = "Oh! Shiny!", points = 2,
    description = "[Sonic 1] Collect your first Chaos Emerald",
    id = 243626, badge = "270531", published = "28.08.2022 20:50:55", modified = "28.08.2022 20:50:55",
    trigger = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(byte(0x0AF5F6)) == 0 && byte(0x0AF5F6) == 1
)

achievement(
    title = "Barely Enough", points = 5,
    description = "[Sonic 1] Collect 100 Rings",
    id = 243635, badge = "270540", published = "28.08.2022 20:50:58", modified = "28.08.2022 20:50:58",
    trigger = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x0AF5C0)) < 100 && 
              byte(0x0AF5C0) >= 100
)

achievement(
    title = "The Hedgehogs Worst Enemy…Waiting", points = 5,
    description = "Complete a Level in Sonic the Hedgehog with a time of 9 minutes and 59 seconds",
    id = 243715, badge = "270620", published = "28.08.2022 20:51:25", modified = "28.08.2022 20:51:25",
    trigger = byte(0x0AEDA1) == 12 && byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(byte(0x103E78)) == 0 && 
              byte(0x103E78) == 1 && (byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) == 2363
)

achievement(
    title = "There's No Going Back", points = 5,
    description = "[Sonic 1] Complete Green Hill Zone Act 2 without pressing left",
    id = 243628, badge = "270533", published = "28.08.2022 20:50:56", modified = "28.08.2022 20:50:56",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 0) && 
              never(byte(0x0AF5B0) != 1) && never((bit0(0x09E641) == 0 && byte(0x0AEDA1) == 12 && bit2(0x0AEDA3) == 1)) && 
              once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && trigger_when(once(byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1)) && never(byte(0x09E488) == 1)
)

achievement(
    title = "Rings Are Kinda Hot", points = 5,
    description = "[Sonic 1] Complete Marble Zone Act 3 while getting an Extra Life and having 90 Rings in hand",
    id = 243629, badge = "270534", published = "28.08.2022 20:50:56", modified = "29.08.2022 05:39:09",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 2) && 
              never(byte(0x0AF5B0) != 2) && never(byte(0x0AC7BC) == 24) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && trigger_when(once(byte(0x0AEDA1) == 12 && byte(0x0AF5C0) == prev(byte(0x0AF5C0)) &&
               word(0x0AF5C8) == prev(word(0x0AF5C8)) && byte(0x0AF5B3) > prev(byte(0x0AF5B3)))) && 
              trigger_when(once(byte(0x0AEDA1) == 12 && byte(0x0AF5C0) >= 90 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1)) && never(byte(0x09E488) == 1)
)

achievement(
    title = "Closer Than You Think", points = 5,
    description = "[Sonic 1] Complete Spring Yard Zone Act 1 and collect Speed Shoes and an Extra Life Monitor on your way",
    id = 243630, badge = "270535", published = "28.08.2022 20:50:57", modified = "28.08.2022 20:50:57",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 4) && 
              never(byte(0x0AF5B0) != 0) && never(byte(0x0AC7BC) == 26) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && once(byte(0x0AF5C0) == prev(byte(0x0AF5C0)) && byte(0x0AF5B3) > prev(byte(0x0AF5B3))) && 
              once(bit0(0x0AF5CF) > prev(bit0(0x0AF5CF))) && trigger_when(once(byte(0x0AEDA1) == 12 &&
               prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1)) && never(byte(0x09E488) == 1)
)

achievement(
    title = "Ain't No Way You’re Getting Away!", points = 10,
    description = "[Sonic 1] Defeat Eggman and his Eggmobile in Labyrinth Zone before he can get away",
    id = 243631, badge = "270536", published = "28.08.2022 20:50:57", modified = "29.08.2022 06:27:51",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 1) && 
              never(byte(0x0AF5B0) != 2) && once(word(0x0AC7AC) >= 1363 && word(0x0AC7AC) <= 1516 && word(0x0AC7A8) >=
               7404) && trigger_when(repeated(8, (once(prev(byte(word(0x0AD456) + 0x09F7C0)) == 8)) &&
               byte(word(0x0AD456) + 0x09F7C0) < prev(byte(word(0x0AD456) + 0x09F7C0)))) && never(byte(0x09E488) == 1) && 
              never((byte(0x0AC7BC) == 24 || byte(0x0AC7BC) == 23))
)

achievement(
    title = "Rings Are like Shooting Stars", points = 5,
    description = "[Sonic 1] Complete Star Light Zone Act 3 while having at least 70 Rings in hand",
    id = 243632, badge = "270537", published = "28.08.2022 20:50:57", modified = "28.08.2022 20:50:57",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 3) && 
              never(byte(0x0AF5B0) != 2) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && 
              trigger_when(once(byte(0x0AEDA1) == 12 && byte(0x0AF5C0) >= 70 && prev(byte(0x103E78)) == 0 &&
               byte(0x103E78) == 1)) && never(byte(0x09E488) == 1)
)

achievement(
    title = "These Traps Won't Stop Me", points = 5,
    description = "[Sonic 1] Complete Scrap Brain Zone Act 2 without getting hurt",
    id = 243633, badge = "270538", published = "28.08.2022 20:50:58", modified = "28.08.2022 20:50:58",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x09E6CC) != 0) && never(byte(0x0AF5B1) != 5) && 
              never(byte(0x0AF5B0) != 1) && never(byte(0x0AC7BC) == 26) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && trigger_when(once(byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1)) && 
              never(byte(0x09E488) == 1)
)

achievement(
    title = "Speed-O-Matic", points = 5,
    description = "[Sonic 1] Complete Final Zone in 1 minute and 40 seconds or less",
    id = 243634, badge = "270539", published = "28.08.2022 20:50:58", modified = "05.06.2023 11:45:42",
    trigger = byte(0x09E488) == 0 && byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && (byte(0x0AF5B1) == 5 &&
               byte(0x0AF5B0) == 2) || byte(0x0AF5B1) == 6 && trigger_when(((prev(byte(0x0AF5C2)) * 256 +
               prev(byte(0x0AF5C5))) <= 296) && prev(byte(0x0AF5B1)) == 5 && byte(0x0AF5B1) == 6)
)

achievement(
    title = "Harder Than It Looks", points = 25,
    description = "[Sonic 1] Get a Perfect in Special Stage 1 by collect all Rings and collect the Chaos Emerald",
    id = 243721, badge = "270626", published = "28.08.2022 20:51:27", modified = "29.08.2022 21:59:13",
    trigger = byte(0x09E6CC) == 0 && byte(0x0AF783) == 0 && byte(0x0AEDA1) == 16 && byte(0x0AF5B7) == 1 && 
              word(0x0AF5C0) == 104 &&
              ((byte(0x0AF5F6) != prev(byte(0x0AF5F6))) ||
               (word(0x0AC7A8) >= 907 && word(0x0AC7A8) <= 923 && word(0x0AC7AC) >= 1269 && word(0x0AC7AC) <= 1285))
)

achievement(
    title = "Trading a Ring for a Gem", points = 2,
    description = "[Sonic 2] Collect your first Chaos Emerald",
    id = 243636, badge = "270541", published = "28.08.2022 20:50:59", modified = "28.08.2022 20:50:59",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              prev(byte(0x0AF750)) == 0 && byte(0x0AF750) == 1
)

achievement(
    title = "Double the Power, Double the Rings", points = 5,
    description = "[Sonic 2] Collect 200 Rings",
    id = 243648, badge = "270553", published = "28.08.2022 20:51:03", modified = "28.08.2022 20:51:03",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              byte(0x0AEDA1) == 12 && prev(byte(0x0AF5C0)) < 200 && byte(0x0AF5C0) >= 200
)

achievement(
    title = "Bored Yet?", points = 5,
    description = "Complete a Level in Sonic the Hedgehog 2 with a time of 9 minutes and 59 seconds",
    id = 243716, badge = "270621", published = "28.08.2022 20:51:25", modified = "28.08.2022 20:51:25",
    trigger = byte(0x0AEDA1) == 12 && byte(0x0AF783) == 0 && (byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) == 2363 &&
              ((byte(0x09E6CC) == 1 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1) ||
               (byte(0x09E6CC) == 4 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1))
)

achievement(
    title = "Don't Trash Em!", points = 5,
    description = "[Sonic 2] Complete Emerald Hill Zone Act 2 without getting more than 1000 points",
    id = 243637, badge = "270542", published = "28.08.2022 20:50:59", modified = "01.09.2022 08:04:14",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 0) && never(byte(0x0AF5B0)
               != 1) && never(byte(0x09E488) == 1) && unless(byte(0x0AEDA1) == 16) && once(byte(0x0AEDA1) == 140 &&
               byte(0x0AF5D1) == 0) && never((word(0x0AF7B2) * 65536 + word(0x0AF5C8) - word(0x0AF7B4) - word(0x0AF5C6)
               * 65536) > 100) && never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "Super Sonic in Emerald Hill Zone", points = 10,
    description = "[Sonic 2] Collect all 7 Chaos Emeralds while in Emerald Hill Zone",
    id = 243718, badge = "270623", published = "28.08.2022 20:51:26", modified = "28.08.2022 20:51:26",
    trigger = never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) ==
               1)) && never(byte(0x0AF5B1) != 0) && never(byte(0x09E488) == 1) && once(prev(byte(0x0AF752)) == 0 &&
               byte(0x0AF752) == 255) && once(prev(byte(0x0AF753)) == 0 && byte(0x0AF753) == 255) && 
              once(prev(byte(0x0AF754)) == 0 && byte(0x0AF754) == 255) && once(prev(byte(0x0AF755)) == 0 &&
               byte(0x0AF755) == 255) && once(prev(byte(0x0AF756)) == 0 && byte(0x0AF756) == 255) && 
              once(prev(byte(0x0AF757)) == 0 && byte(0x0AF757) == 255) && once(prev(byte(0x0AF759)) == 0 &&
               byte(0x0AF759) == 255)
)

achievement(
    title = "I Take Your Entire Stock!", points = 5,
    description = "[Sonic 2] Complete Chemical Plant Zone Act 1 while destroying at least 15 Monitors",
    id = 243638, badge = "270543", published = "28.08.2022 20:50:59", modified = "01.09.2022 08:04:15",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 13) && 
              never(byte(0x0AF5B0) != 0) && never(byte(0x0AA7BC) == 24) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && trigger_when(repeated(15, byte(0x0AF694) > prev(byte(0x0AF694)))) && never(byte(0x09E488) == 1) && 
              never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "Think about the Sea Creatures", points = 5,
    description = "[Sonic 2] Complete Aquatic Ruin Zone Act 2 without getting more than 1000 points",
    id = 243639, badge = "270544", published = "28.08.2022 20:51:00", modified = "01.09.2022 08:04:15",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 15) && 
              never(byte(0x0AF5B0) != 1) && never(byte(0x09E488) == 1) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && never((word(0x0AF7B2) * 65536 + word(0x0AF5C8) - word(0x0AF7B4) - word(0x0AF5C6) * 65536) > 100) && 
              never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "I'm Not Addicted to Gambling!", points = 10,
    description = "[Sonic 2] Complete Casino Night Zone Act 2  while having at least 150 Rings in hand",
    id = 243640, badge = "270545", published = "28.08.2022 20:51:00", modified = "01.09.2022 08:04:15",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 12) && 
              never(byte(0x0AF5B0) != 1) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && 
              trigger_when(word(0x0AF5C0) >= 150) && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 1 &&
               byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "Gamble Addict", points = 5,
    description = "[Sonic 2] Get the Jackpot in the Casino Night Zone",
    id = 243649, badge = "270554", published = "28.08.2022 20:51:03", modified = "28.08.2022 20:51:03",
    trigger = byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
              byte(0x0AF5B1) == 12 && byte(0x0AEDA1) == 12 && prior(byte(0x0AF6F5)) == 255 && byte(0x0AF6F5) == 0 && 
              prior(byte(0x0AF6F9)) == 255 && byte(0x0AF6F9) == 0 && prior(byte(0x0AF6FD)) == 255 && byte(0x0AF6FD) == 0 && 
              byte(0x0AF5C0) > prev(byte(0x0AF5C0))
)

achievement(
    title = "Ring on Top Zone", points = 5,
    description = "[Sonic 2] Complete Hill Top Zone Act 1 while collecting all Rings",
    id = 243641, badge = "270546", published = "28.08.2022 20:51:00", modified = "01.09.2022 08:04:16",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 7) && never(byte(0x0AF5B0)
               != 0) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && trigger_when(repeated(4, ((byte(0x0AF5C0)
               - prev(byte(0x0AF5C0))) >= 10) && byte(0x0AF694) > prev(byte(0x0AF694)))) && trigger_when(byte(0x0AF6E0)
               == 0) && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "I Hate These Bugs!", points = 5,
    description = "[Sonic 2] Complete Mystic Cave Zone Act 1 without getting hurt",
    id = 243642, badge = "270547", published = "28.08.2022 20:51:01", modified = "01.09.2022 08:04:16",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 11) && 
              never(byte(0x0AF5B0) != 0) && never(byte(0x0AA7BC) == 26) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "Pump and Dump at the Speed of Sound", points = 5,
    description = "[Sonic 2] Complete Oil Ocean Zone Act 2 in 1 minute and 30 seconds or less",
    id = 243643, badge = "270548", published = "28.08.2022 20:51:01", modified = "01.09.2022 08:04:16",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 10) && 
              never(byte(0x0AF5B0) != 1) && never(byte(0x0AA7BC) == 24) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1)
               == 0) && (byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) <= 286 && never(byte(0x09E488) == 1) && 
              never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "I Don't Need a Spindash, I'm Fast Enough", points = 5,
    description = "[Sonic 2] Complete Metropolis Zone Act 2 without spindashing once",
    id = 243644, badge = "270549", published = "28.08.2022 20:51:01", modified = "01.09.2022 08:04:17",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never(byte(0x0AF5B1) != 4) && never(byte(0x0AF5B0)
               != 1) && never(byte(0x0AA7BC) == 9) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && 
              never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) &&
              ((byte(0x09E6CC) == 1 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78)
                 == 1))) ||
               (byte(0x09E6CC) == 4 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE)
                 == 1))))
)

achievement(
    title = "Chasing after These Rings", points = 5,
    description = "[Sonic 2] Collect all Rings in Sky Chase Zone",
    id = 243645, badge = "270550", published = "28.08.2022 20:51:02", modified = "29.08.2022 19:53:37",
    trigger = byte(0x09E488) == 0 && byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 ||
               byte(0x09E6CC) == 4) && prev(byte(0x0AF5B1)) == 16 && trigger_when((prev(byte(0x0AF5B1)) == 16 &&
               byte(0x0AF5B1) == 6)) && trigger_when(prev(byte(0x0AF6E0)) == 0)
)

achievement(
    title = "Destruction of the Airship", points = 5,
    description = "[Sonic 2] Complete Wing Fortress Zone while destroying at least 15 Monitors",
    id = 243646, badge = "270551", published = "28.08.2022 20:51:02", modified = "29.08.2022 19:51:13",
    trigger = unless((byte(0x0AF6AB) == 1 || byte(0x0AF773) == 1)) && never((byte(0x09E6CC) != 1 && byte(0x09E6CC) !=
               4)) && never((byte(0x0AF5B1) != 14 && byte(0x0AF5B1) != 6)) && never(byte(0x0AA7BC) == 24) && 
              once(byte(0x0AF5B1) == 6 && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0) && trigger_when(repeated(15,
               byte(0x0AF694) > prev(byte(0x0AF694)))) && trigger_when((prev(byte(0x0AF5B1)) == 6 && byte(0x0AF5B1) ==
               14)) && never(byte(0x09E488) == 1) && never((prev(byte(0x0AF5B1)) == 14 && byte(0x0AEDA1) == 140))
)

achievement(
    title = "Your Hitbox Won't Stop Me", points = 5,
    description = "[Sonic 2] Complete Death Egg Zone in 2 minutes or less",
    id = 243647, badge = "270552", published = "28.08.2022 20:51:02", modified = "28.08.2022 20:51:02",
    trigger = byte(0x09E488) == 0 && byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 ||
               byte(0x09E6CC) == 4) && byte(0x0AF5B1) == 14 && trigger_when(((byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) <=
               512) && byte(0x0AEDA1) == 32)
)

achievement(
    title = "Fear the Spheres", points = 2,
    description = "[Sonic 3 & Knuckles] Collect your first Chaos Emerald",
    id = 243650, badge = "270555", published = "28.08.2022 20:51:03", modified = "31.08.2022 08:44:23",
    trigger = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
               byte(0x09E6CC) == 5) && prev(byte(0x0AF751)) == 0 && byte(0x0AF751) == 1
)

achievement(
    title = "Rings-O-Plenty", points = 5,
    description = "[Sonic 3 & Knuckles] Collect 300 Rings",
    id = 243685, badge = "270590", published = "28.08.2022 20:51:15", modified = "28.08.2022 20:51:15",
    trigger = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
               byte(0x09E6CC) == 5) && byte(0x0AEDA1) == 12 && prev(word(0x0AF5C0)) < 300 && word(0x0AF5C0) >= 300
)

achievement(
    title = "Good Luck Hitting That", points = 5,
    description = "Complete a Level in Sonic the Hedgehog 3 & Knuckles with a time of 9 minutes and 59 seconds",
    id = 243717, badge = "270622", published = "28.08.2022 20:51:26", modified = "31.08.2022 19:35:16",
    trigger = byte(0x0AEDA1) == 12 && byte(0x0AF783) == 0 && (byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) == 2363 &&
              ((byte(0x09E6CC) == 2 && prev(byte(0x0AEF73)) != byte(0x0AEF73) && byte(0x0AEF73) == 1) ||
               ((byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84)
                 == 1) ||
               (prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))
)

achievement(
    title = "The Only Direction I Know", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Angel Island Zone Act 1 without pressing left",
    id = 243671, badge = "270576", published = "28.08.2022 20:51:10", modified = "01.09.2022 08:04:17",
    trigger = never(byte(0x0AEDA1) == 4) && unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF)
               != 0) && never(byte(0x0AE5EE) != 0) && never((bit0(0x09E641) == 0 && byte(0x0AEDA1) == 12 &&
               bit2(0x0AEDA3) == 1)) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && never(byte(0x09E488) == 1) && 
              never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) &&
              ((byte(0x09E6CC) == 2 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1))) ||
               (byte(0x09E6CC) == 5 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Hedgehogs Can't swim..I Guess", points = 5,
    description = "[Sonic 3 & Knuckles] Get to the Boss Room in Hydrocity Zone Act 1 without touching any water",
    id = 243672, badge = "270577", published = "28.08.2022 20:51:11", modified = "01.09.2022 08:04:17",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 1) && never(byte(0x0AE5EE)
               != 0) && never(bit6(0x0AA7CB) == 1) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && 
              never(byte(0x09E488) == 1) && trigger_when(once(word(0x0AA7B0) >= 13971 && word(0x0AA7B0) <= 14027 &&
               word(0x0AA7B4) >= 1378)) && never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5))
)

achievement(
    title = "Watering the Plants", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Marble Garden Zone Act 2 with a water shield",
    id = 243673, badge = "270578", published = "28.08.2022 20:51:11", modified = "01.09.2022 15:15:47",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 2) && never(byte(0x0AE5EE)
               != 1) && once((prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 &&
               byte(0x0AF5CB) == 0) && trigger_when(bit6(0x0AA7CA) == 1) && never(byte(0x09E488) == 1) && 
              never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) &&
              ((byte(0x09E6CC) == 2 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1))) ||
               (byte(0x09E6CC) == 5 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Money Fever", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Carnival Night Zone Act 2 while collecting 6 1UPs from Monitors and Rings",
    id = 243674, badge = "270579", published = "28.08.2022 20:51:11", modified = "01.09.2022 15:15:47",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 3) && never(byte(0x0AE5EE)
               != 1) && never(byte(0x0AA7C0) == 24) && once((prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) &&
               byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && trigger_when(repeated(6, byte(0x0AF5B3) >
               prev(byte(0x0AF5B3)))) && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 2 && byte(0x09E6CC) !=
               5)) &&
              ((byte(0x09E6CC) == 2 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1))) ||
               (byte(0x09E6CC) == 5 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Too Cool for Rings", points = 5,
    description = "[Sonic 3 & Knuckles] Collect no Rings in the snowboard section of Icecap Zone Act 1 and make it to the cave",
    id = 243675, badge = "270580", published = "28.08.2022 20:51:12", modified = "30.08.2022 11:27:11",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 5) && never(byte(0x0AE5EE)
               != 0) && never((prev(byte(0x0AEDA1)) == 12 && byte(0x0AF5C0) != prev(byte(0x0AF5C0)))) && 
              once((byte(0x0AF6AA) == 0 || byte(0x0AF6AA) == 1) && byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && 
              trigger_when((word(0x0AA7B4) == 1772 && word(0x0AA7B0) >= 14346 && word(0x0AA7B0) <= 14589)) && 
              never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5))
)

achievement(
    title = "Shocking Flow in the Snow", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Icecap Zone Act 1 with a electric shield and have 100 Rings in hand",
    id = 243676, badge = "270581", published = "28.08.2022 20:51:12", modified = "01.09.2022 08:04:18",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 5) && never(byte(0x0AE5EE)
               != 0) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && trigger_when((byte(0x0AF5C0) >= 100 &&
               bit5(0x0AA7CA) == 1)) && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 2 && byte(0x09E6CC) !=
               5)) &&
              ((byte(0x09E6CC) == 2 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1))) ||
               (byte(0x09E6CC) == 5 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "No Time for Messin Around!", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Launch Base Zone Act 1 in 2 minutes and 30 seconds or less",
    id = 243677, badge = "270582", published = "28.08.2022 20:51:12", modified = "01.09.2022 08:04:19",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never(byte(0x0AE5EF) != 6) && never(byte(0x0AE5EE)
               != 0) && never(byte(0x0AA7C0) == 24) && once(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && 
              (byte(0x0AF5C2) * 256 + byte(0x0AF5C5)) <= 542 && never(byte(0x09E488) == 1) && never((byte(0x09E6CC) != 2
               && byte(0x09E6CC) != 5)) &&
              ((byte(0x09E6CC) == 2 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x0AEF73)) != byte(0x0AEF73) &&
                 byte(0x0AEF73) == 1))) ||
               (byte(0x09E6CC) == 5 && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "A Bit of Destruction Can't Hurt", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Mushroom Hill Zone Act 1 while destroying at least 15 Monitors",
    id = 243678, badge = "270583", published = "28.08.2022 20:51:13", modified = "31.08.2022 19:35:18",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF) != 7) && never(byte(0x0AE5EE) != 0) && 
              never(byte(0x0AA7C0) == 24) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once(byte(0x0AEDA1)
               == 140 && byte(0x0AF5CB) == 0) && trigger_when(repeated(15, byte(0x0AF66C) > prev(byte(0x0AF66C)))) && 
              never(byte(0x09E488) == 1) &&
              ((byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Super Sonic in Mushroom Hill Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Collect overall 7 Chaos and/or Super Chaos Emeralds while in Mushroom Hill Zone",
    id = 243719, badge = "270624", published = "28.08.2022 20:51:26", modified = "17.09.2022 17:05:21",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF)
               != 7) && tally(7, 
                  once(prev(byte(0x0AF752)) == 0 && byte(0x0AF752) == 1), 
                  once(prev(byte(0x0AF753)) == 0 && byte(0x0AF753) == 1), 
                  once(prev(byte(0x0AF754)) == 0 && byte(0x0AF754) == 1), 
                  once(prev(byte(0x0AF755)) == 0 && byte(0x0AF755) == 1), 
                  once(prev(byte(0x0AF756)) == 0 && byte(0x0AF756) == 1), 
                  once(prev(byte(0x0AF757)) == 0 && byte(0x0AF757) == 1), 
                  once(prev(byte(0x0AF759)) == 0 && byte(0x0AF759) == 1), 
                  once(prev(byte(0x0AF752)) == 2 && byte(0x0AF752) == 3), 
                  once(prev(byte(0x0AF753)) == 2 && byte(0x0AF753) == 3), 
                  once(prev(byte(0x0AF754)) == 2 && byte(0x0AF754) == 3), 
                  once(prev(byte(0x0AF755)) == 2 && byte(0x0AF755) == 3), 
                  once(prev(byte(0x0AF756)) == 2 && byte(0x0AF756) == 3), 
                  once(prev(byte(0x0AF757)) == 2 && byte(0x0AF757) == 3), 
                  once(prev(byte(0x0AF759)) == 2 && byte(0x0AF759) == 3)
              )
)

achievement(
    title = "Setting Up the Ship in Flames", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Flying Battery Zone Act 2 with a fire shield",
    id = 243679, badge = "270584", published = "28.08.2022 20:51:13", modified = "01.09.2022 15:15:47",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF) != 4) && never(byte(0x0AE5EE) != 1) && 
              never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once((prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1)
               == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && never(byte(0x09E488) == 1) &&
              ((trigger_when((byte(0x0AEDA1) == 12 && bit4(0x0AA7CA) == 1 && prev(byte(0x102A84)) != byte(0x102A84) &&
                 byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((bit4(0x0AA7CA) == 1 && prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40))))
)

achievement(
    title = "Ain’t Afraid of No Ghost", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Sandopolis Zone Act 2 without ever having more than 2 ghosts on the screen",
    id = 243680, badge = "270585", published = "28.08.2022 20:51:13", modified = "01.09.2022 15:15:48",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF) != 8) && never(byte(0x0AE5EE) != 1) && 
              never((once(word(0x0AA7B0) == 2897 && word(0x0AA7B4) >= 928 && word(0x0AA7B4) <= 931) && byte(0x0AEF62) >=
               4)) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once((prev(byte(0x0AFA14)) == 40 ||
               byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && never(byte(0x09E488) == 1) &&
              ((byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x102A84)) != byte(0x102A84) && byte(0x102A84) == 1))) ||
               (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Shock the Floor and Let It Set Up a Blow", points = 5,
    description = "[Sonic 3 & Knuckles] Get to the Boss Room in Lava Reef Zone Act 2 with an electric shield",
    id = 243681, badge = "270586", published = "28.08.2022 20:51:14", modified = "01.09.2022 15:15:48",
    trigger = unless(byte(0x0AF783) == 1) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && 
              never((word(0x0AE5EE) != 2305 && word(0x0AE5EE) != 5632)) && never(prev(byte(0x0AE5EF)) == 22) && 
              once((prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AE5EF) == 9
               && byte(0x0AF5CB) == 0) && trigger_when((bit5(0x0AA7CA) == 1 && prev(byte(0x0AE5EF)) == 9 &&
               byte(0x0AE5EF) == 22)) && never(byte(0x09E488) == 1)
)

achievement(
    title = "Rings Up in the Sky", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Sky Sanctuary Zone while collecting all Rings",
    id = 243682, badge = "270587", published = "28.08.2022 20:51:14", modified = "31.08.2022 19:35:19",
    trigger = unless(byte(0x0AF783) == 1) && never(byte(0x0AE5EF) != 10) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC)
               != 5)) && once(byte(0x0AF6AA) != 3 && byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0) && 
              trigger_when(word(0x0AF6A4) == 0) && trigger_when((byte(0x0AEDA1) == 12 && prev(byte(0x102A84)) !=
               byte(0x102A84) && byte(0x102A84) == 1)) && never(byte(0x09E488) == 1) &&
              (always_false() || (byte(0x0AEDA1) == 12 && trigger_when((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))))
)

achievement(
    title = "Takin it slow in space", points = 5,
    description = "[Sonic 3 & Knuckles] Complete Death Egg Zone Act 2 without getting hurt",
    id = 243683, badge = "270588", published = "28.08.2022 20:51:14", modified = "01.09.2022 15:15:48",
    trigger = unless(byte(0x0AF783) == 1) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x0AA7C0)
               == 26) && never((word(0x0AE5EE) != 2817 && word(0x0AE5EE) != 5888)) && never(prev(byte(0x0AE5EF)) == 23) && 
              once((prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AE5EF) == 11
               && byte(0x0AF5CB) == 0) && trigger_when((prev(byte(0x0AE5EF)) == 11 && byte(0x0AE5EF) == 23)) && 
              never(byte(0x09E488) == 1)
)

achievement(
    title = "Just to Be Safe", points = 10,
    description = "Complete The Doomsday Zone while having at least 50 Rings in hand",
    id = 243684, badge = "270589", published = "28.08.2022 20:51:15", modified = "28.08.2022 20:51:15",
    trigger = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && prev(byte(0x0AF5B1)) == 12 && 
              byte(0x0AF5B1) == 13 && prev(byte(0x0AF5C0)) >= 50
)

achievement(
    title = "Backwards Boogie", points = 5,
    description = "[Sonic 3 & Knuckles] Get a Perfect in Special Stage 1 while only going backwards and collect the Chaos Emerald",
    id = 243686, badge = "270591", published = "28.08.2022 20:51:15", modified = "30.08.2022 11:45:00",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && never((byte(0x09E6CC) != 2 && byte(0x09E6CC) !=
               5)) && never(byte(0x0AEDA1) != 52) && never((byte(0x0AF75A) != 0 && byte(0x0AF5B7) != 0)) && 
              never((once(prev(byte(0x0ADBD0)) == 1 && byte(0x0ADBD0) == 0) && byte(0x0ADBC9) != prev(byte(0x0ADBC9)) &&
               byte(0x0ADBC9) < 224)) && never((byte(0x0ADBD0) == 1 && byte(0x0ADBD8) < prev(byte(0x0ADBD8)))) && 
              once(once(byte(0x0AEDA1) != prev(byte(0x0AEDA1)) && byte(0x0AEDA1) == 52) && byte(0x0ADBD8) !=
               prev(byte(0x0ADBD8))) && trigger_when(once(once(byte(0x0ADBD8) < prev(byte(0x0ADBD8))) && byte(0x0CED6F)
               == 1 && byte(0x0ADBD8) == 0))
)

achievement(
    title = "Gambling for a Perfect Bonus", points = 5,
    description = "[Sonic 3 & Knuckles] Get the Jackpot in the Slot Machine Bonus",
    id = 243722, badge = "270627", published = "28.08.2022 20:51:27", modified = "28.08.2022 20:51:27",
    trigger = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
               byte(0x09E6CC) == 5) && byte(0x0AF5B1) == 21 && byte(0x0AEDA1) == 12 && prior(byte(0x0ADBAF)) == 255 && 
              byte(0x0ADBAF) == 0 && prior(byte(0x0ADBB3)) == 255 && byte(0x0ADBB3) == 0 && prior(byte(0x0ADBB7)) == 255 && 
              byte(0x0ADBB7) == 0 && byte(0x0AF5C0) > prev(byte(0x0AF5C0))
)

achievement(
    title = "Sonic - The Last Ringbender", points = 3,
    description = "[Sonic 3 & Knuckles] Wear all 3 different Shields in the same play session",
    id = 243687, badge = "270592", published = "28.08.2022 20:51:16", modified = "28.08.2022 20:51:16",
    trigger = unless((byte(0x0AF773) == 1 || byte(0x0AF783) == 1)) && unless(byte(0x0AEDA1) != 12) && 
              unless((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && once(bit4(0x0AA7CA) == 1) && 
              once(bit5(0x0AA7CA) == 1) && once(bit6(0x0AA7CA) == 1)
)

achievement(
    title = "Easy Steps Forward", points = 2,
    description = "Collect 50 Rings",
    id = 243689, badge = "270594", published = "28.08.2022 20:51:16", modified = "28.08.2022 20:51:16",
    trigger = byte(0x0AEDA1) == 12 && prev(word(0x0AF5C0)) < 50 && word(0x0AF5C0) >= 50 &&
              ((byte(0x0AF783) == 0 && byte(0x09E6CC) == 0) ||
               (byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4)) ||
               (byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
                 byte(0x09E6CC) == 5)))
)

achievement(
    title = "Check me a Point", points = 3,
    description = "Activate 4 unique checkpoints in one level",
    id = 243690, badge = "270595", published = "28.08.2022 20:51:17", modified = "01.09.2022 09:38:01",
    trigger = never(byte(0x09E6CC) != prev(byte(0x09E6CC))) && never((byte(0x0AEDA1) == 0 || byte(0x0AEDA1) == 4)) && 
              never(word(0x0AE5EE) != prev(word(0x0AE5EE))) &&
              ((never((byte(0x0AF5D1) == 0 && byte(0x0AEDA1) == 140)) && unless(byte(0x0AF783) == 1) && 
                unless(byte(0x09E6CC) != 0) && repeated(4, byte(0x0AEDA1) == 12 && byte(0x0AF5D1) !=
                 prev(byte(0x0AF5D1)))) ||
               (never((byte(0x0AF5D1) == 0 && byte(0x0AEDA1) == 140)) && unless((byte(0x0AF6AB) == 1 || byte(0x0AF773)
                 == 1)) && unless((byte(0x09E6CC) != 1 && byte(0x09E6CC) != 4)) && repeated(4, byte(0x0AEDA1) == 12 &&
                 byte(0x0AF5D1) != prev(byte(0x0AF5D1)))) ||
               (never((byte(0x0AF5CB) == 0 && byte(0x0AEDA1) == 140)) && unless((byte(0x0AF773) == 1 || byte(0x0AF783)
                 == 1)) && unless((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && repeated(4,
                 prev(byte(0x0AEDA1)) == 12 && byte(0x0AEDA1) != 52 && byte(0x0AF5B1) != 19 && byte(0x0AF5B1) != 20 &&
                 byte(0x0AF5B1) != 21 && byte(0x0AF5CB) != prev(byte(0x0AF5CB)))))
)

achievement(
    title = "A Life to Live", points = 3,
    description = "Have at least 10 Lives",
    id = 243691, badge = "270596", published = "28.08.2022 20:51:17", modified = "28.08.2022 20:51:17",
    trigger = byte(0x0AEDA1) == 12 && prev(byte(0x0AF5B3)) == 9 && byte(0x0AF5B3) == 10 &&
              ((byte(0x0AF783) == 0 && byte(0x09E6CC) == 0) ||
               (byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4)) ||
               (byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
                 byte(0x09E6CC) == 5)))
)

achievement(
    title = "Nonstoppable Hedgehog", points = 2,
    description = "Have Speed Shoes, a Shield and Invincibility all active at once",
    id = 243692, badge = "270597", published = "28.08.2022 20:51:17", modified = "28.08.2022 20:51:17",
    trigger = byte(0x0AEDA1) == 12 &&
              ((byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && bit0(0x0AF5CC) == 1 && bit0(0x0AF5CD) == 1 && 
                bit0(0x0AF5CF) == 1) ||
               (byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
                bit0(0x0AA7CA) == 1 && bit1(0x0AA7CA) == 1 && bit2(0x0AA7CA) == 1) ||
               (byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
                 byte(0x09E6CC) == 5) && bit0(0x0AA7CA) == 1 && bit1(0x0AA7CA) == 1 && bit2(0x0AA7CA) == 1))
)

achievement(
    title = "I’m Already Blue Enough in the Face", points = 2,
    description = "Catch your breath at the last possible second",
    id = 243688, badge = "270593", published = "28.08.2022 20:51:16", modified = "10.10.2022 16:40:33",
    trigger = byte(0x0AEDA1) == 12 &&
              ((byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(byte(0x0AF5B4)) == 0 && byte(0x0AF5B4) == 30 && 
                prev(bit6(0x0AC7C3)) == 1 && (bit6(0x0AC7C3) == 0 || byte(0x0AC7BC) == 21)) ||
               (byte(0x0AF6AB) == 0 && byte(0x0AF773) == 0 && (byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && 
                prev(byte(0x0AA7C9)) == 0 && byte(0x0AA7C9) == 30 && prev(bit6(0x0AA7C3)) == 1 && (bit6(0x0AA7C3) == 0
                 || byte(0x0AA7BC) == 21)) ||
               (byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 3 ||
                 byte(0x09E6CC) == 5) && prev(byte(0x0AA7CD)) == 0 && byte(0x0AA7CD) == 30 && prev(bit6(0x0AA7CB)) == 1 && 
                (bit6(0x0AA7CB) == 0 || byte(0x0AA7C0) == 21)))
)

achievement(
    title = "High Score!", points = 25,
    description = "Get a score of 300000 in each game in one session",
    id = 243693, badge = "270598", published = "28.08.2022 20:51:18", modified = "29.08.2022 21:51:06",
    trigger = byte(0x0AEDA1) == 12 && once(byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(word(0x0AF5C8)) < 30000 &&
               word(0x0AF5C8) >= 30000) && once((byte(0x09E6CC) == 1 || byte(0x09E6CC) == 4) && byte(0x0AF6AB) == 0 &&
               byte(0x0AF773) == 0 && prev(word(0x0AF5C8)) < 30000 && word(0x0AF5C8) >= 30000) && once((byte(0x09E6CC)
               == 2 || byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && byte(0x0AF773) == 0 && byte(0x0AF783) == 0 &&
               prev(word(0x0AF5C8)) < 30000 && word(0x0AF5C8) >= 30000)
)

achievement(
    title = "Safety First in Emerald Hill Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Emerald Hill Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243694, badge = "270599", published = "28.08.2022 20:51:18", modified = "22.01.2023 08:20:52",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 0) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 0) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Chemical Plant Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Chemical Plant Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243695, badge = "270600", published = "28.08.2022 20:51:18", modified = "22.01.2023 08:21:07",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 13) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 13) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Aquatic Ruin Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Aquatic Ruin Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243696, badge = "270601", published = "28.08.2022 20:51:19", modified = "22.01.2023 08:21:19",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 15) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 15) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Casino Night Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Casino Night Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243697, badge = "270602", published = "28.08.2022 20:51:19", modified = "22.01.2023 08:21:33",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 12) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 12) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Hill Top Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Hill Top Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243698, badge = "270603", published = "28.08.2022 20:51:19", modified = "22.01.2023 08:21:43",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 7) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 7) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Mystic Cave Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Mystic Cave Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243699, badge = "270604", published = "28.08.2022 20:51:20", modified = "22.01.2023 08:22:00",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 11) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 11) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Oil Ocean Zone", points = 10,
    description = "[Sonic 2] Complete Act 1 and 2 of Oi Ocean Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243700, badge = "270605", published = "28.08.2022 20:51:20", modified = "22.01.2023 08:22:15",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 10) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && measured(tally(2, 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 0), 
                    once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless(byte(0x0AF5B1) != 10) && unless(byte(0x0AF773) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA7FC) !=
                 prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AA7FC) == 23 || byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 &&
                 byte(0x0AF5D1) == 0)) && unless((once(prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 &&
                 byte(0x0AF5B0) == 0) && byte(0x0AF5B0) == 0)) && unless((once(prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B0) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Metropolis Zone", points = 10,
    description = "[Sonic 2] Complete Act 1, 2 and 3 of Metropolis Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243701, badge = "270606", published = "28.08.2022 20:51:20", modified = "03.09.2022 22:48:03",
    trigger = never(byte(0x09E6CC) != 1) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF710) != 0) && unless((byte(0x0AF5B1) != 4 && byte(0x0AF5B1) != 5)) && 
                unless(byte(0x0AF773) == 1) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && 
                disable_when(repeated(6, byte(0x0AA7FC) != prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26),
                 until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AA7FC) == 23 ||
                 byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                measured(tally(3, 
                    once(byte(0x0AF5B1) == 4 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                     == 0), 
                    once(byte(0x0AF5B1) == 4 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                     == 1), 
                    once(byte(0x0AF5B1) == 5 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                     == 0)
                ))) ||
               (unless(byte(0x0AF710) != 0) && unless((byte(0x0AF5B1) != 4 && byte(0x0AF5B1) != 5)) && 
                unless(byte(0x0AF773) == 1) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && 
                disable_when(repeated(6, byte(0x0AA7FC) != prev(byte(0x0AA7FC)) && byte(0x0AA7FC) == 26),
                 until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && disable_when(byte(0x0AA7FC) == 23 ||
                 byte(0x0AA7FC) == 24, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)) && 
                unless((once(byte(0x0AF5B1) == 4 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0)
                 == 0) && byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 0)) && unless((once(byte(0x0AF5B1) == 4 &&
                 prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1 && byte(0x0AF5B0) == 1) && byte(0x0AF5B1) == 4 &&
                 byte(0x0AF5B0) == 1)) && unless((once(byte(0x0AF5B1) == 5 && prev(byte(0x103E78)) == 0 &&
                 byte(0x103E78) == 1 && byte(0x0AF5B0) == 0) && byte(0x0AF5B1) == 5 && byte(0x0AF5B0) == 0)) && 
                trigger_when(always_false())))
)

achievement(
    title = "Safety First in Angel Island Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Angel Island Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243702, badge = "270607", published = "28.08.2022 20:51:21", modified = "22.01.2023 08:22:32",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 0) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 0) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Hydrocity Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Hydrocity Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243703, badge = "270608", published = "28.08.2022 20:51:21", modified = "22.01.2023 08:22:42",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 1) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 1) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Marble Garden Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Marble Garden Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243704, badge = "270609", published = "28.08.2022 20:51:21", modified = "22.01.2023 08:22:56",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 2) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 2) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Carnival Night Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Carnival Night Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243705, badge = "270610", published = "28.08.2022 20:51:22", modified = "22.01.2023 08:23:18",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 3) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 3) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Icecap Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Icecap Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243706, badge = "270611", published = "28.08.2022 20:51:22", modified = "22.01.2023 08:23:27",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 5) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 5) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Launch Base Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Launch Base Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243707, badge = "270612", published = "28.08.2022 20:51:22", modified = "03.09.2022 22:48:05",
    trigger = never((byte(0x09E6CC) != 2 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 6) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(((word(0x0AA7FA) < 15296 || word(0x0AA7FA) > 17295) &&
                 word(0x0AA7FA) < 17616 && byte(0x0AE5EE) == 1 && byte(0x0AA80A) == 24) || byte(0x0AA80A) == 23,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when((byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) && byte(0x0AE5EE) == 0,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 6) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(((word(0x0AA7FA) < 15296 || word(0x0AA7FA) > 17295) &&
                 word(0x0AA7FA) < 17616 && byte(0x0AE5EE) == 1 && byte(0x0AA80A) == 24) || byte(0x0AA80A) == 23,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when((byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) && byte(0x0AE5EE) == 0,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 6) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 &&
                 byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) !=
                 prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when(((word(0x0AA7FA) < 15296 ||
                 word(0x0AA7FA) > 17295) && word(0x0AA7FA) < 17616 && byte(0x0AE5EE) == 1 && byte(0x0AA80A) == 24) ||
                 byte(0x0AA80A) == 23, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when((byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) &&
                 byte(0x0AE5EE) == 0, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 ||
                 byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49 && byte(0x0AE5EE) == 1), 
                
                 always_false()))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 6) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 32 &&
                 byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) !=
                 prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when(((word(0x0AA7FA) < 15296 ||
                 word(0x0AA7FA) > 17295) && word(0x0AA7FA) < 17616 && byte(0x0AE5EE) == 1 && byte(0x0AA80A) == 24) ||
                 byte(0x0AA80A) == 23, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when((byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) &&
                 byte(0x0AE5EE) == 0, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 ||
                 byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) &&
                 byte(0x0AE5EE) == 0)) && unless((once(prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49 &&
                 byte(0x0AE5EE) == 1) && byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Mushroom Hill Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Mushroom Hill Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243708, badge = "270613", published = "28.08.2022 20:51:23", modified = "22.01.2023 08:23:53",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 7) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 7) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Flying Battery Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Flying Battery Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243709, badge = "270614", published = "28.08.2022 20:51:23", modified = "22.01.2023 08:24:04",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 4) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 4) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Sandopolis Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Sandopolis Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243710, badge = "270615", published = "28.08.2022 20:51:23", modified = "22.01.2023 08:24:30",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 8) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0), 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless(byte(0x0AE5EF) != 8) && unless((byte(0x0AF773) == 1 ||
                 byte(0x0AF783) == 1)) && unless(prev(byte(0x0AFA14)) == 52) && unless((byte(0x0AEDA1) != 140 &&
                 byte(0x0AEDA1) != 12)) && disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
                 byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) !=
                 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 &&
                 byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 0) && byte(0x0AE5EE) == 0)) && 
                unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && byte(0x0AE5EE) == 1) &&
                 byte(0x0AE5EE) == 1)) && trigger_when(always_false())))
)

achievement(
    title = "Safety First in Lava Reef Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Lava Reef Zone without letting Tails die once or letting him take more than 5 times damage",
    id = 243711, badge = "270616", published = "28.08.2022 20:51:24", modified = "12.07.2023 08:19:59",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) && 
              unless((byte(0x0AF5B1) != 20 && byte(0x0AF5B1) != 21 && word(0x0AE5EE) == 5889)) && once(byte(0x0AE5EF) ==
               9 && byte(0x0AEDA1) == 140 && never(prev(byte(0x0AE5EF)) != 9)) &&
              ((unless(byte(0x0AF6A8) != 0) && unless((byte(0x0AE5EF) != 22 && byte(0x0AE5EF) != 9)) && 
                unless(byte(0x0AF783) == 1) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && 
                disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26),
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24, until=(prev(byte(0x0AFA14)) == 40
                 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && 
                disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) &&
                 byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && word(0x0AE5EE) == 2304), 
                    once(prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless((byte(0x0AE5EF) != 22 && byte(0x0AE5EF) != 9)) && 
                unless(byte(0x0AF783) == 1) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && 
                disable_when(repeated(6, byte(0x0AA80A) != prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26),
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24, until=(prev(byte(0x0AFA14)) == 40
                 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && 
                disable_when(byte(0x0AEDFE) == 255, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) &&
                 byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) == 40 &&
                 byte(0x0AFA14) == 40 && word(0x0AE5EE) == 2304) && word(0x0AE5EE) == 2304)) && 
                unless((once(prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632) && word(0x0AE5EE) == 2305)) && 
                trigger_when(always_false())))
)

achievement(
    title = "Safety First against the Egg Inferno", points = 10,
    description = "[Sonic 3 & Knuckles] Defeat the Egg Inferno without letting Tails die",
    id = 245427, badge = "272145", published = "04.09.2022 15:31:13", modified = "04.09.2022 17:15:58",
    trigger = unless(byte(0x0AF6A8) != 0) && never(byte(0x09E488) == 1) && unless(byte(0x0AF783) == 1) && 
              never(word(0x0AE5EE) != 5632) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && 
              never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && disable_when(byte(0x0AA80A) == 23 || byte(0x0AA80A)
               == 24, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0)) && disable_when(byte(0x0AEDFE) == 255,
               until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) ==
               0) && trigger_when(once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40))
)

achievement(
    title = "Safety First in Sky Sanctuary Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Sky Sanctuary Zone without letting Tails die once or letting him take any damage",
    id = 243712, badge = "270617", published = "28.08.2022 20:51:24", modified = "12.07.2023 08:19:59",
    trigger = unless(byte(0x0AF6A8) != 0) && unless((byte(0x0AF5B1) == 20 || byte(0x0AF5B1) == 21)) && 
              never(byte(0x0AE5EF) != 10) && unless(byte(0x0AF783) == 1) && never((byte(0x09E6CC) != 3 && byte(0x09E6CC)
               != 5)) && unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(word(0x0AA7B0) < 6520
               && byte(0x0AA80A) == 24, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0)) && 
              disable_when(word(0x0AA7FA) < 6520 && byte(0x0AA80A) == 26, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5CB)
               == 0)) && disable_when(repeated(2, word(0x0AA7FA) > 6520 && byte(0x0AA80A) != prev(byte(0x0AA80A)) &&
               byte(0x0AA80A) == 24), until=(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0)) && 
              disable_when(byte(0x0AEDFE) == 255, until=(byte(0x0AEDA1) == 140 && byte(0x0AF5CB) == 0)) && 
              trigger_when(once(byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40)) && 
              never(byte(0x09E488) == 1)
)

achievement(
    title = "Safety First in Death Egg Zone", points = 10,
    description = "[Sonic 3 & Knuckles] Complete Act 1 and 2 of Death Egg Zone without letting Tails die once or letting him take more than 8 times damage",
    id = 243713, badge = "270618", published = "28.08.2022 20:51:24", modified = "12.07.2023 08:19:59",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && never(byte(0x09E488) == 1) &&
              ((unless(byte(0x0AF6A8) != 0) && unless((byte(0x0AF5B1) == 20 || byte(0x0AF5B1) == 21 || word(0x0AE5EE) ==
                 5889)) && unless((byte(0x0AE5EF) != 11 && byte(0x0AE5EF) != 23)) && unless(byte(0x0AF783) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(9, byte(0x0AA80A) !=
                 prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when((byte(0x0AA80A) == 23 ||
                 byte(0x0AA80A) == 24) && word(0x0AE5EE) == 2816, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AEDFE) == 255,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(repeated(2, (byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) && always_false() &&
                 word(0x0AE5EE) == 2817), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14)
                 != 40 && byte(0x0AF5CB) == 0) && measured(tally(2, 
                    once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 && word(0x0AE5EE) == 2816), 
                    once(prev(word(0x0AE5EE)) == 2817 && word(0x0AE5EE) == 5888)
                ))) ||
               (unless(byte(0x0AF6A8) != 0) && unless((byte(0x0AF5B1) == 20 || byte(0x0AF5B1) == 21 || word(0x0AE5EE) ==
                 5889)) && unless((byte(0x0AE5EF) != 11 && byte(0x0AE5EF) != 23)) && unless(byte(0x0AF783) == 1) && 
                unless((byte(0x0AEDA1) != 140 && byte(0x0AEDA1) != 12)) && disable_when(repeated(9, byte(0x0AA80A) !=
                 prev(byte(0x0AA80A)) && byte(0x0AA80A) == 26), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when((byte(0x0AA80A) == 23 ||
                 byte(0x0AA80A) == 24) && word(0x0AE5EE) == 2816, until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) ==
                 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) == 0) && disable_when(byte(0x0AEDFE) == 255,
                 until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB)
                 == 0) && disable_when(repeated(2, (byte(0x0AA80A) == 23 || byte(0x0AA80A) == 24) && always_false() &&
                 word(0x0AE5EE) == 2817), until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14)
                 != 40 && byte(0x0AF5CB) == 0) && unless((once(prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40 &&
                 word(0x0AE5EE) == 2816) && word(0x0AE5EE) == 2816)) && unless((once(prev(word(0x0AE5EE)) == 2817 &&
                 word(0x0AE5EE) == 5888) && word(0x0AE5EE) == 2817) || word(0x0AE5EE) == 5888) && 
                trigger_when(always_false())))
)

achievement(
    title = "Safety First against the Death Egg Robot", points = 10,
    description = "[Sonic 3 & Knuckles] Defeat the Death Egg Robot without letting Tails die",
    id = 243714, badge = "270619", published = "28.08.2022 20:51:25", modified = "12.07.2023 08:19:59",
    trigger = never((byte(0x09E6CC) != 3 && byte(0x09E6CC) != 5)) && unless(byte(0x0AF783) == 1) && 
              unless(word(0x0AE5EE) == 5889) && never((byte(0x0AE5EF) != 12 && byte(0x0AE5EF) != 13 && byte(0x0AE5EF) !=
               23)) && disable_when(byte(0x0AA80A) == 24, until=(byte(0x0AE5EF) == 23 && byte(0x0AEDA1) == 140 &&
               byte(0x0AF5CB) == 0)) && unless(byte(0x0AF6A8) != 0) && never(byte(0x09E488) == 1) && once(byte(0x0AE5EF)
               == 23 && byte(0x0AEDA1) == 140) && trigger_when(once((byte(0x0AE5EF) == 12 || byte(0x0AE5EF) == 13) &&
               prev(byte(0x0AEDA1)) == 12 && prev(byte(0x0AE5EF)) == 23)) && disable_when(byte(0x0AEDFE) == 255,
               until=(prev(byte(0x0AFA14)) == 40 || byte(0x0AEDA1) == 140) && byte(0x0AFA14) != 40 && byte(0x0AF5CB) ==
               0)
)

achievement(
    title = "History of the Past", points = 1,
    description = "Have a look at all Illustrations",
    id = 243720, badge = "270625", published = "28.08.2022 20:51:27", modified = "28.08.2022 20:51:27",
    trigger = never(byte(0x09E2B0) != 2) && byte(0x09E6C8) == 0 && once(byte(0x09E6C8) == 1) && once(byte(0x09E6C8) ==
               2) && once(byte(0x09E6C8) == 3) && once(byte(0x09E6C8) == 4) && once(byte(0x09E6C8) == 5) && 
              once(byte(0x09E6C8) == 6) && once(byte(0x09E6C8) == 7) && once(byte(0x09E6C8) == 8) && once(byte(0x09E6C8)
               == 9) && once(byte(0x09E6C8) == 10) && once(byte(0x09E6C8) == 11) && once(byte(0x09E6C8) == 12) && 
              once(byte(0x09E6C8) == 13) && once(byte(0x09E6C8) == 14) && once(byte(0x09E6C8) == 15) && 
              once(byte(0x09E6C8) == 16) && once(byte(0x09E6C8) == 17) && once(byte(0x09E6C8) == 18) && 
              once(byte(0x09E6C8) == 19) && once(byte(0x09E6C8) == 20) && once(byte(0x09E6C8) == 21) && 
              once(byte(0x09E6C8) == 22) && once(byte(0x09E6C8) == 23) && once(byte(0x09E6C8) == 24) && 
              once(byte(0x09E6C8) == 25) && once(byte(0x09E6C8) == 26)
)

leaderboard(
    id = 42113, title = "Green Hill Zone Act 1",
    description = "Complete Green Hill Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42114, title = "Green Hill Zone Act 2",
    description = "Complete Green Hill Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42115, title = "Green Hill Zone Act 3",
    description = "Complete Green Hill Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0) == 2 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42116, title = "Marble Zone Act 1",
    description = "Complete Marble Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 2 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42117, title = "Marble Zone Act 2",
    description = "Complete Marble Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 2 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42118, title = "Marble Zone Act 3",
    description = "Complete Marble Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 2 && byte(0x0AF5B0) == 2 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42119, title = "Spring Yard Zone Act 1",
    description = "Complete Spring Yard Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42120, title = "Spring Yard Zone Act 2",
    description = "Complete Spring Yard Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42121, title = "Spring Yard Zone Act 3",
    description = "Complete Spring Yard Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 2 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42122, title = "Labyrinth Zone Act 1",
    description = "Complete Labyrinth Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 1 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42123, title = "Labyrinth Zone Act 2",
    description = "Complete Labyrinth Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 1 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42124, title = "Labyrinth Zone Act 3",
    description = "Complete Labyrinth Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 1 && byte(0x0AF5B0) == 2 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42125, title = "Star Light Zone Act 1",
    description = "Complete Star Light Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 3 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42126, title = "Star Light Zone Act 2",
    description = "Complete Star Light Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 3 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42127, title = "Labyrinth Zone Act 3",
    description = "Complete Star Light Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 3 && byte(0x0AF5B0) == 2 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42128, title = "Scrap Brain Zone Act 1",
    description = "Complete Scrap Brain Zone Act 1 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 5 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42129, title = "Scrap Brain Zone Act 2",
    description = "Complete Scrap Brain Zone Act 2 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && byte(0x0AF5B1) == 5 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1)
              == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42130, title = "Scrap Brain Zone Act 3",
    description = "Complete Scrap Brain Zone Act 3 as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(word(0x0AF5B0)) == 259 && word(0x0AF5B0) == 1282,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 259
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 1282 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42131, title = "Final Zone",
    description = "Complete Final Zone as fast as possible",
    start  = byte(0x0AF783) == 0 && byte(0x09E6CC) == 0 && prev(byte(0x0AF5B1)) == 5 && prev(byte(0x0AF5B0)) == 2 && 
             byte(0x0AEDA1) == 24,
    cancel = byte(0x0AEDA1) != 24 && byte(0x0AF5B1) != 6,
    submit = byte(0x0AEDA1) == 24 && prev(byte(0x0AF5B1)) == 5 && prev(byte(0x0AF5B0)) == 2,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42132, title = "Emerald Hill Zone Act 1 [Sonic]",
    description = "Complete Emerald Hill Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 0 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42133, title = "Emerald Hill Zone Act 2 [Sonic]",
    description = "Complete Emerald Hill Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 0 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42134, title = "Chemical Plant Zone Act 1 [Sonic]",
    description = "Complete Chemical Plant Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 13 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42135, title = "Chemical Plant Zone Act 2 [Sonic]",
    description = "Complete Chemical Plant Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 13 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42136, title = "Aquatic Ruin Zone Act 1 [Sonic]",
    description = "Complete Aquatic Ruin Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 15 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42137, title = "Aquatic Ruin Zone Act 2 [Sonic]",
    description = "Complete Aquatic Ruin Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 15 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42138, title = "Casino Night Zone Act 1 [Sonic]",
    description = "Complete Casino Night Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 12 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42139, title = "Casino Night Zone Act 2 [Sonic]",
    description = "Complete Casino Night Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 12 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42140, title = "Hill Top Zone Act 1 [Sonic]",
    description = "Complete Hill Top Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 7 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42141, title = "Hill Top Zone Act 2 [Sonic]",
    description = "Complete Hill Top Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 7 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42142, title = "Mystic Cave Zone Act 1 [Sonic]",
    description = "Complete Mystic Cave Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 11 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42143, title = "Mystic Cave Zone Act 2 [Sonic]",
    description = "Complete Mystic Cave Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 11 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42144, title = "Oil Ocean Zone Act 1 [Sonic]",
    description = "Complete Oil Ocean Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 10 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42145, title = "Oil Ocean Zone Act 2 [Sonic]",
    description = "Complete Oil Ocean Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 10 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42146, title = "Metropolis Zone Act 1 [Sonic]",
    description = "Complete Metropolis Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42147, title = "Metropolis Zone Act 2 [Sonic]",
    description = "Complete Metropolis Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 4 && byte(0x0AF5B0) == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42148, title = "Metropolis Zone Act 3 [Sonic]",
    description = "Complete Metropolis Zone Act 3 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 5 && byte(0x0AF5B0) == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && 
             byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42149, title = "Sky Chase Zone [Sonic]",
    description = "Complete Sky Chase Zone as fast as possible with Sonic",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AEDA1) == 140 && prev(word(0x0AF5B0)) == 4096 && word(0x0AF5B0) == 1536,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 4096
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 1536 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42150, title = "Wing Fortress Zone [Sonic]",
    description = "Complete Wing Fortress Zone as fast as possible with Sonic",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AEDA1) == 140 && prev(word(0x0AF5B0)) == 1536 && word(0x0AF5B0) == 3584,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 1536
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 3584 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42151, title = "Death Egg Zone [Sonic]",
    description = "Complete Death Egg Zone fast as possible with Sonic",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && (byte(0x0AF710) == 0 || byte(0x0AF710) == 1) && 
             byte(0x0AF5B1) == 14 && byte(0x0AEDA1) == 32,
    cancel = byte(0x0AEDA1) != 32 && byte(0x0AF5B1) != 14,
    submit = byte(0x0AEDA1) == 32 && byte(0x0AF5B1) == 14,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42152, title = "Emerald Hill Zone Act 1 [Tails]",
    description = "Complete Emerald Hill Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42153, title = "Emerald Hill Zone Act 2 [Tails]",
    description = "Complete Emerald Hill Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42154, title = "Chemical Plant Zone Act 1 [Tails]",
    description = "Complete Chemical Plant Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 13 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42155, title = "Chemical Plant Zone Act 2 [Tails]",
    description = "Complete Chemical Plant Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 13 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42156, title = "Aquatic Ruin Zone Act 1 [Tails]",
    description = "Complete Aquatic Ruin Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 15 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42157, title = "Aquatic Ruin Zone Act 2 [Tails]",
    description = "Complete Aquatic Ruin Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 15 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42158, title = "Casino Night Zone Act 1 [Tails]",
    description = "Complete Casino Night Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 12 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42159, title = "Casino Night Zone Act 2 [Tails]",
    description = "Complete Casino Night Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 12 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42160, title = "Hill Top Zone Act 1 [Tails]",
    description = "Complete Hill Top Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 7 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42161, title = "Hill Top Zone Act 2 [Tails]",
    description = "Complete Hill Top Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 7 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42162, title = "Mystic Cave Zone Act 1 [Tails]",
    description = "Complete Mystic Cave Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 11 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42163, title = "Mystic Cave Zone Act 2 [Tails]",
    description = "Complete Mystic Cave Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 11 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42164, title = "Oil Ocean Zone Act 1 [Tails]",
    description = "Complete Oil Ocean Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 10 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42165, title = "Oil Ocean Zone Act 2 [Tails]",
    description = "Complete Oil Ocean Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 10 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42166, title = "Metropolis Zone Act 1 [Tails]",
    description = "Complete Metropolis Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42167, title = "Metropolis Zone Act 2 [Tails]",
    description = "Complete Metropolis Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42168, title = "Metropolis Zone Act 3 [Tails]",
    description = "Complete Metropolis Zone Act 3 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 5 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103E78)) == 0 && byte(0x103E78) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42169, title = "Sky Chase Zone [Tails]",
    description = "Complete Sky Chase Zone as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AEDA1) == 140 && 
             prev(word(0x0AF5B0)) == 4096 && word(0x0AF5B0) == 1536,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 4096
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 1536 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42170, title = "Wing Fortress Zone [Tails]",
    description = "Complete Wing Fortress Zone as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AEDA1) == 140 && 
             prev(word(0x0AF5B0)) == 1536 && word(0x0AF5B0) == 3584,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 1536
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 3584 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42171, title = "Death Egg Zone [Tails]",
    description = "Complete Death Egg Zone fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x09E6CC) == 1 && byte(0x0AF710) == 2 && byte(0x0AF5B1) == 14 && byte(0x0AEDA1)
              == 32,
    cancel = byte(0x0AEDA1) != 32 && byte(0x0AF5B1) != 14,
    submit = byte(0x0AEDA1) == 32 && byte(0x0AF5B1) == 14,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42172, title = "Emerald Hill Zone Act 1 [Knuckles]",
    description = "Complete Emerald Hill Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42173, title = "Emerald Hill Zone Act 2 [Knuckles]",
    description = "Complete Emerald Hill Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 0 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42174, title = "Chemical Plant Zone Act 1 [Knuckles]",
    description = "Complete Chemical Plant Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 13 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42175, title = "Chemical Plant Zone Act 2 [Knuckles]",
    description = "Complete Chemical Plant Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 13 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42176, title = "Aquatic Ruin Zone Act 1 [Knuckles]",
    description = "Complete Aquatic Ruin Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 15 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42177, title = "Aquatic Ruin Zone Act 2 [Knuckles]",
    description = "Complete Aquatic Ruin Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 15 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42178, title = "Casino Night Zone Act 1 [Knuckles]",
    description = "Complete Casino Night Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 12 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42179, title = "Casino Night Zone Act 2 [Knuckles]",
    description = "Complete Casino Night Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 12 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AC7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42180, title = "Hill Top Zone Act 1 [Knuckles]",
    description = "Complete Hill Top Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 7 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42181, title = "Hill Top Zone Act 2 [Knuckles]",
    description = "Complete Hill Top Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 7 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42182, title = "Mystic Cave Zone Act 1 [Knuckles]",
    description = "Complete Mystic Cave Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 11 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42183, title = "Mystic Cave Zone Act 2 [Knuckles]",
    description = "Complete Mystic Cave Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 11 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42184, title = "Oil Ocean Zone Act 1 [Knuckles]",
    description = "Complete Oil Ocean Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 10 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42185, title = "Oil Ocean Zone Act 2 [Knuckles]",
    description = "Complete Oil Ocean Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 10 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42186, title = "Metropolis Zone Act 1 [Knuckles]",
    description = "Complete Metropolis Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42187, title = "Metropolis Zone Act 2 [Knuckles]",
    description = "Complete Metropolis Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 4 && byte(0x0AF5B0)
              == 1 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42188, title = "Metropolis Zone Act 3 [Knuckles]",
    description = "Complete Metropolis Zone Act 3 as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 5 && byte(0x0AF5B0)
              == 0 && byte(0x0AEDA1) == 12 && prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5D1) == 0)),
    submit = prev(byte(0x103DFE)) == 0 && byte(0x103DFE) == 1,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42189, title = "Sky Chase Zone [Knuckles]",
    description = "Complete Sky Chase Zone as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AEDA1) == 140 && 
             prev(word(0x0AF5B0)) == 4096 && word(0x0AF5B0) == 1536,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 4096
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 1536 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42190, title = "Wing Fortress Zone [Knuckles]",
    description = "Complete Wing Fortress Zone as fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AEDA1) == 140 && 
             prev(word(0x0AF5B0)) == 1536 && word(0x0AF5B0) == 3584,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7BC) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5D1) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 1536
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = word(0x0AF5B0) == 3584 && byte(0x0AEDA1) == 140,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42191, title = "Death Egg Zone [Knuckles]",
    description = "Complete Death Egg Zone fast as possible with Knuckles",
    start  = byte(0x0AF6AB) == 0 && byte(0x09E6CC) == 4 && byte(0x0AF710) == 1 && byte(0x0AF5B1) == 14 && byte(0x0AEDA1)
              == 32,
    cancel = byte(0x0AEDA1) != 32 && byte(0x0AF5B1) != 14,
    submit = byte(0x0AEDA1) == 32 && byte(0x0AF5B1) == 14,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42192, title = "Angel Island Zone Act 1 [Sonic]",
    description = "Complete Angel Island Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42193, title = "Angel Island Zone Act 2 [Sonic]",
    description = "Complete Angel Island Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42194, title = "Hydrocity Zone Act 1 [Sonic]",
    description = "Complete Hydrocity Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42195, title = "Hydrocity Zone Act 2 [Sonic]",
    description = "Complete Hydrocity Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42196, title = "Marble Garden Zone Act 1 [Sonic]",
    description = "Complete Marble Garden Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42197, title = "Marble Garden Zone Act 2 [Sonic]",
    description = "Complete Marble Garden Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42198, title = "Carnival Night Zone Act 1 [Sonic]",
    description = "Complete Carnival Night Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42199, title = "Carnival Night Zone Act 2 [Sonic]",
    description = "Complete Carnival Night Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42200, title = "Icecap Zone Act 1 [Sonic]",
    description = "Complete Icecap Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42201, title = "Icecap Zone Act 2 [Sonic]",
    description = "Complete Icecap Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42202, title = "Launch Base Zone Act 1 [Sonic]",
    description = "Complete Launch Base Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42203, title = "Launch Base Zone Act 2 [Sonic]",
    description = "Complete Launch Base Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = always_true() &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42204, title = "Mushroom Hill Zone Act 1 [Sonic]",
    description = "Complete Mushroom Hill Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42205, title = "Mushroom Hill Zone Act 2 [Sonic]",
    description = "Complete Mushroom Hill Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42206, title = "Flying Battery Zone Act 1 [Sonic]",
    description = "Complete Flying Battery Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42207, title = "Flying Battery Zone Act 2 [Sonic]",
    description = "Complete Flying Battery Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42208, title = "Sandopolis Zone Act 1 [Sonic]",
    description = "Complete Sandopolis Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42209, title = "Sandopolis Zone Act 2 [Sonic]",
    description = "Complete Sandopolis Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 1 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42210, title = "Lava Reef Zone Act 1 [Sonic]",
    description = "Complete Lava Reef Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 9 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42211, title = "Lava Reef Zone Act 2 [Sonic]",
    description = "Complete Lava Reef Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && (byte(0x0AF6A8) == 0 ||
              byte(0x0AF6A8) == 1) && prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42546, title = "Egg Inferno [Sonic]",
    description = "Defeat the Egg Inferno in Lava Reef Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && word(0x0AE5EE) == 5632 && byte(0x0AEDA1) == 140,
    cancel = never(prev(byte(0x09E488)) == 1) && always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0))) ||
              (prev(byte(0x09E488)) == 0 && byte(0x09E488) == 1) ||
              (word(0x0AE5EE) != 5632)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AFB50) == 1) && measured((byte(0x0AF5C4) + byte(0x000000)) !=
             byte(0x000000)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42212, title = "Sky Sanctuary Zone [Sonic]",
    description = "Complete Sky Sanctuary Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42213, title = "Death Egg Zone Act 1 [Sonic]",
    description = "Complete Death Egg Zone Zone Act 1 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && byte(0x0AE5EF) == 11 && byte(0x0AE5EE) == 0 && 
             byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42214, title = "Death Egg Zone Act 2 [Sonic]",
    description = "Complete Death Egg Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && (byte(0x0AF6A8) == 0 ||
              byte(0x0AF6A8) == 1) && byte(0x09E488) == 0 && prev(word(0x0AE5EE)) == 2817 && word(0x0AE5EE) == 5888,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 2817
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = prev(word(0x0AE5EE)) == 2817 && word(0x0AE5EE) == 5888,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42548, title = "Death Egg Robot [Sonic]",
    description = "Defeat the Death Egg Robot in Death Egg Zone Act 2 as fast as possible with Sonic (& Tails)",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && (byte(0x0AF6A8) == 0 ||
              byte(0x0AF6A8) == 1) && byte(0x0AE5EE) == 0 && byte(0x0AE5EF) == 23 && byte(0x0AEDA1) == 140,
    cancel = never(prev(byte(0x09E488)) == 1) && always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0))) ||
              (prev(byte(0x09E488)) == 0 && byte(0x09E488) == 1) ||
              (prev(byte(0x0AE5EF)) != 23 && byte(0x0AE5EF) != 23)),
    submit = prev(word(0x0AE5EF)) == 23 && (byte(0x0AE5EF) == 12 || byte(0x0AE5EF) == 13),
    value = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AFB50) == 1) && measured((byte(0x0AF5C4) + byte(0x000000)) !=
             byte(0x000000)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42215, title = "The Doomsday Zone",
    description = "Complete The Doomsday Zone as fast as possible",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             (byte(0x0AF6A8) == 0 || byte(0x0AF6A8) == 1) && prev(byte(0x0AE5EF)) == 12 && byte(0x0AE5EF) == 13,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AE5EF)) == 12 && byte(0x0AE5EF) == 13,
    value = measured((prior(byte(0x0AF5C2)) * 3600 + prior(byte(0x0AF5C5)) * 60 + prior(byte(0x0AF5C4)))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42216, title = "Angel Island Zone Act 1 [Tails]",
    description = "Complete Angel Island Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42217, title = "Angel Island Zone Act 2 [Tails]",
    description = "Complete Angel Island Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42218, title = "Hydrocity Zone Act 1 [Tails]",
    description = "Complete Hydrocity Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42219, title = "Hydrocity Zone Act 2 [Tails]",
    description = "Complete Hydrocity Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42220, title = "Marble Garden Zone Act 1 [Tails]",
    description = "Complete Marble Garden Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42221, title = "Marble Garden Zone Act 2 [Tails]",
    description = "Complete Marble Garden Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42222, title = "Carnival Night Zone Act 1 [Tails]",
    description = "Complete Carnival Night Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42223, title = "Carnival Night Zone Act 2 [Tails]",
    description = "Complete Carnival Night Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42224, title = "Icecap Zone Act 1 [Tails]",
    description = "Complete Icecap Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42225, title = "Icecap Zone Act 2 [Tails]",
    description = "Complete Icecap Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42226, title = "Launch Base Zone Act 1 [Tails]",
    description = "Complete Launch Base Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42227, title = "Launch Base Zone Act 2 [Tails]",
    description = "Complete Launch Base Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = always_true() &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42228, title = "Mushroom Hill Zone Act 1 [Tails]",
    description = "Complete Mushroom Hill Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42229, title = "Mushroom Hill Zone Act 2 [Tails]",
    description = "Complete Mushroom Hill Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42230, title = "Flying Battery Zone Act 1 [Tails]",
    description = "Complete Flying Battery Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42231, title = "Flying Battery Zone Act 2 [Tails]",
    description = "Complete Flying Battery Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42232, title = "Sandopolis Zone Act 1 [Tails]",
    description = "Complete Sandopolis Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42233, title = "Sandopolis Zone Act 2 [Tails]",
    description = "Complete Sandopolis Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42234, title = "Lava Reef Zone Act 1 [Tails]",
    description = "Complete Lava Reef Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 9 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42235, title = "Lava Reef Zone Act 2 [Tails]",
    description = "Complete Lava Reef Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && byte(0x0AF6A8) == 2 && 
             prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = prev(word(0x0AE5EE)) == 2305 && word(0x0AE5EE) == 5632,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42547, title = "Egg Inferno [Tails]",
    description = "Defeat the Egg Inferno in Lava Reef Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && word(0x0AE5EE) == 5632 && byte(0x0AEDA1) == 140,
    cancel = never(prev(byte(0x09E488)) == 1) && always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0))) ||
              (prev(byte(0x09E488)) == 0 && byte(0x09E488) == 1) ||
              (word(0x0AE5EE) != 5632)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AFB50) == 1) && measured((byte(0x0AF5C4) + byte(0x000000)) !=
             byte(0x000000)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42236, title = "Sky Sanctuary Zone [Tails]",
    description = "Complete Sky Sanctuary Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 10 && byte(0x0AEDA1) == 12 && prev(byte(0x0AFA14)) != 52 && 
             prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42237, title = "Death Egg Zone Act 1 [Tails]",
    description = "Complete Death Egg Zone Zone Act 1 as fast as possible with Tails",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 2 && byte(0x0AE5EF) == 11 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42238, title = "Death Egg Zone Act 2 [Tails]",
    description = "Complete Death Egg Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && byte(0x0AF6A8) == 2 && 
             byte(0x09E488) == 0 && prev(word(0x0AE5EE)) == 2817 && word(0x0AE5EE) == 5888,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 1536
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = prev(word(0x0AE5EE)) == 2817 && word(0x0AE5EE) == 5888,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42549, title = "Death Egg Robot [Tails]",
    description = "Defeat the Death Egg Robot in Death Egg Zone Act 2 as fast as possible with Tails",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && byte(0x0AF6A8) == 2 && 
             byte(0x0AE5EE) == 0 && byte(0x0AE5EF) == 23 && byte(0x0AEDA1) == 140,
    cancel = never(prev(byte(0x09E488)) == 1) && always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0))) ||
              (prev(byte(0x09E488)) == 0 && byte(0x09E488) == 1) ||
              (prev(byte(0x0AE5EF)) != 23 && byte(0x0AE5EF) != 23)),
    submit = prev(word(0x0AE5EF)) == 23 && (byte(0x0AE5EF) == 12 || byte(0x0AE5EF) == 13),
    value = unless(byte(0x0AEDA1) != 12) && unless(byte(0x0AFB50) == 1) && measured((byte(0x0AF5C4) + byte(0x000000)) !=
             byte(0x000000)),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42239, title = "Angel Island Zone Act 1 [Knuckles]",
    description = "Complete Angel Island Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42240, title = "Angel Island Zone Act 2 [Knuckles]",
    description = "Complete Angel Island Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 0 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42241, title = "Hydrocity Zone Act 1 [Knuckles]",
    description = "Complete Hydrocity Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42242, title = "Hydrocity Zone Act 2 [Knuckles]",
    description = "Complete Hydrocity Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 1 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42243, title = "Marble Garden Zone Act 1 [Knuckles]",
    description = "Complete Marble Garden Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42244, title = "Marble Garden Zone Act 2 [Knuckles]",
    description = "Complete Marble Garden Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 2 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42245, title = "Carnival Night Zone Act 1 [Knuckles]",
    description = "Complete Carnival Night Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42246, title = "Carnival Night Zone Act 2 [Knuckles]",
    description = "Complete Carnival Night Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 3 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42247, title = "Icecap Zone Act 1 [Knuckles]",
    description = "Complete Icecap Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42248, title = "Icecap Zone Act 2 [Knuckles]",
    description = "Complete Icecap Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 5 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42249, title = "Launch Base Zone Act 1 [Knuckles]",
    description = "Complete Launch Base Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42250, title = "Launch Base Zone Act 2 [Knuckles]",
    description = "Complete Launch Base Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 2 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 6 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = always_true() &&
             ((prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40) ||
              (prev(byte(0x0AFA14)) != 49 && byte(0x0AFA14) == 49)),
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42251, title = "Mushroom Hill Zone Act 1 [Knuckles]",
    description = "Complete Mushroom Hill Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42252, title = "Mushroom Hill Zone Act 2 [Knuckles]",
    description = "Complete Mushroom Hill Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 7 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42253, title = "Flying Battery Zone Act 1 [Knuckles]",
    description = "Complete Flying Battery Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42254, title = "Flying Battery Zone Act 2 [Knuckles]",
    description = "Complete Flying Battery Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 4 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42255, title = "Sandopolis Zone Act 1 [Knuckles]",
    description = "Complete Sandopolis Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42256, title = "Sandopolis Zone Act 2 [Knuckles]",
    description = "Complete Sandopolis Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 8 && byte(0x0AE5EE) == 1 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42257, title = "Lava Reef Zone Act 1 [Knuckles]",
    description = "Complete Lava Reef Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 9 && byte(0x0AE5EE) == 0 && byte(0x0AEDA1) == 12 && 
             prev(byte(0x0AFA14)) != 52 && prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = prev(byte(0x0AFA14)) != 40 && byte(0x0AFA14) == 40,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42258, title = "Lava Reef Zone Act 2 [Knuckles]",
    description = "Complete Lava Reef Zone Act 2 as fast as possible with Knuckles",
    start  = byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && byte(0x0AF6A8) == 3 && 
             prev(byte(0x0AEDA1)) == 12 && prev(word(0x0AE5EE)) == 2305 && byte(0x0AE5EF) == 22,
    cancel = always_true() &&
             ((once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140
                && byte(0x0AF5CB) == 0))) ||
              (once(prev(byte(0x0AFB50)) == 1 && word(0x0AF5B0) != prev(word(0x0AF5B0)) && never(word(0x0AF5B0) == 5632
                && byte(0x0AEDA1) == 140 && byte(0x0AF5D1) == 0)))),
    submit = byte(0x0AEDA1) == 140 && byte(0x0AE5EF) == 22,
    value = measured((byte(0x0AF5C2) * 3600 + byte(0x0AF5C5) * 60 + byte(0x0AF5C4))),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 42259, title = "Sky Sanctuary Zone [Knuckles]",
    description = "Complete Sky Sanctuary Zone Act 1 as fast as possible with Knuckles",
    start  = byte(0x0AF773) == 0 && byte(0x0AF783) == 0 && (byte(0x09E6CC) == 3 || byte(0x09E6CC) == 5) && 
             byte(0x0AF6A8) == 3 && byte(0x0AE5EF) == 10 && byte(0x0AFA14) == 25 && byte(0x0AAA18) !=
              prev(byte(0x0AAA18)) && byte(0x0AAA18) == 0,
    cancel = once(byte(0x0AF5C2) == 9 && byte(0x0AF5C5) == 59 && byte(0x0AA7C0) == 24 && never(byte(0x0AEDA1) == 140 &&
              byte(0x0AF5CB) == 0)),
    submit = byte(0x0AFA14) == 25 && byte(0x0AAA18) != prev(byte(0x0AAA18)) && byte(0x0AAA18) == 0,
    value = measured((prev(byte(0x0AF5C2)) * 3600 + prev(byte(0x0AF5C5)) * 60 + prev(byte(0x0AF5C4)))),
    format = "FRAMES", lower_is_better = true
)
