local player = game.Players.LocalPlayer

if player.Name == "bao2008c" or player.Name == "kaobhh2334" or player.Name == "LzJaTUDSmXS" or player.Name == "geometrynub" or player.Name == "noobpet570" then
    print("nằm mơ đi em")
else
    player:Kick("MUA SCRIPT KO FREE")
end
local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("BÉO")

local serv = win:Server("Preview", "")

local btns = serv:Channel("click chữ c để hiện menu.")

local serv = win:Server("VNP 2 premium ⭐", "")
local drops = serv:Channel("hack free")
local dis = nil
local aura = false

drops:Button("kill aura ", function()
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
end)
drops:Button(
    "Get max level",
    function()
        DiscordLib:Notification("Notification", "Max level!", "Okay!")
    end
)
local drops = serv:Channel("Fast attack⚔️")
drops:Button("cid", function()
while wait() do
local args = {
    [1] = 8,
    [2] = 3
}

game:GetService("Players").LocalPlayer.PlayerGui.Tengen.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

drops:Button("Guts", function()
while wait() do
local args = {
    [1] = 8,
    [2] = 3
}

game:GetService("Players").LocalPlayer.PlayerGui.Zabuza.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

drops:Button("YoruV2", function()
while wait() do
local args = {
    [1] = 8,
    [2] = 3
}

game:GetService("Players").LocalPlayer.PlayerGui.YoruV2.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

drops:Button("yoruv3", function()
while wait() do
local args = {
    [1] = 8,
    [2] = 3
}

game:GetService("Players").LocalPlayer.PlayerGui.YoruV3.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

drops:Button("dragon combatv2",function()
while wait()do
local args = {
    [1] = 8,
    [2] = 1
}

game:GetService("Players").LocalPlayer.PlayerGui.Goku.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

drops:Button("geto",function()
while wait() do
local args = {
    [1] = 8,
    [2] = 1
}

game:GetService("Players").LocalPlayer.PlayerGui.Tengen.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end)

local drops = serv:Channel("Auto quest")
drops:Button("lưu ý cần nhấn vào npc nhiệm vụ trước!", function()
end)

drops:Button("quest 1", function()
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept1.RemoteEvent:FireServer()
end
end)

drops:Button("quest 2", function()
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept2.RemoteEvent:FireServer()
end
end)

drops:Button("quest 3", function()
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept3.RemoteEvent:FireServer()
end
end)
drops:Dropdown(
    "Pick me!",
    {"pride", "Special", "Cid", "Getou", "Grab"},
    function(pride)while true do
workspace.NPCS.Quest9.ClickPart.QuestTake.QuestTake.Accept3.RemoteEvent:FireServer()
wait(0.1)
end
        print(bool)
    end)

drops:Toggle("auto quest pride từ xa", false, function(t)
    aura = t
dis = tonumber(v)
workspace.NPCS.Quest9.ClickPart.QuestTake.QuestTake.Accept3.RemoteEvent:FireServer()
end)

drops:Toggle("auto armor ⭐", false, function(t)
    aura = t
dis = tonumber(v)
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
end)

drops:Toggle("lock mobs 🔒", false, function(t)
    aura = t
dis = tonumber(v)
end)
local drops = serv:Channel("auto farm")
drops:Toggle("auto farm kaido", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-154.796982, 87756.6406, 839.888611, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(0.1)
end
end)
drops:Toggle("auto quest kaido dell có ", false, function(t)
    aura = t
dis = tonumber(v)
end)
drops:Toggle("paw user", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.8761, 87748.0078, 3276.88403, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(0.1)
end
end)
drops:Toggle("auto quest paw", false, function(t)
    aura = t
dis = tonumber(v)
while true do
workspace.NPCS.Quest1.ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()
wait(0.4)
end
end)
drops:Toggle("nickbeo", false, function(t)
    aura = t
dis = tonumber(v)
workspace.NPCS.Quest5.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
end)
drops:Button("coming soon", function()
end)
    local drops = serv:Channel("auto secret ⭐")
drops:Toggle("auto secret x5", false, function(t)
    aura = t
while true do fireclickdetector(game:GetService("Workspace").MAP["STARTER ISLAND [ Lv 1+ ]"]["Secret Random"].RANDOM)
wait(0.001)
end
end)
drops:Dropdown(
    "select ⚪",
    {"secret sea 2", "Sando", "Yorus v3", "random 50k", "random 350k"},
    function(bool)
        print(bool)
    end)



local drops = serv:Channel("Teleport island⭐")
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



local drops = serv:Channel("pvp")
drops:Button("speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 80
end)


drops:Button("tele đến chỗ an toàn (khi sắp die)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.925415, 67.1156769, -532.647766, 0.997549474, 0, 0.0699642524, 0, 1, 0, -0.0699642524, 0, 0.997549474)
end)

local drops = serv:Channel("skill")
drops:Button("hoho", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)

drops:Button("skill", function()
end)
drops:Toggle("skill Z gojo", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game:GetService("Players").LocalPlayer.Character.Gojo.Z.Fire:FireServer()
wait(0.1)
end
end)
drops:Toggle("Skill X gojo ", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game:GetService("Players").LocalPlayer.Character.Gojo.X.Fire:FireServer()
wait(0.1)
end
end)
drops:Toggle("skill C gojo + bug black ", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game:GetService("Players").LocalPlayer.Character.Gojo.C.Fire:FireServer()
wait(0.1)
end
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

drops:Toggle("Auto Katana 🗡️", false, function(t)
    aura = t
    task.spawn(function()
        while aura do
            local children = workspace.MAP["STARTER ISLAND [ Lv 1+ ]"]:GetChildren()
            for _, v in pairs(children) do
                local katana = v:FindFirstChild("Real Triple Katana")
                if katana and katana:FindFirstChild("Z") and katana.Z:FindFirstChild("Fire") then
                    katana.Z.Fire:FireServer()
                end
            end
            wait(0.1)
        end
    end)
end)

local drops = serv:Channel("pint")
drops:Toggle("meles +1000", false, function(t)
    aura = t
dis = tonumber(v)
while true do
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Melee"
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))

wait(0.1)
end
end)
local drops = serv:Channel("Event fast attack xuyên off pvp")
drops:Toggle("giết bao2008c", false, function(t)
game:GetService("Players").Bao2008c.Backpack.Getou.Hitbox:FireServer()
end)
drops:Toggle("giết  vnpw locgaminh.", false, function(t)
while true do
game:GetService("Players").chaugiatanloczx.Backpack.Guts.Hitbox:FireServer()
wait(0.1)
end
end)
drops:Button("5m lvl hard", function()
end)
drops:Button("10m lvl super hard", function()
end)
drops:Button("15m level impossible", function()
end)
drops:Button("chụp lvl gửi cho anh tủn eo hoặc chon", function()
end)
drops:Button("lvl 1m get angel lvl 2m get 3 angel lvl 4m get geto lvl 10m get 3 cid", function()
end)
drops:Button("15m trở thành nhân viên đc test hack + đc một item bất kỳ bạn muốn ", function()
end)
local serv = win:Server("VNP 1⭐", "")
local drops = serv:Channel("auto farm")
drops:Button("code spy", function()
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)
drops:Toggle("bandit", false, function(t)
    aura = t
dis = tonumber(v)
while true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(668.926636, 43.1711922, -586.575562, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(0.5)
end
end)
drops:Toggle("auto quest bandit", false, function(t)
    aura = t
dis = tonumber(v)
while true do
workspace.NPCS.Quest1.ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()
wait(0.1)
end
end)
drops:Toggle("boss bandit", false, function(t)
    aura = t
dis = tonumber(v)
while true do
workspace.NPCS.Quest1.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
end)
drops:Toggle("boss snow", false, function(t)
    aura = t
dis = tonumber(v)

end)
drops:Toggle("auto quest boss snow", false, function(t)
    aura = t
dis = tonumber(v)
while true do
workspace.NPCS.Quest2.ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
wait(0.1)
end
end)

drops:Toggle("minmama", false, function(t)
    aura = t
dis = tonumber(v)

end)

drops:Toggle("auto quest minmama", false, function(t)
    aura = t
dis = tonumber(v)

end)
drops:Toggle("dark user", false, function(t)
    aura = t
dis = tonumber(v)

end)

drops:Button("admin inf yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
local drops = serv:Channel("more coming soon")
local serv = win:Server("A Credits", "")
local drops = serv:Channel("Credits")
drops:Button("tìm menu+thêm script (Chon)", function()
end)

drops:Button("người tạo fast attack(concubi99)", function()
end)
