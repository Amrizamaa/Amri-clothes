SDW = {}

function SDW.PlayAnim(dict, anim, wait)
    SDW.LoadAnimDict(dict)
    TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
    Citizen.Wait(wait)
    ClearPedSecondaryTask(PlayerPedId()) 
end


AddEventHandler('sdw-progressBar:removingClothes', function(UnWearing)
    if UnWearing == 'sdw_torso' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removetorso'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })   
    elseif UnWearing == 'sdw_pants' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removepants'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_shoes' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removeshoes'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_mask' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removemask'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_hat' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removehat'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_bag' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removebag'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_glasses' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removeglasses'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_vest' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removevest'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_ears' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removeearaccessories'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_chain' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('removechain'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })
    elseif UnWearing == 'sdw_watch' then
        local success = lib.progressBar({
            duration = 2500,
            label = locale('removewatch'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_bracelet' then
        local success = lib.progressBar({
            duration = 3500,
            label = locale('removebracelet'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    end
end)

AddEventHandler('sdw-progressBar:WearingClothes', function(Wearing)
    if Wearing == 'sdw_torso' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('weartorso'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })   
    elseif Wearing == 'sdw_pants' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearpants'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_shoes' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearshoes'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_mask' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearmask'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_hat' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearhat'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_bag' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearbag'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_glasses' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearglasses'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_vest' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearvest'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_ears' then
        local success = lib.progressBar({
            duration = 3000,
            label = locale('wearearaccessories'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif Wearing == 'sdw_chain' then
        local success = lib.progressBar({
            duration = 2500,
            label = locale('wearchain'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })
    elseif Wearing == 'sdw_watch' then
        local success = lib.progressBar({
            duration = 2500,
            label = locale('wearwatch'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })
    elseif Wearing == 'sdw_wrist' then
        local success = lib.progressBar({
            duration = 2500,
            label = locale('wearwrist'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })
    end
end)



function SDW.LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end
