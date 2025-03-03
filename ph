local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
 
local win = DiscordLib:Window("Ngu ")
local serv = win:Server("hack riêng VNP 2⭐", "")
local drops = serv:Channel("Inf skill⭐")
local dis = nil
local aura = false
local autoQuest = false
local selectedQuest = ""

drops:Button( "inf skill", false, function(t) 
aura = t
for i = 1, 100 do
workspace.MAP["STARTER ISLAND [ Lv 1+ ]"]:GetChildren()[5]["Real Triple Katana"].Z.Fire:FireServer()
end
