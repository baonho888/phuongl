local player = game.Players.LocalPlayer

if player.Name == "bao2008c" or player.Name == "LzJaTUDSmXS" or player.Name == "danhrlom" or player.Name == "Anh7_Tino" or player.Name == "" then
    print("nằm mơ đi em")
else
    player:Kick("MUA SCRIPT KO FREE")
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Seven7-lua/Roblox/refs/heads/main/Librarys/Orion/Orion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Flandre Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Không có gì trên đời là miễn phí"
})

--[[
Name = <string> - The name of the section.
]]

local Section = Tab:AddSection({
	Name = "kill aura👇"
})

Tab:AddButton({
	Name = "bật kill aura(áp dụng với sea2 và raid)",
	Callback = function()
getgenv().G = true
getgenv().Creator = 'https://discord.gg/B3HqPPzFYr - HalloweenGaster'
while getgenv().G and getgenv().Creator == 'https://discord.gg/B3HqPPzFYr - HalloweenGaster' do
wait(0.9)
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
for i,d in pairs(game.Workspace:GetDescendants()) do
    if d.ClassName == 'Humanoid' and d.Parent.Name ~= game.Players.LocalPlayer.Name then
        d.Health = 0
    end
end
end
      		print("button pressed")
  	end    
})

local Section = Tab:AddSection({
	Name = "get armor 200m - 90b👇(cần nhiều ng trong sv)"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "copy all armor",
	Callback = function()
local Players = game:GetService("Players")
local armors = {"Cursed-Armor", "Unique-Armor", "Darkness-Armor", "Thunder-Armor", "Thunder-Armor", "Diamond-Armor", "Golden-Armor", "Epic-Armor", "Iron-Armor", "Wooden-Armor"} -- Danh sách các loại giáp

for _, player in pairs(Players:GetPlayers()) do
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, armorName in pairs(armors) do
            local armor = backpack:FindFirstChild(armorName)
            if armor and armor:FindFirstChild("K") and armor.K:FindFirstChild("Fire") then
                armor.K.Fire:FireServer()
            end
        end
    end
end

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "fast attack👇"
})

