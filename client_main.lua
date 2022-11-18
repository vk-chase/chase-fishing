local QBCore = exports['qb-core']:GetCoreObject()

--================ EVENTS ===============--

RegisterNetEvent('chase-fishing:client:BuyRod', function(data)
    TriggerServerEvent('chase-fishing:server:BuyRod')
    TriggerEvent('chase-fishing:client:ShopMenu')
end)

RegisterNetEvent('chase-fishing:client:fishicebox', function(data)
    TriggerServerEvent('chase-fishing:server:fishicebox')
    TriggerEvent('chase-fishing:client:ShopMenu')
end)

RegisterNetEvent('chase-fishing:client:BuyBaits', function(data)
    TriggerServerEvent('chase-fishing:server:BuyBaits')
    TriggerEvent('chase-fishing:client:ShopMenu')
end)

RegisterNetEvent('chase-fishing:client:anchor', function(data)
    TriggerServerEvent('chase-fishing:server:BuyAanchor')
    TriggerEvent('chase-fishing:client:ShopMenu')
end)

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-1592.64, 5202.2, 4.31)
	SetBlipSprite(blip, 88)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 37) 
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Fish Shop")
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('chase-fishing:client:RentBoat', function(data)
    local vehicle = 'dinghy'
    local coords = vector4(-1600.0, 5211.65, 0.15, 115.64)
    TriggerServerEvent('chase-fishing:server:RemovePlayerMoney')
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "FISH"..tostring(math.random(1000, 9999)))
        exports['LegacyFuel']:SetFuel(veh, 100.0)
        --SetEntityHeading(veh, coords.h)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
    end, coords, true) 
end)

RegisterNetEvent('chase-fishing:client:OpenStore', function(data)
    QBCore.Functions.Progressbar('fishing_store', 'TALKING TO EMPLOYEE...', 1000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        TriggerEvent('chase-fishing:client:ShopMenu')
    end)
end)

RegisterNetEvent('chase-fishing:client:SellFishies', function(data)
    TriggerServerEvent('chase-fishing:server:SellFishies')
end)

RegisterNetEvent('chase-fishing:client:StartFishing', function(data)
    local ped = PlayerPedId()
    local time = math.random(1000, 5000)
    local pos = GetEntityCoords(ped)
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3.0) then
            local ped = PlayerPedId()
	    local asdfasdf = math.random(2,7)
            local animDict = "amb@world_human_stand_fishing@idle_a"
            local animName = "idle_c" 
            local pedPos = GetEntityCoords(ped)
            local fishingRodHash = `prop_fishing_rod_01`
            local bone = GetPedBoneIndex(ped, 18905)	
	    Wait(500)
            RequestAnimDict(animDict)
			while not HasAnimDictLoaded(animDict) do
				Wait(100)
			end
			TaskPlayAnim(ped, animDict, animName, 1.0, -1.0, 1.0, 11, 0, 0, 0, 0)   
            rodHandle = CreateObject(fishingRodHash, pedPos, true)
            AttachEntityToEntity(rodHandle, ped, bone, 0.1, 0.05, 0, 80.0, 120.0, 160.0, true, true, false, true, 1, true)
            Wait(time)
            local success = exports['qb-lock']:StartLockPickCircle(asdfasdf,30)
            if success then
                TriggerServerEvent('chase-fishing:server:GiveFish')
                ClearPedTasks(ped)
                DeleteObject(rodHandle)
            else
                QBCore.Functions.Notify('The fish got away, you suck!...', 'error', 7500)
                ClearPedTasks(ped)
                DeleteObject(rodHandle)
            end
        else
        QBCore.Functions.Notify("You need to put bait on it and throw it in water, simple right?...", "error")
        end
end)

