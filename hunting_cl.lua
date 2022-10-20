local QBCore = exports['qb-core']:GetCoreObject()

local lastAnimals = {}
local animals = {
    {model = "a_c_deer", hash = -664053099, item = "skin_deer", id = 35},
    {model = "a_c_pig", hash = -1323586730, item = "skin_pig", id = 36},
    {model = "a_c_boar", hash = -832573324, item = "skin_boar", id = 37},
    {model = "a_c_mtlion", hash = 307287994, item = "skin_mtlion",id = 38},
    {model = "a_c_cow", hash = -50684386, item = "skin_cow", id = 39},
    {model = "a_c_coyote", hash = 1682622302, item = "skin_coyote", id = 40},
    {model = "a_c_rabbit_01", hash = -541762431, item = "skin_rabbit", id = 41},

	{model = "a_c_cormorant", hash = 1457690978, item = "meat_cormorant", id = 44},
	{model = "a_c_chickenhawk", hash = -1430839454, item = "meat_chickenhawk", id = 45},

	
}

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    PlayerGang = PlayerData.gang
    PlayerJob = PlayerData.job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerJob = job
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(gang)
    PlayerGang = gang
end)

-- Blip do mapa

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-774.56, 5602.74, 33.74)
	SetBlipSprite(blip, 141)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 37) -- Mudar cor aqui!
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Hunting Shop")
    EndTextCommandSetBlipName(blip)
end)

-----

-- Funções para thread de apanhar os animais

function getAnimalMatch(hash)
    for _, v in pairs(animals) do if (v.hash == hash) then return v end end
end

function removeEntity(entity)
    local delidx = 0

    for i = 1, #lastAnimals do
        if (lastAnimals[i].entity == entity) then delidx = i end
    end

    if (delidx > 0) then table.remove(lastAnimals, delidx) end
end

function lastAnimalExists(entity)
    for _, v in pairs(lastAnimals) do
        if (v.entity == entity) then return true end
    end
end

function handleDecorator(animal)
    if (DecorExistOn(animal, "lastshot")) then
        DecorSetInt(animal, "lastshot", GetPlayerServerId(PlayerId()))
    else
        DecorRegister("lastshot", 3)
        DecorSetInt(animal, "lastshot", GetPlayerServerId(PlayerId()))
    end
end

function isKillMine(animal)
    if (DecorExistOn(animal, "lastshot")) then
        local aid = DecorGetInt(animal, "lastshot")
        local id = GetPlayerServerId(PlayerId())

        return aid == id
    end
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(0)
    end
end

------

-- Thread de apanhar o animal

Citizen.CreateThread(function()
    while true do
        local ped = GetPlayerPed(-1)
        Wait(1)
        if (IsAimCamActive()) and not IsPedInAnyVehicle(ped, false) then
            local _, ent = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
            if (ent and not IsEntityDead(ent)) then
                if (IsEntityAPed(ent)) then
                    local model = GetEntityModel(ent)
                    local animal = getAnimalMatch(model)
                    if (model and animal) then
                        handleDecorator(ent)
                        if (not lastAnimalExists(ent)) then
                            if (#lastAnimals > 5) then
                                table.remove(lastAnimals, 1)
                            end
                            local newAnim = {}
                            newAnim.entity = ent
                            newAnim.data = animal
                            table.insert(lastAnimals, newAnim)
                        end
                    end
                end
            end
        end
        if (#lastAnimals > 0) then
            for _, v in pairs(lastAnimals) do
                local pos = GetEntityCoords(ped)
                local rpos = GetEntityCoords(v.entity)
                if (GetDistanceBetweenCoords(pos, rpos.x, rpos.y, rpos.z, true) <
                    40 and isKillMine(v.entity)) then
                    if (DoesEntityExist(v.entity)) then
                        if (IsEntityDead(v.entity)) then
                            if (GetDistanceBetweenCoords(pos, rpos.x, rpos.y, rpos.z, true) < 1.1) then
                                exports['qb-core']:DrawText('[E] - Skin Hide','left')
                                if IsControlJustPressed(0, 38) and
                                    GetSelectedPedWeapon(ped) ==
                                    GetHashKey("WEAPON_KNIFE") then
                                    local random = math.random(5, 10)
                                    loadAnimDict('amb@medic@standing@kneel@base')
                                    loadAnimDict('anim@gangops@facility@servers@bodysearch@')
                                    TaskPlayAnim(GetPlayerPed(-1), "amb@medic@standing@kneel@base", "base", 8.0, -8.0, -1, 1, 0, false, false, false)
                                    TaskPlayAnim(GetPlayerPed(-1), "anim@gangops@facility@servers@bodysearch@", "player_search", 8.0, -8.0, -1, 48, 0, false, false, false)
                                    QBCore.Functions.Progressbar('apanhar_animal', 'CUTTING ANIMAL...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {}, {}, {}, function() -- Play When Done
                                    ClearPedTasks(GetPlayerPed(-1))
                                    TriggerServerEvent('mt-hunting:server:AddItem', v.data.id, random)
                                    Citizen.Wait(1500)
				    exports['qb-core']:HideText()
				    Citizen.Wait(1500)
                                    removeEntity(v.entity)
                                    DeleteEntity(v.entity)
                                    exports['qb-core']:HideText()
                                    end)
                                end
                            end
                        end
                    else
                        removeEntity(v.entity)
                        DeleteEntity(v.entity)
                    end
                end
            end
        end
    end
end)

-----

-- Eventos da loja de caça

RegisterNetEvent('mt-hunting:client:LojaCaca')
AddEventHandler('mt-hunting:client:LojaCaca', function()
    QBCore.Functions.Progressbar('loja_caca', 'OPENING SHOP...', 1000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Play When Done
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "monkeyopening", 0.1)
        TriggerEvent('mt-hunting:client:MenuLoja')
    end)
end)

RegisterNetEvent('mt-hunting:client:ComprarSniper')
AddEventHandler('mt-hunting:client:ComprarSniper', function(data)
    TriggerServerEvent('mt-hunting:server:ComprarSniper')
end)

RegisterNetEvent('mt-hunting:client:ComprarBalas')
AddEventHandler('mt-hunting:client:ComprarBalas', function(data)
    TriggerServerEvent('mt-hunting:server:ComprarBalas')
end)

RegisterNetEvent('mt-hunting:client:ComprarFaca')
AddEventHandler('mt-hunting:client:ComprarFaca', function(data)
    TriggerServerEvent('mt-hunting:server:ComprarFaca')
end)

RegisterNetEvent('mt-hunting:client:Vender')
AddEventHandler('mt-hunting:client:Vender', function(data)
    TriggerServerEvent('mt-hunting:server:Vender')
end)

RegisterNetEvent('mt-hunting:client:MenuLoja')
AddEventHandler('mt-hunting:client:MenuLoja', function()
    exports['qb-menu']:openMenu({
        {
            header = "Hunting shop",
            isMenuHeader = true,
        },
        {
            header = "Buy sniper rifle",
            txt = "Price: 1000$",
            params = {
                event = "mt-hunting:client:ComprarSniper",
            }
        },
        {
            header = "Buy sniper ammo",
            txt = "Price: 10$",
            params = {
                event = "mt-hunting:client:ComprarBalas",
            }
        },
        {
            header = "Buy knife",
            txt = "Price: 500$",
            params = {
                event = "mt-hunting:client:ComprarFaca",
            }
        },
        {
            header = "Sell all meat",
            txt = "You'll sell every meat that you have on you",
            params = {
                event = "mt-hunting:client:Vender",
            }
        },
        {
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

------
