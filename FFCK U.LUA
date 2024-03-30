plr = game.Players.LocalPlayer
lp = game.Players.LocalPlayer
Cam = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local fly = false
local Oldgravity = game.Workspace.Gravity
local cam = game.Workspace.CurrentCamera

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

count = 0
command = {}
command.add = function(commando, commandoan, args, func)
    count = count +1
	command[count] = {
    	commandM = commando,
     	commandO = commandoan,
      	Arg = args,
    	functiono = func
    }
end

command.run = function(split)
    for i,v in pairs(command) do
        if typeof(v) == "table" then
        if v.commandM == split[1] or v.commandO == split[1] and split[1] ~= "" then
            v.functiono(split)
        end
    	end
	end
end

local icon = Instance.new("ImageButton")

icon.Position = UDim2.new(0.5,0,0,0)
icon.Size = UDim2.new(0.030 *1.7,0,0.05 *1.7,0)
icon.BackgroundTransparency = 1
icon.Parent = G
icon.Image = "http://www.roblox.com/asset/?id=16446450034"
icon.Draggable = true 
icon.Active = true 
icon.Selectable = true
icon.ZIndex = 1

local back1 = Instance.new("ImageButton")

back1.Position = UDim2.new(0,0,0,0)
back1.Size = UDim2.new(1,0,1,0)
back1.BackgroundTransparency = 1
back1.Parent = icon
back1.Image = "http://www.roblox.com/asset/?id=16446446084"
back1.Draggable = true 
back1.Active = true 
back1.Selectable = true
back1.ZIndex = 0

local back2 = Instance.new("ImageButton")

back2.Position = UDim2.new(0,0,0,0)
back2.Size = UDim2.new(1,0,1,0)
back2.BackgroundTransparency = 1
back2.Parent = icon
back2.Image = "http://www.roblox.com/asset/?id=16446446084"
back2.Draggable = true 
back2.Active = true 
back2.Selectable = true
back2.ZIndex = 0

local cmdsF = Instance.new("Frame")

cmdsF.Position = UDim2.new(0.30,0,0.2,0)
cmdsF.BackgroundColor3 = Color3.fromRGB(0,0,0)
cmdsF.BorderColor3 = Data.Color
cmdsF.Size = UDim2.new(0.35,0,0.6,0) -- UDim2.new(1,0,0.07,0)
cmdsF.BackgroundTransparency = 0
cmdsF.Parent = G
cmdsF.ZIndex = 3
cmdsF.Draggable = true 
cmdsF.Active = true 
cmdsF.Selectable = true
cmdsF.Visible = false

local cmdsSearch = Instance.new("TextBox")

cmdsSearch.Position = UDim2.new(0.05,0,0.04,0)
cmdsSearch.BackgroundColor3 = Color3.fromRGB(0,0,0)
cmdsSearch.BorderColor3 = Data.Color
cmdsSearch.Size = UDim2.new(0.90,0,0.07,0) -- UDim2.new(1,0,0.07,0)
cmdsSearch.BackgroundTransparency = 0
cmdsSearch.Parent = cmdsF
cmdsSearch.TextColor3 = Data.Color
cmdsSearch.ZIndex = 3.3
cmdsSearch.TextScaled = true 
cmdsSearch.TextSize = 35
cmdsSearch.Font = Data.Font
cmdsSearch.Text = ""

local Scroll = Instance.new("ScrollingFrame")

Scroll.Position = UDim2.new(0.05,0,0.11,0)
Scroll.BackgroundColor3 = Color3.fromRGB(10,10,10)
Scroll.BorderColor3 = Data.Color
Scroll.Size = UDim2.new(0.90,0,1 -0.11,0) -- UDim2.new(1,0,0.07,0)
Scroll.BackgroundTransparency = 0
Scroll.Parent = cmdsF
Scroll.ZIndex = 3.3
Scroll.ScrollBarImageColor3 = Data.Color
Scroll.ScrollBarImageTransparency = 1
Scroll.CanvasSize = UDim2.new(0,0,9000,0)



