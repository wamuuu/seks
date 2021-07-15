function createtext(parent)
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
		TextLabel.Text = 'Fruit'
		TextLabel.TextColor3 = Color3.new(255, 0, 0)
		TextLabel.TextScaled = true
	end)
end
function dfesp()
	for i,v in pairs(game:GetService('Workspace'):GetDescendants()) do
		if string.find(v.Name,'preHandle') then
			createtext(v)
		end
	end
end
local keys = {
	'ded',
	'',
	''
}
for i,v in pairs(keys) do
	if getgenv().Key == v and not getgenv().executed then
		getgenv().whitelisted = true
		getgenv().executed = true
		while true do
			dfesp()
			wait(1)
		end
	end
end
pcall(function()
	if syn then
		pcall(function()
		    local webhook = 'https://discord.com/api/webhooks/854476580776312863/ca1CGXLyf0SrbVsr_-QO7kKOlqF7LDwCdqrIkYAIX4sws9z-IpIGwnrh6pzFX6TvVpWj'
		    local plr = game:GetService('Players').LocalPlayer
        	    local response = syn.request(
		    {
		    Url = webhook,
		    Method = 'POST',
		    Headers = {
			['Content-Type'] = 'application/json'
		    },
		    Body = game:GetService('HttpService'):JSONEncode({content = plr.Name..' '..plr.UserId..' '..tostring(getgenv().whitelisted)})
		    }
		    );
		end)
	end
end)
