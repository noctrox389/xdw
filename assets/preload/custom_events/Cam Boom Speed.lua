boomspeed = 4
bam = 1
left = true
function onEvent(n,v1,v2)

if n == "Cam Boom Speed" then

boomspeed = tonumber(v1)
bam = tonumber(v2)

end

end
function onBeatHit()

	if curBeat % boomspeed == 0 then
		triggerEvent("Add Camera Zoom",0.015*bam,0.045*bam)
		if boomspeed == 1 and bam == 1 then
			setProperty('camHUD.y', getProperty('camHUD.y')-12)
			doTweenY('bounceDown', 'camHUD', getProperty('camHUD.y')+12, getPropertyFromClass('Conductor', 'stepCrochet') * 2 / 520, 'sineIn')
			triggerEvent("Add Camera Zoom",0.015*bam,0.045*bam)
			if left then
				setProperty('camHUD.angle', getProperty('camHUD.angle')-2)
				setProperty('camGame.angle', getProperty('camGame.angle')+1)
			else
				setProperty('camHUD.angle', getProperty('camHUD.angle')+2)
				setProperty('camGame.angle', getProperty('camGame.angle')-1)
			end
			doTweenAngle('tilt', 'camHUD', 0, getPropertyFromClass('Conductor', 'stepCrochet') * 2 / 510, 'sineOut')
			doTweenAngle('tiltGame', 'camGame', 0, getPropertyFromClass('Conductor', 'stepCrochet') * 2 / 510, 'sineOut')
			left = not left
		end
	end

end