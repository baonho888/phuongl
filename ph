local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()   
   local win = DiscordLib:Window("[Khánh Ngọc] ".." ")   
local per = game:GetService("Players").LocalPlayer.Name
 DiscordLib:Notification("Premium Stars ⭐ Share","Hello! ".."⭐"..per..".                                              ".." Thanks For Buy Premium ","Ok") 
 
  local serv = win:Server("Duy Hub", "")  
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
  
drops:Toggle("Anti Afk",false,function()
-- // Anti afk V2 \\--
task.spawn(function()
    if game.PlaceId ~= 9821272782 then
        getgenv().Press = function(v)
            return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
        end
        while true do wait(10.5)
            Press("RightBracket");
        end
    else
        while true do wait(10.5)
            keypress(0xDD);
        end
    end
end)
end)
 local inf = nil 
 drops:Toggle("Infjump", false, function(v) 
 if inf then inf:Disconnect() end 
 getgenv().infi = v 
 local Player = game.Players.LocalPlayer 
 if infi ~= inf then 
 inf = game.UserInputService.JumpRequest:Connect(function() 
 if infi == false then inf:Disconnect() end 
     Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) 
 wait() 
 end) 
 end 
 end) 
local Noclipping = nil 
 drops:Toggle("Noclip",false, function(v) 
 getgenv().Clip = v 
 wait(0.1) 
 local function NoclipLoop() 
 if Clip == true and game.Players.LocalPlayer.Character ~= nil then 
 for _, c in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
                                 if c:IsA("BasePart") and c.CanCollide == true and c.Name ~= floatName then 
 c.CanCollide = false 
 end 
 end 
 end 
 end 
 Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop) 

 if not getgenv().Clip then Noclipping:Disconnect() end 
 end) 
drops:Toggle("🌟 Auto Storage",false,function(l)
getgenv().au = l
while au do wait(.1)
equip()
if game.Players.LocalPlayer.storedata.store.Value == "Store" then
df(1) wait(1)
elseif game.Players.LocalPlayer.storedata.store1.Value == "Store" then
df(2) wait(1)
elseif game.Players.LocalPlayer.storedata.store2.Value == "Store" then
df(3) wait(1)
elseif game.Players.LocalPlayer.storedata.store3.Value == "Store" then
df(4) wait(1)
elseif game.Players.LocalPlayer.storedata.store4.Value == "Store" then
df(5) wait(1)
elseif game.Players.LocalPlayer.storedata.store5.Value == "Store" then
df(6) wait(1)
elseif game.Players.LocalPlayer.storedata.store6.Value == "Store" then
df(7) wait(1)
elseif game.Players.LocalPlayer.storedata.store7.Value == "Store" then
df(8) wait(1)
elseif game.Players.LocalPlayer.storedata.store8.Value == "Store" then
df(9) wait(1)
elseif game.Players.LocalPlayer.storedata.store9.Value == "Store" then
df(10) wait(1)
else Notif.New("Full DF❗",2)
end
if game.Players.LocalPlayer.storedata1.store.Value == "Store" then
sw(-5) wait(1)
elseif game.Players.LocalPlayer.storedata1.store1.Value == "Store" then
sw(-4) wait(1)
elseif game.Players.LocalPlayer.storedata1.store2.Value == "Store" then
sw(-3) wait(1)
elseif game.Players.LocalPlayer.storedata1.store3.Value == "Store" then
sw(-2) wait(1)
elseif game.Players.LocalPlayer.storedata1.store4.Value == "Store" then
sw(-1) wait(1)
elseif game.Players.LocalPlayer.storedata1.store5.Value == "Store" then
sw(0) wait(1)
elseif game.Players.LocalPlayer.storedata1.store6.Value == "Store" then
sw(1) wait(1)
elseif game.Players.LocalPlayer.storedata1.store7.Value == "Store" then
sw(2) wait(1)
elseif game.Players.LocalPlayer.storedata1.store8.Value == "Store" then
sw(3) wait(1)
elseif game.Players.LocalPlayer.storedata1.store9.Value == "Store" then
sw(4) wait(1)
else Notif.New("Full Sword❗",2)
end
if game.Players.LocalPlayer.storedata2.store.Value == "Store" then
ml(-5) wait(1)
elseif game.Players.LocalPlayer.storedata2.store1.Value == "Store" then
ml(-4) wait(1)
elseif game.Players.LocalPlayer.storedata2.store2.Value == "Store" then
ml(-3) wait(1)
elseif game.Players.LocalPlayer.storedata2.store3.Value == "Store" then
ml(-2) wait(1)
elseif game.Players.LocalPlayer.storedata2.store4.Value == "Store" then
ml(-1) wait(1)
elseif game.Players.LocalPlayer.storedata2.store5.Value == "Store" then
ml(0) wait(1)
elseif game.Players.LocalPlayer.storedata2.store6.Value == "Store" then
ml(1) wait(1)
elseif game.Players.LocalPlayer.storedata2.store7.Value == "Store" then
ml(2) wait(1)
elseif game.Players.LocalPlayer.storedata2.store8.Value == "Store" then
ml(3) wait(1)
elseif game.Players.LocalPlayer.storedata2.store9.Value == "Store" then
ml(4) wait(1)
else Notif.New("Full Melee❗",2)
end
end
end)
 drops:Toggle("⭐Touch Grabtools",false, function(l)  
  getgenv().grabtools = l  
  spawn(function()  
  while grabtools do wait()  
  pcall(function()  
  while grabtools do wait()  
  spawn(function()  
  for i, m in pairs(game.Workspace:GetChildren()) do  
  if m.ClassName == "Tool" and m:FindFirstChild("Handle") then  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, m.Handle, 1) wait()  
 firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, m.Handle, 0) wait()  
 if grabtools == false then break; end  
 end  
  end  
  end)  
  end  
  end)  
  end  
  end) 
 spawn(function() 
 while wait() do 
 if not getgenv().grabtools then break end 
 for i, v in pairs(game:GetService("Workspace"):GetChildren()) do 
 if v:FindFirstChild("ClickDetector") then 
 fireclickdetector(v.ClickDetector) wait() 
 end 
 end 
 end 
 end)
