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
      Key = {"https://pastebin.com/raw/AtgzSPWK"} -- Danh sách các khóa sẽ được hệ thống chấp nhận, có thể là liên kết tệp RAW (pastebin, github, v.v.) hoặc các chuỗi đơn giản ("hello", "key22")
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

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	
	_G.infinJumpStarted = true
	
	
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Dropdown = MainTab:CreateDropdown({
   Name = "Select Area",
   Options = {"Starter World","Pirate Island","Pineapple Paradise"},
   CurrentOption = {"Starter World"},
   MultipleOptions = false,
   Flag = "dropdownarea", 
   Callback = function(Option)
        print(Option)
   end,
})

local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local OtherSection = MainTab:CreateSection("Other")

local Toggle = MainTab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        print("FARMING")
   end,
})

local TPTab = Window:CreateTab("🏝 Teleports", nil) -- Title, Image

local Button1 = TPTab:CreateButton({
   Name = "Starter Island",
   Callback = function()
        --Teleport1
   end,
})

local Button2 = TPTab:CreateButton({
   Name = "Pirate Island",
   Callback = function()
        --Teleport2
   end,
})

local Button3 = TPTab:CreateButton({
   Name = "Pineapple Paradise",
   Callback = function()
        --Teleport3
   end,
})

local TPTab = Window:CreateTab("🎲 Misc", nil) -- Title, Image