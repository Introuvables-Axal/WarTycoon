if not debug.isvalidlevel then
    setreadonly(debug, false)
    getgenv().debug.isvalidlevel = function(s)
        local success = pcall(function()
            return debug.getinfo(s + 3)
        end)
        return success
    end
    setreadonly(debug, true)
end

if type(getgenv().key) ~= "string" then
	return game:GetService("Players").LocalPlayer:Kick("No key.")
end

local ScreenGui = Instance.new("ScreenGui")
local holder = Instance.new("Frame")
local main = Instance.new("Frame")
local bottom = Instance.new("Frame")
local rightpanel = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local usertext = Instance.new("TextLabel")
local daysleft = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local lastupd = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local leftpanel = Instance.new("ScrollingFrame")
local UICorner_4 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local button = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local button_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local top = Instance.new("Frame")
local exit = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local hider = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local gameclone = Instance.new("TextButton")
local img = Instance.new("ImageLabel")
local gamename = Instance.new("TextLabel")
local status = Instance.new("TextLabel")
local selectedgradient = Instance.new("UIGradient")

-- stupid ass gui2lua didn't add uistrokes to my shit :(
local uistrokes = {}
local function apply_uistroke(instance)
    local uistroke = Instance.new("UIStroke", instance)
    uistroke.Color = Color3.fromRGB(105, 65, 145)
end
--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

holder.Name = "holder"
holder.Parent = ScreenGui
holder.BackgroundColor3 = Color3.fromRGB(68, 42, 94)
holder.BorderColor3 = Color3.fromRGB(104, 64, 144)
holder.BorderSizePixel = 0
holder.Position = UDim2.new(0.261011422, 0, 0.331695318, 0)
holder.Size = UDim2.new(0, 420, 0, 260)
apply_uistroke(holder)

main.Name = "main"
main.Parent = holder
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Size = UDim2.new(1, 0, 1, 0)

bottom.Name = "bottom"
bottom.Parent = main
bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bottom.BackgroundTransparency = 1.000
bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
bottom.BorderSizePixel = 0
bottom.Position = UDim2.new(0, 0, 0, 25)
bottom.Size = UDim2.new(1, 0, 1, -25)

rightpanel.Name = "rightpanel"
rightpanel.Parent = bottom
rightpanel.BackgroundColor3 = Color3.fromRGB(54, 33, 74)
rightpanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
rightpanel.BorderSizePixel = 0
rightpanel.Position = UDim2.new(0.5, 5, 0, 10)
rightpanel.Size = UDim2.new(0.5, -15, 1, -60)
apply_uistroke(rightpanel)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = rightpanel

usertext.Name = "usertext"
usertext.Parent = rightpanel
usertext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
usertext.BackgroundTransparency = 1.000
usertext.BorderColor3 = Color3.fromRGB(0, 0, 0)
usertext.BorderSizePixel = 0
usertext.Position = UDim2.new(0, 20, 0, 20)
usertext.Size = UDim2.new(1, -40, 0, 15)
usertext.Font = Enum.Font.SourceSansBold
usertext.Text = "Hello, discord_user."
usertext.TextColor3 = Color3.fromRGB(255, 255, 255)
usertext.TextSize = 14.000
usertext.TextXAlignment = Enum.TextXAlignment.Left
usertext.TextYAlignment = Enum.TextYAlignment.Top

daysleft.Name = "daysleft"
daysleft.Parent = rightpanel
daysleft.BackgroundColor3 = Color3.fromRGB(232, 175, 255)
daysleft.BackgroundTransparency = 0.850
daysleft.BorderColor3 = Color3.fromRGB(0, 0, 0)
daysleft.BorderSizePixel = 0
daysleft.Position = UDim2.new(0, 10, 0, 45)
daysleft.Size = UDim2.new(1, -20, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = daysleft

TextLabel.Parent = daysleft
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 10, 0, 0)
TextLabel.Size = UDim2.new(1, -20, 1, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "You have 1337 days left."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

lastupd.Name = "lastupd"
lastupd.Parent = rightpanel
lastupd.BackgroundColor3 = Color3.fromRGB(232, 175, 255)
lastupd.BackgroundTransparency = 0.850
lastupd.BorderColor3 = Color3.fromRGB(0, 0, 0)
lastupd.BorderSizePixel = 0
lastupd.Position = UDim2.new(0, 10, 0, 85)
lastupd.Size = UDim2.new(1, -20, 0, 30)

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = lastupd

TextLabel_2.Parent = lastupd
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 10, 0, 0)
TextLabel_2.Size = UDim2.new(1, -20, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Last update: 01.01.1970"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

leftpanel.Name = "leftpanel"
leftpanel.Parent = bottom
leftpanel.Active = true
leftpanel.BackgroundColor3 = Color3.fromRGB(54, 33, 74)
leftpanel.BorderColor3 = Color3.fromRGB(0, 0, 0)
leftpanel.BorderSizePixel = 0
leftpanel.Position = UDim2.new(0, 10, 0, 10)
leftpanel.Size = UDim2.new(0.5, -15, 1, -60)
leftpanel.CanvasSize = UDim2.new(0, 0, 0, 0)
apply_uistroke(leftpanel)

UICorner_4.CornerRadius = UDim.new(0, 2)
UICorner_4.Parent = leftpanel

UIListLayout.Parent = leftpanel
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

button.Name = "button"
button.Parent = bottom
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.BorderColor3 = Color3.fromRGB(0, 0, 0)
button.BorderSizePixel = 0
button.Position = UDim2.new(0, 10, 0, 195)
button.Size = UDim2.new(1, -20, 0, 30)
apply_uistroke(button)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 21, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 97, 6))}
UIGradient.Parent = button