end)
drops:Toggle("Grabtools",false, function(I) 
 getgenv().autograb = I 
 spawn(function() 
 while autograb==true do wait() 
 if not getgenv().autograb then break end 
 local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") 
 for _, child in ipairs(workspace:GetChildren()) do 
 if game.Players.LocalPlayer.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then 
 humanoid:EquipTool(child) 
 end 
 end 
 end 
 end) 
 end)

local drops = serv:Channel("inf skill")

while true do
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "Fire" then
        v:FireServer("Realtriplekatana")
    end
end
wait(0.1)
end


local drops = serv:Channel("⭐Check+Fake ")
local check = nil
local plrlist = {}
local chanck = {"ginchao12","Evil_NinjaDevil","ZzKenKK1","Rx_features"}
function chan(se)
for i, v3 in pairs(game.Players:GetPlayers()) do
for i, v in pairs(chanck) do
if v3.Name == v then
se = v
print(se.."❌")
end
end
end
return se
end
for i, v in pairs(game.Players:GetPlayers()) do
table.insert(plrlist,v.Name)
end
local ck = drops:Dropdown("Check Item Storage",plrlist,function(a)
check = a
end)
drops:Button("Refresh Player",function()
ck:Clear()
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
ck:Add(v.Name)
end
end)
drops:Seperator()
drops:Button("Check Devil Fruit",function()
if check == nil then DiscordLib:Notification("Warning", "Choose Player", "Ok")
elseif check == chan() then
DiscordLib:Notification("Warning", "Can't Check❌", "Ok")
else
for i, c in pairs(game.Players[check].storedata:GetChildren()) do
Notif.New(c.Value,3)
end
end
end)
drops:Button("Check Armor And Weapon",function()
if check == nil then DiscordLib:Notification("Warning", "Choose Player", "Ok")
elseif check == chan() then
DiscordLib:Notification("Warning", "Can't Check❌", "Ok")
else
for i, c in pairs(game.Players[check].storedata1:GetChildren()) do
Notif.New(c.Value,3)
end
end
end)
drops:Button("Check Melee",function()
if check == nil then DiscordLib:Notification("Warning", "Choose Player", "Ok")
elseif check == chan() then
DiscordLib:Notification("Warning", "Can't Check❌", "Ok")
else
for i, c in pairs(game.Players[check].storedata2:GetChildren()) do
Notif.New(c.Value,3)
end
end
end)
drops:Button("Check Level And Beli",function()
local lvl = game.Players[check].Data.Levels.Value
local bl = game.Players[check].Data.Belis.Value
if check == nil then DiscordLib:Notification("Warning", "Choose Player", "Ok") 
elseif check == chan() then
DiscordLib:Notification("Warning", "Can't Check❌", "Ok")
else
DiscordLib:Notification("Noitification",game.Players[check].Name.." | Level:"..lvl.." | Beli:"..bl , "Ok")
end
end)
drops:Seperator()
drops:Textbox("Fake Level", "Type here!", true, function(t)
game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Data.Levels.Value = t
end)
end)
drops:Textbox("Fake Beli", "Type here!", true, function(t)
game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Data.Belis.Value = t
end)
end)
drops:Button("Get All Item But Fake",function()
Notif.New("Get All Item Fake",5)
-- Get all Melee
        for i,v in pairs(game:GetService("ReplicatedStorage").Library:GetChildren()) do
             local clonefake = v:Clone()
			clonefake.Parent = game.Players.LocalPlayer.Backpack
        end

-- Get all Sword
        for i,v in pairs(game:GetService("ReplicatedStorage").Library3:GetChildren()) do
             local clonefake = v:Clone()
			clonefake.Parent = game.Players.LocalPlayer.Backpack
        end

-- Get all Fruit
        for i,v in pairs(game:GetService("ReplicatedStorage").Library2:GetChildren()) do
            local clonefake = v:Clone()
		    clonefake.Parent = game.Players.LocalPlayer.Backpack
      
end
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

      local drops = serv:Channel("Weapon+Fast Attack")  
  local Weaponlist = {}  
  local Weapon = nil  
  for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
  if v:IsA("Tool") then  
          table.insert(Weaponlist,v.Name)  
  end  
  end  
  local drop = drops:Dropdown("Pick", Weaponlist, function(m)  
  for i, k in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
  if m == k.Name then  
          Weapon = m  
  if Weapon then  
  game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))  
  end  
  end  
  end  
  end)  
  drops:Button("Refresh Weapon", function()  
  drop:Clear()  
  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
  if v:IsA("Tool") then  
  drop:Add(v.Name)  
  end  
  end  
  end)  
  drops:Toggle("Auto Equip",false, function(a) 
 if Weapon == nil then 
 DiscordLib:Notification("Warning", "Choose Weapon to AutoEquip", "Ok") 
 elseif Weapon ~= nil then 
          AutoEquiped = a  
 end 
  end)  
  spawn(function()  
          while wait() do  
                  if AutoEquiped then  
                          pcall(function()  
                                  game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))  
                          end)  
                  end  
          end  
  end)  
  local UserInputService = game:GetService("UserInputService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
drops:Toggle("Fast Attack👆",false,function(h)
getgenv().tunhan = h
local tapCount = 0 -- biến để đếm số lần nhấn

UserInputService.TouchTapInWorld:Connect(function(position, processedByUI)
if getgenv().tunhan then
    local touchPosition = position
    tapCount = tapCount + 1
for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Hitbox") then
    v.Hitbox:FireServer(touchPosition, tapCount) 
end
end
end
end)
end)
drops:Toggle("⭐Fast Attack👆 X5",false,function(h)
getgenv().tunhan1 = h
local tapCount = 0 -- biến để đếm số lần nhấn

UserInputService.TouchTapInWorld:Connect(function(position, processedByUI)
if getgenv().tunhan1 then
    local touchPosition = position
    tapCount = tapCount + 5
for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Hitbox") then
    v.Hitbox:FireServer(touchPosition, tapCount) 
end
end
end
end)
end)
drops:Toggle("⭐Fast Attack👆 X15",false,function(h)
getgenv().tunhan2 = h
local tapCount = 0 -- biến để đếm số lần nhấn

UserInputService.TouchTapInWorld:Connect(function(position, processedByUI)
if getgenv().tunhan2 then
    local touchPosition = position
    tapCount = tapCount + 15
for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Hitbox") then
    v.Hitbox:FireServer(touchPosition, tapCount) 
end
end
end
end)
end)
drops:Toggle("⭐Fast Attack👆 X30",false,function(h)
getgenv().tunhan3 = h
local tapCount = 0 -- biến để đếm số lần nhấn

UserInputService.TouchTapInWorld:Connect(function(position, processedByUI)
if getgenv().tunhan3 then
    local touchPosition = position
    tapCount = tapCount + 30
for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Hitbox") then
    v.Hitbox:FireServer(touchPosition, tapCount) 
end
end
end
end)
end)
drops:Seperator()
drops:Label("Fast ActtackV2 No Choose") 
 drops:Toggle("Fast ActtackV2 ",false, function(e) 
 getgenv().auto = e 
 spawn(function() 
 while auto do wait() 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") and v:FindFirstChild("Hitbox") then 
 v.Hitbox:FireServer(90,90,90) 
 end 
 end 
 end 
 end) 
 end) 
 drops:Toggle("⭐Fast ActtackV2 x5",false, function(e) 
 getgenv().auto1 = e 
 for _ = 1,5 do 
 spawn(function() 
 while auto1 do wait() 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") and v:FindFirstChild("Hitbox") then 
 v.Hitbox:FireServer(90,90,90) 
 end 
 end 
 end 
 end) 
 end 
 end) 
 drops:Toggle("⭐Fast ActtackV2 x15",false, function(e) 
 getgenv().auto2 = e 
 for _ = 1,15 do 
 spawn(function() 
 while auto2 do wait() 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") and v:FindFirstChild("Hitbox") then 
 v.Hitbox:FireServer(90,90,90) 
 end 
 end 
 end 
 end) 
 end 
 end) 
 drops:Toggle("⭐Fast ActtackV2 x30",false, function(e) 
 getgenv().auto3 = e 
 for _ = 1,30 do 
 spawn(function() 
 while auto3 do wait() 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") and v:FindFirstChild("Hitbox") then 
 v.Hitbox:FireServer(90,90,90) 
 end 
 end 
 end 
 end) 
 end 
 end) 
 
  drops:Seperator()
 drops:Toggle("Fast ActtackV3 ",false, function(e) 
 getgenv().fasst = e 
 if not getgenv().fasst then game.Players.LocalPlayer.Character.Humanoid:UnequipTools() end 
 spawn(function() 
 while fasst do wait() 
 if not getgenv().fasst then break end 
 pcall(function() 
 for i, c in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do 
 if c:IsA("Tool") and c:FindFirstChild("Hitbox") then 
 c.Parent = game.Players.LocalPlayer.Character 
 else 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") then 
 v.Hitbox:FireServer(90,90,90) 
 if fasst == false then game.Players.LocalPlayer.Character.Humanoid:UnequipTools()  
 end 
 end 
 end 
 end 
 end 
 end) 
 end 
 end) 
 end) 
 drops:Toggle("⭐Fast ActtackV3 x5",false, function(e) 
 for _ = 1,5 do 
 getgenv().fastp = e 
 if not getgenv().fastp then game.Players.LocalPlayer.Character.Humanoid:UnequipTools() end 
 spawn(function() 
 while fastp do wait() 
 if not getgenv().fastp then break end 
 pcall(function() 
 for i, c in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do 
 if c:IsA("Tool") and c:FindFirstChild("Hitbox") then 
 c.Parent = game.Players.LocalPlayer.Character 
 else 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") then 
 v.Hitbox:FireServer(90,90,90) 
 if fastp == false then game.Players.LocalPlayer.Character.Humanoid:UnequipTools()  
 end 
 end 
 end 
 end 
 end 
 end) 
 end 
 end) 
 end 
 end) 
 drops:Toggle("⭐Fast ActtackV3 x15",false, function(e) 
 for _ = 1,15 do 
 getgenv().faste = e; 
 if not getgenv().faste then game.Players.LocalPlayer.Character.Humanoid:UnequipTools() end 
 spawn(function() 
 while faste do wait() 
 if not getgenv().faste then break end 
 pcall(function() 
 for i, c in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do 
 if c:IsA("Tool") and c:FindFirstChild("Hitbox") then 
 c.Parent = game.Players.LocalPlayer.Character 
 else 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") then 
 v.Hitbox:FireServer(90,90,90) 
 if faste == false then game.Players.LocalPlayer.Character.Humanoid:UnequipTools()  
 end 
 end 
 end 
 end 
 end 
 end) 
 end 
 end) 
 end 
 end) 
 drops:Toggle("⭐Fast ActtackV3 x30",false, function(e) 
 for _ = 1,30 do 
 getgenv().auto = e; 
 if not getgenv().auto then game.Players.LocalPlayer.Character.Humanoid:UnequipTools() end 
 spawn(function() 
 while auto do wait() 
 if not getgenv().auto then break end 
 pcall(function() 
 for i, c in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do 
 if c:IsA("Tool") and c:FindFirstChild("Hitbox") then 
 c.Parent = game.Players.LocalPlayer.Character 
 else 
 for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
 if v:IsA("Tool") then 
 v.Hitbox:FireServer(90,90,90) 
 if auto == false then game.Players.LocalPlayer.Character.Humanoid:UnequipTools()  
 end 
 end 
 end 
 end 
 end 
 end) 
 end 
 end) 
 end 
 end) 
 
    local drops = serv:Channel("Player")    
    local plrlist = {}    
    local plr = nil    
    for i, v in pairs(game:GetService("Players"):GetChildren()) do    
    table.insert(plrlist,v.Name)    
    end    
    local drop = drops:Dropdown("Choose Player", plrlist, function(m)    
    for i, b in pairs(game:GetService("Workspace"):GetChildren()) do    
    if m == b.name then    
    plr = m    
    end    
    end    
    end)    
    drops:Button("Refresh Player", function()    
    drop:Clear()    
    for i, v in pairs(game.Players:GetChildren()) do    
    if v:IsA("Player") then    
    drop:Add(v.Name)    
    end    
    end    
    end)    
    drops:Button("Teleport To Player", function()   
  if plr == nil then  
  DiscordLib:Notification("Warning", "Choose Player to Teleport Player", "Ok")  
  elseif plr ~= nil then  
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[plr].Character.HumanoidRootPart.CFrame   
  end  
   end)   
   drops:Button("Choose Player To Super Ultra Skill", function()   
  if plr == nil then  
  DiscordLib:Notification("Warning", "Choose Player to Super Ultra Skill", "Ok")  
  elseif plr ~= nil then  
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[plr].Character.HumanoidRootPart.CFrame   
   wait(0.1)   
   for i,v in pairs(game:GetDescendants()) do   
   if v:IsA("RemoteEvent") and v.Name == "Fire" then   
   v:FireServer()   
   end   
   end  
  end  
   end)   
drops:Toggle("Lock Screen🖥️",false,function(v)
if plr == nil then 
 DiscordLib:Notification("Warning", "Choose Player to Spectate, Need Loadmap", "Ok") 
 else
getgenv().look = v
game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().look then 
workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, game.Players[plr].Character.Head.CFrame.p)
end
end)
end
end)
drops:Toggle("🔗Lookat | No Shift Lock",false,function(v)
if plr == nil then 
 DiscordLib:Notification("Warning", "Choose Player to Spectate, Need Loadmap", "Ok") 
 else
getgenv().lookatv2 = v
local plrlo = game.Players[plr].Character
game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().lookatv2 then
if game.Players.LocalPlayer.Character.PrimaryPart and plrlo:FindFirstChild("HumanoidRootPart") then
				local chrPos=game.Players.LocalPlayer.Character.PrimaryPart.Position
				local tPos=plrlo:FindFirstChild("HumanoidRootPart").Position
				local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
				local newCF=CFrame.new(chrPos,modTPos)
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
end
end
end)
end
end)
  drops:Toggle("Spectate Player",false, function(h)  
  if plr == nil then  
  DiscordLib:Notification("Warning", "Choose Player to Spectate", "Ok")  
  elseif plr ~= nil then  
  getgenv().view = h  
  spawn(function()  
  while view do wait()  
  workspace.CurrentCamera.CameraSubject = game.Players[plr].Character  
  if view == false then  
  workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character  
  end  
  end  
  end)  
  end  
  end)  
  
   drops:Toggle("Auto Teleport Player",false, function(t)  
 if plr == nil then 
 DiscordLib:Notification("Warning", "Choose Player to Auto Teleport Player", "Ok") 
 elseif plr ~= nil then 
   local v2 = nil
getgenv().autele = t
if v2 then a:Disconnect() end
if autele ~= v2 then
v2 = game:GetService("RunService").RenderStepped:Connect(function()
if autele == false then v2:Disconnect() end game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[plr].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 6) wait()  
  end)  
  end  
  end
  end)  
  drops:Toggle("Auto Bring Player",false, function(a)  
 if plr == nil then 
 DiscordLib:Notification("Warning", "Choose Player to Bring Player", "Ok") 
 elseif plr ~= nil then 
  local v2 = nil
getgenv().bri = a
if v2 then a:Disconnect() end
if bri ~= v2 then
v2 = game:GetService("RunService").RenderStepped:Connect(function()
if bri == false then v2:Disconnect() end game.Players[plr].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) wait()  
  end)  
 end 
 end 
  end)  
  drops:Toggle("Auto Tween Bring Player",false, function(p)  
 if plr == nil then 
 DiscordLib:Notification("Warning", "Choose Player to Tween Bring Player", "Ok") 
 elseif plr ~= nil then 
  getgenv().autobri = p  
  spawn(function()  
  while autobri do wait()  
  pcall(function()  
  
  local ok = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)  
  local tween = game.TweenService:Create(game.Players[plr].Character.HumanoidRootPart, TweenInfo.new(), {CFrame = ok * CFrame.new(0, 5, 0)})   
  tween:Play() wait()  
  
  end)  
  end  
  end)  
 end 
  end)  
  drops:Toggle("Auto Bring All Player",false, function(t)  
  local v2 = nil
getgenv().brin = t
if v2 then a:Disconnect() end
if brin ~= v2 then
v2 = game:GetService("RunService").RenderStepped:Connect(function()
if brin == false then v2:Disconnect() end
 for i, v in pairs(game.Players:GetChildren()) do 
 local ok = game.Players.LocalPlayer.Name 
 if v.Name ~=  ok  then  
 v.Character.HumanoidRootPart.CFrame  = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7) wait() 
 end 
 end 
 end) 
 end 
  end)  
    drops:Label("Need Player In Your Sever")    
    drops:Toggle("⭐Super Ultra DAMGE Attack",false, function(v)    
    getgenv().autop = v;   
    spawn(function()    
    while autop do wait()   
   if not getgenv().autop then break end   
    for i, c in pairs(game.Players:GetChildren()) do    
    if c.ClassName == "Player" then    
    for i, f in pairs(c:GetChildren()) do    
    if f:IsA("Backpack") then    
    for i, a in pairs(f:GetDescendants()) do    
    if a:IsA("RemoteEvent") and a.Name == "Hitbox" then    
    a:FireServer(1, 0)    
   break;   
    end    
    end    
    end    
    end    
    end    
    end    
    end    
    end)    
    end)    
    
    drops:Button("Super Ultra Skill", function()    
    for i,v in pairs(game:GetDescendants()) do    
    if v:IsA("RemoteEvent") and v.Name == "Fire" then    
    v:FireServer()    
    end    
    end    
    end)    
    drops:Button("⭐Super Ultra Inf Legendary Skill Attack", function()     
    for i, v in pairs(game:GetDescendants()) do    
    if v:IsA("RemoteEvent") and v.Name ~= "Eat" then    
    v:FireServer()    
    end    
    end    
    for i, v in pairs(game:GetDescendants()) do    
    if v:IsA("RemoteEvent") and v.Name == "Fire" then    
    v:FireServer()    
    end    
    end   
    end)  
 local drops = serv:Channel("Hitbox | Beta") 
 
    local plrlist = {}  
  local plr = nil  
 local plr1 = nil 
 local plr2 = nil 
  for i, v in pairs(game:GetService("Players"):GetChildren()) do  
 if v.Name ~= game.Players.LocalPlayer.Name then 
  table.insert(plrlist,v.Name)  
  end  
 end 
 local drop1 = drops:Dropdown("Choose", plrlist, function(m)  
 plr = m 
 end) 
 local drop2 = drops:Dropdown("⭐Choose", plrlist, function(m)  
 plr1 = m 
 end) 
 local drop3 = drops:Dropdown("⭐Choose", plrlist, function(m)  
 plr2 = m 
 end) 
 drops:Button("Refresh", function() 
 drop1:Clear() 
 drop2:Clear() 
 drop3:Clear() 
 for i, v in pairs(game.Players:GetPlayers()) do 
 drop1:Add(v.Name) 
 drop2:Add(v.Name) 
 drop3:Add(v.Name) 
 end 
 end) 
  
  local drop = drops:Slider("Slide me!", 0, 2500, 0, function(t) 
 print(t) 
 _G.HeadSize = t 
 _G.Disabled = true 
 local function clip() 
 if _G.Disabled then 
 for i,v in pairs(game:GetService('Players'):GetPlayers()) do 
 if v.Name ~= game:GetService('Players').LocalPlayer.Name and v.Name == plr or v.Name == plr1 or v.Name == plr2 then 
 pcall(function() 
 v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
 v.Character.HumanoidRootPart.Transparency = 0.7 
 v.Character.HumanoidRootPart.CanCollide = false 
 end) 
 end 
 end 
 end 
 end 
 game:GetService('RunService').RenderStepped:connect(clip) 
 end) 
  
  drops:Button("Hitbox Refresh", function()  
  drop:Change("1")  
  end)  
 drops:Button("Hitbox 200", function()
drop:Change("200")
end)
  drops:Button("Hitbox 500", function() 
 drop:Change("500") 
 end) 
 drops:Button("Hitbox 2500", function() 
 drop:Change("2500") 
 end) 
  drops:Toggle("Hitbox All Player",false, function(v) 
 _G.HeadSize = 2500 
 _G.Disabled = v 
 local function hit() 
 if _G.Disabled then 
 for i,v in next, game:GetService('Players'):GetPlayers() do 
 if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
 pcall(function() 
 v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
 v.Character.HumanoidRootPart.Transparency = 0.7 
 v.Character.HumanoidRootPart.CanCollide = false 
 end) 
 end 
 end 
 else drop:Change("1") 
 end 
 end 
 game:GetService('RunService').RenderStepped:connect(hit) 
 end)
      local sldrs = serv:Channel("Walk Speed")   
