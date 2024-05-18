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

-- Переменная для хранения значения скорости
local speedhackvalue = 18

MD.createSlider("SpeedHack", {defualt = 18, max = 64, min = 16}, function(value)
	speedhackvalue = value
end)

-- Цикл для постоянного обновления WalkSpeed
spawn(function()
	while true do
		-- Проверка на существование игрока и его персонажа
		if game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedhackvalue
		end
		wait(0.1) -- Задержка в 0.1 секунды
	end
end)
