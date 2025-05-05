local Light = game:GetService("Lighting")

_G._OriginalLightingSettings = _G._OriginalLightingSettings or nil
_G._OriginalSkyProps = _G._OriginalSkyProps or nil

if _G.ShadersToggled then
    if not _G._OriginalLightingSettings then
        _G._OriginalLightingSettings = {
            Brightness = Light.Brightness,
            ExposureCompensation = Light.ExposureCompensation,
            ClockTime = Light.ClockTime,
            Ambient = Light.Ambient,
            OutdoorAmbient = Light.OutdoorAmbient,
            ColorShift_Top = Light.ColorShift_Top,
            ColorShift_Bottom = Light.ColorShift_Bottom,
        }

        local currentSky = Light:FindFirstChildWhichIsA("Sky")
        if currentSky then
            _G._OriginalSkyProps = {
                SkyboxBk = currentSky.SkyboxBk,
                SkyboxDn = currentSky.SkyboxDn,
                SkyboxFt = currentSky.SkyboxFt,
                SkyboxLf = currentSky.SkyboxLf,
                SkyboxRt = currentSky.SkyboxRt,
                SkyboxUp = currentSky.SkyboxUp,
                StarCount = currentSky.StarCount,
                SunAngularSize = currentSky.SunAngularSize,
            }
        end
    end

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
    if _G._OriginalLightingSettings then
        local s = _G._OriginalLightingSettings
        Light.Brightness = s.Brightness
        Light.ExposureCompensation = s.ExposureCompensation
        Light.ClockTime = s.ClockTime
        Light.Ambient = s.Ambient
        Light.OutdoorAmbient = s.OutdoorAmbient
        Light.ColorShift_Top = s.ColorShift_Top
        Light.ColorShift_Bottom = s.ColorShift_Bottom
        _G._OriginalLightingSettings = nil
    end

    for _, v in ipairs(Light:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") then
            v:Destroy()
        end
    end

    if _G._OriginalSkyProps then
        local s = _G._OriginalSkyProps
        local Sky = Instance.new("Sky")
        Sky.SkyboxBk = s.SkyboxBk
        Sky.SkyboxDn = s.SkyboxDn
        Sky.SkyboxFt = s.SkyboxFt
        Sky.SkyboxLf = s.SkyboxLf
        Sky.SkyboxRt = s.SkyboxRt
        Sky.SkyboxUp = s.SkyboxUp
        Sky.StarCount = s.StarCount
        Sky.SunAngularSize = s.SunAngularSize
        Sky.Parent = Light
        _G._OriginalSkyProps = nil
    end
end
