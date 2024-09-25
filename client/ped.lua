local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPeds = {}
local PlayerJob = {}

local function deleteSpawnedPeds()
    for _, ped in ipairs(spawnedPeds) do
        if DoesEntityExist(ped) then
            DeleteEntity(ped)
        end
    end
    spawnedPeds = {}
end

local function spawnPed(pedData)
    local hash = GetHashKey(pedData.model)
    RequestModel(hash)
    while not HasModelLoaded(hash) do Wait(10) end
    local ped = CreatePed(4, hash, pedData.coords.x, pedData.coords.y, pedData.coords.z - 1.0, pedData.coords.w, false, true)
    SetEntityInvincible(ped, pedData.invincible)
    FreezeEntityPosition(ped, pedData.freeze)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedDefaultComponentVariation(ped)
    TaskStartScenarioInPlace(ped, pedData.scenario, 0, true)
    exports['qb-target']:AddTargetEntity(ped, {
        options = pedData.target.options,
        distance = pedData.target.distance
    })
    table.insert(spawnedPeds, ped)
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

CreateThread(function()
    deleteSpawnedPeds()
    local pedConfigs = {
        {
            name = 'coutdoorstarget1',
            model = 'cs_hunter',
            coords = Config.OutdoorShop.Location,
            freeze = true,
            invincible = true,
            scenario = 'WORLD_HUMAN_AA_COFFEE',
            target = {
                options = {{
                    type = 'client',
                    event = 'c_Fish:client:OutdoorStore',
                    icon = 'fas fa-anchor',
                    label = 'Open Shop Menu'
                }},
                distance = 2.5,
            },
        },
        {
            name = 'coutdoorstarget2',
            model = 'csb_cletus',
            coords = Config.BoatRentals.PedLocation,
            freeze = true,
            invincible = true,
            scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE',
            target = {
                options = {{
                    type = 'client',
                    event = 'c_Fish:client:RentedBoat1',
                    icon = 'fas fa-fish',
                    label = 'Rentals'
                }},
                distance = 2.5,
            },
        },
        {
            name = 'cfishingsellshop',
            model = 'csb_chef',
            coords = Config.SellFish.PedLocation,
            freeze = true,
            invincible = true,
            scenario = 'WORLD_HUMAN_AA_SMOKE',
            target = {
                options = {{
                    type = 'client',
                    event = 'c_Fish:client:openMenu',
                    icon = 'fas fa-fish',
                    label = 'Sell Fish',
                }},
                distance = 2.5,
            },
        }
    }
    for _, pedConfig in ipairs(pedConfigs) do
        spawnPed(pedConfig)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        deleteSpawnedPeds()
    end
end)
