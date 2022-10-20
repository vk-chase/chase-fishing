local QBCore = exports['qb-core']:GetCoreObject()


local animals = {
    [1]  = { model = "a_c_deer", hash = -664053099, item = "skin_deer", name = "Deer Hide", id = 35, profit = 1},
    [2]  = { model = "a_c_pig", hash = -1323586730, item = "skin_pig", name = "Pig Skin", id = 36, profit = 1 }, 
    [3]  = { model = "a_c_boar", hash = -832573324, item = "skin_boar", name = "Boar Skin", id = 37, profit = 1 },
    [4]  = { model = "a_c_mtlion", hash = 307287994, item = "skin_mtlion", name = "Mt Lion Hide", id = 38, profit = 1 }, 
    [5]  = { model = "a_c_cow", hash = -50684386, item = "skin_cow", name = "Cow hide", id = 39, profit = 1 }, 
    [6]  = { model = "a_c_coyote", hash = 1682622302, item = "skin_coyote", name = "Coyote Hide", id = 40, profit = 1 }, 
    [7]  = { model = "a_c_rabbit_01", hash = -541762431, item = "skin_rabbit", name = "Rabbit Hide", id = 41, profit = 1 }, 
    [8] = { model = "a_c_cormorant", hash = 2141914453, item = "meat_chickenhawk", name = "Cormorant Meat", id = 44, profit = 1 }, 
    [9] = { model = "a_c_chickenhawk", hash = 942293100, item = "meat_chickenhawk", name = "Chickenhawk Meat", id = 45, profit = 1 }, 


}

RegisterServerEvent("mt-hunting:server:AddItem")
AddEventHandler("mt-hunting:server:AddItem", function (data, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local data = data
    local amount = 1

    for i = 1, #animals do
        if data == animals[i].id then
            Player.Functions.AddItem(animals[i].item, 1)
        end
    end
end)

RegisterServerEvent('mt-hunting:server:ComprarSniper')
AddEventHandler('mt-hunting:server:ComprarSniper', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local price = 1000

    if Player.Functions.RemoveMoney('bank', price) then
        Player.Functions.AddItem('weapon_sniperrifle', quantity)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weapon_sniperrifle"], "add")
    else
        QBCore.Functions.Notify('Not enough money on bank balance', 'error') -- [text] = message, [type] = primary | error | success, [length] = time till fadeout
    end
end)

RegisterServerEvent('mt-hunting:server:ComprarBalas')
AddEventHandler('mt-hunting:server:ComprarBalas', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local price = 10

    if Player.Functions.RemoveMoney('bank', price) then
        Player.Functions.AddItem('snp_ammo', quantity)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["snp_ammo"], "add")
    else
        QBCore.Functions.Notify('Not enough money on bank balance', 'error') -- [text] = message, [type] = primary | error | success, [length] = time till fadeout
    end
end)

RegisterServerEvent('mt-hunting:server:ComprarFaca')
AddEventHandler('mt-hunting:server:ComprarFaca', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local price = 500

    if Player.Functions.RemoveMoney('bank', price) then
        Player.Functions.AddItem('weapon_knife', quantity)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weapon_knife"], "add")
    else
        QBCore.Functions.Notify('Not enough money on bank balance', 'error') -- [text] = message, [type] = primary | error | success, [length] = time till fadeout
    end
end)

------

-- Evento para vender carnes/peles

local ItemList = {
            ['skin_rabbit'] = 5,
            ['skin_pig'] = 10,
            ['skin_cow'] = 10,
            ['skin_deer'] = 15,
            ['skin_boar'] = 30,
            ['skin_coyote'] = 50,
            ['skin_mtlion'] = 80,
            ['meat_chickenhawk'] = 10,
            ['meat_cormorant'] = 5,



}

RegisterNetEvent('mt-hunting:server:Vender', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    
    local xItem = Player.Functions.GetItemsByName(ItemList)
    if xItem ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)

        Player.Functions.AddMoney("cash", price, "sold-meat")
            TriggerClientEvent('QBCore:Notify', src, "You sell some meat for $"..price)
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You dont/'t have anything to sell..")
    end
end)

------