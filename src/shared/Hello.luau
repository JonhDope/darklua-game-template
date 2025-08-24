local RunService = game:GetService("RunService")
return function()
	print( ("Hello, World from %s"):format((RunService:IsServer() and "Server") or "Client") )
end