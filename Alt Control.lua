local TweenService = game:GetService("TweenService")
execT = "NULL"
CrP = 75 + 245
ID = game.PlaceId
CanDo = true
PrefixGu = "!"
CanExec = true

local cmds = {
    "say",
    "bring",
    "to",
    "cmds",
    "walkspeed",
    "jumppower",
    "jump",
    "kill",
    "follow",
    "unfollow",
    "addadmin", -- 11
    "stop",
    "glitchy", -- 13
    "rocket",
    "gravity", -- 15
    "runcode",
    "sit",
    "gaimeter", -- 18
    "information",
    nil,
    "walkto", -- 21
    "fling", -- 22
    "respawn", -- 23
    "copychat", -- 24
    "uncopychat",
    "math", -- 26
    "commandinfo"
}

-- game.CoreGui["Project Zeouron Main"]:Destroy()

local soso = Instance.new("Frame")
soso.Position = UDim2.new(0,67,0,0)

local Data = {
    Font = Enum.Font.Arcade,
    Color = Color3.fromRGB(130, 35, 175),
    DarkC = Color3.fromRGB(107 /2, 50 /2, 124 /2),
    BlackC = Color3.fromRGB(30,30,30)
}

local Credits = {
    "Owner/Scripter: l_l6658"
}

local CT = Instance.new("Frame")

CT.Size = UDim2.new(0,0,0,0)
CT.Parent = Main
CT.Visible = false

local G = Instance.new("ScreenGui")

G.Parent = game.CoreGui
G.Name = "Project Zeouron Main"
G.ResetOnSpawn = false
G.Enabled = true

local Top = Instance.new("Frame")

Top.Position = UDim2.new(0,331,0,172)
Top.Size = UDim2.new(0,440 + 125,0,37)
Top.Parent = G
Top.BackgroundColor3 = Data.Color
Top.Draggable = false 
Top.Active = true 
Top.Selectable = true
Top.ZIndex = 6

local TopA = Instance.new("TextButton")

TopA.Position = UDim2.new(0,10,0,5)
TopA.Size = UDim2.new(0,440 + 105,0,27)
TopA.Parent = Top
TopA.BackgroundColor3 = Color3.fromRGB(0,0,0)
TopA.ZIndex = 6.1
TopA.Text = "Zeouron-Alt Control"
TopA.Font = Data.Font
TopA.Visible = true
TopA.TextColor3 = Data.Color
TopA.TextScaled = true

local TopO = Instance.new("TextButton")

TopO.Position = UDim2.new(0,10,0,5)
TopO.Size = UDim2.new(0,440 + 105,0,27)
TopO.Parent = Top
TopO.BackgroundColor3 = Color3.fromRGB(0,0,0)
TopO.ZIndex = 6.1
TopO.Text = "Zeouron-Alt Control"
TopO.Font = Data.Font
TopO.Visible = false
TopO.TextColor3 = Data.Color
TopO.TextScaled = true

local MainO = Instance.new("ScrollingFrame")


MainO.Size = UDim2.new(0,390 +125,0,300)
MainO.Position = UDim2.new(0,25,0,5)
MainO.Parent = Top
MainO.BackgroundColor3 = Data.Color
MainO.ZIndex = 1.8
MainO.BackgroundTransparency = 1
MainO.ScrollBarImageColor3 = Data.Color
MainO.ScrollBarImageTransparency = 0
MainO.CanvasSize = UDim2.new(0,0,0,0)

local MainS = Instance.new("Frame")

MainS.Size = UDim2.new(0,390 +125,0,300)
MainS.Position = UDim2.new(0,0,0,0)
MainS.Parent = MainO
MainS.BackgroundColor3 = Data.Color
MainS.ZIndex = 1.9
MainS.BackgroundTransparency = 1

local Main = Instance.new("ScrollingFrame")

