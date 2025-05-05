local Light = game:GetService("Lighting")

if _G.ShadersToggled then
    for _, v in ipairs(Light:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") then
            v:Destroy()
        end
    end

    Light.Brightness = 1.5
    Light.ExposureCompensation = 0
    Light.ClockTime = 17.30

    local Sky = Instance.new("Sky")
    Sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
    Sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
    Sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
    Sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
    Sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
    Sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
    Sky.StarCount = 5000
    Sky.SunAngularSize = 5
    Sky.Parent = Light

    local Bloom = Instance.new("BloomEffect")
    Bloom.Intensity = 0.3
    Bloom.Size = 10
    Bloom.Threshold = 0.8
    Bloom.Parent = Light

    local Blur = Instance.new("BlurEffect")
    Blur.Size = 5
    Blur.Parent = Light

    local ColorC = Instance.new("ColorCorrectionEffect")
    ColorC.Brightness = 0
    ColorC.Contrast = 0.1
    ColorC.Saturation = 0.25
    ColorC.TintColor = Color3.fromRGB(255, 255, 255)
    ColorC.Parent = Light

    local SunRays = Instance.new("SunRaysEffect")
    SunRays.Intensity = 0.1
    SunRays.Spread = 0.8
    SunRays.Parent = Light
else
    for _, v in ipairs(Light:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") then
            v:Destroy()
        end
    end

    Light.Brightness = 2
    Light.ExposureCompensation = 0
    Light.ClockTime = 14.5
end