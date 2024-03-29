local TweenService = game:GetService("TweenService")
execT = "NULL"
CrP = 75 + 245
ID = game.PlaceId
CanDo = true
PrefixGu = "!"
CanExec = true
MsWait = true
MsWait = true
local FileSupport = isfile and isfolder and writefile and readfile
Alt = [[

]]

local default = {
    Name = "Command",
    Code = "chat(Player.Name..\" just used a command!\") "
}

command1data = default
command2data = default
command3data = default
command4data = default
command5data = default

if FileSupport then
    local json;
    local HttpService = game:GetService("HttpService");
    json = HttpService:JSONEncode(default);
    
	if not isfolder('ProjectZeouron') then
    	makefolder("ProjectZeouron")
    end
	if not isfile('ProjectZeouron/Custom1.txt') then
		writefile("ProjectZeouron/Custom1.txt",json)
 	end
	if not isfile('ProjectZeouron/Custom2.txt') then
		writefile("ProjectZeouron/Custom2.txt",json)
 	end
	if not isfile('ProjectZeouron/Custom3.txt') then
		writefile("ProjectZeouron/Custom3.txt",json)
 	end
	if not isfile('ProjectZeouron/Custom4.txt') then
		writefile("ProjectZeouron/Custom4.txt",json)
 	end
	if not isfile('ProjectZeouron/Custom5.txt') then
		writefile("ProjectZeouron/Custom5.txt",json)
 	end

	local fileContent = readfile("ProjectZeouron/Custom1.txt")
    command1data = HttpService:JSONDecode(fileContent)
    
    local fileContent = readfile("ProjectZeouron/Custom2.txt")
    command2data = HttpService:JSONDecode(fileContent)
    
    local fileContent = readfile("ProjectZeouron/Custom3.txt")
    command3data = HttpService:JSONDecode(fileContent)
    
    local fileContent = readfile("ProjectZeouron/Custom4.txt")
    command4data = HttpService:JSONDecode(fileContent)
    
    local fileContent = readfile("ProjectZeouron/Custom5.txt")
    command5data = HttpService:JSONDecode(fileContent)
end

--[[

==Todo List==

More Settings
Custom Commands
]]

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end


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
    "commandinfo",
    "admins", -- 28
    "a",
    "copymovements",
    "uncopymovements",
    "move", -- 32
    "setclipboard", --33
    "spin",
    "unspin"
}

