print("hooked ScriptWare")

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/L1nuxX/ScriptWare/main/UILib.lua'))()

local window = lib.createWindow("ScriptWare", "ScriptWare", true)

local MD2 = window.createTab("MurderMustery2")
local Obbys = window.createTab("Ibbys")
local Other = window.createTab("Other")

Other.createButton("unhook", function()
	print("Unhoocked ScriptWare!")
  window.deleteWindow("window")
end)

MD2.createSlider("SpeedHack", {defualt = 10, max = 64, min = 1}, function(speedhackvalue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedhackvalue
end)
