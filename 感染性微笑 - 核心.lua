local Main_Lua = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
local Loaded_Main_Lua = loadstring(Main_Lua)()
local Window = Loaded_Main_Lua:CreateWindow({
    User = {
        Enabled = true,
        Callback = function()
            print("clicked")
        end,
        Anonymous = false,
    },
    Author = "感染性微笑",
    IconThemed = true,
    ScrollBarEnabled = true,
    Folder = "微笑",
    HideSearchBar = false,
    Title = "服务器",
    Transparent = true,
    SideBarWidth = 200,
    Theme = "Light",
    Icon = "moon",
    Size = UDim2.fromOffset(700,700),
})

Window:EditOpenButton({
    StrokeThickness = 4,
    Title = "打开", 
    Color = ColorSequence.new(Color3.fromHex("#9F88FF"), Color3.fromHex("#28004D")), --颜色渐变
    Draggable = true, --是否可拖动 是
    Icon = "moon", --悬浮球图标
    CornerRadius = UDim.new(1, 0), --圆角
    Size = UDim2.fromOffset(700,700),    
})

Window:Tag({
    Title = "V 1.0", --副标题
    Color = Color3.fromHex("#9F88FF"),
})

Window:Tag({
    Title = "Free", --副标题
    Color = Color3.fromHex("#28004D"),
})

local homeTab = Window:Tab({ --创建选择栏
    Title = "公告", --文本
    Icon = "home", --图标
})

homeTab:Paragraph({ --文字/图片栏
    Image = "moon", --创建图标
    Title = "猫猫的第一个服务器脚本", --副标题
    ImageSize = 68, --图片大小
    Desc = "qq群展示没有", --文本
})


local homeTab = Window:Tab({ --创建选择栏
    Title = "幸存者", --文本
    Icon = "home", --图标
})  

local Sectionh = homeTab:Section({
    Title = "攻击类",
    Opened = true,
})

Sectionh:Toggle({
    Value = false,
    Callback = function(value)
gj = value
while gj do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
 game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("SwingEvent"):FireServer()
end
task.wait(0)
end
    end,
    Title = "攻击",
    Desc = "痛苦😣",
})
 

Sectionh:Input({
    Callback = function(value)
        feedbackInput = value
    end,
    Placeholder = "范围",
    Title = "修改范围",
    Desc = "10",
})
      
    Sectionh:Button({
        Title = "修改范围",
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
        end
    })        

    Sectionh:Button({
        Title = "修改范围 针对长枪",
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
HighlightButton:Highlight()
        end
    })        
    
    Sectionh:Button({
        Title = "修改范围 针对瓶子/树枝",
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
HighlightButton:Highlight()
        end
    })            
    
    Sectionh:Button({
        Title = "武器去除后摇 - 循环",
        Icon = "", -- 隐藏图标
        Callback = function()
local hy = true
while hy do        
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Cooldown").Value = 0
task.wait(0)
end
        end
    })            
    
local Sectionhh = homeTab:Section({
    Title = "道具类",
    Opened = true,
})   
 
   Sectionhh:Button({
        Title = "修改透明",
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach").Transparency = 1
HighlightButton:Highlight()
        end
    })           
    
   Sectionhh:Button({
        Title = "修改透明 - 长矛",
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox").Transparency = 1
HighlightButton:Highlight()
        end
    })               
    
   Sectionhh:Button({
        Title = "修改透明 - 树枝/瓶子",
        Icon = "", -- 隐藏图标
        Callback = function()
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").Transparency = 1
HighlightButton:Highlight()
        end
    })               
    



local homeTab = Window:Tab({ --创建选择栏
    Title = "感染者", --文本
    Icon = "home", --图标
})    
    
homeTab:Input({
    Callback = function(value)
        ffffh = value
    end,
    Placeholder = "范围",
    Title = "修改长度",
    Desc = "10",
})

    homeTab:Button({
        Title = "修改修改长度",
        Icon = "", -- 隐藏图标
        Callback = function()
local selectionBox=Instance.new("SelectionBox")
selectionBox.Adornee=game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part")
selectionBox.Parent=game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part")
selectionBox.Color3=Color3.new(1,0,0)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):WaitForChild("Part").Size = Vector3.new(2,4,ffffh)
HighlightButton:Highlight()
        end
    })         
    
local homeTab = Window:Tab({ --创建选择栏
    Title = "其他", --文本
    Icon = "home", --图标
})        

local Sectionjb = homeTab:Section({
    Title = "拾取类",
    Opened = true,
})

   Sectionjb:Button({
        Title = "自动拾取金币 - 有可能会变成感染者 部分不支持",
        Icon = "", -- 隐藏图标
        Callback = function()
local jinbi = 0        
while jinbi == 0 do
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Map.System["Cargo Shipment"].CoinSpawnSystem.Coins.SmileCoin.CFrame
task.wait(1)
end

        end
    })                   
    
   Sectionjb:Button({
        Title = "自动拾取钥匙 - 掉落",
        Icon = "", -- 隐藏图标
        Callback = function()
local jinys = 0        
while jinys == 0 do
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Particles.Key.CFrame
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Particles.GreenKey.CFrame
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Particles.RedKey.CFrame
task.wait(1)
end
        end
    })                       
    
   Sectionjb:Button({
        Title = "自动拾取主武器 - 规定范围内",
        Icon = "", -- 隐藏图标
        Callback = function()
local toolsq = 0        
while toolsq == 0 do
local detector = workspace.Map.HumanBase.Vendor.BatCollection.ClickDetector
local detecto = workspace.Map.ConstantTerrain.BatCollection.ClickDetector
fireclickdetector(detector)
fireclickdetector(detecto)
task.wait(1)
end
        end
    })        
                   
   Sectionjb:Button({
        Title = "点击所有触发",
        Icon = "", -- 隐藏图标
        Callback = function()
-- Click all ClickDetectors in a model
local function clickAll(parent)
    for _, desc in ipairs(parent:GetDescendants()) do
        if desc:IsA("ClickDetector") then
            fireclickdetector(desc)
        end
    end
end

clickAll(workspace,Shop)
        end
    })                   
    
local homeTab = Window:Tab({ --创建选择栏
    Title = "透视", --文本
    Icon = "home", --图标
})            

local uiTab = Window:Tab({ --创建选择栏
    Title = "ui", --文本
    Icon = "home", --图标
})            

uiTab:Dropdown({
    Value = "Light",
    Callback = function(value)
        Loaded_Main_Lua:SetTheme(value)
    end,
    Title = "选择主题",
    Values = {"Dark", "Light", "Rose", "Plant", "Red", "Indigo", "Sky", "Violet", "Amber", "Emerald", "Midnight", "Crimson", "MonokaiPro", "CottonCandy", "Rainbow"},
})

uiTab:Button({
    Title = "销毁窗口",
    Callback = function()
        Window:Destroy()
    end,
})