function loadcmds(string) 
    posnum = 0.04
    for i,v in pairs(Scroll:GetChildren()) do
        v:Destroy()
    end
    for i,v in pairs(command) do
        if typeof(v) == "table" then
    	if v.commandM:lower():match(string) or v.commandO:lower():match(string) then
         	
        	local frame = Instance.new("TextLabel")

			frame.Position = UDim2.new(0,0,posnum,0)
			frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
			frame.BorderColor3 = Data.Color
			frame.Size = UDim2.new(1,0,0.07,0) -- UDim2.new(1,0,0.07,0)
			frame.BackgroundTransparency = 0
			frame.Parent = Scroll
			frame.TextColor3 = Data.Color
			frame.ZIndex = 3.3
			frame.TextScaled = true 
			frame.TextSize = 35
			frame.Font = Data.Font
      
      		local TextTststststt = ""
      		if v.commandO ~= "" then
      			TextTststststt = "/"..v.commandO
          	end
      		TextF = v.commandM..TextTststststt.." "..v.Arg
   			
			frame.Text = TextF
   
   			posnum = posnum +0.07
   
    	end
 		end
	end
end

loadcmds("")

Round(cmdsF, 0.02)

Round(Scroll, 0.02)

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

command.add("cmds", "commands", "", function(splitt)
   	 cmdsF.Visible = true
     loadcmds("") 
end)

command.add("say", "chat", "<string>", function(splitt)
   	msg = ""
	for i,v in pairs(splitt) do
    	if i > 1 then
        	msg = msg..v.." "
       	end
    end
	chat(msg)
end)

command.add("walkspeed", "ws", "<number>", function(splitt)
    lp.character.Humanoid.WalkSpeed = tonumber(splitt[2])
end)

command.add("jumppower", "jp", "<number>", function(splitt)
    lp.character.Humanoid.JumpPower = tonumber(splitt[2])
end)

command.add("fly", "", "", function(splitt)
    Oldgravity = game.Workspace.Gravity
    game.Workspace.Gravity = 0
    fly = true
end)

command.add("unfly", "", "", function(splitt)
    lp.character.Humanoid.PlatformStand = false
    game.Workspace.Gravity = Oldgravity
    fly = false
end)

