local QBCore = exports['qb-core']:GetCoreObject()
local Lang = Lang or {}

local function OpenCastMenu2()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    if IsEntityInWater(ped) then 
        QBCore.Functions.Notify('What are you doing get out of the water!', "error", 5000) 
        return 
    end
    if not GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
        QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
        return
    end
    local menuItems = {
        {
            header = Lang:t('bait.header'),
            txt = Lang:t('bait.headertext'),
            icon = 'c_tacklebox',
            isMenuHeader = true,
        }
    }
    local baits = {
        {name = 'chub', icon = 'c_bait_two'},
        {name = 'frog', icon = 'c_bait_three'},
        {name = 'spook', icon = 'c_bait_four'},
        {name = 'twitch', icon = 'c_bait_five'},
        {name = 'eel', icon = 'c_bait_six'},
        {name = 'squid', icon = 'c_bait_seven'},
        {name = 'stinger', icon = 'c_bait_eight'},
        {name = 'swolfy', icon = 'c_bait_nine'},
        {name = 'skipper', icon = 'c_bait_ten'},
        {name = 'snakehead', icon = 'c_bait_eleven'},
    }

    for i, bait in ipairs(baits) do
        local hasBait = QBCore.Functions.HasItem(bait.icon)
        local countText = "You don't have this bait"
        
        if hasBait then
            countText = "Bait is Ready!"
        end
        
        table.insert(menuItems, {
            header = Lang:t('bait.' .. bait.name),
            icon = bait.icon,
            params = {
                event = "c_Fish:client:casting" .. (i + 1),
            },
            disabled = not hasBait,
            txt = countText,
        })
    end

    table.insert(menuItems, {
        header = Lang:t('bait.closemenu'),
        params = {
            event = "qb-menu:closeMenu",
        }
    })
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:OpenCastMenu2', OpenCastMenu2)

local function OpenOutdoorStore()
    local menuItems = {
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
        }
    }
    if Config.SnipeBeeKeeping.Enabled then
        table.insert(menuItems, {
            header = "BEEKEEPING",
            icon = 'fas fa-list-ul',
            params = {
                event = "c_Fish:client:BeeMenu",
            }
        })
    end
    table.insert(menuItems, {
        header = "Close",
        icon = 'fas fa-times',
        txt = "",
        params = {
            event = "qb-menu:closeMenu",
        }
    })
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:OutdoorStore', OpenOutdoorStore)
local function OpenBeeMenu()
    local menuItems = {
        {
            header = 'Beekeeping Items',
            icon = 'fas fa-list-ul',
            isMenuHeader = true,
        },
        {
            header = "BUY BEEHIVE",
            icon = 'fas fa-list-ul',
            txt = string.format("$%d per<br>You may only place 1 at a time<br>The ground must be dusty / sandy to place", Config.SnipeBeeKeeping.BeeHiveCost),
            params = {
                event = "c_Fish:client:buyhive",
            }
        },
        {
            header = "BUY A QUEEN BEE",
            icon = 'fas fa-list-ul',
            txt = string.format("$%d per<br>You may only place 1 bee inside a Behive at a time!", Config.SnipeBeeKeeping.QueenBeeCost),
            params = {
                event = "c_Fish:client:buybee",
            }
        },
        {
            header = "Main Menu",
            icon = 'fa-solid fa-backward',
            txt = 'RETURN BACK TO MENU',
            params = {
                event = "c_Fish:client:OutdoorStore",
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
    }
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:BeeMenu', OpenBeeMenu)
local function OpenFishingShopMenu()
    local menuItems = {
        {
            header = 'FISHING ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "FLY FISHING",
            txt = 'View the items for fly fishing',
            icon = 'c_fishingpole_two',
            params = {
                event = "c_Fish:client:shopmenuFish1",
            }
        },
        {
            header = "OCEAN FISHING",
            txt = 'View the items for ocean fishing<br>135 fish to be caught!',
            icon = 'c_fishingpole_one',
            params = {
                event = "c_Fish:client:shopmenuFish2",
            }
        },
        {
            header = "BOAT ANCHOR",
            icon = 'c_anchor',
            txt = string.format("Buy a Anchor: $%d", Config.OutdoorShop.BoatAnchorCost),
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
    }
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:shopmenuFish', OpenFishingShopMenu)
local function OpenFlyFishingMenu()
    local menuItems = {
        {
            header = 'FLY FISHING ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "Fly Fishing Pole",
            icon = 'c_fishingpole_two',
            txt = string.format("Price:<br> $%d", Config.FlyFishing.RodCost),
            params = {
                event = "c_Fish:client:RodBuy",
            }
        },
    }
    local baitOptions = {
        {amount = 1, cost = Config.FlyFishing.BaitCosts.One},
        {amount = 10, cost = Config.FlyFishing.BaitCosts.Ten},
        {amount = 50, cost = Config.FlyFishing.BaitCosts.Fifty},
    }
    for _, option in ipairs(baitOptions) do
        table.insert(menuItems, {
            header = string.format("%dx Fly Bait", option.amount),
            icon = 'c_bait_one',
            txt = string.format("Price:<br> $%d", option.cost),
            params = {
                event = string.format("c_Fish:client:%sBaitBuy", option.amount == 1 and "One" or option.amount),
            }
        })
    end
    table.insert(menuItems, {
        header = "GO BACK",
        icon = 'fa-solid fa-backward',
        params = {
            event = "c_Fish:client:shopmenuFish",
        }
    })
    table.insert(menuItems, {
        header = "Close",
        icon = 'fas fa-times',
        params = {
            event = "qb-menu:closeMenu",
        }
    })
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:shopmenuFish1', OpenFlyFishingMenu)
local function OpenDeepSeaShopMenu()
    local menuItems = {
        {
            header = 'DEEPSEA SHOP ITEMS',
            icon = 'fas fa-fish',
            isMenuHeader = true,
        },
        {
            header = "Angler Ocean Pole",
            icon = 'c_fishingpole_one',
            txt = string.format("Price:<br> $%d", Config.DeepSeaFishing.RodCost),
            params = {
                event = "c_Fish:client:RodBuy2",
            }
        },
        {
            header = "Tackle Box",
            icon = 'c_tacklebox',
            txt = string.format("Price:<br> $%d", Config.DeepSeaFishing.Tacklebox.Cost),
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
    }
    exports['qb-menu']:openMenu(menuItems)
end
RegisterNetEvent('c_Fish:client:shopmenuFish2', OpenDeepSeaShopMenu)
