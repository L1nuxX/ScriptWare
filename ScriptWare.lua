print("hooked ScriptWare")

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/L1nuxX/ScriptWare/main/UILib.lua'))()

local window = lib.createWindow("ScriptWare", "ScriptWare", true)

local MD = window.createTab("MurderMustery2")
local Obbys = window.createTab("Ibbys")
local Other = window.createTab("Other")

local Movement = MD.createSection("Movement", false)

Other.createButton("unhook", function()
	print("Unhoocked ScriptWare!")
  window.deleteWindow("window")
end)

MD.createSlider("SpeedHack", {defualt = 18, max = 64, min = 16}, function(speedhackvalue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedhackvalue
end)
