local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('c_Fish:server:SellReturnies', function(itemName, itemAmount, itemPrice)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = (tonumber(itemAmount) * itemPrice)
    if tonumber(itemAmount) == 1 and Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
            TriggerClientEvent('c_Fish:client:openMenu',src)
        else
            Player.Functions.AddMoney('cash', totalPrice)
            TriggerClientEvent('c_Fish:client:openMenu',src)
        end
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 'success', 3500)
        end
        if Config.NotifyType == 'okok' then
            TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okoksoldfishtitle'), Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 3500, 'success')
        end
        if Config.NotifyType == 'rtx' then
           TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okoksoldfishtitle'), Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 5000, "success")            
        end
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    elseif Player.Functions.RemoveItem(itemName, tonumber(itemAmount)) then
        if Config.BankMoney then
            Player.Functions.AddMoney('bank', totalPrice)
            Wait(200)
            TriggerClientEvent('c_Fish:client:openMenu',src)
        else
            Player.Functions.AddMoney('cash', totalPrice)
            Wait(200)
            TriggerClientEvent('c_Fish:client:openMenu',src)
        end
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 'success', 3500)
        end
        if Config.NotifyType == 'okok' then
            TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okoksoldfishtitle'), Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 3500, 'success')
        end
        if Config.NotifyType == 'rtx' then
           TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okoksoldfishtitle'), Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 5000, "success")            
        end
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], 'remove')
    else
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 'success', 3500)
        end
        if Config.NotifyType == 'okok' then
            TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okoknotsoldfishtitle'), Lang:t('success.sold', { value = tonumber(itemAmount), value2 = QBCore.Shared.Items[itemName].label, value3 = totalPrice }), 3500, 'success')
        end
        if Config.NotifyType == 'rtx' then
           TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okoknotsoldfishtitle'), Lang:t('error.no_items'), 5000, "error")            
        end
    end
    TriggerClientEvent('c_Fish:client:openMenu', src)
end)

QBCore.Functions.CreateCallback('c_Fish:server:getInv', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local inventory = Player.PlayerData.items
    return cb(inventory)
end)
