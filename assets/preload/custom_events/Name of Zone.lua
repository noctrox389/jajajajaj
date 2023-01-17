function onEvent(name, value1, value2)
	if name == "Name of Zone" then
		makeLuaSprite('image', value1, 0, 587);
	        setLuaSpriteScrollFactor('iamge', 0, 587);
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFFFF', 1, 'quartIn');
		setObjectCamera('image', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 10, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end