function onCreate()
    Shaders = getPropertyFromClass('flixel.FlxG','save.data.shaders',false)
    if not lowQuality then
        if Shaders == true then
            makeAnimatedLuaSprite('Movie-Dots','Nisemono/MovieDots', -0, -0)
            addAnimationByPrefix('Movie-Dots','Nisemono/MovieDots','MovieDots', 24 ,true)
            addLuaSprite('Movie-Dots')
            setObjectOrder('Movie-Dots',100)
            setObjectCamera('Movie-Dots','other')
            setBlendMode('Movie-Dots','add')

            makeAnimatedLuaSprite('Movie-Dots2','Nisemono/MovieDots', -0, -0)
            addAnimationByPrefix('Movie-Dots2','Nisemono/MovieDots','MovieDots', 25 ,true)
            addLuaSprite('Movie-Dots2')
            setObjectOrder('Movie-Dots2',100)
            setObjectCamera('Movie-Dots2','other')
            setBlendMode('Movie-Dots2','add')
            makeAnimatedLuaSprite('Rain2','Nisemono/Rain', -0, -0)
            addAnimationByPrefix('Rain2','Nisemono/Rain','Rain', 60 ,true)
            addLuaSprite('Rain2')
            setObjectOrder('Rain2',100)
            setObjectCamera('Rain2','other')
            setBlendMode('Rain2','overlay')
            setProperty('Rain2.alpha',0.3)

            makeAnimatedLuaSprite('Rain','Nisemono/Rain', -0, -0)
            addAnimationByPrefix('Rain','Nisemono/Rain','Rain', 40 ,true)
            addLuaSprite('Rain')
            setObjectOrder('Rain',100)
            setObjectCamera('Rain','other')
            --setBlendMode('Rain','overlay')
            setProperty('Rain.alpha',0.8)
        end
    end
    makeLuaSprite('bluedark', '', -600,-300)
    makeGraphic('bluedark', 1,1, "08101B")
    setProperty('bluedark.alpha', 1)
    setObjectOrder('bluedark', 100)
    scaleObject('bluedark', 8000, 8000)
    if Shaders == true then
        makeLuaSprite('Vignette','Nisemono/Vignette',-540,-260)
        addLuaSprite('Vignette',true)
        setObjectCamera('Vignette','Other')
        scaleObject('Vignette',1.5,1.5)
        setProperty('Vignette.alpha',0.84)
    end
    if not lowQuality then

        makeLuaSprite('city','Nisemono/City',0,-90)
        addLuaSprite('city',true)
        setProperty('city.alpha',0)--0.4

        makeLuaSprite('Haunted','Nisemono/Haunted')
        addLuaSprite('Haunted',true)
        setProperty('Haunted.alpha',0)

        makeLuaSprite('triangleBG','Nisemono/triangle',-80)
        addLuaSprite('triangleBG',true)
        setProperty('triangleBG.alpha',0)

        makeLuaSprite('saturn','Nisemono/saturn')
        addLuaSprite('saturn',true)
        setProperty('saturn.alpha',0)

        makeLuaSprite('NisemonoText','Nisemono/니세모노카',250,-100)
        addLuaSprite('NisemonoText',true)
        setProperty('NisemonoText.alpha',0)
        setProperty('NisemonoText.scale.x',0.8)
        setProperty('NisemonoText.scale.y',0.8)
        makeLuaSprite('Frums','Nisemono/Frums',330,300)
        addLuaSprite('Frums',true)
        setProperty('Frums.alpha',0)
        setProperty('Frums.scale.x',0.8)
        setProperty('Frums.scale.y',0.8)
        setObjectCamera('Frums','other')

        makeLuaSprite('triangle','Nisemono/dec_triangle',340,60)
        addLuaSprite('triangle',true)
        setProperty('triangle.scale.x',0.6)
        setProperty('triangle.scale.y',0.6)
        setProperty('triangle.alpha',0)

        makeLuaSprite('hexa','Nisemono/Hexagon',615,330)
        addLuaSprite('hexa',true)
        setProperty('hexa.alpha',0)
        doTweenAngle('hexaAngle','hexa',900000,9000)
        setProperty('hexa.scale.x',2)
        setProperty('hexa.scale.y',2)

        makeLuaSprite('hexa2','Nisemono/HexagonBlur',615,330)
        addLuaSprite('hexa2',true)
        setProperty('hexa2.alpha',0)
        doTweenAngle('hexaAngles','hexa2',-900000,9000)
        setProperty('hexa2.scale.x',3)
        setProperty('hexa2.scale.y',3)

        makeLuaSprite('Abstract','Nisemono/Abstract',-60)
        addLuaSprite('Abstract',true)
        setProperty('Abstract.scale.x',2.3)
        setProperty('Abstract.scale.y',2.3)
        setProperty('Abstract.alpha',0)

        makeLuaSprite('Bgse','Nisemono/bg',280,-80)
        addLuaSprite('Bgse',true)
        scaleObject('Bgse',1.5,1.5)
        setProperty('Bgse.scale.x',2.5)
        setProperty('Bgse.scale.y',2.5)
        setProperty('Bgse.alpha',0)

        makeLuaSprite('Grid','Nisemono/GridDouble')
        addLuaSprite('Grid',true)
        setProperty('Grid.alpha',0)

        makeLuaSprite('frameR','Nisemono/FrameR',-305,-170)
        addLuaSprite('frameR',true)
        setObjectCamera('frameR','Other')
        setProperty('frameR.scale.x',7)
        setProperty('frameR.scale.y',4.5)
        setBlendMode('frameR','add')
        setProperty('frameR.alpha',0)

        makeLuaSprite('frameB','Nisemono/FrameB',-305,-170)
        addLuaSprite('frameB',true)
        setObjectCamera('frameB','Other')
        setProperty('frameB.scale.x',7)
        setProperty('frameB.scale.y',4.5)
        setBlendMode('frameB','add')
        setProperty('frameB.alpha',0)

        makeLuaSprite('frameG','Nisemono/FrameG',-305,-170)
        addLuaSprite('frameG',true)
        setObjectCamera('frameG','Other')
        setProperty('frameG.scale.x',7)
        setProperty('frameG.scale.y',4.5)
        setBlendMode('frameG','add')
        setProperty('frameG.alpha',0)

        makeLuaSprite('dust','Nisemono/part_dust',0,350)
        addLuaSprite('dust',true)
        doTweenY('jghjhgj','dust',-540,15)
        setProperty('dust.alpha',0)

        makeLuaSprite('dust2','Nisemono/part2_dust',0,350)
        addLuaSprite('dust2',true)
        doTweenY('sdfsdf','dust2',-540,8)
        scaleObject('dust2',4,4)
        setProperty('dust2.alpha',0)

        makeLuaSprite('dust3','Nisemono/part3_dust',0,950)
        addLuaSprite('dust3',true)
        doTweenY('asdfdfsg','dust3',-1240,8)
        setProperty('dust3.scale.x',8)
        setProperty('dust3.scale.y',8)
        setProperty('dust3.alpha',0)
        setObjectCamera('dust3','other')

        makeLuaSprite('ScrollBG','Nisemono/ScrollBg',-80,440)
        addLuaSprite('ScrollBG',true)
        setProperty('ScrollBG.alpha',0)
    end
    makeLuaSprite('add', '', -600,-300)
    makeGraphic('add', 1,1, "FFFFFF")
    setProperty('add.alpha', 0.15)
    setObjectOrder('add', 999)
    setBlendMode('add','add')
    scaleObject('add', 8000, 8000)
    setObjectCamera('add','other')
    makeLuaSprite('adds', '', -600,-300)
    makeGraphic('adds', 1,1, "FFFFFF")
    setProperty('adds.alpha', 0)
    setObjectOrder('adds', 999)
    setBlendMode('adds','add')
    scaleObject('adds', 8000, 8000)
    setObjectCamera('adds','other')

    makeLuaSprite('blue', '', -600,-300)
    makeGraphic('blue', 1,1, "46440D")
    setProperty('blue.alpha', 0.75)
    setObjectOrder('blue', 999)
    setBlendMode('blue','subtract')
    scaleObject('blue', 8000, 8000)
    setObjectCamera('blue','other')

    makeLuaSprite('red', '', -600,-300)
    makeGraphic('red', 1,1, "00F9FF")
    setProperty('red.alpha', 0)
    setObjectOrder('red', 999)
    setObjectCamera('red','other')
    scaleObject('red', 8000, 8000)
    setBlendMode('red','subtract')
    if Shaders == true then
        makeLuaSprite('noise','Nisemono/noise2')
        addLuaSprite('noise',true)
        setBlendMode('noise','subtract')
        setObjectCamera('noise','other')
        scaleObject('noise',8,8)
        setProperty('noise.alpha',0.2)
    end
    makeLuaSprite('frame','Nisemono/Frame',-305,-170)
    addLuaSprite('frame',true)
    setObjectCamera('frame','Other')
    setProperty('frame.scale.x',7)
    setProperty('frame.scale.y',2.57)
    setProperty('frame.alpha',0)
