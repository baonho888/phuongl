local player = game.Players.LocalPlayer

if player.Name == "bao2008c" or player.Name == "duymakemoney48" or player.Name == " " or player.Name == "" or player.Name == "" then
    print("nằm mơ đi em")
else
    player:Kick("MUA SCRIPT KO FREE")
end

local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()   
   local win = DiscordLib:Window("[Khánh Ngọc] ".." ")   
local per = game:GetService("Players").LocalPlayer.Name
 DiscordLib:Notification("Premium Stars ⭐ Share","Hello! ".."⭐"..per..".                                              ".." Thanks For Buy Premium ","Ok") 
 
  local serv = win:Server("NangNang Hub", "")   
local drops = serv:Channel("❕Farm+LocalPlayer")  
  local questlist = {}
local quest = nil   
for i, v in pairs(Workspace["NPC DAMAGE"]:GetChildren()) do
table.insert(questlist, v.Name)
end
   local drop = drops:Dropdown("Mob lv 2000 > lv 20000+", questlist, function(y)
for i, v in pairs(game.Workspace["NPC DAMAGE"]:GetChildren()) do
if y == v.Name then
quest = y
end
end
end)
drops:Button("OneShot⭐", function()

if quest == nil then
DiscordLib:Notification("Warning","Please Pick Mob","Ok")
else
local mob = game:GetService("Workspace")["NPC DAMAGE"][quest]
local boss = mob.HumanoidRootPart
local players = game.Players
local localPlayer = players.LocalPlayer
local localDistance = (localPlayer.Character.HumanoidRootPart.Position - boss.Position).Magnitude
-- Tạo một biến để lưu trữ khoảng cách nhỏ nhất
local minDistance = math.huge -- Một số rất lớn
    for i, v in ipairs(players:GetPlayers()) do
        if v ~= localPlayer then
            local playerDistance = (v.Character.HumanoidRootPart.Position - boss.Position).Magnitude
            -- Cập nhật biến minDistance nếu có người chơi khác gần hơn
            if playerDistance < minDistance then
                minDistance = playerDistance
            end
        end
    end
    -- So sánh khoảng cách của bạn với biến minDistance
    if localDistance > minDistance then
DiscordLib:Notification("Warning","Thằng"..v.Name.."Gần Mob Hơn Bạn","Ok")
else
if mob:FindFirstChild("Enemy") then
while task.wait() do
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius", math.huge)
mob.Enemy.Health = 0 end
else
          game.StarterGui:SetCore("SendNotification", { -- SHOW NOTIFIACTION 
                 Title = "TestHub", -- NOTIFICACTION LABEL 
                 Text = "Phát Hiện Người Ở Gần Không Thể Oneshot", 
                 Icon = "", 
                 Duration = 1 
             }) 
    end
end
end
end)
local skill = cc
local sk = drops:Dropdown("Chọn Skill",{"Z","X","C","V","B","N"}, function(b)
cc = b
end)
drops:Toggle("Tự Động Skill Khi Boss Chết",false,function(e)
if cc then
getgenv().q = e
while q  do wait(.5)
repeat wait() until game:GetService("Workspace")["NPC DAMAGE"][quest].Enemy.Health == 0 or getgenv().q == false
spawn(function()
for i, v in pairs(game.Players.LocalPlayer.Backpack: GetDescendants()) do
if v:IsA("RemoteEvent") and v.Parent.Name == cc then
pcall(function()
v:FireServer()
end)
end
end
end)
end
else
DiscordLib:Notification("❗ ","Chọn Skill","Ok")
end
end)
drops:Toggle("Auto Kill",false,function(v)
if quest then
_G.Autob = v
while _G.Autob do task.wait()
pcall(function()
if game:GetService("Workspace")["NPC DAMAGE"][quest].Enemy.Health > 0 then
game:GetService("Workspace")["NPC DAMAGE"][quest].HumanoidRootPart.Anchored = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["NPC DAMAGE"][quest].HumanoidRootPart.CFrame*CFrame.new(0,0,11)
for i, c in pairs(game.Players.LocalPlayer.Backpack: GetChildren()) do
if c:FindFirstChild("Hitbox") then
c:WaitForChild("Hitbox"):FireServer()
end
end
else
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["NPC DAMAGE"][quest].Head.CFrame*CFrame.new(0,1,-13)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["NPC DAMAGE"][quest].Head.CFrame*CFrame.new(0,4,13)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["NPC DAMAGE"][quest].Head.CFrame*CFrame.new(-13,1,0)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["NPC DAMAGE"][quest].Head.CFrame*CFrame.new(10,2,0)
end
end)
end
else
DiscordLib: Notification("❗","Chọn Boss","Ok")
end
end)
drops:Toggle("❕ Auto OneShot⭐",false, function(v)
getgenv().oneshot = v
if quest == nil then
DiscordLib:Notification("Warning","Please Pick Mob","Ok")
else
while oneshot do wait(0.5)
pcall(function()
local mob = game:GetService("Workspace")["NPC DAMAGE"][quest]
if mob:FindFirstChild("Enemy") then
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius", math.huge)
game:GetService("Workspace")["NPC DAMAGE"][quest].Enemy.Health = 0
else
DiscordLib:Notification("Warning","Xảy Ra Lỗi","Ok")
end
end)
end
end
end)
drops:Toggle("Auto Bring",false, function(a)
if quest == nil then   
   DiscordLib:Notification("Warning", "Choose Mob To Auto Bring", "Ok")   
   elseif quest ~= nil then   
 local v2 = nil 
  getgenv().bringmob2 = a
 if v2 then v2:Disconnect() end 
if bringmob2 ~= v2 then
v2 = game:GetService("RunService").RenderStepped:Connect(function()
if bringmob2==false then v2:Disconnect()  end
game.Workspace["NPC DAMAGE"][quest].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,5.5,0)
if quest == "Kaidou" then
game.Workspace["NPC DAMAGE"][quest].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,3,-13)
elseif quest == "Garou" then
game.Workspace["NPC DAMAGE"][quest].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,6.6,0)
elseif quest == "Tango" then
game.Workspace["NPC DAMAGE"][quest].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,6.6,0)
end
end)
end
end
end)   
   drops:Toggle("Auto Quest",false, function(questauto)   
   if quest == nil then   
   DiscordLib:Notification("Warning", "Choose Mob To Auto Quest", "Ok")   
   elseif quest ~= nil then   
   getgenv().autoquest = questauto   
   spawn(function()   
   while autoquest do wait()   
   pcall(function()   
   if quest == "Kaidou" then   
   game:GetService("Workspace")["Kaido Island [ Lv 1000+ ]"]["KAIDOUU QUESTTT"].ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()   
   elseif quest == "Paw User" and quest ~= nil then   
   game:GetService("Workspace")["Platinum Town [ 2000 - 3000 ]"]["Platinum npc"]["QUEST DARK"].ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()   
   elseif quest == "King Vampire" and quest ~= nil then   
   game:GetService("Workspace")["Platinum Town [ 2000 - 3000 ]"]["Platinum npc"]["QUEST DARK"].ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()   
   elseif quest == "Magma Admiral" and quest ~= nil then   
   game:GetService("Workspace")["Marine Island [ 3000 - 5000 ]"]["QUEST ADMIRAL"].ClickPart.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()   
   elseif quest == "String Admiral" and quest ~= nil then   
   game:GetService("Workspace")["Marine Island [ 3000 - 5000 ]"]["QUEST ADMIRAL"].ClickPart.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()   
   elseif quest == "NickBeo" and quest ~= nil then   
   game:GetService("Workspace")["NickBeo Island [ 7000 + ]"]["Quest NickBeo"].Quest.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()   
   elseif quest == "Tango" and quest ~= nil then   
   game:GetService("Workspace")["NickBeo Island [ 7000 + ]"]["Quest Tango"].Quest.QuestTake.QuestTake.Accept1.RemoteEvent:FireServer()   
 elseif quest == "Garou" and quest ~= nil then   
  game:GetService("Workspace")["Star Island [ Lv 20000+ ]"]["Garou Quest [ Lv 20.000+ ]"].Quest.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
elseif quest == "Sukuna" and quest ~= nil then
game:GetService("Workspace")["Cursed Island [  50000+ ]"]["Sukuna Quest [ Lv 50.000+ ]"].Quest.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()
elseif quest == "Grab" and quest ~= nil then
game:GetService("Workspace")["Grab  Island [ Lv 100000+ ]"]["Grab Quest [ Lv 100.000+ ]"].Quest.QuestTake.QuestTake.Accept2.RemoteEvent:FireServer()   
   end   
   end)   
   end   
   end)   
   end   
   end)