Main.Size = UDim2.new(0,390 +125,0,300)
Main.Position = UDim2.new(0,0,0,0)
Main.Parent = MainS
Main.BackgroundColor3 = Data.Color
Main.ZIndex = 2
Main.ScrollBarImageColor3 = Data.Color
Main.ScrollBarImageTransparency = 0
Main.CanvasSize = UDim2.new(0,0,0,0)

local line = Instance.new("Frame")

line.Size = UDim2.new(0,390 +100,0,275)
line.Position = UDim2.new(0,12,0,12)
line.Parent = Main
line.BackgroundColor3 = Data.BlackC
line.ZIndex = 2.01

local CrT = Instance.new("Frame")
CrT.Size = UDim2.new(0,0,0,0)
CrT.Parent = Main
CrT.Visible = true

local UDpos = soso.Position.Y.Offset +CrP -30
sCrP = UDim2.new(0,60,0,UDpos)

local CrTe = Instance.new("TextLabel")

CrTe.Size = UDim2.new(0,485 /1.15,0,30)
CrTe.Position = sCrP
CrTe.Parent = CrT
CrTe.BackgroundTransparency = 1
CrTe.ZIndex = 5
CrTe.Font = Data.Font
CrTe.Text = "Credits/Devs"
CrTe.Name = "D"
CrTe.TextColor3 = Data.Color
CrTe.TextScaled = true
CrTe.TextTransparency = 0
CrTe.BackgroundTransparency = 1

for i,v in pairs(Credits) do
    local UDpos = soso.Position.Y.Offset + CrP
    sCrP = UDim2.new(0,50,0,UDpos)
    
    local CrFrame = Instance.new("TextButton")

    CrFrame.BackgroundColor3 = Data.DarkC
    CrFrame.Size = UDim2.new(0,485 /1.3,0,55)
    CrFrame.Position = sCrP
    CrFrame.Parent = CrT
    CrFrame.BackgroundTransparency = 0
    CrFrame.ZIndex = 5
    CrFrame.Font = Data.Font
    CrFrame.Text = v
    CrFrame.TextColor3 = Data.Color
    CrFrame.TextScaled = true
    CrFrame.TextTransparency = 0
    CrFrame.BackgroundTransparency = 1
    
    local CrFrameRound = Instance.new("UICorner")
    CrFrameRound.Parent = CrFrame
    CrFrameRound.CornerRadius = UDim.new(0.08,0.08)
    
    CrP = CrP + 55
end

SGP = CrP + 85

local UDpos = soso.Position.Y.Offset +SGP -30
sGP = UDim2.new(0,37,0,UDpos)

local Crtee = Instance.new("TextLabel")

Crtee.Size = UDim2.new(0,485 /1.15,0,30)
Crtee.Position = sGP
Crtee.Parent = CrT
Crtee.BackgroundTransparency = 1
Crtee.ZIndex = 5
Crtee.Font = Data.Font
Crtee.Text = "Commands"
Crtee.Name = "D"
Crtee.TextColor3 = Data.Color
Crtee.TextScaled = true
Crtee.TextTransparency = 0
Crtee.BackgroundTransparency = 1

for i,v in pairs(cmds) do
    local UDpos = soso.Position.Y.Offset + SGP
    sCrP = UDim2.new(0,50,0,UDpos)
    
    local CrFrame = Instance.new("TextButton")

    CrFrame.BackgroundColor3 = Data.DarkC
    CrFrame.Size = UDim2.new(0,485 /1.3,0,40)
    CrFrame.Position = sCrP
    CrFrame.Parent = CrT
    CrFrame.BackgroundTransparency = 0
    CrFrame.ZIndex = 5
    CrFrame.Font = Data.Font
    CrFrame.Text = v
    CrFrame.TextColor3 = Data.Color
    CrFrame.TextScaled = true
    CrFrame.TextTransparency = 0
    CrFrame.BackgroundTransparency = 1
    
    local CrFrameRound = Instance.new("UICorner")
    CrFrameRound.Parent = CrFrame
    CrFrameRound.CornerRadius = UDim.new(0.08,0.08)
    
    SGP = SGP + 40
