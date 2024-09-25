local QBCore = exports['qb-core']:GetCoreObject()

local PoleInWater, hasStartedFishing = false, false

local function NotifyPlayer(message, type)
    QBCore.Functions.Notify(message, type, 5000)
end

local function CreateProp(model, animation)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local x, y, z = table.unpack(pos + forward * 1.0)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(1) end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)
    LocalPlayer.state:set("inv_busy", true, true)
    TriggerEvent('animations:client:EmoteCommandStart', {animation})
    Wait(2500)
    TriggerEvent('animations:client:EmoteCommandStart', {animation})
    Wait(1000)
    DeleteEntity(obj)
    Wait(1000)
end

local function propBox()
    if Config.UseAnimations.Toolbox then
        CreateProp(`prop_tool_box_01`, "pickup")
    end
end

local function propBox2()
    if Config.UseAnimations.Bucket then
        CreateProp(`prop_bucket_02a`, "pickup")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end
end

local function catchAnimation()
    local ped = PlayerPedId()
    local animDict, animName = "mini@tennis", "forehand_ts_md_far"
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Wait(100) end
    TaskPlayAnim(ped, animDict, animName, 1.0, -1.0, 1.0, 0, 0, 0, 48, 0)
    Wait(2000)
    if math.random(1, 100) < 50 then
        TriggerServerEvent('hud:server:RelieveStress', Config.StressRemoved)
    end
    RemoveAnimDict(animDict)
end

local function StartFishing(baitItem, fishPoolEvent, baitRemoveEvent, circles, time, isWading)
    local hasItem = QBCore.Functions.HasItem(baitItem)    
    if not hasItem then
        NotifyPlayer(Lang:t('error.missing' .. baitItem:sub(8)), "error")
        return
    end

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    PoleInWater = true

    if isWading then
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then 
            NotifyPlayer('Water seems a bit too deep to fish with this..', "error")
            return 
        end
        if not IsEntityInWater(ped) then
            NotifyPlayer(Lang:t('error.notwading'), "error")
            return
        end
    else
        if IsEntityInWater(ped) then 
            NotifyPlayer('What are you doing get out of the water!.', "error")
            return 
        end
        if not GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            NotifyPlayer(Lang:t('error.checkyoself'), "error")
            return
        end
    end

    hasStartedFishing = true
    Wait(100)
    propBox2()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    Wait(1500)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('animations:client:EmoteCommandStart', {math.random(1,100) <= 50 and "fishing2" or "fishing3"})
    Wait(2000)
    LocalPlayer.state:set("inv_busy", false, true)
    if Config.psUI then
        exports['ps-ui']:Circle(function(success)
            if success then
                TriggerServerEvent(fishPoolEvent)
                catchAnimation()
                Wait(1000)
                TriggerServerEvent(baitRemoveEvent)
            else
                NotifyPlayer(Lang:t('error.lostfish'), "error")
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerServerEvent(baitRemoveEvent .. 'X')
            end
        end, circles, time)
    else 
        local miniGame = exports["chase-fishing"]:GetMiniGame()
        miniGame.start({
            -- Add your minigame configuration here
            -- For example:
            -- difficulty = 3,
            -- duration = 10,
            -- etc.
        }, 
        function()
            -- Success callback
            TriggerServerEvent(fishPoolEvent)
            catchAnimation()
            Wait(1000)
            TriggerServerEvent(baitRemoveEvent)
        end,
        function()
            -- Fail callback
            NotifyPlayer(Lang:t('error.lostfish'), "error")
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent(baitRemoveEvent .. 'X')
        end,
        function()
            -- Half success callback (optional)
            -- Add any logic for partial success here
        end)
    end
    PoleInWater = false
end

local function getNumberName(num)
    local numbers = {
        [1] = "one", [2] = "two", [3] = "three", [4] = "four", [5] = "five",
        [6] = "six", [7] = "seven", [8] = "eight", [9] = "nine", [10] = "ten",
        [11] = "eleven"
    }
    return numbers[num] or tostring(num)
end

for i = 1, 11 do
    RegisterNetEvent('c_Fish:client:casting' .. i, function(data)
        local baitItem = 'c_bait_' .. getNumberName(i)
        local fishPoolEvent = 'c_outdoorsserver:FishPool' .. i
        local baitRemoveEvent = 'c_outdoorsserver:baitremove' .. (i == 1 and '' or tostring(i))
        local circles = i == 1 and Config.FlyFishing.Minigame.Circles.min or Config.DeepSeaFishing.Lures[i-1].Circles.min
        local time = i == 1 and Config.FlyFishing.Minigame.Time.min or Config.DeepSeaFishing.Lures[i-1].Time.min
        StartFishing(baitItem, fishPoolEvent, baitRemoveEvent, circles, time, i == 1)
    end)
end

