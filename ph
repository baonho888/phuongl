local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
 
local win = DiscordLib:Window("Béo")
local serv = win:Server("Duy Hub", "")
local drops = serv:Channel("F")
local dis = nil
local aura = false
local autoQuest = false
local selectedQuest = ""
drops:Button("get max level ", function()local player = game.Players.LocalPlayer
    local data = player:FindFirstChild("Data")
    if data then
        local levels = data:FindFirstChild("Levels")
        if levels then
            levels.Value = tonumber(1000000000)
        end
    end
end)

local drops = serv:Channel("! Fram+LocalPlayer")


local drops = serv:Channel("⭐Check+fake")


local drops = serv:Channel("Star+Auto Skill")


local drops = serv:Channel("Shop")

local drops = serv:Channel("Weapon+Fast Attack")


local drops = serv:Channel("Player")


local drops = serv:Channel("Hitbox | Beta")


local drops = serv:Channel("Walk Speed")
