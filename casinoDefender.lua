require('moonloader')
local sampev = require('lib.samp.events')
local ASState = require('moonloader').audiostream_status
local soundPath = getWorkingDirectory() .. "\\resource\\trash.mp3" 

function main()
    while not isSampAvailable() do wait(0) end
    local sound = loadAudioStream(soundPath)

    while true do 
        wait(0)
        if isCharInArea3d(PLAYER_PED, 1999, 983, 10, 2039, 1027, 15, false) then
            if getAudioStreamState(sound) == -1 then
                setAudioStreamState(sound, ASState.PLAYING)
                print(tostring(getAudioStreamState(sound)))
                setAudioStreamLooped(sound, false)
                createObject(18862, 2019, 1007, 10)
            end
        end
    end
end
