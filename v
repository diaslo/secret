local weaponData = {
	["gunName"] = "HK416",
	["Type"] = "Gun",
	["ShootRate"] = 800,
	["Bullets"] = 1,
	["LimbDamage"] = {35, 40},
	["TorsoDamage"] = {57, 62},
	["HeadDamage"] = {150,150},
	["DamageFallOf"] = 1,
	["Ignore_Protection"] = false,
	["BulletPenetration"] = 72,
	["MinDamage"] = 100
}



local modtable = {
	["AimInaccuracyDecrease"] = 1,
	["AimInaccuracyStepAmount"] = 1,
	["AimRM"] = 1,
	["DamageMod"] = 1,
	["MaxRecoilPower"] = 1,
	["MaxSpread"] = 1,
	["MinRecoilPower"] = 1,
	["MinSpread"] = 1,
	["MuzzleVelocity"] = 1,
	["RecoilPowerStepAmount"] = 1,
	["SpreadRM"] = 1,
	["WalkMult"] = 1,
	["Zoom2Value"] = 60,
	["ZoomValue"] = 60,
	["adsTime"] = 1,
	["camRecoilMod"] =    {
		["RecoilLeft"] = 1,
		["RecoilRight"] = 1,
		["RecoilTilt"] = 1,
		["RecoilUp"] = 1
	},
	["gunRecoilMod"] =    {
		["RecoilLeft"] = 1,
		["RecoilRight"] = 1,
		["RecoilTilt"] = 1,
		["RecoilUp"] = 1
	},
	["minDamageMod"] = 1
}

local Cheat = Instance.new("ScreenGui")
local plr = game.Players.LocalPlayer
local Frame = Instance.new("Frame")
local ACS1 = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local ACS2 = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local ACS3 = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local OPENBUTTON = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

-- Properties

Cheat.Name = "Cheat"
Cheat.Parent = game.CoreGui
Cheat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Cheat.IgnoreGuiInset = true
Cheat.Enabled = true

Frame.Parent = Cheat
Frame.BackgroundColor3 = Color3.new(0.301961, 0, 0)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.251012146, 0, 0.0751632974, 0)
Frame.Size = UDim2.new(0.497975707, 0, 0.109477125, 0)
Frame.Visible = false

ACS1.Name = "ACS1"
ACS1.Parent = Frame
ACS1.BackgroundColor3 = Color3.new(1, 1, 1)
ACS1.BorderColor3 = Color3.new(0, 0, 0)
ACS1.BorderSizePixel = 0
ACS1.Size = UDim2.new(0.304065049, 0, 1, 0)
ACS1.Font = Enum.Font.SourceSans
ACS1.Text = "ACS 1.7.5"
ACS1.TextColor3 = Color3.new(0, 0, 0)
ACS1.TextScaled = true
ACS1.TextSize = 14
ACS1.TextWrapped = true
ACS1.Visible = true

UITextSizeConstraint.Parent = ACS1
UITextSizeConstraint.MaxTextSize = 61

ACS2.Name = "ACS2"
ACS2.Parent = Frame
ACS2.BackgroundColor3 = Color3.new(1, 1, 1)
ACS2.BorderColor3 = Color3.new(0, 0, 0)
ACS2.BorderSizePixel = 0
ACS2.Position = UDim2.new(0.347967476, 0, 0, 0)
ACS2.Size = UDim2.new(0.304065049, 0, 1, 0)
ACS2.Font = Enum.Font.SourceSans
ACS2.Text = "ACS 2.0"
ACS2.TextColor3 = Color3.new(0, 0, 0)
ACS2.TextScaled = true
ACS2.TextSize = 14
ACS2.TextWrapped = true
ACS2.Visible = true

UITextSizeConstraint_2.Parent = ACS2
UITextSizeConstraint_2.MaxTextSize = 67

