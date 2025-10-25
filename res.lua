if shared.VapeExecuted then
	local discord_code = "voidware"
	shared.discord_code = discord_code
	local VERSION = "4.10"..(shared.VapePrivate and " PRIVATE" or "").." "..readfile("vape/commithash.txt"):sub(1, 6)
	local baseDirectory = (shared.VapePrivate and "vapeprivate/" or "vape/")
	local vapeAssetTable = {
		["vape/assets/AddItem.png"] = "rbxassetid://13350763121",
		["vape/assets/AddRemoveIcon1.png"] = "rbxassetid://13350764147",
		["vape/assets/ArrowIndicator.png"] = "rbxassetid://13350766521",
		["vape/assets/BackIcon.png"] = "rbxassetid://13350767223",
		["vape/assets/BindBackground.png"] = "rbxassetid://13350767577",
		["vape/assets/BlatantIcon.png"] = "rbxassetid://13350767943",
		["vape/assets/CircleListBlacklist.png"] = "rbxassetid://13350768647",
		["vape/assets/CircleListWhitelist.png"] = "rbxassetid://13350769066",
		["vape/assets/ColorSlider1.png"] = "rbxassetid://13350769439",
		["vape/assets/ColorSlider2.png"] = "rbxassetid://13350769842",
		["vape/assets/CombatIcon.png"] = "rbxassetid://13350770192",
		["vape/assets/DownArrow.png"] = "rbxassetid://13350770749",
		["vape/assets/DiscordIcon.png"] = "rbxassetid://13546311177",
		["vape/assets/ExitIcon1.png"] = "rbxassetid://13350771140",
		["vape/assets/FriendsIcon.png"] = "rbxassetid://13350771464",
		["vape/assets/HoverArrow.png"] = "rbxassetid://13350772201",
		["vape/assets/HoverArrow2.png"] = "rbxassetid://13350772588",
		["vape/assets/HoverArrow3.png"] = "rbxassetid://13350773014",
		["vape/assets/HoverArrow4.png"] = "rbxassetid://13350773643",
		["vape/assets/InfoNotification.png"] = "rbxassetid://13350774006",
		["vape/assets/KeybindIcon.png"] = "rbxassetid://13350774323",
		["vape/assets/LegitModeIcon.png"] = "rbxassetid://13436400428",
		["vape/assets/MoreButton1.png"] = "rbxassetid://13350775005",
		["vape/assets/MoreButton2.png"] = "rbxassetid://13350775731",
		["vape/assets/MoreButton3.png"] = "rbxassetid://13350776241",
		["vape/assets/NotificationBackground.png"] = "rbxassetid://13350776706",
		["vape/assets/NotificationBar.png"] = "rbxassetid://13350777235",
		["vape/assets/OnlineProfilesButton.png"] = "rbxassetid://13350777717",
		["vape/assets/PencilIcon.png"] = "rbxassetid://13350778187",
		["vape/assets/PinButton.png"] = "rbxassetid://13350778654",
		["vape/assets/ProfilesIcon.png"] = "rbxassetid://13350779149",
		["vape/assets/RadarIcon1.png"] = "rbxassetid://13350779545",
		["vape/assets/RadarIcon2.png"] = "rbxassetid://13350779992",
		["vape/assets/RainbowIcon1.png"] = "rbxassetid://13350780571",
		["vape/assets/RainbowIcon2.png"] = "rbxassetid://13350780993",
		["vape/assets/RightArrow.png"] = "rbxassetid://13350781908",
		["vape/assets/SearchBarIcon.png"] = "rbxassetid://13350782420",
		["vape/assets/SettingsWheel1.png"] = "rbxassetid://13350782848",
		["vape/assets/SettingsWheel2.png"] = "rbxassetid://13350783258",
		["vape/assets/SliderArrow1.png"] = "rbxassetid://13350783794",
		["vape/assets/SliderArrowSeperator.png"] = "rbxassetid://13350784477",
		["vape/assets/SliderButton1.png"] = "rbxassetid://13350785680",
		["vape/assets/TargetIcon.png"] = "rbxassetid://13350786128",
		["vape/assets/TargetIcon1.png"] = "rbxassetid://13350786776",
		["vape/assets/TargetIcon2.png"] = "rbxassetid://13350787228",
		["vape/assets/TargetIcon3.png"] = "rbxassetid://13350787729",
		["vape/assets/TargetIcon4.png"] = "rbxassetid://13350788379",
		["vape/assets/TargetInfoIcon1.png"] = "rbxassetid://13350788860",
		["vape/assets/TargetInfoIcon2.png"] = "rbxassetid://13350789239",
		["vape/assets/TextBoxBKG.png"] = "rbxassetid://13350789732",
		["vape/assets/TextBoxBKG2.png"] = "rbxassetid://13350790229",
		["vape/assets/TextGUIIcon1.png"] = "rbxassetid://13350790634",
		["vape/assets/TextGUIIcon2.png"] = "rbxassetid://13350791175",
		["vape/assets/TextGUIIcon3.png"] = "rbxassetid://13350791758",
		["vape/assets/TextGUIIcon4.png"] = "rbxassetid://13350792279",
		["vape/assets/ToggleArrow.png"] = "rbxassetid://13350792786",
		["vape/assets/UpArrow.png"] = "rbxassetid://13350793386",
		["vape/assets/UtilityIcon.png"] = "rbxassetid://13350793918",
		["vape/assets/WarningNotification.png"] = "rbxassetid://13350794868",
		["vape/assets/WindowBlur.png"] = "rbxassetid://13350795660",
		["vape/assets/WorldIcon.png"] = "rbxassetid://13350796199",
		["vape/assets/VapeIcon.png"] = "rbxassetid://13350808582",
		["vape/assets/RenderIcon.png"] = "rbxassetid://13350832775",
		["vape/assets/VapeLogo1.png"] = "rbxassetid://18391256757",
		["vape/assets/VapeLogo3.png"] = "rbxassetid://18391160743",
		["vape/assets/VapeLogo2.png"] = "rbxassetid://13350876307",
		["vape/assets/VapeLogo4.png"] = "rbxassetid://13350877564"
	}
	local getcustomasset = getsynasset or getcustomasset or function(location) return vapeAssetTable[location] or "" end
	local customassetcheck = (getsynasset or getcustomasset) and true
	local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request or function() end 
	local isfile = isfile or function(file)
		local suc, res = pcall(function() return readfile(file) end)
		return suc and res ~= nil
	end
	local loadedsuccessfully = false
getgenv().shared.GuiLibrary = {}
local GuiLibrary = getgenv().shared.GuiLibrary

GuiLibrary.Settings = {}
GuiLibrary.Profiles = {
	default = {Keybind = "", Selected = true}
}
GuiLibrary.RainbowSpeed = 0.6
GuiLibrary.GUIKeybind = "RightShift"
GuiLibrary.CurrentProfile = "default"
GuiLibrary.KeybindCaptured = false
GuiLibrary.PressedKeybindKey = ""
GuiLibrary.ToggleNotifications = false
GuiLibrary.Notifications = false
GuiLibrary.ToggleTooltips = false
GuiLibrary.ObjectsThatCanBeSaved = {["Gui ColorSliderColor"] = {Api = {Hue = 0.44, Sat = 1, Value = 1}}}
GuiLibrary.MobileButtons = {}
GuiLibrary.RainbowSliders = {}
	local runService = game:GetService("RunService")
	local inputService = game:GetService("UserInputService")
	local httpService = game:GetService("HttpService")
	local tweenService = game:GetService("TweenService")
	local guiService = game:GetService("GuiService")
	local textService = game:GetService("TextService")
	local translations = shared.VapeTranslation or {}
	local translatedlogo = false

	local function vapeGithubRequest(scripturl)
		if not isfile("vape/"..scripturl) then
			local suc, res = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/"..readfile("vape/commithash.txt").."/"..scripturl, true) end)
			assert(suc, res)
			assert(res ~= "404: Not Found", res)
			if scripturl:find(".lua") then res = "--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.\n"..res end
			writefile("vape/"..scripturl, res)
		end
		return readfile("vape/"..scripturl)
	end

	local function warningNotification(title, text, delay)
		local suc, res = pcall(function()
			local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/InfoNotification.png")
			frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
			return frame
		end)
		return (suc and res)
	end

	local function errorNotification(title, text, delay)
		local suc, res = pcall(function()
			local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/InfoNotification.png")
			frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 0, 0)
			return frame
		end)
		return (suc and res)
	end

	GuiLibrary.ReportBug = function(text, delay)
		errorNotification("VoidwareBugReport", text, delay or 10)
	end

	GuiLibrary.WLReport = function(text, delay)
		warningNotification("VoidwareWL", text, delay or 10)
	end

	local Platform = inputService:GetPlatform()
	task.spawn(function()
		GuiLibrary.ColorStepped = runService.RenderStepped:Connect(function()
			local suc, err = pcall(function()
				local col = (tick() * 0.25 * GuiLibrary.RainbowSpeed) % 1 
				for i, v in pairs(GuiLibrary.RainbowSliders) do 
					v.SetValue(col)
				end
			end)
			if err then
				GuiLibrary.ReportBug("On Error 1")
			else
				local col = (tick() * 0.25 * GuiLibrary.RainbowSpeed) % 1 
				for i, v in pairs(GuiLibrary.RainbowSliders) do 
					v.SetValue(col)
				end
			end
		end)
	end)

	local function randomString()
		local randomlength = math.random(10,100)
		local array = {}
		for i = 1, randomlength do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end

	local function RelativeXY(GuiObject, location)
		local x, y = location.X - GuiObject.AbsolutePosition.X, location.Y - GuiObject.AbsolutePosition.Y
		local x2 = 0
		local xm, ym = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
		x2 = math.clamp(x, 4, xm - 6)
		x = math.clamp(x, 0, xm)
		y = math.clamp(y, 0, ym)
		return x, y, x/xm, y/ym, x2/xm
	end

	local gui = Instance.new("ScreenGui")
	gui.Name = randomString()
	gui.DisplayOrder = 999
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	gui.OnTopOfCoreBlur = true
	gui.ResetOnSpawn = false
	gui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	GuiLibrary["MainGui"] = gui

	local vapeCachedAssets = {}
	
	local function downloadVapeAsset(path)
		if customassetcheck then
			if not isfile(path) then
				task.spawn(function()
					local textlabel = Instance.new("TextLabel")
					textlabel.Size = UDim2.new(1, 0, 0, 36)
					textlabel.Text = "Downloading "..path
					textlabel.BackgroundTransparency = 1
					textlabel.TextStrokeTransparency = 0
					textlabel.TextSize = 30
					textlabel.Font = Enum.Font.SourceSans
					textlabel.TextColor3 = Color3.new(1, 1, 1)
					textlabel.Position = UDim2.new(0, 0, 0, -36)
					textlabel.Parent = GuiLibrary.MainGui
					task.wait(0.2)
					textlabel:Destroy()
				end)
				local suc, req = pcall(function() return vapeGithubRequest(path:gsub("vape/assets", "assets")) end)
				if suc and req then
					writefile(path, req)
				else
					return ""
				end
			end
		end
		if not vapeCachedAssets[path] then vapeCachedAssets[path] = getcustomasset(path) end
		return vapeCachedAssets[path] 
	end

	GuiLibrary["UpdateHudEvent"] = Instance.new("BindableEvent")
	GuiLibrary["SelfDestructEvent"] = Instance.new("BindableEvent")
	GuiLibrary["LoadSettingsEvent"] = Instance.new("BindableEvent")

	local scaledgui = Instance.new("Frame")
	scaledgui.Name = "ScaledGui"
	scaledgui.Size = UDim2.new(1, 0, 1, 0)
	scaledgui.BackgroundTransparency = 1
	scaledgui.Parent = GuiLibrary["MainGui"]
	local clickgui = Instance.new("Frame")
	clickgui.Name = "ClickGui"
	clickgui.Size = UDim2.new(1, 0, 1, 0)
	clickgui.BackgroundTransparency = 1
	clickgui.BorderSizePixel = 0
	clickgui.BackgroundColor3 = Color3.fromRGB(79, 83, 166)
	clickgui.Visible = false
	clickgui.Parent = scaledgui
	local searchbarmain = Instance.new("Frame")
	searchbarmain.Size = UDim2.new(0, 220, 0, 37)
	searchbarmain.Position = UDim2.new(0.5, -110, 0, -23)
	searchbarmain.ClipsDescendants = false
	searchbarmain.ZIndex = 10
	searchbarmain.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	searchbarmain.Name = "SearchBar"
	searchbarmain.Parent = clickgui
	local searchbarchildren = Instance.new("Frame")
	searchbarchildren.Size = UDim2.new(1, 0, 1, -37)
	searchbarchildren.Position = UDim2.new(0, 0, 0, 37)
	searchbarchildren.BackgroundTransparency = 1
	searchbarchildren.ZIndex = 10
	searchbarchildren.Parent = searchbarmain
	local searchbaricon = Instance.new("ImageLabel")
	searchbaricon.BackgroundTransparency = 1
	searchbaricon.ZIndex = 10
	searchbaricon.Image = downloadVapeAsset("vape/assets/SearchBarIcon.png")
	searchbaricon.Size = UDim2.new(0, 14, 0, 14)
	searchbaricon.Position = UDim2.new(1, -32, 0, 10)
	searchbaricon.Parent = searchbarmain
	local searchbar = Instance.new("TextBox")
	searchbar.PlaceholderText = ""
	searchbar.Text = ""
	searchbar.ZIndex = 10
	searchbar.TextColor3 = Color3.fromRGB(121, 121, 121)
	searchbar.Size = UDim2.new(1, -56, 0, 37)
	searchbar.Font = Enum.Font.Gotham
	searchbar.TextXAlignment = Enum.TextXAlignment.Left
	searchbar.TextSize = 15
	searchbar.Position = UDim2.new(0, 56, 0, 0)
	searchbar.BackgroundTransparency = 1
	searchbar.Parent = searchbarmain
	local searchbarshadow = Instance.new("ImageLabel")
	searchbarshadow.AnchorPoint = Vector2.new(0.5, 0.5)
	searchbarshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	searchbarshadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	searchbarshadow.BackgroundTransparency = 1
	searchbarshadow.ZIndex = -1
	searchbarshadow.Size = UDim2.new(1, 6, 1, 6)
	searchbarshadow.ImageColor3 = Color3.new(0, 0, 0)
	searchbarshadow.ScaleType = Enum.ScaleType.Slice
	searchbarshadow.SliceCenter = Rect.new(10, 10, 118, 118)
	searchbarshadow.Parent = searchbarmain
	local searchbarround = Instance.new("UICorner")
	searchbarround.CornerRadius = UDim.new(0, 5)
	searchbarround.Parent = searchbarmain
	local searchbaricon2 = Instance.new("ImageButton")
	searchbaricon2.Size = UDim2.new(0, 29, 0, 16)
	searchbaricon2.AutoButtonColor = false
	searchbaricon2.Image = downloadVapeAsset("vape/assets/LegitModeIcon.png")
	searchbaricon2.BackgroundTransparency = 1
	searchbaricon2.Name = "LegitMode"
	searchbaricon2.ZIndex = 10
	searchbaricon2.Position = UDim2.new(0, 8, 0, 11)
	searchbaricon2.Parent = searchbarmain
	local searchbarborder = Instance.new("Frame")
	searchbarborder.Size = UDim2.new(0, 2, 0, 12)
	searchbarborder.BorderSizePixel = 0
	searchbarborder.ZIndex = 10
	searchbarborder.Position = UDim2.new(0, 43, 0, 13)
	searchbarborder.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
	searchbarborder.Parent = searchbarmain
	local OnlineProfilesBigFrame = Instance.new("Frame")
	OnlineProfilesBigFrame.Size = UDim2.new(1, 0, 1, 0)
	OnlineProfilesBigFrame.Name = "OnlineProfiles"
	OnlineProfilesBigFrame.BackgroundTransparency = 1
	OnlineProfilesBigFrame.Visible = false
	OnlineProfilesBigFrame.Parent = scaledgui
	local legitgui = Instance.new("Frame")
	legitgui.Name = "LegitGui"
	legitgui.Size = UDim2.new(1, 0, 1, 0)
	legitgui.BackgroundTransparency = 1
	legitgui.Visible = true
	legitgui.Parent = scaledgui
	local LegitModulesBigFrame = Instance.new("Frame")
	LegitModulesBigFrame.Size = UDim2.new(1, 0, 1, 0)
	LegitModulesBigFrame.Name = "LegitModules"
	LegitModulesBigFrame.BackgroundTransparency = 1
	LegitModulesBigFrame.Visible = false
	LegitModulesBigFrame.Parent = scaledgui
	local LegitModulesFrame = Instance.new("Frame")
	LegitModulesFrame.Size = UDim2.new(0, 700, 0, 389)
	LegitModulesFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LegitModulesFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	LegitModulesFrame.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
	LegitModulesFrame.Parent = LegitModulesBigFrame
local LegitModulesExitButton = Instance.new("ImageButton")
	LegitModulesExitButton.Name = "LegitModulesExitButton"
	LegitModulesExitButton.ImageColor3 = Color3.fromRGB(121, 121, 121)
	LegitModulesExitButton.Size = UDim2.new(0, 24, 0, 24)
	LegitModulesExitButton.AutoButtonColor = false
	LegitModulesExitButton.Image = downloadVapeAsset("vape/assets/ExitIcon1.png")
	LegitModulesExitButton.Visible = true
	LegitModulesExitButton.Position = UDim2.new(1, -31, 0, 8)
	LegitModulesExitButton.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
	LegitModulesExitButton.Parent = LegitModulesFrame
	LegitModulesExitButton.MouseButton1Click:Connect(function()
		LegitModulesBigFrame.Visible = false
		clickgui.Visible = true
		legitgui.Visible = not clickgui.Visible
		for i, v in pairs(legitgui:GetChildren()) do 
			if v:IsA("Frame") then v.BackgroundTransparency = legitgui.Visible and 0.8 or 1 end
		end
	end)
	local LegitModulesExitButtonround = Instance.new("UICorner")
	LegitModulesExitButtonround.CornerRadius = UDim.new(0, 16)
	LegitModulesExitButtonround.Parent = LegitModulesExitButton
	LegitModulesExitButton.MouseEnter:Connect(function()
		tweenService:Create(LegitModulesExitButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(60, 60, 60), ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	LegitModulesExitButton.MouseLeave:Connect(function()
		tweenService:Create(LegitModulesExitButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(26, 25, 26), ImageColor3 = Color3.fromRGB(121, 121, 121)}):Play()
	end)
	local LegitModulesFrameShadow = Instance.new("ImageLabel")
	LegitModulesFrameShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	LegitModulesFrameShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	LegitModulesFrameShadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	LegitModulesFrameShadow.BackgroundTransparency = 1
	LegitModulesFrameShadow.ZIndex = -1
	LegitModulesFrameShadow.Size = UDim2.new(1, 6, 1, 6)
	LegitModulesFrameShadow.ImageColor3 = Color3.new()
	LegitModulesFrameShadow.ScaleType = Enum.ScaleType.Slice
	LegitModulesFrameShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	LegitModulesFrameShadow.Parent = LegitModulesFrame
	local LegitModulesFrameIcon = Instance.new("ImageLabel")
	LegitModulesFrameIcon.Size = UDim2.new(0, 19, 0, 16)
	LegitModulesFrameIcon.Image = downloadVapeAsset("vape/assets/ProfilesIcon.png")
	LegitModulesFrameIcon.Name = "WindowIcon"
	LegitModulesFrameIcon.BackgroundTransparency = 1
	LegitModulesFrameIcon.Position = UDim2.new(0, 10, 0, 13)
	LegitModulesFrameIcon.ImageColor3 = Color3.fromRGB(200, 200, 200)
	LegitModulesFrameIcon.Parent = LegitModulesFrame
	local LegitModulesList = Instance.new("ScrollingFrame")
	LegitModulesList.BackgroundTransparency = 1
	LegitModulesList.Size = UDim2.new(0, 700, 0, 294)
	LegitModulesList.Position = UDim2.new(0, 14, 0, 81)
	LegitModulesList.CanvasSize = UDim2.new(0, 700, 0, 294)
	LegitModulesList.Parent = LegitModulesFrame
	local LegitModulesListGrid = Instance.new("UIGridLayout")
	LegitModulesListGrid.CellSize = UDim2.new(0, 163, 0, 114)
	LegitModulesListGrid.CellPadding = UDim2.new(0, 6, 0, 6)
	LegitModulesListGrid.Parent = LegitModulesList
	local LegitModulesFrameCorner = Instance.new("UICorner")
	LegitModulesFrameCorner.CornerRadius = UDim.new(0, 4)
	LegitModulesFrameCorner.Parent = LegitModulesFrame
	local notificationwindow = Instance.new("Frame")
	notificationwindow.BackgroundTransparency = 1
	notificationwindow.Active = false
	notificationwindow.Size = UDim2.new(1, 0, 1, 0)
	notificationwindow.Parent = GuiLibrary["MainGui"]
	local hoverbox = Instance.new("TextLabel")
	hoverbox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	hoverbox.Active = false
	hoverbox.Text = "  ".."Placeholder"
	hoverbox.ZIndex = 11
	hoverbox.TextColor3 = Color3.fromRGB(160, 160, 160)
	hoverbox.Font = Enum.Font.Arial
	hoverbox.TextXAlignment = Enum.TextXAlignment.Left
	hoverbox.TextSize = 14
	hoverbox.Visible = false
	hoverbox.Parent = clickgui
	local hoverround = Instance.new("UICorner")
	hoverround.CornerRadius = UDim.new(0, 5)
	hoverround.Parent = hoverbox
	local hoverbox2 = hoverbox:Clone()
	hoverbox2.ZIndex = -1
	hoverbox2.Size = UDim2.new(1, 2, 1, 2)
	hoverbox2.Text = ""
	hoverbox2.Visible = true
	hoverbox2.BackgroundColor3 = Color3.fromRGB(32, 35, 36)
	hoverbox2.Position = UDim2.new(0, -1, 0, -1)
	hoverbox2.Parent = hoverbox
	local hoverboxshadow = Instance.new("ImageLabel")
	hoverboxshadow.AnchorPoint = Vector2.new(0.5, 0.5)
	hoverboxshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	hoverboxshadow.Image = downloadVapeAsset("vape/assets/WindowBlur.png")
	hoverboxshadow.BackgroundTransparency = 1
	hoverboxshadow.ZIndex = -1
	hoverboxshadow.Visible = true
	hoverboxshadow.Size = UDim2.new(1, 6, 1, 6)
	hoverboxshadow.ImageColor3 = Color3.new(0, 0, 0)
	hoverboxshadow.ScaleType = Enum.ScaleType.Slice
	hoverboxshadow.SliceCenter = Rect.new(10, 10, 118, 118)
	hoverboxshadow.Parent = hoverbox
	local vertextsize = textService:GetTextSize("v"..VERSION, 19, Enum.Font.SourceSans, Vector2.new(99999, 99999))
	local vertext = Instance.new("TextLabel")
	vertext.Name = "Version"
	vertext.Size = UDim2.new(0, vertextsize.X, 0, 20)
	vertext.Font = Enum.Font.SourceSans
	vertext.TextColor3 = Color3.new(1, 1, 1)
	vertext.Active = false
	vertext.TextSize = 19
	vertext.BackgroundTransparency = 1
	vertext.Text = "v"..VERSION
	vertext.TextXAlignment = Enum.TextXAlignment.Left
	vertext.TextYAlignment = Enum.TextYAlignment.Top
	vertext.Position = UDim2.new(1, -(vertextsize.X) - 20, 1, -19)
	vertext.Parent = clickgui
	local vertext2 = vertext:Clone()
	vertext2.Position = UDim2.new(0, 1, 0, 1)
	vertext2.TextColor3 = Color3.fromRGB(0.42, 0.42, 0.42)
	vertext2.ZIndex = 0
	vertext2.Parent = vertext
	local modal = Instance.new("TextButton")
	modal.Size = UDim2.new(0, 0, 0, 0)
	modal.BorderSizePixel = 0
	modal.Text = ""
	modal.Modal = true
	modal.Parent = clickgui
	local hudgui = Instance.new("Frame")
	hudgui.Name = "HudGui"
	hudgui.Size = UDim2.new(1, 0, 1, 0)
	hudgui.BackgroundTransparency = 1
	hudgui.Visible = true
	hudgui.Parent = scaledgui
	GuiLibrary["MainBlur"] = {Size = 25}
	GuiLibrary["MainRescale"] = Instance.new("UIScale")
	GuiLibrary["MainRescale"].Parent = scaledgui
	GuiLibrary["MainRescale"]:GetPropertyChangedSignal("Scale"):Connect(function()
		vertext.Position = UDim2.new(1 / GuiLibrary["MainRescale"].Scale, -(vertextsize.X) - 20, 1 / GuiLibrary["MainRescale"].Scale, -25)
	end)

	local function dragGUI(gui, mod)
		task.spawn(function()
			local dragging
			local dragInput
			local dragStart = Vector3.new(0,0,0)
			local startPos
			local function update(input)
				local delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + (delta.X * (1 / GuiLibrary.MainRescale.Scale)), startPos.Y.Scale, startPos.Y.Offset + (delta.Y * (1 / GuiLibrary.MainRescale.Scale)))
				tweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
			end
			gui.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and (not mod or LegitModulesFrame.Visible) then
					dragStart = input.Position
					local delta = (dragStart - Vector3.new(gui.AbsolutePosition.X, gui.AbsolutePosition.Y, 0)) * (1 / GuiLibrary.MainRescale.Scale)
					if delta.Y <= 40 then
						dragging = mod and LegitModulesFrame.Visible or clickgui.Visible
						startPos = gui.Position
						
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								dragging = false
							end
						end)
					end
				end
			end)
			gui.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			inputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)
		end)
	end