end

local ProjectZeouron = Instance.new("ImageButton")

ProjectZeouron.Size = UDim2.new(0,152 *1.7,0,152 *1.7)
ProjectZeouron.Position = UDim2.new(0,390 /1.7,0,33)
ProjectZeouron.Parent = Main
ProjectZeouron.BackgroundTransparency = 1
ProjectZeouron.ZIndex = 5
ProjectZeouron.Image = "http://www.roblox.com/asset/?id=16096831367"
ProjectZeouron.ImageTransparency = 1

local Prefixo = Instance.new("TextBox")

Prefixo.BackgroundColor3 = Data.DarkC
Prefixo.Size = UDim2.new(0,165,0,50)
Prefixo.Position = UDim2.new(0,53 -12.5,0,85)
Prefixo.Parent = Main
Prefixo.BackgroundTransparency = 0
Prefixo.ZIndex = 5
Prefixo.Font = Data.Font
Prefixo.Text = "!"
Prefixo.TextColor3 = Data.Color
Prefixo.TextScaled = true
Prefixo.PlaceholderText = "Prefix"

local PrefixF = Instance.new("Frame")

PrefixF.BackgroundColor3 = Data.Color
PrefixF.Size = UDim2.new(0,170,0,55)
PrefixF.Position = UDim2.new(0,53 -12.5 -2.5,0,85 -2.5)
PrefixF.Parent = Main
PrefixF.BackgroundTransparency = 0
PrefixF.ZIndex = 4.9

local PrefixRound = Instance.new("UICorner")
PrefixRound.Parent = Prefix
PrefixRound.CornerRadius = UDim.new(0.08,0.08)

local PrefixFRound = Instance.new("UICorner")
PrefixFRound.Parent = PrefixF
PrefixFRound.CornerRadius = UDim.new(0.08,0.08)

local NameSo = Instance.new("TextBox")

NameSo.BackgroundColor3 = Data.DarkC
NameSo.Size = UDim2.new(0,165,0,50)
NameSo.Position = UDim2.new(0,53 -12.5,0,85 *2)
NameSo.Parent = Main
NameSo.BackgroundTransparency = 0
NameSo.ZIndex = 5
NameSo.Font = Data.Font
NameSo.Text = "Zeouron"
NameSo.TextColor3 = Data.Color
NameSo.TextScaled = true
NameSo.PlaceholderText = "Name"

local NameSF = Instance.new("Frame")

NameSF.BackgroundColor3 = Data.Color
NameSF.Size = UDim2.new(0,170,0,55)
NameSF.Position = UDim2.new(0,53 -12.5 -2.5,0,85 *2 -2.5)
NameSF.Parent = Main
NameSF.BackgroundTransparency = 0
NameSF.ZIndex = 4.9

local PrefixRound = Instance.new("UICorner")
PrefixRound.Parent = Prefix
PrefixRound.CornerRadius = UDim.new(0.08,0.08)

local PrefixFRound = Instance.new("UICorner")
PrefixFRound.Parent = PrefixF
PrefixFRound.CornerRadius = UDim.new(0.08,0.08)

local C = Instance.new("TextButton")

C.BackgroundColor3 = Data.DarkC
C.Size = UDim2.new(0,40,0,40)
C.Position = UDim2.new(0,97 *4.7,0,45)
C.Parent = MainS
C.BackgroundTransparency = 0
C.ZIndex = 5
C.Font = Data.Font
C.Text = "M"
C.TextColor3 = Data.Color
C.TextScaled = true
C.TextTransparency = 1
C.BackgroundTransparency = 1
C.Visible = true

local Co = Instance.new("TextButton")

Co.BackgroundColor3 = Data.DarkC
Co.Size = C.Size
Co.Position = C.Position
Co.Parent = MainS
Co.BackgroundTransparency = 0
Co.ZIndex = 5
Co.Font = Data.Font
Co.Text = "B"
Co.TextColor3 = Data.Color
Co.TextScaled = true
Co.TextTransparency = 1
Co.BackgroundTransparency = 1
Co.Visible = false

