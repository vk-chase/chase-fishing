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

--===================== BUYING MENUS =======================
RegisterNetEvent('chase-fishing:client:ShopMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fishing Shop",
            isMenuHeader = true,
        },
        {
            header = "Fishing Rod",
            txt = "Price: <br> 185$",
            params = {
                event = "chase-fishing:client:BuyRod",
            }
        },
        {
            header = "Buy Anchor",
            txt = "Price: <br> 1800$",
            params = {
                event = "chase-fishing:client:anchor",
            }
        },
        {
            header = "Buy Ice Box",
            txt = "Price: <br> 3000$",
            params = {
                event = "chase-fishing:client:fishicebox",
            }
        },

        {
            header = "Rent a Boat",
            txt = "Price: <br> 250$",
            params = {
                event = "chase-fishing:client:RentBoat",
            }
        },
        {
            header = "Sell All Fish",
            txt = "You'll sell all fish that you have on you... <br> We pay top Dollar for Rare ones..",
            params = {
            event = "chase-fishing:client:SellFishies",
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