end

function onStepHit()
    val = {-1,1}
    flippy = not flippy
    noFlashy = getPropertyFromClass('flixel.FlxG','save.data.noFlashy')
    if curStep == 1 then
        doTweenAlpha('FrameAlpha','frame',1,4)
    end
    if curStep == 64 then
        doTweenAlpha('HauntedAlpha','Haunted',0.2,2)
    end
    if curStep == 120 then
        doTweenZoom('camGameZoom','camGame',4,2,'quartIn')
        doTweenAngle('camGameAngle','camGame',15,0.8,'quartOut')
        doTweenAlpha('HauntedAlpha','Haunted',0,2,'quartIn')
    end
    if curStep == 144 then
        doTweenZoom('camGameZoom','camGame',0.85,0.0001)
        doTweenAngle('camGameAngle','camGame',0,0.8,'quartOut')
        doTweenAlpha('CityAlpha','city',0.5,20)
        doTweenAlpha('NisemonoTextAlpha','NisemonoText',1,5)
        doTweenAlpha('FrumsAlpha','Frums',1,5)
    end
    if curStep >= 144 and curStep < 768 then
        cameraShake('camGame',0.005,0.1)
        cameraShake('camHud',0.003,0.1)
        cameraShake('camOther',0.003,0.1)
    end
    if curStep == 257 or curStep == 304 or curStep == 351 then
        if not noFlashy then
            doTweenAlpha('fsdfds','add',0.7,0.4,'sineIn')
        end
        doTweenAlpha('framealpha','frame',0,2)
    end
    if curStep == 401 then
        cameraShake('camGame',0.2,0.4)
    end
    if curStep >= 512 and curStep < 754 and curStep %8 == 0 then
        if not noFlashy then
            doTweenAlpha('add-Beat','add',0.5,0.0001)
            doTweenAlpha('add-Beats','add',0.3,0.4)
        end
        doTweenAlpha('frameRalpha','frameR',0.3,0.0001)
        doTweenAlpha('frameBalpha','frameB',0.3,0.0001)
        doTweenAlpha('frameGalpha','frameG',0.3,0.0001)

        doTweenAngle('FrameGAngle','frameG',9000,200)
        doTweenAngle('FrameBAngle','frameB',9000,200)
        doTweenAngle('FrameRAngle','frameR',-9000,200)

    end
    if curStep == 755 or curStep == 888 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.8,1.2,'quartIn')
        end
        doTweenZoom('camGameZoom','camGame',5,1.2,'quartIn')
    end
    if curStep == 768 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.3,0.65,'quartOut')
        end
        setProperty('triangle.alpha',1)
        setProperty('hexa.alpha',1)
        setProperty('hexa2.alpha',1)
        doTweenAlpha('framealpha','frame',1,0.0001)
        doTweenAngle('FrameGAngle','frameG',0,0.0001)
        doTweenAngle('FrameBAngle','frameB',0,0.0001)
        doTweenAngle('FrameRAngle','frameR',0,0.0001)
        doTweenAngle('triangleAngle','triangle',900000,13000)
        setProperty('frameR.scale.x',4)
        setProperty('frameR.scale.y',2.5)
    
        setProperty('frameB.scale.x',4)
        setProperty('frameB.scale.y',2.5)
    
        setProperty('frameG.scale.x',4)
        setProperty('frameG.scale.y',2.5)
    
        doTweenZoom('camGameZoom','camGame',0.85,1.5,'quartOut')
        doTweenAlpha('CityAlpha','city',0,0.4)
    end
    if curStep == 896 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.4,0.0001)
            doTweenAlpha('Flashs','add',0,0.85,'quartOut')
        end
        setProperty('triangleBG.alpha',0.5)
        setProperty('dust.alpha',1)
        setProperty('dust2.alpha',1)    
        setProperty('dust3.alpha',1)    
        setProperty('triangle.alpha',0)
        doTweenZoom('camGameZoom','camGame',0.85,1.5,'quartOut')
    end
    if curStep >= 896 and curStep < 1595 then
        setProperty('Haunted.alpha', math.random(noFlashy and 0.35 or 0.25,1))
    end
    if curStep >= 896 and curStep < 1151 or curStep >= 1288 and curStep < 1732 then
        songPos = getSongPosition()
        currentBeat = (songPos / 1000) * (bpm / 50)
        doTweenAngle('WiggleGame', 'camGame', math.cos(currentBeat / 2) * 5, 0.5)
        doTweenY('WiggleGameY', 'camGame', math.cos(currentBeat / 2) * 25, 2.2)
        doTweenX('WiggleGameX', 'camGame', math.cos(currentBeat / 2) * 25, 0.2)
    end
    if curStep >= 897 and curStep < 1152 and curStep %4 == 0 then
        if not noFlashy then
            doTweenAlpha('grds','adds',0.2,0.0001)
            doTweenAlpha('grds2','add',0.1,0.0001)
        end
        doTweenZoom('freds','camGame',1,0.0001)
    end
    if curStep == 1146 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.8,1.2,'quartIn')
        end
        doTweenZoom('camGameZoom','camGame',5,1.2,'quartIn')
    end
    if curStep == 1152 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.1,0.5,'quartOut')
        end
        doTweenZoom('camGameZoom','camGame',0.2,0.0001)
        doTweenZoom('camGameZooms','camGame',0.86,1.5,'quartOut')
        setProperty('triangleBG.alpha',0)
        setProperty('Abstract.alpha',1)
        setProperty('dust.alpha',0)
        setProperty('dust2.alpha',0)    
        setProperty('dust3.alpha',0)    
        doTweenX('AbstractX','Abstract.scale',0.9,0.8)
        doTweenY('AbstractY','Abstract.scale',0.9,0.8)
        doTweenAlpha('frameRalpha','frameR',0,0.0001)
        doTweenAlpha('frameBalpha','frameB',0,0.0001)
        doTweenAlpha('frameGalpha','frameG',0,0.0001)
    end
    if curStep == 1279 then
        doTweenAlpha('AbstractAlpha','Abstract',0,0.4)
    end
    if curStep == 1595 then
        doTweenAlpha('HauntedAlpha','Haunted',0,1)
        doTweenAlpha('triangleAlpha','triangle',0,1)
        doTweenAlpha('HexaAlpha','hexa',0,1)
        doTweenAlpha('Hexa2Alpha','hexa2',0,1)
    end
    if curStep == 1664 then
        doTweenAlpha('CityAlpha','City',0.2,1)
    end        
    if curStep == 1724 then
        doTweenY('frameScale','frame.scale',1.3,0.45,'quartOut')
    end
    if curStep == 1730 then
        doTweenY('frameScale','frame.scale',2,0.45,'quartInOut')
        setProperty('Bgse.alpha',0.4)
    end
    if curStep >= 1730 and curStep < 2089 then
        setProperty('Bgse.alpha',math.random(Flashy and 0.55 or 0.25,1))
        cameraShake('camGame',0.01,0.1)
    end
    if curStep == 1910 then
        doTweenZoom('camGamezoom','camGame',1.3,1.2,'backIn')
        doTweenAngle('camGameAngle','camGame',15,1.2,'quartIn')
    end
    if curStep == 1916 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.6,0.0001)
            doTweenAlpha('Flashs','add',0,0.85,'quartOut')
        end
        doTweenAlpha('frameRalpha','frameR',1,0.0001)
        doTweenAlpha('frameBalpha','frameB',1,0.0001)
        doTweenAlpha('frameGalpha','frameG',1,0.0001)
        doTweenAngle('FrameGAngle','frameG',90000,900)
        doTweenAngle('FrameBAngle','frameB',90000,900)
        doTweenAngle('FrameRAngle','frameR',-90000,900)
        doTweenZoom('camGamezoom','camGame',0.85,0.5,'quartOut')
        doTweenAngle('camGameAngle','camGame',0,0.5,'quartOut')
    end
    if curStep == 2077 then
        doTweenZoom('camGamezoom','camGame',5,2.3,'quartIn')
    end
    if curStep == 2089 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.6,0.0001)
            doTweenAlpha('Flashs','add',0,0.85,'quartOut')
        end
        doTweenZoom('camGamezoom','camGame',0.85,0.5,'quartOut')
        setProperty('Bgse.alpha',0)
        doTweenAlpha('frameRalpha','frameR',0,0.0001)
        doTweenAlpha('frameBalpha','frameB',0,0.0001)
        doTweenAlpha('frameGalpha','frameG',0,0.0001)
        doTweenY('frameScaleY','frame.scale',2.57,0.85,'quartInOut')
    end
    if curStep >= 2116 and curStep < 2259 and curStep %4 == 0 then
        val = {-1,1}
        flippy = not flippy    
        cameraShake('camHUD',0.009,0.3)
        doTweenZoom('camGamezoom','camGame',1,0.0001)
        doTweenZoom('camGamezooms','camGame',0.85,0.5,'quartOut')
        doTweenAngle('camGameShake','camGame', 15 * val[(flippy and 2 or 1)],0.0001)
    end
    if curStep == 2116 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.6,0.0001)
            doTweenAlpha('Flashs','add',0,0.85,'quartOut')
        end
        setProperty('triangleBG.alpha',1)
        setProperty('red.alpha',0.4)
        setProperty('blue.alpha', 0)
    end
    if curStep == 2259 then
        doTweenZoom('camGamezoom','camGame',5,0.0001)
        doTweenZoom('camGamezooms','camGame',0.85,1.5,'quartOut')
        setProperty('red.alpha',0)
        setProperty('blue.alpha',0.75)
    end
    if curStep >= 2259 and curStep < 2317 and curStep %4 == 0 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.6,0.0001)
            doTweenAlpha('Flashs','add',0,0.85,'quartOut')
        end
        doTweenZoom('camGamezoom','camGame',0.9,0.0001)
        doTweenZoom('camGamezooms','camGame',0.85,0.5,'quartOut')
        cameraShake('camHUD',0.005,0.6)
    end
    if curStep == 2317 then
        doTweenAlpha('triangleBGAlpha','triangleBG',0,2)
        doTweenAlpha('GridAlpha','Grid',0.4,8,'quartIn')
        doTweenAngle('GridAngle','Grid',900000,9000)
        cancelTween('triangleAngle')
        doTweenAngle('triangleAngles','triangle',0,0.0001)
    end
    if curStep == 2573 then
        doTweenAlpha('GridAlpha','Grid',0,0.0001)
        doTweenAlpha('Abstractds','Abstract',1,0.0001)
        doTweenAlpha('triangleAnlpha','triangle',1,0.0001)
    end
    if curStep >= 2573 and curStep < 2952 and curStep %4 == 0 then
        cameraShake('camGame',0.007,0.4)
        doTweenY('frameScaleY','frame.scale',2.3,0.85,'quartInOut')
        doTweenAngle('camGameAngle','camGame',15*val[(flippy and 2 or 1)],0.0001)
        doTweenAngle('camGameAngles','camGame',0,0.45,'quartOut')
        doTweenAlpha('framealpha','frame',1,0.0001)
        doTweenAlpha('Abstractds','Abstract',1,0.0001)
        doTweenAlpha('Abstractfd','Abstract',0.5,0.4,'quartOut')
    end
    if curStep == 2951 then
        cameraShake('camGame',0.01,1)
    end
    if curStep == 2957 then
        if not noFlashy then
            doTweenAlpha('Flash','add',0.6,0.0001)
            doTweenAlpha('Flashs','add',0,1.5,'quartOut')
            doTweenY('ScrollBGY','ScrollBG',-2400,0.5)
        end
        if noFlashy then
            doTweenY('ScrollnoFlashy','ScrollBG',-2400,1.7)
        end
        setProperty('Abstract.alpha',0)
        setProperty('ScrollBG.alpha',0.95)
        doTweenAlpha('GridAlpha','Grid',0.25,0.0001)
        doTweenAngle('GridAngless','Grid',900000,4900)
        doTweenAngle('GridAngle','Grid',0,0.0001)
        setBlendMode('ScrollBG','add')
        doTweenAlpha('triangleAnlpha','triangle',0,0.0001)
    end
    if curStep == 3214 then
        if not noFlashy then
            doTweenAlpha('dfdsfs','add',0.9,0.0001)
            doTweenAlpha('dfdsfsds','add',0,5)
        end
        doTweenAlpha('saturnAlpha','saturn',0.6,18,'SineOut')
        setProperty('Grid.alpha',0)
        setProperty('Abstract.alpha',0)
    end
    if curStep == 3745 then
        doTweenAlpha('SaturnAlpha','saturn',0,8)
    end
    if curStep == 3852 then
        makeLuaSprite('blank', '', -600,-300)
        makeGraphic('blank', 1,1, "000000")
        setProperty('blank.alpha', 1)
        setObjectOrder('blank', 100)
        scaleObject('blank', 8000, 8000)
        setProperty('camGame.alpha',0)
        setProperty('camHUD.alpha',0)
        setProperty('camOther.alpha',0)

        --[[removeLuaSprite('bluedark') -- Ini selalu membuat Crash di modku -_-
        removeLuaSprite('red')
        removeLuaSprite('add')
        removeLuaSprite('adds')
        removeLuaSprite('noise')
        removeLuaSprite('saturn')
        removeLuaSprite('Abstract')
        removeLuaSprite('ScrollBG')
        removeLuaSprite('triangleBG')
        removeLuaSprite('triangle')
        removeLuaSprite('hexa')
        removeLuaSprite('hexa2')
        removeLuaSprite('Haunted')
        removeLuaSprite('city')
        removeLuaSprite('Bgse')
        removeLuaSprite('Frame')
        removeLuaSprite('FrameR')
        removeLuaSprite('FrameG')
        removeLuaSprite('FrameB')
        removeLuaSprite('dust')
        removeLuaSprite('dust2')
        removeLuaSprite('dust3')
        removeLuaSprite('NisemonoText')
        removeLuaSprite('Frums')
        removeLuaSprite('Grid')]]
    end

