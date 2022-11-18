local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('chasefishingloot:client:open', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_tool_box_07`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'OPENING METAL BOX...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(obj)
        TriggerServerEvent('chasefishingloot:server:removefishingloot')
        TriggerServerEvent('chasefishingloot:server:afterfishingloot')
    end)
end)


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


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open1', function()
---=====================================================================
    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete1')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open2', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete2')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open3', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete3')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open4', function()
---=====================================================================
    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete4')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open5', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete5')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open6', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete6')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open7', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete7')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open8', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete8')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open9', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete9')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open10', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete10')
    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open11', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete11')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open12', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete12')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open13', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete13')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open14', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete14')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open15', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete15')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open16', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete16')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open17', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete17')

    end)
end)

---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open18', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete18')

    end)
end)


---=====================================================================
RegisterNetEvent('chase-usablefishingloots:client:open19', function()
---=====================================================================

    TriggerEvent('animations:client:EmoteCommandStart', {"parkingmeter"})
    QBCore.Functions.Progressbar('name_here', 'SALVAGING WHAT I CAN...', 12000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('chase-usablefishingloots:server:giveitem')
        TriggerServerEvent('chase-usablefishingloots:server:delete19')

    end)
end)
