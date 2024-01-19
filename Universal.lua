plr = game.Players.LocalPlayer

local config = {
    ["HeaderWidth"] = 250,
    ["AccentColor"] = Color3.fromRGB(120, 27, 161)
}

config.PrimaryColor = Color3.fromRGB(35,35,35)
config.SecondaryColor = Color3.fromRGB(17,17,17)
config.TextColor = Color3.fromRGB(130, 35, 175)
config.Font = Enum.Font.Arcade
config.TextSize = 13
config.HeaderHeight = 32
config.EntryMargin = 1
config.AnimationDuration = 0.3
config.AnimationEasingStyle = Enum.EasingStyle.Quint
config.DefaultEntryHeight = 35

local gui = loadstring(game:HttpGet("https://gitlab.com/0x45.xyz/droplib/-/raw/master/drop-minified.lua"))():Init(config,game.CoreGui)

local Speed = gui:CreateCategory("LocalPlayer")
local plrs = gui:CreateCategory("Player's")
local guis = gui:CreateCategory("Scripthub")
local Misc = gui:CreateCategory("Misc")

local Render = Misc:CreateSection("Render")

Render:CreateSwitch("Fullbright", function(V)
    Bright = V
    NormalLightingSettings = {
        Brightness = game:GetService("Lighting").Brightness,
        FogEnd = game:GetService("Lighting").FogEnd,
        GlobalShadows = game:GetService("Lighting").GlobalShadows,
        Ambient = game:GetService("Lighting").Ambient
    }
    if V then
        while Bright and wait() do
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").FogEnd = 999999
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(235, 235, 235)
        end
    else
        game:GetService("Lighting").Brightness = NormalLightingSettings[1]
        game:GetService("Lighting").FogEnd = NormalLightingSettings[2]
        game:GetService("Lighting").GlobalShadows = NormalLightingSettings[3]
        game:GetService("Lighting").Ambient = NormalLightingSettings[4]
    end
end,false)

Render:CreateSwitch("Render", function(V)
    if V then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end
end,true)

guis:CreateButton("Nameless Admin",function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Loadstrings/main/NA%20Archive.txt'))() 
end)

guis:CreateButton("Alt Control",function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Control-shit/main/Control%20(3).txt'))() 
end)

guis:CreateButton("Fuwwy speak", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Loadstrings/main/furry%20speak.lua'))()
end)

guis:CreateButton("ChatSpy", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Loadstrings/main/Chatspy-1.lua.txt'))()
end)

plrs:CreateSelector("Goto Player",function(selected)
    plr.character.HumanoidRootPart.CFrame = selected.character.HumanoidRootPart.CFrame
end,function() return game.Players:GetPlayers() end,nil)

plrs:CreateSelector("Bang Player",function(player0)
    player = player0
    bang = tstu
    stupid = Instance.new('Animation')
    stupid.AnimationId = 'rbxassetid://148840371'
    hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
    notfunny = hummy:LoadAnimation(stupid)
    notfunny:Play()
    notfunny:AdjustSpeed(10)
    while hummy.Parent.Parent ~= nil do
        wait()
        if bang == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
        end
    end
end,function() return game.Players:GetPlayers() end,nil)

plrs:CreateButton("Unbang",function() 
        bang = false
        notfunny:Stop()
    end)

Speed:CreateSwitch("Tool AutoClicker", function(bool)
    autoclicker = bool
    if bool then
        while autoclicker and wait() do
            local tool = plr.character:FindFirstChildWhichIsA("Tool")
            if tool ~= nil then
                tool:Activate()
            end
        end
    end
end,false)

wlks = plr.character.Humanoid.WalkSpeed
jmps = plr.character.Humanoid.JumpPower

Speed:CreateSlider("Walk Speed", function(ws) 
    wlks = ws
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws 
end,0,100,nil,true,game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)

Speed:CreateSlider("Jump Power", function(jp) 
    jmps = jp
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp 
end,0,200,nil,true,game.Players.LocalPlayer.Character.Humanoid.JumpPower)

Speed:CreateSwitch("Auto Set", function(B)
    Auto = B
    if B then
        while Auto and wait() do
            if wlks ~= nil then
               plr.character.Humanoid.WalkSpeed = wlks
            end
          
            if jmps ~= nil then
                plr.character.Humanoid.JumpPower = jmps
            end
        end
    end
end,false)

Speed:CreateSlider("Gravity", function(grav) 
    game.Workspace.Gravity = grav 
end,0,500,nil,true,math.round(game.Workspace.Gravity))