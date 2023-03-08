local MinMisses=2
local MissSelecter=true
function onCreate()

    
    makeLuaSprite('CreditsBG',nil,-282,200)
    makeGraphic('CreditsBG',282,150,'FFFFFF')
    setProperty('CreditsBG.alpha',0.4)
    setObjectCamera('CreditsBG','hud')
    addLuaSprite('CreditsBG')
    Text=getTextFromFile('data/'..'defeat'..'/info.txt')
    makeLuaText('CreditsTxt',Text,0,getProperty('CreditsBG.x')+12,getProperty('CreditsBG.y')+12)
    setTextAlignment('CreditsTxt','left')
    setTextSize('CreditsTxt',24)
    setObjectCamera('CreditsTxt','hud')
    addLuaText('CreditsTxt')
end

function onCreatePost()

    setProperty('iconP1.visible',false)
    setProperty('iconP2.visible',false)

    setObjectOrder('dadGroup',getObjectOrder('boyfriendGroup')+1)
    
    setProperty('healthBar.alpha',0)
    setProperty('timeTxt.visible',false)
end

function onCountdownStarted()
    for i=0,3 do
        setPropertyFromGroup('opponentStrums',i,'x',-200)
        setPropertyFromGroup('playerStrums',i,'x',-278+(160*0.7)*i+50+(screenWidth/2))
    end
end
function onUpdate(elapsed)
    setProperty('timeBar.alpha',0)

    CustomEvent()
    if not MissSelecter then
        UpdatedSelecter()
    end 
    if boyfriendName=='bf-defeat-scared' then
        setProperty('DefeatBackDead.visible',true)
        setProperty('DefeatBack.visible',true)
        setProperty('OverlayDead.visible',true)
    else
        setProperty('DefeatBackDead.visible',false)
        setProperty('DefeatBack.visible',false)
        setProperty('OverlayDead.visible',false)
    end
    if dadName=='blackold' then
        setTextColor('scoreTxt','FFFFFF')
        setProperty('DefeatBackv4.visible',false)
        setProperty('Overlay.visible',false)
        setProperty('iconP1.visible',false)
        setProperty('iconP2.visible',false)
        setProperty('DefeatBackOld.visible',true)
        SetScoreTxt('Old')
    else
        setTextColor('scoreTxt','FFFFFF')
        setProperty('DefeatBackv4.visible',true)
        setProperty('Overlay.visible',true)
        setProperty('DefeatBackOld.visible',false)
        SetScoreTxt()
    end
    if not Credits and startedCountdown then
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),0,0.1))
    else
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),-282+12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),-282,0.1))
    end
end
function SetScoreTxt(version)
    local FC=''
    if version=='Old' then
        if ratingFC~='' then
            FC= ' | ('..ratingFC..')'
        end
    setTextString('scoreTxt','Score: '..score..' | Combo breaks: '..misses..' | Accuracy: '..tostring(toInt(rating*10000)/100)..'%'..FC)
    else
        setTextString('scoreTxt','Score: '..score..' | Misses: '..misses..' / '..MinMisses..' | Rating: '..GetRating())
    end
end
function GetRating()
    
    if ratingFC~='' then
        return '('..tostring(toInt(rating*10000)/100)..'%) - '..ratingFC
    else
        return '?'
    end
end
function onUpdatePost(elapsed)
    Set('iconP1',getProperty('scoreTxt.x')+900,getProperty('scoreTxt.y')-60)
    Set('iconP2',getProperty('scoreTxt.x')+225,getProperty('scoreTxt.y')-80)
    if misses>MinMisses then
        setHealth(-1)
    elseif misses>=MinMisses-2 then
        setProperty('iconP1.animation.curAnim.curFrame',1)
    else
        setProperty('iconP1.animation.curAnim.curFrame',0)
    end
    setProperty('iconP2.animation.curAnim.curFrame',0)
    if misses<=MinMisses then
        setHealth(1)
    end
end
function toInt(float) 
    if float<=math.floor(float)+0.5 then
        return math.floor(float)
    else
        return math.ceil(float)
    end
 end
function Set(tag,X,Y)
    if X~=nil then
        setProperty(tag..'.x',X)
    end
    if Y~=nil then
        setProperty(tag..'.y',Y)
    end
 end
function CustomEvent()
    if curBeat >= 5 then
        if getProperty('CreditsBG.x')>-0.9 then
            Credits=true
        end
    end
    if curBeat == 16 then
        setProperty('defaultCamZoom',0.6)
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
    end
    if curBeat == 48 then
        setProperty('defaultCamZoom',0.8)
    end
    if curBeat == 68 then
        setProperty('defaultCamZoom',0.5)
    end
    if curBeat == 100 then
        setProperty('defaultCamZoom',0.6)
        setGlobalFromScript('data/CameraMove','ManualCharacterPos',{dad={500,500},bf={900,500}})
        setGlobalFromScript('data/CameraMove','ForceCamPos',false)
    end
    if curBeat == 164 then
        setProperty('defaultCamZoom',0.5)
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
        setGlobalFromScript('data/CameraMove','ManualPos',{750,500})
    end
    if curBeat == 194 then
        setProperty('defaultCamZoom',0.6)
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
    end
    if curBeat == 212 then
        setProperty('defaultCamZoom',0.7)
    end
    if curBeat == 228 then
        setProperty('defaultCamZoom',0.8)
    end
    if curBeat == 244 then
        setProperty('defaultCamZoom',0.85)
    end
    if curBeat == 260 then
        setProperty('defaultCamZoom',0.6)
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
        setGlobalFromScript('data/CameraMove','ManualCharacterPos',{dad={500,500},bf={900,500}})
        setGlobalFromScript('data/CameraMove','ForceCamPos',false)
        
    end
    if curBeat == 424 then
        setProperty('defaultCamZoom',0.7)
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
        setGlobalFromScript('data/CameraMove','ManualPos',{750,500})
    end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.8)
    end
    if curBeat == 472 then
        setProperty('defaultCamZoom',0.9)
    end
    if curBeat == 488 then
        setProperty('defaultCamZoom',50)
    end
