local spawnPos = vector3(-425.51, 1123.56, 325.85)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_y_skater_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { "Welcome To Alex's dev server!" }
            })
        end)
    end)
      
    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
    Citizen.Wait(500)
    exports.spawnmanager:setAutoSpawn(false)
end)