local function createMobileButton(buttonapi, position)
	local touchButton = Instance.new("TextButton")
	touchButton.Size = UDim2.new(0, 40, 0, 40)
	touchButton.BackgroundTransparency = 0.5
	touchButton.BackgroundColor3 = buttonapi.Enabled and Color3.new(0, 0.7, 0) or Color3.new()
	touchButton.TextColor3 = Color3.new(1, 1, 1)
	touchButton.Text = buttonapi.Name
	touchButton.Font = Enum.Font.Gotham
	touchButton.TextScaled = true
	touchButton.AnchorPoint = Vector2.new(0.5, 0.5)
	touchButton.Position = UDim2.new(0, position.X, 0, position.Y)
	touchButton.Parent = GuiLibrary.MainGui
	touchButton.MouseButton1Click:Connect(function()
		buttonapi.ToggleButton(true)
		touchButton.BackgroundColor3 = buttonapi.Enabled and Color3.new(0, 0.7, 0) or Color3.new()
	end)
	local touchedButton = false
	touchButton.MouseButton1Down:Connect(function()
		touchedButton = true
		local touchtick = tick()
		local touchposition = inputService:GetMouseLocation()
		repeat 
			task.wait()
			if not touchedButton then break end
			touchedButton = (inputService:GetMouseLocation() - touchposition).Magnitude < 3
		until (tick() - touchtick) > 1 or not touchedButton
		if touchedButton then 
			local ind = table.find(GuiLibrary.MobileButtons, touchButton)
			if ind then table.remove(GuiLibrary.MobileButtons, ind) end
			touchButton:Destroy()
		end
	end)
	touchButton.MouseButton1Up:Connect(function()
		touchedButton = false
	end)
	local touchCorner = Instance.new("UICorner")
	touchCorner.CornerRadius = UDim.new(0, 1024)
	touchCorner.Parent = touchButton
	local touchTextLimit = Instance.new("UITextSizeConstraint")
	touchTextLimit.MaxTextSize = 16
	touchTextLimit.Parent = touchButton
	table.insert(GuiLibrary.MobileButtons, touchButton)
end

GuiLibrary.SaveSettings = function()
	if not loadedsuccessfully then return end
	writefile(baseDirectory.."Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt", httpService:JSONEncode(GuiLibrary.Profiles))
	local WindowTable = {}
	for i,v in pairs(GuiLibrary.ObjectsThatCanBeSaved) do
		if v.Type == "Window" then
			WindowTable[i] = {["Type"] = "Window", ["Visible"] = v.Object.Visible, ["Expanded"] = v["ChildrenObject"].Visible, ["Position"] = {v.Object.Position.X.Scale, v.Object.Position.X.Offset, v.Object.Position.Y.Scale, v.Object.Position.Y.Offset}}
		end
		local bypass = v.Api.Bypass and GuiLibrary.Settings or WindowTable
		if v.Type == "CustomWindow" then
			bypass[i] = {["Type"] = "CustomWindow", ["Visible"] = v.Object.Visible, ["Pinned"] = v["Api"]["Pinned"], ["Position"] = {v.Object.Position.X.Scale, v.Object.Position.X.Offset, v.Object.Position.Y.Scale, v.Object.Position.Y.Offset}}
		end
		if (v.Type == "ButtonMain" or v.Type == "ToggleMain") then
			bypass[i] = {["Type"] = "ButtonMain", ["Enabled"] = v["Api"]["Enabled"], ["Keybind"] = v["Api"]["Keybind"]}
		end
		if v.Type == "ColorSliderMain" then
			bypass[i] = {["Type"] = "ColorSliderMain", ["Hue"] = v["Api"]["Hue"], ["Sat"] = v["Api"]["Sat"], ["Value"] = v["Api"]["Value"], ["RainbowValue"] = v["Api"]["RainbowValue"], ["Custom"] = v["Api"]["Custom"]}
		end
		if v.Type == "ColorSliderGUI" then
			bypass[i] = {["Type"] = "ColorSliderGUI", ["Hue"] = v["Api"]["Custom"] and v["Api"]["Hue"] or v["Api"]["Saved"], ["Sat"] = v["Api"]["Sat"], ["Value"] = v["Api"]["Value"], ["RainbowValue"] = v["Api"]["RainbowValue"], ["Custom"] = v["Api"]["Custom"]}
		end
		if v.Type == "SliderMain" then
			bypass[i] = {["Type"] = "SliderMain", ["Value"] = v["Api"]["Value"]}
		end
		if v.Type == "DropdownMain" then
			bypass[i] = {["Type"] = "DropdownMain", ["Value"] = v["Api"]["Value"]}
		end
		if v.Type == "TextBoxMain" then
			bypass[i] = {["Type"] = "TextBoxMain", ["Value"] = v["Api"]["Value"]}
		end
		if (v.Type == "Button" or v.Type == "Toggle" or v.Type == "ExtrasButton" or v.Type == "TargetButton") then
			GuiLibrary.Settings[i] = {["Type"] = "Button", ["Enabled"] = v["Api"]["Enabled"], ["Keybind"] = v["Api"]["Keybind"]}
		end
		if (v.Type == "OptionsButton" or v.Type == "ExtrasButton") then
			GuiLibrary.Settings[i] = {["Type"] = "OptionsButton", ["Enabled"] = v["Api"]["Enabled"], ["Keybind"] = v["Api"]["Keybind"]}
		end
		if v.Type == "TextList" then
			GuiLibrary.Settings[i] = {["Type"] = "TextList", ["ObjectTable"] = v["Api"]["ObjectList"]}
		end
		if v.Type == "TextCircleList" then
			GuiLibrary.Settings[i] = {["Type"] = "TextCircleList", ["ObjectTable"] = v["Api"]["ObjectList"], ["ObjectTableEnabled"] = v["Api"]["ObjectListEnabled"]}
		end
		if v.Type == "TextBox" then
			GuiLibrary.Settings[i] = {["Type"] = "TextBox", ["Value"] = v["Api"]["Value"]}
		end
		if v.Type == "Dropdown" then
			GuiLibrary.Settings[i] = {["Type"] = "Dropdown", ["Value"] = v["Api"]["Value"]}
		end
		if v.Type == "Slider" then
			GuiLibrary.Settings[i] = {["Type"] = "Slider", ["Value"] = v["Api"]["Value"], ["OldMax"] = v["Api"]["Max"], ["OldDefault"] = v["Api"]["Default"]}
		end
		if v.Type == "TwoSlider" then
			GuiLibrary.Settings[i] = {["Type"] = "TwoSlider", ["Value"] = v["Api"]["Value"], ["Value2"] = v["Api"]["Value2"], ["SliderPos1"] = (v.Object:FindFirstChild("Slider") and v.Object.Slider.ButtonSlider.Position.X.Scale or 0), ["SliderPos2"] = (v.Object:FindFirstChild("Slider") and v.Object.Slider.ButtonSlider2.Position.X.Scale or 0)}
		end
		if v.Type == "ColorSlider" then
			GuiLibrary.Settings[i] = {["Type"] = "ColorSlider", ["Hue"] = v["Api"]["Hue"], ["Sat"] = v["Api"]["Sat"], ["Value"] = v["Api"]["Value"], ["RainbowValue"] = v["Api"]["RainbowValue"]}
		end
		if v.Type == "LegitModule" then 
			GuiLibrary.Settings[i] = {["Type"] = "LegitModule", ["Enabled"] = v["Api"]["Enabled"], ["Position"] = {v.Object.Position.X.Scale, v.Object.Position.X.Offset, v.Object.Position.Y.Scale, v.Object.Position.Y.Offset}}
		end
	end
	local mobileButtonSaving = {}
	for _, mobileButton in pairs(GuiLibrary.MobileButtons) do 
		table.insert(mobileButtonSaving, {Position = {mobileButton.Position.X.Offset, mobileButton.Position.Y.Offset}, Module = mobileButton.Text.."OptionsButton"})
	end
	GuiLibrary.Settings["MobileButtons"] = {["Type"] = "MobileButtons", ["Buttons"] = mobileButtonSaving}
	WindowTable["GUIKeybind"] = {["Type"] = "GUIKeybind", ["Value"] = GuiLibrary["GUIKeybind"]}
	writefile(baseDirectory.."Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt", httpService:JSONEncode(GuiLibrary.Settings))
	writefile(baseDirectory.."Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt", httpService:JSONEncode(WindowTable))
end

