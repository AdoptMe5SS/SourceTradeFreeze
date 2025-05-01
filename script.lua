local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- UI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 200) -- Ukuran diperkecil
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

-- Rounded Corners
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

-- Orange Border
local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 4  
UIStroke.Color = Color3.fromRGB(173, 216, 230) -- Warna oranye
UIStroke.Parent = Frame

-- Title Text
local TitleText = Instance.new("TextLabel")
TitleText.Text = "Trade Scam"
TitleText.Size = UDim2.new(1, 0, 0, 30)
TitleText.Position = UDim2.new(0, 0, 0, 5)
TitleText.BackgroundTransparency = 1
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.Font = Enum.Font.GothamBold
TitleText.TextSize = 16
TitleText.Parent = Frame

-- Input Box (Digeser ke tengah atas UI)
local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0, 40)
TextBox.Position = UDim2.new(0.1, 0, 0.3, 0) -- Posisi sedikit lebih ke tengah
TextBox.PlaceholderText = "Username"
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 14
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 8)
UICorner2.Parent = TextBox

-- Spawn Button (Diposisikan tepat di bawah input box)
local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.8, 0, 0, 40)
Button.Position = UDim2.new(0.1, 0, 0.55, 0) -- Posisinya sejajar dengan input box
Button.Text = "Frezze"
Button.BackgroundColor3 = Color3.fromRGB(173, 216, 230) -- Warna oranye
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 14
Button.Parent = Frame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 8)
UICorner3.Parent = Button

-- Feedback Text
local Feedback = Instance.new("TextLabel")
Feedback.Size = UDim2.new(1, 0, 0, 30)
Feedback.Position = UDim2.new(0, 0, 0.8, 0) -- Sedikit dinaikkan agar terlihat lebih rapi
Feedback.BackgroundTransparency = 1
Feedback.Text = ""
Feedback.TextColor3 = Color3.fromRGB(255, 255, 255)
Feedback.Font = Enum.Font.Gotham
Feedback.TextSize = 14
Feedback.Parent = Frame

-- By HiraHub Text (DITAMBAHKAN DI SINI)
local HiraHubText = Instance.new("TextLabel")
HiraHubText.Size = UDim2.new(1, 0, 0, 20)
HiraHubText.Position = UDim2.new(0, 0, 0.92, 0) -- Posisi di bawah feedback
HiraHubText.BackgroundTransparency = 1
HiraHubText.Text = "By HiraHub"
HiraHubText.TextColor3 = Color3.fromRGB(173, 216, 230) -- Warna oranye
HiraHubText.Font = Enum.Font.GothamBold
HiraHubText.TextSize = 12
HiraHubText.Parent = Frame

-- BUTTON CLICK EVENT
Button.MouseButton1Click:Connect(function()
    local username = TextBox.Text

    if username == "" then
        Feedback.Text = "❌ Please enter the username first!"
        Feedback.TextColor3 = Color3.fromRGB(255, 0, 0)
    else
        Feedback.Text = "Success!"
        Feedback.TextColor3 = Color3.fromRGB(0, 255, 0)

        -- Notifikasi muncul
        game.StarterGui:SetCore("SendNotification", {
            Title = "Successfully!";
            Text = "✅ Freeze " .. username .. " trade!";
            Duration = 3;
        })
    end
end)