--[[
Name = <string> - The name of the section.
]]
Tab:AddButton({
	Name = "cid",
	Callback = function()
local args = {
    [1] = 8,
    [2] = 1
}

-- Lặp liên tục với khoảng thời gian giữa mỗi lần thực thi
while true do
    game:GetService("Players").LocalPlayer.PlayerGui.Tengen.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    wait(0) -- Điều chỉnh thời gian chờ theo nhu cầu
end

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "geto",
	Callback = function()
local args = {
    [1] = 8,
    [2] = 1
}

-- Lặp liên tục với khoảng thời gian giữa mỗi lần thực thi
while true do
    game:GetService("Players").LocalPlayer.PlayerGui.Tengen.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    wait(0) -- Điều chỉnh thời gian chờ theo nhu cầu
end

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "escanor",
	Callback = function()
local args = {
    [1] = 8,
    [2] = 1
}

-- Vòng lặp thực hiện liên tục
while true do
    game:GetService("Players").LocalPlayer.PlayerGui.Zabuza.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    wait(0) -- Điều chỉnh thời gian chờ theo nhu cầu
end

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "guts",
	Callback = function()
local args = {
    [1] = 8,
    [2] = 1
}

-- Vòng lặp thực hiện liên tục
while true do
    game:GetService("Players").LocalPlayer.PlayerGui.Zabuza.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    wait(0) -- Điều chỉnh thời gian chờ theo nhu cầu
end

      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "yoru v3",
	Callback = function()local args = {
    [1] = 8,
    [2] = 3
}

-- Lặp liên tục với khoảng thời gian giữa mỗi lần thực thi
while true do
    game:GetService("Players").LocalPlayer.PlayerGui.YoruV3.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    wait(0) -- Điều chỉnh thời gian chờ theo nhu cầu
end

print("button pressed")

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "secret fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "bấm vào để auto quay👇"
})
Tab:AddButton({
	Name = "quay secret",
	Callback = function()
local UserInputService = game:GetService("UserInputService")
local running = true

-- Chạy trong một luồng riêng
task.spawn(function()
    while running do
        fireclickdetector(game:GetService("Workspace").MAP["STARTER ISLAND [ Lv 1+ ]"]["Secret Random"].RANDOM)
        wait(0) -- Thêm thời gian chờ để giảm tải
    end
end)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "quay secret(sea2)",
	Callback = function()
local UserInputService = game:GetService("UserInputService")
local running = true

task.spawn(function()
    while running do
        -- Kiểm tra sự tồn tại của các đối tượng trước khi gọi fireclickdetector
        local workspace = game:GetService("Workspace")
        local marineIsland = workspace:FindFirstChild("Marine Island [ 3000 - 5000 ]")
        local secretRandom = marineIsland and marineIsland:FindFirstChild("Secret Random")
        local randomObject = secretRandom and secretRandom:FindFirstChild("RANDOM")

        if randomObject then
            fireclickdetector(randomObject)
        else
            warn("Không tìm thấy đối tượng RANDOM!")
        end

        task.wait(0) -- Điều chỉnh thời gian chờ để giảm tải hệ thống
    end
end)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "quay yoru",
	Callback = function()
local UserInputService = game:GetService("UserInputService")
local running = true

task.spawn(function()
    while running do
        -- Kiểm tra tồn tại của ClickDetector trước khi thực hiện
        local clickDetector = game.Workspace:FindFirstChild("MAP")
            and game.Workspace.MAP:FindFirstChild("DAK ISLAND [Lv 1350+]")
            and game.Workspace.MAP["DAK ISLAND [Lv 1350+]"]:FindFirstChild("Yoru V3 random")
            and game.Workspace.MAP["DAK ISLAND [Lv 1350+]"]["Yoru V3 random"]:FindFirstChild("ClickDetector")

        if clickDetector then
            fireclickdetector(clickDetector)
        else
            warn("Không tìm thấy ClickDetector!")
        end

        task.wait(0) -- Điều chỉnh thời gian chờ để giảm tải hệ thống
    end
end)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "quay wando(sea2)",
	Callback = function()
local UserInputService = game:GetService("UserInputService")
local running = true

task.spawn(function()
    while running do
        -- Kiểm tra tồn tại của ClickDetector trước khi thực hiện
        local clickDetector = game.Workspace:FindFirstChild("Platinum Town [ 2000 - 3000 ]")
            and game.Workspace["Platinum Town [ 2000 - 3000 ]"]:FindFirstChild("PlatinumMAP")
            and game.Workspace["Platinum Town [ 2000 - 3000 ]"].PlatinumMAP:FindFirstChild("GodBox")
            and game.Workspace["Platinum Town [ 2000 - 3000 ]"].PlatinumMAP.GodBox:FindFirstChild("ClickDetector")

        if clickDetector then
            fireclickdetector(clickDetector)
        else
            warn("Không tìm thấy ClickDetector!")
        end

        task.wait(0) -- Điều chỉnh thời gian chờ để giảm tải hệ thống
    end
end)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "quest",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "phải bấm vào npc nhận nv rồi bấm quest 1,nếu ko được thì 2 và 3"
})
--[[
Name = <string> - The name of the section.
]]
Tab:AddButton({
	Name = "quest 1",
	Callback = function()
-- Script 3: Quest Accept 1
while wait() do
    game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept1.RemoteEvent:FireServer()
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "quest 2",
	Callback = function()
-- Script 2: Quest Accept 2
while wait() do
    game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept2.RemoteEvent:FireServer()
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "quest 3",
	Callback = function()
-- Script 1: Quest Accept 3
while wait() do
    game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept3.RemoteEvent:FireServer()
end
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "bấm vào để dịch chuyển"
})

--[[
Name = <string> - The name of the section.
]]
Tab:AddButton({
	Name = "đảo khởi đầu",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.583771, 35.5632935, -511.945404)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo tuyết",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-915.918945, 33.7605095, 282.443604)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo cát",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-708.765259, 69.1108398, 1745.13916)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo trời",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4594.52393, 4279.44092, 474.423523)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "thị trấn end",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2223.75146, 36.3414612, 1965.90369)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo minh mama",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2569.90283, 51.1074524, -65.4458542)

      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo dark",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3465.68188, 66.2542191, 3718.19531)

      		print("button pressed")
  	end    
})
local Section = Tab:AddSection({
	Name = "Sea 2👇"
})

--[[
Name = <string> - The name of the section.
]]
Tab:AddButton({
	Name = "đảo kaido",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685, 87690, 789)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo platium",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1258, 87700, 3260)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo marine",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-160, 87750, -2010)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo nickbeo",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1600, 87700, 637)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo garou",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1600, 87700, 1073)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo sukuna",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1500, 87700, 2800)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo grab",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2040, 87700, 50)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo cid và geto",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1635, 87710, -1085)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
	Name = "đảo sun",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1603, 87700, -2191)
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "script được làm bởi:Hamter
})

--[[
Name = <string> - The name of the section.
]]
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Toggleui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BackgroundTransparency = 0.5
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Draggable = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0.2, 0)
Corner.Parent = Toggle

local Image = Instance.new("ImageLabel")
Image.Name = "Icon"
Image.Parent = Toggle
Image.Size = UDim2.new(1, 0, 1, 0)
Image.BackgroundTransparency = 1
Image.Image = "rbxassetid://129480702328610" 

local Corner2 = Instance.new("UICorner")
Corner2.CornerRadius = UDim.new(0.2, 0)
Corner2.Parent = Image

Toggle.MouseButton1Click:Connect(function()
  OrionLib:ToggleUi()
end)
