function onCreate()
	-- background shit
	makeLuaSprite('oloko', 'oloko', -300, -300);
	setLuaSpriteScrollFactor('oloko', 1.0, 1.0);
	addLuaSprite('oloko', false);
	scaleObject('oloko', 5, 5);

	makeAnimatedLuaSprite('ErrorBox', 'ErrorBox', 350, 50);
	setLuaSpriteScrollFactor('ErrorBox', 0.9, 0.9);
	addAnimationByPrefix('ErrorBox', 'ErrorBox', 'Error2', 20, true);
	scaleObject('ErrorBox', 1.5, 1.5);
	addLuaSprite('ErrorBox', false);
	
	makeAnimatedLuaSprite('ErrorBox2', 'ErrorBox2', 1300, 350);
	setLuaSpriteScrollFactor('ErrorBox2', 0.9, 0.9);
	addAnimationByPrefix('ErrorBox2', 'ErrorBox2', 'Error3', 20, true);
	scaleObject('ErrorBox2', 1.5, 1.5);
	addLuaSprite('ErrorBox2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end