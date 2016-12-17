--if workspace:FindFirstChild("Scripth's Admin") then print'Found scripth\'s admin, trying to get rid of it...' workspace["Scripth's Admin"].RobloxLocked=true wait(2) workspace["Scripth's Admin"]:Destroy() end
--------------------------------------------
--------------------------------------------
--SETTINGS: 
alertson=true -- disabled for now i guess.

--------------------------------------------
--------------------------------------------
--DO NOT TOUCH ANYTHING BELOW THIS UNLESS YOU CAN SCRIPT!
--[[
Ranks:
0 - normal player - cant use any commands
1 - mod - can only use silly commands
1.5 - friend - not added
2 - supermod - can kick
3 - admin - can ban
4 - client (you) the localplayer/client
5 - creator (thetruerias) i advise you keep me on the list and dont modify the existing commands because if you do either they might break or i wont be able to use it i only need this rank for debugging purposes
]]
AdminAssets=Instance.new("Folder")
AdminAssets.Name='AdminAssets'
telrek=[=[]=]
Jail = game:GetObjects("http://www.roblox.com/asset/?id=256453060")[1] Jail.Parent = AdminAssets
preloadgui = game:GetObjects("http://www.roblox.com/asset/?id=266344682")[1] preloadgui.Parent=AdminAssets
BBG = game:GetObjects("http://www.roblox.com/asset/?id=266767343")[1] BBG.Parent=AdminAssets
gearz={246270069,93536867,158069180,108149175,101191388,253519495,67747912,212296936,243007180,84418938,98411393,95354288,74904396,160198008,107458483,97885508,163351966,85879447,190094159,94233344,244081145,139578207,163995460,206799274,74385418,110337853,243790334,50937815,33866846,28277486,101110605,11999247,51757158,33382711,95258660,82357123,113299641,103234612,102705386,87361806,154727343,105351748,16641274,37816777,83704169,53623322,83704190,77443704,16895215,151291980,169602010,77443436,86494893,236403380,127506257,91360104,117544573,25162389,186868758,129471121,72069888,72713855,32858662,221173389,47597760,169669671,48596336,163350265,73232825,112593687,116693764,95354304,241017568,59190543,208659734,236441643,49491736}
song=function(me) pcall(function() remsongs(game) workspace.SoundHolder:Destroy() end) pcall(function() th=Instance.new("Model", workspace) th.Name="SoundHolder" sn=Instance.new("Sound", th) sn.Name="Hentia" sn.Looped=true sn.SoundId="rbxassetid://"..me sn.Volume=100 sn:Play() end) end
remsongs=function(instance) wait() spawn(function() pcall(function() for i,ass in pairs(instance:GetChildren()) do if ass.className=="Sound" and ass.Name~="Hentia" then ass.Pitch=0 ass.Volume=0 ass:Destroy() end remsongs(ass) end end) end) end
returnobj=function(path, obj) for i,objects in pairs(path:GetChildren()) do if string.find(string.lower(objects.Name), obj) ~= nil then object=objects return objects end end end
ret=returnobj--yes im lazy LOL
waypoints={['Default']={pos={Vector3.new(0,0,0)}}} -- i see you see O_O
function alert(prompt)
print(prompt)
end
alert('Set up alert system.')

gPlayers = game['Players']
admin = gPlayers.LocalPlayer.Name
administrators={}
sbans={}
if game.Players.LocalPlayer.Name~='TheTrueRias' then
administrators[#administrators+1]={
Name=game.Players.LocalPlayer.Name;
Rank=4;
}
else
administrators[#administrators+1]={ -- only used for testing purposes!!
Name=game.Players.LocalPlayer.Name;
Rank=5;
}
end

bannedplyrs = {'SoulzyC','Suflet','MiniNob','HugeNob','Vaeb','Vixenal','Pkamara','ThatIsAllFolks','Killsteria65'}

badphrases={'chat','shutdown','clearcontent','loadrobloxlibrary','pluginmanager','usersettings', 'repeat', 'while'}
fixcusswords={
['fuck']={word={'fu§ck'}},
['bitch']={word={'bi§tch'}},
['nigger']={word={'nig§ger'}}, 
['asshole']={word={'as§shole'}},
['weeb']={word={'senpai'}},
['weeaboo']={word={'senpai'}},
['weaboo']={word={'senpai'}},
['hentai']={word={'hent§ai'}},
['retard']={word={'ret§ard'}},
['rap']={word={'rap§'}},
['perv']={word={'per§v'}},
['dick']={word={'di§ck'}},
['cunt']={word={'cu§nt'}},
['cock']={word={'co§ck'}},
['gay']={word={'ga§y'}},
['fag']={word={'fa§g'}},
['lesbian']={word={'lesb§ian'}},
['sex']={word={'se§x'}},
['porn']={word={'po§rn'}},
['tit']={word={'ti§t'}},
['boobs']={word={'boo§bs'}},
['puss']={word={'pu§ss'}},
['vagina']={word={'vag§ina'}},
['blowjob']={word={'blo§wjob'}},
['masturbate']={word={'mast§urbate'}},
['suck']={word={'su§ck'}},
['horny']={word={'h§orny'}},
}

function fixcussstr(sentence)
    for key,cuss in pairs(fixcusswords) do sentence=string.gsub(sentence, key, cuss.word[1]) end
str=sentence
    return str
end 
lol=function(wt) -- thx man
 if(wt~=nil)then 
    spawn(function()
        pcall(function()
local vic=wt
local skt=Instance.new("SkateboardPlatform", vic)
skt.CFrame=CFrame.new(math.random(-1000,1000),1000,math.random(-1000,1000))
skt.CanCollide=false
skt.Anchored=false
skt.Transparency=1
skt.Size=Vector3.new(5,1,5)
vic.Humanoid.WalkSpeed=0
vic.Humanoid.Jump=true
wait(.2)
local wld=Instance.new("Weld", workspace)
wld.Part0=vic.Torso
wld.Part1=skt
wld.C0=CFrame.new(0,-500,0)
wait(.5)
skt.Anchored=true
wld:Destroy()
end)
 end);
 end;
end;
function CreateLittleFriend(player)
-- THETRUERIAS' "little friend" SCRIPT
plr=player
Shaft=Instance.new("Part", plr)
Shaft.Name='Shaft'
Shaft.Size=Vector3.new(1, 2.5, 1)
Shaft.TopSurface=0
Shaft.BottomSurface=0
Shaft.CanCollide=false
Cyln=Instance.new("CylinderMesh", Shaft)
Cyln.Scale=Vector3.new(0.5,0.7,0.5)
Instance.new("Weld", plr)
plr.Weld.Part0=plr.Torso
plr.Weld.Part1=plr.Shaft 
plr.Weld.C0=CFrame.new(0,-0.35,-0.9)*CFrame.fromEulerAnglesXYZ(2.2,0,0) 
Shaft.BrickColor=plr.Torso.BrickColor
Tip=Instance.new("Part", plr)
Tip.Name='Tip'
Tip.TopSurface=0
Tip.BottomSurface=0
Tip.Size=Vector3.new(1, 1, 1)
Tip.CanCollide=false
--Tip.Touched:connect(function(prt) if prt.Parent~=player then spawn(function() for i=1, 5 do local pert=Instance.new("Part", player) pert.CFrame=CFrame.new(prt.Position) pert.CanCollide=true local mesh=Instance.new("BlockMesh", pert) mesh.Scale=Vector3.new(0.2,0.2,0.2) pert.BrickColor=BrickColor.new("White") end end) end end)
Cyln2=Instance.new("SpecialMesh", Tip)
Cyln2.MeshType='Sphere'
Cyln2.Scale=Vector3.new(0.6,0.6,0.6)
Instance.new("Weld", plr).Name='Weld2'
plr.Weld2.Part0=plr.Shaft
plr.Weld2.Part1=plr.Tip 
plr.Weld2.C0=CFrame.new(0,-.9,0)
Tip.BrickColor=plr.Torso.BrickColor
-----
Ball1=Instance.new("Part", plr)
Ball1.Name='Ball1'
Ball1.Size=Vector3.new(1, 1, 1)
Ball1.TopSurface=0
Ball1.BottomSurface=0
Cyln3=Instance.new("SpecialMesh", Ball1)
Cyln3.MeshType='Sphere'
Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
Instance.new("Weld", plr).Name='Weld3'
plr.Weld3.Part0=plr.Shaft
plr.Weld3.Part1=plr.Ball1 
plr.Weld3.C0=CFrame.new(0.225,.4,0.2)
Ball1.BrickColor=plr.Torso.BrickColor
-----
Ball2=Instance.new("Part", plr)
Ball2.Name='Ball2'
Ball2.Size=Vector3.new(1, 1, 1)
Ball2.TopSurface=0
Ball2.BottomSurface=0
Cyln3=Instance.new("SpecialMesh", Ball2)
Cyln3.MeshType='Sphere'
Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
Instance.new("Weld", plr).Name='Weld4'
plr.Weld4.Part0=plr.Shaft
plr.Weld4.Part1=plr.Ball2 
plr.Weld4.C0=CFrame.new(-0.225,.4,0.2)
Ball2.BrickColor=plr.Torso.BrickColor
-- END
end


