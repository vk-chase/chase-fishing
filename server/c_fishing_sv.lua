local QBCore = exports['qb-core']:GetCoreObject()
QBCore.Functions.CreateUseableItem("c_fishingpole_one", function(source, item) --flyfishing
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.GetItemBySlot(item.slot) ~= nil then
       TriggerClientEvent('c_Fish:client:casting1', source)
   end
end)
QBCore.Functions.CreateUseableItem("c_fishingpole_two", function(source, item) --regularfishing
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.GetItemBySlot(item.slot) ~= nil then
       TriggerClientEvent('c_Fish:client:OpenCastMenu2', source)
   end
end)
QBCore.Functions.CreateUseableItem("c_anchor", function(source, item)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.GetItemBySlot(item.slot) ~= nil then
       TriggerClientEvent('c_Fish:client:anchor', source)
   end
end)
QBCore.Functions.CreateUseableItem("c_tacklebox", function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.GetItemBySlot(item.slot) ~= nil then
      TriggerClientEvent('c_Fish:client:openTackle', source)
  end
end)

-- flyfishing 
RegisterNetEvent('c_outdoorsserver:FishPool1', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
   		      Player.Functions.AddItem('c_fish1', 1)
   		      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish1'], "add", 1)		
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
               end
               if Config.NotifyType == 'okok' then
                   TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
               end
               if Config.NotifyType == 'rtx' then
                  TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
               end
            end
         end	
         if luck == 2 then
   		   Player.Functions.AddItem('c_fish2', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish2'], "add", 1)
         end
         if luck == 3 then
   		   Player.Functions.AddItem('c_fish3', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish3'], "add", 1)
         end
         if luck == 4 then
   		   Player.Functions.AddItem('c_fish4', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish4'], "add", 1)
         end
         if luck == 5 then
   		   Player.Functions.AddItem('c_fish5', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish5'], "add", 1)
         end
         if luck == 6 then
   		   Player.Functions.AddItem('c_fish6', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish6'], "add", 1)
         end   
         if luck == 7 then
   		   Player.Functions.AddItem('c_fish7', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish7'], "add", 1)
         end
         if luck == 8 then
   		   Player.Functions.AddItem('c_fish8', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish8'], "add", 1)
         end   
         if luck == 9 then
   		   Player.Functions.AddItem('c_fish9', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish9'], "add", 1)
         end
         if luck == 10 then
   		   Player.Functions.AddItem('c_fish10', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish10'], "add", 1)
         end
         if luck == 11 then
   		   Player.Functions.AddItem('c_fish11', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish11'], "add", 1)
         end
         if luck == 12 then
   		   Player.Functions.AddItem('c_fish12', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish12'], "add", 1)
         end
         if luck == 13 then
   		   Player.Functions.AddItem('c_fish13', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish13'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
             TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)

--ocean fishing
RegisterNetEvent('c_outdoorsserver:FishPool2', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
   	      Player.Functions.AddItem('c_fish14', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish14'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end
         if luck == 2 then
   	   Player.Functions.AddItem('c_fish15', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish15'], "add", 1)
         end
         if luck == 3 then
   	   Player.Functions.AddItem('c_fish16', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish16'], "add", 1)
         end
         if luck == 4 then
   	   Player.Functions.AddItem('c_fish17', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish17'], "add", 1)
         end
         if luck == 5 then
   	   Player.Functions.AddItem('c_fish18', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish18'], "add", 1)
         end
         if luck == 6 then
   	   Player.Functions.AddItem('c_fish19', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish19'], "add", 1)
         end
         if luck == 7 then
   	   Player.Functions.AddItem('c_fish20', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish20'], "add", 1)
         end
         if luck == 8 then
   	   Player.Functions.AddItem('c_fish21', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish21'], "add", 1)
         end
         if luck == 9 then
   	   Player.Functions.AddItem('c_fish22', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish22'], "add", 1)
         end
         if luck == 10 then
   	   Player.Functions.AddItem('c_fish23', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish23'], "add", 1)
         end
         if luck == 11 then
   	   Player.Functions.AddItem('c_fish24', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish24'], "add", 1)
         end
         if luck == 12 then
   	   Player.Functions.AddItem('c_fish25', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish25'], "add", 1)
         end
         if luck == 13 then
   	   Player.Functions.AddItem('c_fish26', 1)
   	   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish26'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)

RegisterNetEvent('c_outdoorsserver:FishPool3', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish27', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish27'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end		
         if luck == 2 then				
   		   Player.Functions.AddItem('c_fish28', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish28'], "add", 1)
         end
         if luck == 3 then				
   		   Player.Functions.AddItem('c_fish29', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish3'], "add", 1)
         end
         if luck == 4 then				
   		   Player.Functions.AddItem('c_fish30', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish29'], "add", 1)
         end
         if luck == 5 then				
   		   Player.Functions.AddItem('c_fish31', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish31'], "add", 1)
         end
         if luck == 6 then				
   		   Player.Functions.AddItem('c_fish32', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish32'], "add", 1)
         end
         if luck == 7 then				
   		   Player.Functions.AddItem('c_fish33', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish33'], "add", 1)
         end
         if luck == 8 then				
   		   Player.Functions.AddItem('c_fish34', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish34'], "add", 1)
         end
         if luck == 9 then				
   		   Player.Functions.AddItem('c_fish35', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish35'], "add", 1)
         end
         if luck == 10 then				
   		   Player.Functions.AddItem('c_fish36', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish36'], "add", 1)
         end
         if luck == 11 then				
   		   Player.Functions.AddItem('c_fish37', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish37'], "add", 1)
         end
         if luck == 12 then				
   		   Player.Functions.AddItem('c_fish38', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish38'], "add", 1)
         end
         if luck == 13 then				
   		   Player.Functions.AddItem('c_fish39', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish39'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)

RegisterNetEvent('c_outdoorsserver:FishPool4', function() 
    local Player = QBCore.Functions.GetPlayer(source)
    local luck = math.random(1, 13)
    local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish40', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish40'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end			
         if luck == 2 then				
   		   Player.Functions.AddItem('c_fish41', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish41'], "add", 1)
         end
         if luck == 3 then				
   		   Player.Functions.AddItem('c_fish42', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish42'], "add", 1)
         end
         if luck == 4 then				
   		   Player.Functions.AddItem('c_fish43', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish43'], "add", 1)
         end
         if luck == 5 then				
   		   Player.Functions.AddItem('c_fish44', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish44'], "add", 1)
         end
         if luck == 6 then				
   		   Player.Functions.AddItem('c_fish45', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish45'], "add", 1)
         end
         if luck == 7 then				
   		   Player.Functions.AddItem('c_fish46', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish46'], "add", 1)
         end
         if luck == 8 then				
   		   Player.Functions.AddItem('c_fish47', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish47'], "add", 1)
         end
         if luck == 9 then				
   		   Player.Functions.AddItem('c_fish48', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish48'], "add", 1)
         end
         if luck == 10 then				
   		   Player.Functions.AddItem('c_fish49', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish49'], "add", 1)
         end
         if luck == 11 then				
   		   Player.Functions.AddItem('c_fish50', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish50'], "add", 1)
         end
         if luck == 12 then				
   		   Player.Functions.AddItem('c_fish51', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish51'], "add", 1)
         end
         if luck == 13 then				
   		   Player.Functions.AddItem('c_fish52', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish52'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
             TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool5', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish53', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish53'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end			
         if luck == 2 then				
   		   Player.Functions.AddItem('c_fish54', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish54'], "add", 1)
         end
         if luck == 3 then				
   		   Player.Functions.AddItem('c_fish55', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish55'], "add", 1)
         end
         if luck == 4 then				
   		   Player.Functions.AddItem('c_fish56', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish56'], "add", 1)
         end
         if luck == 5 then				
   		   Player.Functions.AddItem('c_fish57', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish57'], "add", 1)
         end
         if luck == 6 then				
   		   Player.Functions.AddItem('c_fish58', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish58'], "add", 1)
         end
         if luck == 7 then				
   		   Player.Functions.AddItem('c_fish59', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish59'], "add", 1)
         end
         if luck == 8 then				
   		   Player.Functions.AddItem('c_fish60', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish60'], "add", 1)
         end
         if luck == 9 then				
   		   Player.Functions.AddItem('c_fish61', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish61'], "add", 1)
         end
         if luck == 10 then				
   		   Player.Functions.AddItem('c_fish62', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish62'], "add", 1)
         end
         if luck == 11 then				
   		   Player.Functions.AddItem('c_fish63', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish63'], "add", 1)
         end
         if luck == 12 then				
   		   Player.Functions.AddItem('c_fish64', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish64'], "add", 1)
         end
         if luck == 13 then				
   		   Player.Functions.AddItem('c_fish65', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish65'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool6', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish66', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish66'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end	
         if luck == 2 then				
   		   Player.Functions.AddItem('c_fish67', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish67'], "add", 1)
         end
         if luck == 3 then				
   		   Player.Functions.AddItem('c_fish68', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish68'], "add", 1)
         end
         if luck == 4 then				
   		   Player.Functions.AddItem('c_fish70', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish70'], "add", 1)
         end
         if luck == 5 then				
   		   Player.Functions.AddItem('c_fish71', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish71'], "add", 1)
         end
         if luck == 6 then				
   		   Player.Functions.AddItem('c_fish72', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish72'], "add", 1)
         end
         if luck == 7 then				
   		   Player.Functions.AddItem('c_fish73', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish73'], "add", 1)
         end
         if luck == 8 then				
   		   Player.Functions.AddItem('c_fish74', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish74'], "add", 1)
         end
         if luck == 9 then				
   		   Player.Functions.AddItem('c_fish75', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish75'], "add", 1)
         end
         if luck == 10 then				
   		   Player.Functions.AddItem('c_fish76', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish76'], "add", 1)
         end
         if luck == 11 then				
   		   Player.Functions.AddItem('c_fish77', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish77'], "add", 1)
         end
         if luck == 12 then				
   		   Player.Functions.AddItem('c_fish78', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish78'], "add", 1)
         end
         if luck == 13 then				
   		   Player.Functions.AddItem('c_fish79', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish79'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool7', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish80', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish80'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
              end
              if Config.NotifyType == 'okok' then
                  TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
              end
              if Config.NotifyType == 'rtx' then
                 TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
              end
            end
         end			
         if luck == 2 then            
            Player.Functions.AddItem('c_fish81', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish81'], "add", 1)
         end
         if luck == 3 then            
            Player.Functions.AddItem('c_fish82', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish82'], "add", 1)
         end
         if luck == 4 then            
            Player.Functions.AddItem('c_fish83', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish83'], "add", 1)
         end
         if luck == 5 then            
            Player.Functions.AddItem('c_fish84', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish84'], "add", 1)
         end
         if luck == 6 then            
            Player.Functions.AddItem('c_fish85', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish85'], "add", 1)
         end
         if luck == 7 then            
            Player.Functions.AddItem('c_fish86', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish86'], "add", 1)
         end
         if luck == 8 then            
            Player.Functions.AddItem('c_fish87', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish87'], "add", 1)
         end
         if luck == 9 then            
            Player.Functions.AddItem('c_fish88', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish88'], "add", 1)
         end
         if luck == 10 then            
            Player.Functions.AddItem('c_fish89', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish89'], "add", 1)
         end
         if luck == 11 then            
            Player.Functions.AddItem('c_fish90', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish90'], "add", 1)
         end
         if luck == 12 then            
            Player.Functions.AddItem('c_fish91', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish91'], "add", 1)
         end
         if luck == 13 then            
            Player.Functions.AddItem('c_fish92', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish92'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)

RegisterNetEvent('c_outdoorsserver:FishPool8', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish93', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish93'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
               end
               if Config.NotifyType == 'okok' then
                   TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
               end
               if Config.NotifyType == 'rtx' then
                  TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
               end
            end
         end			
         if luck == 2 then			
   	      Player.Functions.AddItem('c_fish94', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish94'], "add", 1)
         end
         if luck == 3 then			
   	      Player.Functions.AddItem('c_fish95', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish95'], "add", 1)
         end
         if luck == 4 then			
   	      Player.Functions.AddItem('c_fish96', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish96'], "add", 1)
         end
         if luck == 5 then			
   	      Player.Functions.AddItem('c_fish97', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish97'], "add", 1)
         end
         if luck == 6 then			
   	      Player.Functions.AddItem('c_fish98', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish98'], "add", 1)
         end
         if luck == 7 then			
   	      Player.Functions.AddItem('c_fish99', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish99'], "add", 1)
         end
         if luck == 8 then			
   	      Player.Functions.AddItem('c_fish100', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish100'], "add", 1)
         end
         if luck == 9 then			
   	      Player.Functions.AddItem('c_fish101', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish101'], "add", 1)
         end
         if luck == 10 then			
   	      Player.Functions.AddItem('c_fish102', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish102'], "add", 1)
         end
         if luck == 11 then			
   	      Player.Functions.AddItem('c_fish103', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish103'], "add", 1)
         end
         if luck == 12 then			
   	      Player.Functions.AddItem('c_fish104', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish104'], "add", 1)
         end
         if luck == 13 then			
   	      Player.Functions.AddItem('c_fish105', 1)
   	      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish105'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool9', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish106', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish106'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
               end
               if Config.NotifyType == 'okok' then
                   TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
               end
               if Config.NotifyType == 'rtx' then
                  TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
               end
            end
         end			
         if luck == 2 then				
   		   Player.Functions.AddItem('c_fish107', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish107'], "add", 1)
         end
         if luck == 3 then				
   		   Player.Functions.AddItem('c_fish108', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish108'], "add", 1)
         end
         if luck == 4 then				
   		   Player.Functions.AddItem('c_fish109', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish109'], "add", 1)
         end
         if luck == 5 then				
   		   Player.Functions.AddItem('c_fish110', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish110'], "add", 1)
         end
         if luck == 6 then				
   		   Player.Functions.AddItem('c_fish111', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish111'], "add", 1)
         end
         if luck == 7 then				
   		   Player.Functions.AddItem('c_fish112', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish112'], "add", 1)
         end
         if luck == 8 then				
   		   Player.Functions.AddItem('c_fish113', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish113'], "add", 1)
         end
         if luck == 9 then				
   		   Player.Functions.AddItem('c_fish114', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish114'], "add", 1)
         end
         if luck == 10 then				
   		   Player.Functions.AddItem('c_fish115', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish115'], "add", 1)
         end
         if luck == 11 then				
   		   Player.Functions.AddItem('c_fish116', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish116'], "add", 1)
         end
         if luck == 12 then				
   		   Player.Functions.AddItem('c_fish117', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish117'], "add", 1)
         end
         if luck == 13 then				
   		   Player.Functions.AddItem('c_fish118', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish118'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool10', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish119', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish119'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
               end
               if Config.NotifyType == 'okok' then
                   TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
               end
               if Config.NotifyType == 'rtx' then
                  TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
               end
            end
         end			
         if luck == 2 then				
            Player.Functions.AddItem('c_fish120', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish120'], "add", 1)
         end
         if luck == 3 then				
            Player.Functions.AddItem('c_fish121', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish121'], "add", 1)
         end
         if luck == 4 then				
            Player.Functions.AddItem('c_fish122', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish122'], "add", 1)
         end
         if luck == 5 then				
            Player.Functions.AddItem('c_fish123', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish123'], "add", 1)
         end         
         if luck == 6 then				
            Player.Functions.AddItem('c_fish124', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish124'], "add", 1)
         end
         if luck == 7 then				
            Player.Functions.AddItem('c_fish125', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish125'], "add", 1)
         end
         if luck == 8 then				
            Player.Functions.AddItem('c_fish126', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish126'], "add", 1)
         end
         if luck == 9 then				
            Player.Functions.AddItem('c_fish127', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish127'], "add", 1)
         end
         if luck == 10 then				
            Player.Functions.AddItem('c_fish128', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish128'], "add", 1)
         end
         if luck == 11 then				
            Player.Functions.AddItem('c_fish129', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish129'], "add", 1)
         end
         if luck == 12 then				
            Player.Functions.AddItem('c_fish130', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish130'], "add", 1)
         end
         if luck == 13 then				
            Player.Functions.AddItem('c_fish131', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish131'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)


RegisterNetEvent('c_outdoorsserver:FishPool11', function() 
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 13)
   local luck2 = math.random(1,10)
         if luck == 1 then
            if luck2 == 1 then
               Player.Functions.AddItem('c_fish132', 1)
               TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish132'], "add", 1)	
            else
               if Config.NotifyType == 'qb' then
                  TriggerClientEvent('QBCore:Notify', source, Lang:t('info.lostabigone'), 'error', 3500)
               end
               if Config.NotifyType == 'okok' then
                   TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 3500, 'error')
               end
               if Config.NotifyType == 'rtx' then
                  TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.lostabigone'), 5000, "error")            
               end
            end
         end		
         if luck == 2 then		
   		   Player.Functions.AddItem('c_fish133', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish133'], "add", 1)
         end
         if luck == 3 then		
   		   Player.Functions.AddItem('c_fish134', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish134'], "add", 1)
         end
         if luck == 4 then		
   		   Player.Functions.AddItem('c_fish135', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish135'], "add", 1)
         end
         if luck == 5 then		
   		   Player.Functions.AddItem('c_fish136', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish136'], "add", 1)
         end
         if luck == 6 then		
   		   Player.Functions.AddItem('c_fish137', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish137'], "add", 1)
         end
         if luck == 7 then		
   		   Player.Functions.AddItem('c_fish138', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish138'], "add", 1)
         end
         if luck == 8 then		
   		   Player.Functions.AddItem('c_fish139', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish139'], "add", 1)
         end
         if luck == 9 then		
   		   Player.Functions.AddItem('c_fish140', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish140'], "add", 1)
         end
         if luck == 10 then		
   		   Player.Functions.AddItem('c_fish141', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish141'], "add", 1)
         end
         if luck == 11 then		
   		   Player.Functions.AddItem('c_fish142', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish142'], "add", 1)
         end
         if luck == 12 then		
   		   Player.Functions.AddItem('c_fish143', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish143'], "add", 1)
         end
         if luck == 13 then		
   		   Player.Functions.AddItem('c_fish144', 1)
   		   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fish144'], "add", 1)
         end
         if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', source, Lang:t('info.caughtfish'), 'success', 3500)
         end
         if Config.NotifyType == 'okok' then
             TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 3500, 'success')
         end
         if Config.NotifyType == 'rtx' then
            TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('info.caughtfish'), 5000, "success")            
         end
end)

-- ON SUCESS
RegisterNetEvent('c_outdoorsserver:baitremove2', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_two', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_two'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove3', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_three', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_three'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove4', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_four', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_four'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove5', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_five', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_five'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove6', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_six', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_six'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove7', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_seven', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_seven'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove8', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_eight', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eight'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove9', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_nine', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_nine'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove10', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_ten', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_ten'], "remove", 1)
end)
RegisterNetEvent('c_outdoorsserver:baitremove11', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
      Player.Functions.RemoveItem('c_bait_eleven', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eleven'], "remove", 1)
end)

--==== ON FAIL 
RegisterNetEvent('c_outdoorsserver:baitremoveX2', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_two'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)
 
RegisterNetEvent('c_outdoorsserver:baitremoveX3', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_three', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_three'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)

 
RegisterNetEvent('c_outdoorsserver:baitremoveX4', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_four', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_four'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)

 
RegisterNetEvent('c_outdoorsserver:baitremoveX5', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_five', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_five'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)

 
RegisterNetEvent('c_outdoorsserver:baitremoveX6', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_six', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_six'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)

 
RegisterNetEvent('c_outdoorsserver:baitremoveX7', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_seven', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_seven'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)


 
RegisterNetEvent('c_outdoorsserver:baitremoveX8', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_eight', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eight'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)


 
RegisterNetEvent('c_outdoorsserver:baitremoveX9', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_nine', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_nine'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)


 
RegisterNetEvent('c_outdoorsserver:baitremoveX10', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_ten', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_ten'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
 end)


 
RegisterNetEvent('c_outdoorsserver:baitremoveX111', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local removebait = math.random(1,100)
    if removebait <= Config.RemoveBait then
       Player.Functions.RemoveItem('c_bait_eleven', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eleven'], "remove", 1)
    elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
    else
       Player.Functions.RemoveItem('c_fishingpole_two', 1)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_two'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
    end
end)

-- this one below is fly fishing
RegisterNetEvent('c_outdoorsserver:baitremove', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local removebait = math.random(1,100)
   if removebait <= Config.RemoveBait then
      Player.Functions.RemoveItem('c_bait_one', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_one'], "remove", 1)
   elseif removebait <= 97 and removebait >= 51 then
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('success.savedbait'), 'success', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 3500, 'success')
      end
      if Config.NotifyType == 'rtx' then
         TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('success.savedbait'), 5000, "success")            
      end
   else
      Player.Functions.RemoveItem('c_fishingpole_one', 1)
      TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_fishingpole_one'], "remove", 1)
      if Config.NotifyType == 'qb' then
         TriggerClientEvent('QBCore:Notify', source, Lang:t('error.polebreak'), 'error', 3500)
      end
      if Config.NotifyType == 'okok' then
         TriggerClientEvent('okokNotify:Alert', source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 3500, 'error')
      end
      if Config.NotifyType == 'rtx' then
        TriggerClientEvent("rtx_notify:Notify", source, Lang:t('info.okokcaughtfishtitle'), Lang:t('error.polebreak'), 5000, "error")            
      end
   end
end)


--######## OUTDOORSHOP
RegisterServerEvent('c_Fish:server:RodBuy', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.RodCost1) then
           Player.Functions.AddItem('c_fishingpole_one', 1)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_fishingpole_one"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)

RegisterServerEvent('c_Fish:server:RodBuy2', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.RodCost2) then
           Player.Functions.AddItem('c_fishingpole_two', 1)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_fishingpole_two"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)



RegisterServerEvent('c_Fish:server:TackleBoxBuy', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.TackleboxCost) then
           Player.Functions.AddItem('c_tacklebox', 1)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_tacklebox"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)


RegisterServerEvent('c_Fish:server:OneBaitBuy', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount,Config.OneBaitCost) then
           Player.Functions.AddItem('c_bait_one', 1)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_bait_one"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)


RegisterServerEvent('c_Fish:server:TenBaitBuy', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.TenBaitCost) then
           Player.Functions.AddItem('c_bait_one', 10)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_bait_one"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)

RegisterServerEvent('c_Fish:server:FiftyBaitBuy', function()
   local Player = QBCore.Functions.GetPlayer(source)
       if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.FiftyBaitCost) then
           Player.Functions.AddItem('c_bait_one', 50)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_bait_one"], "add")
       else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
       end
end)

RegisterServerEvent('c_Fish:server:BuyAnchor', function()
   local Player = QBCore.Functions.GetPlayer(source)
      if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.BoatAnchorCost) then
         Player.Functions.AddItem('c_anchor', 1)
         TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["c_anchor"], "add")
      else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
      end
end)

RegisterServerEvent('c_Fish:server:BuyQueenBee', function()
   local Player = QBCore.Functions.GetPlayer(source)
      if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.QueenBeeCost) then
         Player.Functions.AddItem('queen_bee', 1)
         TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["queen_bee"], "add")
      else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
      end
end)

RegisterServerEvent('c_Fish:server:BuyBeeHive', function()
   local Player = QBCore.Functions.GetPlayer(source)
      if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.BeeHiveCost) then
         Player.Functions.AddItem('beehive', 1)
         TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["beehive"], "add")
      else
         if Config.ChargeAccount == 'bank' then
            TriggerClientEvent('c_Fish:client:buynomoney',source)
         end
         if Config.ChargeAccount == 'cash' then
            TriggerClientEvent('c_Fish:client:buynomoneycash',source)
         end
      end
end)
--############ END
---########### TAKLEBOX
RegisterNetEvent('c_Fish:server:RemoveopenTackle', function()
   local Player = QBCore.Functions.GetPlayer(source)
   Player.Functions.RemoveItem('c_tacklebox', 1)
   TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_tacklebox'], "remove")
end)
RegisterNetEvent('c_Fish:server:openTackle', function()
   local Player = QBCore.Functions.GetPlayer(source)
   local luck = math.random(1, 220)
   local luck2 = math.random(Config.TackleMin,Config.TackleMax)
   if luck <= 220 and luck >= 200 then
   Player.Functions.AddItem('c_bait_two', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_two'], "add")
   elseif luck <= 199 and luck >= 180 then
       Player.Functions.AddItem('c_bait_three', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_three'], "add")
   elseif luck <= 179 and luck >= 160 then
       Player.Functions.AddItem('c_bait_four', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_four'], "add")
   elseif luck <= 159 and luck >= 140 then
       Player.Functions.AddItem('c_bait_five', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_five'], "add")
   elseif luck <= 139 and luck >= 120 then
       Player.Functions.AddItem('c_bait_six', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_six'], "add")
   elseif luck <= 119 and luck >= 100 then
       Player.Functions.AddItem('c_bait_seven', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_seven'], "add")
   elseif luck <= 99 and luck >= 80 then
       Player.Functions.AddItem('c_bait_eight', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eight'], "add")
   elseif luck <= 79 and luck >= 60 then
       Player.Functions.AddItem('c_bait_nine', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_nine'], "add")
   elseif luck <= 59 and luck >= 40 then
       Player.Functions.AddItem('c_bait_ten', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_ten'], "add")
   elseif luck <= 39 and luck >= 20 then
       Player.Functions.AddItem('c_bait_eleven', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_eleven'], "add")
   elseif luck <= 19 and luck >= 1 then
       Player.Functions.AddItem('c_bait_three', luck2)
       TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['c_bait_three'], "add")
   end
end)

--renting
RegisterServerEvent('c_Fish:server:payboat1', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.Boat1Rental) then
        TriggerClientEvent('c_Fish:client:rentboat1c',source)
      else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)

RegisterServerEvent('c_Fish:server:payboat2', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.Boat2Rental) then
        TriggerClientEvent('c_Fish:client:rentboat2c',source)
   else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)

RegisterServerEvent('c_Fish:server:payboat3', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.Boat3Rental) then
        TriggerClientEvent('c_Fish:client:rentboat3c',source)
   else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)


RegisterServerEvent('c_Fish:server:payboat4', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.Boat4Rental) then
        TriggerClientEvent('c_Fish:client:rentboat4c',source)
   else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)


RegisterServerEvent('c_Fish:server:payoffroad1', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.OffroadVPrice1) then
        TriggerClientEvent('c_Fish:client:rentoff1c',source)
   else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)


RegisterServerEvent('c_Fish:server:payoffroad2', function(data)
   local Player = QBCore.Functions.GetPlayer(source)
   if Player.Functions.RemoveMoney(Config.ChargeAccount, Config.OffroadVPrice2) then
      TriggerClientEvent('c_Fish:client:rentoff2c',source)
   else
      if Config.ChargeAccount == 'bank' then
         TriggerClientEvent('c_Fish:client:buynomoney',source)
      end
      if Config.ChargeAccount == 'cash' then
         TriggerClientEvent('c_Fish:client:buynomoneycash',source)
      end
   end
end)


