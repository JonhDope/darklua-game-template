repeat
	task.wait()
until game:IsLoaded()

local Players = game:GetService("Players")
local Lumin = require("@pkg/lumin")

local PlayerLeaving = Lumin.Hook("PlayerLeaving")
local PlayerJoined = Lumin.Hook("PlayerJoined")

Players.PlayerRemoving:Connect(function(Player)
	PlayerLeaving:Fire(Player)
end)

Players.PlayerAdded:Connect(function(Player)
	PlayerJoined:Fire(Player)
end)

for _, Player in Players:GetPlayers() do
	PlayerJoined:Fire(Player)
end

Lumin.Add({
	script.Providers,
})

Lumin.Start({
	Profiling = true,
})
