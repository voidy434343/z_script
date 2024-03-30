plr = game.Players.LocalPlayer
lp = game.Players.LocalPlayer
Cam = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local isspec = false
local rendertpto = nil
local bangplayer = nil

local Data = {
    Font = Enum.Font.Arcade,
    Color = Color3.fromRGB(130, 35, 175),
    DarkC = Color3.fromRGB(107 /2, 50 /2, 124 /2),
    BlackC = Color3.fromRGB(30,30,30)
}

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

function CFrameToOrientation(cf)
	local part = Instance.new("Part")
 	part.CFrame = cf
  	ori = part.Orientation
  	return ori
end

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Project Zeouron bar" then
    	v:Destroy()
    end
end

local G = Instance.new("ScreenGui")
G.Parent = game.CoreGui
G.Name = "Project Zeouron bar" -- game.CoreGui["Project Zeouron bar"]:Destroy()
G.ResetOnSpawn = false
G.Enabled = true

local Go = Instance.new("ScreenGui")

Go.Parent = lp.PlayerGui
Go.Name = "HELP! THERES CUM"
Go.ResetOnSpawn = false
Go.Enabled = true
 	
local Back = Instance.new("Frame")
	
Back.Parent = Go
Back.Size = UDim2.new(1,0,1.3,0)
Back.Position = UDim2.new(0,0,-0.15,0)
Back.BackgroundColor3 = Color3.fromRGB(0,0,0)
Back.BackgroundTransparency = 1
Back.BorderColor3 = Color3.fromRGB(0,0,0)
Back.Selectable = true
Back.ZIndex = 0 -math.huge

information = function(string)
    for i,v in pairs(G:GetChildren()) do
        if v.Name == "info" then
        	v:Destroy()
        end
    end
	local TextLabel = Instance.new("TextButton")
	TextLabel.Parent = G
	TextLabel.Size = UDim2.new(1,0,0,25)
	TextLabel.Position = UDim2.new(0,0,0,660)
	TextLabel.TextScaled = true
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Data.Color
	TextLabel.Name = "info"
	TextLabel.Text = string
 	TextLabel.TextStrokeTransparency = 0
  	TextLabel.TextStrokeColor3 = Data.DarkC
 
 	local msg = ""
 	for i,v in pairs(string.split(string,"")) do
    	msg = msg..v
     	TextLabel.Text = msg
      	wait(0.02)
    end
	wait(3.5)
 	for i,v in pairs(string.split(string,"")) do
     	Split = string.split(TextLabel.Text,"")
      	local index = table.find(Split, Split[#Split]) 
        table.remove(Split, index)
        rmsg = ""
        for i,v in pairs(Split) do
            rmsg = rmsg..v
     		TextLabel.Text = rmsg
        end
    	
      	wait(0.01)
    end
	TextLabel:Destroy()
end


function chat(varr) 
    wait(0.01)
   	if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(varr)
    else
  		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varr, "All")
    end
end

function chat(varr) 
    wait(0.01)
   	if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(varr)
    else
  		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varr, "All")
    end
end 

