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

MD.createSlider("SpeedHack", {defualt = 18, max = 64, min = 16}, function(value)
	while true do
    print("Этот цикл будет выполняться бесконечно")
    wait(0.5)
    -- Добавьте сюда другие действия, которые должны выполняться бесконечно
end
end)
