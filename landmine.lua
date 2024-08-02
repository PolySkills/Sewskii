local remoteEvent = game:GetService("ReplicatedStorage").NetworkEvents.RemoteEvent
local args = {"PLACE_LANDMINE"} -- the remote used

while true do
for x = -50, 50 do
for z = -50, 50 do
local landminePos = Vector3.new(x, 200, z) -- change pos the way it falls
local fallDistance = 200
while fallDistance > 0 do
args[1] = "PLACE_LANDMINE"
args[2] = landminePos - Vector3.new(0, fallDistance, 0) -- height ur dropping from
remoteEvent:FireServer(unpack(args))
fallDistance = fallDistance - 1
wait(0.01) -- delay
end
end
end
end
