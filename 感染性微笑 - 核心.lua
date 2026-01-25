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
    Folder = "作者 3262703519",
    HideSearchBar = false,
    Title = "感染性微笑",
    Transparent = true,
    SideBarWidth = 200,
    Theme = "Dark",
    Icon = "moon",
    Size = UDim2.fromOffset(700,700),
})

Window:EditOpenButton({
    StrokeThickness = 1,
    Title = "打开", 
    Color = ColorSequence.new(Color3.fromHex("#0000C6"), Color3.fromHex("#FF00FF")), --颜色渐变
    Draggable = true, --是否可拖动 是
    Icon = "crown", --悬浮球图标
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

homeTab:Section({
    Title = "公告",
    TextSize = 30,
})

homeTab:Paragraph({ --文字/图片栏
    Image = "moon", --创建图标
    Title = "增加了美化音效功能", --副标题
    ImageSize = 68, --图片大小
    Desc = "作者qq3262703519\n快手号xiaomaonbnb666", --文本
})


local homeTab = Window:Tab({ --创建选择栏
    Title = "幸存者", --文本
    Icon = "home", --图标
})  

homeTab:Section({
    Title = "幸存者",
    TextSize = 30,
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
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
    end,
    Title = "攻击",
    Desc = "循环攻击",
})
 

Sectionh:Input({
    Callback = function(value)
        feedbackInput = value
    end,
    Placeholder = "范围",
    Title = "修改范围",
    Desc = "10",
})
      
Sectionh:Toggle({
    Value = false,
    Callback = function(value1)
    fw1 = value1
        while fw1 do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
    local selBox = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach"):FindFirstChildOfClass("SelectionBox") or Instance.new("SelectionBox")
    selBox.Adornee = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
    selBox.Parent = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach")
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("BodyAttach").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)

end    
 task.wait(0)       
        end
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })                 
    end,
    Title = "修改范围 木棒/武士刀",
    Desc = "取消后摇",
})

Sectionh:Toggle({
    Value = false,
    Callback = function(value2)
    fw2 = value2
        while fw2 do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
    local selBox = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox"):FindFirstChildOfClass("SelectionBox") or Instance.new("SelectionBox")
    selBox.Adornee = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
    selBox.Parent = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox")
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Hitbox").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
end    
   task.wait(0)     
        end
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })                 
    end,
    Title = "修改范围 长枪",
    Desc = "修改范围",
})
    
Sectionh:Toggle({
    Value = false,
    Callback = function(value3)
    fw3 = value3
        while fw3 do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
    local selBox = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle"):FindFirstChildOfClass("SelectionBox") or Instance.new("SelectionBox")
    selBox.Adornee = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
    selBox.Parent = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle")
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").Size = Vector3.new(feedbackInput,feedbackInput,feedbackInput)
end    
  task.wait(0)      
        end
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })                 
    end,
    Title = "修改范围 树枝/瓶子",
    Desc = "修改范围",
})
    

Sectionh:Toggle({
    Value = false,
    Callback = function(value)
hy = value
while hy do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
 game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Cooldown").Value = 0
end
task.wait(0)
end
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
    end,
    Title = "武器取消后摇",
    Desc = "取消后摇",
})
    
local Sectionhh = homeTab:Section({
    Title = "道具类",
    Opened = true,
})   
 
Sectionhh:Toggle({
    Value = false,
    Callback = function(value)
yc = value
while yc do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
 game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("MeshPart").Transparency = 1
end
task.wait(0)
end
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
    end,
    Title = "武器透明",
    Desc = "透明",
})

local homeTab = Window:Tab({ --创建选择栏
    Title = "感染者", --文本
    Icon = "home", --图标
})    

homeTab:Section({
    Title = "感染者",
    TextSize = 30,
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

homeTab:Section({
    Title = "其他",
    TextSize = 30,
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
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
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
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
        end
    })                       
    
    Sectionjb:Toggle({
        Title = "自动拾取",
        Desc = "自动支取主武器",
        Value = false,
        Callback = function(value) 
            sq = value
            while sq do
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
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
        end
    })                   
    
   homeTab:Button({
        Title = "删除白光 - 部分不支持",
        Icon = "", -- 隐藏图标
        Callback = function()
targetName = "Infectors"
for _,obj in workspace.Map.System:GetDescendants()do
    if obj.Name == targetName then
         obj:Destroy()
 Loaded_Main_Lua:Notify({ -- 显示通知
  Title = "提示",
  Content = "开启成功！",
   --Icon = "solar:bell-bold", -- 隐藏图标（注释）
   Duration = 1, -- 显示时长：5秒
  CanClose = false, -- 能否手动关闭：否
   })         
    end
end
   end
    })            
    
local homeTab = Window:Tab({ --创建选择栏
    Title = "范围配置", --文本
    Icon = "home", --图标
})            

    homeTab:Colorpicker({
        Flag = "ColorpickerTest", -- 配置标识（用于保存/加载）
        Title = "范围颜色",
        Desc = "颜色选择器",
        Default = Color3.fromRGB(0, 255, 0), -- 默认颜色：绿色
        Transparency = 0, -- 透明度：0
        Locked = false, -- 锁定：否
        Callback = function(color) -- 选择回调（打印颜色）
            print("背景颜色：" .. tostring(color))
        end
    })
    
local homeTab = Window:Tab({ --创建选择栏
    Title = "美化", --文本
    Icon = "home", --图标
})            

homeTab:Input({
    Callback = function(value)
        sound = value
    end,
    Placeholder = "输入音效/音乐 ID",
    Title = "美化攻击音效",
    Desc = "用于攻击发出声音而修改",
})

homeTab:Toggle({
    Value = false,
    Callback = function(value)
meihua = value
while meihua do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
 game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("MeshPart"):WaitForChild("Smack").SoundId = "rbxassetid://"..sound
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("MeshPart"):WaitForChild("Woosh").SoundId = "rbxassetid://"..sound
end
task.wait(1)
end 
    end,
    Title = "美化攻击音效",
    Desc = "修改音效",
})
local uiTab = Window:Tab({ --创建选择栏
    Title = "ui", --文本
    Icon = "home", --图标
})            

uiTab:Dropdown({
    Value = "Dark",
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