local CRound = Instance.new("UICorner")
CRound.Parent = C
CRound.CornerRadius = UDim.new(0.11,0.11)

local CoRound = Instance.new("UICorner")
CoRound.Parent = Co
CoRound.CornerRadius = UDim.new(0.11,0.11)

local MainA = Instance.new("Frame")

MainA.Size = UDim2.new(0,390 +105,0,285)
MainA.Position = UDim2.new(0,35,0,12.5)
MainA.Parent = Top
MainA.BackgroundColor3 = Color3.fromRGB(0,0,0)
MainA.ZIndex = 3.4

local TopRound = Instance.new("UICorner")
TopRound.Parent = Top
TopRound.CornerRadius = UDim.new(0.21,0.21)

local MainRound = Instance.new("UICorner")
MainRound.Parent = Main
MainRound.CornerRadius = UDim.new(0.04,0.04)

C.MouseButton1Click:Connect(function()
    if CanDo then
    	C.Visible = false
    	Co.Visible = true
    
    	local UDpos = soso.Position.Y.Offset + SGP
    	sCrP = UDim2.new(0,0,0,UDpos)
    	Main.CanvasSize = sCrP
     
        local UDpos = soso.Position.Y.Offset + SGP
    	sCrP = UDim2.new(0,0,0,UDpos)
    	Main.CanvasSize = sCrP
    end
end)

Co.MouseButton1Click:Connect(function()
    if CanDo then
    	Co.Visible = false
    	C.Visible = true
    
    	local TweenInf0 = TweenInfo.new(2)
    	local PlayThisA = TweenService:Create(Main, TweenInf0, {CanvasSize = UDim2.new(0,0,0,0)})
    	PlayThisA:Play()
        CanDo = false
        wait(2.1)
        CanDo = true
    end
end)


ProjectZeouron.MouseButton1Click:Connect(function()
    if CanExec then
    CanExec = false
    local TweenInf0 = TweenInfo.new(8.33, Enum.EasingStyle.Exponential)
    local PlayThisA = TweenService:Create(ProjectZeouron, TweenInf0, {Rotation = 90 *6})
    PlayThisA:Play()
    wait(9)
    for i,v in pairs(G:GetDescendants()) do
        if not v:IsA("UICorner") then
       	    local TweenInf0 = TweenInfo.new(math.random(2,4))
        	local PlayThisA = TweenService:Create(v, TweenInf0, {Size = UDim2.new(0,0,0,0)})
    		PlayThisA:Play()
        end
    end
    
    
    
    
    
    
    
    
    
local lp = game.Players.LocalPlayer
local plr = lp
local Players = game.Players

local replace = {"Q~Q̷̱̃","W~̶͚͘W̵̲̅", "E~̵͕̇Ė̵͕","R~̴̪̑Ř̴͜","T~̷̱̂T̶̩̈","Z~̴͓̿Z̶̨̈́","U~̶͍́U̴̬̚","I~̵̢͆I̵̱͌","O~̴͈͊Ó̴̝","P~P̸̠̆","A~̶̓ͅÄ̵̩́","S~̶̢̄S̷̝͑","D~̸̜̇Ḓ̵̈́","F~̸̱͆F̸̪̂","G~̵͉̕Ğ̷̦","H~̶̙̈́Ĥ̵̩","J~̴̲̏J̸̱̀","K~̶̈́ͅǨ̵̯","L~̶̻̄L̸͙͘","Y~̸͎̍Y̴̦̋","X~̷̪͘X̸͓͋","C~̶̘͝C̷̢͝","V~̸̘̇V̸͇̓","B~̷̟͒B̵̟̃","N~̵͍̔N̸̳͒","M~̷̘̂M̴͔͆"
      }
  
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
    if v.Name == "Zu" then
        v.Enabled = false
    end
end


local Z = Instance.new("ScreenGui")
Z.Enabled = true
Z.Name = "Zu"
Z.Parent = game.ReplicatedStorage

function chatN(varr) 
    wait(0.01)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varr, "All")