button_2.Name = "button"
button_2.Parent = button
button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button_2.BackgroundTransparency = 1.000
button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
button_2.BorderSizePixel = 0
button_2.Size = UDim2.new(1, 0, 1, 0)
button_2.Font = Enum.Font.SourceSans
button_2.Text = "Load Script"
button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
button_2.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 2)
UICorner_5.Parent = button

top.Name = "top"
top.Parent = main
top.BackgroundColor3 = Color3.fromRGB(54, 33, 74)
top.BorderColor3 = Color3.fromRGB(104, 64, 144)
top.BorderSizePixel = 0
top.Size = UDim2.new(1, 0, 0, 25)
apply_uistroke(top)

exit.Name = "exit"
exit.Parent = top
exit.AnchorPoint = Vector2.new(1, 0)
exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exit.BackgroundTransparency = 1.000
exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
exit.BorderSizePixel = 0
exit.Position = UDim2.new(1, 0, 0, 0)
exit.Size = UDim2.new(0, 25, 0, 25)
exit.Font = Enum.Font.SourceSansBold
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(255, 255, 255)
exit.TextSize = 16.000

TextLabel_3.Parent = top
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 5, 0, 0)
TextLabel_3.Size = UDim2.new(1, -30, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "priv9.ru"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

hider.Name = "hider"
hider.Parent = holder
hider.BackgroundColor3 = Color3.fromRGB(68, 42, 94)
hider.BorderColor3 = Color3.fromRGB(0, 0, 0)
hider.BorderSizePixel = 0
hider.Position = UDim2.new(0, 0, 0, 26)
hider.Size = UDim2.new(1, 0, 1, -26)
hider.ZIndex = 2

ImageLabel.Parent = hider
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://138716393867058"

gameclone.Name = "gameclone"
gameclone.Parent = hider
gameclone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameclone.BackgroundTransparency = 1.000
gameclone.BorderColor3 = Color3.fromRGB(0, 0, 0)
gameclone.BorderSizePixel = 0
gameclone.Size = UDim2.new(1, -3, 0, 40)
gameclone.Visible = false
gameclone.Font = Enum.Font.SourceSans
gameclone.Text = ""
gameclone.TextColor3 = Color3.fromRGB(0, 0, 0)
gameclone.TextSize = 14.000

img.Name = "img"
img.Parent = gameclone
img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
img.BackgroundTransparency = 1.000
img.BorderColor3 = Color3.fromRGB(0, 0, 0)
img.BorderSizePixel = 0
img.Position = UDim2.new(0, 5, 0, 5)
img.Size = UDim2.new(0, 30, 0, 30)
img.Image = "rbxassetid://90507979911671"

gamename.Name = "gamename"
gamename.Parent = gameclone
gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gamename.BackgroundTransparency = 1.000
gamename.BorderColor3 = Color3.fromRGB(0, 0, 0)
gamename.BorderSizePixel = 0
gamename.Position = UDim2.new(0, 45, 0, 3)
gamename.Size = UDim2.new(1, -45, 0, 20)
gamename.Font = Enum.Font.SourceSansBold
gamename.Text = "aftemath: full"
gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
gamename.TextSize = 14.000
gamename.TextXAlignment = Enum.TextXAlignment.Left

status.Name = "status"
status.Parent = gameclone
status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
status.BackgroundTransparency = 1.000
status.BorderColor3 = Color3.fromRGB(0, 0, 0)
status.BorderSizePixel = 0
status.Position = UDim2.new(0, 45, 0, 17)
status.Size = UDim2.new(1, -45, 0, 20)
status.Font = Enum.Font.SourceSansBold
status.Text = "status: <font color=\"rgb(231, 50, 50)\">DETECTED</font>"
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.TextSize = 14.000
status.TextXAlignment = Enum.TextXAlignment.Left

selectedgradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 21, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 162, 0))}
selectedgradient.Name = "selectedgradient"
selectedgradient.Parent = hider

