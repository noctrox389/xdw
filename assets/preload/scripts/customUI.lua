local font = 'sonic2.ttf';

function onCreate()

        font = 'sonic2.ttf';
    end

function onCreatePost()
    setTextFont("scoreTxt", font);
    setTextFont("botplayTxt", font);
    setTextFont("timeTxt", font);
end