command.add("usetools", "uset", "<repeat cooldown> <repeat>", function(splitt)
	if splitt[2] ~= nil and splitt[3] ~= nil then
    	for i=1,tonumber(splitt[3]) do
        	for i,v in pairs(lp.Backpack:GetChildren()) do
             	if v:IsA("Tool") then
            		lp.character.Humanoid:EquipTool(v)
             		v:Activate()
              	end
            end
        	lp.character.Humanoid.UnequipTools()
        	wait(splitt[2])
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

command.add("equiptools", "", "", function(splitt)
    for i,v in pairs(lp.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = lp.character
        end
    end
end)

command.add("droptools", "", "", function(splitt)
    for i,v in pairs(lp.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = game.Workspace
        end
    end
end)

command.add("gravity", "", "<gravity>", function(splitt)
    game.Workspace.Gravity = splitt[2]
end)

command.add("teleportwalk", "tpwalk", "<speed>", function(splitt)
    tpwalk = true
    if splitt[2] then
    	tpspeed = splitt[2]
    else
    	tpspeed = 1
    end
end)

command.add("unteleportwalk", "untpwalk", "", function(splitt)
    tpwalk = false
end)

local view = false
command.add("view", "", "<player>", function(splitt)
    if splitt[2] then
        view = true
        viewplr = findplr(splitt[2])
    
		while wait() and view do
    		game.Workspace.CurrentCamera.CameraSubject = viewplr:FindFirstChildWhichIsA("Humanoid")
    	end
	end
end)

command.add("unview", "", "<player>", function(splitt)
    view = false
end)

command.add("esp", "chams", "", function(splitt)
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


hiddenfling = false
command.add("fling", "walkfling", "(FROM NA)", function(splitt)
    hiddenfling = true
    local function fling()
			 local hrp, c, vel, movel = nil, nil, nil, 0.1
			 while true do
				 game:GetService("RunService").Heartbeat:Wait()
				 if hiddenfling then
					 local lp = game.Players.LocalPlayer
					 while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
						 game:GetService("RunService").Heartbeat:Wait()
						 c = lp.Character
						 hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
					 end
					 if hiddenfling then
						 vel = hrp.Velocity
						 hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
						 game:GetService("RunService").RenderStepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel
						 end
						 game:GetService("RunService").Stepped:Wait()
						 if c and c.Parent and hrp and hrp.Parent then
							 hrp.Velocity = vel + Vector3.new(0, movel, 0)
							 movel = movel * -1
						 end
					 end
				 end
			 end
		 end
		 
		 fling()
end)

command.add("unfling", "unwalkfling", "(FROM NA)", function(splitt)
    hiddenfling = false
end)

command.add("to", "goto", "<player>", function(splitt)
    lp.character.HumanoidRootPart.CFrame = findplr(splitt[2]).character.HumanoidRootPart.CFrame
end)

command.add("mobileaimbot", "maimbot", "<checkteam?> <fov>", function(splitt)
    -- Credit Dollynho --
    
    setfov = 40
    if splitt[3] ~= nil then
    	setfov = tonumber(splitt[3])
    else
    	setfov = 40
    end

local fov = setfov 
local maxDistance = 100
local maxTransparency = 0.1
if splitt[2] == "true" then
local teamCheck = true
else
local teamCheck = false
end

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local maxDistance = fov
    local transparency = (1 - (distance / maxDistance)) * maxTransparency
    return transparency
end

local function isPlayerAlive(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.Health > 0
    end
    return false
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for i = 1, #Players:GetPlayers() do
        local player = Players:GetPlayers()[i]
        if player and player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) then
            if isPlayerAlive(player) then
                local part = player.Character and player.Character:FindFirstChild(trg_part)
                if part then
                    local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                    local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                    if distance < last and isVisible and distance < fov and distance < maxDistance then
                        last = distance
                        nearest = player
                    end
                end
            end
        end
    end

    return nearest
end

local function toggleTeamCheck()
    teamCheck = not teamCheck
end

toggleTeamCheck()
toggleTeamCheck()

RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
    
    if closest then
        local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
    
    wait(0.03)
end)
information("-- Credit Dollynho --")
end)

local Noclipping = nil
command.add("noclip", "nc", "(IY)", function(splitt)
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and lp.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game.RunService.Stepped:Connect(NoclipLoop)
end)

command.add("clip", "", "(IY)", function(splitt)
    if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end)

spam = false
spamstr = ""
command.add("spam", "loopchat", "<string>", function(splitt)
   	msg = ""
	for i,v in pairs(splitt) do
    	if i > 1 then
        	msg = msg..v.." "
       	end
    end

    spam = true
	spamstr = msg
end)

command.add("unspam", "unloopchat", "", function(splitt)
    spam = false
end)

onoff = false
icon.MouseButton1Click:Connect(function()
    if onoff then
    	onoff = false
     	bar:CaptureFocus()
     	
      	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0,0.5,0)})
    	PlayThis:Play()
       
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(1,0,0.07,0)})
    	PlayThis:Play()
       
    else
   		onoff = true  
             
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0.5,0.5,0)})
    	PlayThis:Play()
       
       	local TweenInf0 = TweenInfo.new(0.5) 
    	local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(0,0,0.07,0)})
    	PlayThis:Play()
       
    end
end)

bar.FocusLost:Connect(function()
    local TweenInf0 = TweenInfo.new(0.5) 
    local PlayThis = TweenService:Create(bar, TweenInf0, {Position = UDim2.new(0,0.5,0.5,0)})
    PlayThis:Play()
       
    local TweenInf0 = TweenInfo.new(0.5) 
    local PlayThis = TweenService:Create(bar, TweenInf0, {Size = UDim2.new(0,0,0.07,0)})
    PlayThis:Play()
    command.run(string.split(bar.Text, " "))
end)

cmdsSearch.FocusLost:Connect(function()
    loadcmds(cmdsSearch.Text)
end)

TPWalking = game:GetService("RunService").Heartbeat:Wait()
game:GetService("RunService").Stepped:Connect(function()
    back2.Rotation = back2.Rotation +2.5
    back1.Rotation = back1.Rotation -2.5
    if lp.character:FindFirstChild("HumanoidRootPart") ~= nil and tpwalk then
        game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * tpspeed * TPWalking * 10)
  	end
	if lp.character:FindFirstChild("HumanoidRootPart") ~= nil and fly then
    	lp.character.Humanoid.PlatformStand = true
     	pos = lp.character.HumanoidRootPart.Position
     	x, y, z = game.Workspace.CurrentCamera.CFrame:ToEulerAnglesXYZ()
      	rot = Vector3.new(x,y,z)
     	cf = CFrame.new(pos, rot)
  		lp.character.HumanoidRootPart.CFrame = cf
    end
end)

while wait(1) do
    if spam then
    	chat(spamstr)
    end
end
