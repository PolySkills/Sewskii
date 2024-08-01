local args = {
    [1] = "" -- replace the " " with anything in weapon folder in rep
}

game:GetService("ReplicatedStorage").Remotes.Shop.EquipWeapon:InvokeServer(unpack(args))