local findplr = function(Name)
	 if Name:lower() == "random" then
		 return game.Players:GetPlayers()[math.random(#game.Players:GetPlayers())]
	 else
		 Name = Name:lower():gsub("%s", "")
		 for _, x in next, game.Players:GetPlayers() do
			 if x.Name:lower():match(Name) then
				 return x
			 elseif x.DisplayName:lower():match("^" .. Name) then
				 return x
			 end
		 end
	 end
 end

cmdfunctions = {}
commands = {}
cmdfunctions.new = function(Alternatives, desc, func, args)
    local tble = {
        Alternatives,
        func,
        desc,
        args
    }
    
    table.insert(commands, tble)
end

cmdfunctions.run = function(args)
    for i,v in pairs(commands) do
        for i,c in pairs(v[1]) do
        	if c:lower() == args[1]:lower() then
             	table.remove(args, 1)
           		v[2](args)
            end
    	end
    end
end

cmdfunctions.new({"say", "chat", "spectate"}, "Makes you talk whatever u put", function(args)
    local msg = ""
    for i,v in pairs(args) do
        msg = msg..v.." "
    end
	chat(msg)
end, "string")

cmdfunctions.new({"walkspeed", "ws"}, "Makes your walkspeed to whatever u want", function(args)
    lp.character.Humanoid.WalkSpeed = tonumber(args[1])
end, "speed")

cmdfunctions.new({"jumppower", "jp"}, "Makes your jumppower to whatever u want", function(args)
    lp.character.Humanoid.JumpPower = tonumber(args[1])
end, "Power")

cmdfunctions.new({"gravity"}, "Makes your Gravity to whatever u want", function(args)
    game.Workspace.Gravity = tonumber(args[1])
end, "Gravity")

cmdfunctions.new({"sit"}, "Makes u sit.", function(args)
    lp.character.Humanoid.Sit = true
end)

cmdfunctions.new({"usetools"}, "Uses all tools in your inventory", function(args)
	if args[2] ~= nil and args[3] ~= nil then
    	for i=1,tonumber(args[3]) do
        	for i,v in pairs(lp.Backpack:GetChildren()) do
             	if v:IsA("Tool") then
            		lp.character.Humanoid:EquipTool(v)
             		v:Activate()
              	end
            end
        	lp.character.Humanoid.UnequipTools()
        	wait(args[2])
        end
   	else
    	for i,v in pairs(lp.Backpack:GetChildren()) do
            if v:IsA("Tool") then
            	lp.character.Humanoid:EquipTool(v)
             	v:Activate()
            end
        end
    	lp.character.Humanoid.UnequipTools()
    end
end)

cmdfunctions.new({"equiptools"}, "Equips all tools in your inventory", function(args)
    for i,v in pairs(lp.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = lp.character
        end
    end
end)

cmdfunctions.new({"droptools"}, "Drops all tools in your inventory", function(args)
    for i,v in pairs(lp.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = game.Workspace
        end
    end
end)

cmdfunctions.new({"Chams", "Esp"}, "Chams", function(args)
    for i,v in pairs(game.Players:GetChildren()) do
	if v.Character:FindFirstChild("Head") ~= nil then
        local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Adornee = v.Character.Head
		BillboardGui.Name = v.Name
		BillboardGui.Parent = v.character
		BillboardGui.Size = UDim2.new(0, 100, 0, 150)
		BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
		BillboardGui.AlwaysOnTop = true
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -50)
		TextLabel.Size = UDim2.new(0, 100, 0, 100)
		TextLabel.Font = Data.Font
		TextLabel.TextSize = 17
		TextLabel.TextColor3 = v.TeamColor.Color
		TextLabel.TextStrokeTransparency = 0.3
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = '@'..v.Name .. ' | ' .. v.DisplayName .. ''
		TextLabel.ZIndex = 10
  
  		local hl = Instance.new("Highlight", v.Character)
    	hl.FillColor = v.TeamColor.Color
     end
     
     	v.CharacterAdded:Connect(function(char)
          	wait()
        	local BillboardGui = Instance.new("BillboardGui")
			local TextLabel = Instance.new("TextLabel")
			BillboardGui.Adornee = char.Head
			BillboardGui.Name = v.Name
			BillboardGui.Parent = char
			BillboardGui.Size = UDim2.new(0, 100, 0, 150)
			BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
			BillboardGui.AlwaysOnTop = true
			TextLabel.Parent = BillboardGui
			TextLabel.BackgroundTransparency = 1
			TextLabel.Position = UDim2.new(0, 0, 0, -50)
			TextLabel.Size = UDim2.new(0, 100, 0, 100)
			TextLabel.Font = Data.Font
			TextLabel.TextSize = 17
			TextLabel.TextColor3 = v.TeamColor.Color
			TextLabel.TextStrokeTransparency = 0.3
			TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
			TextLabel.Text = '@'..v.Name .. ' | ' .. v.DisplayName .. ''
			TextLabel.ZIndex = 10
  
  			local hl = Instance.new("Highlight", v.Character)
    		hl.FillColor = v.TeamColor.Color
       	end)
     
     	v:GetPropertyChangedSignal("TeamColor"):Connect(function()
        	local label = v.character:FindFirstChild(v.Name).TextLabel
         	label.TextColor3 = v.TeamColor.Color
          	local hl = v.character:FindFirstChild("Highlight")
          	hl.FillColor = v.TeamColor.Color
        end)
     
     end
 
 	game.Players.PlayerAdded:Connect(function(v)
      	wait(10)
      	if v.Character:FindFirstChild("Head") ~= nil then
    	local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Adornee = v.Character.Head
		BillboardGui.Name = v.Name
		BillboardGui.Parent = v.character
		BillboardGui.Size = UDim2.new(0, 100, 0, 150)
		BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
		BillboardGui.AlwaysOnTop = true
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -50)
		TextLabel.Size = UDim2.new(0, 100, 0, 100)
		TextLabel.Font = Data.Font
		TextLabel.TextSize = 17
		TextLabel.TextColor3 = v.TeamColor.Color
		TextLabel.TextStrokeTransparency = 0.3
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = '@'..v.Name .. ' | ' .. v.DisplayName .. ''
		TextLabel.ZIndex = 10
  
  		local hl = Instance.new("Highlight", v.Character)
    	hl.FillColor = v.TeamColor.Color
     	end
     
     	v.CharacterAdded:Connect(function(char)
          	wait()
        	local BillboardGui = Instance.new("BillboardGui")
			local TextLabel = Instance.new("TextLabel")
			BillboardGui.Adornee = char.Head
			BillboardGui.Name = v.Name
			BillboardGui.Parent = char
			BillboardGui.Size = UDim2.new(0, 100, 0, 150)
			BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
			BillboardGui.AlwaysOnTop = true
			TextLabel.Parent = BillboardGui
			TextLabel.BackgroundTransparency = 1
			TextLabel.Position = UDim2.new(0, 0, 0, -50)
			TextLabel.Size = UDim2.new(0, 100, 0, 100)
			TextLabel.Font = Data.Font
			TextLabel.TextSize = 17
			TextLabel.TextColor3 = v.TeamColor.Color
			TextLabel.TextStrokeTransparency = 0.3
			TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
			TextLabel.Text = '@'..v.Name .. ' | ' .. v.DisplayName .. ''
			TextLabel.ZIndex = 10
  
  			local hl = Instance.new("Highlight", v.Character)
    		hl.FillColor = v.TeamColor.Color
       	end)
    
    	v:GetPropertyChangedSignal("TeamColor"):Connect(function()
        	local label = v.character:FindFirstChild(v.Name).TextLabel
         	label.TextColor3 = v.TeamColor.Color
          	local hl = v.character:FindFirstChild("Highlight")
          	hl.FillColor = v.TeamColor.Color
        end)
    
    end)
end)

cmdfunctions.new({"view", "spectate"}, "Spectate someone", function(args)
    if findplr(args[1]) then
        game.Workspace.CurrentCamera.CameraSubject = findplr(args[1]):FindFirstChildWhichIsA("Humanoid")
    end
end, "Player")

cmdfunctions.new({"fb", "fullbright"}, "Makes the workspace bright.", function(args)
    Bright = true
		NormalLightingSettings = {
        	Brightness = game:GetService("Lighting").Brightness,
        	FogEnd = game:GetService("Lighting").FogEnd,
        	GlobalShadows = game:GetService("Lighting").GlobalShadows,
        	Ambient = game:GetService("Lighting").Ambient
    	}
        while Bright and wait() do
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").FogEnd = 999999
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(235, 235, 235)
        end
end)

cmdfunctions.new({"unfb", "unfullbright"}, "Undos fb", function(args)
    if NormalLightingSettings then
        game:GetService("Lighting").Brightness = NormalLightingSettings.Brightness
        game:GetService("Lighting").FogEnd = NormalLightingSettings.FogEnd
        game:GetService("Lighting").GlobalShadows = NormalLightingSettings.GlobalShadows
        game:GetService("Lighting").Ambient = NormalLightingSettings.Ambient
    end
end)

tpwalk = false
cmdfunctions.new({"tpwalk", "teleportationwalk", "teleportwalk"}, "Bypasses most Anticheats", function(args)
    if args[1] then
    if not tpwalk then
    	tpwalk = true
    	tpspeed = args[1]
    else
    	tpwalk = true
    end
	else
 	if not tpwalk then
    	tpwalk = true
    	tpspeed = 0.4
    else
    	tpwalk = true
    end
 	end
end, "Studs")

cmdfunctions.new({"untpwalk", "unteleportationwalk", "unteleportwalk"}, "unTpwalk 🤯🤯🤯", function(args)
    tpwalk = false
end)

function fly(speed)
	 local controlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 
	 Signal1 = game.Players.LocalPlayer.CharacterAdded:Connect(function(NewChar)
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = NewChar:WaitForChild("Humanoid").RootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = NewChar.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 end)
	 
	 local camera = game.Workspace.CurrentCamera
	 
	 Signal2 = game:GetService"RunService".RenderStepped:Connect(function()
	 if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = camera.CoordinateFrame
	 local direction = controlModule:GetMoveVector()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
	 if direction.X > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.X < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.Z > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 if direction.Z < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 end
	 end)
 end
 
 function unfly()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	 Signal1:Disconnect()
	 Signal2:Disconnect()
 end

local flydud = false
cmdfunctions.new({"fly"}, "Fly.", function(args)
    if not flydud then
        flydud = true
    	if args[1] then
        	fly(tonumber(args[1]) *22.5)
        else
        	fly(2 *22.5)
        end
    else
    	flydud = false
    	unfly()
    end
end, "Speed")

cmdfunctions.new({"bang", "fuck", "cum"}, "\"Ohhh Yeaahhhh\"", function(args)
    local playspeed = 10
    if args[2] then
        playspeed = 10 *tonumber(args[2])
    end
    bang = false
	bang = true
    local player = findplr(args[1])
    bangplr = player
    if notfunny then
        notfunny:Stop()
    end
	local stupid = Instance.new('Animation')
	stupid.AnimationId = 'rbxassetid://148840371'
	hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
	notfunny = hummy:LoadAnimation(stupid)
	notfunny:Play()
	notfunny:AdjustSpeed(playspeed)
end, "Player")

cmdfunctions.new({"unbang", "unfuck", "uncum"}, "CUM HARDER BOY", function(args)
    bangplr = nil
    if notfunny then
        notfunny:Stop()
    end
end)

cmdfunctions.new({"banganim", "fuckanim", "cumanim"}, "\"Ohhh Yeaahhhh\"", function(args)
    local playspeed = 10
    if args[1] then
        playspeed = 10 *tonumber(args[1])
    end
    if not notfunnyanim then
    local stupid = Instance.new('Animation')
	stupid.AnimationId = 'rbxassetid://148840371'
	hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
	notfunnyanim = hummy:LoadAnimation(stupid)
	notfunnyanim:Play()
	notfunnyanim:AdjustSpeed(playspeed)
	else
 	notfunnyanim:Stop()
 	end
end,"Speed")

cmdfunctions.new({"unfly"}, "unFly.", function(args)
    unfly()
    flydud = false
end)

cmdfunctions.new({"rejoin", "rj"}, "Rejoin the game", function(args) 
    game:GetService("TeleportService"):Teleport(game.PlaceId, plr)
end)

cmdfunctions.new({"spectator"}, "Turns u into a ghost and u can spectate idfk", function(args)
    if not isspec then
        isspec = true
    local Player = game.Players.LocalPlayer
	Characteroo = game.Players.LocalPlayer.Character
	Characteroo.Archivable = true
	InvisibleCharacter = Characteroo:Clone()
	InvisibleCharacter.Parent = game.Workspace
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
 	lp.Character = InvisibleCharacter
  	InvisibleCharacter.Animate.Disabled = true
	InvisibleCharacter.Animate.Disabled = false
  		game.Workspace.CurrentCamera.CameraSubject = InvisibleCharacter:FindFirstChildWhichIsA("Humanoid")
  		for i,v in pairs(InvisibleCharacter:GetChildren()) do
       		if v.Name ~= "HumanoidRootPart" then
            	v.Transparency = 0.7
            end
    	end
  	else
   		isspec = false
   		if Characteroo then
        	lp.Character = Characteroo
         	InvisibleCharacter:Destroy()
          	game.Workspace.CurrentCamera.CameraSubject = Characteroo:FindFirstChildWhichIsA("Humanoid")
        end
   	end
end)

local icon = Instance.new("ImageButton")

icon.Position = UDim2.new(0.5,0,0,0)
icon.Size = UDim2.new(0.030 *1.45,0,0.05 *1.45,0)
icon.BackgroundTransparency = 1
icon.Parent = G
icon.Image = "http://www.roblox.com/asset/?id=16688349183"
icon.Draggable = true 
icon.Active = true 
icon.Selectable = true
icon.ZIndex = 1

local back1 = Instance.new("ImageButton")

back1.Position = UDim2.new(-0.12,0,-0.12,0)
back1.Size = UDim2.new(1 *1.25,0,1 *1.25,0)
back1.BackgroundTransparency = 1
back1.Parent = icon
back1.Image = "http://www.roblox.com/asset/?id=16446446084"
back1.ZIndex = 0

local back2 = Instance.new("ImageButton")

back2.Position = UDim2.new(-0.12,0,-0.12,0)
back2.Size = UDim2.new(1 *1.25,0,1 *1.25,0)
back2.BackgroundTransparency = 1
back2.Parent = icon
back2.Image = "http://www.roblox.com/asset/?id=16446446084"
back2.ZIndex = 0

local bar = Instance.new("TextBox")

bar.Position = UDim2.new(0,0.5,0.5,0) -- UDim2.new(0,0,0.5,0)
bar.BackgroundColor3 = Color3.fromRGB(0,0,0)
bar.BorderColor3 = Data.Color
bar.TextColor3 = Data.Color
bar.Size = UDim2.new(0,0,0.07,0) -- UDim2.new(1,0,0.07,0)
bar.BackgroundTransparency = 0
bar.Parent = G
bar.ZIndex = 2
bar.TextScaled = true 
bar.TextSize = 35
bar.Font = Data.Font

local cmdthingys = Instance.new("Frame", G)
cmdthingys.BackgroundTransparency = 1

onoff = false
icon.MouseButton1Click:Connect(function()
    if onoff then
    	onoff = false
     	bar:CaptureFocus()
     	
      	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0,0.37,0)})
    	PlayThis:Play()
       
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(1,0,0.07,0)})
    	PlayThis:Play()
       
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(Back, TweenInf0, {BackgroundTransparency = 0.3})
    	PlayThis:Play()
     
     	for i,v in pairs(G:GetChildren()) do
        	if v.Name == "command" then
            	v:Destroy()
            end
        end
     
     	local showcmds = {}
      	local indexcount = 0
     	if indexcount < 5 then
            indexcount = indexcount +1
            table.insert(showcmds, v)
        end
    	local TextY = 0.09
    	for i,v in pairs(showcmds) do
        	local textt = Instance.new("TextLabel", G)

			textt.Position = UDim2.new(0.275,0,0.37 +TextY,0) -- UDim2.new(0,0,0.5 +TextY,0)
			textt.BackgroundColor3 = Color3.fromRGB(0,0,0)
			textt.BorderColor3 = Data.Color
			textt.TextColor3 = Data.Color
			textt.Size = UDim2.new(0.45,0,0.04,0) -- UDim2.new(1,0,0.07,0)
			textt.BackgroundTransparency = 0
   			if v[4] ~= nil then
   				textt.Text = v[1][1].." <"..v[4]..">"
       		else
         		textt.Text = v[1][1]
           	end
			textt.ZIndex = 3
			textt.TextScaled = true 
   			textt.Name = "command"
			textt.Font = Data.Font
   
   			TextY = TextY +0.06
      		
        end
    else
   		onoff = true  
             
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0.5,0.37,0)})
    	PlayThis:Play()
       
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(0,0,0.07,0)})
    	PlayThis:Play()
       
    end
