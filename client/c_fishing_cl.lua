local QBCore = exports['qb-core']:GetCoreObject()
local IsRentingQuad = false
local IsRentingBoat = false

RegisterNetEvent('c_Fish:client:OpenCastMenu2')
AddEventHandler('c_Fish:client:OpenCastMenu2', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
    if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
        exports['qb-menu']:openMenu({
            {
                header = Lang:t('bait.header'),
                txt = Lang:t('bait.headertext'),
                icon = 'c_tacklebox',
                isMenuHeader = true,
            },
            {
                header = Lang:t('bait.chub'),
                icon = 'c_bait_two',
                params = {
                    event = "c_Fish:client:casting2",
                }
            },
            {
                header = Lang:t('bait.frog'),
                icon = 'c_bait_three',
                params = {
                    event = "c_Fish:client:casting3",
                }
            },
            {
                header = Lang:t('bait.spook'),
                icon = 'c_bait_four',
                params = {
                    event = "c_Fish:client:casting4",
                }
            },
            {
                header = Lang:t('bait.twitch'),
                icon = 'c_bait_five',
                params = {
                    event = "c_Fish:client:casting5",
                }
            },
            {
                header = Lang:t('bait.eel'),
                icon = 'c_bait_six',
                params = {
                    event = "c_Fish:client:casting6",
                }
            },
            {
                header = Lang:t('bait.squid'),
                icon = 'c_bait_seven',
                params = {
                    event = "c_Fish:client:casting7",
                }
            },
            {
                header = Lang:t('bait.stinger'),
                icon = 'c_bait_eight',
                params = {
                    event = "c_Fish:client:casting8",
                }
            },
            {
                header = Lang:t('bait.swolfy'),
                icon = 'c_bait_nine',
                params = {
                    event = "c_Fish:client:casting9",
                }
            },
            {
                header = Lang:t('bait.skipper'),
                icon = 'c_bait_ten',
                params = {
                    event = "c_Fish:client:casting10",
                }
            },
            {
                header = Lang:t('bait.snakehead'),
                icon = 'c_bait_eleven',
                params = {
                    event = "c_Fish:client:casting11",
                }
            },
            {
                header = Lang:t('bait.closemenu'),
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    else
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
        end
    end
end)    



--LURE ONE
RegisterNetEvent('c_Fish:client:casting2', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_two')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingchub'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingchub'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingchub'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool2')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove2')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX2')
                end
            end, Config.Lure1Circles, Config.Lure1Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE 2
RegisterNetEvent('c_Fish:client:casting3', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_three')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingfrog'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingfrog'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingfrog'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool3')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove3')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX3')
                end
            end, Config.Lure2Circles, Config.Lure2Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE3 
RegisterNetEvent('c_Fish:client:casting4', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_four')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingspook'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingspook'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingspook'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool4')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove4')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX4')
                end
            end, Config.Lure3Circles, Config.Lure3Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE4
RegisterNetEvent('c_Fish:client:casting5', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_five')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingtwitch'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingtwitch'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingtwitch'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool5')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove5')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX5')
                end
            end, Config.Lure4Circles, Config.Lure4Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE5
RegisterNetEvent('c_Fish:client:casting6', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_six')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingeel'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingeel'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingeel'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool6')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove6')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX6')
                end
            end, Config.Lure5Circles, Config.Lure5Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE6
RegisterNetEvent('c_Fish:client:casting7', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_seven')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingsquid'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingsquid'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingsquid'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool7')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove7')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX7')
                end
            end, Config.Lure6Circles, Config.Lure6Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE7
RegisterNetEvent('c_Fish:client:casting8', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_eight')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingstinger'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingstinger'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingstinger'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool8')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove8')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX8')
                end
            end, Config.Lure7Circles, Config.Lure7Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE8
RegisterNetEvent('c_Fish:client:casting9', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_nine')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingswolfy'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingswolfy'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingswolfy'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool9')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove9')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX9')
                end
            end, Config.Lure8Circles, Config.Lure8Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE9
RegisterNetEvent('c_Fish:client:casting10', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_ten')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingskipper'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingskipper'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingskipper'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool10')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove10')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX10')
                end
            end, Config.Lure9Circles, Config.Lure9Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
--LURE 10
RegisterNetEvent('c_Fish:client:casting11', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_eleven')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingsnakehead'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingsnakehead'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingsnakehead'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if IsEntityInWater(ped) then QBCore.Functions.Notify('What are you doing get out of the water!.', "error", 5000) return end
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox2()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool11')
                    catchAnimation()
                    Wait(1000)
                    TriggerServerEvent('c_outdoorsserver:baitremove11')
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremoveX11')
                end
            end, Config.Lure10Circles, Config.Lure10Time)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.checkyoself'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.checkyoself'), 5000, "error")
            end
    end
    PoleInWater = false
end)
propBox2 = function()
    if Config.UseBucketAnimation == true then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local forward   = GetEntityForwardVector(ped)
        local x, y, z   = table.unpack(pos + forward * 1.0)
        local model = `prop_bucket_02a`
        RequestModel(model)
        while (not HasModelLoaded(model)) do
            Wait(1)
        end
        local obj = CreateObject(model, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        LocalPlayer.state:set("inv_busy", true, true)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(2500)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(1000)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteEntity(obj)
        Wait(1000)
    end
    if Config.UseBucketAnimation == false then
    end
end
catchAnimation = function()
	local ped = PlayerPedId()
	local animDict = "mini@tennis"
	local animName = "forehand_ts_md_far"
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Wait(100)
	end
	TaskPlayAnim(ped, animDict, animName, 1.0, -1.0, 1.0, 0, 0, 0, 48, 0)
	Wait(2000)
	if math.random(1, 100) < 50 then
		TriggerServerEvent('hud:server:RelieveStress', Config.StressRemoved)
	end
	RemoveAnimDict(animDict)
end
RegisterNetEvent('c_Fish:client:casting1', function(data) 
    local HasItem1 = QBCore.Functions.HasItem('c_bait_one')
    local fishinganimationchance = math.random(1,100)
    local PoleInWater = false
    if not HasItem1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Lang:t('error.missingdryfly'), "error", 5000)
        end
        if Config.NotifyType == 'okok' then
            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingdryfly'), 3500, "error")
        end
        if Config.NotifyType == 'rtx' then
            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.missingdryfly'), 5000, "error")
        end
    return
    end
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        PoleInWater = true
        if GetWaterHeight(pos.x, pos.y, pos.z-2, pos.z - 3) then QBCore.Functions.Notify('Water seems a bit to deep to fish with this..', "error", 5000) return end
        if IsEntityInWater(ped) then 
            hasStartedFishing = true
            local ped = PlayerPedId()
            Wait(100)
            if fishinganimationchance <= 50 then
                propBox()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing2"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            else
                propBox()
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                Wait(1500)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                TriggerEvent('animations:client:EmoteCommandStart', {"fishing3"})
                Wait(2000)
                LocalPlayer.state:set("inv_busy", false, true)
            end
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('c_outdoorsserver:FishPool1')
                    catchAnimation()
                    Wait(1000)
                else
                    if Config.NotifyType == 'qb' then
                        QBCore.Functions.Notify(Lang:t('error.lostfish'), "error", 5000)
                    end
                    if Config.NotifyType == 'okok' then
                        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 3500, "error")
                    end
                    if Config.NotifyType == 'rtx' then
                        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.lostfish'), 5000, "error")
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent('c_outdoorsserver:baitremove')
                end
            end, Config.PoleOneCircles, Config.PoleOneTime)
        else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify(Lang:t('error.notwading'), "error", 5000)
            end
            if Config.NotifyType == 'okok' then
                exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notwading'), 3500, "error")
            end
            if Config.NotifyType == 'rtx' then
                TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notwading'), 5000, "error")
            end
        end
    --end
    PoleInWater = false
