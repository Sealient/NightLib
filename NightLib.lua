-- NightlyUI Library
local NightlyUI = {}

-- Base UI Creation
function NightlyUI:CreateBaseUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Main Frame
    local mainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    MainFrame.BackgroundTransparency = 0.100
    MainFrame.BorderColor3 = Color3.fromRGB(112, 10, 240)
    MainFrame.Position = UDim2.new(0.343820214, 0, 0.0577200577, 0)
    MainFrame.Size = UDim2.new(0, 417, 0, 612)
    
    -- Add UI Gradient
    local uiGradient = Instance.new("UIGradient")
    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
    UIGradient_2.Parent = MainFrame

        -- Title TextLabel    
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = MainFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    TextLabel.BackgroundTransparency = 0.100
    TextLabel.BorderColor3 = Color3.fromRGB(112, 10, 240)
    TextLabel.Size = UDim2.new(0, 417, 0, 18)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "N     I     G     H     T     L     Y"
    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
    UIGradient.Parent = TextLabel

    -- Tabs Frame
    local TabsFrame = Instance.new("Frame")
    TabsFrame.Name = "TabsFrame"
    TabsFrame.Parent = MainFrame
    TabsFrame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    TabsFrame.BackgroundTransparency = 0.100
    TabsFrame.BorderColor3 = Color3.fromRGB(112, 10, 240)
    TabsFrame.Position = UDim2.new(0, 0, 0.0294117648, 0)
    TabsFrame.Size = UDim2.new(0, 417, 0, 29)
    
    UIListLayout.Parent = TabsFrame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local UIGradient_3 = Instance.new("UIGradient")
    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
    UIGradient_3.Parent = TabsFrame

    -- Content Background Frame
    local contentBackgroundFrame = Instance.new("Frame")
    ContentBackgroundFrame.Name = "ContentBackgroundFrame"
    ContentBackgroundFrame.Parent = MainFrame
    ContentBackgroundFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ContentBackgroundFrame.BackgroundTransparency = 0.100
    ContentBackgroundFrame.BorderColor3 = Color3.fromRGB(112, 10, 240)
    ContentBackgroundFrame.Position = UDim2.new(0.023980815, 0, 0.0980392173, 0)
    ContentBackgroundFrame.Size = UDim2.new(0, 398, 0, 541)
    
    local UIGradient_4 = Instance.new("UIGradient")
    UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
    UIGradient_4.Parent = ContentBackgroundFrame

    -- Save references for later use
    self.ScreenGui = ScreenGui
    self.MainFrame = mainFrame
    self.TabsFrame = tabsFrame
    self.ContentFrame = contentFrame
end

-- Tab Creation
function NightlyUI:CreateTab(tabName)
    local button = Instance.new("TextButton")
    button.Name = tabName .. "Button"
    button.Parent = game.StarterGui.ScreenGui.MainFrame.TabsFrame
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundTransparency = 1.000
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = UDim2.new(0.400479615, 0, 0, 0)
    button.Size = UDim2.new(0, 48, 0, 29)
    button.Font = Enum.Font.SourceSans
    button.TextColor3 = Color3.fromRGB(255, 0, 255)
    button.TextSize = 14.000

    -- Add interactivity (optional)
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(112, 10, 240)
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    end)

    -- Return button reference
    return button
end

-- Initialization
NightlyUI:CreateBaseUI()

-- Return library
return NightlyUI
