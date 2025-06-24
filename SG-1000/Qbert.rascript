// Q*bert
// #ID = 17354

demo = byte(0x003C)
level = byte(0x0000)
round = byte(0x0001)
lives = byte(0x0032)
state = byte(0x0025)
intro = bit4(0x0025)
qbert_Y = word(0x009b)

function disc() {
    Array = []
    for i in range(0,4) {
        disc = word(0x00a7+i*4)
        array_push(Array, once(once(__ornext(prev(demo) != demo || prev(round) != round) && never(state == 4))
                && prev(intro) == 0 && repeated(2,prev(round) == round)
                && prev(qbert_Y) == 0x7818 && qbert_Y != 0x7818) && never(prev(disc) != disc))
    }
    return Array
}

for i in range(0,5) {
    numb = ["I","II","III","IV","V"]
    tl = ["Easy Jumper ツ","⥈)↺[！","Colorful \"@{↺","No Balls !⤉#@)？","@!#?@!","*Incomprehensive Q*bertese Sounds*"]
    pt = i+2
    tp = "progression"
    des = ""
    lg = demo == 1 && prev(level) == i && level == i+1
    if (i > 3) {
        pt = 10
        if (i == 5) {
            tp = ""
            des = "...again?"
            lg = never(demo == 0 || prev(level) != i-1) && repeated(2,prev(round) == 3 && round == 0)
        }
        else lg = demo == 1 && prev(level) == i && prev(round) == 3 && round == 0
    }
    achievement(
        title = tl[i], points = 2+i+(i/4)*4-i/5, type=tp,
        description = format("Complete Level {0}{1}",i+1-i/5,des),
        trigger = lg
    )
    if (i < 5) {
        check = prev(demo) == 0 && demo == 1
        if (i != 0) check = prev(level) == i-1 && level == i
        if (i == 4) check = prev(round) == 3 && round == 0 && level == i
        achievement(
            title = format("Deathless {0}",numb[i]), points = 3+i+(i/3)*4+(i/4)*14,
            description = format("Lose no Live in Level {0}",i+1),
            trigger =  never(demo == 0 || level != i || demo == 1 && prev(lives) > lives)
                    && once(check) && trigger_when(round == 3 && state == 4)
        )
        achievement(
            title = format("Discless {0}",numb[i]), points = 3+i+(i/3)*4+(i/4)*14,
            description = format("Use no Disc in Level {0}",i+1),
            trigger =  never(demo == 0 || level != i || any_of(disc(),y=>y))
                    && once(check) && trigger_when(round == 3 && state == 4)
        )
    }
}

achievement(
    title = "Sam the >!</# Flame", points = 2,
    description = "Smush Sam",
    id = 338041, badge = "381521", published = "15.07.2023 13:32:49", modified = "30.09.2023 14:04:31",
    trigger = prev(byte(0x00003C)) == 1 && prev(byte(0x000025)) != 8 && byte(0x000025) != 128 &&
              prev(byte(0x00009F)) < 168 && prev(bit7(0x000142)) == 1 && bit7(0x000142) == 0 && word(0x00009B) != 30744
)

achievement(
    title = "Oh No You Don, You >!@{！", points = 3,
    description = "Smush Sam before he drops on any Blocks",
    id = 338042, badge = "381522", published = "15.07.2023 13:32:50", modified = "30.09.2023 14:04:31",
    trigger = never(byte(0x00003C) == 0) && never(byte(0x000025) == 8) && never(byte(0x000025) == 128) &&
              never((prev(bit0(0x000142)) == 0 && bit0(0x000142) == 1 && byte(0x00009F) == 48)) &&
              once(prev(bit7(0x000142)) == 0 && bit7(0x000142) == 1) && bit7(0x000142) == 0 && word(0x00009B) != 30744
)

achievement(
    title = "Coily the \"↲\!#", points = 2,
    description = "Lure Coily off the Stage",
    id = 338056, badge = "381550", published = "15.07.2023 13:33:55", modified = "15.07.2023 13:33:55",
    trigger = byte(0x00003C) == 1 && byte(0x000025) != 4 && (tbyte(0x00003D) - prev(tbyte(0x00003D))) >= 9472 &&
              prev(bit7(0x0000FB)) == 1 && bit7(0x0000FB) == 0
)