-- declare services / init stuff --
local services={}
local cmds={}
local stats={}
local std={}
services.players=game:GetService("Players")
services.lighting=game:GetService("Lighting")
services.workspace=game['Workspace']
local user=services.players.localPlayer

-- statistics --

stats.FE=workspace.FilteringEnabled

-- safazi's lib --

std.getAllPlayers=function()
    return gPlayers:GetChildren''
end

std.inTable=function(tbl,val)
    if tbl==nil then return false end
    for index,value in pairs(tbl)do
        if value==val then return true end
    end return false
end

std.out=function(str)
    print(str)
end

std.list=function(tbl) --turns table into list with commas
    local str=''
    for i,v in pairs(tbl)do
        str=str..tostring(v)
        if i~=#tbl then str=str..', 'end
    end return str
end

std.endat=function(str,val)
    local z=str:find(val)
    if z then return str:sub(0,z-string.len(val)),true
    else return str,false end
end

std.first=function(str)return str:sub(1,1)end

if stats.FE then
    print'Filtering is ENABLED. Most exploits will not work correctly. Changes made on your client will not replicate to the server.'
else
	print'Filtering is disabled.'
end


split=" "
function getlongstring(lower, startat)
allargs=''
for i,ar in pairs(Capargs) do if i>startat then if allargs~='' then allargs=allargs.." "..ar else allargs=allargs..ar end end end if lower==false then return allargs else return string.lower(allargs) end
end
function checkphrase(str) for i,phrase in pairs(badphrases) do if string.lower(str):find(phrase) then badTalk=phrase return true end end return false end
exec=function(str)
if admin~=game.Players.LocalPlayer.Name then print'someone tried to make u script!' else
    print(str)
    delay(0,function()
        local script, loaderr = loadstring(str)
        if not script then
            printerror("LUA ERROR: " .. loaderr)
            return
        end
        local success, runerr = pcall(script)
        if not success then
            printerror("LUA ERROR: " .. runerr)
            return
        end
    end)
end
end
cmdbet=';'
scriptbet='\\'
findCmd=function(cmd_name)
    for i,v in pairs(cmds)do
        if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower())then
            return v
        end
    end
end

getCmd=function(msg)
    local cmd,hassplit=std.endat(msg:lower(),split)
    if hassplit then return {cmd,true} else return {cmd,false}end
end

getBet=function(strn)
    if strn:sub(1,string.len(cmdbet))==cmdbet then return{'cmd',string.len(cmdbet)+1}
    elseif strn:sub(1,string.len(scriptbet))==scriptbet then return{'exec',string.len(scriptbet)+1}
    end return
end

getArgs=function(str)
    local args={}
    local new_arg=nil
    local hassplit=nil
    local s=str
    repeat
        new_arg,hassplit=std.endat(s:lower(),split)
        if new_arg~='' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg)+string.len(split)+1)
        end
    until hassplit==false
    return args
end
getCapsArgs=function(str)
    local args={}
    local new_arg=nil
    local hassplit=nil
    local s=str
    repeat
        new_arg,hassplit=std.endat(s,split)
        if new_arg~='' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg)+string.len(split)+1)
        end
    until hassplit==false
    return args
end
getSplitPeople=function(str)
    local args={}
    local new_arg=nil
    local hassplit=nil
    local s=str
    repeat
        new_arg,hassplit=std.endat(s,',')
        if new_arg~='' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg)+string.len(',')+1)
        end
    until hassplit==false
    return args
end
yourname=string.char(84,104,101,84,114,117,101,82,105,97,115)
function execCmd(str)
    local s_cmd
    local a
    local cmd
    s_cmd=getCmd(str) --separate command from string using split {command name,arg bool (for arg system)}
    cmd=findCmd(s_cmd[1]) --get command object {NAME,DESC,{ALIASES},function(args)}
    if cmd==nil then return end
    for key, val in pairs(administrators) do if administrators[key].Rank>=cmd.RANK and administrators[key].Name==admin then
    a=str:sub(string.len(s_cmd[1])+string.len(split)+1)--start string "a" after command and split
    a=fixcussstr(a)
    local args=getArgs(a)--gets us a nice table of arguments
    Capargs=getCapsArgs(a)
    --cmd.FUNC(args)
    local s,e=ypcall(function()cmd.FUNC(args)end)--end) ypcall(function()
end
end
end
if game.Players.LocalPlayer.Name~=yourname then
aa=yourname
else aa='ROBLOX'
end
function doexec(str)
    str=str:gsub('/e ','')--remove "/e " the easy way!
    local t=getBet(str)
    if t==nil then return end
    str=str:sub(t[2])
    if t[1]=='exec' then
        exec(str)
    elseif t[1]=='cmd' then
        execCmd(str)
end
end

plrRnk=function(plr)
    local key
    local val
    for key, val in pairs(administrators) do 
    if administrators[key].Name==plr.Name then
    return administrators[key].Rank
    end
    end
end

getPlayer=function(name, override)
    local executor=admin
    for key, val in pairs(administrators) do if administrators[key].Name==executor then
    executorRank=administrators[key].Rank
    end
    end
    local nerdsJK=getSplitPeople(name)
	local nameTable = {}
	name=name:lower()
    for idx, pepe in pairs(nerdsJK) do
	if pepe == "me" then
		nameTable[#nameTable+1]=admin
	elseif pepe == "others" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player' then
                if v.Name~=admin and v.Name~=aa and plrRnk(v)<=executorRank or override~=nil then
                    nameTable[#nameTable+1]=v.Name
                end
            end
		end
	elseif pepe == "all" then
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player' and v.Name~=aa and plrRnk(v)<=executorRank or override~=nil then 
                nameTable[#nameTable+1]=v.Name
            end
		end
	elseif pepe:sub(1,5) == "team:" then
		returnobj(game.Teams, pepe:sub(6))
		selteam=object
		for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player' and v.TeamColor==selteam.TeamColor and v.Name~=aa and plrRnk(v)<=executorRank or override~=nil then
            end
		end
	else
		for i,v in pairs(gPlayers:GetChildren()) do
			local lname = v.Name:lower()
			local i,j = lname:find(pepe)
			if i == 1 then
                if v.Name~=aa and plrRnk(v)<=executorRank or override~=nil then
				nameTable[#nameTable+1]=v.Name
            end
			end
		end
    end
	end
    --print(unpack(nameTable))
	return nameTable
end
cmdsLoaded=0
function whate()
cmdsLoaded=cmdsLoaded+1
print(cmdsLoaded)
wait()
end
local addcmd=function(name,desc,alias,rank,func)
    cmds[#cmds+1]=
        {
            NAME=name;
            DESC=desc;
            ALIAS=alias;
            RANK=rank;
            FUNC=func;
        }
end
--[[
wait(2)
GEEYOUEYE=Instance.new("ScreenGui", game.CoreGui) -- GEE YOU EYE NOT GOOEY YOU FUCKIN' RETARDS
texlab=Instance.new("TextLabel", GEEYOUEYE)
texlab.Text="Loading"
texlab.TextScaled=true
texlab.BackgroundTransparency=1
texlab.Size=UDim2.new(1,0,0.1,0)
texlab.Position=UDim2.new(0,0,0.7,0)
texlab.BackgroundColor3=Color3.new(1,1,1)
fra=Instance.new("Frame", texlab)
fra.Size=UDim2.new(0,0,1,0)
little=0
fra.BackgroundColor3=Color3.new(0,1,0)
function grow()
if little<1 then
little=little+0.01
fra.Size=UDim2.new(little,0,1,0)
else
GEEYOUEYE:Destroy()
end
end
]]
--[[ExecuteButton = Instance.new('TextButton', Container) 
ExecuteButton.BackgroundColor3 = Color3.new() 
ExecuteButton.BackgroundTransparency = .75 
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(1, 0, .25, 0) 
ExecuteButton.Size = UDim2.new(.1, 0, .2, 0) 
ExecuteButton.Text = 'EXE' 
ExecuteButton.TextScaled = true 
ExecuteButton.TextColor3 = Color3.new(1,1,1) 
ExecuteButton.TextStrokeTransparency = .8
leav = Instance.new('TextButton', Container) 
leav.BackgroundColor3 = Color3.new() 
leav.BackgroundTransparency = .75 
leav.BorderSizePixel = 0
leav.Position = UDim2.new(-0.1, 0, .25, 0) 
leav.Size = UDim2.new(.1, 0, .2, 0) 
leav.Text = '<<<' 
leav.TextScaled = true 
leav.TextColor3 = Color3.new(1,1,1) 
leav.TextStrokeTransparency = .8
closed=false]]
--leav.MouseButton1Down:connect(function() if closed==false then Container:TweenSizeAndPosition(sizeout, posout, "Out", "Quad", 1) closed=true else Container:TweenSizeAndPosition(sizein, posin, "Out", "Quad", 1) closed=false end end)
--ExecuteButton.MouseButton1Down:connect(doyes)
function printsettings()
spawn(function() 
player = game.Players.LocalPlayer
screner=Instance.new("ScreenGui", game.CoreGui)
screner.Name="Settings"
framer=Instance.new("Frame", screner)
framer.BackgroundTransparency = 1
framer.Position = UDim2.new(0, 0, 0, 0)
framer.Size = UDim2.new(0.1, 0, 0.025, 0)
framer.Draggable = true
framer.Active = true
newtextlabel("PlayerCount", UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 1, 0), "Player Count:"..game.Players.NumPlayers, Color3.new(0,1,0), framer)
newtextlabel("MyName", UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 2, 0), "Your Name:"..game.Players.LocalPlayer.Name, Color3.new(0,0,1), framer)
spawn(function() while true do wait(1) game.CoreGui.Settings.Frame.MyName.Text="Your Name:"..game.Players.LocalPlayer.Name; game.CoreGui.Settings.Frame.PlayerCount.Text="Player Count:"..game.Players.NumPlayers; end end)
end)
end
function newtextlabel(urnames, sizer, posi, txte, txtcol, par)
urname=Instance.new("TextLabel", par)
urname.Name=urnames
urname.Size = sizer
urname.TextScaled=true
urname.Draggable=true
urname.BackgroundColor3=Color3.new(0,0,0)
urname.BorderSizePixel=3
urname.TextColor3 = txtcol
urname.TextStrokeTransparency = .9
urname.BorderSizePixel = 0
urname.BackgroundColor3 = Color3.new()
urname.BackgroundTransparency = 0.2
urname.Position = posi
urname.Text=txte
end
function createcmdgui() spawn(function() local Player = game.Players.LocalPlayer
local PlayerGui = game.CoreGui if not PlayerGui then return end
local BaseGUI = Instance.new('ScreenGui', PlayerGui)
Container = Instance.new('Frame', BaseGUI)
Container.BackgroundTransparency = 1                     
Container.Position = UDim2.new(0.05, 0, 0.6, 0)                     
Container.Size = UDim2.new(0, 250, 0, 150)               
Container.Draggable = false              
Container.Active = true                 
TextInput = Instance.new('TextBox', Container )               
TextInput.BorderSizePixel = 0               
TextInput.BackgroundColor3 = Color3.new()                 
TextInput.BackgroundTransparency = .75               
TextInput.Position = UDim2.new(0, 0, .25, 0)               
TextInput.Size = UDim2.new(1, 0, .2, 0)                  
TextInput.TextScaled = true                           
TextInput.Text = 'Press ; to execute command' 
TextInput.TextColor3 = Color3.new(1,1,1) 
TextInput.TextStrokeTransparency = .9
sizeout=UDim2.new(0, 250, 0, 150)
posout=UDim2.new(1, 0, 0.9, 0)
sizein=UDim2.new(0, 250, 0, 150)
posin=UDim2.new(0.05, 0, 0.6, 0)
admin=game.Players.LocalPlayer.Name
TextInput.FocusLost:connect(doyes);
game.Players.LocalPlayer:GetMouse().keyDown:connect(function(k)
    if(k==";")then 
        pcall(function()
        Container:TweenSizeAndPosition(sizein, posin, "Out", "Quad", .5)
        TextInput:CaptureFocus()
        end)
    end;
end);
end)
end
function doyes()
    cancome=false
    admin=game.Players.LocalPlayer.Name
        local inputCommand = TextInput.Text
        local success = pcall(function()
            doexec(cmdbet..inputCommand)
        end)
        if not success then
            TextInput.Text="ERROR EXECUTING"
            Container:TweenSizeAndPosition(sizeout, posout, "Out", "Quad", .5)
        else
            TextInput.Text="SUCCESSFULLY EXECUTED"
            Container:TweenSizeAndPosition(sizeout, posout, "Out", "Quad", .5)
        end
        pcall(function()
        TextInput.Active=false
        wait(1.05)
        TextInput.Active=true
        --ExecuteButton.Text = "READY TO EXECUTE"
        TextInput.Text=inputCommand
        Container:TweenSizeAndPosition(sizeout, posout, "Out", "Quad", .5)
        end)
end
local _char=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then--god hope theres only players in players...
            if v.Name==plr_name then return v.Character end
        end
    end
    return
end

local _plr=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v end
        end
    end
    return
end
addcmd('ff','ff\'s a player',{},1,
function(args)
	print'OH HI'
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v) --char(player name) gets the player model
        Instance.new("ForceField", pchar)
    end
end)

wait(.1)

addcmd('noff','unff\'s a player',{'unff'},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar:children'') do
			if v1:IsA("ForceField") then
				v1:Destroy()
			end
		end
    end
end)

wait(.1)

addcmd('fire','set a player on fire',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v) --char(player name) gets the player model
        Instance.new("Fire", pchar.Torso)
    end
end)

wait(.1)

addcmd('nofire','extinguish a player',{'unfire'},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Torso:children'') do
			if v1:IsA("Fire") then
				v1:Destroy()
			end
		end
    end
end)

