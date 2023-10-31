local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for key, value in pairs(Config.SellFishLocation) do
        exports['qb-target']:AddBoxZone('ReturnShopx2'..key, value.coords, value.length, value.width, {
            name = 'ReturnShopx2'..key,
            heading = value.heading,
            minZ = value.minZ,
            maxZ = value.maxZ,
            debugPoly = value.debugPoly,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'c_Fish:client:openMenu',
                    icon = 'fas fa-fish',
                    label = 'Fish Shop',
                },
            },
            distance = value.distance
        })
    end
end)

RegisterNetEvent('c_Fish:client:openMenu', function()
    if Config.UseTimes then
        if GetClockHours() >= Config.TimeOpen and GetClockHours() <= Config.TimeClosed then
            local returnShop = {
                {
                    header = Lang:t('info.title'),
                    isMenuHeader = true,
                },
                {
                    header = Lang:t('info.sell'),
                    txt = Lang:t('info.sell_return'),
                    params = {
                        event = 'c_Fish:client:openReturn',
                        args = {
                            items = Config.FishItems
                        }
                    }
                }
            }
            exports['qb-menu']:openMenu(returnShop)
        else
            TriggerEvent("rtx_notify:Notify", "Pawn", Lang:t('info.return_closed', { value = Config.TimeOpen, value2 = Config.TimeClosed }), 5000, "error")
        end
    else
        local returnShop = {
            {
                header = Lang:t('info.title'),
                isMenuHeader = true,
            },
            {
                header = Lang:t('info.sell'),
                txt = Lang:t('info.sell_return'),
                params = {
                    event = 'c_Fish:client:openReturn',
                    args = {
                        items = Config.FishItems
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(returnShop)
    end
end)

RegisterNetEvent('c_Fish:client:openReturn', function(data)
    QBCore.Functions.TriggerCallback('c_Fish:server:getInv', function(inventory)
        local PlyInv = inventory
        local returnMenu = {
            {
                header = Lang:t('info.title'),
                isMenuHeader = true,
            }
        }
        for _, v in pairs(PlyInv) do
            for i = 1, #data.items do
                if v.name == data.items[i].item then
                    returnMenu[#returnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', { value = data.items[i].price }),
                        params = {
                            event = 'c_Fish:client:returnitems',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = data.items[i].price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                end
            end
        end
        returnMenu[#returnMenu + 1] = {
            header = Lang:t('info.back'),
            params = {
                event = 'c_Fish:client:openMenu'
            }
        }
        exports['qb-menu']:openMenu(returnMenu)
    end)
end)

RegisterNetEvent('c_Fish:client:returnitems', function(item)
    local sellingItem = exports['qb-input']:ShowInput({
        header = Lang:t('info.title'),
        submitText = Lang:t('info.sell'),
        inputs = {
            {
                type = 'number',
                isRequired = false,
                name = 'amount',
                text = Lang:t('info.max', { value = item.amount })
            }
        }
    })
    if sellingItem then
        if not sellingItem.amount then
            return
        end

        if tonumber(sellingItem.amount) > 0 then
            TriggerServerEvent('c_Fish:server:SellReturnies', item.name, sellingItem.amount, item.price)
        else
            TriggerEvent("rtx_notify:Notify", "Pawn", Lang:t('error.negative'), 5000, "error")
        end
    end
end)