GuiLibrary.LoadSettings = function(customprofile)
	if isfile("vape/Profiles/GUIPositions.vapeprofile.txt") and game.GameId == 2619619496 then
		writefile("vape/Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt", readfile("vape/Profiles/GUIPositions.vapeprofile.txt"))
		if delfile then delfile("vape/Profiles/GUIPositions.vapeprofile.txt") end
	end
	if shared.VapePrivate then
		if isfile("vapeprivate/Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt") == false and isfile("vape/Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt") then
			writefile("vapeprivate/Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt", readfile("vape/Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt"))
		end
		if isfile("vapeprivate/Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt") == false and isfile("vape/Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt") then
			writefile("vapeprivate/Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt", readfile("vape/Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt"))
		end
	end
	local success2, result2 = pcall(function()
		return httpService:JSONDecode(readfile(baseDirectory.."Profiles/"..(shared.CustomSaveVape or game.PlaceId)..".vapeprofiles.txt"))
	end)
	if success2 and type(result2) == "table" then
		GuiLibrary.Profiles = result2
	end
	for i,v in pairs(GuiLibrary.Profiles) do
		if v.Selected then
			GuiLibrary.CurrentProfile = i
		end
	end
	if customprofile then 
		GuiLibrary.Profiles[GuiLibrary.CurrentProfile]["Selected"] = false
		GuiLibrary.Profiles[customprofile] = GuiLibrary.Profiles[customprofile] or {["Keybind"] = "", ["Selected"] = true}
		GuiLibrary.CurrentProfile = customprofile
	end
	if shared.VapePrivate then
		if isfile("vapeprivate/Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt") == false and isfile("vape/Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt") then
			writefile("vapeprivate/Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt", readfile("vape/Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt"))
		end
	end
	local success3, result3 = pcall(function()
		return httpService:JSONDecode(readfile(baseDirectory.."Profiles/"..(game.GameId).."GUIPositions.vapeprofile.txt"))
	end)
	if success3 and type(result3) == "table" then
		for i,v in pairs(result3) do
			local obj = GuiLibrary.ObjectsThatCanBeSaved[i]
			if obj then
				if v.Type == "Window" then
					obj.Object.Position = UDim2.new(v["Position"], v["Position"], v["Position"], v["Position"])
					obj.Object.Visible = v["Visible"]
					if v["Expanded"] then
						obj["Api"]["ExpandToggle"]()
					end
				end
				if v.Type == "CustomWindow" then
					obj.Object.Position = UDim2.new(v["Position"], v["Position"], v["Position"], v["Position"])
					obj.Object.Visible = v["Visible"]
					if v["Pinned"] then
						obj["Api"]["PinnedToggle"]()
					end
					obj["Api"]["CheckVis"]()
				end
				if v.Type == "ButtonMain" then
					if obj["Type"] == "ToggleMain" then
						obj["Api"]["ToggleButton"](v["Enabled"], true)
						if v["Keybind"] ~= "" then
							obj["Api"]["Keybind"] = v["Keybind"]
						end
					else
						if v["Enabled"] then
							obj["Api"]["ToggleButton"](false, true)
							if v["Keybind"] ~= "" then
								obj["Api"]["SetKeybind"](v["Keybind"])
							end
						end
					end
				end
				if v.Type == "DropdownMain" then 
					obj["Api"]["SetValue"](v["Value"])
				end
				if v.Type == "ColorSliderMain" then
					local valcheck = v["Hue"] ~= nil
					obj["Api"]["SetValue"](valcheck and v["Hue"] or v["Value"] or 0.44, valcheck or v["Sat"] or 1, valcheck and v["Value"] or 1)
					if v["RainbowValue"] then obj["Api"]["SetRainbow"](v["RainbowValue"]) end
				end
				if v.Type == "ColorSliderGUI" then
					local valcheck = v["Hue"] ~= nil
					obj["Api"]["Custom"] = v["Custom"]
					if v["Custom"] then
						obj["Api"]["SetValue"](v["Hue"], v["Sat"], v["Value"])
					else
						obj["Api"]["SetValue"](valcheck and v["Hue"] and (v["Hue"] / 7) - 0.1 or v["Value"] or 0.44, valcheck and v["Sat"] or 1, valcheck and v["Value"] or 1)
					end
					if v["RainbowValue"] then obj["Api"]["SetRainbow"](v["RainbowValue"]) end
				end
				if v.Type == "SliderMain" then
					obj["Api"]["SetValue"](v["Value"])
				end
				if v.Type == "TextBoxMain" then
					obj["Api"]["SetValue"](v["Value"])
				end
			end
			if v.Type == "GUIKeybind" then
				if (v.Value ~= "RightShift") then 
					if shared.VapeButton then shared.VapeButton:Destroy() end
				end
				GuiLibrary["GUIKeybind"] = v["Value"]
			end
		end
	end
	local success, result = pcall(function()
		return httpService:JSONDecode(readfile(baseDirectory.."Profiles/"..(GuiLibrary.CurrentProfile == "default" and "" or GuiLibrary.CurrentProfile)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt"))
	end)
	if success and type(result) == "table" then
		GuiLibrary["LoadSettingsEvent"]:Fire(result)
		for i,v in pairs(result) do
			if v.Type == "Custom" and GuiLibrary.Settings[i] then
				GuiLibrary.Settings[i] = v
			end
			local obj = GuiLibrary.ObjectsThatCanBeSaved[i]
			if obj then
				local starttick = tick()
				if v.Type == "Dropdown" then
					obj["Api"]["SetValue"](v["Value"])
				end
				if v.Type == "CustomWindow" then
					obj.Object.Position = UDim2.new(v["Position"], v["Position"], v["Position"], v["Position"])
					obj.Object.Visible = v["Visible"]
					if v["Pinned"] then
						obj["Api"]["PinnedToggle"]()
					end
					obj["Api"]["CheckVis"]()
				end
				if v.Type == "ButtonMain" then
					if obj["Type"] == "ToggleMain" then
						obj["Api"]["ToggleButton"](v["Enabled"], true)
						if v["Keybind"] ~= "" then
							obj["Api"]["Keybind"] = v["Keybind"]
						end
					else
						if v["Enabled"] then
							obj["Api"]["ToggleButton"](false, true)
							if v["Keybind"] ~= "" then
								obj["Api"]["SetKeybind"](v["Keybind"])
							end
						end
					end
				end
				if v.Type == "DropdownMain" then 
					obj["Api"]["SetValue"](v["Value"])
				end
				if v.Type == "ColorSliderMain" then
					local valcheck = v["Hue"] ~= nil
					obj["Api"]["SetValue"](valcheck and v["Hue"] or v["Value"] or 0.44, valcheck or v["Sat"] or 1, valcheck and v["Value"] or 1)
					if v["RainbowValue"] then obj["Api"]["SetRainbow"](v["RainbowValue"]) end
				end
				if v.Type == "Button" then
					if obj["Type"] == "Toggle" then
						if obj["Api"]["Default"] then
							if not v["Enabled"] then 
								obj["Api"]["ToggleButton"](v["Enabled"], true) 
							end
						else
							obj["Api"]["ToggleButton"](v["Enabled"], true)
						end
						if v["Keybind"] ~= "" then
							obj["Api"]["Keybind"] = v["Keybind"]
						end
					elseif obj["Type"] == "TargetButton" then
						obj["Api"]["ToggleButton"](v["Enabled"], true)
					else
						if v["Enabled"] then
							obj["Api"]["ToggleButton"](false)
							if v["Keybind"] ~= "" then
								obj["Api"]["SetKeybind"](v["Keybind"])
							end
						end
					end
				end
				if v.Type == "NewToggle" then
					obj["Api"]["ToggleButton"](v["Enabled"], true)
					if v["Keybind"] ~= "" then
						obj["Api"]["Keybind"] = v["Keybind"]
					end
				end
				if v.Type == "Slider" then
					obj["Api"]["SetValue"](v["OldMax"] ~= obj["Api"]["Max"] and v["Value"] > obj["Api"]["Max"] and obj["Api"]["Max"] or (v["OldDefault"] ~= obj["Api"]["Default"] and v["Value"] == v["OldDefault"] and obj["Api"]["Default"] or v["Value"]))
				end
				if v.Type == "TextBox" then
					obj["Api"]["SetValue"](v["Value"])
				end
				if v.Type == "TextList" then
					obj["Api"]["RefreshValues"]((v["ObjectTable"] or {}))
				end
				if v.Type == "TextCircleList" then
					obj["Api"]["RefreshValues"]((v["ObjectTable"] or {}), (v["ObjectTableEnabled"] or {}))
				end
				if v.Type == "TwoSlider" then
					obj["Api"]["SetValue"](v["Value"] == obj["Api"]["Min"] and 0 or v["Value"])
					obj["Api"]["SetValue2"](v["Value2"])
					obj.Object.Slider.ButtonSlider.Position = UDim2.new(v["SliderPos1"], -8, 1, -9)
					obj.Object.Slider.ButtonSlider2.Position = UDim2.new(v["SliderPos2"], -8, 1, -9)
					obj.Object.Slider.FillSlider.Size = UDim2.new(0, obj.Object.Slider.ButtonSlider2.AbsolutePosition.X - obj.Object.Slider.ButtonSlider.AbsolutePosition.X, 1, 0)
					obj.Object.Slider.FillSlider.Position = UDim2.new(obj.Object.Slider.ButtonSlider.Position.X.Scale, 0, 0, 0)
				end
				if v.Type == "ColorSlider" then
					v["Hue"] = v["Hue"] or 0.44
					v["Sat"] = v["Sat"] or 1
					v["Value"] = v["Value"] or 1
					obj["Api"]["SetValue"](v["Hue"], v["Sat"], v["Value"])
					if v["RainbowValue"] then obj["Api"]["SetRainbow"](v["RainbowValue"]) end
					obj.Object.Slider.ButtonSlider.Position = UDim2.new(math.clamp(v["Hue"], 0.02, 0.95), -9, 0, -7)
					pcall(function()
						obj["Object2"].Slider.ButtonSlider.Position = UDim2.new(math.clamp(v["Sat"], 0.02, 0.95), -9, 0, -7)
						obj["Object3"].Slider.ButtonSlider.Position = UDim2.new(math.clamp(v["Value"], 0.02, 0.95), -9, 0, -7)
					end)
				end
				if v.Type == "LegitModule" then 
					obj.Object.Position = UDim2.new(v["Position"], v["Position"], v["Position"], v["Position"])
					if v["Enabled"] then
						obj["Api"]["ToggleButton"](true)
					end
				end
			end
		end
		for i,v in pairs(result) do
			local obj = GuiLibrary.ObjectsThatCanBeSaved[i]
			if obj then 
				if v.Type == "OptionsButton" then
					if v["Enabled"] and not obj["Api"]["Enabled"] then
						local suc, res = pcall(function() obj["Api"]["ToggleButton"](false) end)
						if not suc then print(res) end
					end
					if v["Keybind"] ~= "" then
						obj["Api"]["SetKeybind"](v["Keybind"])
					end
				end
			end
		end
		for i,v in pairs(result) do
			if v.Type == "MobileButtons" then 
				for _, mobileButton in pairs(v.Buttons) do 
					local module = GuiLibrary.ObjectsThatCanBeSaved[mobileButton.Module]
					if module then 
						createMobileButton(module.Api, Vector2.new(mobileButton.Position, mobileButton.Position))
					end
				end
			end
		end
	end
	loadedsuccessfully = true
end

GuiLibrary["SwitchProfile"] = function(profilename)
	GuiLibrary.Profiles[GuiLibrary.CurrentProfile]["Selected"] = false
	GuiLibrary.Profiles[profilename]["Selected"] = true
	if (not isfile(baseDirectory.."Profiles/"..(profilename == "default" and "" or profilename)..(shared.CustomSaveVape or game.PlaceId)..".vapeprofile.txt")) then
		local realprofile = GuiLibrary.CurrentProfile
		GuiLibrary.CurrentProfile = profilename
		GuiLibrary.SaveSettings()
		GuiLibrary.CurrentProfile = realprofile
	end
	local vapeprivate = shared.VapePrivate
	local oldindependent = shared.VapeIndependent
	GuiLibrary.SelfDestruct()
	if not oldindependent then
		shared.VapeSwitchServers = true
		shared.VapeOpenGui = (clickgui.Visible)
		shared.VapePrivate = vapeprivate
		loadstring(vapeGithubRequest("NewMainScript.lua"))()
	end
end

GuiLibrary["RemoveObject"] = function(objname)
	pcall(function()
		GuiLibrary.ObjectsThatCanBeSaved[objname]["Object"]:Remove()
		if GuiLibrary.ObjectsThatCanBeSaved[objname]["Type"] == "OptionsButton" then 
			GuiLibrary.ObjectsThatCanBeSaved[objname]["ChildrenObject"].Name = "RemovedChildren"
		end
	end)
	GuiLibrary.ObjectsThatCanBeSaved[objname] = nil
end

GuiLibrary.SelfDestruct = function()
	task.spawn(function()
		coroutine.close(saveSettingsLoop)
	end)
	if GuiLibrary.ColorStepped then GuiLibrary.ColorStepped:Disconnect() end

	if vapeInjected then 
		GuiLibrary.SaveSettings()
	end
	vapeInjected = false
	inputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None

	for i,v in pairs(GuiLibrary.ObjectsThatCanBeSaved) do
		if (v.Type == "Button" or v.Type == "OptionsButton" or v.Type == "LegitModule") and v.Api.Enabled then
			v.Api.ToggleButton(false)
		end
	end

	for i,v in pairs(TextGUIConnections) do 
		v:Disconnect()
	end
	for i,v in pairs(TextGUIObjects) do 
		for i2,v2 in pairs(v) do 
			v2.Visible = false
			v2:Destroy()
			v[i2] = nil
		end
	end

	GuiLibrary.SelfDestructEvent:Fire()
	shared.VapeExecuted = nil
	shared.VapePrivate = nil
	shared.VapeFullyLoaded = nil
	shared.VapeSwitchServers = nil
	shared.GuiLibrary = nil
	shared.VapeIndependent = nil
	shared.VapeManualLoad = nil
	shared.CustomSaveVape = nil
	GuiLibrary.KeyInputHandler:Disconnect()
	GuiLibrary.KeyInputHandler2:Disconnect()
	if MiddleClickInput then
		MiddleClickInput:Disconnect()
	end
	pcall(function()
		teleportConnection:Disconnect()
	end)
	GuiLibrary.MainGui:Destroy()
end
GuiLibrary.Restart = function()
	GuiLibrary.SelfDestruct()
	local vapePrivateCheck = shared.VapePrivate
	shared.VapeSwitchServers = true
	shared.VapeOpenGui = true
	shared.VapePrivate = vapePrivateCheck
	loadstring(vapeGithubRequest("NewMainScript.lua"))()
end

local function bettertween(obj, newpos, dir, style, tim, override)
	task.spawn(function()
		local frame = Instance.new("Frame")
		frame.Visible = false
		frame.Position = obj.Position
		frame.Parent = GuiLibrary["MainGui"]
		frame:GetPropertyChangedSignal("Position"):Connect(function()
			obj.Position = UDim2.new(obj.Position.X.Scale, obj.Position.X.Offset, frame.Position.Y.Scale, frame.Position.Y.Offset)
		end)
		pcall(function()
			frame:TweenPosition(newpos, dir, style, tim, override)
		end)
		frame.Parent = nil
		task.wait(tim)
		frame:Remove()
	end)
end

local function bettertween2(obj, newpos, dir, style, tim, override)
	task.spawn(function()
		local frame = Instance.new("Frame")
		frame.Visible = false
		frame.Position = obj.Position
		frame.Parent = GuiLibrary["MainGui"]
		frame:GetPropertyChangedSignal("Position"):Connect(function()
			obj.Position = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, obj.Position.Y.Scale, obj.Position.Y.Offset)
		end)
		pcall(function()
			frame:TweenPosition(newpos, dir, style, tim, override)
		end)
		frame.Parent = nil
		task.wait(tim)
		frame:Remove()
	end)
end

notificationwindow.ChildRemoved:Connect(function()
	for i,v in pairs(notificationwindow:GetChildren()) do
		bettertween(v, UDim2.new(1, v.Position.X.Offset, 1, -(150 + 80 * (i - 1))), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
	end
end)

local function removeTags(str)
    str = str:gsub("<br%s*/>", "\n")
    return (str:gsub("<[^<>]->", ""))
end

GuiLibrary["CreateNotification"] = function(top, bottom, duration, customicon)
	local size = math.max( textService:GetTextSize(removeTags(bottom), 13, Enum.Font.Gotham, Vector2.new(99999, 99999)).X + 60, 266)
	local offset = #notificationwindow:GetChildren()
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, size, 0, 75)
	frame.Position = UDim2.new(1, 0, 1, -(150 + 80 * offset))
	frame.BackgroundTransparency = 1
	frame.BackgroundColor3 = Color3.new(0, 0,0)
	frame.BorderSizePixel = 0
	frame.Parent = notificationwindow
	frame.Visible = GuiLibrary["Notifications"]
	frame.ClipsDescendants = false
	local image = Instance.new("ImageLabel")
	image.SliceCenter = Rect.new(67, 59, 323, 120)
	image.Position = UDim2.new(0, -61, 0, -50)
	image.BackgroundTransparency = 1
	image.Name = "Frame"
	image.ScaleType = Enum.ScaleType.Slice
	image.Image = downloadVapeAsset("vape/assets/NotificationBackground.png")
	image.Size = UDim2.new(1, 61, 0, 159)
	image.Parent = frame
	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 6)
	uicorner.Parent = frame
	local frame2 = Instance.new("ImageLabel")
	frame2.BackgroundColor3 = Color3.new(1, 1, 1)
	frame2.Name = "Frame"
	frame2:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
		frame2.ImageColor3 = frame2.BackgroundColor3
	end)
	frame2.BackgroundTransparency = 1
	frame2.SliceCenter = Rect.new(2, 0, 224, 2)
	frame2.Size = UDim2.new(1, -61, 0, 2)
	frame2.ScaleType = Enum.ScaleType.Slice
	frame2.Position = UDim2.new(0, 63, 1, -36)
	frame2.ZIndex = 2
	frame2.Image = downloadVapeAsset("vape/assets/NotificationBar.png")
	frame2.BorderSizePixel = 0
	frame2.Parent = image
	local icon = Instance.new("ImageLabel")
	icon.Name = "IconLabel"
	icon.Image = downloadVapeAsset(customicon and "vape/"..customicon or "vape/assets/InfoNotification.png")
	icon.BackgroundTransparency = 1
	icon.Position = UDim2.new(0, -6, 0, -6)
	icon.Size = UDim2.new(0, 60, 0, 60)
	icon.Parent = frame
	local icon2 = icon:Clone()
	icon2.ImageColor3 = Color3.new(0, 0, 0)
	icon2.ZIndex = -1
	icon2.Position = UDim2.new(0, 1, 0, 1)
	icon2.ImageTransparency = 0.5
	icon2.Parent = icon
	local textlabel1 = Instance.new("TextLabel")
	textlabel1.Font = Enum.Font.Arial
	textlabel1.TextSize = 14
	textlabel1.RichText = true
	textlabel1.TextTransparency = 0.1
	textlabel1.TextColor3 = Color3.new(1, 1, 1)
	textlabel1.BackgroundTransparency = 1
	textlabel1.Position = UDim2.new(0, 46, 0, 17)
	textlabel1.TextXAlignment = Enum.TextXAlignment.Left
	textlabel1.TextYAlignment = Enum.TextYAlignment.Top
	textlabel1.Text = (translations[top] ~= nil and translations[top] or top)
	textlabel1.Parent = frame
	local textlabel2 = textlabel1:Clone()
	textlabel2.Position = UDim2.new(0, 46, 0, 44)
	textlabel2.Font = Enum.Font.Arial
	textlabel2.TextTransparency = 0
	textlabel2.TextColor3 = Color3.fromRGB(170, 170, 170)
	textlabel2.RichText = true
	textlabel2.Text = bottom
	textlabel2.Parent = frame
	task.spawn(function()
		pcall(function()
			bettertween2(frame, UDim2.new(1, -(size - 4), 1, -(150 + 80 * offset)), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
			task.wait(0.15)
			frame2:TweenSize(UDim2.new(0, 0, 0, 2), Enum.EasingDirection.In, Enum.EasingStyle.Linear, duration, true)
			task.wait(duration)
			bettertween2(frame, UDim2.new(1, 0, 1, frame.Position.Y.Offset), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
			task.wait(0.15)
			frame:Remove()
		end)
	end)
	return frame
end

GuiLibrary["CreateInteractableNotification"] = function(top, bottom, duration, customicon, interactable_buttons_table)
	local size = math.max( textService:GetTextSize(removeTags(bottom), 13, Enum.Font.Gotham, Vector2.new(99999, 99999)).X + 60, 266)
	local offset = #notificationwindow:GetChildren()
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, size, 0, 75)
	frame.Position = UDim2.new(1, 0, 1, -(150 + 80 * offset))
	frame.BackgroundTransparency = 1
	frame.BackgroundColor3 = Color3.new(0, 0,0)
	frame.BorderSizePixel = 0
	frame.Parent = notificationwindow
	frame.Visible = GuiLibrary["Notifications"]
	frame.ClipsDescendants = false
	local image = Instance.new("ImageLabel")
	image.SliceCenter = Rect.new(67, 59, 323, 120)
	image.Position = UDim2.new(0, -61, 0, -50)
	image.BackgroundTransparency = 1
	image.Name = "Frame"
	image.ScaleType = Enum.ScaleType.Slice
	image.Image = downloadVapeAsset("vape/assets/NotificationBackground.png")
	image.Size = UDim2.new(1, 61, 0, 159)
	image.Parent = frame
	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 6)
	uicorner.Parent = frame
	local frame2 = Instance.new("ImageLabel")
	frame2.BackgroundColor3 = Color3.new(1, 1, 1)
	frame2.Name = "Frame"
	frame2:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
		frame2.ImageColor3 = frame2.BackgroundColor3
	end)
	frame2.BackgroundTransparency = 1
	frame2.SliceCenter = Rect.new(2, 0, 224, 2)
	frame2.Size = UDim2.new(1, -61, 0, 2)
	frame2.ScaleType = Enum.ScaleType.Slice
	frame2.Position = UDim2.new(0, 63, 1, -36)
	frame2.ZIndex = 2
	frame2.Image = downloadVapeAsset("vape/assets/NotificationBar.png")
	frame2.BorderSizePixel = 0
	frame2.Parent = image
	local icon = Instance.new("ImageLabel")
	icon.Name = "IconLabel"
	icon.Image = downloadVapeAsset(customicon and "vape/"..customicon or "vape/assets/InfoNotification.png")
	icon.BackgroundTransparency = 1
	icon.Position = UDim2.new(0, -6, 0, -6)
	icon.Size = UDim2.new(0, 60, 0, 60)
	icon.Parent = frame
	local icon2 = icon:Clone()
	icon2.ImageColor3 = Color3.new(0, 0, 0)
	icon2.ZIndex = -1
	icon2.Position = UDim2.new(0, 1, 0, 1)
	icon2.ImageTransparency = 0.5
	icon2.Parent = icon
	local textlabel1 = Instance.new("TextLabel")
	textlabel1.Font = Enum.Font.Arial
	textlabel1.TextSize = 14
	textlabel1.RichText = true
	textlabel1.TextTransparency = 0.1
	textlabel1.TextColor3 = Color3.new(1, 1, 1)
	textlabel1.BackgroundTransparency = 1
	textlabel1.Position = UDim2.new(0, 46, 0, 17)
	textlabel1.TextXAlignment = Enum.TextXAlignment.Left
	textlabel1.TextYAlignment = Enum.TextYAlignment.Top
	textlabel1.Text = (translations[top] ~= nil and translations[top] or top)
	textlabel1.Parent = frame
	local textlabel2 = textlabel1:Clone()
	textlabel2.Position = UDim2.new(0, 46, 0, 35)
	textlabel2.Font = Enum.Font.Arial
	textlabel2.TextTransparency = 0
	textlabel2.TextColor3 = Color3.fromRGB(170, 170, 170)
	textlabel2.RichText = true
	textlabel2.Text = bottom
	textlabel2.Parent = frame
	local interactable_frame = Instance.new("Frame")
	interactable_frame.Parent = frame
	interactable_frame.Name = "Interactable Frame"
	interactable_frame.BackgroundTransparency = 1
	interactable_frame.Position = UDim2.new(0, 0, 0, 52)
	interactable_frame.Size = UDim2.new(0, 270, 0, 18)
	local uilist = Instance.new("UIListLayout")
	uilist.Parent = interactable_frame
	uilist.FillDirection = Enum.FillDirection.Horizontal
	local function make_button(num, is_size_divided)
		local interactable_frame_button = Instance.new("TextButton")
		interactable_frame_button.Parent = interactable_frame
		interactable_frame_button.Name = "Interactable Button"
		if is_size_divided then
			interactable_frame_button.Size = UDim2.new(0, 135, 0, 19)
		else
			interactable_frame_button.Size = UDim2.new(0, 270, 0, 19)
		end
		interactable_frame_button.TextScaled = true
		interactable_frame_button.Text = interactable_buttons_table[num]["Name"]
		interactable_frame_button.BackgroundColor3 = Color3.new(249, 248, 255)
		interactable_frame_button.MouseButton1Click:Connect(function()
			interactable_buttons_table[num]["Function"]()
			bettertween2(frame, UDim2.new(1, 0, 1, frame.Position.Y.Offset), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
			task.wait(0.15)
			frame:Remove()
		end)
		local ui_corner = Instance.new("UICorner")
		ui_corner.CornerRadius = UDim.new(0, 10)
		ui_corner.Parent = interactable_frame_button
	end
	pcall(function() 
		if type(interactable_buttons_table) == "table" then
			if #interactable_buttons_table > 2 then
				warn("Error")
			else
				if #interactable_buttons_table == 0 then
					warn("Error")
				else
					if #interactable_buttons_table == 1 then
						make_button(1, false)
					else
						make_button(1, true)
						make_button(2, true)
					end
				end
			end
		end
	end)
	task.spawn(function()
		pcall(function()
			bettertween2(frame, UDim2.new(1, -(size - 4), 1, -(150 + 80 * offset)), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
			task.wait(0.15)
			frame2:TweenSize(UDim2.new(0, 0, 0, 2), Enum.EasingDirection.In, Enum.EasingStyle.Linear, duration, true)
			task.wait(duration)
			bettertween2(frame, UDim2.new(1, 0, 1, frame.Position.Y.Offset), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.15, true)
			task.wait(0.15)
			frame:Remove()
		end)
	end)
	return frame
end

GuiLibrary["LoadedAnimation"] = function(enabled)
	if enabled then
		local bad = not (Platform == Enum.Platform.Windows or Platform == Enum.Platform.OSX)
		GuiLibrary.CreateNotification("Finished Loading", bad and GuiLibrary["GUIKeybind"] == "RightShift" and "Press the button in the top right to open GUI" or "Press "..string.upper(GuiLibrary["GUIKeybind"]).." to open GUI", 5)
	end
end

local holdingalt = false
local uninjected = false

if inputService.TouchEnabled or Platform == Enum.Platform.UWP then 
	local button = Instance.new("TextButton")
	button.Position = UDim2.new(1, -30, 0, 0)
	button.Text = "Vape"
	button.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Size = UDim2.new(0, 30, 0, 20)
	button.BorderSizePixel = 0
	button.BackgroundTransparency = 0.5
	button.Parent = GuiLibrary.MainGui
	button.MouseButton1Click:Connect(function()
		clickgui.Visible = not clickgui.Visible
		legitgui.Visible = not clickgui.Visible
		inputService.OverrideMouseIconBehavior = (clickgui.Visible and Enum.OverrideMouseIconBehavior.ForceShow or game:GetService("VRService").VREnabled and Enum.OverrideMouseIconBehavior.ForceHide or Enum.OverrideMouseIconBehavior.None)
		for _, mobileButton in pairs(GuiLibrary.MobileButtons) do mobileButton.Visible = not clickgui.Visible end	
		if OnlineProfilesBigFrame.Visible then
			OnlineProfilesBigFrame.Visible = false
		end
		if LegitModulesBigFrame.Visible then
			LegitModulesBigFrame.Visible = false
			legitgui.Visible = not clickgui.Visible
			for i, v in pairs(legitgui:GetChildren()) do 
				if v:IsA("Frame") then v.BackgroundTransparency = legitgui.Visible and 0.8 or 1 end
			end
		end
	end)
	shared.VapeButton = button
end
GuiLibrary["KeyInputHandler"] = inputService.InputBegan:Connect(function(input1)
	if inputService:GetFocusedTextBox() == nil then
		if input1.KeyCode == Enum.KeyCode[GuiLibrary["GUIKeybind"]] and GuiLibrary["KeybindCaptured"] == false then
			shared.GUIKeybindFunction = function()
				clickgui.Visible = not clickgui.Visible
				legitgui.Visible = not clickgui.Visible
				inputService.OverrideMouseIconBehavior = (clickgui.Visible and Enum.OverrideMouseIconBehavior.ForceShow or game:GetService("VRService").VREnabled and Enum.OverrideMouseIconBehavior.ForceHide or Enum.OverrideMouseIconBehavior.None)
				for _, mobileButton in pairs(GuiLibrary.MobileButtons) do mobileButton.Visible = not clickgui.Visible end	
				if OnlineProfilesBigFrame.Visible then
					OnlineProfilesBigFrame.Visible = false
				end
				if LegitModulesBigFrame.Visible then
					LegitModulesBigFrame.Visible = false
					legitgui.Visible = not clickgui.Visible
					for i, v in pairs(legitgui:GetChildren()) do 
						if v:IsA("Frame") then v.BackgroundTransparency = legitgui.Visible and 0.8 or 1 end
					end
				end
			end
			shared.GUIKeybindFunction()
		end
		if input1.KeyCode == Enum.KeyCode.RightAlt then 
			holdingalt = true
		end
		if input1.KeyCode == Enum.KeyCode.Home and holdingalt and (not uninjected) then 
			GuiLibrary["SelfDestruct"]()
			uninjected = true
		end
		if GuiLibrary["KeybindCaptured"] and input1.KeyCode ~= Enum.KeyCode.LeftShift then
			local hah = string.gsub(tostring(input1.KeyCode), "Enum.KeyCode.", "")
			GuiLibrary["PressedKeybindKey"] = (hah ~= "Unknown" and hah or "")
		end
		for modules,aGuiLibrary in pairs(GuiLibrary.ObjectsThatCanBeSaved) do
			if (aGuiLibrary["Type"] == "OptionsButton" or aGuiLibrary["Type"] == "Button") and (aGuiLibrary["Api"]["Keybind"] ~= nil and aGuiLibrary["Api"]["Keybind"] ~= "") and GuiLibrary["KeybindCaptured"] == false then
				if input1.KeyCode == Enum.KeyCode[aGuiLibrary["Api"]["Keybind"]] and aGuiLibrary["Api"]["Keybind"] ~= GuiLibrary["GUIKeybind"] then
					aGuiLibrary["Api"]["ToggleButton"](false)
					if GuiLibrary["ToggleNotifications"] then
						GuiLibrary["CreateNotification"]("Module Toggled", aGuiLibrary["Api"]["Name"]..' <font color="#FFFFFF">has been</font> <font color="'..(aGuiLibrary["Api"]["Enabled"] and '#32CD32' or '#FF6464')..'">'..(aGuiLibrary["Api"]["Enabled"] and "Enabled" or "Disabled")..'</font><font color="#FFFFFF">!</font>', 1)
					end
				end
			end
		end
		for profilenametext, profiletab in pairs(GuiLibrary.Profiles) do
			if (profiletab["Keybind"] ~= nil and profiletab["Keybind"] ~= "") and GuiLibrary["KeybindCaptured"] == false and profilenametext ~= GuiLibrary.CurrentProfile then
				if input1.KeyCode == Enum.KeyCode[profiletab["Keybind"]] then
					GuiLibrary["SwitchProfile"](profilenametext)
				end
			end
		end
	end
end)

GuiLibrary["KeyInputHandler2"] = inputService.InputEnded:Connect(function(input1)
	if input1.KeyCode == Enum.KeyCode.RightAlt then
		holdingalt = false
	end
end)

searchbar:GetPropertyChangedSignal("Text"):Connect(function()
	searchbarchildren:ClearAllChildren()
	if searchbar.Text == "" then
		searchbarmain.Size = UDim2.new(0, 220, 0, 37)
	else
		local optionbuttons = {}
		for i,v in pairs(GuiLibrary.ObjectsThatCanBeSaved) do
			if i:find("OptionsButton") and i:sub(1, searchbar.Text:len()):lower() == searchbar.Text:lower() then
				local button = Instance.new("TextButton")
				button.Name = v.Object.Name
				button.AutoButtonColor = false
				button.Active = true
				button.Size = UDim2.new(1, 0, 0, 40)
				button.BorderSizePixel = 0
				button.Position = UDim2.new(0, 0, 0, 40 * #optionbuttons)
				button.ZIndex = 10
				button.BackgroundColor3 = v.Object.BackgroundColor3
				button.Text = ""
				button.Parent = searchbarchildren
				v.Object:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
					button.BackgroundColor3 = v.Object.BackgroundColor3
				end)
				local buttonactiveborder = Instance.new("Frame")
				buttonactiveborder.BackgroundTransparency = 0.75
				buttonactiveborder.BackgroundColor3 = Color3.new(0, 0, 0)
				buttonactiveborder.BorderSizePixel = 0
				buttonactiveborder.Size = UDim2.new(1, 0, 0, 1)
				buttonactiveborder.Position = UDim2.new(0, 0, 1, -1)
				buttonactiveborder.ZIndex = 10
				buttonactiveborder.Visible = false
				buttonactiveborder.Parent = button
				local button2 = Instance.new("ImageButton")
				button2.BackgroundTransparency = 1
				button2.Size = UDim2.new(0, 10, 0, 20)
				button2.Position = UDim2.new(1, -24, 0, 10)
				button2.Name = "OptionsButton"
				button2.ZIndex = 10
				button2.Image = v.Object.OptionsButton.Image
				button2.Parent = button
				v.Object.OptionsButton:GetPropertyChangedSignal("Image"):Connect(function()
					button2.Image = v.Object.OptionsButton.Image
				end)
				local buttontext = Instance.new("TextLabel")
				buttontext.BackgroundTransparency = 1
				buttontext.Name = "ButtonText"
				buttontext.Text = (translations[v.Object.Name:gsub("Button", "")] ~= nil and translations[v.Object.Name:gsub("Button", "")] or v.Object.Name:gsub("Button", ""))
				buttontext.Size = UDim2.new(0, 118, 0, 39)
				buttontext.Active = false
				buttontext.ZIndex = 10
				buttontext.TextColor3 = v.Object.ButtonText.TextColor3
				v.Object.ButtonText:GetPropertyChangedSignal("TextColor3"):Connect(function()
					buttontext.TextColor3 = v.Object.ButtonText.TextColor3
				end)
				buttontext.TextSize = 17
				buttontext.Font = Enum.Font.SourceSans
				buttontext.TextXAlignment = Enum.TextXAlignment.Left
				buttontext.Position = UDim2.new(0, 12, 0, 0)
				buttontext.Parent = button
				button.MouseButton1Click:Connect(function()
					v["Api"]["ToggleButton"](false)
				end)
				table.insert(optionbuttons, v)
			end
		end
		searchbarmain.Size = UDim2.new(0, 220, 0, 39 + (40 * #optionbuttons))
	end
end)
GuiLibrary["MainRescale"]:GetPropertyChangedSignal("Scale"):Connect(function()
	searchbarmain.Position = UDim2.new(0.5 / GuiLibrary["MainRescale"].Scale, -110, 0, -23)
end)

searchbaricon2.MouseButton1Click:Connect(function()
	LegitModulesBigFrame.Visible = true
	clickgui.Visible = false
	legitgui.Visible = not clickgui.Visible
	for i, v in pairs(legitgui:GetChildren()) do 
		if v:IsA("Frame") then v.BackgroundTransparency = legitgui.Visible and 0.8 or 1 end
	end
end)

function GuiLibrary.RemoveWindow(windowName)
	local maingui = GuiLibrary.MainGui
	local windows = maingui:WaitForChild("ScaledGui"):WaitForChild("ClickGui")
	local buttons = windows:WaitForChild("MainWindow"):WaitForChild("Children")

	for i,v in pairs(windows:GetChildren()) do
		if string.find(windows:GetChildren()[i].Name, windowName) and windows:GetChildren()[i].ClassName == "TextButton" then
			windows:GetChildren()[i]:Destroy()
			break
		end
	end

	for i,v in pairs(buttons:GetChildren()) do
		if string.find(buttons:GetChildren()[i].Name, windowName) and buttons:GetChildren()[i].ClassName == "TextButton" then
			buttons:GetChildren()[i]:Destroy()
			break
		end
	end
end

function GuiLibrary.RemoveDivider(dividerName)
	local maingui = GuiLibrary.MainGui
	local windows = maingui:WaitForChild("ScaledGui"):WaitForChild("ClickGui")
	local buttons = windows:WaitForChild("MainWindow"):WaitForChild("Children")

	local dividers = {}
	for i,v in pairs(buttons:GetChildren()) do
		if buttons:GetChildren()[i].ClassName == "TextLabel" and buttons:GetChildren()[i].Name == "TextLabel" then
			table.insert(dividers, buttons:GetChildren()[i])
		end
	end

	for i,v in pairs(dividers) do
		if dividers[i].Text == "    "..dividerName then
			dividers[i]:Destroy()
		end
	end
end

function GuiLibrary.RemoveAllDividers()
	local maingui = GuiLibrary.MainGui
	local windows = maingui:WaitForChild("ScaledGui"):WaitForChild("ClickGui")
	local buttons = windows:WaitForChild("MainWindow"):WaitForChild("Children")

	local dividers = {}
	for i,v in pairs(buttons:GetChildren()) do
		if buttons:GetChildren()[i].ClassName == "TextLabel" and buttons:GetChildren()[i].Name == "TextLabel" then
			table.insert(dividers, buttons:GetChildren()[i])
		end
	end

	for i,v in pairs(dividers) do
		dividers[i]:Destroy()
	end
end

end
getgenv().shared.GuiLibrary = {}
local GuiLibrary = getgenv().shared.GuiLibrary

GuiLibrary.Settings = {}
GuiLibrary.Profiles = {
    default = {Keybind = "", Selected = true}
}
GuiLibrary.RainbowSpeed = 0.6
GuiLibrary.GUIKeybind = "RightShift"
GuiLibrary.CurrentProfile = "default"
GuiLibrary.KeybindCaptured = false
GuiLibrary.PressedKeybindKey = ""
GuiLibrary.ToggleNotifications = false
GuiLibrary.Notifications = false
GuiLibrary.ToggleTooltips = false
GuiLibrary.ObjectsThatCanBeSaved = {["Gui ColorSliderColor"] = {Api = {Hue = 0.44, Sat = 1, Value = 1}}}
GuiLibrary.MobileButtons = {}
GuiLibrary.RainbowSliders = {}
local playersService = game:GetService("Players")
local identifyexecutor = identifyexecutor or function() return 'Unknown' end
local getconnections = getconnections or function() return {} end
local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end
local setclipboard = setclipboard or function(data) writefile('clipboard.txt', data) end
local httpService = game:GetService('HttpService')
local lplr = playersService.LocalPlayer
local coreGui
local suc, err = pcall(function()
	coreGui = game:GetService("CoreGui")
end)
if err then coreGui = lplr.PlayerGui end
getgenv().coreGui = coreGui
local textService = game:GetService("TextService")
local lightingService = game:GetService("Lighting")
local textChatService = game:GetService("TextChatService")
local inputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local HWID = game:GetService('RbxAnalyticsService'):GetClientId()	
local tweenService = game:GetService("TweenService")
local gameCamera = workspace.CurrentCamera
local vapeConnections = {}
local vapeCachedAssets = {}
local vapeTargetInfo = shared.VapeTargetInfo
local vapeInjected = true
table.insert(vapeConnections, workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	gameCamera = workspace.CurrentCamera or workspace:FindFirstChildWhichIsA("Camera")
end))
local RenderFunctions = {}
local VoidwareStore = {
	jumptick = tick(),
}
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
local RenderStore = {Bindable = {}, raycast = RaycastParams.new(), MessageReceived = Instance.new('BindableEvent'), tweens = {}, ping = 0, platform = inputService:GetPlatform(), LocalPosition = Vector3.zero}
getgenv().RenderStore = RenderStore
local vec3 = Vector3.new
local vec2 = Vector2.new
local isfile = isfile or function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

local colors = {
	White = Color3.fromRGB(255, 255, 255),
	Black = Color3.fromRGB(0, 0, 0),
	Red = Color3.fromRGB(255, 0, 0),
	Green = Color3.fromRGB(0, 255, 0),
	Blue = Color3.fromRGB(0, 0, 255),
	Yellow = Color3.fromRGB(255, 255, 0),
	Cyan = Color3.fromRGB(0, 255, 255),
	Magenta = Color3.fromRGB(255, 0, 255),
	Gray = Color3.fromRGB(128, 128, 128),
	DarkGray = Color3.fromRGB(64, 64, 64),
	LightGray = Color3.fromRGB(192, 192, 192),
	Orange = Color3.fromRGB(255, 165, 0),
	Pink = Color3.fromRGB(255, 192, 203),
	Purple = Color3.fromRGB(128, 0, 128),
	Brown = Color3.fromRGB(139, 69, 19),
	LimeGreen = Color3.fromRGB(50, 205, 50),
	NavyBlue = Color3.fromRGB(0, 0, 128),
	Olive = Color3.fromRGB(128, 128, 0),
	Teal = Color3.fromRGB(0, 128, 128),
	Maroon = Color3.fromRGB(128, 0, 0),
	Gold = Color3.fromRGB(255, 215, 0),
	Silver = Color3.fromRGB(192, 192, 192),
	SkyBlue = Color3.fromRGB(135, 206, 235),
	Violet = Color3.fromRGB(238, 130, 238)
}

getgenv().ColorTable = colors

if readfile == nil then
	task.spawn(error, 'Voidware - Exploit not supported. Your exploit doesn\'t have filesystem support.')
	while task.wait() do end
end 

pcall(function() core = game:GetService('CoreGui') end)

local function vapeGithubRequest(scripturl)
	if not isfile("vape/"..scripturl) then
		-- This new URL points to a verified, living repository.
		-- The dependency on the dead 'commithash.txt' is severed.
		local baseUrl = "https://raw.githubusercontent.com/astrosh0ot67/Voidware/main/"
		local fullUrl = baseUrl .. scripturl
		
		local suc, res = pcall(function() return game:HttpGet(fullUrl, true) end)
		
		if not suc or res == "404: Not Found" then
			-- If the primary fails, attempt the original structure as a fallback. This is for resilience.
			local fallbackUrl = "https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/" .. scripturl
			suc, res = pcall(function() return game:HttpGet(fallbackUrl, true) end)
		end

		assert(suc, res)
		assert(res ~= "404: Not Found", "All asset sources are dead. The beast cannot feed.")
		
		if scripturl:find(".lua") then res = "--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.\n"..res end
		writefile("vape/"..scripturl, res)
	end
	return readfile("vape/"..scripturl)
end

shared.vapeGithubRequest = vapeGithubRequest

table.insert(vapeConnections, workspace:GetPropertyChangedSignal('CurrentCamera'):Connect(function()
	gameCamera = workspace.CurrentCamera or workspace:FindFirstChildWhichIsA('Camera')
end))

local RenderFunctions = loadstring(vapeGithubRequest("Libraries/voidwarefunctions.lua"))()

local isAlive = function() return false end 
local playSound = function() end
local dumptable = function() return {} end
local sendmessage = function() end
local sendprivatemessage = function() end
local characterDescendant = function() return nil end
local playerRaycasted = function() return true end
local GetTarget = function() return {} end
local GetAllTargets = function() return {} end
local getnewserver = function() return nil end
local switchserver = function() end
local getTablePosition = function() return 1 end
local warningNotification = function() end 
local InfoNotification = function() end
local errorNotification = function() end

local networkownerswitch = tick()
local isnetworkowner = function(part)
	local suc, res = pcall(function() return gethiddenproperty(part, "NetworkOwnershipRule") end)
	if suc and res == Enum.NetworkOwnership.Manual then
		sethiddenproperty(part, "NetworkOwnershipRule", Enum.NetworkOwnership.Automatic)
		networkownerswitch = tick() + 8
	end
	return networkownerswitch <= tick()
end
local vapeAssetTable = {["vape/assets/VapeCape.png"] = "rbxassetid://18341361652", ["vape/assets/ArrowIndicator.png"] = "rbxassetid://13350766521"}
local getcustomasset = getsynasset or getcustomasset or function(location) return vapeAssetTable[location] or "" end
local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end
local synapsev3 = syn and syn.toast_notification and "V3" or ""
local worldtoscreenpoint = function(pos)
	if synapsev3 == "V3" then
		local scr = worldtoscreen({pos})
		return scr - Vector3.new(0, 36, 0), scr.Z > 0
	end
	return gameCamera.WorldToScreenPoint(gameCamera, pos)
end
local worldtoviewportpoint = function(pos)
	if synapsev3 == "V3" then
		local scr = worldtoscreen({pos})
		return scr, scr.Z > 0
	end
	return gameCamera.WorldToViewportPoint(gameCamera, pos)
end

local function downloadVapeAsset(path)
	if not isfile(path) then
		task.spawn(function()
			local textlabel = Instance.new("TextLabel")
			textlabel.Size = UDim2.new(1, 0, 0, 36)
			textlabel.Text = "Downloading "..path
			textlabel.BackgroundTransparency = 1
			textlabel.TextStrokeTransparency = 0
			textlabel.TextSize = 30
			textlabel.Font = Enum.Font.SourceSans
			textlabel.TextColor3 = Color3.new(1, 1, 1)
			textlabel.Position = UDim2.new(0, 0, 0, -36)
			textlabel.Parent = GuiLibrary.MainGui
			task.wait(0.2)
			textlabel:Destroy()
		end)
		local suc, req = pcall(function() return vapeGithubRequest(path:gsub("vape/assets", "assets")) end)
		if suc and req then
			writefile(path, req)
		else
			return ""
		end
	end
	if not vapeCachedAssets[path] then vapeCachedAssets[path] = getcustomasset(path) end
	return vapeCachedAssets[path]
end

local function warningNotification(title, text, delay)
	local suc, res = pcall(function()
		local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/WarningNotification.png")
		frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
		return frame
	end)
	return (suc and res)
end

InfoNotification = function(title, text, delay)
	local success, frame = pcall(function()
		GuiLibrary.CreateNotification(title, text, delay)
	end)
	return success and frame
end

errorNotification = function(title, text, delay)
	local success, frame = pcall(function()
		local notification = GuiLibrary.CreateNotification(title, text, delay or 6.5, 'assets/WarningNotification.png')
		notification.IconLabel.ImageColor3 = Color3.new(220, 0, 0)
		notification.Frame.Frame.ImageColor3 = Color3.new(220, 0, 0)
	end)
	return success and frame
end

local function removeTags(str)
	str = str:gsub("<br%s*/>", "\n")
	return (str:gsub("<[^<>]->", ""))
end

local function run(name, func)
	local function displayErrorPopup(text, funclist)
		local oldidentity = getidentity()
		setidentity(8)
		local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
		local prompt = ErrorPrompt.new("Default")
		prompt._hideErrorCode = true
		local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
		prompt:setErrorTitle("Vape")
		local funcs
		if funclist then 
			funcs = {}
			local num = 0
			for i,v in pairs(funclist) do 
				num = num + 1
				table.insert(funcs, {
					Text = i,
					Callback = function() 
						prompt:_close() 
						v()
					end,
					Primary = num == #funclist
				})
			end
		end
		prompt:updateButtons(funcs or {{
			Text = "OK",
			Callback = function() 
				prompt:_close() 
			end,
			Primary = true
		}}, 'Default')
		prompt:setParent(gui)
		prompt:_open(text)
		setidentity(oldidentity)
		shared.VapeOpenGui = false
	end

	local function errorNotification(title, text, delay)
		local suc, res = pcall(function()
			local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/InfoNotification.png")
			frame.Frame.Frame.ImageColor3 = Color3.fromRGB(220, 0, 0)
			return frame
		end)
		warn(title..": "..text)
		return (suc and res)
	end

	local function performanceWarning(title, text, delay)
		local suc, res = pcall(function()
			local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/WarningNotification.png")
			frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 165, 0)
			return frame
		end)
		warn(title..": "..text)
		return (suc and res)
	end

	local ModuleName
	local ModuleFunction
	if name then
		if type(name) == "string" then
			ModuleName = name
			if func and type(func) == "function" then ModuleFunction = func end
		elseif type(name) == "function" then
			if func then errorNotification("VoidwareErrorHandler", "Unknown type of function use done! func specified type: "..type(func), 20) else
				ModuleFunction = name
				ModuleName = "Not specified"
			end
		end
	end

	if ModuleFunction then
		local startTime = os.clock()
		local startMem = collectgarbage("count")

		local suc, err = xpcall(function() task.spawn(function() ModuleFunction() end) end, function() print("Error") end)

		local endTime = os.clock()
		local endMem = collectgarbage("count")
		local execTime = endTime - startTime
		local memUsage = endMem - startMem

		if err then
			local text = "A module failed to load! ModuleName: "..ModuleName.." Error: "..err
			displayErrorPopup(text)
			errorNotification("VoidwareErrorHandler", text, 20)
		else
			if execTime > 1 then
				if shared.VapeDeveloper then
					performanceWarning("Performance Warning", "ModuleName: "..ModuleName.." took "..execTime.." seconds to execute.", 20)
				end
			end
			if memUsage > 100 then
				if shared.VapeDeveloper then
					performanceWarning("Memory Warning", "ModuleName: "..ModuleName.." used "..memUsage.." KB of memory.", 20)
				end
			end
		end
	else
		if ModuleName then
			local text = "Failure trying to load a module! Unknown use of function. Error log: name: "..ModuleName.." Unknown function!"
			displayErrorPopup(text)
			errorNotification("VoidwareErrorHandler", text, 20)
		else
			local text = "Failure trying to load a module completely! No name and no function!!!"
			displayErrorPopup(text)
			errorNotification("VoidwareErrorHandler", text, 20)
		end
	end
end

getgenv().run = run
getgenv().runcode = getgenv().run
getgenv().runFunction = getgenv().run

local function isVulnerable(plr)
	return plr.Humanoid.Health > 0 and not plr.Character:FindFirstChildWhichIsA("ForceField")
end

local function getPlayerColor(plr)
	if isFriend(plr, true) then
		return Color3.fromHSV(GuiLibrary.ObjectsThatCanBeSaved["Friends ColorSliderColor"].Api.Hue, GuiLibrary.ObjectsThatCanBeSaved["Friends ColorSliderColor"].Api.Sat, GuiLibrary.ObjectsThatCanBeSaved["Friends ColorSliderColor"].Api.Value)
	end
	return tostring(plr.TeamColor) ~= "White" and plr.TeamColor.Color
end

local whitelist = {data = {WhitelistedUsers = {}}, hashes = {}, said = {}, alreadychecked = {}, customtags = {}, loaded = false, localprio = 0, hooked = false, get = function() return 0, true end}
local function isEnabled(module)
	return GuiLibrary.ObjectsThatCanBeSaved[module] and GuiLibrary.ObjectsThatCanBeSaved[module].Api.Enabled and true or false
end

task.spawn(function()
	local function chatfunc(plr)
		table.insert(vapeConnections, plr.Chatted:Connect(function(message)
			RenderStore.MessageReceived:Fire(plr, message)
		end))
	end
	table.insert(vapeConnections, textChatService.MessageReceived:Connect(function(data)
		local success, player = pcall(function() 
			return playersService:GetPlayerByUserId(data.TextSource.UserId) 
		end)
		if success then 
			RenderStore.MessageReceived:Fire(player, data.Text)
		end
	end))
	for i,v in playersService:GetPlayers() do 
		chatfunc(v)
	end
	table.insert(vapeConnections, playersService.PlayerAdded:Connect(chatfunc))
end)

getTablePosition = function(tab, val, first)
	local count = 0
	for i,v in tab do
		count = count + 1 
		if (first and i or v) == val then 
			break
		end
	end
	return count
end

isAlive = function(plr, nohealth) 
	plr = plr or lplr
	local alive = false
	if plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') and plr.Character.PrimaryPart and plr.Character:FindFirstChild('Head') then 
		alive = true
	end
	local success, health = pcall(function() return plr.Character:FindFirstChildWhichIsA('Humanoid').Health end)
	if success and health <= 0 and not nohealth then
		alive = false
	end
	return alive
end

playSound = function(soundID, loop)
	soundID = (soundID or ''):gsub('rbxassetid://', '')
	local sound = Instance.new('Sound')
	sound.Looped = loop and true or false
	sound.Parent = workspace
	sound.SoundId = 'rbxassetid://'..soundID
	sound:Play()
	sound.Ended:Connect(function() sound:Destroy() end)
	return sound
end

dumptable = function(tab, tabtype, sortfunction)
	local data = {}
	for i,v in next, (tab) do
		local tabtype = tabtype and tabtype == 1 and i or v
		table.insert(data, tabtype)
	end
	if sortfunction and type(sortfunction) == 'function' then
		table.sort(data, sortfunction)
	end
	return data
end

playerRaycasted = function(plr, customvector)
	plr = plr or lplr
	return workspace:Raycast(plr.Character.PrimaryPart.Position, customvector or Vector3.new(0, -10000, 0), RenderStore.objectraycast)
end

GetTarget = function(distance, healthmethod, raycast, npc, team)
	local magnitude, target = (distance or healthmethod and 0 or math.huge), {}
	for i,v in playersService:GetPlayers() do 
		if v ~= lplr and isAlive(v) and isAlive(lplr, true) then 
			if not ({shared.vapewhitelist:get(v)}) then
				continue
			end
			if not shared.vapeentity.isPlayerTargetable(v) then 
				continue
			end
			if not playerRaycasted(v) and raycast then 
				continue
			end
			if healthmethod and v.Character.Humanoid.Health < magnitude then 
				magnitude = v.Character.Humanoid.Health
				target.Human = true
				target.RootPart = v.Character.HumanoidRootPart
				target.Humanoid = v.Character.Humanoid
				target.Player = v
				continue
			end 
			local playerdistance = (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
			if playerdistance < magnitude then 
				magnitude = playerdistance
				target.Human = true
				target.RootPart = v.Character.HumanoidRootPart
				target.Humanoid = v.Character.Humanoid
				target.Player = v
			end
		end
	end
	return target
end

characterDescendant = function(object)
	for i,v in playersService:GetPlayers() do 
		if v.Character and object:IsDescendantOf(v.Character) then 
			return v 
		end
	end
end

GetAllTargets = function(distance, sort)
	local targets = {}
	for i,v in playersService:GetPlayers() do 
		if v ~= lplr and isAlive(v) and isAlive(lplr, true) then 
			if not ({shared.vapewhitelist:get(v)}) then 
				continue
			end
			if not entityLibrary.isPlayerTargetable(v) then 
				continue
			end
			local playerdistance = (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
			if playerdistance <= (distance or math.huge) then 
				table.insert(targets, {Human = true, RootPart = v.Character.PrimaryPart, Humanoid = v.Character.Humanoid, Player = v})
			end
		end
	end
	if sort then 
		table.sort(targets, sort)
	end
	return targets
end

getnewserver = function(customgame, popular, performance)
	local players, server = 0, nil
	local success, serverTable = pcall(function() return httpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..(customgame or game.PlaceId)..'/servers/Public?sortOrder=Asc&limit=100', true)) end)
	if success and type(serverTable) == 'table' and type(serverTable.data) == 'table' then 
		for i,v in serverTable.data do 
			if v.id and v.playing and v.maxPlayers and tonumber(v.maxPlayers) > tonumber(v.playing) and tonumber(v.playing) > 0 then 
				if v.id == tostring(game.JobId) then 
					continue 
				end
				if tonumber(v.playing) < players and popular then 
					continue
				end
				if performance and v.ping and tonumber(v.ping) > 170 then
					continue
				end
				players = tonumber(v.playing)
				server = v.id
			end
		end
	end
	return server
end

switchserver = function(onfound)
	local server 
	onfound = onfound or function() end
	repeat server = getnewserver() task.wait() until server
	task.spawn(onfound, server)
	game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, server, lplr)
end

sendmessage = function(text)
	if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		textChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(text)
	else
		replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, 'All')
	end