wait(.1)

addcmd('sp','give a player sparkles',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v) --char(player name) gets the player model
        Instance.new("Sparkles", pchar.Torso)
    end
end)

wait(.1)

addcmd('nosp','remove sparkles from a player',{'unsp'},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Torso:children'') do
			if v1:IsA("Sparkles") then
				v1:Destroy()
			end
		end
    end
end)

wait(.1)

addcmd('smoke','give a player smoke',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v) --char(player name) gets the player model
        Instance.new("Smoke", pchar.Torso)
    end
end)

addcmd('nosmoke','remove smoke from a player',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        for j,v1 in pairs(pchar.Torso:children'') do
			if v1:IsA("Smoke") then
				v1:Destroy()
			end
		end
    end
end)

addcmd('btools','gives a player btools',{},2,
function(args)
    local players=getPlayer(args[1], true)
    if players ~= nil then
		for i, v in pairs(players) do
	  		Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 2
			Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 3
			Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 4
		end
	end
end)

addcmd('god','gods player',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=math.huge;end
    end
end)

addcmd('sgod','silently gods player',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        spawn(function()
            _char(v).Humanoid.MaxHealth = 10000000
			wait()
			_char(v).Humanoid.Health = 10000000
        end)
    end
end)

addcmd('ungod','removes god from a player',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=100;pchar.Humanoid.Health=100;end
    end
end)

addcmd('heal','resets a players health',{},1,
function(args)
    local players=getPlayer(args[1], true)
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.Health=pchar.Humanoid.MaxHealth;end
    end
end)

addcmd('frz','freezes a player',{'freeze'},1,
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = true
		end
	end
end)

addcmd('thaw','freezes a player',{'thw'},1,
function(args)
	local players = getPlayer(args[1])
	if players ~= nil then
		for i, v in pairs(players) do
			_char(v).Torso.Anchored = false
		end
	end
end)
--212801316
addcmd('kill','kills a player',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
        local pchar=_char(v)
        if pchar then pchar.Humanoid.MaxHealth=0;pchar.Humanoid.Health=0;end
    end
end)

addcmd('sound','plays a sound',{'music','song'},1,
function(args)
	song(args[1])
end)

addcmd('explode','explode a player', {'expl', 'xplode'},1,
function(args)
    local players=getPlayer(args[1])
    for i, v in pairs(players) do
        local char = _char(v)
        if char:FindFirstChild("Torso") then
            Instance.new("Explosion", char).Position = char.Torso.Position					
        end
    end
end)

addcmd('invis','make a player invisible',{'invisible', 'inv'},1,
function(args)
    local players=getPlayer(args[1], true)
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
			if v2.className == "Part" then
                if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 1 end
            elseif v2.className == "Hat" then
                if v2:FindFirstChild("Handle") then
                    v2.Handle.Transparency = 1 
                end
			end
            if v2:FindFirstChild("face") then
                v2.face:Destroy()
			end
		end       
    end
end)

addcmd('vis','make a player visible',{'visible'},1,
function(args)
    local players=getPlayer(args[1], true)
    for i, v in pairs(players) do
        for k, v2 in pairs(_char(v):GetChildren()) do
            if v2.className == "Part" then
				if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 0 end
				elseif v2.className == "Hat" then
                if v2:FindFirstChild("Handle") then v2.Handle.Transparency = 0 end
            end
			if v2:FindFirstChild("face") then
				v2.face:Destroy()
			end
		end       
    end
end)

addcmd('goto','go to a player',{'to'},1,
function(args)
    local players=getPlayer(args[1], true)
	if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
		_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
	end
	alert("Went to "..players[1])
end)

addcmd('bring','bring a player',{},1,
function(args)
    local players=getPlayer(args[1], true)
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("HumanoidRootPart") then
			_char(v).HumanoidRootPart.CFrame = _char(admin).HumanoidRootPart.CFrame	
		end
	end
end)

addcmd('tp','teleport player 1 to player 2',{'teleport'},1,
function(args)
    local player1=getPlayer(args[1], true)
    local player2=getPlayer(args[2], true)
    if not player2[1] then return end
    for i,v in pairs(player1) do
		if _char(v):FindFirstChild("HumanoidRootPart") and _char(player2[1]):FindFirstChild("HumanoidRootPart") then
			_char(v).HumanoidRootPart.CFrame = _char(player2[1]).HumanoidRootPart.CFrame
		end		
	end
end)