drops:Toggle("🔒Lock Mob",false, function(l)   
   if quest == nil then   
   DiscordLib:Notification("Warning", "Choose Mob To Auto Quest", "Ok")   
   else
getgenv().lock = l
game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().lock then
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius", math.huge)
game:GetService("Workspace")["NPC DAMAGE"][quest].HumanoidRootPart.Anchored = true
else
game:GetService("Workspace")["NPC DAMAGE"][quest].HumanoidRootPart.Anchored = false
end
end)
end
end)

drops:Button("Base Sky", function()   

    local box = Instance.new("Part") box.Parent = workspace box.Anchored = true box.CanCollide = true box.Name = "Testhub" box.Size = Vector3.new(100000,2,1000000) box.Position = Vector3.new(100,100000,100) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Testhub.CFrame*CFrame.new(0,15,0)
end)
drops:Toggle("Esp 👁️", false, function(Value)
    -- Credits to Xiba
    getgenv().FlaggingESP = Value

    local function ApplyESP(v)
        if v.Character and v.Character:FindFirstChildOfClass('Humanoid') then
            v.Character.Humanoid.NameDisplayDistance = getgenv().FlaggingESP and 9e9 or 50
            v.Character.Humanoid.NameOcclusion = getgenv().FlaggingESP and "NoOcclusion" or "OccludeAll"
            v.Character.Humanoid.HealthDisplayDistance = getgenv().FlaggingESP and 9e9 or 50
            v.Character.Humanoid.HealthDisplayType = getgenv().FlaggingESP and "AlwaysOn" or "Never"
            v.Character.Humanoid.Health = v.Character.Humanoid.Health
        end
    end

    for i, v in pairs(game.Players:GetPlayers()) do
        ApplyESP(v)
    end

    game.Players.PlayerAdded:Connect(function(v)
        ApplyESP(v)
        v.CharacterAdded:Connect(function()
            task.wait(0.33)
            ApplyESP(v)
        end)
    end)
end) 

