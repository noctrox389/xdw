function onCreate()
	-- background shit
	makeLuaSprite('BGSky', 'BGSky', -300, -300);
	setLuaSpriteScrollFactor('BGSky', 1.0, 1.0);
	addLuaSprite('BGSky', false);
	scaleObject('BGSky', 1.4, 1.4);
	
	makeLuaSprite('black_vignette', 'black_vignette', 0, 0);
	addLuaSprite('black_vignette', true)
	setObjectCamera('black_vignette', 'other');

	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	setPropertyFromClass('PlayState', 'introSoundsSuffix', '-bruh');


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end