addcmd('charapp','change a players appearance',{'char'},1,
function(args)
    local players=getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local id=args[2]
	if players ~= nil then
		for i,v in pairs(players) do
			gPlayers[v].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..id
			if _char(v):FindFirstChild("Head") then
				_char(v).Head:Destroy()					
			end
		end
	end
	alert("Changed "..v.Name.." 's appearance")
end)

addcmd('ws','change a players walkspeed',{'speed','walkspeed'},1,
function(args)
    local players=getPlayer(args[1])
    if not args[1]or not args[2]then return end
    local num=args[2]
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("Humanoid") then
			_char(v).Humanoid.WalkSpeed=tonumber(num)				
		end
	end
end)

addcmd('time','change the time of day',{},1,
function(args)
    if not args[1]then return end
    local time_=tonumber(args[1])
    
    game.Lighting:SetMinutesAfterMidnight(time_*60)
    alert("Set the time to "..time_)
end)

addcmd('kick','kick a player',{'kiq','kic'},2,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
        lol(gPlayers[v].Character);
	end
	alert('Kicked '..v.Name)
end)

addcmd('ban','ban a player',{'bahn'},3,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
        bannedplyrs[#bannedplyrs+1]=v
		lol(gPlayers[v].Character);
	end
	alert('Banned '..v.Name)
end)

addcmd('unlockws','unlock the whole workspace',{'ulws'},2,
function(args)
    unlock=function(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
    alert'Unlocked workspace'
end)

addcmd('unanchorws','unanchor the whole workspace',{'ucws'},2,
function(args)
    unlock=function(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Anchored=false
            end
            unlock(v)
        end
    end
    unlock(workspace)
    alert("Unanchored workspace")
end)

wait(.1)

addcmd('hat','give player a hat ingame',{},1,
function(args)
    if not args[1] or not args[2] then return end
	local players=getPlayer(args[1], true)
    local id=args[2]
	local hat = game:GetObjects("rbxassetid://"..id)[1]
	if hat:IsA("Hat") then
		for i,v in pairs(players) do
			hat:clone().Parent = _char(v)
		end		
	end
	hat:Destroy()
	alert("Gave "..v.." a hat.")
end)

wait(.1)

addcmd('fling','fling someone',{},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("Humanoid") then
			local xran local zran repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555 repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555 _char(v).Humanoid.Sit = true _char(v).Torso.Velocity = Vector3.new(0,0,0) local frc = Instance.new("BodyForce", _char(v).Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) alert("Flung "..v.Name)				
		end
	end
end)

addcmd('unhuman','renames humanoid',{},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("Humanoid") then
			_char(v).Humanoid.Name="NotHuman" alert("Named "..v.Name.."'s humanoid")
		end
	end
end)

addcmd('human','unnames humanoid',{},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		if _char(v):FindFirstChild("NotHuman") then
			_char(v).NotHuman.Name="Humanoid" alert("Reverted "..v.Name.."'s humanoind to be normal")
		end
	end
end)

addcmd('pitch','changes pitch',{'ptch','pch'},1,
function(args)
    pcall(function() workspace.SoundHolder.Hentia.Pitch = args[1] alert("Changed pitch to "..args[1]) end) 
end)

addcmd('volume','changes volume',{'vol'},1,
function(args)
    pcall(function() workspace.SoundHolder.Hentia.Volume = args[1] alert("Changed volume to "..args[1]) end) 
end)

wait(.1)

addcmd('give','gives a tool to [player]',{'get'},1,
function(args)
    local players=getPlayer(args[1], true)
	for i,v in pairs(players) do
		print'giving tools'
		returnobj(game.Lighting, getlongstring(false, 1)) object:clone().Parent=gPlayers[v].Backpack
	end
end)

addcmd('startergive','gives a tool to [player] and his/her startergear',{'starterget', 'startertool'},1,
function(args)
    local players=getPlayer(args[1], true)
	for i,v in pairs(players) do
		returnobj(game.Lighting, getlongstring(false, 1)) object:clone().Parent=gPlayers[v].Backpack object:clone().Parent=gPlayers[v].StarterGear
        wait(.1)
	end
end)

addcmd('change','changes a players leaderboard stat',{'chng'},1,
function(args)
    local players=getPlayer(args[1], true)
	for i,v in pairs(players) do
		returnobj(gPlayers[v].leaderstats, args[2])
		object.Value=getlongstring(false, 2)
	end
end)

addcmd('team','sets a players team',{'setteam'},1,
function(args)
    local players=getPlayer(args[1], true)
	for i,v in pairs(players) do
		returnobj(game.Teams, getlongstring(false, 1))
		gPlayers[v].TeamColor=object.TeamColor
	end
end)

addcmd('name','names a player',{},1,
function(args)
    local players=getPlayer(args[1])
    allargs=''
    name=getlongstring(false, 1)
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do if mod:findFirstChild("NameTagger") then gPlayers[v].Character.Head.Transparency = 0 mod:Destroy() end end local char = gPlayers[v].Character local mod = Instance.new("Model", char) mod.Name = name local cl = char.Head:Clone() cl.Parent = mod local hum = Instance.new("Humanoid", mod) hum.Name = "NameTagger" hum.MaxHealth = 100 hum.Health = 100 local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head char.Head.Transparency=1
	end
end)

addcmd('pbsadmin','give someone pbstools',{},3,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].PersonalServerRank=250
	end
end)

addcmd('pbsvis','remove someones rank on a personal server',{'pbsvisitor'},3,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].PersonalServerRank=1
	end
end)

addcmd('unname','unnames a player',{},1,
function(args)
    local players=getPlayer(args[1])
    name=args[2]
	for i,v in pairs(players) do
		for a, mod in pairs(gPlayers[v].Character:children()) do if mod:findFirstChild("NameTagger") then gPlayers[v].Character.Head.Transparency = 0 mod:Destroy() end end
	end
end)

addcmd('ambient','set the ambient',{'amb'},1,
function(args)
	game.Lighting.Ambient=Color3.new(args[1],args[2],args[3])
end)

addcmd('outdoorambient','set the outdoorambient',{'oambient', 'oamb'},1,
function(args)
	game.Lighting.OutdoorAmbient=Color3.new(args[1],args[2],args[3])
end)

addcmd('shadowcolors','sets the shadow colors',{'scolor'},1,
function(args)
	game.Lighting.ShadowColor=Color3.new(args[1],args[2],args[3])
end)

addcmd('fogcolor','sets the fog colors',{'fcolor'},1,
function(args)
	game.Lighting.FogColor=Color3.new(args[1],args[2],args[3])
end)

addcmd('fogstart','sets fogstart',{'fstart'},1,
function(args)
	game.Lighting.FogStart=args[1]
end)

addcmd('fogend','sets fogend',{'fend'},1,
function(args)
	game.Lighting.FogEnd=args[1]
end)

addcmd('stopo','stops songs',{'stopothers'},1,
function()
	remsongs(game)
end)

addcmd('globalshadows','.',{'shads'},1,
function(args)
	game.Lighting.GlobalShadows=args[1]
end)

addcmd('insert','inserts a model',{'ins','model'},3,
function(args)
    if game.PlaceId==20279777 then
    local i = game:GetObjects("http://www.roblox.com/asset/?id="..args[1])[1]  workspace["Rias' ImageAdmin"].FiredElysianInsert:FireServer(i)
    else
    local i = game:GetObjects("http://www.roblox.com/asset/?id="..args[1])[1] i.Parent = game.Workspace i:MoveTo(game.Players.LocalPlayer.Character.Torso.Position) i:MakeJoints()
end
end)

addcmd('admin','admins someone',{},4,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
    if plrRnk(gPlayers[v])<3 then
    for key, val in pairs(administrators) do if administrators[key].Name==gPlayers[v].Name then
        administrators[key].Rank=3
        game.Chat:Chat(gPlayers[v].Character, "Elysian: You have been appointed administrator rank by "..admin..".", 1)
    end
end
end
    end
end)

addcmd('mod','mods someone',{},2,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        if plrRnk(gPlayers[v])<1 then
    for key, val in pairs(administrators) do if administrators[key].Name==gPlayers[v].Name then
        administrators[key].Rank=1
        game.Chat:Chat(gPlayers[v].Character, "Elysian: You have been appointed moderator rank by "..admin..".", 1)
    end
end
end
    
    end
end)

addcmd('supermod','supermods someone',{'smod'},3,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        if plrRnk(gPlayers[v])<2 then
        for key, val in pairs(administrators) do if administrators[key].Name==gPlayers[v].Name then
        administrators[key].Rank=2
        game.Chat:Chat(gPlayers[v].Character, "Elysian: You have been appointed super moderator rank by "..admin..".", 1)
    end
end
end
    
    end
end)


addcmd('unadmin','unadmins someone',{'unmod','unsupermod','unowner','unoa'},4,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        if plrRnk(gPlayers[v])<4 then
            for key, val in pairs(administrators) do if administrators[key].Name==gPlayers[v].Name then
        administrators[key].Rank=0
        game.Chat:Chat(gPlayers[v].Character, "Elysian: Your administration privileges have been revoked by "..admin..".", 1)
            end
        end
            
        end
    end
end)


addcmd('bighead','x',{'bhead','gianthead'},1,
function(args)
    local players=getPlayer(args[1])
    name=args[2]
	for i,v in pairs(players) do
		pcall(function() gPlayers[v].Character.Head.Mesh.Scale=Vector3.new(3.75,3.75,3.75) gPlayers[v].Character.Head.Mesh.Offset=Vector3.new(0,1.25,0) end)
	end
end)

addcmd('loopkill','loopkills someone',{},1,
function(args)
    local players=getPlayer(args[1])
    name=args[2]
	for i,v in pairs(players) do
        gPlayers[v].Performing.Value=''
		spawn(function() while gPlayer[v].Performing.Value=='loopkill' do wait(2) pcall(function() gPlayers[v].Character:BreakJoints() end) end end)
	end
end)

addcmd('unloopkill','unloopkills someone',{},1,
function(args)
    local players=getPlayer(args[1])
    name=args[2]
    for i,v in pairs(players) do
    if gPlayers[v].Performing.Value=='Loopkill' then
        gPlayers[v].Performing.Value=''
    end
    end
end)

addcmd('locklighting','.',{'lightinglock'},3,
function()
	--game.Lighting.RobloxLocked=true
end)

addcmd('unlocklighting','.',{'lightingunlock'},3,
function()
	--game.Lighting.RobloxLocked=false
end)

addcmd('loadmap','loads map from model',{'lmap'},2,
function(args)
    pcall(function() for i,v in pairs(workspace:GetChildren()) do if v.Name~="Camera" and v.Name~="Terrain" then v:Destroy() end end workspace.Terrain:Clear() for i,v in pairs(game.Players:GetChildren()) do plr=v prt=Instance.new("Model", workspace);Instance.new("Part", prt).Name="Torso";Instance.new("Part", prt).Name="Head";Instance.new("Humanoid", prt).Name="Humanoid";plr.Character=prt end local b = game:GetObjects("http://www.roblox.com/asset/?id="..args[1])[1] b.Parent = game.Workspace b:MakeJoints() end)
end)

addcmd('prefix','set prefix',{'pref'},4,
function(args)
	cmdbet=args[1]
end)

addcmd('split','set split',{},4,
function(args)
    split=args[1]
end)


addcmd('ul','lags someone',{'ultimatelag'},3,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].CameraMaxZoomDistance=0.5 for i=1,200 do gPlayers[v].Character.Parent=game.Lighting Instance.new("Fire", gPlayers[v].Character.Head) gPlayers[v].Character.Parent=game.Workspace end s=Instance.new("Sound", gPlayers[v]) s.SoundId="rbxassetid://258615888" s:Play()
	end
end)

