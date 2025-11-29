ESX = nil
ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback('getPlayers', function(source, cb)
	local players = ESX.GetPlayers()
	cb(#players)
end)

