local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("chase_fishingboxzone", vector3(-1593.04, 5202.92, 4.31), 3, 1, {
        name="chase_fishingboxzone",
        heading= 305.22,
        debugPoly=false,
        minZ = 4,
        maxZ = 6,
        }, {
            options = {
                {
                    type = "client",
                    event = "chase-fishing:client:ShopMenu",
                    icon = "fas fa-fish",
                    label = "Open Fishing Shop",

                },
            },
            distance = 2.0
    })
end)


--hunting below
Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("chase_huntingboxzone", vector3(-773.33, 5598.69, 33.61), 2,2, {
        name="chase_huntingboxzone",
        heading= 171.46,
        debugPoly=false,
        minZ = 33,
        maxZ = 35,
        }, {
            options = {
                {
                    type = "client",
                    event = "mt-hunting:client:MenuLoja",
                    icon = "fas fa-knife",
                    label = "Open Hunting Shop",

                },
            },
            distance = 2.0
    })
end)