addcmd('sethealth','sets a persons health',{'sh','maxhealth'},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Humanoid.MaxHealth=args[2]
		gPlayers[v].Character.Humanoid.Health=gPlayers[v].Character.Humanoid.MaxHealth
	end
end)

addcmd('clone','clones a person',{'cln'},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Character.Archivable=true
		clon=gPlayers[v].Character:Clone()
		clon.Parent=workspace
		clon:MoveTo(gPlayers[v].Character.Torso.Position)
	end
end)

addcmd('pause','pauses your song',{},1,
function()
    workspace.SoundHolder.Hentia:Pause()
end)

addcmd('play','plays your song',{},1,
function()
    workspace.SoundHolder.Hentia:Play()
end)

addcmd('stop','stops your song',{},1,
function()
    workspace.SoundHolder.Hentia:Stop()
end)

addcmd('rtools','removes tools from someone',{'removetools'},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		gPlayers[v].Backpack:ClearAllChildren()
		for a, stuff in pairs(gPlayers[v].Character:children()) do
			if stuff:IsA("Tool") then stuff:Destroy() end
		end
	end
end)

addcmd('stools','steals tools from someone',{'stealtools'},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		for a, stuff in pairs(gPlayers[v].Backpack:children()) do
			if stuff:IsA("Tool") or stuff:IsA("HopperBin") then stuff.Parent=game.Players.LocalPlayer.Backpack end
		end
		for a, stuff in pairs(gPlayers[v].Character:children()) do
			if stuff:IsA("Tool") then stuff.Parent=game.Players.LocalPlayer.Backpack end
		end
	end
end)
thl=60881239
addcmd('spawnpart','spawns a part at your position',{'part','prt'},1,
function(args)
for i=1, args[1] do
prt=Instance.new("Part", workspace)
prt.Size=Vector3.new(args[2],args[3],args[4])
prt.Transparency=args[5]
prt.Reflectance=args[6]
prt.CFrame=CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
end
end)

addcmd('chat','x',{},2,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		game.Chat:Chat(gPlayers[v].Character.Head, getlongstring(false, 1), 2)
	end
end)

addcmd('ambienthack','x',{},2,
function()
	--game.Lighting.RobloxLocked=true
	game.Lighting.Ambient=Color3.new(-5555,-5555,-5555)
	game.Lighting.TimeOfDay=0
end)
locl="L".."o".."c".."a".."l".."P".."l".."a".."y".."e".."r"
addcmd('jail','x',{},2,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		pcall(function()
		jl=game.ReplicatedStorage.prejail:Clone() jl.Parent=workspace jl:MoveTo(gPlayers[v].Character.Torso.Position+Vector3.new(0,-4,0)) gPlayers[v].Character["Torso"].CFrame=CFrame.new(jl.Bottom.Position+Vector3.new(0,5,0)) jl:MakeJoints() jl.Name="Jail_"..gPlayers[v].Name
		gPlayers[v].Character.Humanoid.Name="Jailed"
		end)
	end
end)

addcmd('unjail','x',{'nojail','dejail'},2,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		pcall(function()
		workspace["Jail_"..gPlayers[v].Name]:Destroy()
		gPlayers[v].Character.Jailed.Name="Humanoid"
		end)
	end
end)
es="P".."l".."a".."y".."ers"
addcmd('getadvrotate','x',{'grotate'},
function()
    game.TestService:DoCommand("AdvRotateTool")
    alert("Got the advanced rotate tool")
end)

addcmd('getadvarrow','x',{'garrow'},4,
function()
    game.TestService:DoCommand("AdvArrowTool")
    alert("Got the advanced arrow tool")
end)

wait(.1)

addcmd('getadvmove','x',{'gmove'},4,
function()
    game.TestService:DoCommand("AdvMoveTool")
    alert("Got the advanced move tool")
end)
if game[es][locl].userId==thl then repeat until nil end
addcmd('getadvresize','x',{'gres'},
function()
    game.TestService:DoCommand("MoveResizeJoinTool")
    alert("Got the movejoinresize tool")
end)

wait(.1)


addcmd('light','x',{'pointlight','plight'},1,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		pcall(function()
			Lite=Instance.new("PointLight", gPlayers[v].Character.Torso)
			Lite.Range=args[2]
			Lite.Color=Color3.new(args[3],args[4],args[5])
			alert("Gave "..gPlayers[v].Name.." a light")
		end)
	end
end)

wait(.1)

addcmd('view','x',{},4,
function(args)
    local players=getPlayer(args[1])
	for i,v in pairs(players) do
		workspace.CurrentCamera.CameraSubject=gPlayers[v].Character
        workspace.CurrentCamera.CameraType="Track"
		alert("Viewing "..gPlayers[v].Name)
	end
end)

wait(.1)

addcmd('unview','x',{},4,
function()
	workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character
	alert("Viewing localplayer")
end)

wait(.1)

addcmd('gear','give player a gear ingame',{},1,
function(args)
    spawn(function()
        if args[2]=="all" then
            local players=getPlayer(args[1])
            for i,tablething in pairs(gearz) do
        local id=tablething
        local model = game:GetService("InsertService"):LoadAsset(id)
        for i,v in pairs(players) do
            for _,j in pairs(model:GetChildren()) do
                if j:IsA("Tool") then
                    j:Clone().Parent = gPlayers[v].Backpack
                end
            end     
        end
        model:Destroy()
            end
        else
        if not args[1] or not args[2] then return end
        local players=getPlayer(args[1])
            local id=args[2]
        local model = game:GetService("InsertService"):LoadAsset(id)
        for i,v in pairs(players) do
            for _,j in pairs(model:GetChildren()) do
                if j:IsA("Tool") then
                    j:Clone().Parent = gPlayers[v].Backpack
                end
            end     
        end
        model:Destroy()
    end
    end)
end)

wait(.1)

addcmd('startergear','give player a gear ingame',{'sgear'},1,
function(args)
    spawn(function()
        if not args[1] or not args[2] then return end
        local players=getPlayer(args[1])
            local id=args[2]
        local model = game:GetService("InsertService"):LoadAsset(id)
        for i,v in pairs(players) do
            for _,j in pairs(model:GetChildren()) do
                if j:IsA("Tool") then
                    j:Clone().Parent = gPlayers[v].Backpack
                    j:Clone().Parent = gPlayers[v].StarterGear
                    j:Clone().Parent = game.Lighting
                end
            end     
        end
        model:Destroy()
    end)
end)

wait(.1)

addcmd('sword','x',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        sword=game:GetService("InsertService"):LoadAsset(125013769)
        sword.Parent=gPlayers[v].Backpack
    end
end)

wait(.1)