RegisterNetEvent('c_Fish:client:anchor', function()
    local currVeh = GetVehiclePedIsIn(PlayerPedId(), false)
    if currVeh == 0 then return end
    local vehModel = GetEntityModel(currVeh)
    if vehModel == 0 or not DoesEntityExist(currVeh) then return end
    if not (IsThisModelABoat(vehModel) or IsThisModelAJetski(vehModel) or 
            IsThisModelAnAmphibiousCar(vehModel) or IsThisModelAnAmphibiousQuadbike(vehModel)) then
        return
    end
    local isAnchored = IsBoatAnchoredAndFrozen(currVeh)
    local canAnchor = not isAnchored and CanAnchorBoatHere(currVeh) and GetEntitySpeed(currVeh) < 3
    if not (isAnchored or canAnchor) then return end
    local function notify(message, duration)
        NotifyPlayer(message, "success", duration or 5000)
    end
    if isAnchored then
        notify(Lang:t('success.gettinganchor'), 2000)
        Wait(2000)
        notify(Lang:t('success.stowanchor'))
        SetBoatAnchor(currVeh, false)
        SetBoatFrozenWhenAnchored(currVeh, false)
        SetForcedBoatLocationWhenAnchored(currVeh, false)
    else
        SetEntityAsMissionEntity(currVeh, false, true)
        notify(Lang:t('success.dropanchor'), 2000)
        Wait(2000)
        notify(Lang:t('success.lockedanchor'))
        SetBoatAnchor(currVeh, true)
        SetBoatFrozenWhenAnchored(currVeh, true)
        SetForcedBoatLocationWhenAnchored(currVeh, true)
    end
end)
local function performPurchase(serverEvent, menuEvent)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent(serverEvent)
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent(menuEvent)
end
local purchases = {
    {name = 'RodBuy', serverEvent = 'c_Fish:server:RodBuy', menuEvent = 'c_Fish:client:shopmenuFish1'},
    {name = 'OneBaitBuy', serverEvent = 'c_Fish:server:OneBaitBuy', menuEvent = 'c_Fish:client:shopmenuFish1'},
    {name = 'TenBaitBuy', serverEvent = 'c_Fish:server:TenBaitBuy', menuEvent = 'c_Fish:client:shopmenuFish1'},
    {name = 'FiftyBaitBuy', serverEvent = 'c_Fish:server:FiftyBaitBuy', menuEvent = 'c_Fish:client:shopmenuFish1'},
    {name = 'RodBuy2', serverEvent = 'c_Fish:server:RodBuy2', menuEvent = 'c_Fish:client:shopmenuFish2'},
    {name = 'TackleBoxBuy', serverEvent = 'c_Fish:server:TackleBoxBuy', menuEvent = 'c_Fish:client:shopmenuFish2'},
    {name = 'BuyAnchor', serverEvent = 'c_Fish:server:BuyAnchor', menuEvent = 'c_Fish:client:shopmenuFish'},
    {name = 'buyhive', serverEvent = 'c_Fish:server:BuyBeeHive', menuEvent = 'c_Fish:client:BeeMenu'},
    {name = 'buybee', serverEvent = 'c_Fish:server:BuyQueenBee', menuEvent = 'c_Fish:client:BeeMenu'},
}
for _, purchase in ipairs(purchases) do
    RegisterNetEvent('c_Fish:client:' .. purchase.name, function(data)
        performPurchase(purchase.serverEvent, purchase.menuEvent)
    end)
