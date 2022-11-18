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

QBCore.Functions.CreateUseableItem("diamond_necklace2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open1', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('diamond_necklace2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamond_necklace2'], "remove")
end)

QBCore.Functions.CreateUseableItem("ruby_necklace2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open2', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('ruby_necklace2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['ruby_necklace2'], "remove")
end)

QBCore.Functions.CreateUseableItem("sapphire_necklace2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open3', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('sapphire_necklace2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sapphire_necklace2'], "remove")
end)

QBCore.Functions.CreateUseableItem("emerald_necklace2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open4', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('emerald_necklace2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['emerald_necklace2'], "remove")
end)

QBCore.Functions.CreateUseableItem("silverchain2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open5', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('silverchain2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['silverchain2'], "remove")
end)

QBCore.Functions.CreateUseableItem("diamond_necklace_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open6', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete6', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('diamond_necklace_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamond_necklace_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("ruby_necklace_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open7', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete7', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('ruby_necklace_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['ruby_necklace_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("sapphire_necklace_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open8', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete8', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('sapphire_necklace_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sapphire_necklace_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("emerald_necklace_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open9', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete9', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('emerald_necklace_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['emerald_necklace_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("goldearring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open10', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete10', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('goldearring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldearring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("diamond_earring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open11', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete11', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('diamond_earring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamond_earring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("ruby_earring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open12', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete12', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('ruby_earring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['ruby_earring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("sapphire_earring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open13', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete13', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('sapphire_earring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sapphire_earring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("emerald_earring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open14', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete14', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('emerald_earring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['emerald_earring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("silverearring2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open15', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete15', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('silverearring2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['silverearring2'], "remove")
end)

QBCore.Functions.CreateUseableItem("diamond_earring_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open16', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete16', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('diamond_earring_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamond_earring_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("ruby_earring_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open17', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete17', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('ruby_earring_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['ruby_earring_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("sapphire_earring_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open18', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete18', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('sapphire_earring_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sapphire_earring_silver2'], "remove")
end)

QBCore.Functions.CreateUseableItem("emerald_earring_silver2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-usablefishingloots:client:open19', source)
    end
end)
RegisterServerEvent('chase-usablefishingloots:server:delete19', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('emerald_earring_silver2', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['emerald_earring_silver2'], "remove")
end)


RegisterNetEvent('chase-usablefishingloots:server:giveitem', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local probabilidade = math.random(1, 200)
    local wantadollabud = math.random(1000,15000)
    if probabilidade <= 1 then
        Player.Functions.AddItem('steel', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('iron', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(50, 50))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
	Wait(1000)
        Player.Functions.AddItem('electronicscrap', math.random(15, 25))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('wheeltoken', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wheeltoken'], "add")
        Player.Functions.AddItem('1dollarrob', wantadollabud)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['1dollarrob'], "add")
    elseif probabilidade > 1 and probabilidade <= 5 then
        Player.Functions.AddItem('steel', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('iron', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 10 and probabilidade <= 15 then
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 20 and probabilidade <= 25 then
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 25 and probabilidade <= 30 then
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 30 and probabilidade <= 35 then
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 35 and probabilidade <= 40 then
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 40 and probabilidade <= 45 then
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 45 and probabilidade <= 50 then
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 55 and probabilidade <= 60 then
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
    elseif probabilidade > 60 and probabilidade <= 65 then
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 65 and probabilidade <= 70 then
        Player.Functions.AddItem('aluminum', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
	Wait(1000)
        Player.Functions.AddItem('copper', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
    elseif probabilidade > 70 and probabilidade <= 75 then
        Player.Functions.AddItem('metalscrap', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
    elseif probabilidade > 75 and probabilidade <= 80 then
        Player.Functions.AddItem('iron', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('rubber', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
    elseif probabilidade > 80 and probabilidade <= 85 then
        Player.Functions.AddItem('steel', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(5, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 85 and probabilidade <= 90 then
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
	Wait(1000)
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 90 and probabilidade <= 95 then
        Player.Functions.AddItem('copper', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
	Wait(1000)
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
    elseif probabilidade > 95 and probabilidade <= 100 then
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
	Wait(1000)
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
    elseif probabilidade > 100 and probabilidade <= 105 then
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
	Wait(1000)
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
    elseif probabilidade > 105 and probabilidade <= 110 then
        Player.Functions.AddItem('plastic', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 110 and probabilidade <= 115 then
        Player.Functions.AddItem('electronicscrap', math.random(5, 5))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "electronicscrap")
    elseif probabilidade > 115 and probabilidade <= 120 then
        Player.Functions.AddItem('plastic', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 120 and probabilidade <= 125 then
        Player.Functions.AddItem('rubber', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
    elseif probabilidade > 125 and probabilidade <= 130 then
        Player.Functions.AddItem('glass', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
    elseif probabilidade > 130 and probabilidade <= 135 then
        Player.Functions.AddItem('copper', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
    elseif probabilidade > 135 and probabilidade <= 140 then
        Player.Functions.AddItem('aluminum', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
    elseif probabilidade > 140 and probabilidade <= 145 then
        Player.Functions.AddItem('metalscrap', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
    elseif probabilidade > 145 and probabilidade <= 150 then
        Player.Functions.AddItem('iron', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
    elseif probabilidade > 150 and probabilidade <= 155 then
        Player.Functions.AddItem('steel', math.random(6, 15))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
    elseif probabilidade > 155 and probabilidade <= 160 then
        Player.Functions.AddItem('plastic', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['plastic'], "add")
    elseif probabilidade > 160 and probabilidade <= 170 then
        Player.Functions.AddItem('rubber', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
    elseif probabilidade > 170 and probabilidade <= 175 then
        Player.Functions.AddItem('glass', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['glass'], "add")
    elseif probabilidade > 175 and probabilidade <= 180 then
        Player.Functions.AddItem('copper', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
    elseif probabilidade > 180 and probabilidade <= 185 then
        Player.Functions.AddItem('aluminum', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminum'], "add")
    elseif probabilidade > 185 and probabilidade <= 190 then
        Player.Functions.AddItem('metalscrap', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metalscrap'], "add")
    elseif probabilidade > 190 and probabilidade <= 195 then
        Player.Functions.AddItem('iron', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['iron'], "add")
    elseif probabilidade > 195 and probabilidade <= 200 then
        Player.Functions.AddItem('steel', math.random(3, 10))
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['steel'], "add")
    end
end)

RegisterNetEvent('chasefishinglootbig:server:afterfishinglootbig', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local prob = math.random(1, 190)
    if prob <= 5 then
        Player.Functions.AddItem('wheeltoken', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wheeltoken'], "add")
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

RegisterNetEvent('chasefishingloot:server:afterfishingloot', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local prob = math.random(1, 150)
    if prob <= 5 then
        Player.Functions.AddItem('wheeltoken', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wheeltoken'], "add")
    elseif prob > 5 and prob <= 10 then
        Player.Functions.AddItem('sackofweed', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['sackofweed'], "add")
    elseif prob > 10 and prob <= 20 then
        Player.Functions.AddItem('ww2relic', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ww2relic'], "add")
    elseif prob > 20 and prob <= 30 then
        Player.Functions.AddItem('ancientcoin', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['ancientcoin'], "add")
    elseif prob > 30 and prob <= 40 then
        Player.Functions.AddItem('goldcoin', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['goldcoin'], "add")
    elseif prob > 40 and prob <= 50 then
        Player.Functions.AddItem('goldennugget', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['goldennugget'], "add")
    elseif prob > 50 and prob <= 60 then
        Player.Functions.AddItem('antiquecoin', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['antiquecoin'], "add")
    elseif prob > 60 and prob <= 70 then
        Player.Functions.AddItem('burriedtreasure', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['burriedtreasure'], "add")
    elseif prob > 70 and prob <= 80 then
        Player.Functions.AddItem('brokengameboy', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokengameboy'], "add")
    elseif prob > 80 and prob <= 90 then
        Player.Functions.AddItem('housekeys', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['housekeys'], "add")
    elseif prob > 90 and prob <= 100 then
        Player.Functions.AddItem('brokenphone', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokenphone'], "add")
    elseif prob > 100 and prob <= 110 then
        Player.Functions.AddItem('brokenknife', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['brokenknife'], "add")
    elseif prob > 110 and prob <= 120 then
        Player.Functions.AddItem('aluminumcan', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['aluminumcan'], "add")
    elseif prob > 120 and prob <= 130 then
        Player.Functions.AddItem('bulletcasings', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['bulletcasings'], "add")
    elseif prob > 130 and prob <= 140 then
        Player.Functions.AddItem('irontrash', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['irontrash'], "add")
    elseif prob > 140 and prob <= 150 then
        Player.Functions.AddItem('metaltrash', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['metaltrash'], "add")
    end
end)