end
function onStartCountdown()
    if not MissSelecter then
        SelecterCreater()
        return Function_Stop
    else
        return Function_Continue
    end
end
function onPause()
    if not MissSelecter then
        SelecterCreater()
        return Function_Stop
    else
        return Function_Continue
    end
end
function SelecterCreater()
    local Y=450
    makeLuaSprite('BackS',nil,0,0)
    makeGraphic('BackS',screenWidth,screenHeight,'000000')
    setObjectCamera('BackS','other')
    addLuaSprite('BackS')
    makeLuaText('ComboBreak','5/5 COMBO BREAKS',0,0,150)
    setTextSize('ComboBreak',100)
    setTextColor('ComboBreak','FFFFFF')
    setTextAlignment('ComboBreak','center')
    screenCenter('ComboBreak','x')
    setObjectCamera('ComboBreak','other')
    addLuaText('ComboBreak')

    makeLuaText('PRACTICEtxt','PRACTICE MODE',0,0,600)
    setTextSize('PRACTICEtxt',75)
    setTextAlignment('PRACTICEtxt','center')
    screenCenter('PRACTICEtxt','x')
    setObjectCamera('PRACTICEtxt','other')
    addLuaText('PRACTICEtxt')
    for i=1,6 do
        if i==3 then
            Y=Y+43
        elseif i==5 then
            Y=Y+27
        end
        makeLuaSprite('Amongusdummy'..i,'dummypostor'..i,162*i,Y)
        setObjectCamera('Amongusdummy'..i,'other')
        addLuaSprite('Amongusdummy'..i)
    end
    makeLuaSprite('Selector','missAmountArrow',getProperty('Amongusdummy1.x'),400)
    setObjectCamera('Selector','other')
    addLuaSprite('Selector')
end
local SelecterHorizont=1
local SelectVertical=1
local SelectMin={5,4,3,2,1,0}
function UpdatedSelecter()
    if keyJustPressed('left') and SelecterHorizont>1 and SelectVertical==1 then
        SelecterHorizont=SelecterHorizont-1
        setTextString('ComboBreak',SelectMin[SelecterHorizont]..'/5 COMBO BREAKS')
        setProperty('Selector.x',getProperty('Amongusdummy'..SelecterHorizont..'.x'))
    end
    if keyJustPressed('right') and SelecterHorizont<6 and SelectVertical==1 then
        SelecterHorizont=SelecterHorizont+1
        setTextString('ComboBreak',SelectMin[SelecterHorizont]..'/5 COMBO BREAKS')
        setProperty('Selector.x',getProperty('Amongusdummy'..SelecterHorizont..'.x'))
    end
    if keyJustPressed('up') and SelectVertical>1 then
        SelectVertical=SelectVertical-1
        setTextColor('PRACTICEtxt','FFFFFF')
        setTextString('ComboBreak',SelectMin[SelecterHorizont]..'/5 COMBO BREAKS')
    end
    if keyJustPressed('down') and SelectVertical<2 then
        SelectVertical=SelectVertical+1
        setTextColor('PRACTICEtxt','B6B6B6')
        setTextString('ComboBreak','PRACTICE MODE')
    end
    if keyJustPressed('accept') then
        if (not botPlay or not practice) or (SelectVertical==2) then
            MinMisses=SelectMin[SelecterHorizont]
            if SelectVertical==2 then
                PracticeMode=true
                MinMisses=math.huge
            end
            MissSelecter=true
            removeLuaSprite('Selector')
            removeLuaText('ComboBreak')
            removeLuaText('PRACTICEtxt')
            for i=1,6 do
                removeLuaSprite('Amongusdummy'..i)
            end
            playSound('amongkill')
            runTimer('transDelay',1)
        else
            
            makeLuaText('BotTracker',"Don't use Botplay or Practice",0,0,0)
            setTextSize('BotTracker',50)
            setTextColor('BotTracker','FFFFFF')
            screenCenter('BotTracker','xy')
            setObjectCamera('BotTracker','other')
            addLuaText('BotTracker')
            setProperty('BotTracker.alpha',1)
            doTweenAlpha('BotTracker','BotTracker',0,1,'linear')
        end

    end
    if keyJustPressed('back') then
        exitSong()
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag=='transDelay' then
        setProperty('BackS.alpha',0)
        startCountdown()
    end
    if tag=='Reset' then
        restartSong()
    end
end
function onTweenCompleted(tag)
    if tag=='IfPractice' then
        runTimer('Reset',1.5)
    end
end
function Lerp(Min,Max,Ratio)
    return Min + Ratio * (Max - Min);
end
	