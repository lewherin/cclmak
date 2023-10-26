
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Herin X Hub | Game 🔫",
   LoadingTitle = "🔫 test script 💥",
   LoadingSubtitle = "by Herin Dev",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "test script"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- Mã mời Discord, không bao gồm discord.gg/. Ví dụ. discord.gg/ABCD sẽ là ABCD
      RememberJoins = true -- Đặt giá trị này thành sai để khiến họ tham gia vào cuộc bất hòa mỗi khi họ tải nó lên
   },
   KeySystem = true, -- Đặt giá trị này thành true để sử dụng hệ thống khóa của chúng tôi
   KeySettings = {
      Title = "Key | Herin X Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- Bạn nên sử dụng thứ gì đó độc đáo vì các tập lệnh khác sử dụng Rayfield có thể ghi đè lên tệp chính của bạn
      SaveKey = false, -- Key của người dùng sẽ được lưu nhưng nếu bạn thay đổi key, họ sẽ không thể sử dụng tập lệnh của bạn
      GrabKeyFromSite = true, -- Nếu điều này đúng, hãy đặt Khóa bên dưới thành trang RAW mà bạn muốn Rayfield lấy khóa từ đó
      Key = {"https://pastebin.com/raw/BTSC4E5R"} -- Danh sách các khóa sẽ được hệ thống chấp nhận, có thể là liên kết tệp RAW (pastebin, github, v.v.) hoặc các chuỗi đơn giản ("hello", "key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool gui",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local Window =
    OrionLib:MakeWindow({Name = "Herin X Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Herin X"})
OrionLib:MakeNotification(
    {
        Name = "Loaded! ",
        Content = "Owner: Herin",
        Image = "rbxassetid://4483345998",
        Time = 5
    }
)
--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab =
    Window:MakeTab(
    {
        Name = "Auto Parry",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section =
    Tab:AddSection(
    {
        Name = "Auto Parry"
    }
)

--[[
Name = <string> - The name of the section.
]]
Tab:AddButton(
    {
        Name = "Auto Parry V1",
        Callback = function()
            print("button pressed")
            loadstring(game:HttpGet(("https://pastebin.com/raw/xkSgU4np"), true))()
        end
    }
)

Tab:AddButton(
    {
        Name = "Auto Parry V2",
        Callback = function()
            print("button pressed")
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/UltraStuff/scripts2/main/bladered")))()
        end
    }
)
Tab:AddButton(
    {
        Name = "Auto Parry V3",
        Callback = function()
            print("button pressed")
            getgenv().config =
                getgenv().config or
                {
                    hit_time = 0.36, -- // recommended 0.25 to 0.75 \\ --
                    mode = "Always", -- // Hold , Toggle , Always \\ --
                    deflect_type = "Remote", -- // Key Press , Remote \\ --
                    notifications = true,
                    keybind = Enum.KeyCode.V
                }

            loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",
                    true
                )
            )()
        end
    }
)
local Section =
    Tab:AddSection(
    {
        Name = "Manual Spam"
    }
)

Tab:AddButton(
    {
        Name = "Manual Spam Button",
        Callback = function()
            print("button pressed")
            loadstring(game:HttpGet("https://raw.githubusercontent.com/marmfjjwjw223/DownGroud/main/DOWNGROUND"))()
        end
    }
)

Tab:AddButton(
    {
        Name = "Hold Block Spam",
        Callback = function()
            print("button pressed")
            getgenv().SpamSpeed = 10

            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam", true)
            )()
        end
    }
)
local Tab =
    Window:MakeTab(
    {
        Name = "Features",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local Section =
    Tab:AddSection(
    {
        Name = "Freeze"
    }
)
Tab:AddButton(
    {
        Name = "Lag Server (Keybind N)",
        Callback = function()
            print("button pressed")
            local UserInputService = game:GetService("UserInputService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local StarterGui = game:GetService("StarterGui")

            local sus = false

            local function toggleSus()
                sus = not sus
                if sus then
                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Freeze Spammer Enabled",
                            Text = "The Freeze Spammer is now enabled.",
                            Icon = "rbxassetid://15085662449", -- Replace with your icon asset ID
                            Duration = 1 -- Notification display duration (in seconds)
                        }
                    )
                    while sus do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Freeze"):FireServer()
                        wait(0)
                    end
                else
                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Lag Server Disabled",
                            Text = "The Lag Server is now disabled.",
                            Icon = "rbxassetid://15085662449", -- Replace with your icon asset ID
                            Duration = 1 -- Notification display duration (in seconds)
                        }
                    )
                end
            end

            UserInputService.InputBegan:Connect(
                function(input, gameProcessed)
                    if not gameProcessed and input.KeyCode == Enum.KeyCode.N then
                        toggleSus()
                    end
                end
            )
        end
    }
)
Tab:AddButton(
    {
        Name = "Spam Freeze (Keybind B)",
        Callback = function()
            print("button pressed")
            local UserInputService = game:GetService("UserInputService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local StarterGui = game:GetService("StarterGui")

            local sus = false

            local function toggleSus()
                sus = not sus
                if sus then
                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Freeze Spammer Enabled",
                            Text = "The Freeze Spammer is now enabled.",
                            Icon = "rbxassetid://15085662449", -- Replace with your icon asset ID
                            Duration = 1 -- Notification display duration (in seconds)
                        }
                    )
                    while sus do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Freeze"):FireServer()
                        wait(0.5)
                    end
                else
                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "Freeze Spammer Disabled",
                            Text = "The Freeze Spammer is now disabled.",
                            Icon = "rbxassetid://15085662449", -- Replace with your icon asset ID
                            Duration = 1 -- Notification display duration (in seconds)
                        }
                    )
                end
            end

            UserInputService.InputBegan:Connect(
                function(input, gameProcessed)
                    if not gameProcessed and input.KeyCode == Enum.KeyCode.B then
                        toggleSus()
                    end
                end
            )
        end
    }
)
Tab:AddButton(
    {
        Name = "Keyboard (For Toggle In Mobile)",
        Callback = function()
            print("button pressed")
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
        end
    }
)
local Section =
    Tab:AddSection(
    {
        Name = "Other"
    }
)
Tab:AddButton(
    {
        Name = "Fps Booster",
        Callback = function()
            print("button pressed")
            if not game:IsLoaded() then
                repeat
                    wait()
                until game:IsLoaded()
            end
            if hookfunction and setreadonly then
                local mt = getrawmetatable(game)
                local old = mt.__newindex
                setreadonly(mt, false)
                local sda
                sda =
                    hookfunction(
                    old,
                    function(t, k, v)
                        if k == "Material" then
                            if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then
                                v = Enum.Material.Plastic
                            end
                        elseif k == "TopSurface" then
                            v = "Smooth"
                        elseif
                            k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or
                                k == "WaterReflectance"
                         then
                            v = 0
                        elseif k == "WaterTransparency" then
                            v = 1
                        elseif k == "GlobalShadows" then
                            v = false
                        end
                        return sda(t, k, v)
                    end
                )
                setreadonly(mt, true)
            end
            local g = game
            local w = g.Workspace
            local l = g:GetService "Lighting"
            local t = w:WaitForChild "Terrain"
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 1
            l.GlobalShadows = false

            function change(v)
                pcall(
                    function()
                        if
                            v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and
                                v.Material ~= Enum.Material.ForceField
                         then
                            pcall(
                                function()
                                    v.Reflectance = 0
                                end
                            )
                            pcall(
                                function()
                                    v.Material = Enum.Material.Plastic
                                end
                            )
                            pcall(
                                function()
                                    v.TopSurface = "Smooth"
                                end
                            )
                        end
                    end
                )
            end

            game.DescendantAdded:Connect(
                function(v)
                    pcall(
                        function()
                            if v:IsA "Part" then
                                change(v)
                            elseif v:IsA "MeshPart" then
                                change(v)
                            elseif v:IsA "TrussPart" then
                                change(v)
                            elseif v:IsA "UnionOperation" then
                                change(v)
                            elseif v:IsA "CornerWedgePart" then
                                change(v)
                            elseif v:IsA "WedgePart" then
                                change(v)
                            end
                        end
                    )
                end
            )
            for i, v in pairs(game:GetDescendants()) do
                pcall(
                    function()
                        if v:IsA "Part" then
                            change(v)
                        elseif v:IsA "MeshPart" then
                            change(v)
                        elseif v:IsA "TrussPart" then
                            change(v)
                        elseif v:IsA "UnionOperation" then
                            change(v)
                        elseif v:IsA "CornerWedgePart" then
                            change(v)
                        elseif v:IsA "WedgePart" then
                            change(v)
                        end
                    end
                )
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Esp",
        Callback = function()
            print("button pressed")
            local FillColor = Color3.fromRGB(175, 25, 255)
            local DepthMode = "AlwaysOnTop"
            local FillTransparency = 0.5
            local OutlineColor = Color3.fromRGB(255, 255, 255)
            local OutlineTransparency = 0

            local CoreGui = game:FindService("CoreGui")
            local Players = game:FindService("Players")
            local lp = Players.LocalPlayer
            local connections = {}

            local Storage = Instance.new("Folder")
            Storage.Parent = CoreGui
            Storage.Name = "Highlight_Storage"

            local function Highlight(plr)
                local Highlight = Instance.new("Highlight")
                Highlight.Name = plr.Name
                Highlight.FillColor = FillColor
                Highlight.DepthMode = DepthMode
                Highlight.FillTransparency = FillTransparency
                Highlight.OutlineColor = OutlineColor
                Highlight.OutlineTransparency = 0
                Highlight.Parent = Storage

                local plrchar = plr.Character
                if plrchar then
                    Highlight.Adornee = plrchar
                end

                connections[plr] =
                    plr.CharacterAdded:Connect(
                    function(char)
                        Highlight.Adornee = char
                    end
                )
            end

            Players.PlayerAdded:Connect(Highlight)
            for i, v in next, Players:GetPlayers() do
                Highlight(v)
            end

            Players.PlayerRemoving:Connect(
                function(plr)
                    local plrname = plr.Name
                    if Storage[plrname] then
                        Storage[plrname]:Destroy()
                    end
                    if connections[plr] then
                        connections[plr]:Disconnect()
                    end
                end
            )
        end
    }
)
Tab:AddButton(
    {
        Name = "Anti Afk",
        Callback = function()
            print("button pressed")
            local VirtualUser = game:service "VirtualUser"
            game:service "Players".LocalPlayer.Idled:connect(
                function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                end
            )

            warn("Anti-Afk has Loaded")
        end
    }
)


local Section =
    Tab:AddSection(
    {
        Name = "Misc"
    }
)

local Tab =
    Window:MakeTab(
    {
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

Tab:AddButton(
    {
        Name = "Creator - Herin",
        Callback = function()
            print("button pressed")
        end
    }
)

Tab:AddButton(
    {
        Name = "Copy Discord Server Invite Link",
        Callback = function()
            print("button pressed")
            local inviteLink = "https://discord.com/invite/d6GUvZJT6w" -- Thay thế bằng liên kết máy chủ Discord thực tế của bạn
            setclipboard(inviteLink) -- Sao chép liên kết máy chủ Discord vào clipboard
            OrionLib:MakeNotification(
                {
                    Name = "Copied Invite Link",
                    Content = "Discord invite link copied to clipboard!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                }
            )
            
            -- Mở liên kết máy chủ Discord trong trình duyệt
            game:GetService("GuiService"):OpenBrowserWindow(inviteLink)
        end
    }
)
OrionLib:Init()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/M%3ABlade%20Ball%20Mechanism", true))(
)

    
