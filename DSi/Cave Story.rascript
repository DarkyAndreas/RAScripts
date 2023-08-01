// Cave Story
// #ID = 2902

Code = {
    "US": 0x4556434b,
    "JP": 0x4a56434b,
}

Room = {
    "US": dword(0x0D3BB0),
    "JP": dword(0x0D5498),
}

Music = {
    "US": dword(0x0d3bbc),
    "JP": dword(0x0d548c),
}

Difficulty = {
    "US": byte(0x0bd300),
    "JP": byte(0x0bea20),
}

DifficultyType = {
    1:0x02,
    2:0x00,
    3:0x04,
    4:0x08
}

DifficultyText = {
    1:"Easy",
    2:"Normal",
    3:"Hard"
}

HUD = {
    "US": byte(0x0bdac0),
    "JP": byte(0x0bf39c),
}

QuoteHP = {
    "US": word(0x0bdb64),
    "JP": word(0x0bf440),
}

QuoteMaxHP = {
    "US": word(0x0bdb68),
    "JP": word(0x0bf444),
}

BossHP = {
    "US": dword(tbyte(0x0d8ee0)+0),
    "JP": dword(tbyte(0x0da6f0)+0),
}

BossY = {
    "US": dword(tbyte(0x0d8ee0)-0x38),
    "JP": dword(tbyte(0x0da6f0)-0x38),
}

BossX = {
    "US": dword(tbyte(0x0d8ee0)-0x34),
    "JP": dword(tbyte(0x0da6f0)-0x34),
}

BossGroundCheck = {
    "US": bit3(tbyte(0x0d8ee0)-0x3C),
    "JP": bit3(tbyte(0x0da6f0)-0x3C),
}

BossHUD = {
    "US": byte(0x0d8edc),
    "JP": byte(0x0da6ec),
}

QuoteX = {
    "US": dword(0x0bdaec),
    "JP": dword(0x0bf3c8),
}

QuoteY = {
    "US": dword(0x0bdaf0),
    "JP": dword(0x0bf3cc),
}

QuoteYSpeed = {
    "US": dword(0x0bdb08),
    "JP": dword(0x0bf3e4),
}

ItemSlots = {
    "US": dword(0x0d7bdc),
    "JP": dword(0x0d93ec),
}

WeaponSlot1 = {
    "US": dword(0x0d7c5c),
    "JP": dword(0x0d946c),
}

WeaponSlot2 = {
    "US": dword(0x0d7c70),
    "JP": dword(0x0d9480),
}

WeaponSlot3 = {
    "US": dword(0x0d7c84),
    "JP": dword(0x0d9494),
}

WeaponSlot4 = {
    "US": dword(0x0d7c98),
    "JP": dword(0x0d94a8),
}

WeaponSlot5 = {
    "US": dword(0x0d7cac),
    "JP": dword(0x0d94bc),
}

WeaponSelect = {
    "US": dword(0x0d7bd8),
    "JP": dword(0x0d93e8),
}

AttackStat = {
    "US": dword(0x0d497c),
    "JP": dword(0x0d618c),
}

GroundCheck = {
    "US": bit3(0x0bdad4),
    "JP": bit3(0x0bf3b0),
}

InputCheck = {
    "US": bit6(0x0bdb8c),
    "JP": bit6(0x0bf468),
}

Text = {
    "US": dword(0x0d3f1c),
    "JP": dword(0x0d572c),
}

TextState = {
    "US": byte(0x0d3f18),
    "JP": byte(0x0d5728),
}

StoryCurlyDeath = {
    "US": bit2(0x0d7dee),
    "JP": bit2(0x0d95fe),
}

StoryDoctor2 = {
    "US": bit6(0x0d7e22),
    "JP": bit6(0x0d9632),
}

StoryDoctor = {
    "US": bit7(0x0d7e22),
    "JP": bit7(0x0d9632),
}

StoryHearts = {
    "US": bit2(0x0d7e23),
    "JP": bit2(0x0d9633),
}

StoryStatue = {
    "US": 0x0d7e4a,
    "JP": 0x0d965a,
}

StoryCurly = {
    "US": bit3(0x0d7e43),
    "JP": bit3(0x0d9653),
}

SaveCheck = {
    "US": bit7(0x0d7db9),
    "JP": bit7(0x0d95c9),
}

EndingCheck = {
    "US": bit0(0x0d7e7e),
    "JP": bit0(0x0d968e),
}

IngameTime = {
    "US": dword(0x0bdabc),
    "JP": dword(0x0bf398),
}

HUDTime = {
    "US": dword(0x0d3bac),
    "JP": dword(0x0d5488),
}

BossRoom = {
    1:0x0e,
    2:0x02,
    3:0x19,
    4:0x1c,
    5:0x1d,
    6:0x0a,
    7:0x23,
    8:0x29,
    9:0x27,
    10:0x2c,
    11:0x2f,
    12:0x1f,
    13:0x33,
    14:0x53,
    15:0x43,
    16:0x40,
    17:0x41,
    18:0x44,
    19:0x51,
    20:0x61,
}

BossRoomName = {
    1:"Shack",
    2:"Egg Corridor",
    3:"Power Supply Room",
    4:"Gum",
    5:"Sand Zone Residence",
    6:"Sand Zone",
    7:"Warehouse",
    8:"Clinic Ruins",
    9:"Labyrinth W",
    10:"Boulder Chamber",
    11:"Core",
    12:"Main Artery",
    13:"Egg Observation Room?",
    14:"Storage",
    15:"Last Cave (Hidden)",
    16:"Throne Room",
    17:"The King's Table",
    18:"Black Space",
    19:"Blood Stained Sanctuary - B2",
}

Boss = {
    1:"Balrog",
    2:"Igor",
    3:"Balrog",
    4:"Balfrog",
    5:"Curly",
    6:"Omega",
    7:"Toroko +",
    8:"Puu Black",
    9:"Monster X",
    10:"Balrog",
    11:"Core",
    12:"Ironhead",
    13:"Sisters",
    14:"Ma Pignon",
    15:"Red Ogre",
    16:"Misery",
    17:"Doctor",
    18:"Undead Core",
    19:"Heavy Press",
}

