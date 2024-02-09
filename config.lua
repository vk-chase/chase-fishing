Config = Config or {}

Config.ChargeAccount = 'cash' -- 'bank' or 'cash'
Config.FuelType = 'LegacyFuel'  -- 'ps-fuel' / 'cdn-fuel'  etc
Config.NotifyType = 'qb'  -- 'qb' 'rtx' or 'okok'

--####################--
-- Main Fishing Stuff --
--####################--
Config.StressRemoved = 5 -- stress removed when fish is caught

Config.UseOpenToolboxAnimation = true -- Do you wanna use Toolbox animation when getting lures out? ( true or false )
Config.UseToolboxAnimation = true -- use the tacklebox animation before casting?  ( true or false )
Config.UseBucketAnimation = true -- Do you wanna use a bucket animation before casting  ( true or false )

-- turning these all off will make this basic fishing with the ps-ui circle minigame.. this wont effect the baits / fish caught.


--##############--
-- BOAT RENTALS --
--##############--
Config.OutdoorBoatRentSpawn1 = vector4(-1603.42, 5260.06, 0.12, 25.01) -- where the boat spawns
Config.OutdoorBoatRent1 = vector4(-1593.07, 5202.89, 4.31, 296.22) --ped location to rent boat
Config.BoatName1 = 'Dinghy' -- Name of the vehicle in the Menus in game
Config.Boat1 = 'dinghy' -- you can put any boat spawn code here that you like, if they are large move the # Config.OutdoorBoatRentSpawn(s)
Config.Boat1Rental = 100  -- set your own rental  price
Config.BoatName2 = 'Dinghy 2'
Config.Boat2 = 'dinghy2'
Config.Boat2Rental = 200  
Config.BoatName3 = 'Dinghy 3' 
Config.Boat3 = 'dinghy3'
Config.Boat3Rental = 300  
Config.BoatName4 = 'Dinghy 4'
Config.Boat4 = 'dinghy4'
Config.Boat4Rental = 400 

--#############--
-- ATV RENTALS --
--#############--
Config.OffroadName1 = 'Verus ATV'
Config.Offroad1 = 'verus'
Config.OffroadVPrice1 = 100 
Config.OffroadName2 = 'Blazer ATV'
Config.OffroadVPrice2 = 200
Config.Offroad2 = 'blazer' 
Config.OffroadSpawn1 = vector4(-780.61, 5591.29, 33.61, 163.4)  -- atv spawn location

--##############--
-- OUTDOOR SHOP --
--##############--
Config.OutdoorShop1 = vector4(-773.24, 5598.38, 33.61, 165.47)  -- ped to talk to for the shop menu
Config.BoatAnchorCost = 800
Config.RemoveBait = 50 -- ANGLER POLE LOSE BAIT %
Config.LostBaitPoleOne = 50 -- FLY FISHING POLE LOSE BAIT %

--#############--
-- FLY FISHING --
--#############--
Config.RodCost1 = 185 --fly pole
Config.OneBaitCost = 2 -- 1x bait price
Config.TenBaitCost = 18 -- 10x bait price
Config.FiftyBaitCost = 45 --50x bait price

Config.PoleOneCircles = math.random(1,3) -- how many times you want them to hit the correct number
Config.PoleOneTime = math.random(20,45) -- Time per circle (THIS ONE IS SUPER EASY a ok speed it 3 circle / 15 time )

--################--
--DEEP SEA FISHING--
--################--
Config.RodCost2 = 365 --ocean rod
Config.TackleboxCost = 150 --openable, set limits for min/max next lines
Config.TackleMin = 2 --min lures to be gotten
Config.TackleMax = 5 --max 

Config.Lure1Circles = math.random(5,10)-- how many times you want them to hit the correct number
Config.Lure1Time = math.random(20,45)-- (Time per circle (i set this one up to be a casual lax fishing time) feel free to edit what you want here)
Config.Lure2Circles = math.random(5,10)
Config.Lure2Time = math.random(20,45)
Config.Lure3Circles = math.random(5,10)
Config.Lure3Time = math.random(20,45)
Config.Lure4Circles = math.random(5,10)
Config.Lure4Time = math.random(20,45)
Config.Lure5Circles = math.random(5,10)
Config.Lure5Time = math.random(20,45)
Config.Lure6Circles = math.random(5,10)
Config.Lure6Time = math.random(20,45)
Config.Lure7Circles = math.random(5,10)
Config.Lure7Time = math.random(20,45)
Config.Lure8Circles = math.random(5,10)
Config.Lure8Time = math.random(20,45)
Config.Lure9Circles = math.random(5,10)
Config.Lure9Time = math.random(20,45)
Config.Lure10Circles = math.random(5,10)
Config.Lure10Time = math.random(20,45)

--###################--
-- SELL YOUR FISHIES --
--###################--


Config.SellFish = vector3(35.34, 6663.25, 32.19) --### blip location ### to sell fish, can be same as next vecotr3
Config.SellFishLocation = vector4(35.21, 6662.78, 32.19, 168.45) -- ped location for selling fish

Config.BankMoney = false -- false= cash || true= bank
Config.UseTimes = false -- false= sell fish anytime || true sell between hours 

Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time

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