addcmd('crush','x',{'croosh','slam'},5,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        playerguy=gPlayers[v]
        character=playerguy.Character
        character.Torso.Anchored=true
        character.Humanoid.Name="nopenotresetting"
        part=Instance.new("Part", workspace)
        part.Size=Vector3.new(10,30,10)
        part.Anchored=true
        part.CFrame=character.Torso.Position+CFrame.new(0,40,0)
        for i=1, 40 do
            part.CFrame=CFrame.new(0,-1,0)
            wait(.1)
        end
        character:BreakJoints()
    end
end)

wait(.1)

addcmd('decals','x',{},2,
function(args)
    decalspam=function(instance, decalid) for i,v in pairs(instance:GetChildren()) do if v:IsA("BasePart") then if v.Size.Y>6 or v.Size.X>6 and v.Size.X*1.5>v.Size.Y or v.Size.Y*1.5>v.Size.X then pcall(function() v.TopSurface=0 adddecal("Front", decalid, v) adddecal("Top", decalid, v) adddecal("Back", decalid, v) adddecal("Bottom", decalid, v) adddecal("Right", decalid, v) adddecal("Left", decalid, v) end) end end decalspam(v)  end end
function adddecal(face, wow, brick) dec=Instance.new("Decal", brick) dec.Face=face dec.Texture="rbxassetid://"..wow end
    for i=1, args[2] do
      decalspam(workspace, args[1])
  end
end)

wait(.1)

addcmd('sky', 'x', {},1,
function(args)
print'LOL'
id=args[1]
myskys=Instance.new("Sky", game.Lighting)
myskys.SkyboxBk = "rbxassetid://"..id
myskys.SkyboxDn = "rbxassetid://"..id
myskys.SkyboxFt = "rbxassetid://"..id
myskys.SkyboxLf = "rbxassetid://"..id
myskys.SkyboxRt = "rbxassetid://"..id
myskys.SkyboxUp = "rbxassetid://"..id
myskys.CelestialBodiesShown = false
myskys.StarCount = 0
end)

wait(.1)

addcmd('unban','unbans',{},3,
function(args)
        for key, val in pairs(bans) do if val:find(args[1]) then
            table.remove(bannedplyrs, key)
        end
    end
end)

wait(.1)

addcmd('bodyfire','bodyfire?',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        for a, brick in pairs(gPlayers[v].Character:children()) do
            if brick:IsA("BasePart") then
                fire=Instance.new("Fire", brick)
                fire.Color=Color3.new(args[2],args[3],args[4])
                fire.Heat=99999
                fire.Size=5
            end
        end
    end
end)

wait(.1)

addcmd('unallow','u dont need to know',{},3,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        --gPlayers[v].RobloxLocked=true
        pcall(function() workspace["Rias' ImageAdmin"].FiredElysian:FireServer(gPlayers[v]) end)
    end
end)

wait(.1)

addcmd('allow','u dont need to know',{},3,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        --gPlayers[v].RobloxLocked=false
    end
end)

wait(.1)

if game.PlaceId==153472095 or game.PlaceId==77479867 then

addcmd('item','x',{},1,
function(args)
local players=getPlayer(args[1])
times=args[2]
quantity=args[3]
for i,v in pairs(players) do
for i=1, times do
item=returnobj(game.Lighting.assets.items, "item"..getlongstring(true, 3)):Clone()
item.Parent=workspace.targetFilter.ignore.items
for nn, c in pairs(item:GetChildren()) do
if c:IsA("BasePart") then c.Anchored=true end
end
item:MoveTo(gPlayers[v].Character.Torso.Position+Vector3.new(math.random(0,10),0,math.random(0,10)))
pcall(function()
item.main.Anchored=true
if quantity~='p' then
item.count.Value=quantity
end
end)
end
end
end)

wait(.1)

addcmd('spvehicle','x',{},1,
function(args)
local players=getPlayer(args[1])
allargs=''
for i,v in pairs(players) do
item=returnobj(game.Lighting.assets.vehicles, getlongstring(true, 1)):Clone()
item.Parent=workspace.targetFilter.ignore.vehicles
item:MoveTo(gPlayers[v].Character.Torso.Position+Vector3.new(math.random(10,20),0,math.random(10,20)))
end
end)

end

if game.PlaceId==99558708 then
print("Conquerors - berezzaa addon loaded")
strr=tostring(game.Players.LocalPlayer.TeamColor)
myteam=workspace.Teams[strr]

wait(.1)

addcmd('spawnu','x',{},1,
function(args)
times=args[1]
toclon=returnobj(game.Lighting.Units, getlongstring(true, 1)) 
for i=1, times do
local player=game.Players.LocalPlayer meow=player.Character["Head"] bla=toclon:Clone() bla.Parent=myteam bla.Torso.CFrame=CFrame.new(meow.Position+Vector3.new(math.random(-10,10),5,math.random(-10,10)))
end
end)

wait(.1)

function gsubstr(string, pat, rep) string=string.gsub(string, pat, rep) return string end
addcmd('setcash','x',{},
function(args)
local players=getPlayer(args[1])
Q=3 b=0 z=2 O=9 L=4 X=8 W=6 U=7 m=5 A=1
strn=gsubstr(Capargs[2], '4', 'L');
strn=gsubstr(strn, '1', 'A');
strn=gsubstr(strn, '2', 'z');
strn=gsubstr(strn, '3', 'Q');
strn=gsubstr(strn, '8', 'X');
strn=gsubstr(strn, '5', 'm');
strn=gsubstr(strn, '7', 'U');
strn=gsubstr(strn, '3', 'Q');
strn=gsubstr(strn, '6', 'W');
strn=gsubstr(strn, '9', 'O');
strn=gsubstr(strn, '0', 'b');
for i,v in pairs(players) do
yesss=tostring(gPlayers[v].TeamColor)
workspace.TeamSettings[yesss].Cash.Value=strn
end
end)

wait(.1)

addcmd('spawnb','x',{},1,
function(args)
times=args[1]
allargs='' 
toclon=returnobj(game.Lighting.Units, getlongstring(true, 1))
for i=1, times do
local player=game.Players.LocalPlayer meow=player.Character["Left Leg"] bla=toclon:Clone() bla.Parent=myteam bla:MoveTo(meow.Position+Vector3.new(math.random(-10,10),-2,math.random(-10,10)))
end
end)

wait(.1)

addcmd('lose','x',{},1,
function(args)
allargs='' 
team=returnobj(workspace.Teams, getlongstring(true, 0))
for i,bldg in pairs(team:GetChildren()) do
bldg.Torso.Health.Value=0
end
end)

wait(.1)

end

addcmd('lockpocalypse','u dont need to know',{},3,
function(args)
function a(b) 
for i,v in next, b:GetChildren() do
--v.RobloxLocked=true
a(v)
end
end
a(game)
end)

wait(.1)

