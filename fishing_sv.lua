local QBCore = exports['qb-core']:GetCoreObject()

local ItemList = {
    ["flounder"] =  18,
    ["stingray"] =  25,
    ["codfish"] =  28,
    ["mackerel"] =  31,
    ["bass"] =  35,
    ["exoticfish"] =  611,
    ["sharktiger"] =  205,
    ["sharkhammer"] =  188,
    ["killerwhale"] =  225,
    ["dolphin"] =  225,
    ["fishingboot"] =  7,
    ["fishingtin"] =  12,
    ["pearlscard"] =  22,
    ["fishingtin"] =  12,
    ["fishingkey"] =  36,

}



QBCore.Functions.CreateUseableItem("fishingrod", function(source, item)
	local src = source
    	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-fishing:client:StartFishing', source)
    end
end)

QBCore.Functions.CreateUseableItem("anchor", function(source, item)
	local src = source
    	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
	TriggerClientEvent('chase-fishing:client:anchordown', source)
    end
end)

QBCore.Functions.CreateUseableItem("fishicebox", function(source, item)
	local src = source
    	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
	TriggerClientEvent('chase-fishing:client:useFishingBox', source, item.info.boxid)  
    end
end)




--================ EVENTS ===============--



RegisterNetEvent('chase-fishing:server:GiveFish', function() 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 100)
    local itemFound = true
    local itemCount = 1

    if itemFound then
        for i = 1, itemCount, 1 do
            if luck == 100 then
				Player.Functions.AddItem("exoticfish", 1)
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 2)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["exoticfish"], 'add')
			elseif luck >= 95 and luck <= 100 then
				Player.Functions.AddItem('fishinglootbig', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishinglootbig'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You found a Treasure Chest!", "success")
			elseif luck >= 90 and luck <= 95 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 2)
				Player.Functions.AddItem('dolphin', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dolphin'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a dolphin!\nThese are endangered species and are illegal to possess", "primary")
			elseif luck >= 85 and luck <= 90 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 3)
				Player.Functions.AddItem('sharkhammer', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sharkhammer'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a hammerhead shark!\nThese are endangered species and are illegal to possess", "primary")
			elseif luck >= 80 and luck <= 85 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 4)
				Player.Functions.AddItem('sharktiger', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sharktiger'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a tiger shark!\nThese are endangered species and are illegal to possess", "primary")
			elseif luck >= 75 and luck <= 80 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 5)
				Player.Functions.AddItem('stingray', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stingray'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Stingray!", "success")
			elseif luck >= 70 and luck <= 75 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('flounder', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['flounder'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Flounder", "success")
			elseif luck >= 65 and luck <= 70 then
				Player.Functions.AddItem('fishingboot', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingboot'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a fishing boot!", "primary")
			elseif luck >= 60 and luck <= 65 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('bass', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bass'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Bass", "success")
			elseif luck >= 55 and luck <= 60 then
				Player.Functions.AddItem('fishingloot', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingloot'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You found a small box!", "success")
			elseif luck >= 50 and luck <= 55 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('codfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['codfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Cod", "success")
			elseif luck >= 45 and luck <= 50 then
				Player.Functions.AddItem('fishingtin', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingtin'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a fishing tin!", "primary")
			elseif luck >= 25 and luck <= 45 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('mackerel', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['mackerel'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Mackerel", "success")
			elseif luck >= 0 and luck <= 25 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
            end
            Citizen.Wait(500)
        end
    end
end)



RegisterNetEvent('chase-fishing:server:BuyRod', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 185
    local Item = 'fishingrod'

    if Player.Functions.AddItem(Item, quantity) then
        Player.Functions.RemoveMoney(cash, price)
	TriggerClientEvent('QBCore:Notify', src, 'You bought a Fishing Rod.', 'primary')
    end
end)

RegisterNetEvent('chase-fishing:server:fishicebox', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 3000
    local Item = 'fishicebox'

    if Player.Functions.AddItem(Item, quantity) then
        Player.Functions.RemoveMoney(cash, price)
	TriggerClientEvent('QBCore:Notify', src, 'You buy a fish icebox.', 'primary')
    end
end)

RegisterNetEvent('chase-fishing:server:anchor', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 1800
    local Item = 'anchor'
    if Player.Functions.AddItem(Item, quantity) then
        Player.Functions.RemoveMoney(cash, price)
	TriggerClientEvent('QBCore:Notify', src, 'You buy a anchor.', 'primary')
    end
end)

RegisterNetEvent('chase-fishing:server:BuyBaits', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 5
    local Item = 'fishbait'

    if Player.Functions.AddItem(Item, quantity) then
        Player.Functions.RemoveMoney(cash, price)
	TriggerClientEvent('QBCore:Notify', src, 'You bought Fishing Bait.', 'primary')		
    end
end)

RegisterNetEvent('chase-fishing:server:BuyAanchor', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 1800
    local Item = 'anchor'

    if Player.Functions.AddItem(Item, quantity) then
        Player.Functions.RemoveMoney(cash, price)
	TriggerClientEvent('QBCore:Notify', src, 'You bought an Anchor!.', 'primary')		
    end
end)

RegisterNetEvent('chase-fishing:server:SellFishies', function()
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

        Player.Functions.AddMoney("cash", price, "sold-fish")
            TriggerClientEvent('QBCore:Notify', src, "You sold all your fished up stuff for $"..price)
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You dont/'t have anything to sell..")
    end
end)

RegisterNetEvent('chase-fishing:server:RemovePlayerMoney', function()
	local src = source
	local cash = 'bank'
	local price = 250
	local Player = QBCore.Functions.GetPlayer(src)
		
	Player.Functions.RemoveMoney(cash, price)
end)
