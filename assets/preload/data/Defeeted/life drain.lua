function onUpdate()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0008);
	end
end

function onCreate()
    setProperty('skipCountdown', true)

end