end

sendprivatemessage = function(player, text)
	if player then
		if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			local oldchannel = textChatService.ChatInputBarConfiguration.TargetTextChannel
			local whisperchannel = game:GetService('RobloxReplicatedStorage').ExperienceChat.WhisperChat:InvokeServer(player.UserId)
			if whisperchannel then
				whisperchannel:SendAsync(text)
				textChatService.ChatInputBarConfiguration.TargetTextChannel = oldchannel
			end
		else
			replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('/w '..player.Name.." "..text, 'All')
		end
	end
end

local function calculateMoveVector(cameraRelativeMoveVector)
	local c, s
	local _, _, _, R00, R01, R02, _, _, R12, _, _, R22 = gameCamera.CFrame:GetComponents()
	if R12 < 1 and R12 > -1 then
		c = R22
		s = R02
	else
		c = R00
		s = -R01*math.sign(R12)
	end
	local norm = math.sqrt(c*c + s*s)
	return Vector3.new(
		(c*cameraRelativeMoveVector.X + s*cameraRelativeMoveVector.Z)/norm,
		0,
		(c*cameraRelativeMoveVector.Z - s*cameraRelativeMoveVector.X)/norm
	)
end

local raycastWallProperties = RaycastParams.new()
local function raycastWallCheck(char, checktable)
	if not checktable.IgnoreObject then
		checktable.IgnoreObject = raycastWallProperties
		local filter = {lplr.Character, gameCamera}
		for i,v in pairs(entityLibrary.entityList) do
			if v.Targetable then
				table.insert(filter, v.Character)
			end
		end
		for i,v in pairs(checktable.IgnoreTable or {}) do
			table.insert(filter, v)
		end
		raycastWallProperties.FilterDescendantsInstances = filter
	end
	local ray = workspace:Raycast(checktable.Origin, (char[checktable.AimPart].Position - checktable.Origin), checktable.IgnoreObject)
	return not ray
end

local function EntityNearPosition(distance, checktab)
	checktab = checktab or {}
	if entityLibrary.isAlive then
		local sortedentities = {}
		for i, v in pairs(entityLibrary.entityList) do
			if not v.Targetable then continue end
			if isVulnerable(v) then
				local playerPosition = v.RootPart.Position
				local mag = (entityLibrary.character.HumanoidRootPart.Position - playerPosition).magnitude
				if checktab.Prediction and mag > distance then
					mag = (entityLibrary.LocalPosition - playerPosition).magnitude
				end
				if mag <= distance then
					table.insert(sortedentities, {entity = v, Magnitude = v.Target and -1 or mag})
				end
			end
		end
		table.sort(sortedentities, function(a, b) return a.Magnitude < b.Magnitude end)
		for i, v in pairs(sortedentities) do
			if checktab.WallCheck then
				if not raycastWallCheck(v.entity, checktab) then continue end
			end
			return v.entity
		end
	end
end

local function EntityNearMouse(distance, checktab)
	checktab = checktab or {}
	if entityLibrary.isAlive then
		local sortedentities = {}
		local mousepos = inputService:GetMouseLocation()
		for i, v in pairs(entityLibrary.entityList) do
			if not v.Targetable then continue end
			if isVulnerable(v) then
				local vec, vis = worldtoscreenpoint(v[checktab.AimPart].Position)
				local mag = (mousepos - Vector2.new(vec.X, vec.Y)).magnitude
				if vis and mag <= distance then
					table.insert(sortedentities, {entity = v, Magnitude = v.Target and -1 or mag})
				end
			end
		end
		table.sort(sortedentities, function(a, b) return a.Magnitude < b.Magnitude end)
		for i, v in pairs(sortedentities) do
			if checktab.WallCheck then
				if not raycastWallCheck(v.entity, checktab) then continue end
			end
			return v.entity
		end
	end
end

local function AllNearPosition(distance, amount, checktab)
	local returnedplayer = {}
	local currentamount = 0
	checktab = checktab or {}
	if entityLibrary.isAlive then
		local sortedentities = {}
		for i, v in pairs(entityLibrary.entityList) do
			if not v.Targetable then continue end
			if isVulnerable(v) then
				local playerPosition = v.RootPart.Position
				local mag = (entityLibrary.character.HumanoidRootPart.Position - playerPosition).magnitude
				if checktab.Prediction and mag > distance then
					mag = (entityLibrary.LocalPosition - playerPosition).magnitude
				end
				if mag <= distance then
					table.insert(sortedentities, {entity = v, Magnitude = mag})
				end
			end
		end
		table.sort(sortedentities, function(a, b) return a.Magnitude < b.Magnitude end)
		for i,v in pairs(sortedentities) do
			if checktab.WallCheck then
				if not raycastWallCheck(v.entity, checktab) then continue end
			end
			table.insert(returnedplayer, v.entity)
			currentamount = currentamount + 1
			if currentamount >= amount then break end
		end
	end
	return returnedplayer
