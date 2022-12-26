local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("fishingrod", function(source, item)
	local src = source
    	local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('chase-fishing:client:StartFishing', source)
        --TriggerClientEvent('chase-fishing:client:ExploitBlocker', source)
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
				Wait(1000)
			elseif luck >= 99 and luck <= 100 then
				Player.Functions.AddItem('fishinglootbig', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishinglootbig'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You found a Treasure Chest!", "success")
				Wait(1000)
			elseif luck >= 98 and luck <= 99 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 2)
				Player.Functions.AddItem('dolphin', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dolphin'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a dolphin!\nThese are endangered species and are illegal to possess", "primary")
				Wait(1000)
			elseif luck >= 97 and luck <= 98 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 3)
				Player.Functions.AddItem('sharkhammer', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sharkhammer'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a hammerhead shark!\nThese are endangered species and are illegal to possess", "primary")
				Wait(1000)
			elseif luck >= 96 and luck <= 97 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 4)
				Player.Functions.AddItem('sharktiger', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sharktiger'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a tiger shark!\nThese are endangered species and are illegal to possess", "primary")
				Wait(1000)
			elseif luck >= 95 and luck <= 96 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 5)
				Player.Functions.AddItem('stingray', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['stingray'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Stingray!\nThese are endangered species and are illegal to possess", "success")
				Wait(1000)
			elseif luck >= 94 and luck <= 95 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 1)
				Player.Functions.AddItem('killerwhale', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['killerwhale'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Whale!\nThese are endangered species and are illegal to possess", "success")
				Wait(1000)
			elseif luck >= 92 and luck <= 94 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('bristlenosepleco', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bristlenosepleco'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Bristle Nose Pleco", "success")
				Wait(1000)
			elseif luck >= 90 and luck <= 92 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('goldnuggetpleco', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldnuggetpleco'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Gold Pleco", "success")
				Wait(1000)
			elseif luck >= 87 and luck <= 89 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('whiptailcatfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['whiptailcatfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Whip Tail Catfish", "success")
				Wait(1000)
			elseif luck >= 85 and luck <= 87 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('panaque', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['panaque'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Panaque", "success")
				Wait(1000)
			elseif luck >= 83 and luck <= 85 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('flounder', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['flounder'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Flounder", "success")
				Wait(1000)
			elseif luck >= 81 and luck <= 83 then
				Player.Functions.AddItem('fishingboot', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingboot'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a fishing boot!", "primary")
				Wait(1000)
			elseif luck >= 80 and luck <= 81 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('bass', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bass'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Bass", "success")
				Wait(1000)
			elseif luck >= 78 and luck <= 80 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 77 and luck <= 78 then
				Player.Functions.AddItem('fishingloot', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingloot'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You found a small box!", "success")
				Wait(1000)
			elseif luck >= 75 and luck <= 77 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('codfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['codfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Cod", "success")
				Wait(1000)
			elseif luck >= 72 and luck <= 75 then
				Player.Functions.AddItem('fishingtin', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingtin'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a fishing tin!", "primary")
				Wait(1000)
			elseif luck >= 70 and luck <= 72 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('mackerel', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['mackerel'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Mackerel", "success")
				Wait(1000)
			elseif luck >= 68 and luck <= 70 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")

			elseif luck >= 66 and luck <= 68 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('pictuscatfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['pictuscatfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Pictus Catfish", "success")
				Wait(1000)
			elseif luck >= 64 and luck <= 66 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('marlin', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['marlin'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Marlin", "success")
				Wait(1000)
			elseif luck >= 62 and luck <= 64 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 60 and luck <= 62 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('swordfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['swordfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Swordfish", "success")
				Wait(1000)
			elseif luck >= 57 and luck <= 60 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('sailfish', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sailfish'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Sail Fish", "success")
				Wait(1000)
			elseif luck >= 53 and luck <= 57 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('snapper', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['snapper'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Snapper", "success")
				Wait(1000)
			elseif luck >= 50 and luck <= 53 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('grouper', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grouper'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Grouper", "success")
				Wait(1000)
			elseif luck >= 48 and luck <= 50 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('wahoo', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wahoo'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Wahoo", "success")
				Wait(1000)
			elseif luck >= 46 and luck <= 48 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 44 and luck <= 46 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('mahimahi', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['mahimahi'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Mahi Mahi", "success")
				Wait(1000)
			elseif luck >= 41 and luck <= 44 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('cobia', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cobia'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Cobia", "success")
				Wait(1000)
			elseif luck >= 38 and luck <= 41 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('tuna', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['tuna'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Tuna", "success")
				Wait(1000)
			elseif luck >= 35 and luck <= 38 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('bluegill', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bluegill'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Blue Gill", "success")
				Wait(1000)
			elseif luck >= 32 and luck <= 35 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('crappie', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['crappie'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Crappie", "success")
				Wait(1000)
			elseif luck >= 29 and luck <= 32 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('musky', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['musky'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Musky", "success")
				Wait(1000)
			elseif luck >= 26 and luck <= 29 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('northernpike', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['northernpike'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Northern Pike", "success")
				Wait(1000)
			elseif luck >= 25 and luck <= 26 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 23 and luck <= 25 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('walleye', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['walleye'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Walleye", "success")
				Wait(1000)
			elseif luck >= 21 and luck <= 23 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('salmon', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['salmon'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Salmon", "success")
				Wait(1000)
			elseif luck >= 19 and luck <= 21 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 17 and luck <= 19 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('pumpkinseed', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['pumpkinseed'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a PumpkinSeed Fish", "success")
				Wait(1000)
			elseif luck >= 14 and luck <= 17 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('rockbass', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rockbass'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Rock Bass", "success")
				Wait(1000)
			elseif luck >= 12 and luck <= 14 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('yellowpurch', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['yellowpurch'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Yellow Purch", "success")
				Wait(1000)
			elseif luck >= 10 and luck <= 12 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 8 and luck <= 10 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('bullhead', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bullhead'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Bullhead", "success")
				Wait(1000)
			elseif luck >= 6 and luck <= 8 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('sturgeon', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sturgeon'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Sturgeon", "success")
				Wait(1000)
			elseif luck >= 4 and luck <= 6 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")
			elseif luck >= 2 and luck <= 4 then
				TriggerClientEvent('chase-fishing:client:spawnFish', src, 6)
				Player.Functions.AddItem('halibut', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['halibut'], "add", 1)
				TriggerClientEvent('QBCore:Notify', src, "You caught a Halibut", "success")
				Wait(1000)
			elseif luck >= 1 and luck <= 2 then
				TriggerClientEvent('QBCore:Notify', src, "No bites this time, lets give it another go..", "error")

				
            end
            Citizen.Wait(500)
        end
    end
end)



RegisterNetEvent('chase-fishing:server:removebait', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 100)
    local itemFound = true
    local itemCount = 1
    if itemFound then
        for i = 1, itemCount, 1 do
      	    if luck >= 20 and luck <= 100 then
				Player.Functions.RemoveItem('fishingbait', 1)
				TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['fishingbait'], "remove", 1)
				TriggerClientEvent('QBCore:Notify', src, "You lost your bait", "error")
		    	elseif luck >= 1 and luck <= 20 then
				TriggerClientEvent('QBCore:Notify', src, "You managed to save some bait", "success")
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
	TriggerClientEvent('QBCore:Notify', src, 'You bought a fish icebox.', 'primary')
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
	TriggerClientEvent('QBCore:Notify', src, 'You bought a anchor.', 'primary')
    end
end)

RegisterNetEvent('chase-fishing:server:BuyBaits', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantity = 1
    local cash = 'bank'
    local price = 1
    local Item = 'fishingbait'

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

RegisterNetEvent('chase-fishing:server:RemovePlayerMoney', function()
	local src = source
	local cash = 'bank'
	local price = 250
	local Player = QBCore.Functions.GetPlayer(src)
		
	Player.Functions.RemoveMoney(cash, price)
end)