BossTitle = {
    1:"Little Toaster",
    2:"Not So Cute Rabbit",
    3:"Restricting the Robot Revolution",
    4:"Frogs Eradication",
    5:"Small Malfunction",
    6:"Weird Looking Groundhog",
    7:"Down The Rabbit Hole",
    8:"Popped Like a Bubble",
    9:"Little Kitty, Big Tanky",
    10:"Surrounded by Weakness",
    11:"Heart of the Island",
    12:"They Rest, They Rust",
    13:"Stealing From the Sleeping Dragon",
    14:"Funky Fungi",
    15:"The Beast Who’s Missing a Fang",
    16:"The Princess’s Forceful Sleep",
    17:"Call the ambulance...but not for me!",
    18:"Zeitdruck against the Zombified Zentrum",
}

WeaponNumb = {
    1:0x01,
    2:0x02,
    3:0x03,
    4:0x04,
    5:0x05,
    6:0x07,
    7:0x09,
    8:0x0a,
    9:0x0c,
    10:0x0d,
}

Weapon = {
    1:"Snake",
    2:"Polar Star",
    3:"Fireball",
    4:"Machine Gun",
    5:"Missile Launcher",
    6:"Bubbline",
    7:"Blade",
    8:"Super Missile",
    9:"Nemesis",
    10:"Spur",
}

Title = {    
    1:"Snake Eater",
    2:"Twinkle Twinkle Little Star",
    3:"Christmas Came Early!",
    4:"Curly Is Packing the Big Guns",
    5:"Don’t Miss Out on That Power",
    6:"Oh More Bubbles!",
    7:"I Will Avenge You...",
    8:"Blow Up Profit",
    9:"Genesis of Destruction",
    10:"The Power of A Million Stars",
}

HellWeaponNumb = {
    1:0x01,
    2:0x02,
    3:0x03,
    4:0x04,
    5:0x07,
    6:0x09,
    7:0x0a,
    8:0x0c,
    9:0x0d,
}

HellWeapon = {
    1:"Snake",
    2:"Polar Star",
    3:"Fireball",
    4:"Machine Gun",
    5:"Bubbline",
    6:"Blade",
    7:"Super Missile",
    8:"Nemesis",
    9:"Spur",
}

Ending = {
    1:"Bad",
    2:"Normal",
    3:"Best",
}



function cheevo0(region, i, j) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == i && Text[region] == j
}

function cheevo0S(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == 0x41 && StoryHearts[region] == 0x01 && TextState[region] == 0
}

function cheevo0SS(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == 0x30 && prev(StoryCurlyDeath[region]) == 0
    && StoryCurlyDeath[region] == 0x01
}

function cheevo0SSS(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && __ornext(Room[region] == 0x50 || Room[region] == 0x60)
    && QuoteY[region] > 0x00018000 && QuoteY[region] < 0x00022000 && TextState[region] == 2
}

function cheevo0SSSS(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && __ornext(Room[region] == 0x56 || Room[region] == 0x66)
    && prev(bit6(StoryStatue[region]) + bit7(StoryStatue[region]) + bit0(StoryStatue[region] + 1) + bit1(StoryStatue[region] + 1)) < 4
    && bit6(StoryStatue[region]) + bit7(StoryStatue[region]) + bit0(StoryStatue[region] + 1) + bit1(StoryStatue[region] + 1) == 4
}

function cheevo1(region, i) {
if(i==5 || i==8 || i==9)
    return dword(0xffe00c) == Code[region] && HUD[region] == 4 && Room[region] < 0x5f && WeaponAchievementLogic(region, i)
else
    return dword(0xffe00c) == Code[region] && HUD[region] == 5 && Room[region] < 0x5f && WeaponAchievementLogic(region, i)
}

function cheevo1L(region, i) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] < 0x5f && WeaponLevelAchievementLogic(region, i)
}

function cheevo1S(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] == 4 && Room[region] < 0x5f && prev(QuoteMaxHP[region]) < 55 && QuoteMaxHP[region] == 55
}

function cheevo1SS(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] == 4 && Room[region] == 0x52 && shortWeaponMaxAchievementLogic(region, 54)
}

function cheevo1SSS(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] == 4 && Room[region] == 0x52 && WeaponMaxAchievementLogic(region, 100)
}

function cheevo2(region, i) {
if(i==6) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == BossRoom[i] && QuoteX[region] >= 0x001a3000
    && prev(BossHUD[region]) == 1 && BossHUD[region] == 0 }
else if(i==17) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == BossRoom[i] && prev(StoryDoctor2[region]
    + StoryDoctor[region]) < 0x02 && StoryDoctor2[region] + StoryDoctor[region] == 0x02 }
else {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == BossRoom[i] && prev(BossHUD[region]) == 1
    && BossHUD[region] == 0 }
}

function cheevo3(region, j) {
    return dword(0xffe00c) == Code[region] && __ornext(HUD[region] == 4 || HUD[region] == 5) && ItemAchievementLogic(region, j)
}

function cheevo3S(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prev(Room[region]) == 0x3f && Room[region] == 0x3e
    && shortItemAchievementLogic(region, 0x12)
}

function cheevo4(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x1c) && once(prev(BossHUD[region]) == 0
    && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && BalfrogAchievementLogic(region)
}

function cheevo5(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x1d) && once(prev(BossHUD[region]) == 0
    && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && CurlyAchievementLogic(region)
}

function cheevo6(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x0a) && once(prev(BossHUD[region]) == 0
    && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && OmegaAchievementLogic(region)
}

function cheevo7(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x23) && once(prev(BossHUD[region]) == 0
    && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && TorokoAchievementLogic(region)
}

function cheevo8(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x27)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && MonsterXAchievementLogic(region)
}

function cheevo9(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x33)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(GroundCheck[region] == 0x01 && QuoteY[region] != 0x00010000) && never(__ornext(QuoteX[region] <= 0x00e600 
    || QuoteX[region] >= 0x019a00) && GroundCheck[region] == 0x01 && QuoteY[region] == 0x00010000)
}