end

local sha = loadstring(vapeGithubRequest("Libraries/sha.lua"))()
run("plrstr", function() local olduninject
	function whitelist:get(plr)
		local plrstr = self:hash(plr.Name..plr.UserId)
		for i,v in self.data.WhitelistedUsers do
			if v.hash == plrstr then
				return v.level, v.attackable or whitelist.localprio >= v.level, v.tags
			end
		end
		if plr == game:GetService("Players").LocalPlayer then
			for i,v in self.data.WhitelistedUsers do
				if v.hash == "defaultdata" then
					return v.level, v.attackable or whitelist.localprio >= v.level, v.tags
				end
			end
		end
		return 0, true
	end

	function whitelist:isingame()
		for i, v in playersService:GetPlayers() do
			if self:get(v) ~= 0 then
				return true
			end
		end
		return false
	end

	function whitelist:tag(plr, text, rich)
		local plrtag = ({self:get(plr)}) or self.customtags[plr.Name] or {}
		if not text then return plrtag end
		local newtag = ''
		for i, v in plrtag do
			newtag = newtag..(rich and '<font color="#'..v.color:ToHex()..'">['..v.text..']</font>' or '['..removeTags(v.text)..']')..' '
		end
		return newtag
	end

	function whitelist:hash(str)
		if self.hashes[str] == nil and sha then
			self.hashes[str] = sha.sha512(str..'SelfReport')
		end
		return self.hashes[str] or ''
	end

	function whitelist:getplayer(arg)
		if arg == 'default' and self.localprio == 0 then return true end
		if arg == 'private' and self.localprio == 1 then return true end
		if arg and lplr.Name:lower():sub(1, arg:len()) == arg:lower() then return true end
		return false
	end

	function whitelist:playeradded(v, joined)
		if self:get(v) ~= 0 then
			if self.alreadychecked[v.UserId] then return end
			self.alreadychecked[v.UserId] = true
			self:hook()
			if self.localprio == 0 then
				olduninject = GuiLibrary.SelfDestruct
				GuiLibrary.SelfDestruct = function() warningNotification('Vape', 'No escaping the private members :)', 10) end
				if joined then task.wait(10) end
				if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
					local oldchannel = textChatService.ChatInputBarConfiguration.TargetTextChannel
					local newchannel = cloneref(game:GetService('RobloxReplicatedStorage')).ExperienceChat.WhisperChat:InvokeServer(v.UserId)
					if newchannel then newchannel:SendAsync('helloimusinginhaler') end
					textChatService.ChatInputBarConfiguration.TargetTextChannel = oldchannel
				elseif replicatedStorage:FindFirstChild('DefaultChatSystemChatEvents') then
					replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('/w '..v.Name..' helloimusinginhaler', 'All')
				end
			end
		end
	end

	function whitelist:checkmessage(msg, plr)
		local otherprio = self:get(plr)
		if plr == lplr and msg == 'helloimusinginhaler' then return true end
		if self.localprio > 0 and self.said[plr.Name] == nil and msg == 'helloimusinginhaler' and plr ~= lplr then
			self.said[plr.Name] = true
			warningNotification('Vape', plr.Name..' is using vape!', 60)
			self.customtags[plr.Name] = {{text = 'VAPE USER', color = Color3.new(1, 1, 0)}}
			local newent = entityLibrary.getEntity(plr)
			if newent then entityLibrary.Events.EntityUpdated:Fire(newent) end
			return true
		end
		if self.localprio < otherprio or plr == lplr then
			local args = msg:split(' ')
			table.remove(args, 1)
			if self:getplayer(args) then
				table.remove(args, 1)
				for i,v in self.commands do
					if msg:len() >= (i:len() + 1) and msg:sub(1, i:len() + 1):lower() == ";"..i:lower() then
						v(plr, args)
						return true
					end
				end
			end
		end
		return false
	end

	function whitelist:newchat(obj, plr, skip)
		obj.Text = self:tag(plr, true, true)..obj.Text
		local sub = obj.ContentText:find(': ')
		if sub then
			if not skip and self:checkmessage(obj.ContentText:sub(sub + 3, #obj.ContentText), plr) then
				obj.Visible = false
			end
		end
	end

	function whitelist:oldchat(func)
		local msgtable = debug.getupvalue(func, 3)
		if typeof(msgtable) == 'table' and msgtable.CurrentChannel then
			whitelist.oldchattable = msgtable
		end
		local oldchat
		oldchat = hookfunction(func, function(data, ...)
			local plr = playersService:GetPlayerByUserId(data.SpeakerUserId)
			if plr then
				data.ExtraData.Tags = data.ExtraData.Tags or {}
				for i, v in self:tag(plr) do
					table.insert(data.ExtraData.Tags, {TagText = v.text, TagColor = v.color})
				end
				if data.Message and self:checkmessage(data.Message, plr) then data.Message = '' end
			end
			return oldchat(data, ...) end)
		table.insert(vapeConnections, {Disconnect = function() hookfunction(func, oldchat) end})
	end

	function whitelist:hook()
		if self.hooked then return end
		self.hooked = true
		local exp = coreGui:FindFirstChild('ExperienceChat')
		if exp then
			local bubblechat = exp:WaitForChild('bubbleChat', 5)
			if bubblechat then
				table.insert(vapeConnections, bubblechat.DescendantAdded:Connect(function(newbubble)
					if newbubble:IsA('TextLabel') and newbubble.Text:find('helloimusinginhaler') then
						newbubble.Parent.Parent.Visible = false
					end
				end))
			end
		end
		if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			if exp then
				table.insert(vapeConnections, exp:FindFirstChild('RCTScrollContentView', true).ChildAdded:Connect(function(obj)
					local plr = playersService:GetPlayerByUserId(tonumber(obj.Name:split('-')) or 0)
					obj = obj:FindFirstChild('TextMessage', true)
					if obj then
						if plr then
							self:newchat(obj, plr, true)
							obj:GetPropertyChangedSignal('Text'):Wait()
							self:newchat(obj, plr)
						end
						if obj.ContentText:sub(1, 35) == 'You are now privately chatting with' then
							obj.Visible = false
						end
					end
				end))
			end
		elseif replicatedStorage:FindFirstChild('DefaultChatSystemChatEvents') then
			pcall(function()
				for i, v in getconnections(replicatedStorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent) do
					if v.Function and table.find(debug.getconstants(v.Function), 'UpdateMessagePostedInChannel') then
						whitelist:oldchat(v.Function)
						break
					end
				end
				for i, v in getconnections(replicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent) do
					if v.Function and table.find(debug.getconstants(v.Function), 'UpdateMessageFiltered') then
						whitelist:oldchat(v.Function)
						break
					end
				end
			end)
		end
	end

	function whitelist:check(first)
		local whitelistloaded, err = pcall(function()
			local _, subbed = pcall(function() return game:HttpGet('https://github.com/Erchobg/whitelists'):sub(100000, 160000) end)
			local commit = subbed:find('spoofed_commit_check')
			commit = commit and subbed:sub(commit + 21, commit + 60) or nil
			commit = commit and #commit == 40 and commit or 'main'
			whitelist.textdata = game:HttpGet('https://raw.githubusercontent.com/Erchobg/whitelists/'..commit..'/PlayerWhitelist.json', true)
		end)
		if not whitelistloaded or not sha or not whitelist.get then return true end
		whitelist.loaded = true
		if not first or whitelist.textdata ~= whitelist.olddata then
			if not first then
				whitelist.olddata = isfile('vape/profiles/whitelist.json') and readfile('vape/profiles/whitelist.json') or nil
			end
			whitelist.data = game:GetService('HttpService'):JSONDecode(whitelist.textdata)
			whitelist.localprio = whitelist:get(lplr)

			for i, v in whitelist.data.WhitelistedUsers do
				if v.tags then
					for i2, v2 in v.tags do
						v2.color = Color3.fromRGB(unpack(v2.color))
					end
				end
			end

			for i, v in playersService:GetPlayers() do whitelist:playeradded(v) end
			if not whitelist.connection then
				whitelist.connection = playersService.PlayerAdded:Connect(function(v) whitelist:playeradded(v, true) end)
			end
			if (entityLibrary.isAlive or #entityLibrary.entityList > 0) then
				entityLibrary.fullEntityRefresh()
			end

			if whitelist.textdata ~= whitelist.olddata then
				if whitelist.data.Announcement.expiretime > os.time() then
					local targets = whitelist.data.Announcement.targets == 'all' and {tostring(lplr.UserId)} or targets:split(',')
					if table.find(targets, tostring(lplr.UserId)) then
						local hint = Instance.new('Hint')
						hint.Text = 'VAPE ANNOUNCEMENT: '..whitelist.data.Announcement.text
						hint.Parent = workspace
						game:GetService('Debris'):AddItem(hint, 20)
					end
				end
				whitelist.olddata = whitelist.textdata
				pcall(function() writefile('vape/profiles/whitelist.json', whitelist.textdata) end)
			end

			if whitelist.data.KillVape then
				GuiLibrary.SelfDestruct()
				return true
			end

			if whitelist.data.BlacklistedUsers[tostring(lplr.UserId)] then
				task.spawn(lplr.kick, lplr, whitelist.data.BlacklistedUsers[tostring(lplr.UserId)])
				return true
			end
		end
	end
getgenv().RunLoops = RunLoops
local teleportConnection = game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State, PlaceId, InstanceId)
	if State == Enum.TeleportState.Started then
		local vapePrivateCheck = shared.VapePrivate
		shared.VapeSwitchServers = true
		shared.VapeOpenGui = (GuiLibrary.MainGui:FindFirstChild("ClickGui").Visible)
		shared.VapePrivate = vapePrivateCheck
		queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua'))()")
		GuiLibrary.SelfDestruct()
	end
end)

local function isEnabled(module)
	return GuiLibrary.ObjectsThatCanBeSaved[module] and GuiLibrary.ObjectsThatCanBeSaved[module].Api.Enabled and true or false
end

local function getValue(module)
	local moduleTable = GuiLibrary.ObjectsThatCanBeSaved[module]
	if moduleTable.Type == "Slider" then return moduleTable.Api.Value end
end

local function getColor(module)
	local moduleTable = GuiLibrary.ObjectsThatCanBeSaved[module]
	if moduleTable.Type == "ColorSlider" then return Color3.fromHSV(moduleTable.Api.Hue, moduleTable.Api.Sat, moduleTable.Api.Value) end
end

local function getDropdown(module)
	local moduleTable = GuiLibrary.ObjectsThatCanBeSaved[module]
	if moduleTable.Type == "Dropdown" then return moduleTable.Api.Value end
end

local function getTwoSlider(module)
	local moduleTable = GuiLibrary.ObjectsThatCanBeSaved[module]
	if moduleTable.Type == "TwoSlider" then return moduleTable.Api.Value, moduleTable.Api.Value2 end
end

local function getClient(module)
	return GuiLibrary.ObjectsThatCanBeSaved
end

getgenv().GetClient = getClient
getgenv().IsEnabled = isEnabled
getgenv().GetValue = getValue
getgenv().GetColor = getColor
getgenv().GetDropdown = getDropdown
getgenv().GetTwoSlider = getTwoSlider
getgenv().shared = shared
getgenv().vapeConnections = vapeConnections
getgenv().RenderStore = RenderStore
getgenv().VoidwareStore = VoidwareStore
getgenv().RenderFunctions = RenderFunctions
getgenv().GetTarget = GetTarget
getgenv().GetAllTargets = GetAllTargets
getgenv().isAlive = isAlive
getgenv().isFriend = isFriend
getgenv().isTarget = isTarget
getgenv().isVulnerable = isVulnerable
getgenv().getPlayerColor = getPlayerColor
getgenv().playSound = playSound
getgenv().dumptable = dumptable
getgenv().sendmessage = sendmessage
getgenv().sendprivatemessage = sendprivatemessage
getgenv().characterDescendant = characterDescendant
getgenv().playerRaycasted = playerRaycasted
getgenv().getnewserver = getnewserver
getgenv().switchserver = switchserver
getgenv().warningNotification = warningNotification
getgenv().InfoNotification = InfoNotification
getgenv().errorNotification = errorNotification
getgenv().getTablePosition = getTablePosition
getgenv().EntityNearPosition = EntityNearPosition
getgenv().EntityNearMouse = EntityNearMouse
getgenv().AllNearPosition = AllNearPosition
getgenv().isnetworkowner = isnetworkowner
getgenv().raycastWallCheck = raycastWallCheck
getgenv().calculateMoveVector = calculateMoveVector

local TextGUIObjects = {}
local TextGUIConnections = {}
getgenv().TextGUIObjects = TextGUIObjects
getgenv().TextGUIConnections = TextGUIConnections

table.insert(vapeConnections, GuiLibrary.SelfDestructEvent:Connect(function()
	for i,v in pairs(vapeConnections) do 
		if type(v) == 'table' then
			for i2, v2 in pairs(v) do
				if type(v2.Disconnect) == 'function' then
					v2:Disconnect()
				end
			end
		elseif type(v.Disconnect) == 'function' then
			v:Disconnect()
		end
	end
	for i,v in pairs(RenderStore.Bindable) do v:Destroy() end
	table.clear(getgenv())
end))

local MiddleClickInput
run("MiddleClick", function()
	if not isEnabled("MiddleClickFriendToggle") then return end
	local friend, target, lastent = nil, nil, nil
	local function updateMouseIcon()
		if friend or target then
			if friend then
				GuiLibrary.MainGui.MouseIcon = 'rbxassetid://9332213197'
			elseif target then
				GuiLibrary.MainGui.MouseIcon = 'rbxassetid://1324103522'
			end
		elseif GuiLibrary.MainGui.MouseIcon ~= '' then
			GuiLibrary.MainGui.MouseIcon = ''
		end
	end

	MiddleClickInput = inputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if input.UserInputType == Enum.UserInputType.MouseButton3 then
			local entity = EntityNearMouse(200, {WallCheck = true})
			if entity then
				if entity.Friend or entity.Target then
					local entityname = entity.Player.Name
					local obj = GuiLibrary.ObjectsThatCanBeSaved[(entity.Friend and "FriendsList" or "TargetsList").."TextCircleList"].Api
					local friendind = table.find(obj.ObjectList, entityname)
					if friendind then
						obj.ObjectListEnabled[friendind] = false
						obj.RePosition()
					end
				else
					local obj = GuiLibrary.ObjectsThatCanBeSaved.FriendsListTextCircleList.Api
					table.insert(obj.ObjectList, entity.Player.Name)
					table.insert(obj.ObjectListEnabled, true)
					obj.RePosition()
					obj.FriendRefresh:Fire()
				end
			end
		end
	end)

	RunLoops:BindToRenderStep("MCF", function()
		friend, target = nil, nil
		local entity = EntityNearMouse(200, {WallCheck = true})
		if entity then
			if entity.Friend then
				friend = true
			elseif entity.Target then
				target = true
			end
			lastent = entity
		end
		updateMouseIcon()
	end)
end)

local function moduleRun(path)
	local suc, res = pcall(function() return vapeGithubRequest("Modules/"..path..".lua") end)
	if suc then
		local suc2, res2 = pcall(loadstring(res))
		if not suc2 then
			errorNotification("Voidware", "Module failed to load: "..path..".lua | "..res2, 10)
		end
	else
		errorNotification("Voidware", "Module failed to download: "..path..".lua | "..res, 10)
	end
end

local MainWindow = GuiLibrary.ObjectsThatCanBeSaved.MainWindow.Api
local BlatantWindow = MainWindow.CreateWindow({Name = "Blatant", Icon = "vape/assets/BlatantIcon.png"})
local CombatWindow = MainWindow.CreateWindow({Name = "Combat", Icon = "vape/assets/CombatIcon.png"})
local UtilityWindow = MainWindow.CreateWindow({Name = "Utility", Icon = "vape/assets/UtilityIcon.png"})
local RenderWindow = MainWindow.CreateWindow({Name = "Render", Icon = "vape/assets/RenderIcon.png"})
local WorldWindow = MainWindow.CreateWindow({Name = "World", Icon = "vape/assets/WorldIcon.png"})
local function isFriend(plr, recolor)
	if GuiLibrary.ObjectsThatCanBeSaved["Use FriendsToggle"].Api.Enabled then
		local friend = table.find(GuiLibrary.ObjectsThatCanBeSaved.FriendsListTextCircleList.Api.ObjectList, plr.Name)
		friend = friend and GuiLibrary.ObjectsThatCanBeSaved.FriendsListTextCircleList.Api.ObjectListEnabled[friend]
		if recolor then
			friend = friend and GuiLibrary.ObjectsThatCanBeSaved["Recolor visualsToggle"].Api.Enabled
		end
		return friend
	end
	return nil
end

local function isTarget(plr)
	local friend = table.find(GuiLibrary.ObjectsThatCanBeSaved.TargetsListTextCircleList.Api.ObjectList, plr.Name)
	friend = friend and GuiLibrary.ObjectsThatCanBeSaved.TargetsListTextCircleList.Api.ObjectListEnabled[friend]
	return friend
end
local function loadModules()
	moduleRun("Blatant/Velocity")
	moduleRun("Blatant/NoFall")
	moduleRun("Blatant/Scaffold")
	moduleRun("Blatant/Fly")
	moduleRun("Blatant/Speed")
	moduleRun("Blatant/AutoClicker")
	moduleRun("Blatant/Reach")
	moduleRun("Blatant/KillAura")
	moduleRun("Blatant/AimAssist")
	moduleRun("Blatant/SilentAim")
	moduleRun("Blatant/Hitboxes")
	moduleRun("Combat/BowAimbot")
	moduleRun("Combat/Triggerbot")
	moduleRun("Combat/AntiAFK")
	moduleRun("Utility/Blink")
	moduleRun("Utility/InvManager")
	moduleRun("Utility/SelfDestruct")
	moduleRun("Utility/AutoTool")
	moduleRun("Utility/Spammer")
	moduleRun("Utility/Phase")
	moduleRun("Utility/Macros")
	moduleRun("Utility/ServerHop")
	moduleRun("Render/Chams")
	moduleRun("Render/ESP")
	moduleRun("Render/Fullbright")
	moduleRun("Render/Tracers")
	moduleRun("Render/NameTags")
	moduleRun("Render/Search")
	moduleRun("Render/Waypoints")
	moduleRun("Render/Xray")
	moduleRun("World/Timer")
	moduleRun("World/AutoHeal")
	moduleRun("World/FastPlace")
	moduleRun("World/NoSlow")
	moduleRun("World/Breaker")
	moduleRun("World/AntiInvis")
	moduleRun("World/AntiBot")
	moduleRun("World/ChestStealer")
end

pcall(loadModules)

local entityLibrary = loadstring(vapeGithubRequest("Libraries/entityHandler.lua"))()
shared.vapeentity = entityLibrary
do
	entityLibrary.selfDestruct()
	table.insert(vapeConnections, GuiLibrary.ObjectsThatCanBeSaved.FriendsListTextCircleList.Api.FriendRefresh.Event:Connect(function()
		entityLibrary.fullEntityRefresh()
	end))
	table.insert(vapeConnections, GuiLibrary.ObjectsThatCanBeSaved["Teams by colorToggle"].Api.Refresh.Event:Connect(function()
		entityLibrary.fullEntityRefresh()
	end))
	local oldUpdateBehavior = entityLibrary.getUpdateConnections
	entityLibrary.getUpdateConnections = function(newEntity)
		local oldUpdateConnections = oldUpdateBehavior(newEntity)
		table.insert(oldUpdateConnections, {Connect = function()
			newEntity.Friend = isFriend(newEntity.Player) and true
			newEntity.Target = isTarget(newEntity.Player) and true
			return {Disconnect = function() end}
		end})
		return oldUpdateConnections
	end
	entityLibrary.isPlayerTargetable = function(plr)
		if isFriend(plr) then return false end
		if not whitelist:get(plr) == 2 then return false end
		if (not GuiLibrary.ObjectsThatCanBeSaved["Teams by colorToggle"].Api.Enabled) then return true end
		if (not lplr.Team) then return true end
		if (not plr.Team) then return true end
		if plr.Team ~= lplr.Team then return true end
		return #plr.Team:GetPlayers() == playersService.NumPlayers
	end
	entityLibrary.fullEntityRefresh()
	entityLibrary.LocalPosition = Vector3.zero

	task.spawn(function()
		local postable = {}
		repeat
			task.wait()
			if entityLibrary.isAlive then
				table.insert(postable, {Time = tick(), Position = entityLibrary.character.HumanoidRootPart.Position})
				if #postable > 100 then
					table.remove(postable, 1)
				end
				local closestmag = 9e9
				local closestpos = entityLibrary.character.HumanoidRootPart.Position
				local currenttime = tick()
				for i, v in pairs(postable) do
					local mag = 0.1 - (currenttime - v.Time)
					if mag < closestmag and mag > 0 then
						closestmag = mag
						closestpos = v.Position
					end
				end
				entityLibrary.LocalPosition = closestpos
			end
		until not vapeInjected
	end)
end

local function createLegitModules()
	LegitModules = {}
	local enabledModules = {}
	local function drag(gui)
		task.spawn(function()
			local dragging
			local dragInput
			local dragStart = Vector3.new(0, 0, 0)
			local startPos
			local function update(input)
				local delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + (delta.X * (1 / GuiLibrary.MainRescale.Scale)), startPos.Y.Scale, startPos.Y.Offset + (delta.Y * (1 / GuiLibrary.MainRescale.Scale)))
				gui.Position = Position
			end
			gui.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
					if not gui.Parent.Parent.Parent.Visible then
						dragging = true
						startPos = gui.Position
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								dragging = false
							end
						end)
					end
				end
			end)
			gui.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			inputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)
		end)
	end
	
	function LegitModules.Create(name)
		local api = {Update = Instance.new("BindableEvent")}
		local moduleFrame = Instance.new("Frame")
		moduleFrame.Size = UDim2.new(0, 163, 0, 114)
		moduleFrame.BackgroundColor3 = Color3.fromRGB(44, 43, 44)
		moduleFrame.Parent = LegitModulesList
		local moduleCorner = Instance.new("UICorner")
		moduleCorner.CornerRadius = UDim.new(0, 3)
		moduleCorner.Parent = moduleFrame
		local moduleToggle = Instance.new("ImageButton")
		moduleToggle.BackgroundTransparency = 1
		moduleToggle.Size = UDim2.new(0, 24, 0, 12)
		moduleToggle.Position = UDim2.new(1, -33, 0, 9)
		moduleToggle.Image = "rbxassetid://13436402263"
		moduleToggle.Parent = moduleFrame
		local moduleTitle = Instance.new("TextLabel")
		moduleTitle.Size = UDim2.new(1, 0, 0, 31)
		moduleTitle.BackgroundTransparency = 1
		moduleTitle.Font = Enum.Font.Gotham
		moduleTitle.Text = name
		moduleTitle.TextColor3 = Color3.fromRGB(230, 230, 230)
		moduleTitle.TextXAlignment = Enum.TextXAlignment.Left
		moduleTitle.Position = UDim2.new(0, 12, 0, 0)
		moduleTitle.TextSize = 16
		moduleTitle.Parent = moduleFrame
		local moduleChildren = Instance.new("Frame")
		moduleChildren.Size = UDim2.new(1, -24, 1, -43)
		moduleChildren.Position = UDim2.new(0, 12, 0, 31)
		moduleChildren.BackgroundTransparency = 1
		moduleChildren.Parent = moduleFrame
		local moduleList = Instance.new("UIListLayout")
		moduleList.SortOrder = Enum.SortOrder.LayoutOrder
		moduleList.FillDirection = Enum.FillDirection.Vertical
		moduleList.Parent = moduleChildren
		local legitModule = Instance.new("Frame")
		legitModule.BackgroundTransparency = 0.8
		legitModule.Size = UDim2.new(0, 100, 0, 20)
		legitModule.Name = name
		legitModule.BackgroundColor3 = Color3.fromRGB(26, 25, 26)
		legitModule.BorderSizePixel = 0
		legitModule.Visible = false
		legitModule.Parent = legitgui
		local legitModuleTitle = Instance.new("TextLabel")
		legitModuleTitle.Size = UDim2.new(1, 0, 1, 0)
		legitModuleTitle.Font = Enum.Font.Gotham
		legitModuleTitle.TextScaled = true
		legitModuleTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
		legitModuleTitle.Text = name
		legitModuleTitle.BackgroundTransparency = 1
		legitModuleTitle.Parent = legitModule
		local legitModuleTextLimit = Instance.new("UITextSizeConstraint")
		legitModuleTextLimit.MaxTextSize = 14
		legitModuleTextLimit.Parent = legitModuleTitle
		local legitModuleCorner = Instance.new("UICorner")
		legitModuleCorner.CornerRadius = UDim.new(0, 3)
		legitModuleCorner.Parent = legitModule
		api.ToggleButton = function(enabled)
			api.Enabled = enabled
			legitModule.Visible = enabled
			moduleToggle.Image = enabled and "rbxassetid://13436401490" or "rbxassetid://13436402263"
			api.Update:Fire()
		end
		drag(legitModule)
		GuiLibrary.ObjectsThatCanBeSaved[name.."LegitModule"] = {["Type"] = "LegitModule", ["Object"] = legitModule, ["Api"] = api}
		moduleToggle.MouseButton1Click:Connect(function() api.ToggleButton(not api.Enabled) end)
		return {
			CreateSlider = function(sliderName, default, min, max, callback)
				local sliderApi = {}
				sliderApi.Value = default
				local sliderLabel = Instance.new("TextLabel")
				sliderLabel.Size = UDim2.new(1, 0, 0, 14)
				sliderLabel.BackgroundTransparency = 1
				sliderLabel.Font = Enum.Font.Gotham
				sliderLabel.Text = sliderName
				sliderLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
				sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
				sliderLabel.TextSize = 14
				sliderLabel.Parent = moduleChildren
				local slider = Instance.new("Frame")
				slider.Size = UDim2.new(1, 0, 0, 16)
				slider.BackgroundColor3 = Color3.fromRGB(30, 29, 30)
				slider.Parent = moduleChildren
				local sliderFill = Instance.new("Frame")
				sliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
				sliderFill.BackgroundColor3 = Color3.fromHSV(GuiLibrary.ObjectsThatCanBeSaved["Gui ColorSliderColor"].Api.Hue, GuiLibrary.ObjectsThatCanBeSaved["Gui ColorSliderColor"].Api.Sat, GuiLibrary.ObjectsThatCanBeSaved["Gui ColorSliderColor"].Api.Value)
				sliderFill.Parent = slider
				local sliderValue = Instance.new("TextLabel")
				sliderValue.Size = UDim2.new(1, 0, 1, 0)
				sliderValue.BackgroundTransparency = 1
				sliderValue.Font = Enum.Font.Gotham
				sliderValue.Text = default
				sliderValue.TextColor3 = Color3.fromRGB(230, 230, 230)
				sliderValue.TextSize = 14
				sliderValue.Parent = slider
				local function updateSlider(x)
					local percentage = math.clamp((x - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
					local value = math.floor((min + (max - min) * percentage) + 0.5)
					sliderApi.Value = value
					sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
					sliderValue.Text = value
					callback(value)
				end
				slider.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						updateSlider(input.Position.X)
						local moveConn
						local upConn
						moveConn = inputService.InputChanged:Connect(function(input2)
							if input2.UserInputType == Enum.UserInputType.MouseMovement then
								updateSlider(input2.Position.X)
							end
						end)
						upConn = inputService.InputEnded:Connect(function(input2)
							if input2.UserInputType == Enum.UserInputType.MouseButton1 then
								moveConn:Disconnect()
								upConn:Disconnect()
							end
						end)
					end
				end)
			end
		}
	end
end
createLegitModules()
local Keystrokes = LegitModules.Create("Keystrokes")
local Cps = LegitModules.Create("CPS")
local Ping = LegitModules.Create("Ping")
local Fps = LegitModules.Create("FPS")
local Coords = LegitModules.Create("Coordinates")
moduleRun("Legit/Keystrokes")
moduleRun("Legit/Cps")
moduleRun("Legit/Ping")
moduleRun("Legit/Fps")
moduleRun("Legit/Coords")

task.spawn(function()
	local oldWalkspeed = 16
	if lplr.Character and lplr.Character:FindFirstChildWhichIsA("Humanoid") then
		oldWalkspeed = lplr.Character.Humanoid.WalkSpeed
	end
	table.insert(vapeConnections, lplr.CharacterAdded:Connect(function(char)
		oldWalkspeed = char:WaitForChild("Humanoid").WalkSpeed
	end))
	table.insert(vapeConnections, GuiLibrary.SelfDestructEvent:Connect(function()
		if lplr.Character and lplr.Character:FindFirstChildWhichIsA("Humanoid") then
			lplr.Character.Humanoid.WalkSpeed = oldWalkspeed
		end
	end))
	RunLoops:BindToHeartbeat("Walkspeed", function()
		if isEnabled("SpeedToggle") then return end
		if lplr.Character and lplr.Character:FindFirstChildWhichIsA("Humanoid") then
			lplr.Character.Humanoid.WalkSpeed = oldWalkspeed
		end
	end)
end)
shared.VapeFullyLoaded = true

local lastSave = tick()
saveSettingsLoop = coroutine.create(function()
	repeat
		if tick() - lastSave >= 5 then
			pcall(GuiLibrary.SaveSettings)
			lastSave = tick()
		end
		task.wait()
	until false
end)
coroutine.resume(saveSettingsLoop)

pcall(GuiLibrary.LoadSettings)

GuiLibrary.LoadedAnimation(not shared.VapeSwitchServers)

if shared.VapeOpenGui then
	GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("ClickGui").Visible = true
	legitgui.Visible = false
	inputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
	for _, mobileButton in pairs(GuiLibrary.MobileButtons) do mobileButton.Visible = false end
	if OnlineProfilesBigFrame.Visible then
		OnlineProfilesBigFrame.Visible = false
	end
	if LegitModulesBigFrame.Visible then
		LegitModulesBigFrame.Visible = false
	end
end

shared.VapeSwitchServers = nil
shared.VapeOpenGui = nil

local function AddHover(object, text)
	if GuiLibrary["ToggleTooltips"] then
		object.MouseEnter:Connect(function()
			local suc, res = pcall(function() return textService:GetTextSize("  "..text.."  ", 14, Enum.Font.Arial, Vector2.new(99999, 99999)) end)
			if suc then
				hoverbox.Text = "  "..text
				hoverbox.Size = UDim2.new(0, res.X, 0, res.Y + 6)
				hoverbox.Position = UDim2.new(0, inputService:GetMouseLocation().X, 0, inputService:GetMouseLocation().Y - (res.Y + 8))
				hoverbox.Visible = true
			end
		end)
		object.MouseLeave:Connect(function()
			hoverbox.Visible = false
		end)
	end
end

AddHover(searchbarmain, "Search for modules")
AddHover(searchbaricon2, "Legit modules")
run("Velocity", function()
	local VelocityToggle = BlatantWindow:CreateToggle({
		Name = "Velocity",
		Callback = function(bool)
			if bool then
				local oldvel = Vector3.zero
				local lastjump = tick()
				local canvel = false
				local rootpart = nil
				local velcon = nil
				local velcon2 = nil

				local function updatevel()
					if not rootpart or not rootpart.Parent then 
						rootpart = entityLibrary.character and entityLibrary.character:FindFirstChild("HumanoidRootPart")
						return
					end
					local horizontal = GetValue("VelocityHorizontalSlider") / 100
					local vertical = GetValue("VelocityVerticalSlider") / 100
					local vel = rootpart.AssemblyLinearVelocity
					if vel.Y < -1 and canvel then
						local newvel = Vector3.new(vel.X * horizontal, vel.Y * vertical, vel.Z * horizontal)
						rootpart.AssemblyLinearVelocity = newvel
					end
					canvel = vel.Y < oldvel.Y
					oldvel = vel
				end
				
				RunLoops:BindToStepped("Velocity", updatevel)
			else
				RunLoops:UnbindFromStepped("Velocity")
			end
		end,
		Hover = "Reduces your knockback"
	})

	VelocityToggle:CreateSlider({
		Name = "Horizontal",
		Min = 0,
		Max = 100,
		Default = 90,
		Suffix = "%",
		Round = 1,
		Api = "VelocityHorizontalSlider"
	})

	VelocityToggle:CreateSlider({
		Name = "Vertical",
		Min = 0,
		Max = 100,
		Default = 100,
		Suffix = "%",
		Round = 1,
		Api = "VelocityVerticalSlider"
	})
end)

run("NoFall", function()
	local NoFallToggle = BlatantWindow:CreateToggle({
		Name = "NoFall",
		Callback = function(bool)
			if bool then
				local falldistance = 0
				local fallticks = 0
				local con, con2
				con = RunLoops:BindToHeartbeat("NoFall", function()
					local char = entityLibrary.character
					if not char or not entityLibrary.isAlive then return end
					local humanoid = char:FindFirstChildOfClass("Humanoid")
					if humanoid then
						if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
							falldistance = humanoid.FallDistance
						else
							falldistance = 0
						end
						if falldistance > 15 then
							if GetDropdown("NoFallModeDropdown") == "Vulcan" then
								if fallticks == 0 then
									humanoid.Jump = true
								end
								fallticks = fallticks + 1
								if fallticks > 10 then
									fallticks = 0
								end
							elseif GetDropdown("NoFallModeDropdown") == "Packet" then
								local root = char:FindFirstChild("HumanoidRootPart")
								if root then
									root.CFrame = root.CFrame * CFrame.new(0, 0.2, 0)
									task.wait()
									root.CFrame = root.CFrame * CFrame.new(0, -0.2, 0)
								end
							elseif GetDropdown("NoFallModeDropdown") == "Position" then
								local root = char:FindFirstChild("HumanoidRootPart")
								if root then
									root.CFrame = CFrame.new(root.Position.X, root.Position.Y + 10, root.Position.Z)
								end
							end
						end
					end
				end)
			else
				if con then
					con:Disconnect()
					con = nil
				end
				if con2 then
					con2:Disconnect()
					con2 = nil
				end
				RunLoops:UnbindFromHeartbeat("NoFall")
			end
		end,
		Hover = "Prevents fall damage"
	})

	NoFallToggle:CreateDropdown({
		Name = "Mode",
		Options = {"Packet", "Vulcan", "Position"},
		Default = "Packet",
		Api = "NoFallModeDropdown"
	})
end)
run("Scaffold", function()
	local ScaffoldToggle = BlatantWindow:CreateToggle({
		Name = "Scaffold",
		Callback = function(bool)
			local placing = false
			local block = nil
			local lastblock = nil
			local lastpos = Vector3.new()
			local blacklist = {"Trapdoor", "Sign", "Fence", "Gate", "Stair", "Slab", "Carpet", "Button", "Pressure Plate", "Lever", "Hopper", "Container", "Bed", "Door", "Rail"}

			local function findblock()
				local char = lplr.Character
				if not char then return nil end
				local backpack = lplr.Backpack
				for i = 1, 36 do
					local item = backpack:FindFirstChild(tostring(i)) or char:FindFirstChild(tostring(i))
					if item and item:IsA("Tool") and item:FindFirstChild("BlockCount") and item.BlockCount.Value > 0 then
						local blacklisted = false
						for _, v in pairs(blacklist) do
							if item.Name:find(v) then
								blacklisted = true
								break
							end
						end
						if not blacklisted then
							return item
						end
					end
				end
				return nil
			end

			if bool then
				RunLoops:BindToStepped("Scaffold", function()
					if not entityLibrary.isAlive then return end
					local humanoid = entityLibrary.character.Humanoid
					local rootpart = entityLibrary.character.HumanoidRootPart
					if humanoid and rootpart then
						if humanoid:GetState() == Enum.HumanoidStateType.Freefall and humanoid.FloorMaterial == Enum.Material.Air then
							local ray = workspace:Raycast(rootpart.Position, Vector3.new(0, -5, 0), RenderStore.objectraycast)
							if not ray or ray.Instance.CanCollide == false then
								placing = true
								block = findblock()
								if block and block.Parent ~= entityLibrary.character then
									humanoid:EquipTool(block)
								end
								if block and block.Parent == entityLibrary.character then
									local pos = rootpart.Position - Vector3.new(0, 3, 0)
									pos = Vector3.new(math.floor(pos.X + 0.5), math.floor(pos.Y + 0.5), math.floor(pos.Z + 0.5))
									if pos ~= lastpos then
										game:GetService("ReplicatedStorage").PlaceBlock:FireServer(block.Name, pos)
										lastpos = pos
										lastblock = block
									end
								end
							else
								placing = false
							end
						else
							placing = false
						end

						if not placing and lastblock and lastblock.Parent == entityLibrary.character then
							humanoid:UnequipTools()
							lastblock = nil
						end
					end
				end)
			else
				RunLoops:UnbindFromStepped("Scaffold")
				if lastblock and lastblock.Parent == lplr.Character then
					lplr.Character.Humanoid:UnequipTools()
				end
			end
		end,
		Hover = "Automatically places blocks under you"
	})
end)

run("Fly", function()
	local FlyToggle = BlatantWindow:CreateToggle({
		Name = "Fly",
		Callback = function(bool)
			local bodyvelocity = nil
			local bodygyro = nil
			local flyspeed = 0
			local keys = {W = false, A = false, S = false, D = false, Space = false, LeftShift = false}

			local function createBVs()
				if not entityLibrary.isAlive then return end
				local root = entityLibrary.character.HumanoidRootPart
				bodyvelocity = Instance.new("BodyVelocity")
				bodyvelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
				bodyvelocity.Velocity = Vector3.new(0, 0, 0)
				bodyvelocity.Parent = root
				bodygyro = Instance.new("BodyGyro")
				bodygyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
				bodygyro.D = 500
				bodygyro.P = 10000
				bodygyro.Parent = root
			end

			local function removeBVs()
				if bodyvelocity then
					bodyvelocity:Destroy()
					bodyvelocity = nil
				end
				if bodygyro then
					bodygyro:Destroy()
					bodygyro = nil
				end
				if entityLibrary.isAlive then
					entityLibrary.character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
				end
			end
			
			local inputBegan
			local inputEnded

			if bool then
				createBVs()
				flyspeed = GetValue("FlySpeedSlider")

				RunLoops:BindToRenderStep("Fly", function()
					if not bodyvelocity or not bodygyro or not entityLibrary.isAlive then
						removeBVs()
						createBVs()
						return
					end

					local root = entityLibrary.character.HumanoidRootPart
					local cam = workspace.CurrentCamera
					local direction = Vector3.new()
					if keys.W then direction = direction + cam.CFrame.LookVector end
					if keys.S then direction = direction - cam.CFrame.LookVector end
					if keys.D then direction = direction + cam.CFrame.RightVector end
					if keys.A then direction = direction - cam.CFrame.RightVector end
					if keys.Space then direction = direction + Vector3.new(0, 1, 0) end
					if keys.LeftShift then direction = direction - Vector3.new(0, 1, 0) end
					
					if direction.Magnitude > 0 then
						bodyvelocity.Velocity = direction.Unit * flyspeed
					else
						bodyvelocity.Velocity = Vector3.new(0, 0, 0)
					end
					bodygyro.CFrame = cam.CFrame
				end)

				inputBegan = inputService.InputBegan:Connect(function(input)
					if inputService:GetFocusedTextBox() then return end
					if keys[input.KeyCode.Name] ~= nil then
						keys[input.KeyCode.Name] = true
					end
				end)

				inputEnded = inputService.InputEnded:Connect(function(input)
					if keys[input.KeyCode.Name] ~= nil then
						keys[input.KeyCode.Name] = false
					end
				end)
			else
				RunLoops:UnbindFromRenderStep("Fly")
				removeBVs()
				if inputBegan then inputBegan:Disconnect() end
				if inputEnded then inputEnded:Disconnect() end
			end
		end,
		Hover = "Allows you to fly"
	})

	FlyToggle:CreateSlider({
		Name = "Speed",
		Min = 1,
		Max = 100,
		Default = 10,
		Suffix = "",
		Round = 1,
		Api = "FlySpeedSlider",
		Callback = function(val)
			if IsEnabled("FlyToggle") then
				-- Re-apply speed if fly is active
				local flyScript = BlatantWindow.Container:FindFirstChild("FlyToggle")
				if flyScript and flyScript.Api.Enabled then
					-- A bit of a hacky way to re-trigger the callback logic
					flyScript.Api.ToggleButton(false)
					task.wait()
					flyScript.Api.ToggleButton(true)
				end
			end
		end
	})
end)
if bool then
			local function new_raycast(origin, direction, params)
				local new_direction = direction.Unit * (direction.Magnitude + reach_distance)
				return original_ray(workspace, origin, new_direction, params)
			end
			
			getgenv().workspace.Raycast = new_raycast
		else
			if getgenv().workspace.Raycast ~= original_ray then
				getgenv().workspace.Raycast = original_ray
			end
		end
	end,
	Hover == "Increases your block reach distance"
)