ACS3.Name = "ACS3"
ACS3.Parent = Frame
ACS3.BackgroundColor3 = Color3.new(1, 1, 1)
ACS3.BorderColor3 = Color3.new(0, 0, 0)
ACS3.BorderSizePixel = 0
ACS3.Position = UDim2.new(0.695934951, 0, 0, 0)
ACS3.Size = UDim2.new(0.304065049, 0, 1, 0)
ACS3.Font = Enum.Font.SourceSans
ACS3.Text = "MORE ACS"
ACS3.TextColor3 = Color3.new(0, 0, 0)
ACS3.TextScaled = true
ACS3.TextSize = 14
ACS3.TextWrapped = true
ACS3.Visible = true

UITextSizeConstraint_3.Parent = ACS3
UITextSizeConstraint_3.MaxTextSize = 53

OPENBUTTON.Name = "OPENBUTTON"
OPENBUTTON.Parent = Cheat
OPENBUTTON.BackgroundColor3 = Color3.new(0, 0, 0)
OPENBUTTON.BorderColor3 = Color3.new(0, 0, 0)
OPENBUTTON.BorderSizePixel = 0
OPENBUTTON.Position = UDim2.new(0.418623477, 0, 0, 0)
OPENBUTTON.Size = UDim2.new(0.161943316, 0, 0.035947714, 0)
OPENBUTTON.Font = Enum.Font.SourceSans
OPENBUTTON.Text = "ACS KILLER"
OPENBUTTON.TextColor3 = Color3.new(1, 0, 0)
OPENBUTTON.TextScaled = true
OPENBUTTON.TextSize = 14
OPENBUTTON.TextWrapped = true
OPENBUTTON.Visible = true

UICorner.Parent = OPENBUTTON

--[[ FUNCTIONS ]]

OPENBUTTON.MouseButton1Click:Connect(function()
	Frame.Visible = not Frame.Visible
end)

local acs1Active = false
local acs2Active = false
local acs3Active = false

local function check(acs)
	acs1Active = false
	acs2Active = false
	acs3Active = false
	acs = true
end

local function acs1()
	while acs1Active == true do
		for _, plr in ipairs(game.Players:GetPlayers()) do
			local plrCharacter = plr.Character
			if plrCharacter and plrCharacter:FindFirstChild("Humanoid") then
				game.ReplicatedStorage.GunSys.Eventos.Damage:FireServer(plrCharacter.Humanoid, 100, 0, 0)
			end
		end
		wait(3)
	end
end

local function acs2()
	local RS = game:GetService("ReplicatedStorage")
	local Engine 		= RS:WaitForChild("ACS_Engine")
	local Evt 			= Engine:WaitForChild("Events")
	local SKP_01 = Evt.AcessId:InvokeServer(plr.UserId)
	local SKP_02 = SKP_01.."-"..plr.UserId
	
	

	while acs2Active == true do
		for _, plrc in ipairs(game.Players:GetPlayers()) do
			if plrc ~= game.Players.LocalPlayer then
				local plrCharacter = plrc.Character
				print(weaponData)
				if plrCharacter and plrCharacter:FindFirstChild("Humanoid") then
					Evt.Damage:InvokeServer(game.Players.LocalPlayer.Backpack.HK416, plrCharacter.Humanoid, 5, 1, weaponData, modtable, nil, 0, SKP_02)
				end
			end
		end
		wait(3)
	end
end

local function acs3()
	while acs3Active == true do
		for _, plr in ipairs(game.Players:GetPlayers()) do
			local plrCharacter = plr.Character
			if plrCharacter and plrCharacter:FindFirstChild("Humanoid") then
				game.ReplicatedStorage.ACS_Engine.Eventos.Damage:FireServer(plrCharacter.Humanoid, 100, 0, 0)
			end
		end
		wait(3)
	end
end

ACS1.MouseButton1Click:Connect(function()
	acs1Active = not acs1Active
	if acs1Active then
		spawn(acs1)
	end
end)

ACS2.MouseButton1Click:Connect(function()
	acs2Active = not acs2Active
	if acs2Active then
		spawn(acs2)
	end
end)

ACS3.MouseButton1Click:Connect(function()
	acs3Active = not acs3Active
	if acs3Active then
		spawn(acs3)
	end
end)
