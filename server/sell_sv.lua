local QBCore = exports['qb-core']:GetCoreObject()
local function SendDiscordWebhook(player, itemName, itemAmount, totalPrice)
    local embed = {
        {
            ["title"] = "Fish Sold",
            ["color"] = 65280,   
            ["fields"] = {
                {["name"] = "Player Name", ["value"] = player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname, ["inline"] = true},
                {["name"] = "Citizen ID", ["value"] = player.PlayerData.citizenid, ["inline"] = true},
                {["name"] = "Item", ["value"] = QBCore.Shared.Items[itemName].label, ["inline"] = true},
                {["name"] = "Amount", ["value"] = itemAmount, ["inline"] = true},
                {["name"] = "Total Price", ["value"] = "$" .. totalPrice, ["inline"] = true}
            },
            ["footer"] = {
                ["text"] = "Fish Selling System"
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }

    PerformHttpRequest(Config.discordWebhookURL, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end

RegisterNetEvent('c_Fish:server:SellReturnies', function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)

    if tonumber(itemAmount) == 1 and Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
        else
            Player.Functions.AddMoney('cash', totalPrice)
        end
        TriggerClientEvent('c_Fish:client:openMenu', src)
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 'success', 3500)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
        SendDiscordWebhook(Player, itemName, itemAmount, totalPrice)
    elseif Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
        else
            Player.Functions.AddMoney('cash', totalPrice)
        end
        Wait(200)
        TriggerClientEvent('c_Fish:client:openMenu', src)
        TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 'success', 3500)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
        SendDiscordWebhook(Player, itemName, itemAmount, totalPrice)
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_items'), 'error', 3500)
    end
    TriggerClientEvent('c_Fish:client:openMenu', src)
end)

QBCore.Functions.CreateCallback('c_Fish:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items
    return cb(inventory)
end)
