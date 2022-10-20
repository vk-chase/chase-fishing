local QBCore = exports['qb-core']:GetCoreObject()


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open1', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete1')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open2', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete2')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open3', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete3')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open4', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete4')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open5', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete5')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open6', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete6')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open7', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete7')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open8', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete8')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open9', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete9')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open10', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete10')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open11', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete11')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open12', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete12')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open13', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete13')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open14', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete14')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open15', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete15')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open16', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete16')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open17', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete17')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)

---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open18', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete18')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open19', function()
---=====================================================================

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_air_lights_02b`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)

---=====================================================================
        TriggerServerEvent('chase-usablefishingloots:server:delete19')
---=====================================================================

        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
    end)
end)

