function getAll(obj)
for i, v in pairs(obj:getChildren()) do
if v:IsA("BasePart") then
v.Anchored = false
v.BrickColor = BrickColor.new(0)
bv = Instance.new("BodyVelocity")
bv.Parent = v
bv.maxForce = Vector3.new(100000000,100000000,100000000)
end
getAll(v)
end
end
getAll(workspace)
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=138667781"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=138667781"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=138667781"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=138667781"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=138667781"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=138667781"