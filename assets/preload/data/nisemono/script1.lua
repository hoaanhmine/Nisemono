
local xx = 0;
local yy = 0;
local xx2 = 0;
local yy2 = 0;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;



function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if (curStep >= 3125 and curStep < 3760) then
        if followchars == true then
            if mustHitSection == false then
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                    doTweenX('camX','camHUD',xx-ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                    doTweenX('camX','camHUD',xx+ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                    doTweenY('camY','camHUD',yy-ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                    doTweenY('camY','camHUD',yy+ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                    doTweenX('camX','camHUD',xx-ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                    doTweenX('camX','camHUD',xx+ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                    doTweenY('camY','camHUD',yy-ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                    doTweenY('camY','camHUD',yy+ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
            else
    
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                    doTweenX('camX','camHUD',xx-ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                    doTweenX('camX','camHUD',xx+ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                    doTweenY('camY','camHUD',yy-ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                    doTweenY('camY','camHUD',yy+ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                    doTweenX('camX','camHUD',xx-ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                    doTweenX('camX','camHUD',xx+ofs,1.5,'quartOut')
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                    doTweenY('camY','camHUD',yy-ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                    doTweenY('camY','camHUD',yy+ofs,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    doTweenY('camY','camHUD',yy,1.5,'quartOut')
                    doTweenX('camX','camHUD',xx,1.5,'quartOut')
                end
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
    end
end