local customCmds = {
    command1data.Name,
    command2data.Name,
    command3data.Name,
    command4data.Name,
    command5data.Name
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
    "Owner/Scripter: l_l6658",
    "Inspiration: Synth Control",
    "Helper: NexKacper"
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

Top.Position = UDim2.new(0,0,0,0)
Top.Size = UDim2.new(0,440 + 125,0,37)
Top.Parent = G
Top.BackgroundColor3 = Data.Color
Top.Draggable = true 
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

local MST = Instance.new("Frame")
MST.Size = UDim2.new(0,0,0,0)
MST.Parent = Main
MST.Visible = true

local ProjectZeouron = Instance.new("ImageButton")

ProjectZeouron.Size = UDim2.new(0,152 *1.7,0,152 *1.7)
ProjectZeouron.Position = UDim2.new(0,390 /1.7,0,33)
ProjectZeouron.Parent = MST
ProjectZeouron.BackgroundTransparency = 1
ProjectZeouron.ZIndex = 6
ProjectZeouron.Image = "http://www.roblox.com/asset/?id=16446450034"
ProjectZeouron.ImageTransparency = 0

local ProjectZeouronB = Instance.new("ImageLabel")

ProjectZeouronB.Size = UDim2.new(0,152 *1.7,0,152 *1.7)
ProjectZeouronB.Position = UDim2.new(0,0,0,0)
ProjectZeouronB.Parent = ProjectZeouron
ProjectZeouronB.BackgroundTransparency = 1
ProjectZeouronB.ZIndex = 5
ProjectZeouronB.Image = "http://www.roblox.com/asset/?id=16446446084"
ProjectZeouronB.ImageTransparency = 0

local ProjectZeouronBo = Instance.new("ImageLabel")

ProjectZeouronBo.Size = UDim2.new(0,152 *1.7,0,152 *1.7)
ProjectZeouronBo.Position = UDim2.new(0,0,0,0)
ProjectZeouronBo.Parent = ProjectZeouron
ProjectZeouronBo.BackgroundTransparency = 1
ProjectZeouronBo.ZIndex = 5.5
ProjectZeouronBo.Image = "http://www.roblox.com/asset/?id=16446446084"
ProjectZeouronBo.ImageTransparency = 0
ProjectZeouronBo.Rotation = 110

local Prefixo = Instance.new("TextBox")

Prefixo.BackgroundColor3 = Data.DarkC
Prefixo.Size = UDim2.new(0,165,0,50)
Prefixo.Position = UDim2.new(0,53 -12.5,0,85)
Prefixo.Parent = MST
Prefixo.BackgroundTransparency = 0
Prefixo.ZIndex = 5
Prefixo.Font = Data.Font
Prefixo.Text = "!"
Prefixo.TextColor3 = Data.Color
Prefixo.TextScaled = true
Prefixo.PlaceholderText = "Prefix"

local PrefixoF = Instance.new("Frame")

PrefixoF.BackgroundColor3 = Data.Color
PrefixoF.Size = UDim2.new(0,170,0,55)
PrefixoF.Position = UDim2.new(0,-2.5,0,-2.5)
PrefixoF.Parent = Prefixo
PrefixoF.BackgroundTransparency = 0
PrefixoF.ZIndex = 4.9

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
NameSo.Parent = MST
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
NameSF.Parent = MST
NameSF.BackgroundTransparency = 0
NameSF.ZIndex = 4.9

local PrefixRound = Instance.new("UICorner")
PrefixRound.Parent = Prefix
PrefixRound.CornerRadius = UDim.new(0.08,0.08)

local PrefixFRound = Instance.new("UICorner")
PrefixFRound.Parent = PrefixF
PrefixFRound.CornerRadius = UDim.new(0.08,0.08)

local MS = Instance.new("TextButton")

MS.BackgroundColor3 = Data.DarkC
MS.Size = UDim2.new(0,220,0,40)
MS.Position = UDim2.new(0,40.5,0,45)
MS.Parent = MST
MS.BackgroundTransparency = 0
MS.ZIndex = 5
MS.Font = Data.Font
MS.Text = "More Settings"
MS.TextColor3 = Data.Color
MS.TextScaled = true
MS.TextTransparency = 0
MS.BackgroundTransparency = 1
MS.Visible = true
MS.TextXAlignment = "Left"

local MSo = Instance.new("TextButton")

MSo.BackgroundColor3 = Data.DarkC
MSo.Size = UDim2.new(0,220,0,40)
MSo.Position = UDim2.new(0,40.5,0,45)
MSo.Parent = MST
MSo.BackgroundTransparency = 0
MSo.ZIndex = 5
MSo.Font = Data.Font
MSo.Text = "Back"
MSo.TextColor3 = Data.Color
MSo.TextScaled = true
MSo.TextTransparency = 0
MSo.BackgroundTransparency = 1
MSo.Visible = false
MSo.TextXAlignment = "Left"

local Load = Instance.new("TextButton")

Load.BackgroundColor3 = Data.DarkC
Load.Size = UDim2.new(0,165,0,50)
Load.Position = UDim2.new(0,40.5 *13.5,0,85) --UDim2.new(0,40.5 *6.5,0,85)
Load.Parent = Main
Load.BackgroundTransparency = 0
Load.ZIndex = 5
Load.Font = Data.Font
Load.Text = "True"
Load.TextColor3 = Data.Color
Load.TextScaled = true

local Loado = Instance.new("TextButton")

Loado.BackgroundColor3 = Data.DarkC
Loado.Size = UDim2.new(0,165,0,50)
Loado.Position = UDim2.new(0,40.5 *13.5,0,85)
Loado.Parent = Main
Loado.BackgroundTransparency = 0
Loado.ZIndex = 5
Loado.Font = Data.Font
Loado.Text = "False"
Loado.TextColor3 = Data.Color
Loado.TextScaled = true
Loado.Visible = false

local LoadOf = Instance.new("Frame")

LoadOf.BackgroundColor3 = Data.Color
LoadOf.Size = UDim2.new(0,170,0,55)
LoadOf.Position = UDim2.new(0,-2.5,0,-2.5)
LoadOf.Parent = Load
LoadOf.BackgroundTransparency = 0
LoadOf.ZIndex = 4.9

Round(LoadOf, 0.08)
Round(Loado, 0.08)
Round(Load, 0.08)

local PrefixoF = Instance.new("Frame")

PrefixoF.BackgroundColor3 = Data.Color
PrefixoF.Size = UDim2.new(0,170,0,55)
PrefixoF.Position = UDim2.new(0,-2.5,0,-2.5)
PrefixoF.Parent = Prefixo
PrefixoF.BackgroundTransparency = 0
PrefixoF.ZIndex = 4.9

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

local CC = Instance.new("TextButton")

CC.BackgroundColor3 = Data.DarkC
CC.Size = UDim2.new(0,40,0,40)
CC.Position = UDim2.new(0,405,0,45)
CC.Parent = MainS
CC.BackgroundTransparency = 0
CC.ZIndex = 5
CC.Font = Data.Font
CC.Text = "CC"
CC.TextColor3 = Data.Color
CC.TextScaled = true
CC.TextTransparency = 0
CC.BackgroundTransparency = 0
CC.Visible = true

local CCo = Instance.new("TextButton")

CCo.BackgroundColor3 = Data.DarkC
CCo.Size = CC.Size
CCo.Position = CC.Position
CCo.Parent = MainS
CCo.BackgroundTransparency = 0
CCo.ZIndex = 5
CCo.Font = Data.Font
CCo.Text = "B"
CCo.TextColor3 = Data.Color
CCo.TextScaled = true
CCo.TextTransparency = 0
CCo.BackgroundTransparency = 0
CCo.Visible = false

local CCT = Instance.new("Frame")
CCT.Size = UDim2.new(0,0,0,0)
CCT.Parent = Main
CCT.Visible = true
CCT.Position = UDim2.new(0,390 +125,0,0)

local CCT1 = Instance.new("Frame")
CCT1.Size = UDim2.new(0,0,0,0)
CCT1.Parent = CCT
CCT1.Visible = true
CCT1.Position = UDim2.new(0,0,0,0)

local CCT2 = Instance.new("Frame")
CCT2.Size = UDim2.new(0,0,0,0)
CCT2.Parent = CCT
CCT2.Visible = false
CCT2.Position = UDim2.new(0,0,0,0)

local CCT3 = Instance.new("Frame")
CCT3.Size = UDim2.new(0,0,0,0)
CCT3.Parent = CCT
CCT3.Visible = false
CCT3.Position = UDim2.new(0,0,0,0)

local CCT4 = Instance.new("Frame")
CCT4.Size = UDim2.new(0,0,0,0)
CCT4.Parent = CCT
CCT4.Visible = false
CCT4.Position = UDim2.new(0,0,0,0)

local CCT5 = Instance.new("Frame")
CCT5.Size = UDim2.new(0,0,0,0)
CCT5.Parent = CCT
CCT5.Visible = false
CCT5.Position = UDim2.new(0,0,0,0)

local Changer = Instance.new("TextBox")
	Changer.Parent = CCT
	Changer.Size = UDim2.new(0,40,0,40)
	Changer.Position = UDim2.new(0,450,0,240)
	Changer.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Changer.BorderColor3 = Color3.fromRGB(25,25,25)
	Changer.ZIndex = 5
 	Changer.Text = 1
 	Changer.PlaceholderText = "Num"
	Changer.ClearTextOnFocus = false
	Changer.MultiLine = false
	Changer.TextSize = 32
	Changer.TextColor3 = Data.Color
 	Changer.TextScaled = true
  
  	Changer.FocusLost:Connect(function()
       if tonumber(Changer.Text) == 1 then
           CCT1.Visible = true
           CCT2.Visible = false
           CCT3.Visible = false
           CCT4.Visible = false
           CCT5.Visible = false
       end
   		if tonumber(Changer.Text) == 2 then
           CCT1.Visible = false
           CCT2.Visible = true
           CCT3.Visible = false
           CCT4.Visible = false
           CCT5.Visible = false
       	end
		if tonumber(Changer.Text) == 3 then
           CCT1.Visible = false
           CCT2.Visible = false
           CCT3.Visible = true
           CCT4.Visible = false
           CCT5.Visible = false
       	end
   		if tonumber(Changer.Text) == 4 then
           CCT1.Visible = false
           CCT2.Visible = false
           CCT3.Visible = false
           CCT4.Visible = true
           CCT5.Visible = false
       	end
    	if tonumber(Changer.Text) == 5 then
           CCT1.Visible = false
           CCT2.Visible = false
           CCT3.Visible = false
           CCT4.Visible = false
           CCT5.Visible = true
       	end
    end)

	local CommandName = Instance.new("TextBox")
	CommandName.Parent = CCT1
	CommandName.Size = UDim2.new(0,445,0,40)
	CommandName.Position = UDim2.new(0,25,0,53)
	CommandName.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CommandName.BorderColor3 = Color3.fromRGB(25,25,25)
	CommandName.ZIndex = 5
 	CommandName.Text = command1data.Name
 	CommandName.PlaceholderText = "Your Command Name"
	CommandName.ClearTextOnFocus = false
	CommandName.MultiLine = false
	CommandName.TextSize = 32
	CommandName.TextColor3 = Data.Color
 	CommandName.TextScaled = true
   	CommandName.TextXAlignment = "Left"
	
 	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Parent = CCT1
	Scroller.Size = UDim2.new(0,445,0,170 -40)
	Scroller.Position = UDim2.new(0,25,0,65)
	Scroller.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Scroller.BorderColor3 = Color3.fromRGB(0,0,0)
	Scroller.ZIndex = 4
 	Scroller.CanvasSize = UDim2.new(0,0,0,99999)
 
 	lastnum = 0
 
 	for i,v in pairs(string.split(command1data.Code,"|o|o|o|")) do
      	if i ~= 1 and v ~= " " then
    	local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = v
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum = lastnum +1
     	end
    end
    
    local Button = Instance.new("TextButton")
	Button.Parent = CCT1
	Button.Size = UDim2.new(0,130,0,30)
	Button.Position = UDim2.new(0,25,0,235)
	Button.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Button.BorderColor3 = Color3.fromRGB(25,25,25)
	Button.ZIndex = 4
 	Button.Text = "Test Code"
 	Button.TextColor3 = Data.Color
  	Button.TextScaled = true
   
   	local Save = Instance.new("TextButton")
	Save.Parent = CCT1
	Save.Size = UDim2.new(0,130,0,30)
	Save.Position = UDim2.new(0,25,0,235 -30)
	Save.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Save.BorderColor3 = Color3.fromRGB(25,25,25)
	Save.ZIndex = 4
 	Save.Text = "Save"
 	Save.TextColor3 = Data.Color
  	Save.TextScaled = true
   
    local plus = Instance.new("TextButton")
	plus.Parent = CCT1
	plus.Size = UDim2.new(0,40,0,40)
	plus.Position = UDim2.new(0,25 +190,0,235)
	plus.BackgroundColor3 = Color3.fromRGB(25,25,25)
	plus.BorderColor3 = Color3.fromRGB(0,0,0)
	plus.ZIndex = 4
 	plus.Text = "+"
 	plus.TextColor3 = Data.Color
  	plus.TextScaled = true
   
    Button.MouseButton1Click:Connect(function()
        code = [[ local PlayerExec = game.Players.LocalPlayer
function chatN(varr) 
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
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[Zeouron]: "..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

]]
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." "..v.Text
        end
    	loadstring(code)()
    end)

	Save.MouseButton1Click:Connect(function()
   		code = ""
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." |o|o|o|"..v.Text
        end
    	local saved = {
    		Name = CommandName.Text,
    		Code = code
		}
        local HttpService = game:GetService("HttpService");
    	json = HttpService:JSONEncode(saved);
     	command1data = saved
      	customCmds[1] = command1data.Name
     	writefile("ProjectZeouron/Custom1.txt",json)
    end)
	
	plus.MouseButton1Click:Connect(function()
    	
 		local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = ""
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum = lastnum +1
     
     	Box.FocusLost:Connect(function()
        	LastFocused = tonumber(Box.Name)
        end)
    end)

local CommandName = Instance.new("TextBox")
	CommandName.Parent = CCT2
	CommandName.Size = UDim2.new(0,445,0,40)
	CommandName.Position = UDim2.new(0,25,0,53)
	CommandName.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CommandName.BorderColor3 = Color3.fromRGB(25,25,25)
	CommandName.ZIndex = 5
 	CommandName.Text = command2data.Name
 	CommandName.PlaceholderText = "Your Command Name"
	CommandName.ClearTextOnFocus = false
	CommandName.MultiLine = false
	CommandName.TextSize = 32
	CommandName.TextColor3 = Data.Color
 	CommandName.TextScaled = true
   	CommandName.TextXAlignment = "Left"
	
 	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Parent = CCT2
	Scroller.Size = UDim2.new(0,445,0,170 -40)
	Scroller.Position = UDim2.new(0,25,0,65)
	Scroller.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Scroller.BorderColor3 = Color3.fromRGB(0,0,0)
	Scroller.ZIndex = 4
 	Scroller.CanvasSize = UDim2.new(0,0,0,99999)
 
 	lastnum2 = 0
 
 	for i,v in pairs(string.split(command2data.Code,"|o|o|o|")) do
      	if i ~= 1 and v ~= " " then
    	local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum2 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = v
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum2 = lastnum2 +1
     	end
    end
    
    local Button = Instance.new("TextButton")
	Button.Parent = CCT2
	Button.Size = UDim2.new(0,130,0,30)
	Button.Position = UDim2.new(0,25,0,235)
	Button.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Button.BorderColor3 = Color3.fromRGB(25,25,25)
	Button.ZIndex = 4
 	Button.Text = "Test Code"
 	Button.TextColor3 = Data.Color
  	Button.TextScaled = true
   
   	local Save = Instance.new("TextButton")
	Save.Parent = CCT2
	Save.Size = UDim2.new(0,130,0,30)
	Save.Position = UDim2.new(0,25,0,235 -30)
	Save.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Save.BorderColor3 = Color3.fromRGB(25,25,25)
	Save.ZIndex = 4
 	Save.Text = "Save"
 	Save.TextColor3 = Data.Color
  	Save.TextScaled = true
   
    local plus = Instance.new("TextButton")
	plus.Parent = CCT2
	plus.Size = UDim2.new(0,40,0,40)
	plus.Position = UDim2.new(0,25 +190,0,235)
	plus.BackgroundColor3 = Color3.fromRGB(25,25,25)
	plus.BorderColor3 = Color3.fromRGB(0,0,0)
	plus.ZIndex = 4
 	plus.Text = "+"
 	plus.TextColor3 = Data.Color
  	plus.TextScaled = true
   
    Button.MouseButton1Click:Connect(function()
        code = [[ local PlayerExec = game.Players.LocalPlayer
function chatN(varr) 
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
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[Zeouron]: "..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

]]
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." "..v.Text
        end
    	loadstring(code)()
    end)

	Save.MouseButton1Click:Connect(function()
   		code = ""
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." |o|o|o|"..v.Text
        end
    	local saved = {
    		Name = CommandName.Text,
    		Code = code
		}
        local HttpService = game:GetService("HttpService");
    	json = HttpService:JSONEncode(saved);
     	command2data = saved
      	customCmds[2] = command2data.Name
     	writefile("ProjectZeouron/Custom2.txt",json)
    end)
	
	plus.MouseButton1Click:Connect(function()
    	
 		local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum2 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = ""
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum2 = lastnum2 +1
     
     	Box.FocusLost:Connect(function()
        	LastFocused = tonumber(Box.Name)
        end)
    end)

local CommandName = Instance.new("TextBox")
	CommandName.Parent = CCT3
	CommandName.Size = UDim2.new(0,445,0,40)
	CommandName.Position = UDim2.new(0,25,0,53)
	CommandName.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CommandName.BorderColor3 = Color3.fromRGB(25,25,25)
	CommandName.ZIndex = 5
 	CommandName.Text = command3data.Name
 	CommandName.PlaceholderText = "Your Command Name"
	CommandName.ClearTextOnFocus = false
	CommandName.MultiLine = false
	CommandName.TextSize = 32
	CommandName.TextColor3 = Data.Color
 	CommandName.TextScaled = true
   	CommandName.TextXAlignment = "Left"
	
 	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Parent = CCT3
	Scroller.Size = UDim2.new(0,445,0,170 -40)
	Scroller.Position = UDim2.new(0,25,0,65)
	Scroller.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Scroller.BorderColor3 = Color3.fromRGB(0,0,0)
	Scroller.ZIndex = 4
 	Scroller.CanvasSize = UDim2.new(0,0,0,99999)
 
 	lastnum3 = 0
 
 	for i,v in pairs(string.split(command3data.Code,"|o|o|o|")) do
      	if i ~= 1 and v ~= " " then
    	local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum3 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = v
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum3 = lastnum3 +1
     	end
    end
    
    local Button = Instance.new("TextButton")
	Button.Parent = CCT3
	Button.Size = UDim2.new(0,130,0,30)
	Button.Position = UDim2.new(0,25,0,235)
	Button.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Button.BorderColor3 = Color3.fromRGB(25,25,25)
	Button.ZIndex = 4
 	Button.Text = "Test Code"
 	Button.TextColor3 = Data.Color
  	Button.TextScaled = true
   
   	local Save = Instance.new("TextButton")
	Save.Parent = CCT3
	Save.Size = UDim2.new(0,130,0,30)
	Save.Position = UDim2.new(0,25,0,235 -30)
	Save.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Save.BorderColor3 = Color3.fromRGB(25,25,25)
	Save.ZIndex = 4
 	Save.Text = "Save"
 	Save.TextColor3 = Data.Color
  	Save.TextScaled = true
   
    local plus = Instance.new("TextButton")
	plus.Parent = CCT3
	plus.Size = UDim2.new(0,40,0,40)
	plus.Position = UDim2.new(0,25 +190,0,235)
	plus.BackgroundColor3 = Color3.fromRGB(25,25,25)
	plus.BorderColor3 = Color3.fromRGB(0,0,0)
	plus.ZIndex = 4
 	plus.Text = "+"
 	plus.TextColor3 = Data.Color
  	plus.TextScaled = true
   
    Button.MouseButton1Click:Connect(function()
        code = [[ local PlayerExec = game.Players.LocalPlayer
function chatN(varr) 
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
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[Zeouron]: "..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

]]
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." "..v.Text
        end
    	loadstring(code)()
    end)

	Save.MouseButton1Click:Connect(function()
   		code = ""
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." |o|o|o|"..v.Text
        end
    	local saved = {
    		Name = CommandName.Text,
    		Code = code
		}
        local HttpService = game:GetService("HttpService");
    	json = HttpService:JSONEncode(saved);
     	command3data = saved
      	customCmds[3] = command3data.Name
     	writefile("ProjectZeouron/Custom3.txt",json)
    end)
	
	plus.MouseButton1Click:Connect(function()
    	
 		local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum3 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = ""
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum3 = lastnum3 +1
     
     	Box.FocusLost:Connect(function()
        	LastFocused = tonumber(Box.Name)
        end)
    end)

local CommandName = Instance.new("TextBox")
	CommandName.Parent = CCT4
	CommandName.Size = UDim2.new(0,445,0,40)
	CommandName.Position = UDim2.new(0,25,0,53)
	CommandName.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CommandName.BorderColor3 = Color3.fromRGB(25,25,25)
	CommandName.ZIndex = 5
 	CommandName.Text = command4data.Name
 	CommandName.PlaceholderText = "Your Command Name"
	CommandName.ClearTextOnFocus = false
	CommandName.MultiLine = false
	CommandName.TextSize = 32
	CommandName.TextColor3 = Data.Color
 	CommandName.TextScaled = true
   	CommandName.TextXAlignment = "Left"
	
 	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Parent = CCT4
	Scroller.Size = UDim2.new(0,445,0,170 -40)
	Scroller.Position = UDim2.new(0,25,0,65)
	Scroller.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Scroller.BorderColor3 = Color3.fromRGB(0,0,0)
	Scroller.ZIndex = 4
 	Scroller.CanvasSize = UDim2.new(0,0,0,99999)
 
 	lastnum4 = 0
 
 	for i,v in pairs(string.split(command4data.Code,"|o|o|o|")) do
      	if i ~= 1 and v ~= " " then
    	local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum4 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = v
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum4 = lastnum4 +1
     	end
    end
    
    local Button = Instance.new("TextButton")
	Button.Parent = CCT4
	Button.Size = UDim2.new(0,130,0,30)
	Button.Position = UDim2.new(0,25,0,235)
	Button.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Button.BorderColor3 = Color3.fromRGB(25,25,25)
	Button.ZIndex = 4
 	Button.Text = "Test Code"
 	Button.TextColor3 = Data.Color
  	Button.TextScaled = true
   
   	local Save = Instance.new("TextButton")
	Save.Parent = CCT4
	Save.Size = UDim2.new(0,130,0,30)
	Save.Position = UDim2.new(0,25,0,235 -30)
	Save.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Save.BorderColor3 = Color3.fromRGB(25,25,25)
	Save.ZIndex = 4
 	Save.Text = "Save"
 	Save.TextColor3 = Data.Color
  	Save.TextScaled = true
   
    local plus = Instance.new("TextButton")
	plus.Parent = CCT4
	plus.Size = UDim2.new(0,40,0,40)
	plus.Position = UDim2.new(0,25 +190,0,235)
	plus.BackgroundColor3 = Color3.fromRGB(25,25,25)
	plus.BorderColor3 = Color3.fromRGB(0,0,0)
	plus.ZIndex = 4
 	plus.Text = "+"
 	plus.TextColor3 = Data.Color
  	plus.TextScaled = true
   
    Button.MouseButton1Click:Connect(function()
        code = [[ local PlayerExec = game.Players.LocalPlayer
function chatN(varr) 
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
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[Zeouron]: "..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

]]
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." "..v.Text
        end
    	loadstring(code)()
    end)

	Save.MouseButton1Click:Connect(function()
   		code = ""
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." |o|o|o|"..v.Text
        end
    	local saved = {
    		Name = CommandName.Text,
    		Code = code
		}
        local HttpService = game:GetService("HttpService");
    	json = HttpService:JSONEncode(saved);
     	command4data = saved
      	customCmds[4] = command4data.Name
     	writefile("ProjectZeouron/Custom4.txt",json)
    end)
	
	plus.MouseButton1Click:Connect(function()
    	
 		local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum4 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = ""
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum4 = lastnum4 +1
     
     	Box.FocusLost:Connect(function()
        	LastFocused = tonumber(Box.Name)
        end)
    end)

local CommandName = Instance.new("TextBox")
	CommandName.Parent = CCT5
	CommandName.Size = UDim2.new(0,445,0,40)
	CommandName.Position = UDim2.new(0,25,0,53)
	CommandName.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CommandName.BorderColor3 = Color3.fromRGB(25,25,25)
	CommandName.ZIndex = 5
 	CommandName.Text = command5data.Name
 	CommandName.PlaceholderText = "Your Command Name"
	CommandName.ClearTextOnFocus = false
	CommandName.MultiLine = false
	CommandName.TextSize = 32
	CommandName.TextColor3 = Data.Color
 	CommandName.TextScaled = true
   	CommandName.TextXAlignment = "Left"
	
 	local Scroller = Instance.new("ScrollingFrame")
	Scroller.Parent = CCT5
	Scroller.Size = UDim2.new(0,445,0,170 -40)
	Scroller.Position = UDim2.new(0,25,0,65)
	Scroller.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Scroller.BorderColor3 = Color3.fromRGB(0,0,0)
	Scroller.ZIndex = 4
 	Scroller.CanvasSize = UDim2.new(0,0,0,99999)
 
 	lastnum5 = 0
 
 	for i,v in pairs(string.split(command5data.Code,"|o|o|o|")) do
      	if i ~= 1 and v ~= " " then
    	local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum5 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = v
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum5 = lastnum5 +1
     	end
    end
    
    local Button = Instance.new("TextButton")
	Button.Parent = CCT5
	Button.Size = UDim2.new(0,130,0,30)
	Button.Position = UDim2.new(0,25,0,235)
	Button.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Button.BorderColor3 = Color3.fromRGB(25,25,25)
	Button.ZIndex = 4
 	Button.Text = "Test Code"
 	Button.TextColor3 = Data.Color
  	Button.TextScaled = true
   
   	local Save = Instance.new("TextButton")
	Save.Parent = CCT5
	Save.Size = UDim2.new(0,130,0,30)
	Save.Position = UDim2.new(0,25,0,235 -30)
	Save.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Save.BorderColor3 = Color3.fromRGB(25,25,25)
	Save.ZIndex = 4
 	Save.Text = "Save"
 	Save.TextColor3 = Data.Color
  	Save.TextScaled = true
   
    local plus = Instance.new("TextButton")
	plus.Parent = CCT5
	plus.Size = UDim2.new(0,40,0,40)
	plus.Position = UDim2.new(0,25 +190,0,235)
	plus.BackgroundColor3 = Color3.fromRGB(25,25,25)
	plus.BorderColor3 = Color3.fromRGB(0,0,0)
	plus.ZIndex = 4
 	plus.Text = "+"
 	plus.TextColor3 = Data.Color
  	plus.TextScaled = true
   
    Button.MouseButton1Click:Connect(function()
        code = [[ local PlayerExec = game.Players.LocalPlayer
function chatN(varr) 
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
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[Zeouron]: "..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

]]
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." "..v.Text
        end
    	loadstring(code)()
    end)

	Save.MouseButton1Click:Connect(function()
   		code = ""
    	for i,v in pairs(Scroller:GetChildren()) do
        	code = code.." |o|o|o|"..v.Text
        end
    	local saved = {
    		Name = CommandName.Text,
    		Code = code
		}
        local HttpService = game:GetService("HttpService");
    	json = HttpService:JSONEncode(saved);
     	command5data = saved
      	customCmds[5] = command5data.Name
     	writefile("ProjectZeouron/Custom5.txt",json)
    end)
	
	plus.MouseButton1Click:Connect(function()
    	
 		local Box = Instance.new("TextBox")
		Box.Parent = Scroller
 		Box.Name = lastnum5 +1
		Box.Size = UDim2.new(0,445,0,30)
		Box.Position = UDim2.new(0,0,0,tonumber(Box.Name) *30)
		Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
		Box.BorderColor3 = Color3.fromRGB(25,25,25)
		Box.ZIndex = 4
 		Box.Text = ""
 		Box.PlaceholderText = ""
		Box.ClearTextOnFocus = false
		Box.MultiLine = false
  		Box.TextSize = 32
 		Box.TextColor3 = Data.Color
  		Box.TextScaled = true
   		Box.TextXAlignment = "Left"
    	lastnum5 = lastnum5 +1
     
     	Box.FocusLost:Connect(function()
        	LastFocused = tonumber(Box.Name)
        end)
    end)

local CRound = Instance.new("UICorner")
CRound.Parent = CC
CRound.CornerRadius = UDim.new(0.11,0.11)

local CoRound = Instance.new("UICorner")
CoRound.Parent = CCo
CoRound.CornerRadius = UDim.new(0.11,0.11)

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

LoadMsg = true

Load.MouseButton1Click:Connect(function()
    Load.Visible = false
    Loado.Visible = true
    
    LoadMsg = false
end)

Loado.MouseButton1Click:Connect(function()
    Loado.Visible = false
    Load.Visible = true
    
    LoadMsg = true
end)

MS.MouseButton1Click:Connect(function()
    if MsWait then
    	MS.Visible = false
    	MSo.Visible = true
        
        local TweenInf0 = TweenInfo.new(3)
    	local PlayThisA = TweenService:Create(ProjectZeouron, TweenInf0, {Position = UDim2.new(0,1000,0,33)})
    	PlayThisA:Play()
     
        local TweenInf0 = TweenInfo.new(3)
    	local PlayThisA = TweenService:Create(Load, TweenInf0, {Position = UDim2.new(0,40.5 *6.5,0,85)})
    	PlayThisA:Play()
     
        local TweenInf0 = TweenInfo.new(3)
    	local PlayThisA = TweenService:Create(Loado, TweenInf0, {Position = UDim2.new(0,40.5 *6.5,0,85)})
    	PlayThisA:Play()
        
        MsWait = false
        wait(3)
        MsWait = true
    end
end)

MSo.MouseButton1Click:Connect(function()
    if MsWait then
    	MS.Visible = true
    	MSo.Visible = false
        
        local TweenInf0 = TweenInfo.new(2)
    	local PlayThisA = TweenService:Create(ProjectZeouron, TweenInf0, {Position = UDim2.new(0,390 /1.7,0,33)})
    	PlayThisA:Play()
     
        local TweenInf0 = TweenInfo.new(3)
    	local PlayThisA = TweenService:Create(Load, TweenInf0, {Position = UDim2.new(0,40.5 *12.5,0,85)})
    	PlayThisA:Play()
     
        local TweenInf0 = TweenInfo.new(3)
    	local PlayThisA = TweenService:Create(Loado, TweenInf0, {Position = UDim2.new(0,40.5 *12.5,0,85)})
    	PlayThisA:Play()
        
        MsWait = false
        wait(3)
        MsWait = true
    end
end)

CC.MouseButton1Click:Connect(function()
    if CanDo then
    	CC.Visible = false
    	CCo.Visible = true
    
    	local TweenInf0 = TweenInfo.new(2) 
		local PlayThis = TweenService:Create(MST, TweenInf0, {Position = UDim2.new(0,-390 -125 -20,0,0)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(2) 
		local PlayThis = TweenService:Create(CCT, TweenInf0, {Position = UDim2.new(0,0,0,0)})
		PlayThis:Play()
    end
end)

CCo.MouseButton1Click:Connect(function()
    if CanDo then
    	CCo.Visible = false
    	CC.Visible = true
    
    	local TweenInf0 = TweenInfo.new(2) 
		local PlayThis = TweenService:Create(MST, TweenInf0, {Position = UDim2.new(0,0,0,0)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(2) 
		local PlayThis = TweenService:Create(CCT, TweenInf0, {Position = UDim2.new(0,390 +125 +20,0,0)})
		PlayThis:Play()
  
        CanDo = false
        wait(2.1)
        CanDo = true
    end
end)

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

ProjectZeouron.MouseButton1Click:Connect(function()
    if CanExec then
    CanExec = false
    local TweenInf0 = TweenInfo.new(8.33, Enum.EasingStyle.Exponential)
    local PlayThisA = TweenService:Create(ProjectZeouronBo, TweenInf0, {Rotation = 90 *6})
    PlayThisA:Play()
    
    local TweenInf0 = TweenInfo.new(8.33, Enum.EasingStyle.Exponential)
    local PlayThisA = TweenService:Create(ProjectZeouronB, TweenInf0, {Rotation = -90 *6})
    PlayThisA:Play()
    
    wait(9)
    for i,v in pairs(G:GetDescendants()) do
        if not v:IsA("UICorner") then
       	    local TweenInf0 = TweenInfo.new(math.random(2,4))
        	local PlayThisA = TweenService:Create(v, TweenInf0, {Size = UDim2.new(0,0,0,0)})
    		PlayThisA:Play()
      
      		if v ~= Top then
      			local TweenInf0 = TweenInfo.new(math.random(3,4))
        		local PlayThisA = TweenService:Create(v, TweenInf0, {Position = UDim2.new(0,v.Position.X.Offset +math.random(-75,75),0,v.Position.Y.Offset +math.random(-75,75))})
    			PlayThisA:Play()
      		end
        end
    end
    
    
    
    
    
    
    
    
    
local lp = game.Players.LocalPlayer
local plr = lp
local Players = game.Players
local CopyMov = false
local MovCopier = ""

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
   	if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(varr)
    else
  		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varr, "All")
    end
end

if Prefixo.Text == "" or Prefixo.Text == " " or Prefixo.Text == "/" or Prefixo.Text:len() < 2 then
    Prefixo.Text = "!"
end

Prefix = Prefixo.Text
NameOf = NameSo.Text
NameActual = "["..NameOf.."]: "

function chat(varr) 
    wait(0.01)    
    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
    	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(NameActual..varr)
    else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(NameActual..varr, "All")
    end
end

finduser = function(string)
    for i,v in pairs(game.Players:GetPlayers()) do
    	if v.Name:lower() == string:lower() or v.DisplayName:lower() == string:lower() then
    		return v
    	end
    end
end


if LoadMsg then
	chat("Loaded Zeouron Alt control, Say \""..Prefix.."Cmds\" for commands!, type \""..Prefix.."Information\" for more info")
end

local Admins = {lp.Name}
function HandleCommand(command, string1, string2, string3, string4, Player) -- Command handle
    isadmin = false
    PlayerExec = Player
            for i,v in pairs(Admins) do
            	if v == Player.Name or Player.Name == lp.Name then
            		isadmin = true
        		end
    		end
    		if command == Prefix..cmds[19] then -- information
        		if Player == lp then
            		chat("This is an alt control script, it allows other people to control you, people have to be admins to do")
        		else
                    if isadmin then
                    	yes = "you are an admin, say \""..Prefix.."cmds\" for commands."
                    else
                    	yes = "you aren't admin, ask "..lp.DisplayName.." for admin."
                    end
        			chat("This is an alt control script, it allows you to control "..lp.DisplayName..", you have to be an admin to do so, "..yes)
        		end
    		end
    		if isadmin then
            if command == Prefix..cmds[4] then -- cmds
                local tabs = {
                	"say <string>, bring, to <user>, walkspeed <speed>, jumppower <power>, jump, kill, follow <user>, unfollow, glitchy <string>, Rocket",
                	"fling, respawn, copychat, uncopychat, math, commandinfo, Gravity <num>, runcode <code>, sit, gaimeter, walkto",
                 	"copymovements <plr>, uncopymovements, move <direction>, spin <num>, unspin"
                }
                for i,v in pairs(tabs) do
                    chat(v)
                    wait(1)
                end
            end
            
            if command == Prefix..cmds[1] then -- say
                chatN(string1)
            end
        
        	if command == Prefix..cmds[33] then -- setclipboard
             	if string1 then
            		setclipboard(tostring(string1))
             		chat("Set "..string1.." to clipboard!")
              	end
            end
        	
         	if command == Prefix..customCmds[1]:lower() then -- custom command
              	arg1 = string1
               	arg2 = string2
                arg3 = string3
                arg4 = string4
               
               	local code = ""
    			for i,v in pairs(string.split(command1data.Code,"|o|o|o|")) do
           			code = code..v
           		end
            	loadstring(code)()
            end
         
         	if command == Prefix..customCmds[2]:lower() then -- custom command
              	arg1 = string1
               	arg2 = string2
                arg3 = string3
                arg4 = string4
              
              	local code = ""
    			for i,v in pairs(string.split(command2data.Code,"|o|o|o|")) do
           			code = code..v
           		end
            	loadstring(code)()
            end
        
        	if command == Prefix..customCmds[3]:lower() then -- custom command
             	arg1 = string1
               	arg2 = string2
                arg3 = string3
                arg4 = string4
             
              	local code = ""
    			for i,v in pairs(string.split(command3data.Code,"|o|o|o|")) do
           			code = code..v
           		end
            	loadstring(code)()
            end
         
         	if command == Prefix..customCmds[4]:lower() then -- custom command
              	arg1 = string1
               	arg2 = string2
                arg3 = string3
                arg4 = string4
              
              	local code = ""
    			for i,v in pairs(string.split(command4data.Code,"|o|o|o|")) do
           			code = code..v
           		end
            	loadstring(code)()
            end
         
         	if command == Prefix..customCmds[5]:lower() then -- custom command
              	arg1 = string1
               	arg2 = string2
                arg3 = string3
                arg4 = string4
              
              	local code = ""
    			for i,v in pairs(string.split(command5data.Code,"|o|o|o|")) do
           			code = code..v
           		end
            	loadstring(code)()
            end
         
         
        	if command == Prefix..cmds[32] then -- move
             	if string2 == nil then
                  	chat("Please select an amount of studs to move")
                end
            	if string2 ~= nil then
                if string1 then
                    if string1:lower() == "forward" or string1:lower() == "backward" or string1:lower() == "left" or string1:lower() == "right" then
                    if string1:lower() == "forward" then
                    	local Offset = CFrame.new(0, 0, 0 -tonumber(string2))
						local otherRoot = lp.character.HumanoidRootPart
						local CFrame = otherRoot.CFrame * Offset
      					local CF = CFrame.Position
           				lp.character.Humanoid:MoveTo(CF)
                    end
                
                	if string1:lower() == "backward" then
                    	local Offset = CFrame.new(0, 0, tonumber(string2))
						local otherRoot = lp.character.HumanoidRootPart
						local CFrame = otherRoot.CFrame * Offset
      					local CF = CFrame.Position
           				lp.character.Humanoid:MoveTo(CF)
                    end
                
                	if string1:lower() == "right" then
                    	local Offset = CFrame.new(tonumber(string2), 0, 0)
						local otherRoot = lp.character.HumanoidRootPart
						local CFrame = otherRoot.CFrame * Offset
      					local CF = CFrame.Position
           				lp.character.Humanoid:MoveTo(CF)
                    end
                
                	if string1:lower() == "left" then
                    	local Offset = CFrame.new(0 -tonumber(string2), 0, 0)
						local otherRoot = lp.character.HumanoidRootPart
						local CFrame = otherRoot.CFrame * Offset
      					local CF = CFrame.Position
           				lp.character.Humanoid:MoveTo(CF)
                    end
                else
                	chat("Please use !move/forward, !move/backwards, !move/right or !move/left instead")
                end
             	else
              		chat("Please use !move/forward, !move/backwards, !move/right or !move/left instead")
                end
            	end
            end
        
        	if command == Prefix..cmds[29] then -- information
           		chatN("ooo")
            end
        
            if command == Prefix..cmds[28] then -- admins
                msg = ""
                for i,v in pairs(Admins) do
                    if v ~= lp.Name then
                    	msg = msg..v
                    end
                end
                chat(msg)
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
        
        	if command == Prefix..cmds[30] then -- copymovements
            	if string1 ~= nil then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v.Name:lower() == string1:lower() or v.DisplayName:lower() == string1:lower() then
                            MovCopier = v.Name
                            CopyMov = true
                            chat("Now copying "..v.DisplayName.."'s Movements")
                        end
                    end
                else
                    MovCopier = Player.Name
                    CopyMov = true
                    chat("Now copying your Movements")
                end
            end
        
        	if command == Prefix..cmds[31] then -- uncopymovements
            	MovCopier = ""
                CopyMov = false
            end
        
        	if command == Prefix..cmds[23] then -- respawn
                lp.character.Humanoid.Health = 0
                oldpos = lp.character.HumanoidRootPart.Position
                res = true
            end
        
       		if command == Prefix..cmds[34] then -- spin
             	if string1 then
            		spinSpeed = string1
             	else
              		spinSpeed = 15
             	end
	 			for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
		 			if v.Name == "Spinning" then
			 			v:Destroy()
		 			end
	 			end
	 			local Spin = Instance.new("BodyAngularVelocity")
	 			Spin.Name = "Spinning"
	 			Spin.Parent = lp.character.HumanoidRootPart
	 			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	 			Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
            end
       
       		if command == Prefix..cmds[35] then -- unspin
            	for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
		 			if v.Name == "Spinning" then
			 			v:Destroy()
		 			end
	 			end
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
                                lp.character.Humanoid:MoveTo(followuser.character.HumanoidRootPart.Position)
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
	v.character.Humanoid:GetPropertyChangedSignal("Jump"):Connect(function(j)
     	j = v.character.Humanoid.Jump
        if v.Name == MovCopier then
            lp.character.Humanoid.Jump = j
        end
    end)
	v.CharacterAdded:Connect(function(char)
     	wait(0.5)
    	char.Humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
         	j = char.Humanoid.Jump
        	if char.Name == MovCopier then
            	lp.character.Humanoid.Jump = j
            end
        end)
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
        	HandleCommand(commandPart, StringPart, StringPart2, StringPart3, StringPart4, added)
         
            if added.Name == copychatuser or copychatuser == "all" then
                if added.Name ~= lp.Name then
        			chatN("["..added.DisplayName.."]: "..msg)
                end
            end
        end
    end)
	added.CharacterAdded:Connect(function(char)
     	wait(0.5)
    	char.Humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
         	j = char.Humanoid.Jump
        	if char.Name == MovCopier then
            	lp.character.Humanoid.Jump = j
            end
        end)
    end)
end)



lp.CharacterAdded:Connect(function(s)
    wait()
	if res then
    	lp.character:MoveTo(oldpos)
        res = false
    end
end)
    
game:GetService("RunService").Stepped:Connect(function()
    if CopyMov then
    	Hum = game.Players:FindFirstChild(MovCopier).character
     
     	if Hum ~= nil then
        	lp.character.Humanoid:MoveTo(Hum.Humanoid.MoveDirection *4 +lp.character.HumanoidRootPart.Position)
        end
    end
end)
    
    
    
    
    
    
    wait(4.5)
    G:Destroy()
    end
end)

local TweenInf0 = TweenInfo.new(0) 
local PlayThis = TweenService:Create(ProjectZeouron, TweenInf0, {ImageTransparency = 0})
PlayThis:Play()

n = 0

local TweenInf0 = TweenInfo.new(0) 
local PlayThis = TweenService:Create(C, TweenInf0, {BackgroundTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(0) 
local PlayThis = TweenService:Create(Co, TweenInf0, {BackgroundTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(0) 
local PlayThis = TweenService:Create(C, TweenInf0, {TextTransparency = n})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(0) 
local PlayThis = TweenService:Create(Co, TweenInf0, {TextTransparency = n})
PlayThis:Play() 