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

while true do
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "Fire" then
        v:FireServer("Realtriplekatana")
    end
end
wait(0.1)
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

while true do
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "Fire" then
        v:FireServer("Realtriplekatana")
    end
end
wait(0.1)
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

