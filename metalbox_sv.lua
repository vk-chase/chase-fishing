local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("fishingloot", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chasefishingloot:client:open', source)
    end
end)

RegisterServerEvent('chasefishingloot:server:removefishingloot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('fishingloot', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingloot'], "remove")
end)




RegisterNetEvent('chasefishingloot:server:afterfishingloot', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local prob = math.random(1, 150)

    if prob <= 5 then
        Player.Functions.AddItem('wheeltoken', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wheeltoken'], "add")
        Player.Functions.AddItem('cokeblueprint', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cokeblueprint'], "add")

    elseif prob > 5 and prob <= 10 then
        Player.Functions.AddItem('sackofweed', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sackofweed'], "add")

    elseif prob > 10 and prob <= 20 then
        Player.Functions.AddItem('ww2relic', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ww2relic'], "add")

    elseif prob > 20 and prob <= 30 then
        Player.Functions.AddItem('ancientcoin', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ancientcoin'], "add")

    elseif prob > 30 and prob <= 40 then
        Player.Functions.AddItem('goldcoin', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['goldcoin'], "add")

    elseif prob > 40 and prob <= 50 then
        Player.Functions.AddItem('goldennugget', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['goldennugget'], "add")

    elseif prob > 50 and prob <= 60 then
        Player.Functions.AddItem('antiquecoin', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['antiquecoin'], "add")

    elseif prob > 60 and prob <= 70 then
        Player.Functions.AddItem('burriedtreasure', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['burriedtreasure'], "add")

    elseif prob > 70 and prob <= 80 then
        Player.Functions.AddItem('brokengameboy', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokengameboy'], "add")

    elseif prob > 80 and prob <= 90 then
        Player.Functions.AddItem('housekeys', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['housekeys'], "add")

    elseif prob > 90 and prob <= 100 then
        Player.Functions.AddItem('brokenphone', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokenphone'], "add")

    elseif prob > 100 and prob <= 110 then
        Player.Functions.AddItem('brokenknife', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokenknife'], "add")

    elseif prob > 110 and prob <= 120 then
        Player.Functions.AddItem('aluminumcan', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminumcan'], "add")

    elseif prob > 120 and prob <= 130 then
        Player.Functions.AddItem('bulletcasings', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['bulletcasings'], "add")

    elseif prob > 130 and prob <= 140 then
        Player.Functions.AddItem('irontrash', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['irontrash'], "add")

    elseif prob > 140 and prob <= 150 then
        Player.Functions.AddItem('metaltrash', math.random(1, 1))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metaltrash'], "add")
    end
end)