end)
RegisterNetEvent('c_Fish:client:anchor', function()
    local currVeh = GetVehiclePedIsIn(PlayerPedId(), false)
    if currVeh ~= 0 then
        local vehModel = GetEntityModel(currVeh)
        if vehModel ~= nil and vehModel ~= 0 then
            if DoesEntityExist(currVeh) then
                if IsThisModelABoat(vehModel) or IsThisModelAJetski(vehModel) or IsThisModelAnAmphibiousCar(vehModel) or IsThisModelAnAmphibiousQuadbike(vehModel) then
                    if IsBoatAnchoredAndFrozen(currVeh) then
                        if Config.NotifyType == 'qb' then
                            QBCore.Functions.Notify(Lang:t('success.gettinganchor'), "success", 2000)
                        end
                        if Config.NotifyType == 'okok' then
                            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('success.gettinganchor'), 2000, "success")
                        end
                        if Config.NotifyType == 'rtx' then
                            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('success.gettinganchor'), 5000, "success")
                        end
                        Wait(2000)
                        if Config.NotifyType == 'qb' then
                            QBCore.Functions.Notify(Lang:t('success.stowanchor'), "success", 5000)
                        end
                        if Config.NotifyType == 'okok' then
                            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('success.stowanchor'), 5000, "success")
                        end
                        if Config.NotifyType == 'rtx' then
                            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('success.stowanchor'), 5000, "success")
                        end
                        SetBoatAnchor(currVeh, false)
                        SetBoatFrozenWhenAnchored(currVeh, false)
                        SetForcedBoatLocationWhenAnchored(currVeh, false)
                    elseif not IsBoatAnchoredAndFrozen(currVeh) and CanAnchorBoatHere(currVeh) and GetEntitySpeed(currVeh) < 3 then
                        SetEntityAsMissionEntity(currVeh,false,true)
                        if Config.NotifyType == 'qb' then
                            QBCore.Functions.Notify(Lang:t('success.dropanchor'), "success", 2000)
                        end
                        if Config.NotifyType == 'okok' then
                            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('success.dropanchor'), 2000, "success")
                        end
                        if Config.NotifyType == 'rtx' then
                            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('success.dropanchor'), 5000, "success")
                        end
                        Wait(2000)
                        if Config.NotifyType == 'qb' then
                            QBCore.Functions.Notify(Lang:t('success.lockedanchor'), "success", 5000)
                        end
                        if Config.NotifyType == 'okok' then
                            exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('success.lockedanchor'), 5000, "success")
                        end
                        if Config.NotifyType == 'rtx' then
                            TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('success.lockedanchor'), 5000, "success")
                        end
                        SetBoatAnchor(currVeh, true)
                        SetBoatFrozenWhenAnchored(currVeh, true)
                        SetForcedBoatLocationWhenAnchored(currVeh, true)
                    end
                end
            end
        end
    end