end

if Prefixo.Text == "" and Prefixo.Text == "" then
    Prefixo.Text = "!"
end

Prefix = Prefixo.Text
NameOf = NameSo.Text
NameActual = "["..NameOf.."]: "

function chat(varr) 
    wait(0.01)
     game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
end

chat("Loaded Zeouron Alt control, Say \""..Prefix.."Cmds\" for commands!, type \""..Prefix.."Information\" for more info")

-- Custom ui,
-- Settings,
-- Changelog

local Admins = {
    lp.Name
}
function HandleCommand(command, string1, string2, string3, string4, Player) -- Command handler
    if command == Prefix..cmds[19] then -- information
        if Player == lp then
            chat("This is an alt control script, it allows other people to control you, people have to be admins to do")
        else
        	chat("mm")
        end
    end
    isadmin = false
    for i,v in pairs(Admins) do
        if v == Player.Name or v == lp then
            isadmin = true
        end
    end
    	if isadmin then
            if command == Prefix..cmds[4] then -- cmds
                chat("say <string>, bring, to <user>, walkspeed <speed>, jumppower <power>, jump, kill, follow <user>, unfollow, glitchy <string>, Rocket, Gravity <num>, runcode <code>, sit, gaimeter, walkto")
                chat("fling, respawn, copychat, uncopychat, math, commandinfo")
            end
            
            if command == Prefix..cmds[1] then -- say
                chatN(string1)
            end
        
        	if command == Prefix..cmds[22] then -- fling
                if string1 ~= nil then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                            Target = v -- localplayer is a professional script maker, and totally didnt skid this :D
							local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
							Thrust.Force = Vector3.new(9999,9999,9999)
							Thrust.Name = "YeetForce"
							repeat
								lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
								Thrust.Location = Target.Character.HumanoidRootPart.Position
								game:FindService("RunService").Heartbeat:wait()
							until Target.HumanoidRootPart.Velocity.y > 100 or lp.character.Humanoid.Health == 0
                        end
                    end
                else
                    local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
					Thrust.Force = Vector3.new(9999,9999,9999)
					Thrust.Name = "YeetForce"
     				Thrust.Location = lp.Character.HumanoidRootPart.Position
         			wait(1.5)
            		Thrust:Destroy()
                end
            end
        
        	if command == Prefix..cmds[21] then -- walkto
            	if string1 ~= nil then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                            lp.character.Humanoid.WalkToPoint = v.character.HumanoidRootPart.Position
                        end
                    end
                else
                    lp.character.Humanoid.WalkToPoint = Player.character.HumanoidRootPart.Position
                end
            end
        
        	if command == Prefix..cmds[23] then -- respawn
                lp.character.Humanoid.Health = 0
                oldpos = lp.character.HumanoidRootPart.Position
                res = true
            end
        
            if command == Prefix..cmds[26] then -- math
                if string2:lower() == "division" or string2:lower() == "multiplication" or string2:lower() == "addition" or string2:lower() == "subtraction" then
                	if string2:lower() == "addition" then
                		local cal = string1 +string3
                        chat(cal)
                	end
                	if string2:lower() == "subtraction" then
                		local cal = string1 -string3
                        chat(cal)
                	end
                	if string2:lower() == "multiplication" then
                		local cal = string1 *string3
                        chat(cal)
                	end
                    if string2:lower() == "division" then
                        local cal = string1 /string3
                        chat(cal)
                    end
                else
                	chat("Please use addition, subtraction, multiplication or division")
                end
            end
        
        	if command == Prefix..cmds[24] then -- copychat
                if string1 ~= nil then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                            copychatuser = v.Name
                        end
                    end
                else
                    copychatuser = "all"
                end
            end
        
            if command == Prefix..cmds[25] then -- uncopychat
                copychatuser = ""
            end
        
            if command == Prefix..cmds[18] then
                s = nil
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                        s = v
                    end
                end
                if s then
                    local num = 100 /s.Name:len() /7
                    
                    chat(num)
                end
            end
        
            if command == Prefix..cmds[14] then
               local rocketcount = 0
               local rocketing = true
               local previous = game.Workspace.Gravity
               timer = 5
            
                chat("Launching in...")
                wait(4)
                chat("1")
                wait(2)
                chat("2")
                wait(2)
                chat("3")
                wait(2)
                chat("4")
                wait(2)
                chat("5")
                
                game.Workspace.Gravity = 0
        
        while rocketing do
            rocketcount = rocketcount +1
            if rocketcount ~= 100 then
                local random = math.random(2,5)
                local already = plr.character.HumanoidRootPart.CFrame
                plr.character.HumanoidRootPart.CFrame = CFrame.new(already.x, already.y +random, already.z)
                else
                rocketing = false
                plr.character.Humanoid.Health = 0
                game.Workspace.Gravity = previous
                end
            wait(0.1)
            end 
            end
        
            if command == Prefix..cmds[13] then -- glitchy
                msg = string1
                local msg = msg:upper()
                split = string.split(msg,"")
                msg = ""
                v = string1
        
                for i,v in pairs(split) do
                    for i,b in pairs(replace) do
                        local word = string.split(b,"~")
                        if v == word[1] then
                            v = word[2]
                        end
                    end
                    msg = msg..v
                end
                chatN(msg)
            end
           
            if command == Prefix..cmds[15] then -- Gravity
                game.Workspace.Gravity = string1
            end
        
            if command == Prefix..cmds[16] then -- runcode
                chat("Ran code: "..string1)
                loadstring(string1)()
            end
        
            if command == Prefix..cmds[17] then -- Sit
                lp.character.Humanoid.Sit = true
            end
           
            if command == Prefix..cmds[2] then -- Bring
                lp.character.HumanoidRootPart.CFrame = Player.character.HumanoidRootPart.CFrame
            end
            
            if command == Prefix..cmds[3] then -- To
                if string1 ~= nil then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                            lp.character.HumanoidRootPart.CFrame = v.character.HumanoidRootPart.CFrame
                        end
                    end
                else
                    lp.character.HumanoidRootPart.CFrame = Player.character.HumanoidRootPart.CFrame
                end
            end

                if command == Prefix..cmds[5] then -- WalkSpeed
                    lp.character.Humanoid.WalkSpeed = string1
                end

                if command == Prefix..cmds[6] then -- JumpPower
                    if string1 ~= nil then
                        lp.character.Humanoid.JumpPower = string1
                    end
                end

                if command == Prefix..cmds[7] then -- Jump
                    lp.character.Humanoid.Jump = true
                    wait()
                    lp.character.Humanoid.Jump = false
                end

                if command == Prefix..cmds[8] then -- Kill
                    lp.character.Humanoid.Health = 0
                end

                if command == Prefix..cmds[9] then -- Follow
                    if string1 ~= nil then
                        for i,v in pairs(Players:GetPlayers()) do
                            if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                                followuser = v
                                chat("Now following "..v.Name)
                            end
                        end
                        if followuser ~= nil then
                            follow = true
                            while wait() and follow do
                                lp.character.Humanoid.WalkToPoint = followuser.character.HumanoidRootPart.Position
                            end
                        end
                    else
                        followuser = Player
                        chat("Now following "..followuser.Name)
                        if followuser ~= nil then
                            follow = true
                            while wait() and follow do
                                lp.character.Humanoid.WalkToPoint = followuser.character.HumanoidRootPart.Position
                            end
                        end
                    end
                end

                if command == Prefix..cmds[10] then -- Unfollow
                    follow = false
                end
            
                if command == Prefix..cmds[12] then -- Stop
                    Z.Enabled = false
                    chat("Zeuoron has stopped")
                end

                if command == Prefix..cmds[11] then -- AddAdmin
                    if string1 ~= nil then
                        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
                            if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                                table.insert(Admins, v.Name)
                                chat("Added "..v.DisplayName.." To admins!")
                            end
                        end
                    end
                end
            -- End
        end
    end