end
RegisterNetEvent('c_Fish:client:openTackle', function()
    local function performOpenTackle(animation)
        TriggerEvent('animations:client:EmoteCommandStart', {animation})
        QBCore.Functions.Progressbar('open_tackle', Lang:t('success.tackleboxopen'), math.random(2500, 5000), false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('c_Fish:server:openTackle')
            TriggerServerEvent('c_Fish:server:RemoveopenTackle')
        end)
    end
    if Config.UseAnimations.OpenToolbox then
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local forward = GetEntityForwardVector(playerPed)
        local x, y, z = table.unpack(coords + forward * 1.0)
        local model = `prop_tool_box_01`
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(1) end
        local obj = CreateObject(model, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(2500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        performOpenTackle("mechanic4")
        DeleteEntity(obj)
    else
        performOpenTackle("uncuff")
    end
end)
local rentals = {
    {clientEvent = 'rentboat1', serverEvent = 'payboat1'},
    {clientEvent = 'rentboat2', serverEvent = 'payboat2'},
    {clientEvent = 'rentboat3', serverEvent = 'payboat3'},
    {clientEvent = 'rentboat4', serverEvent = 'payboat4'},
    {clientEvent = 'rentoff1', serverEvent = 'payoffroad1'},
    {clientEvent = 'rentoff2', serverEvent = 'payoffroad2'},
}
for _, rental in ipairs(rentals) do
    RegisterNetEvent('c_Fish:client:' .. rental.clientEvent, function()
        TriggerServerEvent('c_Fish:server:' .. rental.serverEvent)
    end)
end
local function rentVehicle(vehicle, coords, isBoat)
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        if isBoat then
            IsRentingBoat = true
        else
            IsRentingQuad = true
        end
    end, coords, true)
    Wait(300)
    DoScreenFadeIn(2500)
end
local rentals = {
    -- Boat rentals
    {clientEvent = 'rentboat1c', vehicle = Config.BoatRentals.Boats[1].Model, coords = Config.BoatRentals.SpawnPoint, isBoat = true},
    {clientEvent = 'rentboat2c', vehicle = Config.BoatRentals.Boats[2].Model, coords = Config.BoatRentals.SpawnPoint, isBoat = true},
    {clientEvent = 'rentboat3c', vehicle = Config.BoatRentals.Boats[3].Model, coords = Config.BoatRentals.SpawnPoint, isBoat = true},
    {clientEvent = 'rentboat4c', vehicle = Config.BoatRentals.Boats[4].Model, coords = Config.BoatRentals.SpawnPoint, isBoat = true},
    
    -- ATV rentals
    {clientEvent = 'rentoff1c', vehicle = Config.ATVRentals.Vehicles[1].Model, coords = Config.ATVRentals.SpawnPoint, isBoat = false},
    {clientEvent = 'rentoff2c', vehicle = Config.ATVRentals.Vehicles[2].Model, coords = Config.ATVRentals.SpawnPoint, isBoat = false},
}

for _, rental in ipairs(rentals) do
    RegisterNetEvent('c_Fish:client:' .. rental.clientEvent, function(data)
        rentVehicle(rental.vehicle, rental.coords, rental.isBoat)
    end)
end
local function openRentalMenu(isRenting, menuItems)
    exports['qb-menu']:openMenu(menuItems)
end
local function createMenuItem(header, icon, txt, event)
    return {
        header = header,
        icon = icon,
        txt = txt,
        params = { event = event }
    }
end
RegisterNetEvent('c_Fish:client:Rentedoffroad1')
AddEventHandler('c_Fish:client:Rentedoffroad1', function()
    local menuItems = {
        {
            header = Lang:t('info.atvrentalheader'),
            isMenuHeader = true,
        }
    }
    if not IsRentingQuad then
        for _, vehicle in ipairs(Config.ATVRentals.Vehicles) do
            table.insert(menuItems, createMenuItem(vehicle.Name, 'fas fa-align-center', "$"..vehicle.Price, "c_Fish:client:rentoff"..(_+1)))
        end
    else
        table.insert(menuItems, createMenuItem(Lang:t('info.atvreturnheader'), 'fas fa-align-center', "", "c_Fish:client:RemoveVehiclequad"))
    end
    table.insert(menuItems, createMenuItem(Lang:t('info.atvreturntomenu'), 'fa-solid fa-backward', "", "c_Fish:client:OutdoorStore"))
    table.insert(menuItems, createMenuItem(Lang:t('bait.closemenu'), 'fas fa-times', "", "qb-menu:closeMenu"))
    openRentalMenu(IsRentingQuad, menuItems)
end)
RegisterNetEvent('c_Fish:client:RentedBoat1')
AddEventHandler('c_Fish:client:RentedBoat1', function()
    local menuItems = {
        {
            header = Lang:t('info.boatrentheader'),
            icon = 'fas fa-ship',
            isMenuHeader = true,
        }
    }
    if not IsRentingBoat then
        for _, boat in ipairs(Config.BoatRentals.Boats) do
            table.insert(menuItems, createMenuItem(boat.Name, 'fas fa-list', "$"..boat.Price, "c_Fish:client:rentboat"..(_)))
        end
    else
        table.insert(menuItems, createMenuItem(Lang:t('info.boatreturnheader'), 'fas fa-list', "", "c_Fish:client:RemoveVehicleboats"))
    end
    table.insert(menuItems, createMenuItem(Lang:t('bait.closemenu'), 'fas fa-times', "", "qb-menu:closeMenu"))
    openRentalMenu(IsRentingBoat, menuItems)
end)
local function removeVehicle(isRentingVar)
    NotifyPlayer(Lang:t('success.rentalheader'), Lang:t('success.rentalreturned'), "success", 5000)
    local car = GetVehiclePedIsIn(PlayerPedId(), true)
    DeleteVehicle(car)
    DeleteEntity(car)
    _G[isRentingVar] = false
end
RegisterNetEvent('c_Fish:client:RemoveVehiclequad')
AddEventHandler('c_Fish:client:RemoveVehiclequad', function()
    removeVehicle('IsRentingQuad')
end)
RegisterNetEvent('c_Fish:client:RemoveVehicleboats')
AddEventHandler('c_Fish:client:RemoveVehicleboats', function()
    removeVehicle('IsRentingBoat')
end)
RegisterNetEvent('c_Fish:client:buynomoney', function()
    NotifyPlayer(Lang:t('error.notenoughmoneybank'), "error")
end)

RegisterNetEvent('c_Fish:client:buynomoneycash', function()
    NotifyPlayer(Lang:t('error.notenoughmoneycash'), "error")
end)
