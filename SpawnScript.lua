-- spawnMangaer
local spawnPos = math.random(1,#config.Spawns)
function RandomSpawn()
    spawnPos = math.random(1,#config.Spawns)
end
local count = 0;

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = config.Spawns[spawnPos].pos.x,
            y = config.Spawns[spawnPos].pos.y,
            z = config.Spawns[spawnPos].pos.z,
            model = 'a_m_m_skater_01',   
        }, function()
            if count == 0 then
                TriggerEvent('chat:addMessage', {
                    args = { 'Welcome to Alex\'s party!', }
                })
                count = count + 1;
            end
            RandomSpawn()
        end)
    end)
    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
    Citizen.Wait(500)
    exports.spawnmanager:setAutoSpawn(false)
end)


RegisterCommand('lobby', function(source)
    local playerPed = PlayerPedId()
    local lobbySpawn = config.Spawns[math.random(1,#config.Spawns)]
    SetEntityCoords(playerPed,lobbySpawn.pos)
end)
