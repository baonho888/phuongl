local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
 
local win = DiscordLib:Window("Ngu ")
local serv = win:Server("hack riêng VNP 2⭐", "")
local drops = serv:Channel("Farm⭐")
local dis = nil
local aura = false
local autoQuest = false
local selectedQuest = ""
local drops = serv:Channel("inf skill")

while true do
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "Fire" then
        v:FireServer("Realtriplekatana")
    end
end
wait(0.1)
end

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
