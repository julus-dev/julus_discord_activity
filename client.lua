ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		ESX = exports["es_extended"]:getSharedObject()
		Citizen.Wait(0)
	end
end)

players = 0

Citizen.CreateThread(function()
	while true do
		-- TODO: Insert Discord Application ID from https://discord.com/developers/applications
		SetDiscordAppId(YOUR_DISCORD_APP_ID_HERE)
		-- TODO: Change 'logo' to the asset name registered in Discord Developer Portal
		SetDiscordRichPresenceAsset('logo')
		-- TODO: Change text to your server name
		SetDiscordRichPresenceAssetText('SERVER_NAME')
		-- Dynamic status with player count
		SetRichPresence("Server Status - Players: " .. players)

		Citizen.Wait(10000)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(9000)

		-- Fetch player count from server every 9 seconds
		ESX.TriggerServerCallback('getPlayers', function(Players)
			players = Players
		end)
	end
end)