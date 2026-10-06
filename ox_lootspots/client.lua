CreateThread(function()
 for k,v in pairs(Config.Locations) do
  exports.ox_target:addSphereZone({coords=v.coords,radius=1.5,options={{
   name='lootspot_'..k,label=v.targetLabel,icon='fas fa-box-open',onSelect=function()
    local success=lib.progressBar({duration=v.progressTime or Config.DefaultProgressDuration,label=v.progressLabel,canCancel=true})
    if not success then return end
    local opts={}
    for i,loot in pairs(v.lootTable) do
      opts[#opts+1]={title=loot.label,description=('Receive %sx %s'):format(loot.amount,loot.label),event='lootspots:client:selectLoot',args={locationIndex=k,lootIndex=i}}
    end
    lib.registerContext({id='lootspot_menu_'..k,title='Choose Item',options=opts})
    lib.showContext('lootspot_menu_'..k)
   end
  }}}
 ) end
end)
RegisterNetEvent('lootspots:client:selectLoot', function(data)
 TriggerServerEvent('lootspots:server:claimLoot',data.locationIndex,data.lootIndex)
end)
RegisterNetEvent('lootspots:client:cooldown', function(timeLeft)
 lib.notify({title='Location Recently Searched',description=('Try again in %s minute(s).'):format(math.ceil(timeLeft/60)),type='error'})
end)
