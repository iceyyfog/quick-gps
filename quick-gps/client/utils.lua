local utils = {}

-- Notification function
function utils.Notify(msg, type)
    type = type or 'inform'

    if Config.Notify == 'qb' then
        TriggerEvent('QBCore:Notify', msg, type)

    elseif Config.Notify == 'ox' then
        lib.notify({
            title = type:sub(1, 1):upper() .. type:sub(2),
            description = msg,
            type = type
        })

    elseif Config.Notify == 'mythic' then
        TriggerEvent('mythic_notify:client:SendAlert', {
            type = type,
            text = msg
        })

    elseif Config.Notify == 'okok' then
        local playSound = false -- true or false
        local Time = 1000 -- 1 second ( Time in milliseconds )

        exports['okokNotify']:Alert('Quick GPS', msg, Time, type, playSound)
    elseif Config.Notify == 'custom' then
        -- Place your own script here.
    end
end

-- Make the utils table available globally within this resource's scope
local resourceName = GetCurrentResourceName()
if not _G[resourceName] then
    _G[resourceName] = {}
end
_G[resourceName].utils = utils