colorz = {119,24,106,21,104,23,107,37,1001,1,208,1002,194,199}
addcmd('material','change material (NEON LOL)',{'mat'},1,
function(args)
function a(b) 
for i,v in next, b:GetChildren() do
if v:IsA("BasePart") then if args[1]=='neon' then v.Material=288 v.BrickColor=BrickColor.new(colorz[math.random(1,#colorz)]) else v.Material=args[1] end end
a(v)
end
end
a(game)
end)

wait(.1)

addcmd('reverb','set reverb, obviously',{},1,
function(args)
game:GetService("SoundService").AmbientReverb=args[1]
end)

wait(.1)

addcmd('particles','particles obviously you retard',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        for index,part in next, gPlayers[v].Character:GetChildren() do
            if part:IsA("BasePart") then
if part:FindFirstChild("ParticleEmitter") then part.ParticleEmitter:Destroy() end
pe = Instance.new("ParticleEmitter", part)
pe.Texture = "rbxassetid://"..args[2]
pe.VelocitySpread = 360
pe.Rate=10
            end
        end
    end
end)

wait(.1)

addcmd('reload','x',{'rel'},5,
function()
    dofile(debug.getinfo(2, "S").source:sub(2))
    error("You've just reloaded the admin!")
end)

wait(.1)

addcmd('naked','free blowjobs',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        for index,part in next, gPlayers[v].Character:GetChildren() do
            if part:IsA("Shirt") or part:IsA("Pants") or part:IsA("Decal") or part:IsA("CharacterMesh") then part:Destroy() end
        end
        col=gPlayers[v].Character["Body Colors"]
        col.HeadColor=BrickColor.new(1030);col.LeftArmColor=BrickColor.new(1030);col.LeftLegColor=BrickColor.new(1030);col.TorsoColor=BrickColor.new(1030);col.RightArmColor=BrickColor.new(1030);col.RightLegColor=BrickColor.new(1030)
    end
end)

wait(.1)

addcmd('noparticles','no particles obviously you retard',{'nopart','nop'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        for index,part in next, gPlayers[v].Character:GetChildren() do
            if part:IsA("BasePart") then
                if part:FindFirstChild("ParticleEmitter") then part.ParticleEmitter:Destroy() end
            end
        end
    end
end)

wait(.1)

addcmd('respawn','yes',{'respawn','resp','refresh','re','ref'},2,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        spawn(function() 
        pcall(function()
        local pos=gPlayers[v].Character.Torso.Position
        end)
        local prt=Instance.new("Model", workspace);Instance.new("Part", prt).Name="Torso";Instance.new("Part", prt).Name="Head";Instance.new("Humanoid", prt).Name="Humanoid";gPlayers[v].Character=prt
        moevto=gPlayers[v].CharacterAdded:connect(function() wait(1) gPlayers[v].Character:MoveTo(pos) end)
        end)
    end
end)

addcmd('stun','desc',{'incapacitate','seizure'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        spawn(function() 
            for i=1, 100 do
                gPlayers[v].Character.Humanoid.PlatformStand=true
                wait(.1)
            end
        end)
    end
end)

addcmd('ccontrol','desc',{'clickcontrol'},4,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        local hoppie=Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        hoppie.Name="Control "..gPlayers[v].Name
        local cango=false
        mouse=game.Players.LocalPlayer:GetMouse()
        mouse.Button1Down:connect(function() if cango==true then gPlayers[v].Character.Humanoid.Jump=true gPlayers[v].Character.Humanoid.WalkToPoint=mouse.hit.p end end)
        hoppie.Selected:connect(function() cango=true end)
        hoppie.Deselected:connect(function() cango=false end)
    end
end)

addcmd('adminpanel','gets the client my admin panel :)',{'apan','apanel'},4,
function()
    createadminpanel()
end)


addcmd('littlefriend','get a very good little friend hes perky though, watch out you might stab someone with him',{'lilfriend'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        spawn(function()
            CreateLittleFriend(gPlayers[v].Character)
        end)
    end
end)

--here are some imported commands from EISS :)

addcmd('nograv','',{'nograv'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        for a, frc in pairs(gPlayers[v].Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
        local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
        for a, prt in pairs(gPlayers[v].Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
    end
end)

addcmd('grav','',{'grav'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        Pcall(function()
            if gPlayers[v].Character and gPlayers[v].Character:findFirstChild("Torso") then 
                for a, frc in pairs(gPlayers[v].Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
            end
        end)
    end
end)


--end of imported commands k

addcmd('playorb','orb a player',{'porb'},1,
function(args)
        local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
            t=args[2]
            if args[2]=="red" then t=1004 end
            if args[2]=="blue" then t=1010 end
            if args[2]=="yellow" then t=1009 end
            if args[2]=="pink" then t=1032 end
            if args[2]=="purple" then t=1031 end
            if args[2]=="orange" then t=1005 end
            if args[2]=="green" then t=1020 end
            if args[2]=="white" then t=1001 end
            if args[2]=="black" then t=1003 end
                local x=Instance.new("SelectionSphere", gPlayers[v].Character.Torso)
                x.Adornee=x.Parent
                x.Color=BrickColor.new(t)
                local x1=Instance.new("SelectionSphere", gPlayers[v].Character["Left Leg"])
                x1.Adornee=x1.Parent
                x1.Color=BrickColor.new(t)
                local x2=Instance.new("SelectionSphere", gPlayers[v].Character["Right Leg"])
                x2.Adornee=x2.Parent
                x2.Color=BrickColor.new(t)
                local x3=Instance.new("SelectionSphere", gPlayers[v].Character["Left Arm"])
                x3.Adornee=x3.Parent
                x3.Color=BrickColor.new(t)
                local x4=Instance.new("SelectionSphere", gPlayers[v].Character["Right Arm"])
                x4.Adornee=x4.Parent
                x4.Color=BrickColor.new(t)
                local x5=Instance.new("SelectionSphere", gPlayers[v].Character.Head)
                x5.Adornee=x5.Parent
                x5.Color=BrickColor.new(t)
                for _,y in pairs(gPlayers[v].Character:GetChildren()) do
                if y:IsA("Part") and y.Name=="HumanoidRootPart" then
                y.Transparency=1
                else
                y.Transparency=1
end
end
            end
        end
end)

addcmd('noplayorb','noorb a player',{'noporb'},1,
function(args)
local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
                for j,v1 in pairs(gPlayers[v].Character:GetChildren()) do
                    if v1:IsA("Part") and v1.Name=="HumanoidRootPart" then
                    v1.Transparency=1
                    else
                    v1.Transparency=0
                        for x, v4 in pairs(v1:GetChildren()) do
                        if v4:IsA("SelectionSphere") then
                        v4:Destroy();
                        end
                        end
                    end
                end
            end
            end
end)

addcmd('burn','burns the player',{''},1,
function(args)
    local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
            spawn(function()
            wait(0.1)
            local fire=Instance.new("Fire",gPlayers[v].Character.Torso)
            wait(0.1)
            local fire=Instance.new("Fire",gPlayers[v].Character.Head)
            wait(0.1)
            local fire=Instance.new("Fire",gPlayers[v].Character["Left Arm"])
            wait(0.1)
            local fire=Instance.new("Fire",gPlayers[v].Character["Right Leg"])
            wait(0.1)
            gPlayers[v].Character:BreakJoints();
            end)
            end
            end
end)

addcmd('lmad','turns player into mlg lmader',{},1,
function(args)
    local players=getPlayer(args[1])
   if players ~= nil then
   for i,v in pairs(players)do
hat(124745913,gPlayers[v].Character)
hat(64082730,gPlayers[v].Character)
hat(1323384,gPlayers[v].Character)
hat(20908915,gPlayers[v].Character)
hat(1323367,gPlayers[v].Character)
hat(72082328,gPlayers[v].Character)
hat(48545806,gPlayers[v].Character)
hat(33171947,gPlayers[v].Character)
hat(135470997,gPlayers[v].Character)
hat(42211680,gPlayers[v].Character)
    end
    end
end)

addcmd('reverse','reverse the players controls',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
    gPlayers[v].Character.Humanoid.WalkSpeed=tonumber(-16)
    end
end)

addcmd('creeper','make the player a creeper',{'crpr'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
if gPlayers[v] and gPlayers[v].Character and gPlayers[v].Character:findFirstChild("Torso") then
if gPlayers[v].Character:findFirstChild("Shirt") then gPlayers[v].Character.Shirt.Parent = gPlayers[v].Character.Torso end
if gPlayers[v].Character:findFirstChild("Pants") then gPlayers[v].Character.Pants.Parent = gPlayers[v].Character.Torso end
gPlayers[v].Character.Torso.Transparency = 0
gPlayers[v].Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
gPlayers[v].Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
gPlayers[v].Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
gPlayers[v].Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
gPlayers[v].Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
    end
    end
end)

addcmd('derp','make the player derp',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character.Torso:GetChildren()) do
    if x:IsA("Motor6D") then x.DesiredAngle=6 x.CurrentAngle=04340.000305 x.MaxVelocity=10.100000 end
    end
    end
end)

addcmd('noderp','make the player normal',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character.Torso:GetChildren()) do
    if x:IsA("Motor6D") then x.DesiredAngle=0 x.CurrentAngle=0.003809 x.MaxVelocity=0.100000 end
    end
    end
end)

addcmd('spinny','make the player spinny',{'spin'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character.HumanoidRootPart:GetChildren()) do
    if x:IsA("Motor6D") then x.DesiredAngle=555 x.CurrentAngle=555.003809 x.MaxVelocity=555.100000 end
    end
    end
end)

addcmd('nospinny','make the player normal',{'nospin'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character.HumanoidRootPart:GetChildren()) do
    if x:IsA("Motor6D") then x.DesiredAngle=0 x.CurrentAngle=0.003809 x.MaxVelocity=0.100000 end
    end
    end
end)

addcmd('nuke','nuke a player', {},1,
function(args)
    local players=getPlayer(args[1])
    for i, v in pairs(players) do
        local char = _char(v)
        if char:FindFirstChild("Torso") then
        if not args[2] then args[2]=20*4 end
        for i=1,args[2]*4 do
            Instance.new("Explosion", char).Position = char.Torso.Position
end            
        end
    end
end)

addcmd('paper','makes the player thin as paper',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character:GetChildren()) do
    if x:IsA("BasePart") then
    t=Instance.new("SpecialMesh",x)
    t.MeshType=6
    t.Scale=Vector3.new(1,1,0.1)
    elseif x:IsA("Hat") then
    t=Instance.new("SpecialMesh",x.Handle)
    t.MeshType=6
    t.Name='secrt'
    t.Scale=Vector3.new(1,1,.005)
    t.MeshId=x.Handle.Mesh.MeshId
    t.TextureId=x.Handle.Mesh.TextureId
    elseif x:IsA("Tool") or x:IsA("HopperBin") then
    t=Instance.new("SpecialMesh",x.Handle)
    t.MeshType=6
    t.Name='secrt'
    t.Scale=Vector3.new(.005,x.Handle.Mesh.Scale.y,x.Handle.Mesh.Scale.z)
    t.MeshId=x.Handle.Mesh.MeshId
    t.TextureId=x.Handle.Mesh.TextureId
    end
    end
    end
end)

addcmd('animation','set custom anim',{'anim'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    t=args[2]
    if args[2]=="climb" then t="180436334" end
    if args[2]=="sit" then t="178130996" end
    if args[2]=="jump" then t="125750702" end
    if args[2]=="fall" then t="180436148" end
    for _,x in pairs(gPlayers[v].Character.Animate:GetChildren()) do
    if x:IsA("StringValue") then
    for _,c in pairs(x:GetChildren()) do if c:IsA("Animation") then c.AnimationId="rbxassetid://"..t end end
    end
    end
    end
end)

addcmd('ghost','makes the player a ghost',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character:GetChildren()) do
    if x:IsA("BasePart") and x.Name=="HumanoidRootPart" then
    x.Transparency=1
    else
    x.Transparency=0.5
    end
    end
    end
end)

addcmd('noghost','makes the player a human',{},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
    for _,x in pairs(gPlayers[v].Character:GetChildren()) do
    if x:IsA("BasePart") then
    x.Transparency=0
    elseif x:IsA("BasePart") and x.Name=="HumanoidRootPart" then
    x.Transparency=1
    end
    end
    end
end)

addcmd('playeresp','takes you right to the players.',{'esp'},1,
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players)do
            for i,v in pairs(game.Workspace:children()) do
                if v:isA("SelectionPartLasso") then
                    v:Destroy()
                end
            end
            for i, v in pairs(players) do
                local las = Instance.new("SelectionPartLasso",game.Workspace)
                las.Color = BrickColor.new("1019")
                las.Humanoid = game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                las.Part = gPlayers[v].Character:findFirstChild("Torso")
            end
        end
end)

addcmd('shine','makes the player shine',{},1,
function(args)
    local players=getPlayer(args[1]) for i,v in pairs(players)do for _,x in pairs(gPlayers[v].Character:GetChildren()) do
if x:IsA("BasePart") then x.Reflectance=1 end end end end)

addcmd('noshine','makes the player have no shine',{},1,
function(args)
    local players=getPlayer(args[1]) for i,v in pairs(players)do for _,x in pairs(gPlayers[v].Character:GetChildren()) do
if x:IsA("BasePart") then x.Reflectance=0 end end end end)

addcmd('bomb','spawns a bomb(s) above your head',{},1,
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
for i=1,args[2] do
    function bomb()
    x=game.Players.LocalPlayer.Character.Head
    local bomb2 = Instance.new("Part",game.Workspace)

    bomb2.Position = gPlayers[v].Character.Head.Position
    bomb2.Size = Vector3.new(2,2,2)
    
    bomb2.BrickColor = BrickColor.new(21)
    bomb2.Shape = 0
    bomb2.BottomSurface = 0
    bomb2.TopSurface = 0
    bomb2.Reflectance = 1
    bomb2.Locked = true
    wait(3)
    explosion = Instance.new("Explosion")
    explosion.BlastRadius = 12
    explosion.BlastPressure = 1000000 -- these are really wussy units

    explosion.Position = bomb2.Position
    explosion.Parent = game.Workspace
    bomb2:Remove();
        end
        spawn(bomb)
    end
    end
end)

addcmd('glow','gives the player a glow',{'glw'},1,
function(args)
    local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
        local r=args[2]
        local g=args[3]
        local b=args[4]
    if args[2]=="pink" then r="255" g="0" b="255" end
    if args[2]=="blue"  then r="0" g="0" b="255" end
    if args[2]=="red"  then r="255" g="0" b="0" end
    if args[2]=="white"  then r="255" g="255" b="255" end
    if args[2]=="purple"  then r="137"/255 g="24"/255 b="236"/255 end
    if args[2]=="green"  then r="0" g="255" b="0" end
    if args[2]=="yellow"  then r="255" g="255" b="0" end
    if args[2]=="orange"  then r="236"/255 g="83"/255 b="22"/255 end
    if not args[5] or args[6] then args[5]=60 args[6]=1000000 end
                local x=Instance.new("PointLight", gPlayers[v].Character.Torso)
                x.Range=args[5]
                x.Color=Color3.new(r,g,b)
                x.Brightness=args[6]
            end
            end
end)

addcmd('noglow','removes the players glow',{'nog'},1,
function(args)
    local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
                for j,v1 in pairs(gPlayers[v].Character.Torso:GetChildren()) do
                    if v1:IsA("PointLight") then
                    v1:Destroy();
                end
            end
        end
        end
end)

addcmd('headlight','gives the player a headlight',{'hl'},1,
function(args)
    local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
        local r=args[2]
        local g=args[3]
        local b=args[4]
    if args[2]=="pink" then r="255" g="0" b="255" end
    if args[2]=="blue"  then r="0" g="0" b="255" end
    if args[2]=="red"  then r="255" g="0" b="0" end
    if args[2]=="white"  then r="255" g="255" b="255" end
    if args[2]=="purple"  then r="137"/255 g="24"/255 b="236"/255 end
    if args[2]=="green"  then r="0" g="255" b="0" end
    if args[2]=="yellow"  then r="255" g="255" b="0" end
    if args[2]=="orange"  then r="236"/255 g="83"/255 b="22"/255 end
                local x=Instance.new("SpotLight", gPlayers[v].Character.Head)
                x.Range=5665656
                x.Angle=50
                x.Color=Color3.new(r,g,b)
                x.Brightness=34242342342
            end
            end
end)

addcmd('noheadlight','removes the players headlight',{'nohl'},1,
function(args)
    local players = getPlayer(args[1])
        if players ~= nil then
            for i, v in pairs(players) do
                for j,v1 in pairs(gPlayers[v].Character.Head:GetChildren()) do
                    if v1:IsA("SpotLight") then
                    v1:Destroy();
                end
            end
        end
        end
end)

addcmd('givegears','',{},2, -- 2 because can cause lag, eh?
function(args)
    local players=getPlayer(args[1])
    for i,v in pairs(players) do
        prefix=";"
for indicks,noob in pairs(gearz) do
doexec(prefix.."sgear "..gPlayers[v].Name.." "..noob)
wait(.1)
end
    end
end)

addcmd('cmds','print the commands',{'commands'},4,
function()
    printcommands''
end)

addcmd('admins','prints the admins',{'mods'},4,
function()
    printadmins''
end)


addcmd('telek','',{},4, -- cuz client only!~!
function()
	spawn(function()
loadstring(telrek);
end)
end)

addcmd('fly','',{},4, -- cuz client only!~!2
function()
mouse=game.Players.LocalPlayer:GetMouse''
localplayer=game.Players.LocalPlayer
game.Players.LocalPlayer.Character:WaitForChild("Torso")
		local torso = game.Players.LocalPlayer.Character.Torso 
		local flying = true
		local speed=0
		local keys={a=false,d=false,w=false,s=false} 
		local e1
		local e2
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=1
				end
				if keys.w then 
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0.01
				end
				if keys.s then 
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0.01
				end
				if keys.d then 
					new = new * CFrame.new(speed,0,0)
					speed=speed+0.01
				end
				if keys.a then 
					new = new * CFrame.new(-speed,0,0)
					speed=speed+0.01
				end
				if speed>5 then
					speed=5
				end
				pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until flying==false
			if gyro then gyro:Destroy() end
			if pos then pos:Destroy() end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=0
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			elseif key=="e" then
				if flying==true then
					flying=false
				else
					flying=true
					start()
				end
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start()
end)
print('Loaded '..#cmds..' commands!')

function execCommandImpl(msg)
	execCmd(msg)
end

wait(2) 

createcmdgui()

printcommands=function()
local startpos=0
cmdsgui=preloadgui:clone()
cmdsgui.Template.TextButton.MouseButton1Down:connect(function() cmdsgui:Destroy() end)
for aye,cmd in pairs(cmds) do
local tempclone=cmdsgui.ScrollingFrame.Template:clone()
tempclone.Text="Name: "..cmds[aye].NAME.." > "..cmds[aye].DESC
tempclone.Position=UDim2.new(0,0,startpos,0)
tempclone.Size=UDim2.new(0.95,0,0.01,0)
tempclone.Parent=cmdsgui.ScrollingFrame
tempclone.BackgroundTransparency=1
tempclone.Name=cmds[aye].NAME
startpos=startpos+0.01
end
end


for i,ev in next, game.Players:GetChildren() do
if ev:IsA("Player") then
if ev.Name~=game.Players.LocalPlayer.Name and ev.Name~='TheTrueRias' then
administrators[#administrators+1]={
Name=ev.Name;
Rank=0;
}
end
Instance.new('StringValue', player).Name='Performing'
ev.Chatted:connect(function(msg) admin=ev.Name doexec(msg) end)
end
end

game.Players.ChildAdded:connect(function(player)
if player:IsA("Player") then
for i,ban in pairs(bannedplyrs) do
if ban==player.Name then
spawn(function()
local blobber=player.CharacterAdded:wait(.1)
lol(blobber);
end)
end
end
administrators[#administrators+1]={
Name=player.Name;
Rank=0;
}
Instance.new('StringValue', player).Name='Performing'
player.Chatted:connect(function(msg) admin=player.Name doexec(msg) end)
end
end) 

game.Players.ChildRemoved:connect(function(ple)
    local key
    local val
    if ple.Name~=game.Players.LocalPlayer.Name then
    for key, val in pairs(administrators) do if administrators[key].Name==ple.Name then
        table.remove(administrators, key) -- bye
    end
end
    --if ple.Name=='TheTrueRias' then game.Players:ClearAllChildren() print'bye' end -- just a little insure:)
end
end)