end)
propBox = function()
    if Config.UseToolboxAnimation == true then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local forward   = GetEntityForwardVector(ped)
        local x, y, z   = table.unpack(pos + forward * 1.0)
        local model = `prop_tool_box_01`
        RequestModel(model)
        while (not HasModelLoaded(model)) do
            Wait(1)
        end
        local obj = CreateObject(model, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        LocalPlayer.state:set("inv_busy", true, true)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(2500)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(1000)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteEntity(obj)
        Wait(1000)
    end
    if Config.UseToolboxAnimation == false then
    end
end
catchAnimation = function()
	local ped = PlayerPedId()
	local animDict = "mini@tennis"
	local animName = "forehand_ts_md_far"
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Wait(100)
	end
	TaskPlayAnim(ped, animDict, animName, 1.0, -1.0, 1.0, 0, 0, 0, 48, 0)
	Wait(2000)
	if math.random(1, 100) < 50 then
		TriggerServerEvent('hud:server:RelieveStress', Config.StressRemoved)
	end
	RemoveAnimDict(animDict)
end
RegisterNetEvent('c_Fish:client:RodBuy', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:RodBuy')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish1')
end)
RegisterNetEvent('c_Fish:client:OneBaitBuy', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:OneBaitBuy')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish1')
end)
RegisterNetEvent('c_Fish:client:TenBaitBuy', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:TenBaitBuy')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish1')
end)
RegisterNetEvent('c_Fish:client:FiftyBaitBuy', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:FiftyBaitBuy')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish1')
end)
RegisterNetEvent('c_Fish:client:RodBuy2', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:RodBuy2')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish2')
end)
RegisterNetEvent('c_Fish:client:TackleBoxBuy', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:TackleBoxBuy')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish2')
end)
RegisterNetEvent('c_Fish:client:BuyAnchor', function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"point"})
    TriggerServerEvent('c_Fish:server:BuyAnchor')
    Wait(1000)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerEvent('c_Fish:client:shopmenuFish')