end)

bar:GetPropertyChangedSignal("Text"):Connect(function()
    for i,v in pairs(G:GetChildren()) do
        	if v.Name == "command" then
            	v:Destroy()
            end
        end
     
     	local showcmds = {}
      	local indexcount = 0
     	for i,v in pairs(commands) do
          	local contains = false
         	for i,s in pairs(v[1]) do
            	if s:lower():match(bar.Text:lower()) then
                	contains = true
                end
            end
        	if indexcount < 5 and contains then
             	indexcount = indexcount +1
            	table.insert(showcmds, v)
            end
        end
    	local TextY = 0.09
    	for i,v in pairs(showcmds) do
        	local textt = Instance.new("TextLabel", G)

			textt.Position = UDim2.new(0.275,0,0.37 +TextY,0) -- UDim2.new(0,0,0.5 +TextY,0)
			textt.BackgroundColor3 = Color3.fromRGB(0,0,0)
			textt.BorderColor3 = Data.Color
			textt.TextColor3 = Data.Color
			textt.Size = UDim2.new(0.45,0,0.04,0) -- UDim2.new(1,0,0.07,0)
			textt.BackgroundTransparency = 0
   			if v[4] ~= nil then
   				textt.Text = v[1][1].." <"..v[4]..">"
       		else
         		textt.Text = v[1][1]
           	end
			textt.ZIndex = 3
			textt.TextScaled = true 
   			textt.Name = "command"
			textt.Font = Data.Font
   
   			TextY = TextY +0.06
      		
        end
end)