-- Ignore this shit!!

for i,v in pairs(game.Players:GetPlayers()) do
    v.Chatted:Connect(function(msg)
        if Z.Enabled then
        	local Parts = string.split(msg, "/")
        	commandPart = Parts[1]:lower()
         	
          	local s = string.split(commandPart, "")
            commandPart = ""
            for i,v in pairs(s) do
                if v == " " then
                    v = ""
                end
                commandPart = commandPart..v
            end

        	StringPart = Parts[2]
        	StringPart2 = Parts[3] 
            StringPart3 = Parts[4] 
            StringPart4 = Parts[5] 
        	HandleCommand(commandPart, StringPart, StringPart2, StringPart3, StringPart4, v)
            
            if v.Name == copychatuser or copychatuser == "all" then
                if v.Name ~= lp.Name then
        			chatN("["..v.DisplayName.."]: "..msg)
                end
            end
        end
    end)
end

game.Players.PlayerAdded:Connect(function(added)
    added.Chatted:Connect(function(msg)
        if Z.Enabled then
        	local Parts = string.split(msg, "/")
        	commandPart = Parts[1]:lower()

        	StringPart = Parts[2]
        	StringPart2 = Parts[3]
        	StringPart3 = Parts[4] 
            StringPart4 = Parts[5] 
        	HandleCommand(commandPart, StringPart, StringPart2, StringPart3, StringPart4, v)
         
            if v.Name == copychatuser or copychatuser == "all" then
                if v.Name ~= lp.Name then
        			chatN("["..v.DisplayName.."]: "..msg)
                end
            end
        end
    end)
end)

