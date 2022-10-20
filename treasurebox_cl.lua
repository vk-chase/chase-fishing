local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('chasefishinglootbig:client:open', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_ld_gold_chest`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})

    QBCore.Functions.Progressbar('name_here', 'OPENING TREASURE CHEST...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)
        TriggerServerEvent('chasefishinglootbig:server:removefishinglootbig')
        TriggerServerEvent('chasefishinglootbig:server:afterfishinglootbig')
    end)
end)