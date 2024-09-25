local QBCore = exports['qb-core']:GetCoreObject()

local function CreateUseableItem(itemName, eventName)
    QBCore.Functions.CreateUseableItem(itemName, function(source, item)
        if QBCore.Functions.GetPlayer(source).Functions.GetItemBySlot(item.slot) then
            TriggerClientEvent(eventName, source)
        end
    end)
end

CreateUseableItem("c_fishingpole_one", 'c_Fish:client:casting1')
CreateUseableItem("c_fishingpole_two", 'c_Fish:client:OpenCastMenu2')
CreateUseableItem("c_anchor", 'c_Fish:client:anchor')
CreateUseableItem("c_tacklebox", 'c_Fish:client:openTackle')

local function SendDiscordWebhook(player, fishId)
    local playerName = player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname
    local fishName = QBCore.Shared.Items['c_fish' .. fishId].label
    local embedColor = 65280 -- Green color (you can change this)
    local embed = {
        {
            ["color"] = embedColor,
            ["title"] = "Fish Caught",
            ["description"] = playerName .. " caught a " .. fishName,
            ["footer"] = {
                ["text"] = "Fish ID: " .. fishId
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }

    PerformHttpRequest(Config.discordWebhookURL, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end

local function AddFish(Player, fishId)
    Player.Functions.AddItem('c_fish' .. fishId, 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items['c_fish' .. fishId], "add", 1)
    SendDiscordWebhook(Player, fishId)
end

local function NotifyPlayer(source, message, notifyType)
    TriggerClientEvent('QBCore:Notify', source, message, notifyType)
end

local function FishPool(source, startFishId)
    local Player = QBCore.Functions.GetPlayer(source)
    local luck = math.random(1, 13)
    local luck2 = math.random(1, 10)
    if Config.AK4Ybattlepass.Enabled then
        local eventName = Config.AK4Ybattlepass.Premium and 'ak4y-battlepass:addtaskcount:premium' or 'ak4y-battlepass:addtaskcount:standart'
        TriggerClientEvent(eventName, source, Config.AK4Ybattlepass.Number, Config.AK4Ybattlepass.Amount)
    end
    if luck == 1 and luck2 == 1 then
        AddFish(Player, startFishId)
    elseif luck == 1 then
        NotifyPlayer(source, Lang:t('info.lostabigone'), 'error')
    else
        AddFish(Player, startFishId + luck - 1)
    end
    NotifyPlayer(source, Lang:t('info.caughtfish'), 'success')
end

for i = 1, 11 do
    RegisterNetEvent('c_outdoorsserver:FishPool' .. i, function()
        FishPool(source, (i - 1) * 13 + 1)
    end)
end

local function getNumberName(num)
    local numbers = {
        [1] = "one", [2] = "two", [3] = "three", [4] = "four", [5] = "five",
        [6] = "six", [7] = "seven", [8] = "eight", [9] = "nine", [10] = "ten",
        [11] = "eleven"
    }
    return numbers[num] or tostring(num)
end

local function RemoveBait(source, baitType)
    local Player = QBCore.Functions.GetPlayer(source)
    local removeBait = math.random(1, 100)
    if removeBait <= Config.OutdoorShop.RemoveBait then
        Player.Functions.RemoveItem(baitType, 1)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items[baitType], "remove", 1)
    elseif removeBait <= 97 and removeBait >= 51 then
        NotifyPlayer(source, Lang:t('success.savedbait'), 'success')
    else
        Player.Functions.RemoveItem('c_fishingpole_two', 1)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
        NotifyPlayer(source, Lang:t('error.polebreak'), 'error')
    end
end

for i = 1, 11 do
    RegisterNetEvent('c_outdoorsserver:baitremove' .. (i == 1 and '' or tostring(i)), function()
        RemoveBait(source, 'c_bait_' .. getNumberName(i))
    end)
end

RegisterNetEvent('c_outdoorsserver:baitremove', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.OutdoorShop.LostBaitPoleOne then
        Player.Functions.RemoveItem('c_bait_one', 1)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_one'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
        NotifyPlayer(source, Lang:t('success.savedbait'), 'success')
    else
        Player.Functions.RemoveItem('c_fishingpole_one', 1)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_one'], "remove", 1)
        NotifyPlayer(source, Lang:t('error.polebreak'), 'error')
    end
end)

local function BuyItem(source, itemName, cost)
    local Player = QBCore.Functions.GetPlayer(source)
    local currentMoney = Player.Functions.GetMoney(Config.ChargeAccount)
    if currentMoney >= cost then
        if Player.Functions.RemoveMoney(Config.ChargeAccount, cost) then
            if Player.Functions.AddItem(itemName, 1) then
                TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items[itemName], "add")
                TriggerClientEvent('QBCore:Notify', source, string.format("You purchased %s for $%d", QBCore.Shared.Items[itemName].label, cost), "success")
            else
                Player.Functions.AddMoney(Config.ChargeAccount, cost) -- Refund the money
                TriggerClientEvent('QBCore:Notify', source, "Failed to add item to inventory", "error")
            end
        else
            print("Failed to remove money")
            TriggerClientEvent('QBCore:Notify', source, "Failed to process payment", "error")
        end
    else
        local missingAmount = cost - currentMoney
        TriggerClientEvent('QBCore:Notify', source, string.format("You need $%d more to buy this item", missingAmount), "error")
    end
end

QBCore.Functions.CreateCallback('c_Fish:server:getItemCount', function(source, cb, itemName)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        local item = Player.Functions.GetItemByName(itemName)
        if item then
            cb(item.amount)
        else
            cb(0)
        end
    else
        cb(0)
    end
end)

RegisterServerEvent('c_Fish:server:RodBuy', function()
    BuyItem(source, 'c_fishingpole_one', Config.FlyFishing.RodCost)
end)

RegisterServerEvent('c_Fish:server:RodBuy2', function()
    BuyItem(source, 'c_fishingpole_two', Config.DeepSeaFishing.RodCost)
end)

RegisterServerEvent('c_Fish:server:TackleBoxBuy', function()
    BuyItem(source, 'c_tacklebox', Config.DeepSeaFishing.Tacklebox.Cost)
end)

RegisterServerEvent('c_Fish:server:OneBaitBuy', function()
    BuyItem(source, 'c_bait_one', Config.FlyFishing.BaitCosts.One)
end)

RegisterServerEvent('c_Fish:server:TenBaitBuy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.FlyFishing.BaitCosts.Ten) then
        Player.Functions.AddItem('c_bait_one', 10)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items["c_bait_one"], "add")
    else
        TriggerClientEvent('c_Fish:client:buynomoney' .. (Config.ChargeAccount == 'cash' and 'cash' or ''), source)
    end
end)

