local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("fishinglootbig", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chasefishinglootbig:client:open', source)
    end
end)

RegisterServerEvent('chasefishinglootbig:server:removefishinglootbig', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('fishinglootbig', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishinglootbig'], "remove")
end)




RegisterNetEvent('chasefishinglootbig:server:afterfishinglootbig', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local prob = math.random(1, 190)

    if prob <= 5 then
        Player.Functions.AddItem('wheeltoken', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wheeltoken'], "add")
        Player.Functions.AddItem('cokeblueprint', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cokeblueprint'], "add")

    elseif prob > 5 and prob <= 10 then
        Player.Functions.AddItem('silverearring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['silverearring2'], "add")

    elseif prob > 10 and prob <= 20 then
        Player.Functions.AddItem('emerald_earring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['emerald_earring2'], "add")

    elseif prob > 20 and prob <= 30 then
        Player.Functions.AddItem('sapphire_earring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sapphire_earring2'], "add")

    elseif prob > 30 and prob <= 40 then
        Player.Functions.AddItem('ruby_earring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ruby_earring2'], "add")

    elseif prob > 40 and prob <= 50 then
        Player.Functions.AddItem('diamond_earring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['diamond_earring2'], "add")

    elseif prob > 50 and prob <= 60 then
        Player.Functions.AddItem('goldearring2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['goldearring2'], "add")

    elseif prob > 60 and prob <= 70 then
        Player.Functions.AddItem('emerald_necklace_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['emerald_necklace_silver2'], "add")

    elseif prob > 70 and prob <= 80 then
        Player.Functions.AddItem('sapphire_necklace_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sapphire_necklace_silver2'], "add")

    elseif prob > 80 and prob <= 90 then
        Player.Functions.AddItem('ruby_necklace_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ruby_necklace_silver2'], "add")

    elseif prob > 90 and prob <= 100 then
        Player.Functions.AddItem('diamond_necklace_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['diamond_necklace_silver2'], "add")

    elseif prob > 100 and prob <= 110 then
        Player.Functions.AddItem('silverchain2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['silverchain2'], "add")

    elseif prob > 110 and prob <= 120 then
        Player.Functions.AddItem('emerald_necklace2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['emerald_necklace2'], "add")

    elseif prob > 120 and prob <= 130 then
        Player.Functions.AddItem('sapphire_necklace2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sapphire_necklace2'], "add")

    elseif prob > 130 and prob <= 140 then
        Player.Functions.AddItem('ruby_necklace2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ruby_necklace2'], "add")

    elseif prob > 140 and prob <= 150 then
        Player.Functions.AddItem('diamond_necklace2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['diamond_necklace2'], "add")

    elseif prob > 150 and prob <= 160 then
        Player.Functions.AddItem('ruby_earring_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ruby_earring_silver2'], "add")

    elseif prob > 160 and prob <= 170 then
        Player.Functions.AddItem('sapphire_earring_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sapphire_earring_silver2'], "add")

    elseif prob > 170 and prob <= 180 then
        Player.Functions.AddItem('emerald_earring_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['emerald_earring_silver2'], "add")

    elseif prob > 180 and prob <= 190 then
        Player.Functions.AddItem('diamond_earring_silver2', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['diamond_earring_silver2'], "add")

    end
end)
