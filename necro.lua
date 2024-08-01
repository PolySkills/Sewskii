-- used in the game called zombie game [upd3]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage.Remotes.ZombieRelated
local NecroAbilityRemote = Remotes.Necro.AbilityPlayer
local BossModel = ReplicatedStorage.Assets.Zombies.Boss

local function summonBoss()
local success, errorMessage = pcall(function()
NecroAbilityRemote:FireServer()
end)
if not success then
error(errorMessage)
end
local bossInstance = BossModel:Clone()
bossInstance.Parent = workspace
end

summonBoss()

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local notification = Instance.new("Notification")

notification.Title = "Boss Summoned!"
notification.Text = "The boss has been successfully summoned!"
notification.Duration = 3

local function onBossSummoned()
notification.Parent = player.PlayerGui
end

wait(0.01)
onBossSummoned()
