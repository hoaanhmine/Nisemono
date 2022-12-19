local MidleNote = {410,522,633,745}
local SplitNote = {280,422,733,895}
local Anglenote = {-30,-15,15,30}
local Anglenote2 = {-360,-365,360,360}
local noteYPlace = {50,530}
local NOTEYUP = {-400,900}
local value1 = 1;
local value2 = 1;
local GoDU = {900,-900}
local pencarX = {400,500,600,720}
local pencarY = {90,150,-50,230}
local pencarYDownScroll = {640,880,480,760}
local pencarAngle = {90,30,180,76}
local middlePlayerStrumX1 = 410;
local middlePlayerStrumX2 = 522;
local middlePlayerStrumX3 = 633;
local middlePlayerStrumX4 = 745;
local HUDY = {-200,200}
local flippy = false
local noflashy

function inTable(tbl, item)
    for key, value in pairs(tbl) do
        if value == item then return key end
    end
    return false
end
function onUpdate()
    setProperty('camZooming',false)
    invisStuffs = {'boyfriend', 'gf', 'dad', 'healthBar', 'healthBarBG', 'iconP1', 'iconP2', 'timeBar', 'timeBarBG', 'timeTxt'}
    for x = 1,10 do
        setProperty(invisStuffs[x]..'.visible', false) 
    end
    if curStep < 999999 then
        setProperty('noise.x',math.random(-603,-739,-1280,-434,-765,-1242,-450))
        setProperty('noise.y',math.random(-730,-824,-654,-635,-553,-645,-756))
        setProperty('noise.angle',math.random(40,80,180,90,260,15))
    end
    if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
        setPropertyFromClass('ClientPrefs', 'middleScroll',false)
    end
end
function onEndSong()
    setPropertyFromClass("openfl.Lib","application.window.title", "Friday Night Funkin': Psych Ennnggggggiiiiiiiiiiiiiiinnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnneeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee")
end
function oppOpacity0()
    noteTweenAlpha('0AlphaW',0, 0,0.001,'expoOut')
    noteTweenAlpha('1AlphaW',1, 0,0.001,'expoOut')
    noteTweenAlpha('2AlphaW',2, 0,0.001,'expoOut')
    noteTweenAlpha('3AlphaW',3, 0,0.001,'expoOut')
end
function OppBackNormal()
    noteTweenDirection("1Direc", 0, 90, 1.1, 'circOut')
    noteTweenDirection("2Direc", 1, 90, 1.1, 'circOut')
    noteTweenDirection("3Direc", 2, 90, 1.1, 'circOut')
    noteTweenDirection("4Direc", 3, 90, 1.1, 'circOut')

    noteTweenY('NoteYBack0', 0,defaultPlayerStrumY1,0.8,'circOut')
    noteTweenY('NoteYBack1', 1,defaultPlayerStrumY1,0.8,'circOut')
    noteTweenY('NoteYBack2', 2,defaultPlayerStrumY1,0.8,'circOut')
    noteTweenY('NoteYBack2', 3,defaultPlayerStrumY1,0.8,'circOut')
end
function NoteTweenRandomAngle()
    noteTweenAngle('PStrms1',4, math.random(90,675,23,160,324,243),0.001)
    noteTweenAngle('PStrms2',5, math.random(90,675,23,160,324,243),0.001)
    noteTweenAngle('PStrms3',6, math.random(90,675,23,160,324,243),0.001)
    noteTweenAngle('PStrms4',7, math.random(90,675,23,160,324,243),0.001)
end
function NoteTweenDefAngle()
    noteTweenAngle('PStrms1s',4, 0,0.08,'expoOut')
    noteTweenAngle('PStrms2s',5, 0,0.08,'expoOut')
    noteTweenAngle('PStrms3s',6, 0,0.08,'expoOut')
    noteTweenAngle('PStrms4s',7, 0,0.08,'expoOut')
end
function NoteOPPMiddleMode()
    noteTweenX('0',0, defaultOpponentStrumX0,2,'expoOut')
    noteTweenX('1',1, defaultOpponentStrumX1,2,'expoOut')
    noteTweenX('2',2, defaultPlayerStrumX2,2,'expoOut')
    noteTweenX('3',3, defaultPlayerStrumX3,2,'expoOut')