--[[ End of generation. ]]

do
	local function safejsonrequest(url, fallback)
		local success, data = pcall(request, {
			Url = url,
			Method = "GET"
		})
		if not success then
			return fallback
		end
		local success, json = pcall(game:GetService("HttpService").JSONDecode, game:GetService("HttpService"), data.Body)
		if not success then
			return fallback
		end
		return type(json) == "table" and json or fallback
	end
	local gamelist = safejsonrequest("https://raw.githubusercontent.com/Introuvables-Axal/WarTycoon/refs/heads/main/games.lua", {
		["5286749994"] = {
			{
				name = "aftermath: full",
				url = "https://raw.githubusercontent.com/Introuvables-Axal/WarTycoon/refs/heads/main/test.lua",
				confirm_load = [=[return true]=],
				status = "unknown",
				last_update = 0
			},
			{
				name = "aftermath: lite",
				url = "https://svo.monster/assets/aftermath_lite.lua",
				confirm_load = [=[return true]=],
				status = "unknown",
				last_update = 0
			}
		}
	})
	local keyinfo = safejsonrequest("https://svo.monster/keyinfo/"..getgenv().key, false)
	if (type(keyinfo) ~= 'table') then
		return game:GetService("Players").LocalPlayer:Kick("Couldn't get key info.")
	end
	if not keyinfo.success then
		return game:GetService("Players").LocalPlayer:Kick(keyinfo.message)
	end
	
	TextLabel.Text = `You have {keyinfo.key_ends < 0 and "inf" or math.floor((keyinfo.key_ends - os.time()) / 60 / 60 / 24)} days left`
	TextLabel_2.Text = `Last update: ...`
	usertext.Text = `Hello, {keyinfo.discord_user}`
	
	local selected_game;
	local grad1, grad2, grad3 =
		selectedgradient:Clone(),
		selectedgradient:Clone(),
		selectedgradient:Clone();
	
	local function change_selection()
		local clone = selected_game.clone
		grad1.Parent = clone.gamename
		grad2.Parent = clone.status
		grad3.Parent = clone.img
		TextLabel_2.Text = `Last update: {selected_game.last_update and os.date("%d.%m.%Y", selected_game.last_update) or "unknown"}`
	end
	

	
	if not gamelist[tostring(game.GameId)] then
		--TextLabel_2.Text = `Last update: ...`
		return game:GetService("Players").LocalPlayer:Kick("Game not detected.")
	end

	for _, info in gamelist[tostring(game.GameId)] do
		local gameclone = gameclone:Clone()
		info.clone = gameclone

		if not selected_game then
			selected_game = info
			change_selection()
		end

		gameclone.Parent = leftpanel
		gameclone.gamename.Text = info.name
		gameclone.status.Text = info.status
		gameclone.gamename.Size = UDim2.fromOffset(gameclone.gamename.TextBounds.X, gameclone.gamename.Size.Y.Offset)
		gameclone.status.Size = UDim2.fromOffset(gameclone.status.TextBounds.X, gameclone.status.Size.Y.Offset)

		gameclone.Visible = true

		gameclone.MouseButton1Click:Connect(function()
			selected_game = info
			change_selection()
		end)
	end

	-- animation code :v
	local TweenService = game:GetService("TweenService")
	
	local function fast_tween(obj, goal, time, dowait)
		local tween = TweenService:Create(obj, TweenInfo.new(time), goal)
		tween:Play()
		if dowait then tween.Completed:Wait() end
	end
	
	button_2.MouseButton1Click:Connect(function()
		if not selected_game then return end
		local confirm_load = loadstring(selected_game.confirm_load)()
		if confirm_load == true then
			fast_tween(hider, {Transparency = 0}, 0.3, true)
			local success, script = pcall(game.HttpGet, game, selected_game.url)
			if not (success and type(script) == "string") then
				return game:GetService("Players").LocalPlayer:Kick("Couldn't get the script from URL.")
			end
			local func = loadstring(script)
			if not func then
				return game:GetService("Players").LocalPlayer:Kick("Couldn't load the script.")
			end
			task.spawn(function()
				task.wait(1)
				ScreenGui:Destroy()
			end)
			func()
		else
			return game:GetService("Players").LocalPlayer:Kick(confirm_load)
		end
	end)
	
	fast_tween(hider.ImageLabel, {ImageTransparency = 1}, 0.3, true)
    hider.Visible = false
end
