// Super Smash Bros. Melee
// #ID = 9602

check = dword_be(0x0049e750) == 0 && ~dword_be(0x0049e760) == 0 && prev(dword_be(0x004d680c)) == 0 && dword_be(0x004d680c) != 0

function creditsCalc()
{
    Array = []
    for i in range (0x1E8, 0xADC, 0x0C) {
        array_push(Array, (dword_be((dword_be(0x004d672c) & 0xfffffff) + i)) / (dword_be((dword_be(0x004d672c) & 0xfffffff) + i)))
    } return sum_of(Array, y => y)
}

achievement(
    title = "Tipping Hats. One Legend to Another", points = 5,
    description = "Manage to accumulate at least 100 hits during the credits",
    trigger =  check && creditsCalc() >= 100 
)

leaderboard(
    title = "Staff Credits - Most Hits",
    description = "Most amount of hits accumulated during the credits",
    start = check,
    cancel = always_false(),
    submit = check,
    value = measured(creditsCalc()), format="VALUE", lower_is_better=false
)
