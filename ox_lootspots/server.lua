local Cooldowns={}
RegisterNetEvent('lootspots:server:claimLoot', function(locationIndex,lootIndex)
 local src=source
 local location=Config.Locations[locationIndex]
 if not location then return end
 local now=os.time()
 local cooldown=location.cooldown or 300
 if Cooldowns[locationIndex] and now < Cooldowns[locationIndex] then
  TriggerClientEvent('lootspots:client:cooldown',src,Cooldowns[locationIndex]-now)
  return
 end
 local loot=location.lootTable and location.lootTable[lootIndex]
 if not loot then return end
 Cooldowns[locationIndex]=now+cooldown
 exports.ox_inventory:AddItem(src,loot.item,loot.amount)
end)
