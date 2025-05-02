local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/notif_lib.lua"))()

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1 
    sound:Play()
end

-- StarterGui.ScreenGui
local screengui = Instance.new("ScreenGui", game:GetService("CoreGui"));
screengui["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.ScreenGui.Frame
local frame = Instance.new("Frame", screengui);
frame["BorderSizePixel"] = 0;
frame["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
frame["Size"] = UDim2.new(0, 500, 0, 272);
frame["Position"] = UDim2.new(0.5, 0, 0.5, 0);
frame["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.ScreenGui.Frame.closebutton
local closeButton = Instance.new("TextButton", frame)
closeButton.Name = "closebutton"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextScaled = true
closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.ZIndex = 5

-- StarterGui.ScreenGui.Frame.infoButton
local infoButton = Instance.new("TextButton", frame)
infoButton.Name = "infoButton"
infoButton.Size = UDim2.new(0, 30, 0, 30)
infoButton.Position = UDim2.new(0, 5, 0, 5) -- Top-left corner
infoButton.BackgroundTransparency = 1
infoButton.Text = "?"
infoButton.TextScaled = true
infoButton.TextColor3 = Color3.fromRGB(0, 0, 0)
infoButton.Font = Enum.Font.SourceSansBold
infoButton.ZIndex = 5

-- StarterGui.ScreenGui.Frame.ImageLabel
local imagelabel = Instance.new("ImageLabel", frame);
imagelabel["BorderSizePixel"] = 0;
imagelabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
imagelabel["Image"] = [[rbxassetid://99301557478296]];
imagelabel["Size"] = UDim2.new(1, 0, 0, 73);
imagelabel["BorderColor3"] = Color3.fromRGB(0, 0, 0);
imagelabel["Position"] = UDim2.new(0, 0, 0.74299, 0);

-- StarterGui.ScreenGui.Frame.title
local title = Instance.new("TextLabel", frame);
title["BorderSizePixel"] = 0;
title["BackgroundColor3"] = Color3.fromRGB(207, 48, 43);
title["TextSize"] = 46;
title["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
title["TextColor3"] = Color3.fromRGB(0, 0, 0);
title["Size"] = UDim2.new(1, 0, 0, 50);
title["BorderColor3"] = Color3.fromRGB(0, 0, 0);
title["Text"] = [[TALENTLESS]];
title["Name"] = [[title]];

-- StarterGui.ScreenGui.Frame.ImageLabel.UICorner
local uic1 = Instance.new("UICorner", imagelabel);
uic1["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.Frame.UICorner
local uic2 = Instance.new("UICorner", frame);
uic2["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.Frame.title.UICorner
local uic3 = Instance.new("UICorner", title);
uic3["CornerRadius"] = UDim.new(0, 4);

local categoriesFrame = Instance.new("ScrollingFrame", frame);
categoriesFrame["Active"] = true;
categoriesFrame["ZIndex"] = 0;
categoriesFrame["BorderSizePixel"] = 0;
categoriesFrame["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
categoriesFrame["Name"] = [[categoriesFrame]];
categoriesFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
categoriesFrame["Size"] = UDim2.new(0, 150, 0, 152);
categoriesFrame["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
categoriesFrame["Position"] = UDim2.new(0.00242, 0, 0.18382, 0);
categoriesFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0);

local categoriesLayout = Instance.new("UIListLayout", categoriesFrame)
categoriesLayout.SortOrder = Enum.SortOrder.LayoutOrder
categoriesLayout.Padding = UDim.new(0, 10)

local categoriesPadding = Instance.new("UIPadding", categoriesFrame)
categoriesPadding.PaddingTop = UDim.new(0, 5)
categoriesPadding.PaddingLeft = UDim.new(0, 5)
categoriesPadding.PaddingRight = UDim.new(0, 5)

local bar = Instance.new("ScrollingFrame", frame);
bar["Active"] = true;
bar["ZIndex"] = 0;
bar["BorderSizePixel"] = 0;
bar["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
bar["Name"] = [[scrolltab]];
bar["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
bar["Size"] = UDim2.new(0, 160, 0, 152);
bar["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
bar["Position"] = UDim2.new(1, -173, 0.18382, 0);
bar["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.talentles.Frame.scrolltab.songname
local songname = Instance.new("TextLabel", bar);
songname["TextWrapped"] = true;
songname["ZIndex"] = -5;
songname["BorderSizePixel"] = 4;
songname["TextScaled"] = true;
songname["BackgroundColor3"] = Color3.fromRGB(207, 48, 43);
songname["TextSize"] = 23;
songname["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
songname["TextColor3"] = Color3.fromRGB(255, 255, 255);
songname["Size"] = UDim2.new(0, 125, 0, 34);
songname["BorderColor3"] = Color3.fromRGB(0, 0, 0);
songname["Text"] = [[SONG NAME]];
songname["Name"] = [[songname]];
songname["Position"] = UDim2.new(0.06891, 0, 0.08553, 0);

-- StarterGui.talentles.Frame.scrolltab.bpm
local bpmbox = Instance.new("TextBox", bar);
bpmbox["CursorPosition"] = -1;
bpmbox["TextColor3"] = Color3.fromRGB(0, 0, 0);
bpmbox["PlaceholderColor3"] = Color3.fromRGB(72, 72, 72);
bpmbox["BorderSizePixel"] = 0;
bpmbox["TextWrapped"] = true;
bpmbox["TextSize"] = 14;
bpmbox["Name"] = [[bpmbox]];
bpmbox["TextScaled"] = true;
bpmbox["BackgroundColor3"] = Color3.fromRGB(176, 176, 176);
bpmbox["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
bpmbox["PlaceholderText"] = [[bpm]];
bpmbox["Size"] = UDim2.new(0, 90, 0, 20);
bpmbox["Position"] = UDim2.new(0.1631, 0, 0.6127, 0);
bpmbox["BorderColor3"] = Color3.fromRGB(0, 0, 0);
bpmbox["Text"] = [[]];

-- StarterGui.talentles.Frame.scrolltab.play
local playsong = Instance.new("TextButton", bar);
playsong["BorderSizePixel"] = 0;
playsong["TextSize"] = 25;
playsong["TextColor3"] = Color3.fromRGB(0, 0, 0);
playsong["BackgroundColor3"] = Color3.fromRGB(108, 108, 108);
playsong["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
playsong["Size"] = UDim2.new(0, 125, 0, 27);
playsong["Name"] = [[play]];
playsong["BorderColor3"] = Color3.fromRGB(0, 0, 0);
playsong["Text"] = [[play song !]];
playsong["Position"] = UDim2.new(0.06891, 0, 0.38816, 0);

local scroll = Instance.new("ScrollingFrame", frame);
scroll["Active"] = true;
scroll["BorderSizePixel"] = 0;
scroll["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
scroll["HorizontalScrollBarInset"] = Enum.ScrollBarInset.Always;
scroll["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
scroll["Size"] = UDim2.new(0, 220, 0, 152); 
scroll["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
scroll["Position"] = UDim2.new(0.21666, 0, 0.18382, 0);
scroll["BorderColor3"] = Color3.fromRGB(0, 0, 0);

local listLayout = Instance.new("UIListLayout", scroll)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 20)
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local padding = Instance.new("UIPadding", scroll)
padding.PaddingTop = UDim.new(0, 20)

-- StarterGui.ScreenGui.Frame.scrolltab.searchbar
local searchbar = Instance.new("TextBox", scroll);
searchbar["CursorPosition"] = -1;
searchbar["TextColor3"] = Color3.fromRGB(0, 0, 0);
searchbar["PlaceholderColor3"] = Color3.fromRGB(72, 72, 72);
searchbar["BorderSizePixel"] = 0;
searchbar["TextWrapped"] = true;
searchbar["TextSize"] = 14;
searchbar["Name"] = [[searchbar]];
searchbar["TextScaled"] = true;
searchbar["BackgroundColor3"] = Color3.fromRGB(176, 176, 176);
searchbar["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
searchbar["PlaceholderText"] = [[Search...]];
searchbar["Size"] = UDim2.new(0, 150, 0, 20);
searchbar["Position"] = UDim2.new(0.1631, 0, 0.05, 0);
searchbar["BorderColor3"] = Color3.fromRGB(0, 0, 0);
searchbar["Text"] = [[]];

-- StarterGui.ScreenGui.Frame.creds
local creds = Instance.new("TextLabel", frame);
creds["TextWrapped"] = true;
creds["BorderSizePixel"] = 0;
creds["TextTransparency"] = 0.32;
creds["TextScaled"] = true;
creds["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
creds["TextSize"] = 14;
creds["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
creds["TextColor3"] = Color3.fromRGB(255, 254, 255);
creds["BackgroundTransparency"] = 1;
creds["Size"] = UDim2.new(0, 314, 0, 26);
creds["BorderColor3"] = Color3.fromRGB(0, 0, 0);
creds["Text"] = [[piano autoplayer by hellohellohell012321]];
creds["Name"] = [[creds]];
creds["Position"] = UDim2.new(0.5, 0, 0.19, 0);
creds["AnchorPoint"] = Vector2.new(0.5, 0.5)

local function filterSongs(query)
    query = query:lower() 
    for _, button in pairs(scroll:GetChildren()) do
        if button:IsA("TextButton") and button.Name ~= "PLAYALL" then
            local songName = button.Text:lower()
            local alternateNamesStr = button:GetAttribute("AlternateNames") or ""
            local alternateNames = alternateNamesStr:split(",") 
            local matchFound = false

            if songName:find(query) then
                matchFound = true
            else
                for _, altName in pairs(alternateNames) do
                    if altName:lower():find(query) then
                        matchFound = true
                        break
                    end
                end
            end
            button.Visible = matchFound or query == ""
        end
    end
end

searchbar:GetPropertyChangedSignal("Text"):Connect(function()
    filterSongs(searchbar.Text)
end)

filterSongs("")



-- drag script (not mince)



local UserInputService = game:GetService("UserInputService")

local gui = frame

local dragging
local dragInput
local dragStart
local startPos
	
local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
	
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
	
gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
	
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
end
end)



-- RGB button (not mine)

coroutine.wrap(function()

while wait() do
	playsong.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
	for i = 0,255,10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
	end
	for i = 255,0,-10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
	end
	for i = 0,255,10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
	end
	for i = 255,0,-10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
	end
	for i = 0,255,10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
	end
	for i = 255,0,-10 do
		wait()
		playsong.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
	end
end

end)()



local function newSongButton(name, textsize, alternateNames)
    local button = Instance.new("TextButton")
    button.Parent = scroll
    button.BorderSizePixel = 4
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
    button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    button.Size = UDim2.new(0, 175, 0, 35)
    button.BorderColor3 = Color3.fromRGB(207, 48, 43)
    button.TextSize = tonumber(textsize)
    button.Name = name
    button.Text = name

    button:SetAttribute("AlternateNames", table.concat(alternateNames or {}, ","))

    return button
end



-- newSongButton("", 27, {})

PLAYALL = newSongButton("LOOP ALL SONGS", 27, {})
LOOPRANDOM = newSongButton("SHUFFLE PLAY SONGS", 22, {})
PLAYRANDOM = newSongButton("PLAY A RANDOM SONG", 22, {})

local seperator = Instance.new("Frame")
seperator.Parent = scroll -- Make sure 'scroll' exists
seperator.BackgroundColor3 = Color3.fromRGB(207, 48, 43)
seperator.Size = UDim2.new(0, 200, 0, 8)

if game.Players.LocalPlayer.Name == "4BCQA" or game.Players.LocalPlayer.Name == "fredoggins" then
    AVRIL_14 = newSongButton("AVRIL 14", 27, {})
else end

ALL_MY_FELLAS = newSongButton("ALL MY FELLAS", 27, {"meme", "popular"})
ENIGMATIC = newSongButton("AN ENIGMATIC ENCOUNTER", 17, {"video game", "epic", "undertale"})
ANOTHER_LOVE = newSongButton("ANOTHER LOVE", 27, {"sad, love"})
ARIA_MATH = newSongButton("ARIA MATH", 27, {"minecraft", "c418"})
ASGORE = newSongButton("ASGORE", 27, {"undertale", "video game"})
SPEED_OF = newSongButton("AT THE SPEED OF LIGHT", 20, {"geometry dash", "video game"})
A_THOUSAND = newSongButton("A THOUSAND MILES", 24, {"popular"})
AVENGERS = newSongButton("AVENGERS (EPIC COVER)", 20, {"epic", "popular", "movie", "hard"})
BAD_APPLE = newSongButton("BAD APPLE!!", 27, {"anime", "popular"})
BAD_PIGGIES = newSongButton("BAD PIGGIES", 27, {"meme", "popular", "video game"})
BATTLE_AGAINST = newSongButton("BATTLE AGAINST A TRUE HERO", 15, {"video game", "undertale"})
BEETHOVEN_VIRUS = newSongButton("BEETHOVEN VIRUS", 24, {"beethoven", "popular", "epic", "hard"})
BREADY = newSongButton("BREADY, SET, GO!", 25, {"video game", "omori"})
BY_YOUR_SIDE = newSongButton("BY YOUR SIDE", 27, {"video game", "omori"})
CANON_D = newSongButton("CANON IN D", 27, {""})
CAN_YOU_HEAR = newSongButton("CAN YOU HEAR THE MUSIC", 18, {"cinematic", "hans zimmer", "oppenheimer", "movie", "popular", "epic"})
CARELESS = newSongButton("CARELESS WHISPER", 24, {"love", "meme", "popular"})
COCONUT = newSongButton("COCONUT MALL !!", 27, {"video game", "meme", "popular"})
CRADLES = newSongButton("CRADLES", 27, {"popular", "ncs"})
CUPID = newSongButton("CUPID", 27, {"love"})
DESPACITO = newSongButton("DESPACITO", 27, {""})
DOG_SONG = newSongButton("DOG SONG", 27, {"video game", "undertale"})
DONT_STOP = newSongButton("DONT STOP BELIEVIN'", 21, {"journey"})
DRAMAM = newSongButton("DRAMAMIME", 27, {"flawed mangoes"})
DREAM_ON = newSongButton("DREAM ON", 27, {"aerosmith"})
DROWNING_LOVE = newSongButton("DROWNING LOVE", 27, {"epic"})
DRY_HANDS = newSongButton("DRY HANDS", 27, {"video games", "minecraft", "c418"})
DIE_WITH = newSongButton("DIE WITH A SMILE", 27, {"popular", "bruno mars"})
EASY_ON_ME = newSongButton("EASY ON ME", 27, {"adele"})
EXPERIENCE = newSongButton("EXPERIENCE", 27, {"cinematic", "love", "epic"})
FADED = newSongButton("FADED", 27, {"popular", "ncs", "sad", "alan walker"})
FANTAISIE = newSongButton("FANTAISIE IMPROMPTU", 20, {"classic", "chopin", "hard"})
FALLEN_DOWN = newSongButton("FALLEN DOWN", 27, {"video game", "popular", "undertale"})
FINAL_DUET = newSongButton("FINAL DUET", 27, {"omori", "sad"})
FINALE = newSongButton("FINALE", 27, {"video game", "undertale"})
FREEDOM_DIVE = newSongButton("FREEDOM DIVE", 27, {"xi"})
FR = newSongButton("FROM THE START", 25, {"laufey", "love", "popular"})
FUR_ELISE = newSongButton("FUR ELISE", 27, {"beethoven", "classical"})
GIORNO = newSongButton("GIORNO'S THEME", 27, {"meme", "popular"})
GIVE_UP = newSongButton("NEVER GONNA GIVE YOU UP", 17, {"popular", "meme"})
GOLDENHOUR = newSongButton("GOLDEN HOUR", 27, {"jvke", "love, sad", "popular"})
GOOD_MORNING = newSongButton("GOOD MORNING (OMORI)", 18, {"video game", "omori"})
HAGGSTORM = newSongButton("HAGGSTORM", 27, {"video games", "minecraft", "c418"})
HEARTACHE = newSongButton("HEARTACHE", 27, {"video game", "undertale"})
HELLO = newSongButton("HELLO X I LOVE YOU", 26, {"meme", "omfg"})
HIS_THEME = newSongButton("HIS THEME", 27, {"video game", "undertale"})
HIT_THE_ROAD = newSongButton("HIT THE ROAD, JACK", 24, {"shake"})
HOPES_DREAMS = newSongButton("HOPES AND DREAMS", 23, {"video game", "undertale", "asriel"})
HOWLS_MOVING_CASTLE = newSongButton("HOWLS MOVING CASTLE", 20, {"anime", "movie", "cinematic", "popular", "japan"})
HUNGARIAN = newSongButton("HUNGARIAN DANCE", 23, {})
IDGAF = newSongButton("IDGAF", 27, {"boywithuke", "blackbear"})
IDOL = newSongButton("IDOL", 27, {"anime", "oshi no ko", "yoasobi", "japan"})
IF_I_AM_WITH_YOU = newSongButton("IF I AM WITH YOU", 27, {"anime", "jjk", "jujitsu", "hollow purple", "japan"})
IM_STILL = newSongButton("IM STILL STANDING", 26, {"epic", "popular"})
INTERSTELLAR = newSongButton("INTERSTELLAR", 27, {"hans zimmer", "cinematic", "movie", "popular", "epic"})
ISABELLA = newSongButton("ISABELLA'S LULLABY", 24, {"video game"})
IT_MEANS = newSongButton("IT MEANS EVERYTHING", 20, {"video game", "omori"})
I_WANT = newSongButton("I WANT IT THAT WAY", 24, {"love", "popular"})
SURVIVE = newSongButton("I WILL SURVIVE", 27, {""})
KARA = newSongButton("KARA MAIN THEME", 26, {"video game", "detroit become human", "sad"})
KEROSENE = newSongButton("KEROSENE", 27, {"popular", "sad"})
KEY = newSongButton("KEY", 27, {"video games", "minecraft", "c418"})
LA_CAMPANELLA = newSongButton("LA CAMPANELLA", 27, {"etude", "classic", "hard", "liszt"})
LACRIMOSA = newSongButton("LACRIMOSA - REQUIEM", 22, {"mozart", "noot noot"})
LIVING_MICE = newSongButton("LIVING MICE", 27, {"video games", "minecraft", "c418"})
LOST_LIBRARY = newSongButton("LOST LIBRARY", 27, {"video game", "omori"})
LOST_UMB = newSongButton("LOST UMBRELLA", 27, {"cute depressed", "vocaloid"})
LOVELY_B = newSongButton("LOVELY BASTARDS", 27, {"phonk"})
MARI_BOSS = newSongButton("MARI BOSS FIGHT", 25, {"video game", "omori"})
MARRIED = newSongButton("MARRIED LIFE", 27, {"love", "movie", "popular"})
MEGALOVANIA = newSongButton("MEGALOVANIA", 27, {"video game", "meme", "popular", "undertale"})
METAMORPH = newSongButton("METAMORPHOSIS", 27, {"phonk"})
MICE_ON = newSongButton("MICE ON VENUS", 27, {"video games", "minecraft", "c418"})
MII = newSongButton("MII CHANNEL THEME", 24, {"wii"})
MIKU = newSongButton("MIKU", 27, {"anime", "vocaloid", "japan"})
MINECRAFT = newSongButton("MINECRAFT", 27, {"video games", "minecraft", "c418"})
MOOG_CITY = newSongButton("MOOG CITY", 27, {"video games", "minecraft", "c418"})
MOONLIGHT = newSongButton("MOONLIGHT SONATA - FIRST MOVEMENT", 10, {"classic", "beethoven", "popular"})
M3 = newSongButton("MOONLIGHT SONATA - THIRD MOVEMENT", 10, {"classic", "beethoven", "popular", "epic", "hard"})
NEVER_MEANT = newSongButton("NEVER MEANT TO BELONG", 18, {"popular", "sad", "anime"})
NOCTURNE = newSongButton("NOCTURNE", 27, {"chopin", "classic"})
NOT_A_SLACKER = newSongButton("NOT A SLACKER ANYMORE", 18, {"video game", "undertale"})
NYEH = newSongButton("NYEH HEH HEH!", 27, {"video game", "undertale", "papyrus"})
ONCE_UPON = newSongButton("ONCE UPON A TIME", 26, {"video game", "undertale"})
RACING_INTO = newSongButton("RACING INTO THE NIGHT", 20, {"anime", "yoasobi", "japan", "sad"})
RATDANCE = newSongButton("RAT DANCE", 27, {"chess", "meme", "popular"})
RIVER_FLOWS = newSongButton("RIVER FLOWS IN YOU", 24, {"popular"})
ROMANTIC_HOMICIDE = newSongButton("ROMANTIC HOMICIDE", 23, {"sad", "love"})
RUNAWAY = newSongButton("RUNAWAY", 27, {"kanye", "popular", "rap", "hip"})
RUSHE = newSongButton("RUSH E", 27, {"meme", "popular"})
SHOP = newSongButton("SHOP", 27, {"video game", "undertale"})
SICK_OF_U = newSongButton("SICK OF U", 27, {"boywithuke"})
SKYFALL = newSongButton("SKYFALL", 27, {"adele"})
SNOWY = newSongButton("SNOWY", 27, {"video game", "undertale"})
SOLAS = newSongButton("SOLAS", 27, {"sad", "epic"})
SPEAR_OF = newSongButton("SPEAR OF JUSTICE", 26, {"video game", "undertale"})
SPIDER_DANCE = newSongButton("SPIDER DANCE", 27, {"video game", "undertale", "muffet"})
STAY = newSongButton("STAY", 27, {"justin bieber", "kid laroi"})
SUBWOOFER = newSongButton("SUBWOOFER LULLABY", 20, {"video games", "minecraft", "c418"})
SUGAR_PLUM = newSongButton("DANCE OF THE SUGAR PLUM FAIRY", 13, {"christmas", "hard", "classic"})
SUPER_MARIOS = newSongButton("SUPER MARIO BROS", 23, {""})
SWEATER_WEATHER = newSongButton("SWEATER WEATHER", 23, {"the neighbourhood", "sad", "love", "popular"})
SWIMMING = newSongButton("SWIMMING", 27, {"flawed mangoes", "dramamime"})
SWEDEN = newSongButton("SWEDEN", 27, {"video games", "minecraft", "c418"})
THE_ENTERTAINER = newSongButton("THE ENTERTAINER", 25, {})
THICK_OF_IT = newSongButton("THICK OF IT", 27, {"nigga", "ksi", "shit", "popular", "meme"})
TOXIC = newSongButton("TOXIC (BOYWITHUKE)", 22, {""})
TRAP_R = newSongButton("TRAP ROYALTY", 27, {"fetty wap"})
TURKISH = newSongButton("TURKISH MARCH", 27, {"mozart", "rondo alla turca"})
UNDERSTAND = newSongButton("UNDERSTAND", 27, {"boywithuke"})
UNDERTALE = newSongButton("UNDERTALE", 27, {"video game", "undertale"})
UNDERWATER = newSongButton("UNDERWATER PROM QUEENS", 14, {"video game", "omori"})
UNRAVEL = newSongButton("UNRAVEL", 27, {"anime", "jpop", "japan"})
VIVA_LA_VIDA = newSongButton("VIVA LA VIDA", 27, {"epic", "popular", "coldplay"})
WE_DONT = newSongButton("WE DONT TALK ABOUT BRUNO", 14, {"encanto"})
WET_HANDS = newSongButton("WET HANDS", 27, {"video games", "minecraft", "c418"})
WHERE_WE = newSongButton("WHERE WE PLAYED", 25, {"video game", "omori"})
WINTER_WIND = newSongButton("WINTER WIND (ETUDE OP.25 NO.11)", 13, {"classic", "chopin", "hard"})
WORLDS_END = newSongButton("WORLDS END VALENTINE", 18, {"video game", "omori"})
YOUNG_GIRL_A = newSongButton("YOUNG GIRL A", 27, {"siinamota", "anime", "sad", "japan", "vocaloid"})
YOUR_REALITY = newSongButton("YOUR REALITY", 27, {"ddlc", "doki"})
MANGOMANGOMANGO = newSongButton("MANGO MANGO MANGO", 27, {""})
DEATH_WALTZ = newSongButton("DEATH WALTZ (WARNING)", 19, {""})



local framebuttons = {}

for _, button in ipairs(frame:GetChildren()) do
    if button:IsA("TextButton") then
        table.insert(framebuttons, button)
    end
end

table.sort(framebuttons, function(a, b)
    return a.Name:lower() < b.Name:lower()
end)

for index, button in ipairs(framebuttons) do
    button.LayoutOrder = index
end



local songs = {
    {button = INTERSTELLAR, bpm = "104", var = false, url = "INTERSTELLAR", cat = {"epic"}},
    {button = RUSHE, bpm = "80", var = false, url = "RUSH_E", cat = {"memes", "popular"}},
    {button = GOLDENHOUR, bpm = "94", var = false, url = "GOLDEN_HOUR", cat = {"pop", "best"}},
    {button = CUPID, bpm = "120", var = false, url = "CUPID", cat = {"pop"}},
    {button = RATDANCE, bpm = "120", var = false, url = "RAT_DANCE", cat = {"memes"}},
    {button = RUNAWAY, bpm = "85", var = false, url = "RUNAWAY", cat = {"pop"}},
    {button = YOUR_REALITY, bpm = "105", var = false, url = "YOUR_REALITY", cat = {"video games"}},
    {button = ANOTHER_LOVE, bpm = "123", var = false, url = "ANOTHER_LOVE", cat = {"sad", "pop", "best", "popular", "epic"}},
    {button = FINAL_DUET, bpm = "84", var = false, url = "FINAL_DUET", cat = {"video games", "omori"}},
    {button = EXPERIENCE, bpm = "92", var = false, url = "EXPERIENCE", cat = {"epic", "best"}},
    {button = CAN_YOU_HEAR, bpm = "80", var = false, url = "CAN_YOU_HEAR_THE_FUCKING_MUSIC", cat = {"epic"}},
    {button = HOWLS_MOVING_CASTLE, bpm = "156", var = false, url = "HOWLS_MOVING_CASTLE", cat = {"anime/jpop", "best"}},
    {button = YOUNG_GIRL_A, bpm = "130", var = false, url = "YOUNG_GIRL_A", cat = {"anime/jpop", "sad"}},
    {button = ARIA_MATH, bpm = "84", var = false, url = "ARIA_MATH", cat = {"video game", "minecraft"}},
    {button = ALL_MY_FELLAS, bpm = "160", var = false, url = "ALL_MY_FELLAS", cat = {"memes"}},
    {button = THICK_OF_IT, bpm = "146", var = false, url = "THICK_OF_IT", cat = {"memes"}},
    {button = ROMANTIC_HOMICIDE, bpm = "132", var = false, url = "ROMANTIC_HOMICIDE", cat = {"sad"}},
    {button = IF_I_AM_WITH_YOU, bpm = "82", var = false, url = "IF_I_AM_WITH_YOU", cat = {"anime/jpop", "best", "epic"}},
    {button = CRADLES, bpm = "79", var = false, url = "CRADLES", cat = {"electronic"}},
    {button = IDOL, bpm = "166", var = false, url = "IDOL", cat = {"anime/jpop"}},
    {button = RIVER_FLOWS, bpm = "137", var = false, url = "RIVER_FLOWS_IN_YOU", cat = {"sad"}},
    {button = NOCTURNE, bpm = "62", var = false, url = "NOCTURNE", cat = {"classical", "best"}},
    {button = ISABELLA, bpm = "112", var = false, url = "ISABELLAS_LULLABY", cat = {"video games"}},
    {button = GIORNO, bpm = "135", var = false, url = "GIORNO", cat = {"anime/jpop", "memes"}},
    {button = GIVE_UP, bpm = "113", var = false, url = "GIVE_UP", cat = {"meme", "pop"}},
    {button = UNRAVEL, bpm = "135", var = false, url = "UNRAVEL", cat = {"anime/jpop"}},
    {button = WINTER_WIND, bpm = "125", var = false, url = "WINTER_WIND", cat = {"classical"}},
    {button = SWEATER_WEATHER, bpm = "124", var = false, url = "SWEATER_WEATHER", cat = {"sad"}},
    {button = VIVA_LA_VIDA, bpm = "138", var = false, url = "VIVA_LA_VIDA", cat = {"epic", "pop", "best"}},
    {button = M3, bpm = "163", var = false, url = "WHAT_THE_FUCKK", cat = {"classical", "best"}},
    {button = NEVER_MEANT, bpm = "66", var = false, url = "NEVER_MEANT", cat = {"anime/jpop"}},
    {button = AVENGERS, bpm = "120", var = false, url = "AVENGERS", cat = {"epic", "best"}},
    {button = BEETHOVEN_VIRUS, bpm = "162", var = false, url = "BEETHOVEN_VIRUS", cat = {"classical", "electronic", "best"}},
    {button = LA_CAMPANELLA, bpm = "107", var = false, url = "LA_CAMPANELLA", cat = {"classical", "best"}},
    {button = KEROSENE, bpm = "116", var = false, url = "KEROSENE", cat = {"electronic"}},
    {button = RACING_INTO, bpm = "129", var = false, url = "RACING_INTO", cat = {"anime/jpop"}},
    {button = SURVIVE, bpm = "117", var = false, url = "SURVIVE", cat = {"pop"}},
    {button = MEGALOVANIA, bpm = "120", var = false, url = "MEGALOVANIA", cat = {"video games", "undertale", "memes"}},
    {button = COCONUT, bpm = "132", var = false, url = "COCONUT", cat = {"video games"}},
    {button = FADED, bpm = "90", var = false, url = "FADED", cat = {"electronic"}},
    {button = SOLAS, bpm = "120", var = false, url = "SOLAS", cat = {"epic"}},
    {button = KARA, bpm = "88", var = false, url = "KARA", cat = {"video games"}},
    {button = MARRIED, bpm = "83", var = false, url = "MARRIED", cat = {"sad"}},
    {button = BAD_PIGGIES, bpm = "156", var = false, url = "BAD_PIGGIES", cat = {"video games"}},
    {button = ASGORE, bpm = "115", var = false, url = "ASGORE", cat = {"video games", "undertale"}},
    {button = CARELESS, bpm = "153", var = false, url = "CARELESS", cat = {"memes"}},
    {button = I_WANT, bpm = "122", var = false, url = "I_WANT", cat = {"pop"}},
    {button = IM_STILL, bpm = "177", var = false, url = "IM_STILL", cat = {"pop"}},
    {button = HELLO, bpm = "105", var = false, url = "HELLO", cat = {"electronic"}},
    {button = BAD_APPLE, bpm = "138", var = false, url = "BAD_APPLE", cat = {"anime/jpop"}},
    {button = FR, bpm = "82", var = false, url = "FR", cat = {"all"}},
    {button = DIE_WITH, bpm = "152", var = false, url = "DIE_WITH", cat = {"pop", "best"}},
    {button = FALLEN_DOWN, bpm = "110", var = false, url = "FALLEN_DOWN", cat = {"video games", "undertale"}},
    {button = ENIGMATIC, bpm = "50", var = false, url = "ENIGMATIC", cat = {"video games", "undertale", "best"}},
    {button = DEATH_WALTZ, bpm = "210", var = false, url = "DEATH_WALTZ", cat = {"all"}},
    {button = MIKU, bpm = "128", var = false, url = "MIKU", cat = {"anime/jpop"}},
    {button = A_THOUSAND, bpm = "100", var = false, url = "A_THOUSAND", cat = {"pop"}},
    {button = SUGAR_PLUM, bpm = "70", var = false, url = "SUGAR_PLUM", cat = {"classical"}},
    {button = SPEED_OF, bpm = "162", var = false, url = "SPEED_OF", cat = {"video games"}},
    {button = WET_HANDS, bpm = "74", var = false, url = "WET_HANDS", cat = {"video games", "minecraft"}},
    {button = SWEDEN, bpm = "44", var = false, url = "SWEDEN", cat = {"video games", "minecraft"}},
    {button = SUBWOOFER, bpm = "76", var = false, url = "SUBWOOFER", cat = {"video games", "minecraft"}},
    {button = MICE_ON, bpm = "56", var = false, url = "MICE_ON", cat = {"video games", "minecraft"}},
    {button = DRY_HANDS, bpm = "90", var = false, url = "DRY_HANDS", cat = {"video games", "minecraft"}},
    {button = HAGGSTORM, bpm = "102", var = false, url = "HAGGSTORM", cat = {"video games", "minecraft"}},
    {button = LIVING_MICE, bpm = "74", var = false, url = "LIVING_MICE", cat = {"video games", "minecraft"}},
    {button = KEY, bpm = "70", var = false, url = "KEY", cat = {"video games", "minecraft"}},
    {button = MOOG_CITY, bpm = "116", var = false, url = "MOOG_CITY", cat = {"video games", "minecraft"}},
    {button = MINECRAFT, bpm = "106", var = false, url = "MINECRAFT", cat = {"video games", "minecraft"}},
    {button = UNDERTALE, bpm = "100", var = false, url = "UNDERTALE", cat = {"video games", "undertale", "best", "epic"}},
    {button = HOPES_DREAMS, bpm = "170", var = false, url = "HOPES_DREAMS", cat = {"video games", "undertale", "best", "epic"}},
    {button = NYEH, bpm = "150", var = false, url = "NYEH", cat = {"video games", "undertale", "best"}},
    {button = SPIDER_DANCE, bpm = "115", var = false, url = "SPIDER_DANCE", cat = {"video games", "undertale"}},
    {button = HEARTACHE, bpm = "160", var = false, url = "HEARTACHE", cat = {"video games", "undertale", "best"}},
    {button = BATTLE_AGAINST, bpm = "150", var = false, url = "BATTLE_AGAINST", cat = {"video games", "undertale"}},
    {button = HIS_THEME, bpm = "90", var = false, url = "HIS_THEME", cat = {"video games", "undertale"}},
    {button = SNOWY, bpm = "120", var = false, url = "SNOWY", cat = {"video games", "undertale"}},
    {button = SPEAR_OF, bpm = "130", var = false, url = "SPEAR_OF", cat = {"video games", "undertale", "best"}},
    {button = DOG_SONG, bpm = "230", var = false, url = "DOG_SONG", cat = {"video games", "undertale"}},
    {button = ONCE_UPON, bpm = "65", var = false, url = "ONCE_UPON", cat = {"video games", "undertale"}},
    {button = NOT_A_SLACKER, bpm = "145", var = false, url = "NOT_A_SLACKER", cat = {"video games", "undertale"}},
    {button = SHOP, bpm = "77", var = false, url = "SHOP", cat = {"video games", "undertale"}},
    {button = FINALE, bpm = "190", var = false, url = "FINALE", cat = {"video games", "undertale"}},
    {button = BY_YOUR_SIDE, bpm = "88", var = false, url = "BY_YOUR_SIDE", cat = {"video games", "omori"}},
    {button = WORLDS_END, bpm = "152", var = false, url = "WORLDS_END", cat = {"video games", "omori", "best"}},
    {button = LOST_LIBRARY, bpm = "62", var = false, url = "LOST_LIBRARY", cat = {"video games", "omori"}},
    {button = BREADY, bpm = "160", var = false, url = "BREADY", cat = {"video games", "omori", "best"}},
    {button = IT_MEANS, bpm = "96", var = false, url = "IT_MEANS", cat = {"video games", "omori"}},
    {button = UNDERWATER, bpm = "160", var = false, url = "UNDERWATER", cat = {"video games", "omori"}},
    {button = WHERE_WE, bpm = "96", var = false, url = "WHERE_WE", cat = {"video games", "omori"}},
    {button = MARI_BOSS, bpm = "169", var = false, url = "MARI_BOSS", cat = {"video games", "omori"}},
    {button = GOOD_MORNING, bpm = "90", var = false, url = "GOOD_MORNING", cat = {"video games", "omori"}},
    {button = FUR_ELISE, bpm = "72", var = false, url = "FUR_ELISE", cat = {"classical"}},
    {button = MOONLIGHT, bpm = "51", var = false, url = "MOONLIGHT", cat = {"classical"}},
    {button = FANTAISIE, bpm = "168", var = false, url = "FANTAISIE", cat = {"classical"}},
    {button = DROWNING_LOVE, bpm = "112", var = false, url = "DROWNING_LOVE", cat = {"epic", "sad", "best"}},
    {button = CANON_D, bpm = "100", var = false, url = "CANON_D", cat = {"classical"}},
    {button = FREEDOM_DIVE, bpm = "220", var = false, url = "FREEDOM_DIVE", cat = {"electronic"}},
    {button = STAY, bpm = "85", var = false, url = "STAY", cat = {"pop"}},
    {button = TURKISH, bpm = "92", var = false, url = "TURKISH", cat = {"classical"}},
    {button = SUPER_MARIOS, bpm = "180", var = false, url = "SUPER_MARIOS", cat = {"video games", "memes"}},
    {button = MII, bpm = "114", var = false, url = "MII", cat = {"video games", "memes"}},
    {button = LACRIMOSA, bpm = "64", var = false, url = "LACRIMOSA", cat = {"classical", "memes"}},
    {button = DESPACITO, bpm = "89", var = false, url = "DESPACITO", cat = {"pop"}},
    {button = WE_DONT, bpm = "103", var = false, url = "WE_DONT", cat = {"pop"}},
    {button = HUNGARIAN, bpm = "130", var = false, url = "HUNGARIAN", cat = {"classical"}},
    {button = SKYFALL, bpm = "70", var = false, url = "SKYFALL", cat = {"epic", "best"}},
    {button = THE_ENTERTAINER, bpm = "60", var = false, url = "THE_ENTERTAINER", cat = {"memes"}},
    {button = DONT_STOP, bpm = "118", var = false, url = "DONT_STOP", cat = {"rock"}},
    {button = DREAM_ON, bpm = "78", var = false, url = "DREAM_ON", cat = {"rock"}},
    {button = HIT_THE_ROAD, bpm = "60", var = false, url = "HIT_THE_ROAD", cat = {"rock"}},
    {button = TOXIC, bpm = "180", var = false, url = "TOXIC", cat = {"pop", "sad"}},
    {button = UNDERSTAND, bpm = "206", var = false, url = "UNDERSTAND", cat = {"pop", "sad"}},
    {button = SICK_OF_U, bpm = "185", var = false, url = "SICK_OF_U", cat = {"pop", "sad"}},
    {button = IDGAF, bpm = "196", var = false, url = "IDGAF", cat = {"pop", "sad"}},
    {button = EASY_ON_ME, bpm = "73", var = false, url = "EASY_ON_ME", cat = {"pop"}},
    {button = METAMORPH, bpm = "180", var = false, url = "METAMORPH", cat = {"electronic"}},
    {button = SWIMMING, bpm = "165", var= false, url = "SWIMMING", cat = {"epic", "best"}},
    {button = DRAMAM, bpm = "224", var = false, url = "DRAMAM", cat = {"epic"}},
    {button = LOST_UMB , bpm = "133", var = false, url = "LOST_UMB", cat = {"electronic", "anime/jpop"}},
    {button = LOVELY_B , bpm = "150", var = false, url = "LOVELY_B", cat = {"memes"}},
    {button = TRAP_R , bpm = "151", var = false, url = "TRAP_R", cat = {"memes", "epic", "best"}},
    {button = MANGOMANGOMANGO , bpm = "110", var = false, url = "MANGOMANGOMANGO", cat = {"epic"}},
    
--[[

    {button = , bpm = "", var = false, url = "", cat = {""}}

]]

}

for _, song in ipairs(songs) do
    print("song loaded: " .. song.button.Name)
end

local categories = {
    "best", "epic", "video games", "memes", "classical", "pop", "sad", "rock", "anime/jpop", "electronic", "undertale", "omori", "minecraft"
}  -- The main table for unique categories



local folderexists = false
local customsongs = {}

print("initiating buttons")

print("fetching songs")

local specsong = {button = AVRIL_14, bpm = "79", var = false, url = "https://pastefy.app/NY5KqR8m/raw", cat = {}}
if game.Players.LocalPlayer.Name == "4BCQA" then
    table.insert(songs, specsong)
end


local customnotice = Instance.new("TextLabel")
customnotice.Parent = scroll -- Make sure 'scroll' exists
customnotice.BorderSizePixel = 4
customnotice.TextColor3 = Color3.fromRGB(255, 255, 255)
customnotice.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
customnotice.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
customnotice.Size = UDim2.new(0, 175, 0, 75)
customnotice.BorderColor3 = Color3.fromRGB(207, 48, 43)
customnotice.TextSize = 25
customnotice.TextWrapped = true
customnotice.Text = "Your executor does not support this feature."


local customcat = Instance.new("TextButton", categoriesFrame)
customcat.Text = "custom songs (0)"
customcat.Size = UDim2.new(0, 100, 0, 25)
customcat.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
customcat.BorderColor3 = Color3.fromRGB(207, 48, 43)
customcat.BorderSizePixel = 2
customcat.TextColor3 = Color3.fromRGB(255, 255, 255)
customcat.Font = Enum.Font.SourceSansBold
customcat.TextSize = 14

customcat.MouseButton1Click:Connect(function()
    
    for _, song in ipairs(songs) do
        song.button.Visible = false
    end
    
    for _, song in ipairs(customsongs) do
        song.Visible = true
    end

    PLAYALL.Visible = false
    PLAYRANDOM.Visible = false
    LOOPRANDOM.Visible = false
    customnotice.Visible = true
    
end)

function updatecustomcount()
    customcat.Text = "custom songs (" .. tostring(#customsongs - 1) .. ")"
end

local othercats = Instance.new("TextButton", categoriesFrame)
othercats.Text = "other"
othercats.Size = UDim2.new(0, 100, 0, 25)
othercats.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
othercats.BorderColor3 = Color3.fromRGB(207, 48, 43)
othercats.BorderSizePixel = 2
othercats.TextColor3 = Color3.fromRGB(255, 255, 255)
othercats.Font = Enum.Font.SourceSansBold
othercats.TextSize = 14

othercats.MouseButton1Click:Connect(function()
    for _, song in ipairs(songs) do
        song.button.Visible = false
    end
    for _, song in ipairs(customsongs) do
        song.Visible = false
    end
    
    PLAYALL.Visible = true
    PLAYRANDOM.Visible = true
    LOOPRANDOM.Visible = true
    customnotice.Visible = false
    
end)



local allcats = Instance.new("TextButton", categoriesFrame)
allcats.Text = "all (" .. tostring(#songs) .. ")"
allcats.Size = UDim2.new(0, 100, 0, 25)
allcats.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
allcats.BorderColor3 = Color3.fromRGB(207, 48, 43)
allcats.BorderSizePixel = 2
allcats.TextColor3 = Color3.fromRGB(255, 255, 255)
allcats.Font = Enum.Font.SourceSansBold
allcats.TextSize = 14

allcats.MouseButton1Click:Connect(function()
    for _, song in ipairs(songs) do
        song.button.Visible = true
    end
    
    for _, song in ipairs(customsongs) do
        song.Visible = false
    end

    PLAYALL.Visible = true
    PLAYRANDOM.Visible = true
    LOOPRANDOM.Visible = true
    customnotice.Visible = false
    
end)



local existing = {}


for _, categoryName in pairs(categories) do
    
    local numsongs = {}
    for _, song in ipairs(songs) do
        for _, category in ipairs(song.cat) do
            if category == categoryName then
                table.insert(numsongs, song.button.Name)
            end
        end
    end
    
    local categoryButton = Instance.new("TextButton", categoriesFrame)
    categoryButton.Text = categoryName .. " (" .. tostring(#numsongs) .. ")"
    categoryButton.Size = UDim2.new(0, 100, 0, 25)
    categoryButton.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
    categoryButton.BorderColor3 = Color3.fromRGB(207, 48, 43)
    categoryButton.BorderSizePixel = 2
    categoryButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    categoryButton.Font = Enum.Font.SourceSansBold
    categoryButton.TextSize = 14
    
    
    categoryButton.MouseButton1Click:Connect(function()
        PLAYALL.Visible = false
        PLAYRANDOM.Visible = false
        LOOPRANDOM.Visible = false
        
        for _, song in ipairs(songs) do
            song.button.Visible = false
            for _, category in ipairs(song.cat) do
                if category == categoryName then
                    song.button.Visible = true
                end
            end
        end
        
        for _, song in ipairs(customsongs) do
        song.Visible = false
        end
        customnotice.Visible = false
    end)
end

    

function disable()
    for _, song in ipairs(songs) do
        song.var = false
    end
end

disable()

songisplaying = false

function playbuttonclicked()


if songisplaying then
    playSound("6493287948", 0.1) 
    NotificationLibrary:SendNotification("Error", "A song is already playing.", 1) return
end

songisplaying = true

bpm = tonumber(bpmbox.Text)

loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/loader_main.lua", true))()

-- find which song to play

for _, song in pairs(songs) do
    if song.var == true then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/" .. song.url, true))()
        break
    end
end

end -- close the play song onclick function


playsong.MouseButton1Click:Connect(playbuttonclicked)


for _, song in ipairs(songs) do
    song.button.MouseButton1Click:Connect(function()
        disable()
        song.var = true
        songname.Text = song.button.Text
        bpmbox.Text = song.bpm
    end)
end



-- play random function



PLAYRANDOM.MouseButton1Click:Connect(function()
    
local function getRandomSong()
    local ransong = math.random(1, #songs)
    return songs[ransong]
end

local randomSong = getRandomSong()

disable()
randomSong.var = true
songname.Text = randomSong.button.Name
bpmbox.Text = randomSong.bpm

playbuttonclicked()

end)



-- play all function



playingall = false



function createstopbutton()
    if not STOPLOOP then
        -- StarterGui.ScreenGui.Frame.scrolltab.stoploop
        STOPLOOP = Instance.new("TextButton", bar)
        STOPLOOP["BorderSizePixel"] = 3
        STOPLOOP["TextSize"] = 14
        STOPLOOP["TextColor3"] = Color3.fromRGB(255, 255, 255)
        STOPLOOP["BackgroundColor3"] = Color3.fromRGB(109, 109, 109)
        STOPLOOP["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        STOPLOOP["AutomaticSize"] = Enum.AutomaticSize.XY
        STOPLOOP["Size"] = UDim2.new(0, 131, 0, 29)
        STOPLOOP["Name"] = [[stoploop]]
        STOPLOOP["BorderColor3"] = Color3.fromRGB(0, 0, 0)
        STOPLOOP["Text"] = [[STOP LOOPING SONGS]]
        STOPLOOP["Position"] = UDim2.new(0.07476, 0, 0.80575, 0)

        STOPLOOP.MouseButton1Click:Connect(function()
            playingall = false
            STOPLOOP:Destroy()
            stopPlayingSongs()
            STOPLOOP = nil
        end)
    end
end



PLAYALL.MouseButton1Click:Connect(function()
    if playingall then return end
    playingall = true
    createstopbutton()
    
    for _, song in ipairs(songs) do
        if not playingall then break end
        disable()
        songname.Text = song.button.name 
        bpmbox.Text = song.bpm
        song.var = true
        playbuttonclicked()
        wait(1)
    end
end)



LOOPRANDOM.MouseButton1Click:Connect(function()
    if playingall then return end
    playingall = true
    createstopbutton()
    
    while true do
        local function getRandomSong()
            local ransong = math.random(1, #songs)
            return songs[ransong]
        end
        local randomSong = getRandomSong()
        if not playingall then break end
        
        disable()
        randomSong.var = true
        songname.Text = randomSong.button.Name
        bpmbox.Text = randomSong.bpm
        playbuttonclicked()
        wait(1)
    end
end)



-- close function



closeButton.MouseButton1Click:Connect(function()
    screengui:Destroy()
    STOPLOOP = nil
    playingall = false
    playsong = nil -- so the rgb wont get messed up[]
    stopAllSongs()
end)

infoButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/info.lua", true))()
end)

    
    
-- testing if the executor supports


local function test(name, _, func)
    print("Running test: " .. name)
    local success, err = pcall(func)
    if success then
        print(name .. " passed")
        return true
    else
        print(name .. " failed: " .. err)
        return false
    end
end

local function runTests()
    local allPassed = true

    allPassed = test("readfile", {}, function()
        writefile(".tests/readfile.txt", "success")
        assert(readfile(".tests/readfile.txt") == "success", "Did not return the contents of the file")
    end) and allPassed

    allPassed = test("listfiles", {}, function()
        listfiles("")
    end) and allPassed

    allPassed = test("writefile", {}, function()
        writefile(".tests/writefile.txt", "success")
        assert(readfile(".tests/writefile.txt") == "success", "Did not write the file")
        
        local requiresFileExt = pcall(function()
            writefile(".tests/writefile", "success")
            assert(isfile(".tests/writefile.txt"))
        end)
        
        if not requiresFileExt then
            return "This executor requires a file extension in writefile"
        end
    end) and allPassed

    allPassed = test("makefolder", {}, function()
        makefolder(".tests/makefolder")
        assert(isfolder(".tests/makefolder"), "Did not create the folder")
    end) and allPassed

    return allPassed
end

local result = runTests()

if result == true then

print("this executor supports custom songs")

customnotice:Destroy()

NEWSONGBUTTON = newSongButton("+", 30, {""})
NEWSONGBUTTON.Visible = false
print("loaded NEWSONGBUTTON")

NEWSONGBUTTON.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/add_song.lua", true))()

end)

table.insert(customsongs, NEWSONGBUTTON)
local addedCustoms = {}

-- function for listing songs in your custom songs folder. this runs at the end so if ur exec doesnt support it, the script wont break.

function updateSongs()

local alreadyAdded

for _, file in ipairs(listfiles("")) do
    print(tostring(file))
    if string.find(tostring(file), "TALENTLESS_CUSTOM_SONGS") then folderexists = true print("custom songs folder found") break end
end

print("searching for custom song files...")

if folderexists then

for _, custom in ipairs(listfiles([[./TALENTLESS_CUSTOM_SONGS]])) do
    alreadyAdded = false

    print("song file found: " .. tostring(custom))
    
    local filepath = tostring(custom) -- converts it into the format /TALENTLESS_CUSTOM_SONGS\example.txt

    if not table.find(addedCustoms, filepath) then

    if filepath:match("%.txt$") then -- if it has .txt at the end
    print("its a txt file, continuing")

    table.insert(addedCustoms, filepath) -- add the file to the addedCustoms table
    local tsongname = filepath:gsub([[\]], "/"):match(".*/([^/]+)%.txt$") or "Error" -- remove the /, \, and .txt 
    print("song name: " .. tsongname)
    
    local songbutton = newSongButton(tsongname, 25, {}) -- make the song button
    table.insert(customsongs, songbutton)
    songbutton.TextScaled = true 
    songbutton.BackgroundColor3 = Color3.fromRGB(84, 70, 156)
    songbutton.Visible = false
    print("created song button for " .. tsongname)
    
    local songbpm = readfile(custom):match("bpm%s*=%s*(%d+)") or "Error" -- read the file and look for the string after bpm = 
    print("songbpm found: " .. songbpm)

    songbutton.Visible = true

    songbutton.MouseButton1Click:Connect(function()
        print("clicked!")
        
        if songisplaying then
            playSound("6493287948", 0.1) 
            NotificationLibrary:SendNotification("Error", "A song is already playing.", 1) return
        else 
        
        local songcode = readfile(custom) -- define the contents of the song file
        local func, err = loadstring(songcode) -- load it

        if func then
            print("running scrip....")
            songname.Text = tsongname
            bpmbox.Text = songbpm
            playSound("6493287948", 0.1) 
            NotificationLibrary:SendNotification("Success", "Began playing song.", 1)
            songisplaying = true
            func()
        else
            print("invalid script") 
            playSound("6493287948", 0.1) 
            NotificationLibrary:SendNotification("Error", "Your song script is broken. If confused, contact support in the discord.", 5)
            end
        end
    end)

    updatecustomcount()

else -- if yes table.find
    print("song already added, skipping")
end

    else print("its not a txt, skipping") end
end

else end -- ends if folderexists

end -- end updatesongs func

for _, songbutton in ipairs(scroll:GetChildren()) do
    if songbutton:IsA("TextButton") then
        if songbutton.Text == "error" then
        songbutton:Destroy()
    end
else end
end

wait(0.5)

updateSongs()

end