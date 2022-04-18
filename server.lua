print("ItsManueh - Discord Presence initiated.")

RegisterServerEvent('GetActivePlayers')
AddEventHandler('GetActivePlayers', function()
    local count = GetNumPlayerIndices()
    TriggerClientEvent('GetActivePlayers:CB', source, count)
end)