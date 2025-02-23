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
local selectedPlayer = nil
 
drops:Dropdown("Chọn người chơi", playerNames, function(selected)
    selectedPlayer = selected
    print("Người chơi đã chọn: " .. selectedPlayer)
end)
drops:Button("Check Item", function()
    if selectedPlayer then
        local player = game.Players[selectedPlayer]
        local backpack = player.Backpack
        if backpack then
            local items = {}
            for _, item in pairs(backpack:GetChildren()) do
                if item:IsA("Tool") or item:IsA("Equipment") then
                    table.insert(items, item.Name)
                end
            end
            if #items > 0 then
                local itemString = table.concat(items, ", ")
                DiscordLib:Notification("Item của " .. selectedPlayer, itemString, "Ok")
            else
                DiscordLib:Notification("Item của " .. selectedPlayer, "Không có item nào", "Ok")
            end
        else
            DiscordLib:Notification("Lỗi", "Người chơi đã chọn không có túi đồ", "Ok")
        end
    else
        DiscordLib:Notification("Lỗi", "Chưa chọn người chơi", "Ok")
    end
end)
drops:Button("Check Level", function()
    if selectedPlayer then
        local level = game:GetService("Players")[selectedPlayer].Data.Levels
        if level then
            DiscordLib:Notification("Level của " .. selectedPlayer, tostring(level.Value), "Ok")
        else
            DiscordLib:Notification("Lỗi", "Không thể lấy level của người chơi", "Ok")
        end
    else
        DiscordLib:Notification("Lỗi", "Chưa chọn người chơi", "Ok")
    end
end)
drops:Button("Check Health", function()
    local player = game:GetService("Players").LocalPlayer
    local data = player:FindFirstChild("Data")
    if data then
        local healthP = data:FindFirstChild("HealthP")
        if healthP then
            local maxHealth = healthP:FindFirstChild("MaxHealth")
            if maxHealth then
                local currentHealth = healthP:FindFirstChild("CurrentHealth")
                if currentHealth then
                    DiscordLib:Notification("Health của bạn", "Max Health: " .. tostring(maxHealth.Value) .. "\nCurrent Health: " .. tostring(currentHealth.Value), "Ok")
                end
            end
        end
    end
end)
drops:Textbox("fake level", "Số level", true, function(level)
    local player = game.Players.LocalPlayer
    local data = player:FindFirstChild("Data")
    if data then
        local levels = data:FindFirstChild("Levels")
        if levels then
            levels.Value = tonumber(level)
        end
    end
end)

local drops = serv:Channel("Star+Auto Skill")


local drops = serv:Channel("Shop")

local drops = serv:Channel("Weapon+Fast Attack")


local drops = serv:Channel("Player")


local drops = serv:Channel("Hitbox | Beta")


local drops = serv:Channel("Walk Speed")