achievement(
    title = "$>⥈$⤉!@{ Fantastic", points = 10,
    description = "Clear a full Round while getting chased by Coily the whole time and before activating any blocks",
    id = 338047, badge = "381541", published = "15.07.2023 13:33:04", modified = "15.07.2023 13:33:04",
    trigger = never(byte(0x00003C) == 0) && never((byte(0x000004) != 0 || byte(0x000005) != 0) && bit7(0x0000FB) == 0) &&
              never((prev(bit7(0x0000FB)) == 1 && bit7(0x0000FB) == 0)) &&
              (once(prev(byte(0x00003C)) != byte(0x00003C) || prev(byte(0x000001)) != byte(0x000001))) && bit7(0x0000FB) == 1 &&
              trigger_when(byte(0x000025) == 4)
)

achievement(
    title = "Green Gumball ↺]%&⥈!⤉@)", points = 2,
    description = "Collect the Green Ball",
    id = 338043, badge = "381525", published = "15.07.2023 13:32:50", modified = "15.07.2023 13:32:50",
    trigger = byte(0x00003C) == 1 && prev(byte(0x000025)) != 1 && byte(0x000025) == 1
)

achievement(
    title = "Stop The <!@{!]↲ Time！", points = 5,
    description = "Jump through 3 different objects while time is stopped",
    id = 338057, badge = "381551", published = "15.07.2023 13:33:55", modified = "15.07.2023 13:33:55",
    trigger = never(byte(0x00003C) == 0) && never(byte(0x000025) != 1) && unless(byte(0x00009B) == 192) &&
              tally(3,
                  once(((32768 + byte(0x00009B) - byte(0x00007F)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x00007F)) >= 32736 &&
                  (32768 + byte(0x00009C) - byte(0x000080)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000080)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x000083)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x000083)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x000084)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000084)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x000087)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x000087)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x000088)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000088)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x00008B)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x00008B)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x00008C)) >= 32760 && (32768 + byte(0x00009C) - byte(0x00008C)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x00008F)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x00008F)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x000090)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000090)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x000093)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x000093)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x000094)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000094)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x000097)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x000097)) >= 32753 &&
                  (32768 + byte(0x00009C) - byte(0x000098)) >= 32760 && (32768 + byte(0x00009C) - byte(0x000098)) <= 32776),
                  once(((32768 + byte(0x00009B) - byte(0x00009F)) <= 32768) &&
                  (32768 + byte(0x00009B) - byte(0x00009F)) >= 32757 &&
                  (32768 + byte(0x00009C) - byte(0x0000A0)) >= 32760 && (32768 + byte(0x00009C) - byte(0x0000A0)) <= 32776)
              )
)

achievement(
    title = "Spinning )!⤉&", points = 2,
    description = "Use all Discs in a Round",
    id = 338048, badge = "381542", published = "15.07.2023 13:33:04", modified = "30.09.2023 14:04:31",
    trigger = byte(0x00003C) == 1 && byte(0x00009B) == 24 && byte(0x0000A7) == 192 && byte(0x0000AB) == 192 &&
              byte(0x0000AF) == 192 && byte(0x0000B3) == 192 && byte(0x0000B7) == 192 && prev(bit4(0x000025)) != 1
)

achievement(
    title = "Score Breaker", points = 10,
    description = "Reach a Score of 10k",
    id = 338055, badge = "381549", published = "15.07.2023 13:33:06", modified = "15.07.2023 13:33:06",
    trigger = byte(0x00003C) == 1 && prev(tbyte(0x00003D)) < 65536 && tbyte(0x00003D) >= 65536
)

achievement(
    title = "High on Points", points = 25,
    description = "Reach a Score of 50k",
    id = 338046, badge = "381539", published = "15.07.2023 13:32:51", modified = "15.07.2023 13:32:51",
    trigger = byte(0x00003C) == 1 && prev(tbyte(0x00003D)) < 327680 && tbyte(0x00003D) >= 327680
)

achievement(
    title = "Overshooter", points = 50,
    description = "Reach a Score of 100k",
    id = 338060, badge = "381554", published = "15.07.2023 13:33:56", modified = "15.07.2023 13:33:56",
    trigger = byte(0x00003C) == 1 && prev(tbyte(0x00003D)) < 1048576 && tbyte(0x00003D) >= 1048576
)

leaderboard(
    id = 71598, title = "Score Chaser",
    description = "Achieve the highest Score in a single run",
    start  = prev(byte(0x00003C)) == 0 && byte(0x00003C) == 1,
    cancel = byte(0x00003C) == 0,
    submit = (bit3(0x000025) == 1 || bit7(0x000025) == 1) && byte(0x000032) == 0,
    value  = max_of(
                 measured(0),
                 measured(bcd(tbyte(0x00003D))),
                 never(prev(byte(0x00003C)) == 0) &&
                 measured(1000000, when=once(once(byte(0x00003F) == 0) && prev(byte(0x00003F)) == 153 && byte(0x00003F) == 0))
             ),
    format = "VALUE"
)