end
function onTweenCompleted( tag )
    if string.find(tag, 'fsdfds') then
        if not noFlashy then
            doTweenAlpha('addgone','add',0.3,0.6,'sineInOUt')
        end
    end
    if string.find(tag, 'NisemonoTextAlpha') then
        doTweenAlpha('NisemonotxtAlpha','NisemonoText',0,5)
        doTweenAlpha('FrumsAlpha','Frums',0,5)
    end
    if string.find(tag,'grds') then
        if not noFlashy then
            doTweenAlpha('flashgone','adds',0.3,0.5)
            doTweenAlpha('flashgonegone','add',0,0.5)
        end
    end
    if string.find(tag,'freds') then
        doTweenZoom('camGameZoomx','camGame',0.85,0.3,'quartOut')
    end
    if string.find(tag, 'jghjhgj') then
        doTweenY('jghjhgj','dust',-540,15)
        doTweenY('fdsf','dust',350,0.0001)
    end
    if string.find(tag, 'sdfsdf') then
        doTweenY('sdfsdf','dust2',-540,8)
        doTweenY('gfdgfdg','dust2',350,0.0001)
    end
    if string.find(tag, 'asdfdfsg') then
        doTweenY('asdfdfsg','dust3',-1240,16)
        doTweenY('fghfgh','dust3',950,0.0001)
    end
    if string.find(tag,'AbstractAlpha') then
        doTweenAlpha('HauntedAlpha','Haunted',0.2,0.4)
        doTweenAlpha('frameAlpha','frame',1,0.4)
        doTweenAlpha('triangleAlpha','triangle',1,0.4)
        doTweenZoom('camGameZooms','camGame',0.65,1.5,'quartOut')
    end
    if string.find(tag,'triangleAngle') then
        doTweenAngle('gdfds','triangle',0,0.0001)
        doTweenAngle('triangleAngle','triangle',360,12)
    end
    if string.find(tag, 'hexaAngle') then
        doTweenAngle('hgf','hexa',0,0.0001)
        doTweenAngle('hexaAngle','hexa',360,12)
    end
    if string.find(tag,'camGameShake') then
        doTweenAngle('dgdsgg','camGame',0,0.8,'quartOut')
    end
    if string.find(tag,'ScrollBGY') then
        doTweenY('dfsdfd','ScrollBG',200,0.0001)
    end
    if string.find(tag,'dfsdfd') then
        doTweenY('ScrollBGY','ScrollBG',-2400,0.5)
    end
    if string.find(tag,'ScrollnoFlashy') then
        if noFlashy then
            doTweenY('sdfgewfwe','ScrollBG',340,0.0001)
        end
    end
    if string.find(tag,'sdfgewfwe') then
        if noFlashy then
            doTweenY('ScrollnoFlashy','ScrollBG',-2400,1.7)
        end
    end
    if string.find(tag,'dfdsfs') then
        if noFlashy then
            doTweenAlpha('Flashs','add',0,5,'SineOut')
        end
    end
end
