local playerCount = 0
RegisterNetEvent('GetActivePlayers:CB')
AddEventHandler('GetActivePlayers:CB', function(count)
    playerCount = count
end)

CreateThread(function()
	while true do
	local player = PlayerPedId()
        local playerId = GetPlayerServerId(PlayerId())

	--Updates status
	Wait(1500)

        -- This is the Application ID (Replace this with you own)
	SetDiscordAppId(YourID)

	-- Here you will get the actual numbers of players real time and id players.
        TriggerServerEvent('GetActivePlayers')

        SetRichPresence(string.format("%s | %s %s", 'ID: '..playerId..' ' ,playerCount, "Players"))
        
        -- Here you will have to put the image name for the "large" icon.
	SetDiscordRichPresenceAsset('YourIconLarge')
        
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Text Sample')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('YourSmallLarge')

        -- Here you can add hover text for the "small" icon and get actual name of streets and coords.
        SetDiscordRichPresenceAssetSmallText("Actually in " .. GetStreetNameFromHashKey( GetStreetNameAtCoord ( table.unpack( GetEntityCoords(player)))))     

	--Here you can add buttons that will display in your Discord Status.
        SetDiscordRichPresenceAction(0, "First Button!", "TEXT SAMPLE")
        SetDiscordRichPresenceAction(1, "Second Button!", "TEXT SAMPLE")
	Wait(60000)
    end
end)