lp.CharacterAdded:Connect(function(s)
    wait()
	if res then
    	lp.character:MoveTo(oldpos)
        res = false
    end
end)
    
    
    
    
    
    
    
    
    
    
    wait(4.5)
    G:Destroy()
    end
end)


TopA.MouseButton1Click:Connect(function()
    Top.Draggable = true 
    
    TopA.Visible = false
    TopO.Visible = true
    local TweenService = game:GetService("TweenService")
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,390 +125,0,0)})
    
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThisA = TweenService:Create(MainA, TweenInf0, {Size = UDim2.new(0,390 +105,0,0)})
    
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThisO = TweenService:Create(MainO, TweenInf0, {Size = UDim2.new(0,390 +105,0,0)})
    
    PlayThis:Play()
    PlayThisA:Play()
    PlayThisO:Play()
end)

TopO.MouseButton1Click:Connect(function()
    Top.Draggable = false
    
    TopA.Visible = true
    TopO.Visible = false
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,390 +125,0,300)})
    
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThisA = TweenService:Create(MainA, TweenInf0, {Size = UDim2.new(0,390 +105,0,285)})
    
    local TweenInf0 = TweenInfo.new(1) 
    local PlayThisO = TweenService:Create(MainO, TweenInf0, {Size = UDim2.new(0,390 +105,0,285)})
    
    PlayThisO:Play()
    PlayThis:Play()
    PlayThisA:Play()
end)

local TweenInf0 = TweenInfo.new(2) 
local PlayThis = TweenService:Create(ProjectZeouron, TweenInf0, {ImageTransparency = 0})
PlayThis:Play()

wait(2.8)
n = 0

local TweenInf0 = TweenInfo.new(2) 
local PlayThis = TweenService:Create(C, TweenInf0, {BackgroundTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(2) 
local PlayThis = TweenService:Create(Co, TweenInf0, {BackgroundTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(2) 
local PlayThis = TweenService:Create(C, TweenInf0, {TextTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(2) 
local PlayThis = TweenService:Create(Co, TweenInf0, {TextTransparency = n})
PlayThis:Play() 