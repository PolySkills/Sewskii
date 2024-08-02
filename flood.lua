while true do
    for x = -200, 200, 10 do
        for z = -200, 200, 10 do
            local args = {
                Vector3.new(x, 200, z),
                Vector3.new(-12.102374076843262, 2.9999990463256836, 1.8438845712971673e-40)
            }
            if game:GetService("ReplicatedStorage").Remotes.ZombieRelated.AcidSpit then
                game:GetService("ReplicatedStorage").Remotes.ZombieRelated.AcidSpit:FireServer(unpack(args))
            end
            wait(0.01)
        end
    end
    wait(0.1)
end
