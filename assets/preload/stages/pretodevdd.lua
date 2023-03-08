function onCreate()
	-- background shit
		makeLuaSprite('Lua3', 'Lua3', -650, -300);
	setLuaSpriteScrollFactor('Lua3', 0.5, 0.5);
	addLuaSprite('Lua3', false);
	scaleObject('Lua3', 1, 1);
	setProperty('Lua3.visible', false);

	makeLuaSprite('Grama2', 'Grama2', 50, 500);
	setLuaSpriteScrollFactor('Grama2', 1, 1);
	addLuaSprite('Grama2', false);
	scaleObject('Grama2', 1, 1);
	setProperty('Grama2.visible', false);
	
	makeLuaSprite('Lua2', 'Lua2', -350, -300);
	setLuaSpriteScrollFactor('Lua2', 0.5, 0.5);
	addLuaSprite('Lua2', false);
	scaleObject('Lua2', 1, 1);

	makeLuaSprite('Grama', 'Grama', 100, 500);
	setLuaSpriteScrollFactor('Grama', 1, 1);
	addLuaSprite('Grama', false);
	scaleObject('Grama', 1, 1);
	end
	
	function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('Grama2.visible', true);
			setProperty('Lua3.visible', true);
			setProperty('Grama.visible', false);
			setProperty('Lua2.visible', false);
		end
	end
end