end)
RegisterNetEvent('c_Fish:client:openTackle', function()
    if Config.UseOpenToolboxAnimation == true then

        local playerPed = PlayerPedId()
        local coords    = GetEntityCoords(playerPed)
        local forward   = GetEntityForwardVector(playerPed)
        local x, y, z   = table.unpack(coords + forward * 1.0)
        local model = `prop_tool_box_01`
        RequestModel(model)
        while (not HasModelLoaded(model)) do
            Wait(1)
        end
        local obj = CreateObject(model, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        TriggerEvent('animations:client:EmoteCommandStart', {"pickup"})
        Wait(2500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        QBCore.Functions.Progressbar('name_here', Lang:t('success.tackleboxopen'), math.random(2500,5000), false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(obj)
            TriggerServerEvent('c_Fish:server:openTackle')
            TriggerServerEvent('c_Fish:server:RemoveopenTackle')
        end)
        
    end

    if Config.UseOpenToolboxAnimation == false then
        TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
        QBCore.Functions.Progressbar('name_here', Lang:t('success.tackleboxopen'), math.random(2500,5000), false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('c_Fish:server:openTackle')
            TriggerServerEvent('c_Fish:server:RemoveopenTackle')
        end)
    end
end)
RegisterNetEvent('c_Fish:client:rentboat1', function()
    TriggerServerEvent ('c_Fish:server:payboat1')
end)
RegisterNetEvent('c_Fish:client:rentboat2', function()
    TriggerServerEvent ('c_Fish:server:payboat2')
end)
RegisterNetEvent('c_Fish:client:rentboat3', function()
    TriggerServerEvent ('c_Fish:server:payboat3')
end)
RegisterNetEvent('c_Fish:client:rentboat4', function()
    TriggerServerEvent ('c_Fish:server:payboat4')
end)
RegisterNetEvent('c_Fish:client:rentoff1', function()
    TriggerServerEvent ('c_Fish:server:payoffroad1')
end)
RegisterNetEvent('c_Fish:client:rentoff2', function()
    TriggerServerEvent ('c_Fish:server:payoffroad2')
end)
RegisterNetEvent('c_Fish:client:rentboat1c', function(data)
    local vehicle = Config.Boat1
    local coords = Config.OutdoorBoatRentSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingBoat = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:rentboat2c', function(data)
    local vehicle = Config.Boat2
    local coords = Config.OutdoorBoatRentSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingBoat = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:rentboat3c', function(data)
    local vehicle = Config.Boat3
    local coords = Config.OutdoorBoatRentSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingBoat = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:rentboat4c', function(data)
    local vehicle = Config.Boat4
    local coords = Config.OutdoorBoatRentSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingBoat = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:rentoff1c', function(data)
    local vehicle = Config.Offroad1
    local coords = Config.OffroadSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingQuad = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:rentoff2c', function(data)
    local vehicle = Config.Offroad2
    local coords = Config.OffroadSpawn1
    DoScreenFadeOut(1000)
    Wait(1500)
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "RENT"..tostring(math.random(1000, 9999)))
        exports[Config.FuelType]:SetFuel(veh, 100.0)
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
        SetVehicleEngineOn(veh, true, true)
        IsRentingQuad = true
    end, coords, true) 
    Citizen.Wait(300)
    DoScreenFadeIn(2500)
end)
RegisterNetEvent('c_Fish:client:Rentedoffroad1')
AddEventHandler('c_Fish:client:Rentedoffroad1', function()
    if IsRentingQuad == false then
        exports['qb-menu']:openMenu({
            {
                header = Lang:t('info.atvrentalheader'),
                isMenuHeader = true,
            },

            {
                header = ""..Config.OffroadName1.."",
                icon = 'fas fa-align-center',
                txt = "$"..Config.OffroadVPrice1.."",
                params = {
                    event = "c_Fish:client:rentoff1",
                }
            },
            {
                header = ""..Config.OffroadName2.."",
                icon = 'fas fa-align-center',
                txt = "$"..Config.OffroadVPrice2.."",
                params = {
                    event = "c_Fish:client:rentoff2",
                }
            },
            {
                header = Lang:t('info.atvreturntomenu'),
                icon = 'fa-solid fa-backward',
                txt = "",
                params = {
                    event = "c_Fish:client:OutdoorStore",
                }
            },
            {
                header = Lang:t('bait.closemenu'),
                icon = 'fas fa-times',
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    end
    if IsRentingQuad == true then
        exports['qb-menu']:openMenu({
            {
                header = Lang:t('info.atvrentalheader'),
                isMenuHeader = true,
            },
            {
                header = Lang:t('info.atvreturnheader'),
                icon = 'fas fa-align-center',
                txt = "",
                params = {
                    event = "c_Fish:client:RemoveVehiclequad",
                }
            },
            {
                header = Lang:t('info.atvreturntomenu'),
                icon = 'fa-solid fa-backward',
                txt = "",
                params = {
                    event = "c_Fish:client:OutdoorStore",
                }
            },
            {
                header = Lang:t('bait.closemenu'),
                icon = 'fas fa-times',
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    end
end)
RegisterNetEvent('c_Fish:client:RentedBoat1')
AddEventHandler('c_Fish:client:RentedBoat1', function()
    if IsRentingBoat == false then
        exports['qb-menu']:openMenu({
            {
                header = Lang:t('info.boatrentheader'),
                icon = 'fas fa-ship',
                isMenuHeader = true,
            },
            {
                header = ""..Config.BoatName1.."",
                icon = 'fas fa-list',
                txt = "$"..Config.Boat1Rental.."",
                params = {
                    event = "c_Fish:client:rentboat1",
                }
            },
            {
                header = ""..Config.BoatName2.."",
                icon = 'fas fa-list',
                txt = "$"..Config.Boat2Rental.."",
                params = {
                    event = "c_Fish:client:rentboat2",
                }
            },
            {
                header = ""..Config.BoatName3.."",
                icon = 'fas fa-list',
                txt = "$"..Config.Boat3Rental.."",
                params = {
                    event = "c_Fish:client:rentboat3",
                }
            },
            {
                header = ""..Config.BoatName4.."",
                icon = 'fas fa-list',
                txt = "$"..Config.Boat4Rental.."",
                params = {
                    event = "c_Fish:client:rentboat4",
                }
            },
            {
                header = Lang:t('bait.closemenu'),
                icon = 'fas fa-times',
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    end
    if IsRentingBoat == true then
        exports['qb-menu']:openMenu({
            {
                header = Lang:t('info.boatrentheader'),
                isMenuHeader = true,
                icon = 'fas fa-ship',
            },
            {
                header = Lang:t('info.boatreturnheader'),
                icon = 'fas fa-list',
                txt = "",
                params = {
                    event = "c_Fish:client:RemoveVehicleboats",
                }
            },
            {
                header = Lang:t('bait.closemenu'),
                icon = 'fas fa-times',
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    end
end)
RegisterNetEvent('c_Fish:client:RemoveVehiclequad')
AddEventHandler('c_Fish:client:RemoveVehiclequad', function()
    if Config.NotifyType == 'qb' then
        QBCore.Functions.Notify(Lang:t('success.rentalreturned'), "success", 5000)
    end
    if Config.NotifyType == 'okok' then
        exports['okokNotify']:Alert(Lang:t('success.rentalheader'), Lang:t('success.rentalreturned'), 3500, "success")
    end
    if Config.NotifyType == 'rtx' then
        TriggerEvent("rtx_notify:Notify", Lang:t('success.rentalheader'), Lang:t('success.rentalreturned'), 5000, "success")
    end
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    DeleteVehicle(car)
    DeleteEntity(car)
    IsRentingQuad = false
end)
RegisterNetEvent('c_Fish:client:RemoveVehicleboats')
AddEventHandler('c_Fish:client:RemoveVehicleboats', function()
    if Config.NotifyType == 'qb' then
        QBCore.Functions.Notify(Lang:t('success.rentalreturned'), "success", 5000)
    end
    if Config.NotifyType == 'okok' then
        exports['okokNotify']:Alert(Lang:t('success.rentalheader'), Lang:t('success.rentalreturned'), 3500, "success")
    end
    if Config.NotifyType == 'rtx' then
        TriggerEvent("rtx_notify:Notify", Lang:t('success.rentalheader'), Lang:t('success.rentalreturned'), 5000, "success")
    end
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    DeleteVehicle(car)
    DeleteEntity(car)
    IsRentingBoat = false
end)
RegisterNetEvent('c_Fish:client:buynomoney', function()

    if Config.NotifyType == 'qb' then
        QBCore.Functions.Notify(Lang:t('error.notenoughmoneybank'), "error", 5000)
    end
    if Config.NotifyType == 'okok' then
        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notenoughmoneybank'), 3500, "error")
    end
    if Config.NotifyType == 'rtx' then
        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notenoughmoneybank'), 5000, "error")
    end
end)
RegisterNetEvent('c_Fish:client:buynomoneycash', function()
    if Config.NotifyType == 'qb' then
        QBCore.Functions.Notify(Lang:t('error.notenoughmoneycash'), "error", 5000)
    end
    if Config.NotifyType == 'okok' then
        exports['okokNotify']:Alert(Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notenoughmoneycash'), 3500, "error")
    end
    if Config.NotifyType == 'rtx' then
        TriggerEvent("rtx_notify:Notify", Lang:t('error.okokcaughtfishtitle'), Lang:t('error.notenoughmoneycash'), 5000, "error")
    end
end)
