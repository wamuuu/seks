local keys = {
	'superded',
	'sverh_klevi_klich_Bs0JP8w2mDw5', -- danilgem228
	'465456' -- DragonPlanRafer
}
-- functions
local function cheat()
	local function createtext(parent)
		pcall(function()
			local BillboardGui = Instance.new("BillboardGui")
			local TextLabel = Instance.new("TextLabel")
			BillboardGui.Parent = parent
			BillboardGui.AlwaysOnTop = true
			BillboardGui.LightInfluence = 1
			BillboardGui.Size = UDim2.new(0, 50, 0, 50)
			BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
			TextLabel.Parent = BillboardGui
			TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
			TextLabel.BackgroundTransparency = 1
			TextLabel.Font = 'Gotham'
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Text = parent.Parent
			TextLabel.TextColor3 = Color3.new(255, 0, 0)
			TextLabel.TextScaled = true
		end)
	end
	for i,v in pairs(game:GetService('Workspace'):GetDescendants()) do
		if string.find(v.Name,'preHandle') then
			createtext(v)
		end
	end
end
-- check key
if table.find(keys,getgenv().key) then
	getgenv().executed = true
	spawn(function()
		while true do
			cheat()
			wait(25)
		end
	end)
end
--
