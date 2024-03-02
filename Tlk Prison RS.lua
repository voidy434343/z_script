plr = game.Players.LocalPlayer
lp = game.Players.LocalPlayer
Speed = 16

Data = {
    NameOfYourScript = "Zeouron Tlk Prison",    
    GParent = game.CoreGui, -- Rendering Settings
    MColor = Color3.fromRGB(148, 24, 148),
    Font = Enum.Font.Arcade, -- Nunito
    DColor = Color3.fromRGB(48, 10, 48),
    TextColor = Color3.fromRGB(165, 24, 165),
    
    MainSettings = {
        OnOff = true, -- Adds a Keybind/Button on screen, that when pressed, will remove/re add the gui,
        Keybind = Enum.KeyCode.M -- if OnOffButton is true, then it will add a keybind, 
    },

	KeySystem = { -- This is pretty obvious,
    	On = false,
    	Text = "Hello "..game.Players.LocalPlayer.DisplayName.."! Please do this Keysystem to execute this script.",
    	GetKeyLink = "https://discord.gg/",
     	Key = "Awesome Key",
      	SaveKey = true
    },
    
    Icons = {
    	Skull = {
        	"http://www.roblox.com/asset/?id=16309513575", -- Image
            15, -- X Scale
            18, --  Y Scale
            Color3.fromRGB(148, 24, 148), -- ImageColor
            5 -- Y Position
        },
        Shield = {
        	"http://www.roblox.com/asset/?id=16310099190", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(148, 24, 148), -- ImageColor
            3 -- Y Position
        },
    	Script = {
        	"http://www.roblox.com/asset/?id=16310517264", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(148, 24, 148), -- ImageColor
            3 -- Y Position
        }
    }
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouronic-Library/main/Lib%20loadstring.txt'))()

newtab("PVP", Data.Icons.Skull)
newtab("Map")

switch("WalkSpeed Bypass", "PVP", function()
    Wb = bool
    if bool then
    	while wait() and Wb do
    		local args = {[1] = Speed}

			game:GetService("ReplicatedStorage").BloatwareRemote:FireServer(unpack(args))

			game.Players.LocalPlayer.character.Humanoid.WalkSpeed = Speed
		end
	end
end)

slider("Set walkspeed", "PVP", 16, 100, 16, function()
    Speed = number
end)

button("Infinite Stamina", "PVP", function()
 	local args = {[1] = true, [2] = 999999}

	game:GetService("ReplicatedStorage").AddStamina:FireServer(unpack(args))
 	information("Execute this if you have under 100 stamina,")
 
end)

switch("Attack", "PVP", function()
    Att = bool
    if bool then
    	while wait() and Att do
        	if lp.character:FindFirstChildWhichIsA("Tool") then
         		local args = {[1] = 0.3}
				game:GetService("ReplicatedStorage").Damage:FireServer(unpack(args))
        	end
        end
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    if IS then
        lp.PlayerGui.Stamina.Holder.StaminaBarFrame.Stamina.Size = UDim2.new(1,0,1,0)
    end
    
end)

button("Remove Doors", "Map", function()
    if game.Workspace:FindFirstChild("Doors") then
        game.Workspace:FindFirstChild("Doors"):Destroy()
    end
end)

information("hi alt :)")