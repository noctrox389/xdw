function onEvent(name, value1, value2)
	if name == "additiveCamZoom" then
		
		setProperty("defaultCamZoom", getProperty('defaultCamZoom') + value1)
		
	end
end