bar.FocusLost:Connect(function()
    for i,v in pairs(G:GetChildren()) do
        if v.Name == "command" then
        	v:Destroy()
    	end
    end
    
    local TweenInf0 = TweenInfo.new(0.5) 
    local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0.5,0.37,0)})
    PlayThis:Play()
       
    local TweenInf0 = TweenInfo.new(0.5) 
    local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(0,0,0.07,0)})
    PlayThis:Play()
    
    local TweenInf0 = TweenInfo.new(0.5) 
    local PlayThis = TweenService:Create(Back, TweenInf0, {BackgroundTransparency = 1})
    PlayThis:Play()
    
    cmdfunctions.run(string.split(bar.Text, " "))
end)

TPWalking = game:GetService("RunService").Heartbeat:Wait()
game:GetService("RunService").Stepped:Connect(function()
    back2.Rotation = back2.Rotation +2.5
    back1.Rotation = back1.Rotation -2.5
    if lp.character:FindFirstChild("HumanoidRootPart") ~= nil and tpwalk then
        game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * tpspeed * TPWalking * 10)
  	end
	if rendertpto and lp.character:FindFirstChildWhichIsA("Humanoid") then
    	lp.character.HumanoidRootPart.CFrame = CFrame.new(rendertpto.character.HumanoidRootPart.Position.X, rendertpto.character.HumanoidRootPart.Position.Y, rendertpto.character.HumanoidRootPart.Position.Z)
   	end
	if bang and lp.character:FindFirstChild("HumanoidRootPart") and bangplr.character:FindFirstChild("HumanoidRootPart") then
    	lp.character:FindFirstChild("HumanoidRootPart").CFrame = bangplr.character:FindFirstChild("HumanoidRootPart").CFrame *CFrame.new(0,0,1)
    end
end)