drops:Toggle("⭐Auto Armor",false, function(o)  
  getgenv().autobuffhp = o  
  while autobuffhp do wait()  
  for i, v in pairs(game.Players:GetDescendants()) do  
  if v:IsA("RemoteEvent") and v.Name == "Fire" and v:FindFirstChild("Armor") then  
  v:FireServer()  
  if autobuffhp == false then break; end  
  end  
  end  
  end  
  end)  

drops:Toggle("auto farm money work sea 1", false, function(t)
    aura = t
dis = tonumber(v)
for i = 1, 50000 do
fireclickdetector(workspace.MAP["Event Island"].EventBox.ClickDetector)
end
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

 local tgls = serv:Channel("Stats+Auto Skill") 
  tgls:Toggle("Auto Sword",false, function(z) 
 getgenv().autostats = z 
 spawn(function() 
 while autostats do wait() 
for i = 1,50000 do game:GetService("ReplicatedStorage"):FindFirstChild("StatSystem"):WaitForChild("Points"):FireServer("Sword") 
 wait() 
end
 end 
 end) 
 end) 
 tgls:Toggle("Auto Fruit",false, function(z) 
 getgenv().autostatsf = z 
 spawn(function() 
 while autostatsf do wait() 
for i = 1,50000 do game:GetService("ReplicatedStorage"):FindFirstChild("StatSystem"):WaitForChild("Points"):FireServer("DevilFruit") 
 wait() 
end
 end 
 end) 
 end) 
 tgls:Toggle("Auto Health",false, function(z) 
 getgenv().autostatsh = z 
 spawn(function() 
 while autostatsh do wait() 
for i = 1,50000 do game:GetService("ReplicatedStorage"):FindFirstChild("StatSystem"):WaitForChild("Points"):FireServer("MaxHealth") 
 wait() 
end
 end 
 end) 
 end) 
 tgls:Toggle("Auto Melee",false, function(z) 
 getgenv().autostatsm = z 
 spawn(function() 
 while autostatsm == true do wait() 
for i = 1,50000 do game:GetService("ReplicatedStorage"):FindFirstChild("StatSystem"):WaitForChild("Points"):FireServer("Melee") 
 wait() 
end
 end 
 end) 
 end)
tgls:Seperator()
tgls:Toggle("Auto Z",false, function(z)
getgenv().autoskill = z
while autoskill do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.Z:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
tgls:Toggle("Auto X",false, function(z)
getgenv().autoskillx = z
while autoskillx do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.X:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
tgls:Toggle("Auto C",false, function(z)
getgenv().autoskillc = z
while autoskillc do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.C:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
tgls:Toggle("Auto V",false, function(z)
getgenv().autoskillv = z
while autoskillv do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.V:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
tgls:Toggle("Auto B",false, function(z)
getgenv().autoskillf = z
while autoskillf do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.B:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
tgls:Toggle("Auto N",false, function(z)
getgenv().autoskilln = z
while autoskilln do wait()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Z") then
for i,c in pairs(v.N:GetChildren()) do
if c:IsA("RemoteEvent") then
c:FireServer()
end
end
end
end
end)
end
end)
     
local tgls = serv:Channel("SHOP")
local bb = nil
local tgl = tgls:Dropdown("Choose Bag", {"Beli 100k [ sell ]","Beli 1m [ sell ]","Beli 10M [ sell ]","Beli 100M [ sell ]",} , function(y)
bb = y
end)
tgls:Toggle("Choose To Auto Buy Bag",false, function(a)
if bb == nil then
DiscordLib:Notification("Warning", "Choose To Buy Or Load Map", "Ok")
else
getgenv().BuyBag = a
while BuyBag do task.wait()
fireclickdetector(game:GetService("Workspace")["Star Island [ Lv 20000+ ]"].Bank[bb].ClickDetector)
end
end
end)
tgls:Toggle("⭐Auto Drop Item",false,function(v)
getgenv().drop = v
while drop do wait()
game:GetService("ReplicatedStorage"):WaitForChild("Save"):WaitForChild("MobileDrop"):FireServer()
end
end)
tgls:Toggle("Auto God Box X5⭐",false, function(v) 
getgenv().autogod = v 
 while autogod do task.wait()
 pcall(function()
for _ = 1,5 do
 fireclickdetector(game:GetService("Workspace")["Platinum Town [ 2000 - 3000 ]"].PlatinumMAP.GodBox.ClickDetector)
end
 end) 
 end 
 end) 
 tgls:Toggle("Auto Buy Fruit X5⭐",false, function(v) 
 getgenv().auto = v
 spawn(function() 
 while auto do task.wait() 
for _ = 1,5 do
 for i, v in pairs(game:GetService("Workspace")["Marine Island [ 3000 - 5000 ]"]:GetChildren()) do
if v:FindFirstChild("Meshes/DeadsAccessoryB") then
fireclickdetector(v.RANDOM)
end
end
end
 end 
 end)
 end) 
 tgls:Toggle("Auto Buy Secret Fruit X5⭐",false, function(v) 
 getgenv().auto1 = v
 spawn(function() 
 while auto1 do task.wait() 
for _ = 1,5 do
 fireclickdetector(game:GetService("Workspace")["Marine Island [ 3000 - 5000 ]"]["Secret Random"].RANDOM)
end
 end 
 end) 
 end) 
tgls:Button("Buy Air Cannon", function(v) 
if game:GetService("Workspace")["Kaido Island [ Lv 1000+ ]"]:FindFirstChild(" ")
then
 fireclickdetector(game:GetService("Workspace")["Kaido Island [ Lv 1000+ ]"][" "].ClickDetector)
else
DiscordLib:Notification("Warning", "Please Try Again", "Ok")
end
 end) 
tgls:Button("Buy Tengen", function(v) 
 for i, v in pairs(game:GetService("Workspace")["NickBeo Island [ 7000 + ]"]:GetChildren()) do
if v:FindFirstChild("WSAPonytail") then
fireclickdetector(v.ClickDetector)
end
end
 end) 
tgls:Button("Buy Saitama", function(v) 
for i, v in pairs(game:GetService("Workspace")["NickBeo Island [ 7000 + ]"]:GetChildren()) do
if v:FindFirstChild("Ultra-Fabulous Hair") then
fireclickdetector(v.ClickDetector)
end
end
 end) 
tgls:Button("Buy Deku", function() 
 for i, v in pairs(game:GetService("Workspace")["Star Island [ Lv 20000+ ]"]:GetChildren()) do
if v:FindFirstChild("Gojo Hair") then
fireclickdetector(v.ClickDetector)
end
end
 end) 
tgls:Button("Buy Garou", function()
 for i, v in pairs(game:GetService("Workspace")["Star Island [ Lv 20000+ ]"]:GetChildren()) do
if v:FindFirstChild("Y2K Punk Cat BeanieAccessory") then
fireclickdetector(v.ClickDetector)
end
end
 end) 
tgls:Button("Buy Sukuna",function()
fireclickdetector(game:GetService("Workspace")["Cursed Island [  50000+ ]"][" "].ClickDetector)
end)


local drops = serv:Channel("Fast Attack⭐")
 
drops:Dropdown("Chọn Fast Attack", {
"Fast Attack 1 - Noobsword",
"Fast Attack 2 - Garou",
"Fast Attack 3 - Gojo",
"Fast Attack 4 - Sukuna",
"Fast Attack 5 - Zabuza",
"Fast Attack 6 - Geto",
"Fast Attack 7 - Tengen",
"Fast Attack 8 - YoursV3",
"Fast Attack 9 - Escanor",
"Fast Attack 10 - Karate",
"Fast Attack 11 - YoruV2",
"Fast Attack 12 - Cid"
}, function(selected)
if selected == "Fast Attack 1 - Noobsword" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Noobsword.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 2 - Garou" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Garou.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 3 - Gojo" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Gojo.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 4 - Sukuna" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Sukuna.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 5 - Zabuza" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Zabuza.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 6 - Geto" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Geto.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 7 - Tengen" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Tengen.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 8 - YoursV3" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.YoursV3.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 9 - Escanor" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Escanor.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 10 - Karate" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Karate.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 11 - YoruV2" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.YoruV2.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
elseif selected == "Fast Attack 12 - Cid" then
while wait() do
local args = { [1] = 8, [2] = 3 }
game:GetService("Players").LocalPlayer.PlayerGui.Cid.Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
end
end
end)
 
local players = game:GetService("Players"):GetPlayers()
local playerNames = {}
 
for _, player in pairs(players) do
    table.insert(playerNames, player.Name)
end
 
local items = {}
for _, player in pairs(players) do
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            table.insert(items, tool.Name)
        end
    end
    for _, tool in pairs(player.Character:GetChildren()) do
        if tool:IsA("Tool") then
            table.insert(items, tool.Name)
        end
    end
end
 
drops:Dropdown("fast attack v2 chọn xong chọn tool th đó là đc", playerNames, function(selectedPlayer)
    drops:Dropdown("Chọn Item", items, function(selectedItem)
        while wait() do
            game:GetService("Players")[selectedPlayer].Backpack[selectedItem].Hitbox:FireServer()
        end
    end)
end)
drops:Textbox("tên item muốn fast", "item", true, function(v)
    local playerName = v
    while wait() do
        local args = { [1] = 8, [2] = 3 }
        game:GetService("Players").LocalPlayer.PlayerGui[playerName].Skill1b.Z.TextButtonm1.Hitbox:FireServer(unpack(args))
    end
end)
drops:Toggle("fast attack V3⭐", false, function(t)
    aura = t
dis = tonumber(v)
while true do
local Players = game:GetService("Players")
 
for _, player in pairs(Players:GetPlayers()) do
    if player and player:FindFirstChild("Backpack") then
        local backpack = player.Backpack
 
        -- Lặp qua toàn bộ item trong Backpack
        for _, item in pairs(backpack:GetChildren()) do
            if item:IsA("Tool") or item:IsA("Model") then -- Chỉ xét item hợp lệ
                for _, property in pairs(item:GetChildren()) do
                    if property:IsA("RemoteEvent") then -- Nếu item có thuộc tính FireServer
                        property:FireServer()
                        print(player.Name .. " đã kích hoạt " .. item.Name .. " -> " .. property.Name .. "!")
                    end
                end
            end
        end
    end
end
wait(0.2)
end
end)
local dropdown = drops:Dropdown("chỉ hoạt đông khi người trong setver có tool bạn chọn ", {
    "Kích hoạt Hitbox Gojo",
    "Kích hoạt Hitbox YorusV2",
    "Kích hoạt Hitbox Sukuna",
    "Kích hoạt Hitbox Garou",
    "Kích hoạt Hitbox Escanor",
    "Kích hoạt Hitbox Guts"
}, function(chosen)
    if chosen == "Kích hoạt Hitbox Gojo" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local Gojo = backpack:FindFirstChild("Gojo")
                    if Gojo and Gojo:FindFirstChild("Hitbox") then
                        Gojo.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox Gojo!")
                    end
                end
            end
        end
    elseif chosen == "Kích hoạt Hitbox YorusV2" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local YorusV2 = backpack:FindFirstChild("YorusV2")
                    if YorusV2 and YorusV2:FindFirstChild("Hitbox") then
                        YorusV2.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox YorusV2!")
                    end
                end
            end
        end
    elseif chosen == "Kích hoạt Hitbox Sukuna" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local Sukuna = backpack:FindFirstChild("Sukuna")
                    if Sukuna and Sukuna:FindFirstChild("Hitbox") then
                        Sukuna.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox Sukuna!")
                    end
                end
            end
        end
    elseif chosen == "Kích hoạt Hitbox Garou" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local Garou = backpack:FindFirstChild("Garou")
                    if Garou and Garou:FindFirstChild("Hitbox") then
                        Garou.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox Garou!")
                    end
                end
            end
        end
    elseif chosen == "Kích hoạt Hitbox Escanor" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local Escanor = backpack:FindFirstChild("Escanor")
                    if Escanor and Escanor:FindFirstChild("Hitbox") then
                        Escanor.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox Escanor!")
                    end
                end
            end
        end
    elseif chosen == "Kích hoạt Hitbox Guts" then
        while true do
            Wait(0.2)
            local Players = game:GetService("Players")
            for _, player in pairs(Players:GetPlayers()) do
                if player and player:FindFirstChild("Backpack") then
                    local backpack = player.Backpack
                    local Guts = backpack:FindFirstChild("Guts")
                    if Guts and Guts:FindFirstChild("Hitbox") then
                        Guts.Hitbox:FireServer()
                        print(player.Name .. " đã kích hoạt Hitbox Guts!")
                    end
                end
            end
        end
    end
end)
 
 
local drops = serv:Channel("check+fake⭐")
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


local Players = game:GetService("Players")

for _, player in pairs(Players:GetPlayers()) do
    if player and player:FindFirstChild("Backpack") then
        local backpack = player.Backpack

        -- Lặp qua toàn bộ item trong Backpack
        for _, item in pairs(backpack:GetChildren()) do
            if item:IsA("Tool") or item:IsA("Model") then -- Chỉ xét item hợp lệ
                for _, property in pairs(item:GetChildren()) do
                    if property:IsA("RemoteEvent") then -- Nếu item có thuộc tính FireServer
                        property:FireServer(RealTripleKatana)
                        print(player.Name .. " đã kích hoạt " .. item.Name .. " -> " .. property.Name .. "!")
                    end
                end
            end
        end
    end
end
end)

local drops = serv:Channel("Auto raid⭐")

    drops:Textbox("Distance aura", "Type a number", true, function(v)
    dis = tonumber(v)
    if not dis then
        DiscordLib:Notification("Error", "Please enter a valid number for Distance", "Ok")
    end
end)



drops:Toggle("Kill Aura Humanoid", false, function(t)
    aura = t
    if not dis then
        DiscordLib:Notification("Warning", "Choose Distance for Kill Aura", "Ok")
        return
    end
    while aura do
        wait(0.1)
        for _, v in pairs(game:GetService("Workspace")["NPC DAMAGE"]:GetDescendants()) do
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            local rootPart = v:FindFirstChild("HumanoidRootPart")
            if humanoid and rootPart and humanoid.Health > 0 and v.Name ~= game.Players.LocalPlayer.Name then
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude
                if distance <= dis then
                    pcall(function()
                        repeat
                            wait()
                            humanoid.Health = 0
                            rootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until humanoid.Health <= 0 or not aura
                    end)
                end
            end
        end
    end
end)

drops:Toggle("auto dark orb store đừng sài ⚠️", false, function(t)
    aura = t
dis = tonumber(v)
while true do
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Save.SavingEvent:FireServer(unpack(args))
wait(0.1)
end
end)
drops:Toggle("auto sjw store Đừng sài ⚠️", false, function(t)
    aura = t
dis = tonumber(v)
while true do
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Save.SavingEvent:FireServer(unpack(args))
wait(0.1)
end
end)
drops:Toggle("TP to raid", false, function(t)
    aura = t
dis = tonumber(v)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(578.97998, 33.2999954, -460.05011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
local sldr = sldrs:Slider("Tốc độ", 0, 150, 100, function(t) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t 
end)

sldrs:Button("Tốc độ 50", function() 
    sldr:Change(50) 
end)

sldrs:Button("Tốc độ 75", function() 
    sldr:Change(75) 
end)

sldrs:Button("Tốc độ 100", function() 
    sldr:Change(100) 
end)

sldrs:Button("Tốc độ 150", function() 
    sldr:Change(150) 
end)
