function onCreate()
	-- background shit
	makeLuaSprite('ceu1', 'ceu1', -100, 0);
	setLuaSpriteScrollFactor('ceu1', 1.0, 1.0);
	addLuaSprite('ceu1', false);
	scaleObject('ceu1', 2, 2);
	
	makeLuaSprite('lua', 'lua', -200,0);
	setLuaSpriteScrollFactor('lua', 1.0, 1.0);
	addLuaSprite('lua', false);
	scaleObject('lua', 5, 5);
	
	makeLuaSprite('montanhas', 'montanhas', -100, 400);
	setLuaSpriteScrollFactor('montanhas', 1.0, 1.0);
	addLuaSprite('montanhas', false);
	scaleObject('montanhas', 1.4, 1.4);
	
	makeAnimatedLuaSprite('riozinho','riozinho',1020, 700)
	addAnimationByPrefix('riozinho','fire','river2  instance', 24,true)
	addLuaSprite('riozinho',false)
	objectPlayAnimation('riozinho','river2  instance',true)
	scaleObject('riozinho', 1.2, 1.2);
	
	makeLuaSprite('nuvem', 'nuvem', 200, -500);
	setLuaSpriteScrollFactor('nuvem', 1.0, 1.0);
	addLuaSprite('nuvem', false);
	scaleObject('nuvem', 5, 5);
	
	makeAnimatedLuaSprite('lagor','lagor',200, 900)
	addAnimationByPrefix('lagor','fire','anim instance', 24,true)
	addLuaSprite('lagor',false)
	objectPlayAnimation('lagor','anim instance',true)
	scaleObject('lagor', 1.2, 1.2);
	
	makeLuaSprite('chaoexe', 'chaoexe', -100, 500);
	setLuaSpriteScrollFactor('chaoexe', 1.0, 1.0);
	addLuaSprite('chaoexe', false);
	scaleObject('chaoexe', 1.4, 1.4);
	
	makeLuaSprite('avore', 'avore', 100, 450);
	setLuaSpriteScrollFactor('avore', 1.0, 1.0);
	addLuaSprite('avore', false);
	scaleObject('avore', 1.2, 1.2);
	
	makeLuaSprite('avore2', 'avore2', 1980, 350);
	setLuaSpriteScrollFactor('avore2', 1.0, 1.0);
	addLuaSprite('avore2', false);
	scaleObject('avore2', 1.2, 1.2);
	
	makeAnimatedLuaSprite('tv','tv',1900, 600)
	addAnimationByPrefix('tv','fire','monitor instance', 24,true)
	addLuaSprite('tv',false)
	objectPlayAnimation('tv','monitor instance',true)
	scaleObject('tv', 1.5, 1.5);

	makeLuaSprite('pretoaa', 'pretoaa', -300, -400);
	setLuaSpriteScrollFactor('pretoaa', 0.9, 0.9);
	addLuaSprite('pretoaa', false);
	scaleObject('pretoaa', 5, 5);
	
	makeLuaSprite('black_vignette', 'black_vignette', 0, 0);
	addLuaSprite('black_vignette', true)
	setObjectCamera('black_vignette', 'other');
	end
	
	
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('pretoaa.visible', false);
			setProperty('black_vignette.visible', true);
end
end
end