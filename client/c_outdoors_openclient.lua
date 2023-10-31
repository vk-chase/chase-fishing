local QBCore = exports['qb-core']:GetCoreObject()

--rental spots
Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("coutdoorstarget2", Config.OutdoorBoatRent1, 1,1, {
            name = "coutdoorstarget2",
            heading = 0,
            debugPoly = false,
            minZ = Config.OutdoorBoatRent1-2.0,
            maxZ = Config.OutdoorBoatRent1+2.0,
    }, {
        options = {
            {
                type = 'client',
                event = 'c_Fish:client:RentedBoat1',
                icon = 'fas fa-fish',
                label = 'Rentals'
            },
        },
        distance = 2.0
    })
end)
--store target area
Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("coutdoorstarget1", Config.OutdoorShop1, 1,1, {
            name = "coutdoorstarget1",
            heading = 0,
            debugPoly = false,
            minZ = Config.OutdoorShop1-2.0,
            maxZ = Config.OutdoorShop1+2.0,
    }, {
        options = {
            {
                type = 'client',
                event = 'c_Fish:client:OutdoorStore',
                icon = 'fas fa-anchor',
                label = 'Open Shop Menu'
            },
        },
        distance = 2.0
    })
end)
--store
RegisterNetEvent('c_Fish:client:OutdoorStore')
AddEventHandler('c_Fish:client:OutdoorStore', function()
    exports['qb-menu']:openMenu({
        {
            header = 'SPORTSMAN LODGE',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "FISHING ITEMS",
            icon = 'fas fa-list-ul',
            params = {
                event = "c_Fish:client:shopmenuFish",
            }
        },
        {
            header = "RENT A QUAD",
            icon = 'fas fa-list-ul',
            params = {
                event = "c_Fish:client:Rentedoffroad1",
            }
        },
        {
            header = "Close",
            icon = 'fas fa-times',
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)
--fishing options
RegisterNetEvent('c_Fish:client:shopmenuFish')
AddEventHandler('c_Fish:client:shopmenuFish', function()
    exports['qb-menu']:openMenu({
        {
            header = 'FISHING ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "FLY FISHING",
            txt = 'view the items for fly fishing',
            icon = 'c_fishingpole_two',
            params = {
                event = "c_Fish:client:shopmenuFish1",
            }
        },
        {
            header = "OCEAN FISHING",
            txt = 'view the items for ocean fishing',
            icon = 'c_fishingpole_one',
            params = {
                event = "c_Fish:client:shopmenuFish2",
            }
        },
        {
            header = "BOAT ANCHOR",
            icon = 'c_anchor',
            txt = "Buy a Anchor: $"..Config.BoatAnchorCost.."",
            params = {
                event = "c_Fish:client:BuyAnchor",
            }
        },
        {
            header = "Main Menu",
            icon = 'fa-solid fa-backward',
            params = {
                event = "c_Fish:client:OutdoorStore",
            }
        },
        {
            header = "Close",
            icon = 'fas fa-times',
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)
--fishing options
RegisterNetEvent('c_Fish:client:shopmenuFish1')
AddEventHandler('c_Fish:client:shopmenuFish1', function()
    exports['qb-menu']:openMenu({
        {
            header = 'FLY FISHING ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "Fly Fishing Pole",
            icon = 'c_fishingpole_two',
            txt = "Price:<br> $"..Config.RodCost1.."",
            params = {
                event = "c_Fish:client:RodBuy",
            }
        },
        {
            header = "1x Fly Bait",
            icon = 'c_bait_one',
            txt = "Price:<br> $"..Config.OneBaitCost.."",
            params = {
                event = "c_Fish:client:OneBaitBuy",
            }
        },
        {
            header = "10x Fly Bait",
            icon = 'c_bait_one',
            txt = "Price:<br> $"..Config.TenBaitCost.."",
            params = {
                event = "c_Fish:client:TenBaitBuy",
            }
        },
        {
            header = "50x Fly Bait",
            icon = 'c_bait_one',
            txt = "Price:<br> $"..Config.FiftyBaitCost.."",
            params = {
                event = "c_Fish:client:FiftyBaitBuy",
            }
        },
        {
            header = "GO BACK",
            icon = 'fa-solid fa-backward',
            params = {
                event = "c_Fish:client:shopmenuFish",
            }
        },
        {
            header = "Close",
            icon = 'fas fa-times',
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)
--fishing options
RegisterNetEvent('c_Fish:client:shopmenuFish2')
AddEventHandler('c_Fish:client:shopmenuFish2', function()
    exports['qb-menu']:openMenu({
        {
            header = 'DEEPSEA SHOP ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "Angler Ocean Pole",
            icon = 'c_fishingpole_one',
            txt = "Price:<br> $"..Config.RodCost2.."",
            params = {
                event = "c_Fish:client:RodBuy2",
            }
        },
        {
            header = "Tackle Box",
            icon = 'c_tacklebox',
            txt = "Price:<br> $"..Config.TackleboxCost.."",
            params = {
                event = "c_Fish:client:TackleBoxBuy",
            }
        },
        {
            header = "GO BACK",
            icon = 'fa-solid fa-backward',
            params = {
                event = "c_Fish:client:shopmenuFish",
            }
        },
        {
            header = "< Close",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)


--blips
Citizen.CreateThread(function()
        local blip = AddBlipForCoord(Config.OutdoorShop1)
	    SetBlipSprite(blip, 141)
	    SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 1.0)
	    SetBlipAsShortRange(blip, true)
	    SetBlipColour(blip, 25)
	    BeginTextCommandSetBlipName("STRING")
	    AddTextComponentSubstringPlayerName("Outdoor Buyer")
        EndTextCommandSetBlipName(blip)
end)
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.OutdoorBoatRent1)
	SetBlipSprite(blip, 404)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 1.0)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 25) 
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Boat Rentals")
    EndTextCommandSetBlipName(blip)
end)
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.SellFish)
	SetBlipSprite(blip, 405)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 1.0)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 25) 
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Outdoor Seller")
    EndTextCommandSetBlipName(blip)
end)


