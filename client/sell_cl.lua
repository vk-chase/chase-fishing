local QBCore = exports['qb-core']:GetCoreObject()
local function openReturnShop()
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
RegisterNetEvent('c_Fish:client:openMenu', function()
    if not Config.SellFish.UseTimes then
        openReturnShop()
        return
    end
    local currentHour = GetClockHours()
    if currentHour >= Config.SellFish.TimeOpen and currentHour <= Config.SellFish.TimeClosed then
        openReturnShop()
    else
        QBCore.Functions.Notify(Lang:t('info.return_closed', {value = Config.SellFish.TimeOpen, value2 = Config.SellFish.TimeClosed}), 'error', 5000)
    end
end)
RegisterNetEvent('c_Fish:client:openReturn', function(data)
    QBCore.Functions.TriggerCallback('c_Fish:server:getInv', function(inventory)
        for _, item in ipairs(inventory) do
        end

        local returnMenu = {
            {
                header = Lang:t('info.title'),
                isMenuHeader = true,
            }
        }

        local fishFound = false
        for _, v in pairs(inventory) do
            for _, fishItem in ipairs(Config.FishItems) do
                if v.name == fishItem.item then
                    fishFound = true
                    local price = type(fishItem.price) == "function" and fishItem.price() or fishItem.price
                    returnMenu[#returnMenu + 1] = {
                        header = QBCore.Shared.Items[v.name].label,
                        txt = Lang:t('info.sell_items', {value = price}),
                        params = {
                            event = 'c_Fish:client:returnitems',
                            args = {
                                label = QBCore.Shared.Items[v.name].label,
                                price = price,
                                name = v.name,
                                amount = v.amount
                            }
                        }
                    }
                    break
                end
            end
        end

        if not fishFound then
            returnMenu[#returnMenu + 1] = {
                header = Lang:t('info.no_fish'),
                txt = Lang:t('info.no_fish_desc'),
                isMenuHeader = true
            }
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
                text = Lang:t('info.max', {value = item.amount})
            }
        }
    })
    if sellingItem and sellingItem.amount then
        local amount = tonumber(sellingItem.amount)
        if amount and amount > 0 then
            TriggerServerEvent('c_Fish:server:SellReturnies', item.name, amount, item.price)
        else
            QBCore.Functions.Notify(Lang:t('error.negative'), 'error', 5000)
        end
    end
end)