RegisterServerEvent('c_Fish:server:FiftyBaitBuy', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.FlyFishing.BaitCosts.Fifty) then
        Player.Functions.AddItem('c_bait_one', 50)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items["c_bait_one"], "add")
    else
        TriggerClientEvent('c_Fish:client:buynomoney' .. (Config.ChargeAccount == 'cash' and 'cash' or ''), source)
    end
end)

RegisterServerEvent('c_Fish:server:BuyAnchor', function()
    BuyItem(source, 'c_anchor', Config.OutdoorShop.BoatAnchorCost)
end)

RegisterServerEvent('c_Fish:server:BuyQueenBee', function()
    BuyItem(source, 'queen_bee', Config.SnipeBeeKeeping.QueenBeeCost)
end)

RegisterServerEvent('c_Fish:server:BuyBeeHive', function()
    BuyItem(source, 'beehive', Config.SnipeBeeKeeping.BeeHiveCost)
end)

-- Tacklebox
RegisterNetEvent('c_Fish:server:RemoveopenTackle', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('c_tacklebox', 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['c_tacklebox'], "remove")
end)

RegisterNetEvent('c_Fish:server:openTackle', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local luck = math.random(1, 220)
    local luck2 = math.random(Config.DeepSeaFishing.Tacklebox.Min, Config.DeepSeaFishing.Tacklebox.Max)
    local baitType
    if luck <= 20 then
        baitType = 'c_bait_eleven'
    elseif luck <= 40 then
        baitType = 'c_bait_ten'
    elseif luck <= 60 then
        baitType = 'c_bait_nine'
    elseif luck <= 80 then
        baitType = 'c_bait_eight'
    elseif luck <= 100 then
        baitType = 'c_bait_seven'
    elseif luck <= 120 then
        baitType = 'c_bait_six'
    elseif luck <= 140 then
        baitType = 'c_bait_five'
    elseif luck <= 160 then
        baitType = 'c_bait_four'
    elseif luck <= 180 then
        baitType = 'c_bait_three'
    elseif luck <= 200 then
        baitType = 'c_bait_two'
    else
        baitType = 'c_bait_one'
    end
    Player.Functions.AddItem(baitType, luck2)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[baitType], "add", luck2)
    TriggerClientEvent('QBCore:Notify', src, string.format("You received %d %s", luck2, QBCore.Shared.Items[baitType].label), "success")
end)

local function RentBoat(source, cost, eventName)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveMoney(Config.ChargeAccount, cost) then
        TriggerClientEvent(eventName, source)
    else
        TriggerClientEvent('c_Fish:client:buynomoney' .. (Config.ChargeAccount == 'cash' and 'cash' or ''), source)
    end
end

for i = 1, 4 do
    RegisterServerEvent('c_Fish:server:payboat' .. i, function()
        RentBoat(source, Config.BoatRentals.Boats[i].Price, 'c_Fish:client:rentboat' .. i .. 'c')
    end)
end

for i = 1, 2 do
    RegisterServerEvent('c_Fish:server:payoffroad' .. i, function()
        RentBoat(source, Config.ATVRentals.Vehicles[i].Price, 'c_Fish:client:rentoff' .. i .. 'c')
    end)
end
