function onCreate()
	-- background shit
	makeLuaSprite('Nuvems', 'Nuvems', -1500, -600);
	setLuaSpriteScrollFactor('Nuvems', 0.1, 0.1);
	addLuaSprite('Nuvems', false);
	scaleObject('Nuvems', 1.2, 1.2);
	
	makeLuaSprite('Egg_Star', 'Egg_Star', -400, -600);
	setLuaSpriteScrollFactor('Egg_Star', 0.4, 0.4);
	addLuaSprite('Egg_Star', false);
	scaleObject('Egg_Star', 1.2, 1.2);
	
	makeLuaSprite('Chao', 'Chao', -500, 400);
	setLuaSpriteScrollFactor('Chao', 1.0, 1.0);
	addLuaSprite('Chao', false);
	scaleObject('Chao', 1.5, 1.5);
	
	makeAnimatedLuaSprite('Cenario', 'Cenario', -2500, 400);
	setLuaSpriteScrollFactor('Cenario', 0.9, 0.9);
	addAnimationByPrefix('Cenario', 'Cenario', 'Chaiow3', 20, true);
	scaleObject('Cenario', 1.5, 1.5);
	addLuaSprite('Cenario', false);
	setProperty('Cenario.visible', false);
	
	makeAnimatedLuaSprite('PernaS', 'PernaS', 900, 700);
	setLuaSpriteScrollFactor('PernaS', 1.0, 1.0);
	addAnimationByPrefix('PernaS', 'PernaS', 'Perna', 20, true);
	scaleObject('PernaS', 1.5, 1.5);
	addLuaSprite('PernaS', false);
	setProperty('PernaS.visible', false);
	
	makeAnimatedLuaSprite('PernasRo', 'PernasRo', 1620, 540);
	setLuaSpriteScrollFactor('PernasRo', 1.0, 1.0);
	addAnimationByPrefix('PernasRo', 'PernasRo', 'PernasR', 40, true);
	scaleObject('PernasRo', 1.5, 1.5);
	addLuaSprite('PernasRo', false);
	setProperty('PernasRo.visible', false);
	
	makeAnimatedLuaSprite('Helice', 'Helice', 1220, -40);
	setLuaSpriteScrollFactor('Helice', 1.0, 1.0);
	addAnimationByPrefix('Helice', 'Helice', 'Helice', 60, true);
	scaleObject('Helice', 1.5, 1.5);
	addLuaSprite('Helice', false);
	setProperty('Helice.visible', false);
	
	setProperty('introSoundsSuffix', '-fatal')
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'MiniSonicDeath');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); 
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'ring');
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('PernaS.visible', true);
			setProperty('PernasRo.visible', true);
			setProperty('Helice.visible', true);
			setProperty('Cenario.visible', true);
			setProperty('Chao.visible', false);
		end
	end
end