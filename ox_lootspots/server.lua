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
 if location.policeAlert then
  local chance=location.alertChance or 100
  if math.random(1,100)<=chance then
   local coords=GetEntityCoords(GetPlayerPed(src))
   TriggerEvent('cd_dispatch:AddNotification',{
    job_table={'police'},coords=coords,title='Suspicious Activity',message='Person reported searching shelves.',flash=0,
    unique_id=tostring(math.random(100000,999999)),sound=1,
    blip={sprite=161,scale=1.2,colour=1,flashes=true,text='Suspicious Activity',time=5,radius=0}
   })
  end
 end
end)