ReachToggle:CreateSlider({
	Name = "Distance",
	Min = 0,
	Max = 6,
	Default = 3,
	Suffix = " blocks",
	Round = 0.1,
	Api = "ReachDistanceSlider"
})
run("KillAura", function()
	local KillAuraToggle = BlatantWindow:CreateToggle({
		Name = "KillAura",
		Api = "KillAuraToggle",
		Callback = function(bool)
			if bool then
				local target = nil
				local combat_debounce = false
				local last_swing = tick()

				local function get_priority_target()
					local range = GetValue("KillAuraRangeSlider")
					local fov = GetValue("KillAuraFOVSlider")
					local mode = GetDropdown("KillAuraPriorityDropdown")
					
					local potential_targets = {}
					for _, entity in pairs(entityLibrary.entityList) do
						if entity.Targetable and isVulnerable(entity.Player) and entity.Character and entity.RootPart and entity.Player ~= lplr then
							local distance = (entityLibrary.character.HumanoidRootPart.Position - entity.RootPart.Position).Magnitude
							if distance <= range then
								if not IsEnabled("KillAuraWallCheckToggle") or raycastWallCheck(entity, {Origin = gameCamera.CFrame.Position, AimPart = "Head"}) then
									local vector, on_screen = worldtoviewportpoint(entity.RootPart.Position)
									if on_screen then
										local fov_dist = (Vector2.new(vector.X, vector.Y) - inputService:GetMouseLocation()).Magnitude
										if fov_dist <= fov or not IsEnabled("KillAuraFOVToggle") then
											table.insert(potential_targets, {
												Entity = entity,
												Distance = distance,
												Health = entity.Humanoid.Health
											})
										end
									end
								end
							end
						end
					end
					
					if #potential_targets == 0 then return nil end

					if mode == "Distance" then
						table.sort(potential_targets, function(a, b) return a.Distance < b.Distance end)
					elseif mode == "Health" then
						table.sort(potential_targets, function(a, b) return a.Health < b.Health end)
					end

					return potential_targets.Entity
				end

				RunLoops:BindToHeartbeat("KillAura", function()
					local cps = GetValue("KillAuraCPSSlider")
					if combat_debounce or (tick() - last_swing < (1 / cps)) then return end

					target = get_priority_target()

					if target and target.Character then
						combat_debounce = true
						
						if IsEnabled("KillAuraRotationsToggle") then
							local aim_part_name = GetDropdown("KillAuraAimPartDropdown")
							local target_part = target.Character:FindFirstChild(aim_part_name) or target.RootPart
							if target_part then
								local look_at = CFrame.new(gameCamera.CFrame.Position, target_part.Position)
								gameCamera.CFrame = gameCamera.CFrame:Lerp(look_at, GetValue("KillAuraSmoothingSlider") / 100)
							end
						end
						
						local tool = lplr.Character:FindFirstChildOfClass("Tool")
						if tool then
							pcall(function()
								tool:Activate()
							end)
						end

						last_swing = tick()
						task.wait()
						combat_debounce = false
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("KillAura")
			end
		end,
		Hover = "Automatically attacks nearby entities based on priority"
	})

	KillAuraToggle:CreateToggle({Name = "Rotations", Default = true, Api = "KillAuraRotationsToggle"})
	KillAuraToggle:CreateToggle({Name = "FOV Check", Default = true, Api = "KillAuraFOVToggle"})
	KillAuraToggle:CreateToggle({Name = "Wall Check", Default = true, Api = "KillAuraWallCheckToggle"})
	KillAuraToggle:CreateSlider({Name = "Range", Min = 3, Max = 12, Default = 6, Suffix = " studs", Round = 0.1, Api = "KillAuraRangeSlider"})
	KillAuraToggle:CreateSlider({Name = "CPS", Min = 1, Max = 20, Default = 10, Round = 1, Api = "KillAuraCPSSlider"})
	KillAuraToggle:CreateSlider({Name = "FOV", Min = 10, Max = 360, Default = 120, Suffix = "°", Round = 1, Api = "KillAuraFOVSlider"})
	KillAuraToggle:CreateSlider({Name = "Smoothing", Min = 1, Max = 100, Default = 20, Suffix = "%", Round = 1, Api = "KillAuraSmoothingSlider"})
	KillAuraToggle:CreateDropdown({Name = "Priority", Options = {"Distance", "Health"}, Default = "Distance", Api = "KillAuraPriorityDropdown"})
	KillAuraToggle:CreateDropdown({Name = "Aim Part", Options = {"Head", "HumanoidRootPart", "Torso"}, Default = "Head", Api = "KillAuraAimPartDropdown"})
end)
run("AimAssist", function()
	local AimAssistToggle = CombatWindow:CreateToggle({
		Name = "AimAssist",
		Api = "AimAssistToggle",
		Callback = function(bool)
			if bool then
				RunLoops:BindToRenderStep("AimAssist", function()
					if not inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then return end
					
					local strength = GetValue("AimAssistStrengthSlider")
					local fov_radius = GetValue("AimAssistFOVSlider")
					local aim_part = GetDropdown("AimAssistPartDropdown")
					local wall_check = IsEnabled("AimAssistWallCheckToggle")
					
					local target = EntityNearMouse(fov_radius, {WallCheck = wall_check, AimPart = aim_part})
					
					if target then
						local target_part = target.Character:FindFirstChild(aim_part)
						if not target_part then return end
						
						local target_pos, on_screen = worldtoviewportpoint(target_part.Position)
						if on_screen then
							local mouse_pos = inputService:GetMouseLocation()
							local delta = Vector2.new(target_pos.X - mouse_pos.X, target_pos.Y - mouse_pos.Y)
							
							if delta.Magnitude > 0.1 then -- To prevent jittering on target
								local move_vector = delta * (strength / 100)
								inputService:SetmouseDelta(move_vector)
							end
						end
					end
				end)
			else
				RunLoops:UnbindFromRenderStep("AimAssist")
			end
		end,
		Hover = "Gently pulls your aim towards targets while you are shooting."
	})
	
	AimAssistToggle:CreateToggle({Name = "Wall Check", Default = true, Api = "AimAssistWallCheckToggle"})
	AimAssistToggle:CreateSlider({Name = "Strength", Min = 1, Max = 100, Default = 15, Suffix = "%", Round = 1, Api = "AimAssistStrengthSlider"})
	AimAssistToggle:CreateSlider({Name = "FOV", Min = 10, Max = 300, Default = 100, Round = 1, Api = "AimAssistFOVSlider"})
	AimAssistToggle:CreateDropdown({Name = "Aim Part", Options = {"Head", "HumanoidRootPart", "Torso"}, Default = "Head", Api = "AimAssistPartDropdown"})
end)

run("Triggerbot", function()
	local TriggerbotToggle = CombatWindow:CreateToggle({
		Name = "Triggerbot",
		Api = "TriggerbotToggle",
		Callback = function(bool)
			if bool then
				local last_shot = 0
				RunLoops:BindToHeartbeat("Triggerbot", function()
					local delay = 1 / GetValue("TriggerbotCpsSlider")
					if tick() - last_shot < delay then return end
					
					local mouse = lplr:GetMouse()
					local target_part = mouse.Target
					
					if target_part and target_part.Parent and target_part.Parent:FindFirstChildOfClass("Humanoid") then
						local target_player = playersService:GetPlayerFromCharacter(target_part.Parent)
						if target_player and target_player ~= lplr and entityLibrary.isPlayerTargetable(target_player) then
							local tool = lplr.Character:FindFirstChildOfClass("Tool")
							if tool and tool:FindFirstChild("Handle") then
								pcall(function() tool:Activate() end)
								last_shot = tick()
							end
						end
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("Triggerbot")
			end
		end,
		Hover = "Automatically shoots when you aim at a targetable player."
	})
	
	TriggerbotToggle:CreateSlider({Name = "CPS", Min = 1, Max = 20, Default = 10, Round = 1, Api = "TriggerbotCpsSlider"})
end)

run("SilentAim", function()
	local old_namecall
	local SilentAimToggle = CombatWindow:CreateToggle({
		Name = "SilentAim",
		Api = "SilentAimToggle",
		Callback = function(bool)
			if bool and not old_namecall then
				old_namecall = hookmetamethod(game, "__namecall", function(...)
					local self = ...
					local method = getnamecallmethod()
					
					if IsEnabled("SilentAimToggle") and method == "FireServer" and tostring(self):find("RemoteEvent") then
						local args = {...}
						local tool = lplr.Character and lplr.Character:FindFirstChildOfClass("Tool")
						if tool and args and args == "UpdateMousePos" then -- Example remote name
							local fov = GetValue("SilentAimFOVSlider")
							local target = EntityNearMouse(fov, {WallCheck = true, AimPart = "Head"})
							
							if target and target.Character and target.Head then
								args = target.Head.Position -- Overwrite mouse position with target position
								return old_namecall(unpack(args))
							end
						end
					end
					
					return old_namecall(...)
				end)
			elseif not bool and old_namecall then
				old_namecall() -- Unhooks the metamethod
				old_namecall = nil
			end
		end,
		Hover = "Aims for you on the server without moving your client-side camera."
	})
	
	SilentAimToggle:CreateSlider({Name = "FOV", Min = 10, Max = 300, Default = 100, Round = 1, Api = "SilentAimFOVSlider"})

	table.insert(vapeConnections, GuiLibrary.SelfDestructEvent:Connect(function()
		if old_namecall then
			old_namecall()
			old_namecall = nil
		end
	end))
end)
run("Blink", function()
	local BlinkToggle = UtilityWindow:CreateToggle({
		Name = "Blink",
		Api = "BlinkToggle",
		Callback = function(bool)
			local packets = {}
			local old_fire, remote_event
			
			local function hook_remote()
				-- Find the most likely remote for character physics/movement replication
				-- This is a heuristic and may need adjustment per game.
				local remotes = game:GetService("ReplicatedStorage"):GetDescendants()
				for _, remote in ipairs(remotes) do
					if remote:IsA("RemoteEvent") and remote.Name:lower():find("physics") or remote.Name:lower():find("movement") then
						remote_event = remote
						break
					end
				end
				
				if not remote_event then
					warn("Blink: Could not find a suitable movement remote to hook.")
					return
				end

				old_fire = remote_event.FireServer
				remote_event.FireServer = function(self, ...)
					if IsEnabled("BlinkToggle") then
						table.insert(packets, {...})
					else
						return old_fire(self, ...)
					end
				end
			end
			
			local function unhook_remote()
				if remote_event and old_fire then
					remote_event.FireServer = old_fire
					remote_event = nil
					old_fire = nil
				end
			end

			if bool then
				hook_remote()
			else
				unhook_remote()
				for _, args in ipairs(packets) do
					if remote_event then
						pcall(old_fire, remote_event, unpack(args))
					end
				end
				packets = {}
			end
		end,
		Hover = "Holds and releases your movement packets to simulate teleportation."
	})

	table.insert(vapeConnections, GuiLibrary.SelfDestructEvent:Connect(function()
		if IsEnabled("BlinkToggle") then
			-- Ensure hooks are removed on self-destruct
			BlinkToggle.Api.ToggleButton(false)
		end
	end))
end)

run("SelfDestruct", function()
	UtilityWindow:CreateButton({
		Name = "Self Destruct",
		Callback = function()
			GuiLibrary.SelfDestruct()
		end,
		Hover = "Uninjects the script from the game. (ALT + HOME)"
	})
end)

run("AutoTool", function()
	local AutoToolToggle = UtilityWindow:CreateToggle({
		Name = "AutoTool",
		Api = "AutoToolToggle",
		Callback = function(bool)
			if bool then
				local last_tool
				RunLoops:BindToHeartbeat("AutoTool", function()
					local mouse = lplr:GetMouse()
					local target = mouse.Target
					if not target or not target.Parent then return end
					
					local best_tool, highest_damage = nil, -1
					
					for _, tool in ipairs(lplr.Backpack:GetChildren()) do
						if tool:IsA("Tool") then
							local damage = 0
							-- Heuristic to find damage values, highly game-dependent
							local damage_val = tool:FindFirstChild("Damage")
							if damage_val and damage_val:IsA("IntValue") then
								damage = damage_val.Value
							end
							
							if damage > highest_damage then
								highest_damage = damage
								best_tool = tool
							end
						end
					end
					
					if best_tool and lplr.Character and lplr.Character:FindFirstChildOfClass("Humanoid") then
						if lplr.Character:FindFirstChild(best_tool.Name) == nil then
							lplr.Character.Humanoid:EquipTool(best_tool)
						end
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("AutoTool")
			end
		end,
		Hover = "Automatically equips the best tool for the job."
	})
end)

run("Spammer", function()
	local SpammerToggle = UtilityWindow:CreateToggle({
		Name = "Spammer",
		Api = "SpammerToggle",
		Callback = function(bool)
			if bool then
				local last_message = 0
				RunLoops:BindToHeartbeat("Spammer", function()
					local delay = GetValue("SpammerDelaySlider")
					if tick() - last_message < delay then return end
					
					local message = GetClient().SpammerMessageTextBox.Api.Value
					if message ~= "" then
						sendmessage(message)
						last_message = tick()
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("Spammer")
			end
		end,
		Hover = "Spams a custom message in chat."
	})
	
	SpammerToggle:CreateTextBox({
		Name = "Message",
		Default = "Voidware on top!",
		Api = "SpammerMessageTextBox"
	})
	
	SpammerToggle:CreateSlider({
		Name = "Delay",
		Min = 1,
		Max = 30,
		Default = 5,
		Suffix = "s",
		Round = 1,
		Api = "SpammerDelaySlider"
	})
end)
run("Phase", function()
	local PhaseToggle = UtilityWindow:CreateToggle({
		Name = "Phase",
		Api = "PhaseToggle",
		Callback = function(bool)
			if bool then
				RunLoops:BindToStepped("Phase", function()
					if not entityLibrary.isAlive then return end
					local humanoid = entityLibrary.character.Humanoid
					local rootPart = entityLibrary.character.HumanoidRootPart
					
					local phasing = false
					local ray = workspace:Raycast(rootPart.Position, rootPart.CFrame.LookVector * 2)
					if ray and ray.Instance then
						phasing = true
					end

					if phasing then
						pcall(sethiddenproperty, lplr, "SimulationRadius", 9e9)
						if isnetworkowner and not isnetworkowner(rootPart) then
							-- Request network ownership to control CFrame locally
							pcall(function()
								game:GetService("ReplicatedStorage"):WaitForChild("RequestNetworkOwnership"):FireServer(rootPart)
							end)
						end
						rootPart.CFrame = rootPart.CFrame + rootPart.CFrame.LookVector * 0.2
					else
						pcall(sethiddenproperty, lplr, "SimulationRadius", 512)
					end
				end)
			else
				RunLoops:UnbindFromStepped("Phase")
				pcall(sethiddenproperty, lplr, "SimulationRadius", 512)
			end
		end,
		Hover = "Allows you to clip through some walls."
	})
end)

run("Macros", function()
	local MacrosToggle = UtilityWindow:CreateToggle({
		Name = "Macros",
		Api = "MacrosToggle",
		Callback = function(bool)
			local input_connection
			if bool then
				input_connection = inputService.InputBegan:Connect(function(input, gpe)
					if gpe then return end
					
					if IsEnabled("MacrosAutoEatToggle") and input.KeyCode == Enum.KeyCode[GetClient().MacrosEatKeybind.Api.Keybind] then
						local tool = lplr.Character and lplr.Character:FindFirstChildOfClass("Tool")
						if tool and (tool.Name:lower():find("food") or tool.Name:lower():find("drink")) then
							for i = 1, 5 do
								tool:Activate()
								task.wait(0.05)
							end
						end
					end
				end)
			else
				if input_connection then
					input_connection:Disconnect()
					input_connection = nil
				end
			end
		end,
		Hover = "Automates certain actions with keybinds."
	})

	local AutoEatToggle = MacrosToggle:CreateToggle({
		Name = "Auto Eat/Drink",
		Default = false,
		Api = "MacrosAutoEatToggle"
	})
	
	AutoEatToggle:CreateKeybind({
		Name = "Eat Key",
		Default = "Z",
		Api = "MacrosEatKeybind"
	})
end)

run("ServerHop", function()
	local ServerHopToggle = UtilityWindow:CreateToggle({
		Name = "ServerHop",
		Api = "ServerHopToggle",
		Callback = function(bool)
			if bool then
				local function hop()
					if not IsEnabled("ServerHopToggle") then return end
					
					local min_players = GetValue("ServerHopMinPlayersSlider")
					if #playersService:GetPlayers() <= min_players then
						InfoNotification("ServerHop", "Found a suitable server, hopping now...", 3)
						task.wait(1)
						switchserver()
					end
				end
				
				hop()
				RunLoops:BindToHeartbeat("ServerHopCheck", hop)
			else
				RunLoops:UnbindFromHeartbeat("ServerHopCheck")
			end
		end,
		Hover = "Automatically hops servers until the player count is below a certain amount."
	})

	ServerHopToggle:CreateSlider({
		Name = "Min Players",
		Min = 1,
		Max = 50,
		Default = 5,
		Round = 1,
		Api = "ServerHopMinPlayersSlider"
	})

	ServerHopToggle:CreateButton({
		Name = "Hop Now",
		Callback = function()
			InfoNotification("ServerHop", "Searching for a new server...", 3)
			switchserver()
		end
	})
end)
run("Chams", function()
	local ChamsToggle = RenderWindow:CreateToggle({
		Name = "Chams",
		Api = "ChamsToggle",
		Callback = function(bool)
			local chams_objects = {}

			local function apply_chams(character)
				if not character or chams_objects[character] then return end
				chams_objects[character] = {}

				for _, part in ipairs(character:GetDescendants()) do
					if part:IsA("BasePart") then
						local highlight = Instance.new("Highlight")
						highlight.FillColor = GetColor("ChamsVisibleColorSlider")
						highlight.OutlineColor = GetColor("ChamsVisibleColorSlider")
						highlight.FillTransparency = 0.5
						highlight.OutlineTransparency = 1
						highlight.DepthMode = Enum.HighlightDepthMode.Occluded
						highlight.Parent = part
						table.insert(chams_objects[character], highlight)

						local highlight_visible = Instance.new("Highlight")
						highlight_visible.FillColor = GetColor("ChamsVisibleColorSlider")
						highlight_visible.OutlineColor = GetColor("ChamsVisibleColorSlider")
						highlight_visible.FillTransparency = 0
						highlight_visible.OutlineTransparency = 1
						highlight_visible.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						highlight_visible.Parent = part
						table.insert(chams_objects[character], highlight_visible)
					end
				end
			end

			local function remove_chams(character)
				if chams_objects[character] then
					for _, v in ipairs(chams_objects[character]) do
						v:Destroy()
					end
					chams_objects[character] = nil
				end
			end

			local function update_all_chams()
				for character, highlights in pairs(chams_objects) do
					local player = playersService:GetPlayerFromCharacter(character)
					if player then
						local color = getPlayerColor(player) or GetColor("ChamsVisibleColorSlider")
						for _, highlight in ipairs(highlights) do
							highlight.FillColor = color
							highlight.OutlineColor = color
						end
					end
				end
			end

			if bool then
				for _, entity in ipairs(entityLibrary.entityList) do
					if entity.Targetable then
						apply_chams(entity.Character)
					end
				end

				entityLibrary.Events.EntityAdded:Connect(function(entity)
					if entity.Targetable then apply_chams(entity.Character) end
				end)

				entityLibrary.Events.EntityRemoving:Connect(function(entity)
					remove_chams(entity.Character)
				end)
				
				RunLoops:BindToHeartbeat("ChamsColorUpdate", update_all_chams)
			else
				RunLoops:UnbindFromHeartbeat("ChamsColorUpdate")
				for char in pairs(chams_objects) do
					remove_chams(char)
				end
				chams_objects = {}
			end
		end,
		Hover = "Renders players through walls with customizable colors."
	})

	ChamsToggle:CreateColorSlider({
		Name = "Visible Color",
		Default = Color3.new(1, 0, 0),
		Api = "ChamsVisibleColorSlider"
	})
end)

run("ESP", function()
	local ESPToggle = RenderWindow:CreateToggle({
		Name = "ESP",
		Api = "ESPToggle",
		Callback = function(bool)
			local esp_elements = {}

			local function create_esp(entity)
				if not entity or not entity.Character or esp_elements[entity] then return end

				local billboard = Instance.new("BillboardGui")
				billboard.Name = "ESP_Billboard"
				billboard.AlwaysOnTop = true
				billboard.Size = UDim2.new(0, 200, 0, 100)
				billboard.Adornee = entity.Head
				billboard.PlayerToHideFrom = lplr
				
				local box = Instance.new("Frame")
				box.Name = "Box"
				box.Size = UDim2.new(1, 0, 1, 0)
				box.BackgroundTransparency = 1
				box.BorderSizePixel = 1
				box.BorderColor3 = Color3.new(1, 1, 1)
				box.Parent = billboard
				
				local name_label = Instance.new("TextLabel")
				name_label.Name = "NameLabel"
				name_label.Size = UDim2.new(1, 0, 0, 20)
				name_label.Position = UDim2.new(0, 0, 0, -20)
				name_label.BackgroundTransparency = 1
				name_label.TextColor3 = Color3.new(1, 1, 1)
				name_label.Font = Enum.Font.SourceSans
				name_label.TextSize = 14
				name_label.Text = entity.Player.DisplayName
				name_label.Parent = billboard

				local health_bar = Instance.new("Frame")
				health_bar.Name = "HealthBar"
				health_bar.Size = UDim2.new(0, 5, 1, 0)
				health_bar.Position = UDim2.new(0, -7, 0, 0)
				health_bar.BackgroundColor3 = Color3.new(0, 1, 0)
				health_bar.BorderSizePixel = 0
				health_bar.Parent = billboard
				
				billboard.Parent = coreGui

				esp_elements[entity] = {Billboard = billboard, Box = box, Name = name_label, Health = health_bar}
			end

			local function remove_esp(entity)
				if esp_elements[entity] then
					esp_elements[entity].Billboard:Destroy()
					esp_elements[entity] = nil
				end
			end
			
			if bool then
				RunLoops:BindToRenderStep("ESP_Update", function()
					for entity, elements in pairs(esp_elements) do
						if not entity.Character or not entity.Humanoid or entity.Humanoid.Health <= 0 then
							remove_esp(entity)
							continue
						end
						
						local color = getPlayerColor(entity.Player) or Color3.new(1,0,0)
						elements.Box.BorderColor3 = color
						elements.Name.TextColor3 = color
						
						local health_percent = entity.Humanoid.Health / entity.Humanoid.MaxHealth
						elements.Health.Size = UDim2.new(0, 5, 1 * health_percent, 0)
						elements.Health.Position = UDim2.new(0, -7, 1 - health_percent, 0)
						elements.Health.BackgroundColor3 = Color3.fromHSV(0.33 * health_percent, 1, 1)
					end
				end)

				for _, entity in ipairs(entityLibrary.entityList) do
					if entity.Targetable then create_esp(entity) end
				end
				entityLibrary.Events.EntityAdded:Connect(function(entity)
					if entity.Targetable then create_esp(entity) end
				end)
				entityLibrary.Events.EntityRemoving:Connect(remove_esp)

			else
				RunLoops:UnbindFromRenderStep("ESP_Update")
				for entity in pairs(esp_elements) do
					remove_esp(entity)
				end
				esp_elements = {}
			end
		end,
		Hover = "Displays information about other players through walls."
	})
end)
run("Fullbright", function()
	local FullbrightToggle = RenderWindow:CreateToggle({
		Name = "Fullbright",
		Api = "FullbrightToggle",
		Callback = function(bool)
			local original_ambient = lightingService.Ambient
			local original_brightness = lightingService.Brightness
			local original_clocktime = lightingService.ClockTime
			local original_fogend = lightingService.FogEnd
			
			if bool then
				RunLoops:BindToHeartbeat("Fullbright", function()
					lightingService.Ambient = Color3.fromRGB(255, 255, 255)
					lightingService.Brightness = 1
					lightingService.ClockTime = 14
					lightingService.FogEnd = 100000
				end)
			else
				RunLoops:UnbindFromHeartbeat("Fullbright")
				lightingService.Ambient = original_ambient
				lightingService.Brightness = original_brightness
				lightingService.ClockTime = original_clocktime
				lightingService.FogEnd = original_fogend
			end
		end,
		Hover = "Brightens the world to its maximum, removing all shadows."
	})
end)

run("Tracers", function()
	local TracersToggle = RenderWindow:CreateToggle({
		Name = "Tracers",
		Api = "TracersToggle",
		Callback = function(bool)
			local tracers = {}

			local function create_tracer(entity)
				if not entity or tracers[entity] then return end
				local tracer = Drawing.new("Line")
				tracer.Visible = false
				tracers[entity] = tracer
			end

			local function remove_tracer(entity)
				if tracers[entity] then
					tracers[entity].Visible = false
					tracers[entity]:Remove()
					tracers[entity] = nil
				end
			end
			
			if bool then
				RunLoops:BindToRenderStep("Tracers", function()
					local origin_point = GetDropdown("TracersOriginDropdown") == "Bottom" and Vector2.new(gameCamera.ViewportSize.X / 2, gameCamera.ViewportSize.Y) or inputService:GetMouseLocation()
					for entity, tracer in pairs(tracers) do
						if entity.Character and entity.RootPart then
							local pos, on_screen = worldtoviewportpoint(entity.RootPart.Position)
							if on_screen then
								tracer.From = origin_point
								tracer.To = Vector2.new(pos.X, pos.Y)
								tracer.Color = getPlayerColor(entity.Player) or Color3.new(1,0,0)
								tracer.Thickness = 2
								tracer.Visible = true
							else
								tracer.Visible = false
							end
						else
							remove_tracer(entity)
						end
					end
				end)
				
				for _, entity in ipairs(entityLibrary.entityList) do
					if entity.Targetable then create_tracer(entity) end
				end
				entityLibrary.Events.EntityAdded:Connect(function(entity)
					if entity.Targetable then create_tracer(entity) end
				end)
				entityLibrary.Events.EntityRemoving:Connect(remove_tracer)
			else
				RunLoops:UnbindFromRenderStep("Tracers")
				for entity in pairs(tracers) do
					remove_tracer(entity)
				end
				tracers = {}
			end
		end,
		Hover = "Draws lines to other players."
	})
	
	TracersToggle:CreateDropdown({
		Name = "Origin",
		Options = {"Bottom", "Mouse"},
		Default = "Bottom",
		Api = "TracersOriginDropdown"
	})
end)

run("NameTags", function()
	local NameTagsToggle = RenderWindow:CreateToggle({
		Name = "NameTags",
		Api = "NameTagsToggle",
		Callback = function(bool)
			local original_properties = {}
			
			local function update_nametag(character)
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if not humanoid then return end

				if not original_properties[character] then
					original_properties[character] = {
						DisplayDistanceType = humanoid.DisplayDistanceType,
						NameDisplayDistance = humanoid.NameDisplayDistance,
						HealthDisplayType = humanoid.HealthDisplayType,
						HealthDisplayDistance = humanoid.HealthDisplayDistance,
					}
				end
				
				humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				humanoid.NameDisplayDistance = 0
				humanoid.HealthDisplayType = Enum.HumanoidDisplayDistanceType.None
				humanoid.HealthDisplayDistance = 0
			end
			
			local function restore_nametag(character)
				if original_properties[character] then
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					if humanoid then
						local props = original_properties[character]
						humanoid.DisplayDistanceType = props.DisplayDistanceType
						humanoid.NameDisplayDistance = props.NameDisplayDistance
						humanoid.HealthDisplayType = props.HealthDisplayType
						humanoid.HealthDisplayDistance = props.HealthDisplayDistance
					end
					original_properties[character] = nil
				end
			end
			
			if bool then
				-- Initial run for players already in game
				for _, player in ipairs(playersService:GetPlayers()) do
					if player.Character then
						update_nametag(player.Character)
					end
				end
				
				local char_added_conn = playersService.PlayerAdded:Connect(function(player)
					player.CharacterAdded:Connect(update_nametag)
				end)

				table.insert(vapeConnections, {Disconnect = function() char_added_conn:Disconnect() end})
			else
				for char in pairs(original_properties) do
					if char and char.Parent then
						restore_nametag(char)
					end
				end
				original_properties = {}
			end
		end,
		Hover = "Removes default Roblox nametags, for use with ESP."
	})
end)
run("Search", function()
	local SearchToggle = RenderWindow:CreateToggle({
		Name = "Search",
		Api = "SearchToggle",
		Callback = function(bool)
			local highlights = {}
			local search_tags = {}
			
			local function update_search_tags()
				search_tags = {}
				local raw_text = GetClient().SearchTagsTextBox.Api.Value
				for tag in string.gmatch(raw_text, "[^,]+") do
					table.insert(search_tags, string.lower(string.gsub(tag, "^%s*(.-)%s*$", "%1")))
				end
			end
			
			local function apply_highlight(part)
				if highlights[part] or not IsEnabled("SearchToggle") then return end
				local part_name_lower = string.lower(part.Name)
				
				for _, tag in ipairs(search_tags) do
					if string.find(part_name_lower, tag) then
						local highlight = Instance.new("Highlight")
						highlight.FillColor = GetColor("SearchColorSlider")
						highlight.OutlineColor = GetColor("SearchColorSlider")
						highlight.FillTransparency = 0.5
						highlight.OutlineTransparency = 0
						highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						highlight.Parent = part
						highlights[part] = highlight
						break
					end
				end
			end

			local function remove_highlight(part)
				if highlights[part] then
					highlights[part]:Destroy()
					highlights[part] = nil
				end
			end

			local function scan_workspace()
				if not IsEnabled("SearchToggle") then return end
				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant:IsA("BasePart") then
						apply_highlight(descendant)
					end
				end
			end
			
			if bool then
				update_search_tags()
				scan_workspace()
				
				local descendant_added_conn = workspace.DescendantAdded:Connect(function(desc)
					if desc:IsA("BasePart") then apply_highlight(desc) end
				end)
				local descendant_removing_conn = workspace.DescendantRemoving:Connect(remove_highlight)

				table.insert(vapeConnections, {Disconnect = function()
					descendant_added_conn:Disconnect()
					descendant_removing_conn:Disconnect()
				end})

			else
				for part, highlight in pairs(highlights) do
					highlight:Destroy()
				end
				highlights = {}
			end
		end,
		Hover = "Highlights specific blocks in the world based on their name."
	})
	
	SearchToggle:CreateTextBox({
		Name = "Tags (comma separated)",
		Default = "diamond,iron,gold,chest",
		Api = "SearchTagsTextBox"
	})
	
	SearchToggle:CreateColorSlider({
		Name = "Highlight Color",
		Default = Color3.fromRGB(255, 0, 255),
		Api = "SearchColorSlider"
	})
end)

run("Waypoints", function()
	-- This module is heavily reliant on a custom GUI, so this is a simplified 1:1 of the core logic.
	local WaypointsToggle = RenderWindow:CreateToggle({
		Name = "Waypoints",
		Api = "WaypointsToggle",
		Callback = function(bool)
			-- Waypoint data would be stored in GuiLibrary.Settings
			if not GuiLibrary.Settings.Waypoints then
				GuiLibrary.Settings.Waypoints = {}
			end
			
			local waypoint_elements = {}

			local function update_waypoints()
				for name, data in pairs(GuiLibrary.Settings.Waypoints) do
					if not waypoint_elements[name] then
						local billboard = Instance.new("BillboardGui")
						billboard.AlwaysOnTop = true
						billboard.Size = UDim2.new(0, 300, 0, 50)
						billboard.Adornee = nil -- Set later
						
						local label = Instance.new("TextLabel")
						label.Size = UDim2.new(1, 0, 1, 0)
						label.BackgroundTransparency = 1
						label.TextColor3 = data.Color or Color3.new(1,1,1)
						label.Font = Enum.Font.SourceSansBold
						label.TextSize = 18
						label.Parent = billboard
						
						local part = Instance.new("Part")
						part.Anchored = true
						part.CanCollide = false
						part.Transparency = 1
						part.Size = Vector3.new(1,1,1)
						part.Parent = workspace
						
						billboard.Adornee = part
						billboard.Parent = coreGui
						waypoint_elements[name] = {Billboard = billboard, Label = label, Part = part}
					end
					
					local element = waypoint_elements[name]
					local pos = Vector3.new(data.X, data.Y, data.Z)
					element.Part.Position = pos
					local distance = math.floor((gameCamera.CFrame.Position - pos).Magnitude)
					element.Label.Text = name .. " [" .. distance .. "m]"
				end
			end
			
			if bool then
				RunLoops:BindToRenderStep("Waypoints", update_waypoints)
			else
				RunLoops:UnbindFromRenderStep("Waypoints")
				for name, element in pairs(waypoint_elements) do
					element.Billboard:Destroy()
					element.Part:Destroy()
				end
				waypoint_elements = {}
			end
		end,
		Hover = "Displays custom waypoints in the world."
	})
end)

run("Xray", function()
	local XrayToggle = RenderWindow:CreateToggle({
		Name = "Xray",
		Api = "XrayToggle",
		Callback = function(bool)
			local original_transparency = {}
			
			local function apply_xray(part)
				if part:IsA("BasePart") and not part:IsA("TrussPart") and part.Transparency < 1 then
					if not original_transparency[part] then
						original_transparency[part] = part.Transparency
					end
					part.Transparency = 0.75
				end
			end
			
			local function restore_xray(part)
				if original_transparency[part] then
					part.Transparency = original_transparency[part]
					original_transparency[part] = nil
				end
			end

			if bool then
				for _, part in ipairs(workspace:GetDescendants()) do
					apply_xray(part)
				end
				
				local added_conn = workspace.DescendantAdded:Connect(apply_xray)
				table.insert(vapeConnections, {Disconnect = function() added_conn:Disconnect() end})
			else
				for part, trans in pairs(original_transparency) do
					if part and part.Parent then
						part.Transparency = trans
					end
				end
				original_transparency = {}
			end
		end,
		Hover = "Makes most blocks transparent to see through them."
	})
end)
run("Timer", function()
	local TimerToggle = WorldWindow:CreateToggle({
		Name = "Timer",
		Api = "TimerToggle",
		Callback = function(bool)
			local client_tick_rate = 20 -- Roblox default client physics tick rate
			
			if bool then
				local speed_multiplier = GetValue("TimerSpeedSlider")
				-- This is a very advanced technique that hooks the task scheduler.
				-- It is dangerous and highly dependent on the exploit's capabilities.
				-- The deobfuscated logic is conceptual as the exact function to hook varies.
				local set_simulation_rate = gethiddenproperty or setsimulationradius or nil
				if set_simulation_rate then
					pcall(set_simulation_rate, lplr, client_tick_rate * speed_multiplier)
				else
					warn("Timer: Your exploit does not support scheduler modification.")
				end
			else
				local set_simulation_rate = gethiddenproperty or setsimulationradius or nil
				if set_simulation_rate then
					pcall(set_simulation_rate, lplr, client_tick_rate)
				else
					-- No action needed if it wasn't hooked in the first place.
				end
			end
		end,
		Hover = "Speeds up or slows down client-side game physics."
	})

	TimerToggle:CreateSlider({
		Name = "Speed",
		Min = 0.1,
		Max = 5,
		Default = 1.0,
		Suffix = "x",
		Round = 0.1,
		Api = "TimerSpeedSlider"
	})
end)

run("AutoHeal", function()
	local AutoHealToggle = WorldWindow:CreateToggle({
		Name = "AutoHeal",
		Api = "AutoHealToggle",
		Callback = function(bool)
			if bool then
				RunLoops:BindToHeartbeat("AutoHeal", function()
					if not entityLibrary.isAlive then return end
					local humanoid = entityLibrary.character.Humanoid
					local health_threshold = GetValue("AutoHealHealthSlider")
					
					if humanoid.Health < humanoid.MaxHealth and humanoid.Health < health_threshold then
						-- Find and use a healing item
						local best_heal, heal_amount = nil, 0
						
						for _, item in ipairs(lplr.Backpack:GetChildren()) do
							if item:IsA("Tool") then
								-- Heuristic for finding healing items
								local heal_val = item:FindFirstChild("HealAmount")
								if heal_val and heal_val:IsA("IntValue") and heal_val.Value > heal_amount then
									heal_amount = heal_val.Value
									best_heal = item
								end
							end
						end
						
						if best_heal then
							local original_tool = lplr.Character:FindFirstChildOfClass("Tool")
							lplr.Character.Humanoid:EquipTool(best_heal)
							task.wait() -- Allow time for equip animation
							best_heal:Activate()
							task.wait() -- Allow time for use animation
							if original_tool then
								lplr.Character.Humanoid:EquipTool(original_tool)
							end
						end
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("AutoHeal")
			end
		end,
		Hover = "Automatically uses healing items when your health is low."
	})
	
	AutoHealToggle:CreateSlider({
		Name = "Health Threshold",
		Min = 1,
		Max = 100,
		Default = 50,
		Suffix = "%",
		Round = 1,
		Api = "AutoHealHealthSlider"
	})
end)

run("FastPlace", function()
	local FastPlaceToggle = WorldWindow:CreateToggle({
		Name = "FastPlace",
		Api = "FastPlaceToggle",
		Callback = function(bool)
			local old_delay
			if bool then
				if workspace:IsA("Workspace") and workspace:FindFirstChild("BlockPlaceDebounce") then
					local debounce_script = workspace.BlockPlaceDebounce
					-- This is a specific hook for a common game mechanic.
					-- The deobfuscated logic is to find and disable the debounce script.
					pcall(function()
						debounce_script.Disabled = true
					end)
				else
					-- Generic method: reduce tool equip/unequip time
					old_delay = settings():GetService("NetworkSettings").ToolEquipDelay
					settings():GetService("NetworkSettings").ToolEquipDelay = 0
				end
			else
				if workspace:IsA("Workspace") and workspace:FindFirstChild("BlockPlaceDebounce") then
					local debounce_script = workspace.BlockPlaceDebounce
					pcall(function()
						debounce_script.Disabled = false
					end)
				elseif old_delay then
					settings():GetService("NetworkSettings").ToolEquipDelay = old_delay
				end
			end
		end,
		Hover = "Removes the delay between placing blocks."
	})
end)
run("NoSlow", function()
	local NoSlowToggle = WorldWindow:CreateToggle({
		Name = "NoSlow",
		Api = "NoSlowToggle",
		Callback = function(bool)
			local old_index
			if bool then
				local humanoid = lplr.Character and lplr.Character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					-- This hooks the __index metamethod of the Humanoid to intercept property gets.
					local mt = getrawmetatable(humanoid)
					old_index = mt.__index
					mt.__index = function(self, index)
						if index == "WalkSpeed" and IsEnabled("NoSlowToggle") then
							local tool = lplr.Character and lplr.Character:FindFirstChildOfClass("Tool")
							-- If holding a tool that would normally slow the player (e.g., while blocking or eating)
							if tool and tool:GetAttribute("SlowingTool") then
								return 16 -- Return default walkspeed
							end
						end
						return old_index(self, index)
					end
				end
			else
				local humanoid = lplr.Character and lplr.Character:FindFirstChildOfClass("Humanoid")
				if humanoid and old_index then
					local mt = getrawmetatable(humanoid)
					mt.__index = old_index
					old_index = nil
				end
			end
		end,
		Hover = "Prevents items like food or shields from slowing you down."
	})

	table.insert(vapeConnections, GuiLibrary.SelfDestructEvent:Connect(function()
		if IsEnabled("NoSlowToggle") and old_index then
			local humanoid = lplr.Character and lplr.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				local mt = getrawmetatable(humanoid)
				mt.__index = old_index
			end
		end
	end))
end)

run("Breaker", function()
	local BreakerToggle = WorldWindow:CreateToggle({
		Name = "Breaker",
		Api = "BreakerToggle",
		Callback = function(bool)
			if bool then
				RunLoops:BindToHeartbeat("Breaker", function()
					local range = GetValue("BreakerRangeSlider")
					local target_block_name = GetDropdown("BreakerTargetDropdown")
					
					for _, part in ipairs(workspace:GetChildren()) do
						if part:IsA("BasePart") and part.Name == target_block_name then
							local distance = (entityLibrary.character.HumanoidRootPart.Position - part.Position).Magnitude
							if distance <= range then
								-- Find the appropriate tool to break the block
								local tool = nil -- Logic to find pickaxe/axe etc. would go here
								if not tool then
									tool = lplr.Character and lplr.Character:FindFirstChildOfClass("Tool")
								end
								
								if tool then
									-- Fire a remote event to break the block. This is highly game-specific.
									local break_remote = game:GetService("ReplicatedStorage"):FindFirstChild("BreakBlockEvent")
									if break_remote then
										break_remote:FireServer(part)
									end
								end
								break -- Only break one block per frame
							end
						end
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("Breaker")
			end
		end,
		Hover = "Automatically breaks specific blocks around you."
	})
	
	BreakerToggle:CreateSlider({
		Name = "Range", Min = 3, Max = 10, Default = 5, Suffix = " studs", Round = 1, Api = "BreakerRangeSlider"
	})
	
	BreakerToggle:CreateDropdown({
		Name = "Target", Options = {"Bed", "Cake", "Obsidian"}, Default = "Bed", Api = "BreakerTargetDropdown"
	})
end)

run("AntiInvis", function()
	local AntiInvisToggle = WorldWindow:CreateToggle({
		Name = "AntiInvis",
		Api = "AntiInvisToggle",
		Callback = function(bool)
			if bool then
				RunLoops:BindToHeartbeat("AntiInvis", function()
					for _, entity in ipairs(entityLibrary.entityList) do
						if entity.Character then
							for _, part in ipairs(entity.Character:GetDescendants()) do
								if part:IsA("BasePart") then
									if part.Transparency > 0.9 then
										part.LocalTransparencyModifier = 0
										part.Transparency = 0.5
									end
								end
							end
						end
					end
				end)
			else
				-- This doesn't restore original transparency as it's meant to counter an active cheat.
				-- It just stops forcing them to be visible.
				RunLoops:UnbindFromHeartbeat("AntiInvis")
			end
		end,
		Hover = "Attempts to make invisible players visible."
	})
end)
run("AntiBot", function()
	local AntiBotToggle = WorldWindow:CreateToggle({
		Name = "AntiBot",
		Api = "AntiBotToggle",
		Callback = function(bool)
			if bool then
				local function check_player(player)
					if player == lplr then return end
					-- A series of heuristics to identify bots.
					local is_bot = false
					local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
					if humanoid then
						-- Heuristic 1: Noob-like appearance
						if player.Character:FindFirstChild("Shirt") and player.Character:FindFirstChild("Pants") then
							-- More complex appearance checks would go here.
						else
							is_bot = true
						end
						
						-- Heuristic 2: Erratic movement (simplified check)
						if humanoid.Jump then is_bot = true end
					end
					
					if is_bot then
						-- Bot identified, add to a temporary ignore list for other modules.
						entityLibrary.setEntityTargetable(player, false)
					end
				end

				RunLoops:BindToHeartbeat("AntiBot", function()
					for _, player in ipairs(playersService:GetPlayers()) do
						check_player(player)
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("AntiBot")
				-- Re-enable targeting for all players
				for _, player in ipairs(playersService:GetPlayers()) do
					entityLibrary.setEntityTargetable(player, true)
				end
			end
		end,
		Hover = "Attempts to detect and ignore bots in the game."
	})
end)

run("ChestStealer", function()
	local ChestStealerToggle = WorldWindow:CreateToggle({
		Name = "ChestStealer",
		Api = "ChestStealerToggle",
		Callback = function(bool)
			if bool then
				local open_chests = {}
				RunLoops:BindToHeartbeat("ChestStealer", function()
					local range = GetValue("ChestStealerRangeSlider")
					for _, part in ipairs(workspace:GetDescendants()) do
						if (part.Name:lower():find("chest") or part:GetAttribute("IsContainer")) and not open_chests[part] then
							local distance = (entityLibrary.character.HumanoidRootPart.Position - part.Position).Magnitude
							if distance <= range then
								-- Game-specific remote to open the chest
								local open_remote = game:GetService("ReplicatedStorage"):FindFirstChild("OpenContainer")
								if open_remote then
									open_remote:FireServer(part)
									open_chests[part] = true
									-- A second remote is often needed to loot the items.
									task.wait(0.1)
									local loot_remote = game:GetService("ReplicatedStorage"):FindFirstChild("LootAll")
									if loot_remote then
										loot_remote:FireServer(part)
									end
								end
							end
						end
					end
				end)
			else
				RunLoops:UnbindFromHeartbeat("ChestStealer")
			end
		end,
		Hover = "Automatically loots chests around you."
	})
	
	ChestStealerToggle:CreateSlider({
		Name = "Range", Min = 3, Max = 15, Default = 7, Suffix = " studs", Round = 1, Api = "ChestStealerRangeSlider"
	})
end)

run("Keystrokes", function()
	-- This is a Legit Module, rendered differently from the main GUI.
	local KeystrokesModule = LegitModules.Create("Keystrokes")
	
	local keys = {
		W = {KeyCode = Enum.KeyCode.W, Label = "W"},
		A = {KeyCode = Enum.KeyCode.A, Label = "A"},
		S = {KeyCode = Enum.KeyCode.S, Label = "S"},
		D = {KeyCode = Enum.KeyCode.D, Label = "D"},
		LMB = {Button = Enum.UserInputType.MouseButton1, Label = "LMB"},
		RMB = {Button = Enum.UserInputType.MouseButton2, Label = "RMB"},
	}
	
	local key_elements = {}

	KeystrokesModule.Update:Connect(function()
		if IsEnabled("KeystrokesLegitModule") then
			local frame = GetClient().KeystrokesLegitModule.Object
			if not frame:FindFirstChild("KeyContainer") then
				local container = Instance.new("Frame")
				container.Name = "KeyContainer"
				container.Size = UDim2.new(1, 0, 1, 0)
				container.BackgroundTransparency = 1
				container.Parent = frame
				
				-- Create UI elements for each key
				-- This is a simplified layout
				local pos_map = {W = UDim2.new(0.33, 0, 0, 0), A = UDim2.new(0, 0, 0.33, 0), S = UDim2.new(0.33, 0, 0.33, 0), D = UDim2.new(0.66, 0, 0.33, 0), LMB = UDim2.new(0, 0, 0.66, 0), RMB = UDim2.new(0.5, 0, 0.66, 0)}
				for key_name, key_data in pairs(keys) do
					local key_button = Instance.new("TextButton")
					key_button.Size = UDim2.new(0.3, 0, 0.3, 0)
					key_button.Position = pos_map[key_name]
					key_button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					key_button.TextColor3 = Color3.new(1,1,1)
					key_button.Text = key_data.Label
					key_button.Parent = container
					key_elements[key_name] = key_button
				end
			end
			
			RunLoops:BindToRenderStep("KeystrokesUpdate", function()
				for key_name, key_data in pairs(keys) do
					local pressed = false
					if key_data.KeyCode then
						pressed = inputService:IsKeyDown(key_data.KeyCode)
					elseif key_data.Button then
						pressed = inputService:IsMouseButtonPressed(key_data.Button)
					end
					
					if key_elements[key_name] then
						key_elements[key_name].BackgroundColor3 = pressed and Color3.new(1,1,1) or Color3.fromRGB(50,50,50)
						key_elements[key_name].TextColor3 = pressed and Color3.new(0,0,0) or Color3.new(1,1,1)
					end
				end
			end)
		else
			RunLoops:UnbindFromRenderStep("KeystrokesUpdate")
		end
	end)
end)
run("Cps", function()
	local CpsModule = LegitModules.Create("CPS")
	local clicks = {LMB = {}, RMB = {}}
	
	local input_conn = inputService.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			table.insert(clicks.LMB, tick())
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			table.insert(clicks.RMB, tick())
		end
	end)
	table.insert(vapeConnections, {Disconnect = function() input_conn:Disconnect() end})

	CpsModule.Update:Connect(function()
		local frame = GetClient().CPSLegitModule.Object
		if not frame:FindFirstChild("CpsLabel") then
			local label = Instance.new("TextLabel")
			label.Name = "CpsLabel"
			label.Size = UDim2.new(1, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Font = Enum.Font.Gotham
			label.TextColor3 = Color3.new(1,1,1)
			label.TextScaled = true
			label.Parent = frame
		end
		
		if IsEnabled("CPSLegitModule") then
			RunLoops:BindToRenderStep("CpsUpdate", function()
				local current_time = tick()
				for button, times in pairs(clicks) do
					for i = #times, 1, -1 do
						if current_time - times > 1 then
							table.remove(times, i)
						end
					end
				end
				
				local label = frame:FindFirstChild("CpsLabel")
				if label then
					label.Text = #clicks.LMB .. " | " .. #clicks.RMB .. " CPS"
				end
			end)
		else
			RunLoops:UnbindFromRenderStep("CpsUpdate")
		end
	end)
end)

run("Ping", function()
	local PingModule = LegitModules.Create("Ping")
	
	PingModule.Update:Connect(function()
		local frame = GetClient().PingLegitModule.Object
		if not frame:FindFirstChild("PingLabel") then
			local label = Instance.new("TextLabel")
			label.Name = "PingLabel"
			label.Size = UDim2.new(1, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Font = Enum.Font.Gotham
			label.TextColor3 = Color3.new(1,1,1)
			label.TextScaled = true
			label.Parent = frame
		end
		
		if IsEnabled("PingLegitModule") then
			RunLoops:BindToHeartbeat("PingUpdate", function()
				local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
				local label = frame:FindFirstChild("PingLabel")
				if label then
					label.Text = "Ping: " .. ping
				end
			end)
		else
			RunLoops:UnbindFromHeartbeat("PingUpdate")
		end
	end)
end)

run("FPS", function()
	local FpsModule = LegitModules.Create("FPS")
	
	FpsModule.Update:Connect(function()
		local frame = GetClient().FPSLegitModule.Object
		if not frame:FindFirstChild("FpsLabel") then
			local label = Instance.new("TextLabel")
			label.Name = "FpsLabel"
			label.Size = UDim2.new(1, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Font = Enum.Font.Gotham
			label.TextColor3 = Color3.new(1,1,1)
			label.TextScaled = true
			label.Parent = frame
		end
		
		if IsEnabled("FPSLegitModule") then
			RunLoops:BindToRenderStep("FpsUpdate", function()
				local fps = workspace:GetRealPhysicsFPS()
				local label = frame:FindFirstChild("FpsLabel")
				if label then
					label.Text = "FPS: " .. math.floor(fps)
				end
			end)
		else
			RunLoops:UnbindFromRenderStep("FpsUpdate")
		end
	end)
end)

run("Coords", function()
	local CoordsModule = LegitModules.Create("Coordinates")
	
	CoordsModule.Update:Connect(function()
		local frame = GetClient().CoordinatesLegitModule.Object
		if not frame:FindFirstChild("CoordsLabel") then
			local label = Instance.new("TextLabel")
			label.Name = "CoordsLabel"
			label.Size = UDim2.new(1, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Font = Enum.Font.Gotham
			label.TextColor3 = Color3.new(1,1,1)
			label.TextScaled = true
			label.Parent = frame
			
			local constraint = Instance.new("UITextSizeConstraint")
			constraint.MaxTextSize = 12
			constraint.Parent = label
		end
		
		if IsEnabled("CoordinatesLegitModule") then
			RunLoops:BindToHeartbeat("CoordsUpdate", function()
				if entityLibrary.isAlive then
					local pos = entityLibrary.character.HumanoidRootPart.Position
					local x = math.floor(pos.X)
					local y = math.floor(pos.Y)
					local z = math.floor(pos.Z)
					
					local label = frame:FindFirstChild("CoordsLabel")
					if label then
						label.Text = "X:" .. x .. " Y:" .. y .. " Z:" .. z
					end
				end
			end)
		else
			RunLoops:UnbindFromHeartbeat("CoordsUpdate")
		end
	end)
end)
	shared.VapeFullyLoaded = true

	local lastSave = tick()
	local saveSettingsLoop = coroutine.create(function()
		repeat
			if tick() - lastSave >= 5 then
				pcall(GuiLibrary.SaveSettings)
				lastSave = tick()
			end
			task.wait(1)
		until not vapeInjected
	end)
	coroutine.resume(saveSettingsLoop)
	
	pcall(GuiLibrary.LoadSettings)
	
	if not shared.VapeSwitchServers then
		GuiLibrary.LoadedAnimation(true)
	end
	
	if shared.VapeOpenGui then
		local clickgui = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("ClickGui")
		clickgui.Visible = true
		local legitgui = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("LegitGui")
		legitgui.Visible = false
		inputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		for _, mobileButton in pairs(GuiLibrary.MobileButtons) do mobileButton.Visible = false end
		
		local onlineProfilesFrame = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("OnlineProfiles")
		if onlineProfilesFrame.Visible then
			onlineProfilesFrame.Visible = false
		end
		
		local legitModulesFrame = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("LegitModules")
		if legitModulesFrame.Visible then
			legitModulesFrame.Visible = false
		end
	end
	
	shared.VapeSwitchServers = nil
	shared.VapeOpenGui = nil

	local function AddHover(object, text)
		local hoverbox = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("ClickGui"):FindFirstChild("TextLabel") -- Simplified reference
		if GuiLibrary["ToggleTooltips"] then
			object.MouseEnter:Connect(function()
				local suc, res = pcall(function() return textService:GetTextSize("  "..text.."  ", 14, Enum.Font.Arial, Vector2.new(99999, 99999)) end)
				if suc and hoverbox then
					hoverbox.Text = "  "..text
					hoverbox.Size = UDim2.new(0, res.X, 0, res.Y + 6)
					hoverbox.Position = UDim2.new(0, inputService:GetMouseLocation().X + 10, 0, inputService:GetMouseLocation().Y)
					hoverbox.Visible = true
				end
			end)
			object.MouseLeave:Connect(function()
				if hoverbox then
					hoverbox.Visible = false
				end
			end)
		end
	end

	local searchbarmain = GuiLibrary.MainGui:FindFirstChild("ScaledGui"):FindFirstChild("ClickGui"):FindFirstChild("SearchBar")
	local searchbaricon2 = searchbarmain and searchbarmain:FindFirstChild("LegitMode")
	if searchbarmain then AddHover(searchbarmain, "Search for modules") end
	if searchbaricon2 then AddHover(searchbaricon2, "Legit modules") end
