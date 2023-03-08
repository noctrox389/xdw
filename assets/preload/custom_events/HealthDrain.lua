function onEvent(name, value1, value2)
if name == 'HealthDrain' then
function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.010);
	end
end

function onCreate()
    setProperty('skipCountdown', true)
end
end
end