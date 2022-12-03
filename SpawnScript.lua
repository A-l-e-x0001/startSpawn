local spawnPos = vector3(686.245, 577.950, 130.461)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_y_hipster_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to Alex's dev server!' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)