end
function onStepHit()    val = {-1,1}
    notFlashy = getPropertyFromClass('flixel.FlxG','save.data.noFlashy')
    -------Part 1
    if curStep == 1 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 6,'quartinOut')
            noteTweenAngle('MRotation'..i,i, 360, 6,'quartinOut')
        end
        doTweenAlpha('camHUDAlpha','camHUD',0.7,5,'quartinOut')
        doTweenZoom('camHzd','camHUD',0.8,5,'quartinOut')
        cameraShake('camHUD',0.0005,24)
    end
    if curStep == 87 then
        doTweenZoom('camHzd','camHUD',0.7,1,'quartOut')
    end
    if curStep == 64 or curStep == 68 then
        doTweenZoom('camHUDZoom','camHUD',1,0.0001)
        doTweenZoom('camHUDZooms','camHUD',0.85,0.6,'quartOut')
        doTweenZoom('camgameZoom','camGame',1,0.0001)
        doTweenZoom('camgameZooms','camGame',0.85,0.6,'quartOut')
    end
    if curStep == 71 or curStep == 80 then
        noteTweenX('note1-2',4, middlePlayerStrumX2, 0.35,'backOut')
        noteTweenX('note2-1',5, middlePlayerStrumX1, 0.35,'backOut')
        noteTweenX('noteop1-2',0, middlePlayerStrumX2, 0.35,'backOut')
        noteTweenX('noteop2-1',1, middlePlayerStrumX1, 0.35,'backOut')
        doTweenZoom('camgameZoom','camGame',1,0.0001)
        doTweenZoom('camgameZooms','camGame',0.85,0.6,'quartOut')
        doTweenZoom('camHUDZoom','camHUD',1,0.0001)
        doTweenZoom('camHUDZooms','camHUD',0.85,0.6,'backOut')

    end
    if curStep == 74 then
        noteTweenX('note3-4',6, middlePlayerStrumX4, 0.35,'backOut')
        noteTweenX('note4-3',7, middlePlayerStrumX3, 0.35,'backOut')
        noteTweenX('noteop3-4',2, middlePlayerStrumX4, 0.35,'backOut')
        noteTweenX('noteop4-3',3, middlePlayerStrumX3, 0.35,'backOut')
        doTweenZoom('camHUDZoom','camHUD',1,0.0001)
        doTweenZoom('camHUDZooms','camHUD',0.85,0.6,'backOut')
        doTweenZoom('camgameZoom','camGame',1,0.0001)
        doTweenZoom('camgameZooms','camGame',0.85,0.6,'quartOut')
    end
    if curStep == 78 or curStep == 82 then
        noteTweenX('note1',4, middlePlayerStrumX1, 0.35,'backOut')
        noteTweenX('note2',5, middlePlayerStrumX2, 0.35,'backOut')
        noteTweenX('note3',6, middlePlayerStrumX3, 0.35,'backOut')
        noteTweenX('note4',7, middlePlayerStrumX4, 0.35,'backOut')
        noteTweenX('noteop1-2',0, middlePlayerStrumX1, 0.35,'backOut')
        noteTweenX('noteop2-1',1, middlePlayerStrumX2, 0.35,'backOut')
        noteTweenX('noteop3-4',2, middlePlayerStrumX3, 0.35,'backOut')
        noteTweenX('noteop4-3',3, middlePlayerStrumX4, 0.35,'backOut')
        doTweenZoom('camgameZoom','camGame',1,0.0001)
        doTweenZoom('camgameZooms','camGame',0.85,0.6,'quartOut')
        doTweenZoom('camHUDZoom','camHUD',1,0.0001)
        doTweenZoom('camHUDZooms','camHUD',0.85,0.6,'quartOut')
    end
    if curStep == 87 or curStep == 93 then
        doTweenZoom('camHUDZooms','camHUD',0.75,0.2,'quartOut')
        doTweenZoom('camgameZooms','camGame',0.8,0.2,'quartOut')
    end
    if curStep == 90 then
        doTweenZoom('camHUDZooms','camHUD',0.65,0.2,'quartOut')
        doTweenZoom('camgameZooms','camGame',0.7,0.2,'quartOut')
    end
    if curStep == 96 then
        doTweenZoom('camHUDZooms','camHUD',0.85,0.2,'quartOut')
        doTweenZoom('camgameZooms','camGame',0.9,0.2,'quartOut')
    end
    if curStep == 99 then
        doTweenAlpha('camHUDAlpha','camHUD',0,4.5,'quartinOut')
        doTweenZoom('camHUDZooms','camHUD',0.65,2.6,'quartOut')
        doTweenZoom('camgameZooms','camGame',0.7,2.6,'quartOut')
    end
    if curStep == 121 or curStep == 126 then
        doTweenAngle('camHUDShake','camHUD',15,0.0001)
        doTweenAngle('camHUDShakes','camHUD',0,0.4,'quartOut')
        doTweenAngle('camGameShake','camGame',15,0.0001)
        doTweenAngle('camGameShakes','camGame',0,0.4,'quartOut')
        cameraShake('camHUD',0.003,0.2)
    end
    if curStep == 122 then
        doTweenZoom('camHzd','camHUD',2,9,'quartOut')
    end
    if curStep == 124 or curStep == 128 then
        doTweenAngle('camHUDShake','camHUD',-15,0.0001)
        doTweenAngle('camHUDShakes','camHUD',0,0.4,'quartOut')
        cameraShake('camHUD',0.003,0.2)
        doTweenAngle('camGameShake','camGame',-15,0.0001)
        doTweenAngle('camGameShakes','camGame',0,0.4,'quartOut')
    end
    if curStep == 138 then
        doTweenZoom('camHzd','camHUD',0.8,3,'quartinOut')
    end
    if curStep == 144 then
        
        for i = 4,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 3,'quartinOut')
            noteTweenAngle('MRotation'..i,i, 1080, 11,'quartinOut')
            noteTweenY('NoteY'..i,i,NOTEYUP[(downscroll and 2 or 1)],0.001,'quartin')
            noteTweenY('NoteYM'..i,i,defaultPlayerStrumY0,10.5,'SineinOut')
        end
        for K = 0,3 do
            
            noteTweenAngle('MRotation'..K,K, 1080, 11,'SineinOut')
            noteTweenY('NoteY'..K,K,NOTEYUP[(downscroll and 1 or 2)],0.001,'quartin')
            noteTweenDirection('NoteDirection'..K,K,-90,0.001,'quartin')

        end
        noteTweenX('0',0, defaultOpponentStrumX0 - 70,2,'expoOut')
        noteTweenX('1',1, defaultOpponentStrumX1,2,'expoOut')
        noteTweenX('2',2, defaultPlayerStrumX2,2,'expoOut')
        noteTweenX('3',3, defaultPlayerStrumX3 + 70,2,'expoOut')

        doTweenZoom('camHzd','camHUD',0.8,5,'quartinOut')
        doTweenAlpha('camHUDAlpha','camHUD',0.7,5,'quartinOut')
    end
    if curStep == 248 then
        for i = 0,3 do
            noteTweenAlpha('Alpha'..i,i, 0, 3,'quartinOut')
        end
    end
    if curStep == 257 then
        for i = 0,7 do
            noteTweenAngle('MRotation'..i,i, -360, 0.001,'quartinOut')
            noteTweenAngle('MRotation2'..i,i, 0, 2,'quartinOut')
        end

        doTweenZoom('camHzd','camHUD',0.7,1,'expoOut')
        --doTweenAngle('camHUDAngle','camHUD',15,1.5,'BackIn')
    end
    if curStep == 278 then
        doTweenZoom('camHzd','camHUD',0.9,2,'expoOut')
    end
    if curStep == 278 then
        doTweenZoom('camHzd','camHUD',0.8,1,'expoOut')
    end
    if curStep == 306 then
        for i = 0,7 do
            noteTweenAngle('MRotation'..i,i, 360, 0.001,'quartinOut')
            noteTweenAngle('MRotation2'..i,i, 0, 2,'quartinOut')
        end
        for C = 0,3 do
            noteTweenAlpha('Alpha'..C,C, 1, 3,'quartinOut')
        end
        noteTweenX('0',0, defaultOpponentStrumX0,3,'expoInOut')
        noteTweenX('1',1, defaultOpponentStrumX1,3,'expoInOut')
        noteTweenX('2',2, defaultOpponentStrumX2,3,'expoInOut')
        noteTweenX('3',3, defaultOpponentStrumX3,3,'expoInOut')

        noteTweenX('4',4, defaultPlayerStrumX0,3,'expoInOut')
        noteTweenX('5',5, defaultPlayerStrumX1,3,'expoInOut')
        noteTweenX('6',6, defaultPlayerStrumX2,3,'expoInOut')
        noteTweenX('7',7, defaultPlayerStrumX3,3,'expoInOut')
        doTweenZoom('camHzd','camHUD',0.5,4,'quartinOut')
    end
    if curStep == 322 then
        doTweenZoom('camHzd','camHUD',0.9,1,'expoOut')
    end
    if curStep == 336 then
        for i = 0,3 do
            noteTweenAlpha('Alpha'..i,i, 1, 0.001,'quartinOut')
        end
        --[[noteTweenX('0',0, 2000,0.001,'expoIn')
        noteTweenX('1',1, 2000,0.001,'expoIn')
        noteTweenX('2',2, 2000,0.001,'expoIn')
        noteTweenX('3',3, 2000,0.001,'expoIn')]]
        doTweenZoom('camHzd','camHUD',0.7,2,'quartinOut')
    end
    if curStep == 338 then
        noteTweenX('0',0, -2410,1,'CircInOut')
        noteTweenX('1',1, -2522,1,'CircInOut')
        noteTweenX('2',2, -2633,1,'CircInOut')
        noteTweenX('3',3, -2745,1,'CircInOut')

        noteTweenX('4',4, 422,1,'CircInOut')
        noteTweenX('5',5, 522,1,'CircInOut')
        noteTweenX('6',6, 633,1,'CircInOut')
        noteTweenX('7',7, 745,1,'CircInOut')
    end
    if curStep == 352 then
        noteTweenX('0',0, 2410,0.001)
        noteTweenX('1',1, 2522,0.001)
        noteTweenX('2',2, 2633,0.001)
        noteTweenX('3',3, 2745,0.001)
        noteTweenX('0M',0, 410,1.8,'expoInOut')
        noteTweenX('1M',1, 522,1.8,'expoInOut')
        noteTweenX('2M',2, 633,1.8,'expoInOut')
        noteTweenX('3M',3, 745,1.8,'expoInOut')

        noteTweenX('4',4, -1200,2,'expoIn')
        noteTweenX('5',5, -1200,2,'expoIn')
        noteTweenX('6',6, -1200,2,'expoIn')
        noteTweenX('7',7, -1200,2,'expoIn')
        doTweenZoom('camHzd','camHUD',0.8,1,'expoOut')
    end
    if curStep == 288 then
        for i = 0,3 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.001,'quartinOut')
            noteTweenAngle('MRotation'..i,i, 0, 9,'quartinOut')
            noteTweenY('NoteY'..i,i,defaultPlayerStrumY0,0.001,'quartin')
            noteTweenDirection('NoteDirection'..i,i,90,0.001,'quartin')

        end
        noteTweenX('0',0, 2410,0.001)
        noteTweenX('1',1, 2522,0.001)
        noteTweenX('2',2, 2633,0.001)
        noteTweenX('3',3, 2745,0.001)
    end
    if curStep == 306 then
        for i = 0,7 do
            noteTweenAngle('MRotation'..i,i, 0, 0.001)

        end
        doTweenAlpha('camHUDAlpha','camHUD',0.95,5,'quartinOut')
    end
    if curStep == 384 then
        for i = 0,3 do
            noteTweenAlpha('Alpha'..i,i, 0, 0.001,'quartinOut')
        end
        noteTweenX('0',0, defaultOpponentStrumX0 - 70,0.001,'expoOut')
        noteTweenX('1',1, defaultOpponentStrumX1,0.001,'expoOut')
        noteTweenX('2',2, defaultPlayerStrumX2,0.001,'expoOut')
        noteTweenX('3',3, defaultPlayerStrumX3 + 70,0.001,'expoOut')
        noteTweenX('4',4, middlePlayerStrumX1,0.001)
        noteTweenX('5',5, middlePlayerStrumX2,0.001)
        noteTweenX('6',6, middlePlayerStrumX3,0.001)
        noteTweenX('7',7, middlePlayerStrumX4,0.001)
    end
    if curStep >= 384 and curStep < 509 and curStep %4 == 0 then
        doTweenZoom('camHUDZoom','camHUD',1,0.0001)
        doTweenZoom('camHUDZoom1','camHUD',0.85,2,'ExpoOut')
        doTweenZoom('camGameZoom','camGame',1,0.0001)
        doTweenZoom('camGameZoom1','camGame',0.75,2,'ExpoOut')

    end
    if curStep == 496 then
        doTweenZoom('camHUDZoom','camHUD',0.7,1.5,'BackIn')
        doTweenX('camHUDX','camHUD',1200,1.5,'BackIn')
        doTweenY('camHUDY','camHUD',600,1.5,'BackIn')
        doTweenAngle('camHUDAngle','camHUD',15,1.5,'BackIn')
        noteTweenX('4',4, 622,1.2,'BackIn')
        noteTweenX('5',5, 722,1.2,'BackIn')
        noteTweenX('6',6, 833,1.2,'BackIn')
        noteTweenX('7',7, 945,1.2,'BackIn')
        noteTweenAngle('4Angle',4, 360,1.2,'BackIn')
        noteTweenAngle('5Angle',5, 360,1.2,'BackIn')
        noteTweenAngle('6Angle',6, 360,1.2,'BackIn')
        noteTweenAngle('7Angle',7, 360,1.2,'BackIn')
    end
    if curStep == 512 then
        doTweenZoom('camHUDZoom','camHUD',0.7,0.001)
        doTweenX('camHUDX','camHUD',-1200,0.001)
        doTweenY('camHUDY','camHUD',-600,0.001)
        noteTweenX('4X',4, 222,0.001)
        noteTweenX('5X',5, 322,0.001)
        noteTweenX('6X',6, 433,0.001)
        noteTweenX('7X',7, 545,0.001)
        noteTweenY('4Y',4, 300,0.001)
        noteTweenY('5Y',5, 300,0.001)
        noteTweenY('6Y',6, 300,0.001)
        noteTweenY('7Y',7, 300,0.001)
        noteTweenAngle('4Angle',4, -360,0.001)
        noteTweenAngle('5Angle',5, -360,0.001)
        noteTweenAngle('6Angle',6, -360,0.001)
        noteTweenAngle('7Angle',7, -360,0.001)
        
        doTweenZoom('camHUDZoomA','camHUD',0.8,1.5,'quartOut')
        doTweenX('camHUDXA','camHUD',0,1.5,'backOut')
        doTweenY('camHUDYA','camHUD',0,1.5,'backOut')
        --doTweenAngle('camHUDAngleA','camHUD',0,1.5,'quartOut')
        noteTweenX('4XM',4, middlePlayerStrumX1,2.1,'BackOut')
        noteTweenX('5XM',5, middlePlayerStrumX2,1.9,'BackOut')
        noteTweenX('6XM',6, middlePlayerStrumX3,1.7,'BackOut')
        noteTweenX('7XM',7, middlePlayerStrumX4,1.5,'BackOut')
        noteTweenY('4YM',4, defaultPlayerStrumY0,2.1,'BackOut')
        noteTweenY('5YM',5, defaultPlayerStrumY0,1.9,'BackOut')
        noteTweenY('6YM',6, defaultPlayerStrumY0,1.7,'BackOut')
        noteTweenY('7YM',7, defaultPlayerStrumY0,1.5,'BackOut')
        noteTweenAngle('4AngleM',4, 0,2.1,'BackOut')
        noteTweenAngle('5AngleM',5, 0,1.9,'BackOut')
        noteTweenAngle('6AngleM',6, 0,1.7,'BackOut')
        noteTweenAngle('7AngleM',7, 0,1.5,'BackOut')
    end
    if curStep == 506 then
        for i = 0,3 do
            noteTweenAlpha('Mstrums'..i,i,0, 0.1,'quartinOut')
        end
    end
    if curStep == 513 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.1,'quartinOut')
            noteTweenAlpha('Mstrums'..i,i,1, 0.1,'quartinOut')
        end
        NoteOPPMiddleMode()
    end
    if curStep >= 515 and curStep < 766 and curStep %8 == 0 then
        for i = 0,7 do
            noteTweenAlpha('MAlpha'..i,i, 0.3, 0.1,"QuartOut")
        end
        doTweenZoom('camHUDZoom','camHUD',0.9,0.0001)
        doTweenZoom('camHUDZoom1','camHUD',0.8,1.5,'ExpoOut')
        cameraShake('CamHUD',0.009,0.01)
    end
    if curStep >= 516 and curStep < 766 and curStep %8 == 0 then
        for i = 0,7 do
            noteTweenAlpha('MAlpha'..i,i, 1, 0.1,"QuartOut")
        end
        doTweenZoom('camHUDZoom2','camHUD',0.95,0.0001)
        doTweenZoom('camHUDZoom3','camHUD',0.8,1.5,'ExpoOut')
    end
    if curStep == 516 then
        for i = 4,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.1,'quartinOut')
        end
    end
    if curStep >= 524 and curStep < 766 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 240)
        noteTweenY('Y4', 4, defaultPlayerStrumY0 + 9*math.sin((currentBeat+4*0.25)*math.pi), 2.9)
        noteTweenY('Y5', 5, defaultPlayerStrumY1 + 9*math.sin((currentBeat+5*0.25)*math.pi), 2.9)
        noteTweenY('Y6', 6, defaultPlayerStrumY2 + 9*math.sin((currentBeat+6*0.25)*math.pi), 2.9)
        noteTweenY('Y7', 7, defaultPlayerStrumY3 + 9*math.sin((currentBeat+7*0.25)*math.pi), 2.9)
    
        noteTweenY('Y0', 0, defaultOpponentStrumY0 - 9*math.sin((currentBeat+0*0.25)*math.pi), 1.9)
        noteTweenY('Y1', 1, defaultOpponentStrumY1 - 9*math.sin((currentBeat+1*0.25)*math.pi), 1.9)
        noteTweenY('Y2', 2, defaultOpponentStrumY2 - 9*math.sin((currentBeat+2*0.25)*math.pi), 1.9)
        noteTweenY('Y3', 3, defaultOpponentStrumY3 - 9*math.sin((currentBeat+3*0.25)*math.pi), 1.9)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 5, 0.5)
        doTweenX('CamHUDX', 'camHUD', math.sin(currentBeat / 2) * 30, 0.5)
        doTweenY('CamHUDY', 'camHUD', math.cos(currentBeat / 2) * 30, 0.5)

    end
    if curStep == 767 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.0001)
            --noteTweenY('StrumNoteY'..i,i,noteYPlace[(downscroll and 1 or 2)],0.0001)
        end
        doTweenAngle('Wiggle', 'camHUD', 0, 0.5,'quartOut')
        doTweenX('CamHUDX', 'camHUD', 0, 0.5,'quartOut')
        doTweenY('CamHUDY', 'camHUD', 0, 0.5,'quartOut')
        noteTweenY('Y4', 4, defaultPlayerStrumY0, 0.001)
        noteTweenY('Y5', 5, defaultPlayerStrumY1, 0.001)
        noteTweenY('Y6', 6, defaultPlayerStrumY2, 0.001)
        noteTweenY('Y7', 7, defaultPlayerStrumY3, 0.001)
    
        noteTweenY('Y0', 0, defaultOpponentStrumY0, 0.001)
        noteTweenY('Y1', 1, defaultOpponentStrumY1, 0.001)
        noteTweenY('Y2', 2, defaultOpponentStrumY2, 0.001)
        noteTweenY('Y3', 3, defaultOpponentStrumY3, 0.001)
        doTweenZoom('camHUDZoom1','camHUD',2,0.0001)
        doTweenZoom('camHUDZoom2','camHUD',2,0.0001)
        doTweenZoom('camHUDZoom3','camHUD',2,0.0001)
        doTweenZoom('camHUDZoom4','camHUD',0.85,3,'ExpoOut')
        doTweenAlpha('camHUDAlpha','camHUD',0.69,1,'quartinOut')

    end
    if curStep == 888 then
        for i = 0,3 do
            noteTweenAlpha('opp'..i,i, 0,0.001)
        end
        doTweenZoom('camHUDZoom','camHUD',0.7,1,'BackIn')
        doTweenX('camHUDX','camHUD',-1200,1,'BackIn')
        doTweenY('camHUDY','camHUD',-600,1,'BackIn')
        doTweenAngle('camHUDAngle','camHUD',15,1,'BackIn')
        
        noteTweenX('4',4, 210,0.8,'BackIn')
        noteTweenX('5',5, 322,0.8,'BackIn')
        noteTweenX('6',6, 433,0.8,'BackIn')
        noteTweenX('7',7, 545,0.8,'BackIn')
        noteTweenAngle('4Angle',4, -360,0.8,'BackIn')
        noteTweenAngle('5Angle',5, -360,0.8,'BackIn')
        noteTweenAngle('6Angle',6, -360,0.8,'BackIn')
        noteTweenAngle('7Angle',7, -360,0.8,'BackIn')

    end
    if curStep >= 896 and curStep < 1151 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 240)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 5, 0.5)
    end
    if curStep == 896 then
        noteTweenX('4',4, 622,0.001)
        noteTweenX('5',5, 722,0.001)
        noteTweenX('6',6, 833,0.001)
        noteTweenX('7',7, 945,0.001)
        noteTweenAngle('4Angle',4, 360,0.001)
        noteTweenAngle('5Angle',5, 360,0.001)
        noteTweenAngle('6Angle',6, 360,0.001)
        noteTweenAngle('7Angle',7, 360,0.001)

        noteTweenX('4M',4, middlePlayerStrumX1,2.1,'BackOut')
        noteTweenX('5M',5, middlePlayerStrumX2,1.9,'BackOut')
        noteTweenX('6M',6, middlePlayerStrumX3,1.7,'BackOut')
        noteTweenX('7M',7, middlePlayerStrumX4,1.5,'BackOut')
        noteTweenAngle('4AngleM',4, 0,2.1,'BackOut')
        noteTweenAngle('5AngleM',5, 0,1.9,'BackOut')
        noteTweenAngle('6AngleM',6, 0,1.7,'BackOut')
        noteTweenAngle('7AngleM',7, 0,1.5,'BackOut')
        doTweenZoom('camHUDZoom','camHUD',0.7,0.001)
        doTweenX('camHUDX','camHUD',1200,0.001)
        doTweenY('camHUDY','camHUD',600,0.001)

        doTweenZoom('camHUDZoomA','camHUD',0.8,1.5,'quartOut')
        doTweenX('camHUDXA','camHUD',0,1.5,'backOut')
        doTweenY('camHUDYA','camHUD',0,1.5,'backOut')
        doTweenAngle('camHUDAngleA','camHUD',0,1.5,'quartOut')

    end
    if curStep >= 897 and curStep < 1152 and curStep %4 == 0 then
        if not noFlashy then
            doTweenAlpha('grds','adds',0.2,0.0001)
            doTweenAlpha('grds2','add',0.1,0.0001)
        end
        --[[for L = 0,7 do
            noteTweenAlpha('MAlpha'..L,L, 1, 0.001)
        end]]
        doTweenZoom('camHUDZoom','camHUD',0.9,0.0001)
        doTweenZoom('camHUDZoom1','camHUD',0.8,1.5,'ExpoOut')
        cameraShake('CamHUD',0.009,0.01)
        doTweenZoom('freds','camGame',1,0.0001)
    end
    if curStep == 912 then
        for i = 0,3 do
            noteTweenAlpha('opp'..i,i, 1,0.001)
        end
    end
    if curStep == 976 or curStep == 1008 or curStep == 1056 or curStep == 1120 or curStep == 1145 then
        for i = 4,7 do
            noteTweenAngle('MAngle1'..i,i, -360, 0.001,"QuartInOut")
            noteTweenAngle('MAngle2'..i,i, 0, 3,"QuartInOut")
        end
        for P = 0,3 do
            noteTweenAngle('MAngle1A'..P,P, 360, 0.001,"QuartInOut")
            noteTweenAngle('MAngle2A'..P,P, 0, 0.7,"QuartInOut")

        end
    end
    --[[if curStep == 976 or curStep == 1008 or curStep == 1056 or curStep == 1120 or curStep == 1145 then

        for P = 4,7 do
            noteTweenAlpha('MAlpha3'..P,P, 0, 0.001,"QuartInOut")
            noteTweenAlpha('MAlpha4'..P,P, 1, 0.9,"QuartInOut")

        end
    end]]
    if curStep == 977 or curStep == 1009 or curStep == 1057 or curStep == 1121 or curStep == 1146 then
        for K = 0,3 do
            noteTweenAlpha('MAlpha5'..K,K, 1, 0.001,"QuartInOut")
            noteTweenAlpha('MAlpha6'..K,K, 0, 0.4,"QuartInOut")
        end
        
    end
    if curStep == 977 or curStep == 1009 or curStep == 1057 or curStep == 1121 or curStep == 1146 then
        noteTweenX('0',0,410,0.001,'QuartInOut');
        noteTweenX('1',1,522,0.001,'QuartInOut');
        noteTweenX('2',2,633,0.001,'QuartInOut');
        noteTweenX('3',3,745,0.001,'QuartInOut');
            noteTweenX('0A',0, defaultOpponentStrumX0,0.8,'QuartOut');
            noteTweenX('1A',1, defaultOpponentStrumX1,0.8,'QuartOut');
            noteTweenX('2A',2, defaultPlayerStrumX2  ,0.8,'QuartOut');
            noteTweenX('3A',3, defaultPlayerStrumX3  ,0.8,'QuartOut');
        end
    --[[if curStep >= 899 and curStep < 1150 and curStep %4 == 0 then
        for Y = 0,7 do
            noteTweenAlpha('MAlpha'..Y,Y, 0.8, 0.1,"QuartOut")
        end
    end]]
    if curStep == 1136 then
        for i = 0,7 do
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 2,"QuartinOut")
        end
    end
    if curStep >= 1153 and curStep < 1275 and curStep %4 == 0 then
        for i = 0,7 do
            strumLine = getPropertyFromGroup('notes', i, 'mustPress') and 'playerStrums' or 'opponentStrums'
            receptorX = getPropertyFromGroup(strumLine, getPropertyFromGroup('notes', i, 'noteData') , 'x')
            time = getPropertyFromGroup('notes', i, 'strumTime')    
            songPos = getSongPosition()
            doTweenX('NotesShake'..i ,'notes.members['..i..']', receptorX + math.sin((songPos - time) / 50) * (flippy and 300 or -300), 0.03)
            noteTweenAngle('noteAngle'..i,i,20 * val[(flippy and 2 or 1)],0.5,'elasticOut')
        end
        doTweenAngle('camHUDShake','camHUD',15 * val[(flippy and 2 or 1)],0.0001)
        doTweenAngle('camHUDShakes','camHUD',0,0.4,'quartOut')
        doTweenAngle('camGameShake','camGame',15 * val[(flippy and 2 or 1)],0.0001)
        doTweenAngle('camGameShakes','camGame',0,0.4,'quartOut')
        doTweenZoom('camGameZoom','camGame',1,0.0001)
        doTweenZoom('camGameZoom1','camGame',0.8,0.5,'ExpoOut')

        flippy = not flippy
    end
    if curStep == 1153 then
        doTweenZoom('camHUDZoom1','camHUD',1,1.5,'ExpoOut')
        doTweenAngle('Wiggle', 'camHUD', 0, 0.5)
    end
    if curStep >= 1153 and curStep < 1275 then
        for i = 4,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'alpha', math.random(notFlashy and 0.95 or 0.75,1))
        end
    end
    if curStep == 1183 then
        doTweenZoom('camHUDZoom1','camHUD',0.9,1.5,'ExpoOut')
    end
    if curStep == 1214 then
        doTweenZoom('camHUDZoom1','camHUD',1,1.5,'ExpoOut')
    end
    if curStep == 1279 then
        doTweenZoom('camHUDZoom','camHUD',3,9)
        doTweenAlpha('camHUDAlpha','camHUD',0,0.2,'quartOut')
    end
    if curStep == 1280 then
        doTweenZoom('camHUDZoom','camHUD',0.8,1.9,'quartOut')
        doTweenAlpha('camHUDAlpha','camHUD',1,1.9,'quartOut')
    end
    if curStep == 1287 then
        for i = 0,7 do
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 2,"QuartinOut")
        end
    end
    if curStep == 1290 then
        for i = 0,7 do
            if downScroll == false then
                noteTweenY('OppPlayerStrumY'..i,i,pencarY[(i % 4) + 1],20)
            end
            if downScroll == true then
                noteTweenY('OppPlayerStrumY'..i,i,pencarYDownScroll[(i % 4) + 1],20)
            end
            noteTweenAngle('OppPlayerStrumAngle'..i,i,pencarAngle[(i % 4)+1],20)
        end
    end
    if curStep >= 1288 and curStep < 1592 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 240)
        doTweenX('CamHUDX', 'camHUD', math.cos(currentBeat / 2) * 35, 0.8)
        doTweenY('CamHUDY', 'camHUD', math.cos(currentBeat / 2) * 35, 0.8)

        --doTweenZoom('Zoom', 'camHUD', math.cos(currentBeat / 2) + 0.9, 0.8)
        --doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 3.5, 0.8)
        
        --[[noteTweenY('py5', 4, defaultPlayerStrumY0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 2)
        noteTweenY('py6', 5, defaultPlayerStrumY1 + 60*math.sin((currentBeat+5*0.25)*math.pi), 2)
        noteTweenY('py7', 6, defaultPlayerStrumY2 + 60*math.sin((currentBeat+6*0.25)*math.pi), 2)
        noteTweenY('py8', 7, defaultPlayerStrumY3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 2)
    
        noteTweenY('Opy5', 0, defaultOpponentStrumY0 - 100*math.sin((currentBeat+0*0.25)*math.pi), 2)
        noteTweenY('Opy6', 1, defaultOpponentStrumY1 - 60*math.sin((currentBeat+1*0.25)*math.pi), 2)
        noteTweenY('Opy7', 2, defaultOpponentStrumY2 - 60*math.sin((currentBeat+2*0.25)*math.pi), 2)
        noteTweenY('Opy8', 3, defaultOpponentStrumY3 - 100*math.sin((currentBeat+3*0.25)*math.pi), 2)]]

        --[[noteTweenX('X4', 4, 410 + 60*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
        noteTweenX('X5', 5, 522 + 60*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
        noteTweenX('X6', 6, 633 + 60*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
        noteTweenX('X7', 7, 745 + 60*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
    
        noteTweenX('X0', 0, 410 - 60*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX('X1', 1, 522 - 60*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
        noteTweenX('X2', 2, 633 - 60*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
        noteTweenX('X3', 3, 745 - 60*math.sin((currentBeat+3*0.25)*math.pi), 0.5)

        noteTweenAngle('Angle5', 4, 0 - 27*math.cos((currentBeat+4*0.25)*math.pi), 0.5)
        noteTweenAngle('Angle6', 5, 0 - 27*math.cos((currentBeat+5*0.25)*math.pi), 0.5)
        noteTweenAngle('Angle7', 6, 0 - 27*math.cos((currentBeat+6*0.25)*math.pi), 0.5)
        noteTweenAngle('Angle8', 7, 0 - 27*math.cos((currentBeat+7*0.25)*math.pi), 0.5)

        noteTweenAngle('OpAg5', 0, 0 + 27*math.cos((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenAngle('OpAg6', 1, 0 + 27*math.cos((currentBeat+1*0.25)*math.pi), 0.5)
        noteTweenAngle('OpAg7', 2, 0 + 27*math.cos((currentBeat+2*0.25)*math.pi), 0.5)
        noteTweenAngle('OpAg8', 3, 0 + 27*math.cos((currentBeat+3*0.25)*math.pi), 0.5)]]
    end
    if curStep >= 1335 and curStep < 1438 then
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 180)                     
        end
    end
    if curStep == 1335 then
        for i = 0,7 do
            noteTweenY('OppPlayerStrumY'..i, i, noteYPlace[(downscroll and 1 or 2)], 2.1, 'circOut')
            noteTweenDirection("noteFlippy" ..i, i, -90, 2.1, 'circOut')
        end
    end
    if curStep == 1438 then
        for i = 0,7 do
            noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],2.8,'circInOut')
            noteTweenDirection('noteFlippy'..i,i, 90,2.8,'circInOut')
            noteTweenAngle('OppPlayerStrumAngle'..i, i, 0, 2.8, 'circInOut')
        end
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 0)                     
        end
        for r = 0,3 do
            setPropertyFromGroup('strumLineNotes', r, 'alpha', 0)
        end
    end
    if curStep == 1540 then
        doTweenAlpha('camHUDAlpha','camHUD',0.7,1,'quartin')
    end
    if curStep == 1557 then
        doTweenAlpha('camHUDAlpha','camHUD',0.55,1,'quartin')
    end
    if curStep == 1574 then
        for i = 0,3 do
            noteTweenY('OppPlayerStrumY'..i, i, noteYPlace[(downscroll and 1 or 2)], 2.1, 'circOut')
            noteTweenDirection("noteFlippy" ..i, i, -90, 2.1, 'circOut')
            noteTweenAlpha('MAlpha'..i,i, 1, 0.9,'quartOut')
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 0.001,"QuartinOut")
        end
        doTweenAlpha('camHUDAlpha','camHUD',0.4,1,'quartin')
    end
    if curStep == 1595 then
        for i = 4,7 do
            noteTweenAlpha('MAlpha'..i,i, 1, 1.2,'quartOut')
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 0.001,"QuartinOut")
        end
        noteTweenY('py5',4,defaultPlayerStrumY0,0.8,'circInOut')
        noteTweenY('py6',5,defaultPlayerStrumY0,0.8,'circInOut')
        noteTweenY('py7',6,defaultPlayerStrumY0,0.8,'circInOut')
        noteTweenY('py8',7,defaultPlayerStrumY0,0.8,'circInOut')

        doTweenAngle('Wiggle', 'camHUD', 0, 4,'QuartOut')
        doTweenX('CamHUDX', 'camHUD', 0, 4,'QuartOut')
        doTweenY('CamHUDY', 'camHUD', 0, 4,'QuartOut')
        doTweenAlpha('camHUDAlpha','camHUD',0.35,1,'quartin')
    end
    if curStep == 1659 then
        doTweenAlpha('camHUDAlpha','camHUD',1,0.6,'quartOut')
    end
    --[[if curStep == 1659 then
        for i = 4,7 do
            noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],0.8,'circInOut')
            noteTweenAlpha('MAlpha'..i,i, 0, 0.001)
        end        
    end]]
    if curStep == 1660 then
        for i = 0,7 do
            noteTweenAlpha('MAlpha'..i,i, 1, 1.2,'quartOut')
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 0.001,"QuartinOut")
            --noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],0.001,'circInOut')

        end
        
        OppBackNormal()
        oppOpacity0()
    end
    if curStep == 1168 or curStep == 1200 or curStep == 1232 or curStep == 1264 then
        for i = 0,7 do
            noteTweenY('noteMoveyioe'..i, i, noteYPlace[(downscroll and 1 or 2)], 0.001, 'circOut')
            noteTweenDirection("noteFlippy" ..i, i, -90, 0.001, 'circOut')
            cameraShake('camHUD',0.03,0.04)
            if i < 4 then
                setPropertyFromGroup('strumLineNotes', i,'alpha', 1)
            end
        end
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 180)                     
        end
    end
    if curStep >= 1168 and curStep < 1180 or curStep >= 1200 and curStep < 1214 or curStep >= 1232 and curStep < 1244 or curStep >= 1264 and curStep < 1276 then
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 180)                     
        end
    end
    if curStep == 1152 or curStep == 1184 or curStep == 1216 or curStep == 1248 or curStep == 1280 then
        for i = 0,7 do
            noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],0.001,'circOut')
            noteTweenDirection('noteFlippy'..i,i, 90,0.001,'circOut')
            noteTweenAngle('spinsies'..i, i, 0, 0.001, 'circOut')
            cameraShake('camHUD',0.03,0.04)
        end
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 0)                     
        end
        for r = 0,3 do
            setPropertyFromGroup('strumLineNotes', r, 'alpha', 0)
        end
    end
    if curStep == 1664
    or curStep == 1667
    or curStep == 1670
    or curStep == 1674
    or curStep == 1680
    or curStep == 1684
    or curStep == 1687
    or curStep == 1696 then
        doTweenZoom('camHUDZoom','camHUD',1,0.001)
        doTweenZoom('camHUDZoomA','camHUD',0.8,1.5,'circOut')

    end
    if curStep >= 1698 and curStep < 1725 and curStep %2 == 0 then
        doTweenZoom('camHUDZoom','camHUD',1,0.001)
        doTweenZoom('camHUDZoomA','camHUD',0.8,1.5,'circOut')

    end

    if curStep == 1674  then
        doTweenZoom('camHUDZoom','camHUD',0.6,1.4,'circin')
        doTweenX('camHUDX','camHUD',-1200,0.8,'BackIn')
        doTweenAngle('camHUDAngle','camHUD',15,0.8,'BackIn')

    end
    if curStep == 1691 then
        doTweenZoom('camHUDZoom','camHUD',0.6,1.4,'circin')
        doTweenX('camHUDX','camHUD',1200,0.8,'BackIn')
        doTweenAngle('camHUDAngle','camHUD',-15,0.8,'BackIn')
    end
    if curStep == 1682 then
        doTweenZoom('camHUDZoom','camHUD',0.7,0.001)
        doTweenX('camHUDX','camHUD',1200,0.001)

        doTweenZoom('camHUDZoomA','camHUD',0.8,0.5,'expoOut')
        doTweenX('camHUDXA','camHUD',0,0.5,'circOut')
        doTweenAngle('camHUDAngleA','camHUD',0,0.5,'circOut')

    end
    if curStep == 1699 then
        doTweenZoom('camHUDZoom','camHUD',0.7,0.001)
        doTweenX('camHUDX','camHUD',-1200,0.001)

        doTweenZoom('camHUDZoomA','camHUD',0.8,0.5,'expoOut')
        doTweenX('camHUDXA','camHUD',0,0.5,'circOut')
        doTweenAngle('camHUDAngleA','camHUD',0,0.5,'circOut')
    end
    if curStep == 1709 then
        doTweenZoom('camHUDZoomA','camHUD',0.5,1.5,'expoOut')
        doTweenAngle('camHUDAngleA','camHUD',-15,1.5,'circOut')
        doTweenX('camHUDXA','camHUD',-70    ,1.5,'circOut')
    end
    if curStep == 1726 then
        doTweenZoom('camHUDZoomA','camHUD',1,1.5,'expoOut')
        doTweenAngle('camHUDAngleA','camHUD',0,1.5,'circOut')
        doTweenX('camHUDXA','camHUD',0    ,1.5,'circOut')
        doTweenY('camHUDYA','camHUD',HUDY[(downscroll and 1 or 2)]    ,1.5,'circOut')

    end
    if curStep == 1730 then
        noteTweenAlpha('0Alpha',0, 1,0.001,'expoOut')
        noteTweenAlpha('1Alpha',1, 1,0.001,'expoOut')
        noteTweenAlpha('2Alpha',2, 1,0.001,'expoOut')
        noteTweenAlpha('3Alpha',3, 1,0.001,'expoOut')
    end
    if curStep == 1733 then
        doTweenZoom('camHUDZoomA','camHUD',0.8,0.5,'expoOut')
        doTweenX('camHUDXA','camHUD',0,0.5,'circOut')
        doTweenAngle('camHUDAngleA','camHUD',0,0.5,'circOut')
        doTweenY('camHUDYA','camHUD',0    ,1.5,'circOut')
        
    end
    if curStep == 1729 then
        for i = 0,3 do
            noteTweenAlpha('MAlpha'..i,i, 0.2, 1.2,'quartOut')
        end
    end
    if curStep >= 1729 and curStep < 2085 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 50)
        --doTweenZoom('Zoom', 'camHUD', math.cos(currentBeat / 2) + 0.9, 0.8)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 9.5, 0.9)
        doTweenX('CamHUDX', 'camHUD', math.cos(currentBeat / 2) * 95, 0.08)
        doTweenY('CamHUDY', 'camHUD', math.cos(currentBeat / 2) * 45, 0.7)

        noteTweenY('py5', 4, defaultPlayerStrumY0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 0.2)
        noteTweenY('py6', 5, defaultPlayerStrumY1 + 60*math.sin((currentBeat+5*0.25)*math.pi), 0.2)
        noteTweenY('py7', 6, defaultPlayerStrumY2 + 60*math.sin((currentBeat+6*0.25)*math.pi), 0.2)
        noteTweenY('py8', 7, defaultPlayerStrumY3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 0.2)
    
        noteTweenY('Opy5', 0, defaultOpponentStrumY0 + 100*math.sin((currentBeat+0*0.25)*math.pi), 0.2)
        noteTweenY('Opy6', 1, defaultOpponentStrumY1 + 60*math.sin((currentBeat+1*0.25)*math.pi), 0.2)
        noteTweenY('Opy7', 2, defaultOpponentStrumY2 + 60*math.sin((currentBeat+2*0.25)*math.pi), 0.2)
        noteTweenY('Opy8', 3, defaultOpponentStrumY3 + 100*math.sin((currentBeat+3*0.25)*math.pi), 0.2)

        noteTweenX('X4', 4, 410 + 60*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
        noteTweenX('X5', 5, 522 + 60*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
        noteTweenX('X6', 6, 633 + 60*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
        noteTweenX('X7', 7, 745 + 60*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
    
        noteTweenX('X0', 0, 410 - 60*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
        noteTweenX('X1', 1, 522 - 60*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
        noteTweenX('X2', 2, 633 - 60*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
        noteTweenX('X3', 3, 745 - 60*math.sin((currentBeat+3*0.25)*math.pi), 0.5)

        noteTweenAngle('Angle5', 4, 0 - 20*math.sin((currentBeat+4*0.25)*math.pi), 0.9)
        noteTweenAngle('Angle6', 5, 0 + 20*math.sin((currentBeat+5*0.25)*math.pi), 0.9)
        noteTweenAngle('Angle7', 6, 0 - 20*math.sin((currentBeat+6*0.25)*math.pi), 0.9)
        noteTweenAngle('Angle8', 7, 0 + 20*math.sin((currentBeat+7*0.25)*math.pi), 0.9)

        noteTweenAngle('OpAg5', 0, 0 + 20*math.sin((currentBeat+0*0.25)*math.pi), 0.9)
        noteTweenAngle('OpAg6', 1, 0 - 20*math.sin((currentBeat+1*0.25)*math.pi), 0.9)
        noteTweenAngle('OpAg7', 2, 0 + 20*math.sin((currentBeat+2*0.25)*math.pi), 0.9)
        noteTweenAngle('OpAg8', 3, 0 - 20*math.sin((currentBeat+3*0.25)*math.pi), 0.9)
        cameraShake('camHUD',0.005,0.08)
    end
    if curStep == 2085 then
        doTweenZoom('camHUDZoomA','camHUD',3,1.5,'circIn')
    end
    if curStep == 2090 then
        for i = 4,7 do
            noteTweenX('MX'..i,i, MidleNote[(i % 4) + 1], 0.001,"QuartinOut")
            noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],0.8,'circInOut')
        end
        for K = 0,3 do
            noteTweenX('MX2'..K,K, MidleNote[(i % 4) + 1], 0.001,"QuartinOut")
            noteTweenY('NoteYscroll2'..K,K,defaultPlayerStrumY1,0.8,'circInOut')
        end
        doTweenAngle('Wiggle', 'camHUD', 0, 4,'QuartOut')
        doTweenX('CamHUDX', 'camHUD', 0, 4,'QuartOut')
        doTweenY('CamHUDY', 'camHUD', 0, 4,'QuartOut')
       -- doTweenAlpha('camHUDAlpha','camHUD',0,4,'quartin')
    end
    if curStep == 2091 then
        doTweenZoom('camHUDZoom','camHUD',0.6,0.001)
        doTweenX('camHUDX','camHUD',1200,0.001)

        doTweenZoom('camHUDZoomA','camHUD',0.8,1,'circIn')
        doTweenX('camHUDXA','camHUD',0,1,'backOut')
        doTweenAngle('camHUDAngleA','camHUD',0,1,'quartOut')
    end
    -------Part 2
    if curStep == 2087 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.2,'quartOut')
            noteTweenAngle('OpAg5'..i,i,0, 0.5,'quartOut')
            noteTweenY('NoteYscroll'..i,i,defaultPlayerStrumY0 ,0.8,'circInOut')
        end
        --[[doTweenZoom('camHzd','camHUD',5,0.0001)
        doTweenZoom('camHxd','camHUD',0.85,0.8,'ExpoOut')]]
        cameraShake('camHUD',0.001,4)
        doTweenAlpha('camHUDAlpha','camHUD',0.7,2,'quartOut')
    end
    if curStep == 2109 then
        doTweenZoom('camHdsd','camHUD',5,0.8,'quartIn')
    end
    if curStep == 2115 then
        doTweenZoom('camHdsd','camHUD',0.1,0.0001)
        doTweenZoom('camHdsdsd','camHUD',0.75,0.8,'quartOut')
    end
    if curStep >= 2116 and curStep < 2259 then
        for i = 4,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'alpha', math.random(notFlashy and 0.95 or 0.75,1))
        end
        cameraShake('camHUD',0.004,0.1)
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 20)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 15, 0.5)
        noteTweenY('py5', 4, defaultPlayerStrumY0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 0.2)
        noteTweenY('py6', 5, defaultPlayerStrumY1 + 60*math.sin((currentBeat+5*0.25)*math.pi), 0.2)
        noteTweenY('py7', 6, defaultPlayerStrumY2 + 60*math.sin((currentBeat+6*0.25)*math.pi), 0.2)
        noteTweenY('py8', 7, defaultPlayerStrumY3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 0.2)
    
        noteTweenY('Opy5', 0, defaultOpponentStrumY0 + 100*math.sin((currentBeat+0*0.25)*math.pi), 0.2)
        noteTweenY('Opy6', 1, defaultOpponentStrumY1 + 60*math.sin((currentBeat+1*0.25)*math.pi), 0.2)
        noteTweenY('Opy7', 2, defaultOpponentStrumY2 + 60*math.sin((currentBeat+2*0.25)*math.pi), 0.2)
        noteTweenY('Opy8', 3, defaultOpponentStrumY3 + 100*math.sin((currentBeat+3*0.25)*math.pi), 0.2)
    end
    if curStep >= 2116 and curStep < 2259 and curStep %2 == 0 then
        doTweenZoom('camHdsd','camHUD',0.85,0.8,'quartOut')
        doTweenZoom('camHdsdx','camHUD',1,0.1,'quartOut')
        NoteTweenRandomAngle()
        NoteTweenDefAngle()
    end
    if curStep >= 2116 and curStep < 2259 and curStep %4 == 0 then
        doTweenZoom('camHdsdd','camHUD',0.85,0.8,'quartOut')
        doTweenZoom('camHdsdx2','camHUD',5,0.1,'quartOut')
        triggerEvent('noteShimmy',value1,value2)
    end
    if curStep >= 2259 and curStep < 2317 and curStep % 4 == 0 then
        val ={-1,1}
        doTweenX('camX','camHUD',45* val[(flippy and 2 or 1)],0.5,'backOut')    
        doTweenZoom('camHzd','camHUD',1,0.0001)
        doTweenZoom('camHxd','camHUD',0.85,0.8,'ExpoOut')     
        flippy = not flippy
    end
    --[[if curStep >= 2259 and curStep < 2317 and curStep % 8 == 0 then
        doTweenX('camX','camHUD',-45,0.4,'backOut')
    end]]
    if curStep == 2260 then
        for i = 0,7 do
            noteTweenY('Ystrums'..i,i,noteYPlace[(downscroll and 2 or 1)], 0.2,'backOut')
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
        end
        doTweenAngle('HUD', 'camHUD', 0,0.2,'backOut')
        doTweenZoom('camHzd','camHUD',5,0.0001)
        doTweenZoom('camHxd','camHUD',0.85,0.8,'ExpoOut')
    end
    if curStep == 2261 or curStep == 2267 or curStep == 2276 or curStep == 2288 or curStep == 2300 
    or curStep >= 2311 and curStep < 2318 and curStep % 1 == 0 then
        doTweenAngle('camHUDFlip','camHUD',180,0.0001)
        doTweenAngle('camGameFlip','camGame',180,0.0001)
     end
    if curStep == 2264 or curStep == 2271 or curStep == 2279 or curStep == 2283 or curStep == 2295 or curStep == 2305 
    or curStep >= 2311 and curStep < 2320 and curStep % 2 == 0 then
        doTweenAngle('camHNormal','camHUD',0,0.0001)
        doTweenAngle('camGNormal','camGame',0,0.0001)
    end
    if curStep == 2317 then
        doTweenAlpha('camHUDAlpha','camHUD',0,3)
        doTweenX('camX','camHUD',0,0.2,'backOut')
        doTweenZoom('camHUDZoom','camHUD',0.1,3)
    end
    if curStep >= 2368 and curStep <= 2375 then
        doTweenAlpha('camHUDAlpha','camHUD',math.random(notFlashy and 0.35 or 0.25,0.1,0.1),0.001)
        doTweenZoom('camHUDZoom','camHUD',5,0.0001)
        doTweenZoom('camHUDZooms','camHUD',0.75,1.45,'QuartOut')

    end
    if curStep >= 2376 and curStep <= 2567 then
        doTweenAlpha('camHUDAlpha','camHUD',math.random(notFlashy and 0.95 or 0.75,0.9,0.2),0.001)
    end
    if curStep >= 2368 and curStep < 2568 then
        songPos = getSongPosition()
        currentBeat = (songPos / 10000) * (bpm / 25)
        noteTweenX('px5', 4, 410 - 30*math.cos((currentBeat+4*0.25)*math.pi), 0.2)
        noteTweenX('px6', 5, 522 - 30*math.cos((currentBeat+5*0.25)*math.pi), 0.2)
        noteTweenX('px7', 6, 633 - 30*math.cos((currentBeat+6*0.25)*math.pi), 0.2)
        noteTweenX('px8', 7, 745 - 30*math.cos((currentBeat+7*0.25)*math.pi), 0.2)

        noteTweenX('Opx5', 0, 410 + 30*math.cos((currentBeat+0*0.25)*math.pi), 0.2)
        noteTweenX('Opx6', 1, 522 + 30*math.cos((currentBeat+1*0.25)*math.pi), 0.2)
        noteTweenX('Opx7', 2, 633 + 30*math.cos((currentBeat+2*0.25)*math.pi), 0.2)
        noteTweenX('Opx8', 3, 745 + 30*math.cos((currentBeat+3*0.25)*math.pi), 0.2)

        noteTweenAngle('pAg5', 4, 0 - 45*math.cos((currentBeat+4*0.25)*math.pi), 0.2)
        noteTweenAngle('pAg6', 5, 0 - 45*math.cos((currentBeat+5*0.25)*math.pi), 0.2)
        noteTweenAngle('pAg7', 6, 0 - 45*math.cos((currentBeat+6*0.25)*math.pi), 0.2)
        noteTweenAngle('pAg8', 7, 0 - 45*math.cos((currentBeat+7*0.25)*math.pi), 0.2)

        noteTweenAngle('OpAg5', 0, 0 + 30*math.cos((currentBeat+0*0.25)*math.pi), 0.2)
        noteTweenAngle('OpAg6', 1, 0 + 45*math.cos((currentBeat+1*0.25)*math.pi), 0.2)
        noteTweenAngle('OpAg7', 2, 0 + 45*math.cos((currentBeat+2*0.25)*math.pi), 0.2)
        noteTweenAngle('OpAg8', 3, 0 + 45*math.cos((currentBeat+3*0.25)*math.pi), 0.2)

        doTweenX('camX', 'camHUD', math.cos(currentBeat / 0.5) * 130, 0.2)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 0.5) * 15, 0.5)

    end
    if curStep == 2407 or curStep == 2431 then
        cameraShake('camHUD',0.01,0.3)
    end
    if curStep == 2415 then
        cameraShake('camHUD',0.005,0.3)
    end
    if curStep == 2568 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.2,'quartOut')
            noteTweenAngle('strumsAngle'..i,i,0, 0.2,'quartOut')
        end
        doTweenAlpha('camHUDAlpha','camHUD',1,0.2,'quartOut')
        doTweenX('camX', 'camHUD', 0, 0.2,'quartOut')
        doTweenAngle('Wiggle', 'camHUD', 0, 0.5,'quartOut')
    end
    if curStep == 2573 then
        doTweenZoom('camHdsd','camHUD',5,0.0001)
    end
    if curStep >= 2573 and curStep < 2948 and curStep %2 == 0 then
        doTweenX('camX', 'camHUD', 30, 0.2,'quartOut')
        doTweenZoom('camHdsd','camHUD',1,0.1,'quartOut')
        doTweenZoom('camHdsxd','camHUD',0.85,0.8,'quartOut')
    end
    if curStep >= 2573 and curStep < 2950 and curStep %4 == 0 then
        doTweenX('camX', 'camHUD', -30, 0.2,'quartOut')
    end
    if curStep == 2634 or curStep == 2756 or curStep == 2884 then
        for i = 0,7 do
            noteTweenY('noteMoveyioe'..i, i, noteYPlace[(downscroll and 1 or 2)], 0.8, 'circInOut')
            noteTweenDirection("noteFlippy" ..i, i, -90, 0.8, 'circInOut')
            if i < 4 then
                setPropertyFromGroup('strumLineNotes', i,'alpha', 1)
            end
        end
    end
    if curStep >= 2634 and curStep < 2690 or curStep >= 2756 and curStep < 2815 or curStep >= 2884 and curStep < 2939 then
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 180)                     
        end
    end
    if curStep == 2694 or curStep == 2820 or curStep == 2944 then
        for i = 0,7 do
            noteTweenY('NoteYscroll'..i,i,_G['defaultPlayerStrumY'..i-4],0.8,'circInOut')
            noteTweenDirection('noteFlippy'..i,i, 90,0.8,'circInOut')
            noteTweenAngle('spinsies'..i, i, 0, 0.8, 'circInOut')
        end
        for a = 0, getProperty('notes.length') - 1 do
            setPropertyFromGroup('notes', a, 'offsetAngle', 0)                     
        end
        for r = 0,3 do
            setPropertyFromGroup('strumLineNotes', r, 'alpha', 0)
        end
    end
    if curStep == 2952 then
        doTweenZoom('camHdsxd','camHUD',2.3,0.6,'backInOut')
        doTweenZoom('camGamedsxd','camGame',2.3,0.6,'backInOut')
    end
    if curStep == 2955 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
            noteTweenY('notesY'..i,i,300,0.0001)
        end
    end
    if curStep == 2956 then
        for i = 0,7 do
            noteTweenY('notesY'..i,i,_G['defaultPlayerStrumY'..i-4],0.45)
            noteTweenAlpha('NoteOppAlpha'..i,i,0.2,0.0001)
        end
        doTweenZoom('camHdsddsf','camHUD',2,0.0001)
        doTweenAngle('camHUDAngle','camHUD',30,0.0001)
        doTweenZoom('camHdsds','camHUD',0.75,1.45,'quartOut')
        doTweenAngle('camHUDAngled','camHUD',0,1.45,'quartOut')

        doTweenZoom('camGamedsddsf','camGame',2,0.0001)
        doTweenAngle('camGameAngle','camGame',30,0.0001)
        doTweenZoom('camGamedsds','camGame',0.75,1.45,'quartOut')
        doTweenAngle('camGameAngled','camGame',0,1.45,'quartOut')
    end
    if curStep >= 2956 and curStep < 3215 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 5)
        doTweenAngle('Wiggle', 'camHUD', math.cos(currentBeat / 2) * 15, 0.5)
    end
    if curStep >= 2956 and curStep < 3215 then
        songPos = getSongPosition()
        currentBeat = (songPos / 10000) * (bpm / 5)
        noteTweenY('py5', 4, defaultPlayerStrumY0 + 124*math.cos((currentBeat+4*0.25)*math.pi), 0.2)
        noteTweenY('py6', 5, defaultPlayerStrumY1 + 74*math.cos((currentBeat+5*0.25)*math.pi), 0.2)
        noteTweenY('py7', 6, defaultPlayerStrumY2 + 134*math.cos((currentBeat+6*0.25)*math.pi), 0.2)
        noteTweenY('py8', 7, defaultPlayerStrumY3 + 92*math.cos((currentBeat+7*0.25)*math.pi), 0.2)

        noteTweenY('Opy5', 0, defaultOpponentStrumY0 + 87*math.cos((currentBeat+0*0.25)*math.pi), 0.2)
        noteTweenY('Opy6', 1, defaultOpponentStrumY1 + 54*math.cos((currentBeat+1*0.25)*math.pi), 0.2)
        noteTweenY('Opy7', 2, defaultOpponentStrumY2 + 76*math.cos((currentBeat+2*0.25)*math.pi), 0.2)
        noteTweenY('Opy8', 3, defaultOpponentStrumY3 + 124*math.cos((currentBeat+3*0.25)*math.pi), 0.2)
    end
    if curStep == 2956 then
        for i = 0,7 do
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.2,'quartOut')
        end
        if noFlashy then
            for i = 0,7 do
                noteTweenAlpha('notesALpha'..i,i,1,0.0001)
            end
        end
        for a = 0,3 do
            noteTweenAlpha('notesALpha'..a,a,0.24,0.0001)
        end
    end
    if curStep >= 2956 and curStep < 3215 and curStep %1 == 0 then
        if not notFlashy then
            noteTweenAlpha('Note1',4,0.5,0.0001)
            noteTweenAlpha('Note4',7,1,0.0001)
        end
        cameraShake('camHUD',0.005,0.1)
    end
    if curStep >= 2956 and curStep < 3215 and curStep %2 == 0 then
        if not notFlashy then
            noteTweenAlpha('Note2',5,0.5,0.0001)
            noteTweenAlpha('Note1',4,1,0.0001)
        end
    end
    if curStep >= 2956 and curStep < 3215 and curStep %3 == 0 then
        if not notFlashy then
            noteTweenAlpha('Note3',6,0.5,0.0001)
            noteTweenAlpha('Note2',5,1,0.0001)
        end
    end
    if curStep >= 2956 and curStep < 3215 and curStep %4 == 0 then
        if not notFlashy then
            noteTweenAlpha('Note4',7,0.5,0.0001)
            noteTweenAlpha('Note3',6,1,0.0001)
        end
    end
    if curStep >= 2959 and curStep < 3065 and curStep %2 == 0 or curStep >= 3090 and curStep < 3212 and curStep %2 == 0 then
        defcamHUD = 0.85
        doTweenZoom('camHUDZoom','camHUD', defcamHUD + 0.10,0.0001)
        doTweenZoom('camHUDZooms','camHUD', defcamHUD ,0.4,'QuartOut')
        doTweenZoom('camGameZoom','camGame', 1,0.0001)
        doTweenZoom('camGameZooms','camGame', 0.8 ,0.4,'QuartOut')
    end
    if curStep == 3067 then
        doTweenZoom('camHUDZoom','camHUD', 0.9,0.4,'expoOut')
        doTweenZoom('camGameZoom','camGame', 0.85,0.4,'expoOut')
        doTweenAngle('camHUDAngle','camHUD', 15,0.4,'expoOut')
        doTweenAngle('camGameAngle','camGame', 10,0.4,'expoOut')
    end
    if curStep == 3071 then
        doTweenZoom('camHUDZoom','camHUD', 1.1,0.4,'expoOut')
        doTweenAngle('camHUDAngle','camHUD', 25,0.4,'expoOut')
        doTweenZoom('camGameZoom','camGame', 0.9,0.4,'expoOut')
        doTweenAngle('camGameAngle','camGame', 20,0.4,'expoOut')
    end
    if curStep == 3075 then
        doTweenZoom('camHUDZoom','camHUD', defcamHUD,0.4,'expoOut')
        doTweenAngle('camHUDAngle','camHUD', -15,0.4,'expoOut')
        doTweenZoom('camGameZoom','camGame', 0.8,0.4,'expoOut')
        doTweenAngle('camGameAngle','camGame', -10,0.4,'expoOut')
    end
    if curStep == 3083 then
        doTweenZoom('camHUDZoom','camHUD', 5,0.2,'backIn')
        doTweenAngle('camHUDAngle','camHUD', 30,0.4,'backIn')
        doTweenZoom('camGameZoom','camGame', 4,0.2,'backIn')
        doTweenAngle('camGameAngle','camGame', 25,0.4,'backIn')
    end
    if curStep == 3085 then
        doTweenZoom('camGameZoomxs','camGame', 0.1,0.0001)
        doTweenZoom('camGameZoom','camGame', 0.8,0.8,'quartOut')
        doTweenAngle('camGameAngle','camGame', 0,0.4,'quartOut')
        doTweenZoom('camHUDZoomxs','camHUD', 0.1,0.0001)
        doTweenZoom('camHUDZooms','camHUD', defcamHUD,0.85,'quartOut')
        doTweenAngle('camHUDAngle','camHUD', 0,0.8,'quartOut')
    end
    if curStep == 3214 then
        for i = 0,7 do
            noteTweenY('notesY'..i,i,defaultPlayerStrumY0,0.45)
            noteTweenX('Mstrums'..i,i,MidleNote[(i % 4) + 1], 0.2,'quartOut')
            noteTweenAngle('strumsAngle'..i,i,0, 0.2,'quartOut')
        end
        setProperty('ScrollBG.alpha',0)
        doTweenAlpha('gridalpha','grid',0,12)
        doTweenZoom('camHUDZoom','camHUD', 5,0.0001)
        doTweenZoom('camHUDZooms','camHUD', 0.75 ,7,'QuartOut')
        doTweenAngle('camHUDAngled','camHUD',0,20,'SineOut')
    end
    if curStep >= 3214 and curStep < 3850 then
        for i = 4,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'alpha', math.random(notFlashy and 0.95 or 0.45,1))
            if downScroll == false then
                noteTweenY('StrumNoteY'..i,i,pencarY[(i % 4) + 1],30)
            end
            if downScroll == true then
                noteTweenY('OppPlayerStrumY'..i,i,pencarYDownScroll[(i % 4) + 1],20)
            end
        end
        cameraShake('camHUD',0.0075,0.1)
        cameraShake('camGame',0.0075,0.1)
        setProperty('camHUD.alpha', math.random(notFlashy and 0.95 or 0.45,1),0.0001)
    end
    if curStep == 3745 then
        doTweenAlpha('camHUDalpha','camHUD',0,8)
    end
end

function onTweenCompleted( tag )
    --[[if string.find(tag, "Z00ming") then
        doTweenZoom('camHUDZoom','camHUD',0.8,2,'QuartOut')
    end]]
    if string.find(tag, 'NotesShake') then
        i = string.sub(tag,11,20)
        for i = 0,7 do
            strumLine = getPropertyFromGroup('notes', i, 'mustPress') and 'playerStrums' or 'opponentStrums'
            receptorX = getPropertyFromGroup(strumLine, getPropertyFromGroup('notes', i, 'noteData') , 'x')
            doTweenX('reset'..i, 'notes.members['..i..']', receptorX, 0.25, 'circOut')
        end
    end
end
function lerp(a, b, ratio)
    return math.floor(a + ratio * (b - a))
end
function boundTo(value, min, max)
  return math.max(min, math.min(max, value))
end