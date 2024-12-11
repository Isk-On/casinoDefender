require('moonloader')
local sampev = require('lib.samp.events')
local lock = nil

function main()
    while not isSampAvailable() do wait(0) end

    lock = createObject(18862, 2019, 1007, 10)

    sampRegisterChatCommand('removeTrash', function()
        deleteObject(lock)
        sampAddChatMessage("Успех", -1)
    end)
end
