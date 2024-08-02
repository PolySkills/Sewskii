while true do
wait(0.1)
local args = {
    [1] = Vector3.new(-8.021541595458984, 5.3626813888549805, 0),
    [2] = Vector3.new(-12.102374076843262, 2.9999990463256836, 1.8438845712971673e-40)
}

game:GetService("ReplicatedStorage").Remotes.ZombieRelated.AcidSpit:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.ZombieRelated.TouchedAcid:FireServer(unpack(args))

end