RegisterNetEvent('chase-fishing:client:anchordown', function()
    local currVeh = GetVehiclePedIsIn(PlayerPedId(), false)
    if currVeh ~= 0 then
        local vehModel = GetEntityModel(currVeh)
        if vehModel ~= nil and vehModel ~= 0 then
            if DoesEntityExist(currVeh) then
                if IsThisModelABoat(vehModel) or IsThisModelAJetski(vehModel) or IsThisModelAnAmphibiousCar(vehModel) or IsThisModelAnAmphibiousQuadbike(vehModel) then
                    if IsBoatAnchoredAndFrozen(currVeh) then
						QBCore.Functions.Notify('Retrieving Anchor', 'success')
                        Wait(2000)
						QBCore.Functions.Notify('Anchor Disabled', 'primary')
                        SetBoatAnchor(currVeh, false)
                        SetBoatFrozenWhenAnchored(currVeh, false)
                        SetForcedBoatLocationWhenAnchored(currVeh, false)
                    elseif not IsBoatAnchoredAndFrozen(currVeh) and CanAnchorBoatHere(currVeh) and GetEntitySpeed(currVeh) < 3 then
                        SetEntityAsMissionEntity(currVeh,false,true)
						QBCore.Functions.Notify('Dropping Anchor', 'primary')
                        Wait(2000)
						QBCore.Functions.Notify('Anchor Enabled', 'success')
                        SetBoatAnchor(currVeh, true)
                        SetBoatFrozenWhenAnchored(currVeh, true)
                        SetForcedBoatLocationWhenAnchored(currVeh, true)
                    end
                end
            end
        end
    end
end)


RegisterNetEvent('chase-fishing:client:useFishingBox')
AddEventHandler('chase-fishing:client:useFishingBox', function(BoxId)
     local settings = { maxweight = 300000, slots = 250 }
     TriggerServerEvent("inventory:server:OpenInventory", "stash", "FishingBox_" ..QBCore.Functions.GetPlayerData().citizenid,settings)
     TriggerEvent("inventory:client:SetCurrentStash", "FishingBox_" ..QBCore.Functions.GetPlayerData().citizenid)
	QBCore.Functions.Notify("WARNING.. WARNING.. WARNING..", "error")
	Wait(1000)
	QBCore.Functions.Notify("USE FOR ANYTHING OTHER THAN FISHING ITEMS WILL HAVE BOX WIPED", "error")

end)



RequestTheModel = function(model)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end


nearPed = function(model, coords, heading, gender, animDict, animName, scenario)
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Wait(1)
	end

	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
		print("No gender provided! Check your configuration!")
	end	

	ped = CreatePed(genderNum, GetHashKey(v.model), coords, heading, false, true)
	SetEntityAlpha(ped, 0, false)

	FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(1)
		end
		TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
	if scenario then
		TaskStartScenarioInPlace(ped, scenario, 0, true) 
	end
	for i = 0, 255, 51 do
		Wait(50)
		SetEntityAlpha(ped, i, false)
	end

	return ped
end

RegisterNetEvent('chase-fishing:client:spawnFish', function(args)
	local time = 10000
	local args = tonumber(args)
	if args == 1 then 
		RequestTheModel("A_C_KillerWhale")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(5,7))
		local ped = CreatePed(29, `A_C_KillerWhale`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`A_C_KillerWhale`)
		Wait(30000)
		DeletePed(ped)	
	elseif args == 2 then 
		RequestTheModel("A_C_dolphin")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(3,5))
		local ped = CreatePed(29, `A_C_dolphin`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`A_C_dolphin`)
		Wait(30000)
		DeletePed(ped)
	elseif args == 3 then
		RequestTheModel("A_C_sharkhammer")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(4,6))
		local ped = CreatePed(29, `A_C_sharkhammer`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`A_C_sharkhammer`)
		Wait(30000)
		DeletePed(ped)
	elseif args == 4 then
		RequestTheModel("A_C_SharkTiger")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(4,6))
		local ped = CreatePed(29, `A_C_SharkTiger`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`A_C_SharkTiger`)
		Wait(30000)
		DeletePed(ped)
	elseif args == 5 then
		RequestTheModel("A_C_stingray")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(2,3))
		local ped = CreatePed(29, `A_C_stingray`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`A_C_stingray`)
		Wait(30000)
		DeletePed(ped)
	else
		RequestTheModel("a_c_fish")
		local pos = GetEntityCoords(PlayerPedId())
		exports["mz-skills"]:UpdateSkill("Fishing", math.random(1,2))
		local ped = CreatePed(29, `a_c_fish`, pos.x, pos.y, pos.z, 90.0, true, false)
		SetEntityHealth(ped, 0)
		DecorSetInt(ped, "propHack", 74)
		SetModelAsNoLongerNeeded(`a_c_fish`)
		Wait(8000)
		DeletePed(ped)
	end
end)
