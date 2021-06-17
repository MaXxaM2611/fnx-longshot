exports.spawnmanager:setAutoSpawn(false)



RegisterCommand("revive",function ()
    revivePed(GetPlayerPed(-1))
end)


function revivePed(ped)
    NetworkResurrectLocalPlayer(GetEntityCoords(ped, true), true, true, false)
    SetPlayerInvincible(ped, false)
    ClearPedBloodDamage(ped)
end