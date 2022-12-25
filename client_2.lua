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
                    icon = "fas fa-dollar",
                    label = "OPEN MENU",

                },
            },
            distance = 2.0
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("chase_fishingboxzone2", vector3(-1183.96, -1774.14, 4.34), 3, 1, {
        name="chase_fishingboxzone2",
        heading= 305.37,
        debugPoly=false,
        minZ = 4,
        maxZ = 6,
        }, {
            options = {
                {
                    type = "client",
                    event = "chase-fishing:client:ShopMenu2",
                    icon = "fas fa-fish",
                    label = "Open Fishing Shop",

                },
            },
            distance = 2.0
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("chase_fishingboxzone3", vector3(-1178.78, -1781.37, 4.36), 3, 1, {
        name="chase_fishingboxzone3",
        heading= 305.37,
        debugPoly=false,
        minZ = 4,
        maxZ = 6,
        }, {
            options = {
                {
                    type = "client",
                    event = "chase-fishing:client:ShopMenu2",
                    icon = "fas fa-fish",
                    label = "Open Fishing Shop",

                },
            },
            distance = 2.0
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("chase_fishingboxzone4", vector3(3817.22, 4483.1, 6.37), 3, 1, {
        name="chase_fishingboxzone4",
        heading= 305.37,
        debugPoly=false,
        minZ = 5,
        maxZ = 7,
        }, {
            options = {
                {
                    type = "client",
                    event = "chase-fishing:client:ShopMenu2",
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
            header = "BOAT RENTALS",
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
            header = "Buy Bait",
            txt = "Price: <br> 1$",
            params = {
                event = "chase-fishing:client:BuyBaits",
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


--===================== BUYING MENUS =======================
RegisterNetEvent('chase-fishing:client:ShopMenu2', function(data)
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
            header = "Buy Bait",
            txt = "Price: <br> 1$",
            params = {
                event = "chase-fishing:client:BuyBaits",
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