local spd = nil
    local sldr = sldrs:Slider("Speeds", 0, 1000, 0, function(v)    
_G.speed = v
local function SPDs()
if _G.speed then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v    
end)
end
end
spd = game:GetService('RunService').RenderStepped:Connect(SPDs)
    end)    
    sldrs:Button("Speed 1000", function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 500 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("1000")    
end
end
end
    end)    
    sldrs:Button("Speed 500", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("500")    
end
end
end
    end)    
sldrs:Button("Speed 150", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 70 or v.WalkSpeed == 500 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("150")    
end
end
end
    end)    
    sldrs:Button("Speed 70", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 500 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("70")    
end
end
end
    end)    
    sldrs:Button("Speed 30", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 1000 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 500  then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("30")    
end
end
end
     end)    
sldrs:Button("Clear Speed", function(v)    
  spd:Disconnect()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
    local jm = nil
    local sldr = sldrs:Slider("JumpPower", 0, 1000, 0, function(v)    
_G.jpm = v
local function JPMs()
if _G.jpm then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = v    
end)
end
end
jm = game:GetService('RunService').RenderStepped:Connect(JPMs)    
end)    
    sldrs:Button("Jump 1000", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("1000")    
end
end
end
    end)    
    sldrs:Button("Jump 500", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 1000  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("500")    
end
end
end
    end)    
    sldrs:Button("Jump 300", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 1000 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("300")    
end
end
end
    end)    
    sldrs:Button("Jump 100", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 1000 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("100")    
end
end
end
    end)    
    sldrs:Button("Jump 70", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 1000 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("70")    
end
end
end
    end)   
