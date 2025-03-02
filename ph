local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
 
local win = DiscordLib:Window("Ngu ")
local serv = win:Server("hack riêng VNP 2⭐", "")
local drops = serv:Channel("Farm⭐")
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

local drops = serv:Channel("inf skill")
while true do
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "Fire" then
        v:FireServer("Realtriplekatana")
    end
end
wait(0.1)
end)

drops:Toggle("hitbox all", false, function(t)
    aura = t
dis = tonumber(v)
_G.HeadSize = 5000
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

drops:Dropdown("Chọn Auto Quest", {
"Auto Quest 1 - Pride",
"Auto Quest 2 - Grab",
"Auto Quest 3 - Sukuna",
"Auto Quest 4 - Kaido",
"Auto Quest 5 - Nickbeo",
"Auto Quest 6 - Tengen",
"Auto Quest 7 - Paw",
"Auto Quest 8 - Cid",
"Auto Quest 9 - Geto",
"Auto Quest 10 - Magma"
}, function(selected)
selectedQuest = selected
end)
 
local toggle = drops:Toggle(" Auto Quest", false, function(t)
autoQuest = t
if autoQuest then
if selectedQuest == "Auto Quest 1 - Pride" then
while autoQuest do
workspace.NPCS.Quest9.ClickPart.QuestTake.QuestTake.Accept3.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 2 - Grab" then
while autoQuest do
workspace.NPCS.Quest7.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 3 - Sukuna" then
while autoQuest do
workspace.NPCS.Quest6.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 4 - Kaido" then
while autoQuest do
workspace.NPCS.Quest0.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 5 - Nickbeo" then
while autoQuest do
workspace.NPCS.Quest4.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 6 - Tengen" then
while autoQuest do
workspace.NPCS.Quest5.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 7 - Paw" then
while autoQuest do
workspace.NPCS.Quest1.ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 8 - Cid" then
while autoQuest do
workspace.NPCS.Quest8.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 9 - Geto" then
while autoQuest do
workspace.NPCS.Quest8.ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()
wait(0.1)
end
elseif selectedQuest == "Auto Quest 10 - Magma" then
while autoQuest do
workspace.NPCS.Quest2.ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()
wait(0.1)
end
end
end
end)

local drops = serv:Channel("Teleport island")
drops:Button("đảo khởi đầu", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.583771, 35.5632935, -511.945404)
end)
drops:Button("đảo tuyết", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-915.918945, 33.7605095, 282.443604)
end)
drops:Button( "đảo cát",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-708.765259, 69.1108398, 1745.13916)
end)
drops:Button("đảo trời", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4594.52393, 4279.44092, 474.423523)
end)
drops:Button("thị trấn end",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2223.75146, 36.3414612, 1965.90369)
end)
drops:Button("đảo minh mama", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2569.90283, 51.1074524, -65.4458542)
end)
drops:Button( "đảo dark", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3465.68188, 66.2542191, 3718.19531)
end)


drops:Button( "đảo kaido", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685, 87690, 789)
end)
drops:Button("đảo platium", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1258, 87700, 3260)
end)
drops:Button( "đảo marine",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-160, 87750, -2010)
end)
drops:Button( "đảo nickbeo", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1600, 87700, 637)
end)
drops:Button("đảo garou", function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1600, 87700, 1073)
end)
drops:Button( "đảo sukuna",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1500, 87700, 2800)
end)
drops:Button("đảo grab",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2040, 87700, 50)
end)		
drops:Button("đảo cid và geto",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1635, 87710, -1085)
end)
drops:Button( "đảo sun",  function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1603, 87700, -2191)
end)