function cheevo10(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x40)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(AttackStat[region]) > AttackStat[region] && prev(BossHP[region]) == BossHP[region])
}

function cheevo11(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x41)
    && once(prev(StoryDoctor[region]) == 0 && StoryDoctor[region] == 1) && trigger_when(repeated(2, prev(BossHUD[region]) == 1
    && BossHUD[region] == 0)) && never(prev(QuoteHP[region]) > QuoteHP[region])
}

function cheevo12(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x0e)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(GroundCheck[region]) == 0x01 && GroundCheck[region] == 0x00 && prev(InputCheck[region]) == 0x00 && InputCheck[region] == 0x01)
}

function cheevo13(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x02)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(BossHP[region]) != BossHP[region] && __ornext(prev(BossY[region]) == BossY[region] || prev(BossY[region]) == BossY[region]))
}

function cheevo14(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x19)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(BossHP[region]) > BossHP[region] && BossGroundCheck[region] == 0x01)
}

function cheevo15(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x29)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(repeated(3,prev(BossGroundCheck[region]) == 0x01 && BossGroundCheck[region] == 0x00))
}

function cheevo16(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x2c)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(AttackStat[region]) < AttackStat[region] && GroundCheck[region] == 0x01)
}

function cheevo17(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x2f)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(repeated(10, prev(GroundCheck[region]) == 0x01 && GroundCheck[region] == 0x00 && prev(InputCheck[region]) == 0x00 && InputCheck[region] == 0x01 && QuoteYSpeed[region] > 0xf0000000))
}

function cheevo18(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x44)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && UndeadCoreAchievementLogic(region)
}

function cheevo19(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && never(Room[region] != 0x43)
    && once(prev(BossHUD[region]) == 0 && BossHUD[region] == 1) && trigger_when(prev(BossHUD[region]) == 1 && BossHUD[region] == 0)
    && never(prev(QuoteHP[region]) > QuoteHP[region])
}

function BadEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == 0x35 && prev(Music[region]) == 0x19 &&
    Music[region] == 0x1a
}

function NormalEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x0a &&
    Music[region] == 0x21
}

function MimigaEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x0a &&
    Music[region] == 0x21 && shortItemAchievementLogic(region, 0x18)
}

function BestEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x00 &&
    Music[region] == 0x21
}

function LittleEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x00 &&
    Music[region] == 0x21 && shortItemAchievementLogic(region, 0x20)
}

function Halloween(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && once(SaveCheck[region] == 0 &&
    Room[region] == 0x0d && word_be(0xfffde9) >= 0x1027 && word_be(0xfffde9) <= 0x1103) && __ornext(Music[region] == 0x21 ||
    Music[region] == 0x1a) && never(HUD[region] == 0)
}

function Christmas(region) {
    return unless(dword(0xffe00c) != Code[region]) && never(HUD[region] == 0) && once(SaveCheck[region] == 0 &&
    Room[region] == 0x0d && __ornext(word_be(0xfffde9) >= 0x1224 || word_be(0xfffde9) <= 0x0107)) && __ornext(Music[region] == 0x21 ||
    Music[region] == 0x1a) && never(HUD[region] == 0)
}

function SpeedEnd(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && __ornext(Music[region] == 0x21 ||
    Music[region] == 0x1a) && IngameTime[region] < 216000
}

function NormalEndPlus(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x0a &&
    Music[region] == 0x21 && __ornext(Difficulty[region] == 0x00 || Difficulty[region] == 0x02) && QuoteMaxHP[region] == 50
    && shortWeaponMaxAchievementLogic(region, 30)
}

function BestEndPlus(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x00 &&
    Music[region] == 0x21 && __ornext(Difficulty[region] == 0x00 || Difficulty[region] == 0x02) && QuoteMaxHP[region] == 55
    && shortWeaponMaxAchievementLogic(region, 54)
}

function NormalEndHard(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x0a &&
    Music[region] == 0x21 && Difficulty[region] == 0x04
}

function BestEndHard(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x00 &&
    Music[region] == 0x21 && Difficulty[region] == 0x04
}

function TimeAttack(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Difficulty[region] == 0x08 && Music[region] == 0x0f
}

function TimeAttackTime(region, i) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Difficulty[region] == 0x08 && Music[region] == 0x0f
    && HUDTime[region] <= i
}

function TimeAttackWeapon(region, i) {
    return unless(dword(0xffe00c) != Code[region]) && HUD[region] != 0 && never(Difficulty[region] != 0x08) && once(prev(Room[region]) == 0x5f && Room[region] == 0x60) && trigger_when(Music[region] == 0x0f)
    && never(WeaponSlot1[region] != HellWeaponNumb[i]) && never(WeaponSlot2[region] != 0)
}

function HellCurly(region) {
    return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == 0x50 && prev(StoryCurly[region]) == 0x01
    && StoryCurly[region] == 0x00
}

function HellPress(region) {
return dword(0xffe00c) == Code[region] && HUD[region] != 0 && Room[region] == 0x52 && prev(BossHUD[region]) == 1
    && BossHUD[region] == 0
}


function prevGetItem(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return prev(dword(0x0d7bdc + (index*4))) != j
    }
    else if (region == "JP") {
    return prev(dword(0x0d93ec + (index*4))) != j
    }
}

function GetItem(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return dword(0x0d7bdc + (index*4)) == j
    }
    else if (region == "JP") {
    return dword(0x0d93ec + (index*4)) == j
    }
}

function prevGetWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return prev(dword(0x0d7c5c + (index*0x14))) != WeaponNumb[j]
    }
    else if (region == "JP") {
    return prev(dword(0x0d946c + (index*0x14))) != WeaponNumb[j]
    }
}

function GetWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return dword(0x0d7c5c + (index*0x14)) == WeaponNumb[j]
    }
    else if (region == "JP") {
    return dword(0x0d946c + (index*0x14)) == WeaponNumb[j]
    }
}

function prevGetMaxWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return prev(dword(0x0d7c68 + (index*0x14))) < j
    }
    else if (region == "JP") {
    return prev(dword(0x0d9478 + (index*0x14))) < j
    }
}

function GetMaxWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return dword(0x0d7c68 + (index*0x14)) == j
    }
    else if (region == "JP") {
    return dword(0x0d9478 + (index*0x14)) == j
    }
}

function prevGetLevelWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return prev(dword(0x0d7c60 + (index*0x14)) * 0x10 + dword(0x0d7c5c + (index*0x14))) == 0x20 + WeaponNumb[j]
    }
    else if (region == "JP") {
    return prev(dword(0x0d9470 + (index*0x14)) * 0x10 + dword(0x0d946c + (index*0x14))) == 0x20 + WeaponNumb[j]
    }
}

function GetLevelWeapon(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return dword(0x0d7c60 + (index*0x14)) * 0x10 + dword(0x0d7c5c + (index*0x14)) == 0x30 + WeaponNumb[j]
    }
    else if (region == "JP") {
    return dword(0x0d9470 + (index*0x14)) * 0x10 + dword(0x0d946c + (index*0x14)) == 0x30 + WeaponNumb[j]
    }
}

function GetWeaponTimeAttack(region, index, j)
{
    // Code for the Item conditions
    if (region == "US") {
    return never(HUD[region] == 3 && prev(AttackStat[region]) < AttackStat[region] && dword(0x0d7bd8) == index
    && dword(0x0d7c5c + (index*0x14)) != HellWeaponNumb[j])
    }
    else if (region == "JP") {
    return never(HUD[region] == 3 && prev(AttackStat[region]) < AttackStat[region] && dword(0x0d93e8) == index
    && dword(0x0d946c + (index*0x14)) != HellWeaponNumb[j])
    }
}

//function prevItemAchievementLogic(region, j)
//{
    // Build an array for each Item
//    pointerArray = []
//    for index in range (0,23)
//        array_push(pointerArray, prevGetItem(region, index, j))

    // Concat everything in the array with && (use any_of for ||)
//    return all_of(pointerArray, p => p)
//}

//function oldItemAchievementLogic(region, j)
//{
    // Build an array for each Item
//    pointerArray = []
//    for index in range (0,23)
//        array_push(pointerArray, GetItem(region, index, j))

    // Concat everything in the array with && (use any_of for ||)
//    return __ornext(any_of(pointerArray, p => p))
//}


function Balfrog(region, index)
{
    // Code for the pointer conditions
    if (region == "US") {
    return never(__ornext(prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x68 || prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x6e)
    && dword(tbyte(0x0bdba8 + (index*4)) + 0x28) == 0x03)
    }
    else if (region == "JP") {
    return never(__ornext(prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x68 || prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x6e)
    && dword(tbyte(0x0bf484 + (index*4)) + 0x28) == 0x03)
    }
}

function Curly(region, index)
{
    // Code for the pointer conditions
    if (region == "US") {
    return never(dword(tbyte(0x0bdba8 + (index*4)) + 0x28) == 0x7a && prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x40)) == 0x3e8 && dword(tbyte(0x0bdba8 + (index*4)) + 0x40) != 0x3e8)
    }
    else if (region == "JP") {
    return never(dword(tbyte(0x0bf484 + (index*4)) + 0x28) == 0x7a && prev(dword(tbyte(0x0bf484 + (index*4)) + 0x40)) == 0x3e8 && dword(tbyte(0x0bf484 + (index*4)) + 0x40) != 0x3e8)
    }
}

function Omega(region, index)
{
    // Code for the pointer conditions
    if (region == "US") {
    return never(prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x30 && dword(tbyte(0x0bdba8 + (index*4)) + 0x40) == 0x00)
    }
    else if (region == "JP") {
    return never(prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x30 && dword(tbyte(0x0bf484 + (index*4)) + 0x40) == 0x00)
    }
}

function Toroko(region, index)
{
    // Code for the pointer conditions
    if (region == "US") {
    return never(prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x8e && dword(tbyte(0x0bdba8 + (index*4)) + 0x40) == 0x00)
    }
    else if (region == "JP") {
    return never(prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x8e && dword(tbyte(0x0bf484 + (index*4)) + 0x40) == 0x00)
    }
}

function MonsterX(region, index)
{
    // Code for the Item conditions
    if (region == "US") {
    return never(HUD[region] == 3 && prev(AttackStat[region]) < AttackStat[region] && dword(0x0d7bd8) == index
    && dword(0x0d7c60 + (index*0x14)) > 1)
    }
    else if (region == "JP") {
    return never(HUD[region] == 3 && prev(AttackStat[region]) < AttackStat[region] && dword(0x0d93e8) == index
    && dword(0x0d9470 + (index*0x14)) > 1)
    }
}

function UndeadCore(region, index)
{
    // Code for the Item conditions
    if (region == "US") {
    return never(__ornext(prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x11b || prev(dword(tbyte(0x0bdba8 + (index*4)) + 0x28)) == 0x11c)
    && dword(tbyte(0x0bdba8 + (index*4)) + 0xa0) != 0)
    }
    else if (region == "JP") {
    return never(__ornext(prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x11b || prev(dword(tbyte(0x0bf484 + (index*4)) + 0x28)) == 0x11c)
    && dword(tbyte(0x0bf484 + (index*4)) + 0xa0) != 0)
    }
}