sldrs:Button("Clear Jump", function(v)    
  jm:Disconnect()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40
end)
  local btns = serv:Channel("Island")  
  
  btns:Button("Kaido Island lv 2000", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(-708.903564, 87687.7266, 809.050476, 0.312079072, -9.11389222e-08, 0.950056136, -5.59602764e-09, 1, 9.77682433e-08, -0.950056136, -3.58279628e-08, 0.312079072)*CFrame.new(0, 5, 0)  
  end)
btns:Button("New Island lv 200000+", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2006.93689, 87696.8516, -59.0255051, 0.0173726063, -1.32637981e-08, -0.999849081, -3.41540378e-08, 1, -1.38592346e-08, 0.999849081, 3.43896538e-08, 0.0173726063)
end)
btns:Button("Sukuna Island lv 50000+", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1453.3580322265625, 87687.90625, 2773.896240234375)
end)
  btns:Button("Garou Island lv 20000+", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(1538.36804, 87694.3438, 1098.62891, -0.157189935, -1.33758995e-08, -0.987568378, -4.27874554e-08, 1, -6.73385481e-09, 0.987568378, 4.1197044e-08, -0.157189935)*CFrame.new(0, 5, 0)  
  end)  
  btns:Button("Nickbeo Island lv 7000+", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(-1622.85156, 87698.5469, 622.421936, -0.0521310531, -0, -0.998640239, -0, 1, -0, 0.998640239, 0, -0.0521310531)*CFrame.new(0, 10, 0)  
  end)  
  btns:Button("Marine Island lv 3000+", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(-152.420593, 87740.3125, -2115.33057, -0.995318413, 0, 0.0966506973, 0, 1, -0, -0.0966507122, 0, -0.995318294)*CFrame.new(0, 15, 0)  
  end)  
  btns:Button("Platinum Town lv 2000+", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(-1280.56299, 87693.3281, 3242.69702, -0.0239899773, -0, -0.999712229, -0, 1, -0, 0.999712229, 0, -0.0239899773)*CFrame.new(0,9, 0)  
  end)  
