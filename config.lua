Config = Config or {}

Config.ChargeAccount = 'cash'
Config.FuelType = 'LegacyFuel'
Config.psUI = false -- you can use ps-ui or the local minigame provided.
Config.discordWebhookURL = "https://discord.com/api/webhooks/1288511826962939957/IbUKr2hZhupOb9vEyEwc7uMecnYCw67iam7UrTbLwlPXUVkpAK9AyDtd-zuRZJr1_Ke_"

-- BattlePass
Config.AK4Ybattlepass = { -- do you use battlepass?
    Enabled = true, -- if false everything below will be disabled
    Standard = true, 
    Premium = false,
    Number = 2, -- task number
    Amount = 1 -- amount of credit per fish
}

-- Main Fishing
Config.StressRemoved = 5 -- 0 to disable
Config.UseAnimations = {
    OpenToolbox = true,
    Toolbox = false, -- pre cast animation
    Bucket = false   -- pre cast animation
}

-- Snipe Beekeeping
Config.SnipeBeeKeeping = {
    Enabled = true, -- shows beehive menu's if you use this. false to disable
    QueenBeeCost = 5,
    BeeHiveCost = 50
}

-- Boat Rentals
Config.BoatRentals = {
    SpawnPoint = vector4(-1603.42, 5260.06, 0.12, 25.01), -- Spawn Point
    PedLocation = vector4(-1593.07, 5202.89, 4.31, 296.22), -- Ped Location
    Boats = {
        {Name = 'Dinghy', Model = 'dinghy', Price = 100}, -- Menu Name, Spawn Name, Price to Rent
        {Name = 'Dinghy 2', Model = 'dinghy2', Price = 200},
        {Name = 'Dinghy 3', Model = 'dinghy3', Price = 300},
        {Name = 'Dinghy 4', Model = 'dinghy4', Price = 400}
    }
}

-- ATV Rentals
Config.ATVRentals = {
    SpawnPoint = vector4(-769.03, 5595.67, 33.49, 178.31),
    Vehicles = {
        {Name = 'Blazer S', Model = 'blazer', Price = 100},
        {Name = 'Blazer X', Model = 'blazer4', Price = 200}
    }
}

-- Outdoor Shop
Config.OutdoorShop = {
    Location = vector4(-773.01, 5598.36, 33.6, 186.95),
    BoatAnchorCost = 800, -- Cost to buy boat anchor
    RemoveBait = 50, -- % chance to remove bait
    LostBaitPoleOne = 50 -- % chance to lose bait pole
}

-- Fly Fishing
Config.FlyFishing = {
    RodCost = 185,
    BaitCosts = {One = 2, Ten = 18, Fifty = 45},
    Minigame = {
        Circles = {min = 1, max = 3},
        Time = {min = 30, max = 50}
    }
}

-- Deep Sea Fishing
Config.DeepSeaFishing = {
    RodCost = 365, -- Cost of rod
    Tacklebox = {
        Cost = 40, -- Cost of tacklebox
        GiveAllTackle = true, -- Give all tackle when opening tacklebox --false will give 1 tackle per opening
        Min = 1,
        Max = 3
    },
    Lures = {}
}

for i = 1, 10 do
    Config.DeepSeaFishing.Lures[i] = {
        Circles = {min = 2, max = 6},
        Time = {min = 30, max = 50}
    }
end

-- Sell Fish
Config.SellFish = {
    Blip = vector3(35.34, 6663.25, 32.19),
    PedLocation = vector4(35.21, 6662.78, 32.19, 168.45),
    BankMoney = false, -- true = bank money, false = cash
    UseTimes = false, -- true = use times, false = dont..
    TimeOpen = 7,
    TimeClosed = 17
}