function ItemAchievementLogic(region, j)
{
    // Build an array for each Item
    prevItemArray = []
    ItemArray = []
    for index in range (0,23) {
        array_push(prevItemArray, prevGetItem(region, index, j)) }
    for index in range (0,23) {
        array_push(ItemArray, GetItem(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return all_of(prevItemArray, p => p) &&__ornext(any_of(ItemArray, p => p))
}

function shortItemAchievementLogic(region, j)
{
    // Build an array for each Item
    ItemArray = []
    for index in range (0,23) {
        array_push(ItemArray, GetItem(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return __ornext(any_of(ItemArray, p => p))
}

function WeaponAchievementLogic(region, j)
{
    // Build an array for each Item
    prevWeaponArray = []
    WeaponArray = []
    for index in range (0,4) {
        array_push(prevWeaponArray, prevGetWeapon(region, index, j)) }
    for index in range (0,4) {
        array_push(WeaponArray, GetWeapon(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return all_of(prevWeaponArray, p => p) &&__ornext(any_of(WeaponArray, p => p))
}

function WeaponMaxAchievementLogic(region, j)
{
    // Build an array for each Item
    prevWeaponArray = []
    WeaponArray = []
    for index in range (0,4) {
        array_push(prevWeaponArray, prevGetMaxWeapon(region, index, j)) }
    for index in range (0,4) {
        array_push(WeaponArray, GetMaxWeapon(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return all_of(prevWeaponArray, p => p) &&__ornext(any_of(WeaponArray, p => p))
}

function shortWeaponMaxAchievementLogic(region, j)
{
    // Build an array for each Item
    WeaponArray = []
    for index in range (0,4) {
        array_push(WeaponArray, GetMaxWeapon(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return __ornext(any_of(WeaponArray, p => p))
}

function WeaponLevelAchievementLogic(region, j)
{
    // Build an array for each Item
    prevWeaponArray = []
    WeaponArray = []
    for index in range (0,4) {
        array_push(prevWeaponArray, prevGetLevelWeapon(region, index, j)) }
    for index in range (0,4) {
        array_push(WeaponArray, GetLevelWeapon(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return __ornext(any_of(prevWeaponArray, p => p)) &&__ornext(any_of(WeaponArray, p => p))
}

function WeaponTimeAttackAchievementLogic(region, j)
{
    // Build an array for each Item
    WeaponArray = []
    for index in range (0,4) {
        array_push(WeaponArray, GetWeaponTimeAttack(region, index, j)) }

    // Concat everything in the array with && (use any_of for ||)
    return all_of(WeaponArray, p => p)
}

function BalfrogAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,349)
        array_push(pointerArray, Balfrog(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}

function CurlyAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,349)
        array_push(pointerArray, Curly(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}

function OmegaAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,349)
        array_push(pointerArray, Omega(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}

function TorokoAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,349)
        array_push(pointerArray, Toroko(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}

function MonsterXAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,4)
        array_push(pointerArray, MonsterX(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}

function UndeadCoreAchievementLogic(region)
{
    // Build an array for each Item
    pointerArray = []
    for index in range (0,349)
        array_push(pointerArray, UndeadCore(region, index))

    // Concat everything in the array with && (use any_of for ||)
    return all_of(pointerArray, p => p)
}








achievement(
    title = "?!", points = 2,
    description = "Try to open the door in 'First Cave'",
    trigger = cheevo0("US", 0x0c, 0x06f7) || cheevo0("JP", 0x0c, 0x06ea)
)

achievement(
    title = "Not a Pro Yet", points = 2,
    description = "Refuse Balrogs offer in 'Shack'",
    trigger = cheevo0("US", 0x0e, 0x124f) || cheevo0("JP", 0x0e, 0x119a)
)

achievement(
    title = "Gone for Good?", points = 2,
    description = "Read a Sign that has been left by Tetsuzou Kamadani in 'Hermit Gunsmith'",
    trigger = cheevo0("US", 0x5a, 0x1080) || cheevo0("JP", 0x5a, 0x0dff)
)

achievement(
    title = "You did it for the Achievement...right?", points = 2,
    description = "Let Curly die in 'Waterway'",
    trigger = cheevo0SS("US") || cheevo0SS("JP")
)

achievement(
    title = "Nowhere to Go", points = 2,
    description = "Congrats on reaching the end in 'Balcony'",
    trigger = cheevo0("US", 0x3e, 0x0902) || cheevo0("JP", 0x3e, 0x8d9)
)

achievement(
    title = "Mimiga's Love", points = 2,
    description = "Earn a Heartful Reward in 'The King's Table'",
    trigger = cheevo0S("US") || cheevo0S("JP")
)

achievement(
    title = "You Will Be Here for a Long While", points = 2,
    description = "Read a secret sign in 'Blood Stained Sanctuary - B1'",
    trigger = cheevo0SSS("US") || cheevo0SSS("JP")
)

achievement(
    title = "Viva la Revolution!", points = 2,
    description = "Destroy all 4 Statues in 'Statue Chamber '",
    trigger = cheevo0SSSS("US") || cheevo0SSSS("JP")
)

for i in range (1, 10) {
achievement(
    title = format(Title[i]), points = 5,
    description = format("Obtain the {0}", Weapon[i]),
    trigger = cheevo1("US", i) || cheevo1("JP", i)
)
}

//for i in range (1, 10) {
//achievement(
//    title = format("Master of {0}", Weapon[i]), points = 2,
//    description = format("Fully power up the {0}", Weapon[i]),
//    trigger = cheevo1L("US", i) || cheevo1L("JP", i)
//)
//}

for i in range (1, 18) {
achievement(
    title = format(BossTitle[i]), points = 5,
    description = format("Defeat {0} in {1}", Boss[i], BossRoomName[i]),
    trigger = cheevo2("US", i) || cheevo2("JP", i)
)
}

achievement(
    title = "A Wild Night", points = 2,
    description = "Obtain 'Chako's Rouge'",
    trigger = cheevo3("US", 0x25) || cheevo3("JP", 0x25)
)

achievement(
    title = "Finders Keepers", points = 2,
    description = "Obtain 'Curly's Panties'",
    trigger = cheevo3("US", 0x23) || cheevo3("JP", 0x23)
)

achievement(
    title = "One Life to Give", points = 2,
    description = "Obtain 'Life Pot'",
    trigger = cheevo3("US", 0x0f) || cheevo3("JP", 0x0f)
)

achievement(
    title = "Never Getting Lost Again", points = 5,
    description = "Obtain 'Map System'",
    trigger = cheevo3("US", 0x02) || cheevo3("JP", 0x02)
)

achievement(
    title = "Arming Up!", points = 5,
    description = "Obtain 'Arms Barrier'",
    trigger = cheevo3("US", 0x13) || cheevo3("JP", 0x13)
)

achievement(
    title = "Charged up Power", points = 5,
    description = "Obtain 'Turbocharge'",
    trigger = cheevo3("US", 0x14) || cheevo3("JP", 0x14)
)

achievement(
    title = "Protection +", points = 5,
    description = "Obtain 'Whimsical Star'",
    trigger = cheevo3("US", 0x26) || cheevo3("JP", 0x26)
)

achievement(
    title = "Low Quality Flight", points = 5,
    description = "Obtain 'Booster v0.8'",
    trigger = cheevo3("US", 0x12) || cheevo3("JP", 0x12)
)

achievement(
    title = "Speeding Through 4 Directions", points = 5,
    description = "Obtain 'Booster v2.0'",
    trigger = cheevo3("US", 0x17) || cheevo3("JP", 0x17)
)

achievement(
    title = "Tight Knot", points = 5,
    description = "Obtain 'Tow Rope'",
    trigger = cheevo3("US", 0x1e) || cheevo3("JP", 0x1e)
)

achievement(
    title = "Bonded in Iron", points = 5,
    description = "Obtain 'Iron Bond'",
    trigger = cheevo3("US", 0x27) || cheevo3("JP", 0x27)
)

achievement(
    title = "Under 290? Underestimate!", points = 5,
    description = "Obtain '290 Counter'",
    trigger = cheevo3("US", 0x16) || cheevo3("JP", 0x16)
)

achievement(
    title = "No Sweat!", points = 10,
    description = "Complete 'Final Cave' with Booster v0.8",
    trigger = cheevo3S("US") || cheevo3S("JP")
)

achievement(
    title = "Broken Machine", points = 10,
    description = "Defeat Balrog without jumping",
    trigger = cheevo12("US") || cheevo12("JP")
)

achievement(
    title = "Igocentric Igor", points = 10,
    description = "Defeat Igor while only attacking him when he is moving",
    trigger = cheevo13("US") || cheevo13("JP")
)

achievement(
    title = "Crash Landing", points = 10,
    description = "Defeat Balrog while only attacking him when he is in the air",
    trigger = cheevo14("US") || cheevo14("JP")
)

achievement(
    title = "Tasteful Toasted Toads", points = 10,
    description = "Defeat Balfrog without killing any of the frogs",
    trigger = cheevo4("US") || cheevo4("JP")
)

achievement(
    title = "Mimiga Protection", points = 10,
    description = "Defeat Curly without hurting any of the Mimiga children",
    trigger = cheevo5("US") || cheevo5("JP")
)

achievement(
    title = "Alpha to my Omega", points = 10,
    description = "Defeat Omega without destroying any of their projectiles",
    trigger = cheevo6("US") || cheevo6("JP")
)

achievement(
    title = "Flowers Revenge", points = 10,
    description = "Defeat Toroko + without destroying any of the flowers",
    trigger = cheevo7("US") || cheevo7("JP")
)

achievement(
    title = "Unlike Puu - Everything Black", points = 25,
    description = "Defeat Puu Black in less than 2 cycles",
    trigger = cheevo15("US") || cheevo15("JP")
)

achievement(
    title = "Monster X Machina", points = 25,
    description = "Defeat Monster X while only using Lv 1 Weapons",
    trigger = cheevo8("US") || cheevo8("JP")
)

achievement(
    title = "Bal-Rock Me!", points = 10,
    description = "Defeat Balrog while only firing shots midair",
    trigger = cheevo16("US") || cheevo16("JP")
)

achievement(
    title = "Creepy Down to the Core", points = 10,
    description = "Defeat Core without jumping more than 10 times",
    trigger = cheevo17("US") || cheevo17("JP")
)

achievement(
    title = "Fishy Freedom Friday", points = 10,
    description = "Defeat the Ironhead without taking damage and obtain the 'Alien Medal'",
    trigger = cheevo3("US", 0x24) || cheevo3("JP", 0x24)
)

achievement(
    title = "Keeping the Small Ground", points = 10,
    description = "Defeat Sisters while only staying on the small platform in the middle",
    trigger = cheevo9("US") || cheevo9("JP")
)

achievement(
    title = "Stonecold", points = 2,
    description = "Obtain the 'Medal of the Red Ogre'",
    trigger = cheevo3("US", 0x1f) || cheevo3("JP", 0x1f)
)

achievement(
    title = "Bit Based Beast Bites the Byte", points = 10,
    description = "Defeat the Red Ogre without taking damage",
    trigger = cheevo19("US") || cheevo19("JP")
)

achievement(
    title = "Misery's Misery", points = 25,
    description = "Defeat Misery without missing any shots",
    trigger = cheevo10("US") || cheevo10("JP")
)

achievement(
    title = "Doctor's Dilemma", points = 25,
    description = "Defeat Doctor without taking damage",
    trigger = cheevo11("US") || cheevo11("JP")
)

achievement(
    title = "Kept Alive Through Desires", points = 25,
    description = "Defeat Undead Core without hurting Misery or Sue",
    trigger = cheevo18("US") || cheevo18("JP")
)

achievement(
    title = "Curly's Hell", points = 5,
    description = "Pick up Curly in 'Blood Stained Sanctuary - B1'",
    trigger = HellCurly("US") || HellCurly("JP")
)

achievement(
    title = "Pressed to Nothing", points = 5,
    description = "Defeat Heavy Press in 'Blood Stained Sanctuary - B3'",
    trigger = HellPress("US") || HellPress("JP")
)

achievement(
    title = "The END of The HERO", points = 5,
    description = "Achieve the Bad End",
    trigger = BadEnd("US") || BadEnd("JP")
)

achievement(
    title = "Saved the World, but at What Cost?", points = 25,
    description = "Achieve the Normal End",
    trigger = NormalEnd("US") || NormalEnd("JP")
)

achievement(
    title = "This One Seems Suspicious", points = 25,
    description = "Achieve the Normal End while wearing the Mimiga Mask",
    trigger = MimigaEnd("US") || MimigaEnd("JP")
)

achievement(
    title = "Breaking This Hellish Curse", points = 25,
    description = "Achieve the Best End",
    trigger = BestEnd("US") || BestEnd("JP")
)

achievement(
    title = "Aren't you forgetting something?", points = 25,
    description = "Achieve the Best End while carrying Mister Little",
    trigger = LittleEnd("US") || LittleEnd("JP")
)

achievement(
    title = "Spooky, Scary Robot", points = 50,
    description = "Complete a full run during Halloween season and achieve any ending",
    trigger = Halloween("US") || Halloween("JP")
)

achievement(
    title = "Santa's Little Helper", points = 50,
    description = "Complete a full run during Christmas season and achieve any ending",
    trigger = Christmas("US") || Christmas("JP")
)

achievement(
    title = "Robotic TASer", points = 25,
    description = "Achieve any Ending in under an hour",
    trigger = SpeedEnd("US") || SpeedEnd("JP")
)

achievement(
    title = "Is That All You Have?", points = 10,
    description = "Achieve the Normal Ending on Easy or Normal Difficulty with all possible Health and Missile Upgrades",
    trigger = NormalEndPlus("US") || NormalEndPlus("JP")
)

achievement(
    title = "I’ll Take Your Entire Stock", points = 10,
    description = "Achieve the Best Ending on Easy or Normal Difficulty with all possible Health and Missile Upgrades",
    trigger = BestEndPlus("US") || BestEndPlus("JP")
)

achievement(
    title = "Are You Giving up Already?", points = 10,
    description = "Achieve the Normal Ending on Hard Difficulty",
    trigger = NormalEndHard("US") || NormalEndHard("JP")
)

achievement(
    title = "Tight Escape", points = 10,
    description = "Achieve the Best Ending on Hard Difficulty",
    trigger = BestEndHard("US") || BestEndHard("JP")
)

achievement(
    title = "Heartwarming", points = 10,
    description = "Obtain all Life Capsule and max out your health",
    trigger = cheevo1S("US") || cheevo1S("JP")
)

achievement(
    title = "The Powerhouse of the Guns", points = 10,
    description = "Obtain all Missile Expansion and max out your ammunition",
    trigger = cheevo1SS("US") || cheevo1SS("JP")
)

achievement(
    title = "Limit Break", points = 25,
    description = "First obtain the Missile Launcher in 'Blood Stained Sanctuary'",
    trigger = cheevo1SSS("US") || cheevo1SSS("JP")
)

achievement(
    title = "One Hell of a Time", points = 10,
    description = "Complete the Time Attack for the first time",
    trigger = TimeAttack("US") || TimeAttack("JP")
)

achievement(
    title = "Putting the Curly in {Hell}", points = 10,
    description = "Complete the Time Attack in under 6 minutes",
    trigger = TimeAttackTime("US", 21599) || TimeAttackTime("JP", 21599)
)

achievement(
    title = "Gone Too Soon", points = 10,
    description = "Complete the Time Attack in under 5 minutes",
    trigger = TimeAttackTime("US", 17998) || TimeAttackTime("JP", 17998)
)

achievement(
    title = "Kings Last Sacrifice", points = 25,
    description = "Complete the Time Attack in under 4 minutes",
    trigger = TimeAttackTime("US", 14398) || TimeAttackTime("JP", 14398)
)

achievement(
    title = "Sacred Sue", points = 50,
    description = "Complete the Time Attack in under 3 minutes",
    trigger = TimeAttackTime("US", 10798) || TimeAttackTime("JP", 10798)
)

for i in range (1, 9) {
achievement(
    title = format("Master of the {0}", HellWeapon[i]), points = 10,
    description = format("Complete the Time Attack while only using the {0}", HellWeapon[i]),
    trigger = TimeAttackWeapon("US", i) || TimeAttackWeapon("JP", i)
)
}

//achievement(
//    title = "", points = 0,
//    description = "",
//    trigger = dword(tbyte(0x0D8EE0) + 0xFFFFFFE8) == 34363944 && dword(tbyte(0x0D8EE0)) == 0 && dword(tbyte(0x0BDBCC) +
//               0x000040) == 34355624 && always_false() && always_true() && never(dword(0x0C39D0) == 3)
//)

function StartBoss(region, i, j)
{
    if(i==19)
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && __ornext(Room[region] == BossRoom[i] || Room[region] == BossRoom[i+1]) && prev(BossHUD[region]) == 0 && BossHUD[region] == 1
else
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && Room[region] == BossRoom[i] && prev(BossHUD[region]) == 0 && BossHUD[region] == 1
}

function CancelBoss(region)
{
    return unless(dword(0xffe00c) != Code[region]) && __ornext(HUD[region] == 0 || QuoteHP[region] >= 0xf000)
}

function SubmitBoss(region, i)
{
    if(i==6) {
    return QuoteX[region] >= 0x001a3000 && prev(BossHUD[region]) == 1 && BossHUD[region] == 0 }
else if(i==17) {
    return prev(StoryDoctor2[region] + StoryDoctor[region]) < 0x02 && StoryDoctor2[region] + StoryDoctor[region] == 0x02 }
else {
    return prev(BossHUD[region]) == 1 && BossHUD[region] == 0 }
}

function MeasuredValue(region)
{
    return measured(IngameTime[region], when=dword(0xffe00c) == Code[region])
}

function MeasuredValueHUD(region)
{
    return measured(HUDTime[region], when=dword(0xffe00c) == Code[region])
}

function MeasuredTally(region)
{
    return measured(tally(0,prev(IngameTime[region]) != IngameTime[region]), when=dword(0xffe00c) == Code[region])
}

function StartEnding(region, i, j)
{
    return unless(dword(0xffe00c) != Code[region]) && never(Difficulty[region] != DifficultyType[j]) && never(SaveCheck[region] == 1) && once(once(prev(HUD[region]) == 0 && HUD[region] != 0) && Room[region] == 0x0d)
}

function StartAndSubmitEnding(region, i, j)
{
    if(i==1) {
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && HUD[region] != 0 && Music[region] == 0x1a }
    else if(i==2) {
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && HUD[region] != 0 && Music[region] == 0x21 && EndingCheck[region] == 0x00 }
    else if(i==3) {
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && HUD[region] != 0 && Music[region] == 0x21 && EndingCheck[region] == 0x01 }
}

function CancelEnding(region)
{
    return dword(0xffe00c) == Code[region] && HUD[region] == 0
}

function SubmitEnding(region, i)
{
    if(i==1) {
    return Music[region] == 0x1a }
    else if(i==2) {
    return Music[region] == 0x21 && EndingCheck[region] == 0x00 }
    else if(i==3) {
    return Music[region] == 0x21 && EndingCheck[region] == 0x01 }
}

function StartAndSubmitStoryBSS(region, j)
{
    return dword(0xffe00c) == Code[region] && Difficulty[region] == DifficultyType[j] && HUD[region] != 0 && prior(Room[region]) == 0x47 && prev(Music[region]) == 0x00 && Music[region] == 0x21
}

function CancelStoryBSS(region)
{
    return dword(0xffe00c) == Code[region] && HUD[region] == 0 && Room[region] < 0x50 
}

function StartAndSubmitTABSS(region)
{
    return dword(0xffe00c) == Code[region] && Difficulty[region] == 0x08 && HUD[region] != 0 && Music[region] == 0x0f
}

function StartAndSubmitTABSSWeapon(region, i)
{
    return dword(0xffe00c) == Code[region] && Difficulty[region] == 0x08 && HUD[region] != 0 && Music[region] == 0x0f && WeaponSlot1[region] == HellWeaponNumb[i] && WeaponSlot2[region] == 0
}

function CancelTABSS(region)
{
    return dword(0xffe00c) == Code[region] && HUD[region] == 0 && Room[region] < 0x60 
}

for j in range (1, 3) {
    for i in range (1, 19) {
    leaderboard(
        title = format("{0} in {1} - {2} Difficulty", Boss[i], BossRoomName[i], DifficultyText[j]),
        description = format("Defeat {0} in {1} on {2} Difficulty as fast as possible", Boss[i], BossRoomName[i], DifficultyText[j]),
        start = StartBoss("US", i, j) || StartBoss("JP", i, j),
        cancel = CancelBoss("US") || CancelBoss("JP"),
        submit = SubmitBoss("US", i) || SubmitBoss("JP", i),
        value = max_of(MeasuredTally("US"), MeasuredTally("JP")), format="FRAMES", lower_is_better=true, id=0)
    }
}

for j in range (1, 3) {
    for i in range (1, 3) {
    leaderboard(
        title = format("{0} Ending - {1} Difficulty - Single Session", Ending[i], DifficultyText[j]),
        description = format("Achieve the {0} on {1} Difficulty as fast as possible in a single session", Ending[i], DifficultyText[j]),
        start = StartEnding("US", i, j) || StartEnding("JP", i, j),
        cancel = CancelEnding("US") || CancelEnding("JP"),
        submit = SubmitEnding("US", i) || SubmitEnding("JP", i),
        value = max_of(MeasuredValue("US"), MeasuredValue("JP")), format="FRAMES", lower_is_better=true, id=0)
    }
}

for j in range (1, 3) {
    for i in range (1, 3) {
    leaderboard(
        title = format("{0} Ending - {1} Difficulty", Ending[i], DifficultyText[j]),
        description = format("Achieve the {0} on {1} Difficulty as fast as possible", Ending[i], DifficultyText[j]),
        start = StartAndSubmitEnding("US", i, j) || StartAndSubmitEnding("JP", i, j),
        cancel = CancelEnding("US") || CancelEnding("JP"),
        submit = StartAndSubmitEnding("US", i, j) || StartAndSubmitEnding("JP", i, j),
        value = max_of(MeasuredValue("US"), MeasuredValue("JP")), format="FRAMES", lower_is_better=true, id=0)
    }
}
for i in range (1, 3) {
    leaderboard(
        title = format("Blood Stained Sanctuary - Story Mode - {0} Difficulty", DifficultyText[i]),
        description = format("Complete Blood Stained Sanctuary in Story Mode on {0} Difficulty as fast as possible", DifficultyText[i]),
        start = StartAndSubmitStoryBSS("US", i) || StartAndSubmitStoryBSS("JP", i),
        cancel = CancelStoryBSS("US") || CancelStoryBSS("JP"),
        submit = StartAndSubmitStoryBSS("US", i) || StartAndSubmitStoryBSS("JP", i),
        value = max_of(MeasuredValueHUD("US"), MeasuredValueHUD("JP")), format="FRAMES", lower_is_better=true, id=0)
}

leaderboard(
        title = "Blood Stained Sanctuary - Time Attack",
        description = "Complete Blood Stained Sanctuary in Time Attack as fast as possible",
        start = StartAndSubmitTABSS("US") || StartAndSubmitTABSS("JP"),
        cancel = CancelTABSS("US") || CancelTABSS("JP"),
        submit = StartAndSubmitTABSS("US") || StartAndSubmitTABSS("JP"),
        value = max_of(MeasuredValue("US"), MeasuredValue("JP")), format="FRAMES", lower_is_better=true, id=0)
        
for i in range (1, 9) {
    leaderboard(
        title = format("Blood Stained Sanctuary - Time Attack - {0}", HellWeapon[i]),
        description = format("Complete Blood Stained Sanctuary in Time Attack with {0} as fast as possible", HellWeapon[i]),
        start = StartAndSubmitTABSSWeapon("US", i) || StartAndSubmitTABSSWeapon("JP", i),
        cancel = CancelTABSS("US") || CancelTABSS("JP"),
        submit = StartAndSubmitTABSSWeapon("US", i) || StartAndSubmitTABSSWeapon("JP", i),
        value = max_of(MeasuredValue("US"), MeasuredValue("JP")), format="FRAMES", lower_is_better=true, id=0)
}