btns:Button("Atomic Island", function()  
          local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart  
          rootPart.CFrame = CFrame.new(1490.53455, 87707.8984, -1151.81458, 1, 0, 0, 0, 1, 0, 0, 0, 1)*CFrame.new(0,9, 0)  
  end)  
  local btns = serv:Channel("❕Misc")  
  btns:Label("Cre Hub:Grabiel Ynu")  
btns:Textbox("Bug Report", "Type!", true, function(t)
if t then
DiscordLib:Notification("Thông Báo","Tin Nhắn Đã Được Gửi.","Ok")
HttpService = game:GetService("HttpService") 
 Webhook_URL =  "https://discord.com/api/webhooks/1260054056626556940/WS-90jwx1wWuXHJUBbF_rjnRlEBHyc0NwhNBsAunNeIp3zdqBbks-UWe8AdJXdjfMn5J" 
 local ok = request or http_request or (http and http.request) or syn.request 
 ok( 
 { 
 Url = Webhook_URL, 
 Method = 'POST', 
 Headers = { 
 ['Content-Type'] = 'application/json' 
 }, 
 Body = HttpService:JSONEncode({ 
 ["content"] = "", 
 ["embeds"] = {{ 
 ["author"] = { 
 ["name"] = "", 
 ["icon"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=100&height=100&format=png" 
 }, 
 ["title"] = "🐛"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
 ["description"] = "{ ["..game.Players.LocalPlayer.DisplayName.."] | "..game.Players.LocalPlayer.Name.." } Vừa Báo Lỗi", 
 ["type"] = "rich", 
 ["color"] = tonumber(0xffffff), 
 ["fields"] = { 
 { 
 ["name"] = "Script Join:", 
 ["value"] = "game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,'"..game.JobId.."')", 
 ["inline"] = true }, 
 { 
 ["name"] = "Người Dùng ID:", 
 ["value"] = game:GetService("Players").LocalPlayer.UserId, 
 ["inline"] = true }, 
 { 
["name"] = "Nội Dung:", 
 ["value"] = t, 
 ["inline"] = true },
 {
 ["name"] = "Số tuổi của Account:", 
 ["value"] = game:GetService("Players").LocalPlayer.AccountAge, 
 ["inline"] = true } 
 } 
 }} 
 }) 
 })
else
DiscordLib:Notification("Thông Báo","Tin Nhắn Chưa Được Gửi Hãy Thử Lại...","Ok..")
end
end)

   btns:Button("Fast Mode", function()   
   local ToDisable = {   
           Textures = true,   
           VisualEffects = true,   
           Parts = true,   
           Particles = true,   
           Sky = true   
   }   
  
   local ToEnable = {   
           FullBright = false   
   }   
  
   local Stuff = {}   
  
   for _, v in next, game:GetDescendants() do   
           if ToDisable.Parts then   
                   if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then   
                           v.Material = Enum.Material.SmoothPlastic   
                           table.insert(Stuff, 1, v)   
                   end   
           end   
  
           if ToDisable.Particles then   
                   if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then   
                           v.Enabled = false   
                           table.insert(Stuff, 1, v)   
                   end   
           end   
  
           if ToDisable.VisualEffects then   
                   if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then   
                           v.Enabled = false   
                           table.insert(Stuff, 1, v)   
                   end   
           end   
  
           if ToDisable.Textures then   
                   if v:IsA("Decal") or v:IsA("Texture") then   
                           v.Texture = ""   
                           table.insert(Stuff, 1, v)   
                   end   
           end   
  
           if ToDisable.Sky then   
                   if v:IsA("Sky") then   
                           v.Parent = nil   
                           table.insert(Stuff, 1, v)   
                   end   
           end   
   end   
  
   game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")   
  
   for i, v in next, ToDisable do   
           print(tostring(i)..": "..tostring(v))   
   end   
  
   if ToEnable.FullBright then   
       local Lighting = game:GetService("Lighting")   
  
       Lighting.FogColor = Color3.fromRGB(255, 255, 255)   
       Lighting.FogEnd = math.huge   
       Lighting.FogStart = math.huge   
       Lighting.Ambient = Color3.fromRGB(255, 255, 255)   
       Lighting.Brightness = 5   
       Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)   
       Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)   
       Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)   
       Lighting.Outlines = true   
   end   
   end)  
  btns:Button("Rejoin", function()  
  local tps = game:GetService("TeleportService")  
                  local plr = game:GetService("Players").LocalPlayer  
                  tps:TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)  
  end)  
   btns:Button("Teleport To First Sea", function() 
 local tps = game:GetService("TeleportService") 
 DiscordLib:Notification("Wait a Sec","Teleport To First Sea...","...") 
 tps:Teleport("4587545091") 
 end) 
btns:Button("Change Server", function()
local httprequest = request or http_request or (http and http.request) or (fluxus.request and fluxus) or syn.request
PlaceId = game.PlaceId
if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)})
		local body = game:GetService("HttpService"):JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game:GetService("Players").LocalPlayer)
		else
			DiscordLib:Notification("Warning","Không Tìm Được Server, Hãy Thử Lại.","Ok")
end
		end
end)