Config.FishItems = {
    { item = 'c_fish1',  price = math.random(50,300) },--SHOULD BE THE MOST EXPENSIVE FISH THE ONES I MARK ARE 1% DROP :D SCROLL DOWN
    { item = 'c_fish2',  price = math.random(50,100) },
    { item = 'c_fish3',  price = math.random(50,100) },
    { item = 'c_fish4',  price = math.random(50,100) },
    { item = 'c_fish5',  price = math.random(50,100) }, -- please set your own prices, i know ... there are alot :)
    { item = 'c_fish6',  price = 100 },                 -- change this to a set price as shown 
    { item = 'c_fish7',  price = math.random(50,100) }, -- or use a randomizer, this will randomize every server restart
    { item = 'c_fish8',  price = math.random(50,100) },
    { item = 'c_fish9',  price = math.random(50,100) },
    { item = 'c_fish10',  price = math.random(50,100) },
    { item = 'c_fish11',  price = math.random(50,100) },
    { item = 'c_fish12',  price = math.random(50,100) },
    { item = 'c_fish13',  price = math.random(50,100) },
 -- 1% DROP
    { item = 'c_fish14',  price = math.random(50,300) },
    { item = 'c_fish15',  price = math.random(50,100) },
    { item = 'c_fish16',  price = math.random(50,100) },
    { item = 'c_fish17',  price = math.random(50,100) },
    { item = 'c_fish18',  price = math.random(50,100) },
    { item = 'c_fish19',  price = math.random(50,100) },
    { item = 'c_fish20',  price = math.random(50,100) },
    { item = 'c_fish21',  price = math.random(50,100) },
    { item = 'c_fish22',  price = math.random(50,100) },
    { item = 'c_fish23',  price = math.random(50,100) },
    { item = 'c_fish24',  price = math.random(50,100) },
    { item = 'c_fish25',  price = math.random(50,100) },
    { item = 'c_fish26',  price = math.random(50,100) },
 -- 1% DROP
    { item = 'c_fish27',  price = math.random(50,300) },
    { item = 'c_fish28',  price = math.random(50,100) },
    { item = 'c_fish29',  price = math.random(50,100) },
    { item = 'c_fish30',  price = math.random(50,100) },
    { item = 'c_fish31',  price = math.random(50,100) },
    { item = 'c_fish32',  price = math.random(50,100) },
    { item = 'c_fish33',  price = math.random(50,100) },
    { item = 'c_fish34',  price = math.random(50,100) },
    { item = 'c_fish35',  price = math.random(50,100) },
    { item = 'c_fish36',  price = math.random(50,100) },
    { item = 'c_fish37',  price = math.random(50,100) },
    { item = 'c_fish38',  price = math.random(50,100) },
    { item = 'c_fish39',  price = math.random(50,100) },
 -- starts lure 3
 -- 1% DROP
    { item = 'c_fish40',  price = math.random(50,300) },
    { item = 'c_fish41',  price = math.random(50,100) },
    { item = 'c_fish42',  price = math.random(50,100) },
    { item = 'c_fish43',  price = math.random(50,100) },
    { item = 'c_fish44',  price = math.random(50,100) },
    { item = 'c_fish45',  price = math.random(50,100) },
    { item = 'c_fish46',  price = math.random(50,100) },
    { item = 'c_fish47',  price = math.random(50,100) },
    { item = 'c_fish48',  price = math.random(50,100) },
    { item = 'c_fish49',  price = math.random(50,100) },
    { item = 'c_fish50',  price = math.random(50,100) },
    { item = 'c_fish51',  price = math.random(50,100) },
    { item = 'c_fish52',  price = math.random(50,100) },
 --start lure 4
 -- 1% DROP
    { item = 'c_fish53',  price = math.random(50,300) },
    { item = 'c_fish54',  price = math.random(50,100) },
    { item = 'c_fish55',  price = math.random(50,100) },
    { item = 'c_fish56',  price = math.random(50,100) },
    { item = 'c_fish57',  price = math.random(50,100) },
    { item = 'c_fish58',  price = math.random(50,100) },
    { item = 'c_fish59',  price = math.random(50,100) },
    { item = 'c_fish60',  price = math.random(50,100) },
    { item = 'c_fish61',  price = math.random(50,100) },
    { item = 'c_fish62',  price = math.random(50,100) },
    { item = 'c_fish63',  price = math.random(50,100) },
    { item = 'c_fish64',  price = math.random(50,100) },
    { item = 'c_fish65',  price = math.random(50,100) },
 --start lure 5
 -- 1% DROP
    { item = 'c_fish66',  price = math.random(50,300) },
    { item = 'c_fish67',  price = math.random(50,100) },
    { item = 'c_fish68',  price = math.random(50,100) },
    { item = 'c_fish69',  price = math.random(50,100) },
    { item = 'c_fish70',  price = math.random(50,100) },
    { item = 'c_fish71',  price = math.random(50,100) },
    { item = 'c_fish72',  price = math.random(50,100) },
    { item = 'c_fish73',  price = math.random(50,100) },
    { item = 'c_fish74',  price = math.random(50,100) },
    { item = 'c_fish75',  price = math.random(50,100) },
    { item = 'c_fish76',  price = math.random(50,100) },
    { item = 'c_fish77',  price = math.random(50,100) },
    { item = 'c_fish78',  price = math.random(50,100) },
    { item = 'c_fish79',  price = math.random(50,100) },
 --start of lure 6
 -- 1% DROP
    { item = 'c_fish80',  price = math.random(50,300) },
    { item = 'c_fish81',  price = math.random(50,100) },
    { item = 'c_fish82',  price = math.random(50,100) },
    { item = 'c_fish83',  price = math.random(50,100) },
    { item = 'c_fish84',  price = math.random(50,100) },
    { item = 'c_fish85',  price = math.random(50,100) },
    { item = 'c_fish86',  price = math.random(50,100) },
    { item = 'c_fish87',  price = math.random(50,100) },
    { item = 'c_fish88',  price = math.random(50,100) },
    { item = 'c_fish89',  price = math.random(50,100) },
    { item = 'c_fish90',  price = math.random(50,100) },
    { item = 'c_fish91',  price = math.random(50,100) },
    { item = 'c_fish92',  price = math.random(50,100) },
 --start of lure 7
 -- 1% DROP
    { item = 'c_fish93',  price = math.random(50,300) },
    { item = 'c_fish94',  price = math.random(50,100) },
    { item = 'c_fish95',  price = math.random(50,100) },
    { item = 'c_fish96',  price = math.random(50,100) },
    { item = 'c_fish97',  price = math.random(50,100) },
    { item = 'c_fish98',  price = math.random(50,100) },
    { item = 'c_fish99',  price = math.random(50,100) },
    { item = 'c_fish100',  price = math.random(50,100) },
    { item = 'c_fish101',  price = math.random(50,100) },
    { item = 'c_fish102',  price = math.random(50,100) },
    { item = 'c_fish103',  price = math.random(50,100) },
    { item = 'c_fish104',  price = math.random(50,100) },
    { item = 'c_fish105',  price = math.random(50,100) },
 --start of lure 8
 -- 1% DROP
    { item = 'c_fish106',  price = math.random(50,300) },
    { item = 'c_fish107',  price = math.random(50,100) },
    { item = 'c_fish108',  price = math.random(50,100) },
    { item = 'c_fish109',  price = math.random(50,100) },
    { item = 'c_fish110',  price = math.random(50,100) },
    { item = 'c_fish111',  price = math.random(50,100) },
    { item = 'c_fish112',  price = math.random(50,100) },
    { item = 'c_fish113',  price = math.random(50,100) },
    { item = 'c_fish114',  price = math.random(50,100) },
    { item = 'c_fish115',  price = math.random(50,100) },
    { item = 'c_fish116',  price = math.random(50,100) },
    { item = 'c_fish117',  price = math.random(50,100) },
    { item = 'c_fish118',  price = math.random(50,100) },
 --start of lure 9
 -- 1% DROP
    { item = 'c_fish119',  price = math.random(50,300) },
    { item = 'c_fish120',  price = math.random(50,100) },
    { item = 'c_fish121',  price = math.random(50,100) },
    { item = 'c_fish122',  price = math.random(50,100) },
    { item = 'c_fish123',  price = math.random(50,100) },
    { item = 'c_fish124',  price = math.random(50,100) },
    { item = 'c_fish125',  price = math.random(50,100) },
    { item = 'c_fish126',  price = math.random(50,100) },
    { item = 'c_fish127',  price = math.random(50,100) },
    { item = 'c_fish128',  price = math.random(50,100) },
    { item = 'c_fish129',  price = math.random(50,100) },
    { item = 'c_fish130',  price = math.random(50,100) },
    { item = 'c_fish131',  price = math.random(50,100) },
 --start of 10th and final lure
 -- 1% DROP
    { item = 'c_fish132',  price = math.random(50,300) },
    { item = 'c_fish133',  price = math.random(50,100) },
    { item = 'c_fish134',  price = math.random(50,100) },
    { item = 'c_fish135',  price = math.random(50,100) },
    { item = 'c_fish136',  price = math.random(50,100) },
    { item = 'c_fish137',  price = math.random(50,100) },
    { item = 'c_fish138',  price = math.random(50,100) },
    { item = 'c_fish139',  price = math.random(50,100) },
    { item = 'c_fish140',  price = math.random(50,100) },
    { item = 'c_fish141',  price = math.random(50,100) },
    { item = 'c_fish142',  price = math.random(50,100) },
    { item = 'c_fish143',  price = math.random(50,100) },
    { item = 'c_fish144',  price = math.random(50,100) },
 
    { item = 'boarmeat',  price = math.random(50,125) },
    { item = 'boartusk',  price = math.random(50,125) },
    { item = 'deerskin',  price = math.random(50,125) },
    { item = 'deermeat',  price = math.random(50,125) },
    { item = 'coyotefur',  price = math.random(50,125) },
    { item = 'coyotemeat',  price = math.random(50,125) },
 
 }
