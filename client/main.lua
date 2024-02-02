local IsAnim = false

exports('watch', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'watch'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local watch1 = data.metadata.accessories
    local watch2 = data.metadata.accessories2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if theGender == gender then
            if GetPedPropIndex(ped,6) == Config.Male.Watch and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_watch')
                LocalPlayer.state.invBusy = true
                IsAnim = true
                watchonoff()
                SetPedPropIndex(ped, 6, watch1, watch2, true)
                TriggerServerEvent('remove:clothes', watch1, watch2, theType, metadata) -- Fix don't remove item from inventory when using watch
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                lib.notify('error_input_watch1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedPropIndex(ped,6) == Config.Female.Watch and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_watch')
                LocalPlayer.state.invBusy = true
                IsAnim = true
                watchonoff()
                SetPedPropIndex(ped, 6, watch1, watch2, true)
                TriggerServerEvent('remove:clothes', watch1, watch2, theType, metadata)  -- Fix don't remove item from inventory when using watch
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_watch1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('wrist', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'wrist'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local wrist1 = data.metadata.accessories
    local wrist2 = data.metadata.accessories2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if theGender == gender then
            if GetPedPropIndex(ped,7) == Config.Male.Wrist and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_wrist')
                LocalPlayer.state.invBusy = true
                IsAnim = true
                wristonoff()
                SetPedPropIndex(ped, 7, wrist1, wrist2, true)
                TriggerServerEvent('remove:clothes', wrist1, wrist2, theType, metadata) -- Fix don't remove item from inventory when using watch
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_wrist1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedPropIndex(ped, 7) == Config.Female.Wrist and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_wrist')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                wristonoff()
                SetPedPropIndex(ped, 7, wrist1, wrist2, true)
                TriggerServerEvent('remove:clothes', wrist1, wrist2, theType, metadata)  -- Fix don't remove item from inventory when using watch
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_wrist1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('chain', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'chain'
    local theGender = data.metadata.gender
    local chain1 = data.metadata.accessories
    local chain2 = data.metadata.accessories2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 7) == Config.Male.Chain and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_chain')
                LocalPlayer.state.invBusy = true
                IsAnim = true
                chainonoff()
                SetPedComponentVariation(ped, 7, chain1, chain2, 0)
                TriggerServerEvent('remove:clothes', chain1, chain2, theType, data.metadata) -- Fix don't remove item from inventory when using chain
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_chain1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 7) == Config.Female.Chain and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_chain')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                chainonoff()
                SetPedComponentVariation(ped, 7, chain1, chain2, 0)
                TriggerServerEvent('remove:clothes', chain1, chain2, theType, data.metadata) -- Fix don't remove item from inventory when using chain
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_chain1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('helmet', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'helmet'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local helmet1 = data.metadata.accessories
    local helmet2 = data.metadata.accessories2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if theGender == gender then
            if GetPedPropIndex(ped,0) == Config.Male.Hat and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_helmet')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                hatofon()
                SetPedPropIndex(ped, 0, helmet1, helmet2, true)
                TriggerServerEvent('remove:clothes', helmet1, helmet2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_hat1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end        
    elseif gender == 'Female' then
        if theGender == gender then 
            if GetPedPropIndex(ped, 0) == Config.Female.Hat and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_helmet')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                hatofon()
                SetPedPropIndex(ped, 0, helmet1, helmet2, true)
                TriggerServerEvent('remove:clothes', helmet1, helmet2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_hat1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('torso', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'torso'
    local theGender = data.metadata.gender
    local torso1 = data.metadata.torso1
    local torso2 = data.metadata.torso2
    local arms1 = data.metadata.arms1
    local arms2 = data.metadata.arms2
    local tshirt1 = data.metadata.tshirt1
    local tshirt2 = data.metadata.tshirt2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 11) == Config.Male.Torso and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_torso')
                IsAnim = true
                LocalPlayer.state.invBusy = true 
                Torsoonoff()
                SetPedComponentVariation(ped, 11, torso1, torso2, 3) -- Torso 1
                SetPedComponentVariation(ped, 3, arms1, arms2, 0) -- Arms 1
                SetPedComponentVariation(ped, 8, tshirt1, tshirt2, 2) -- Tshirt 1
                TriggerServerEvent('remove:clothes', torso1, torso2, theType, data.metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input_chain1', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 11) == Config.Female.Torso and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_torso')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                Torsoonoff()
                SetPedComponentVariation(ped, 11, torso1, torso2, 3) -- Torso 1
                SetPedComponentVariation(ped, 3, arms1, arms2, 0) -- Arms 1
                SetPedComponentVariation(ped, 8, tshirt1, tshirt2, 2) -- Tshirt 1
                TriggerServerEvent('remove:clothes', torso1, torso2, theType, data.metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('pants', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'jeans'
    local metadata = data.metadata
    local theGender = data.metadata.gender
    local pants1 = data.metadata.accessories
    local pants2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 4) == Config.Male.Jeans and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_pants')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                jeansonoff()
                SetPedComponentVariation(ped, 4, pants1, pants2, 0)
                TriggerServerEvent('remove:clothes', pants1, pants2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 4) == Config.Female.Jeans and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_pants')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                jeansonoff()
                SetPedComponentVariation(ped, 4, pants1, pants2, 0)
                TriggerServerEvent('remove:clothes', pants1, pants2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('shoes', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'shoes'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local shoes1 = data.metadata.accessories
    local shoes2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 6) == Config.Male.Shoes and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_shoes')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                shoesonoff()
                SetPedComponentVariation(ped, 6, shoes1, shoes2, 2)
                TriggerServerEvent('remove:clothes', shoes1, shoes2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 6) == Config.Female.Shoes and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_shoes')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                shoesonoff()
                SetPedComponentVariation(ped, 6, shoes1, shoes2, 2)  
                TriggerServerEvent('remove:clothes', shoes1, shoes2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('bag', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'bag'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local bag1 = data.metadata.accessories
    local bag2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 5) == Config.Male.Bag and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_bag')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                bagonoff()
                SetPedComponentVariation(ped, 5, bag1, bag2, 2)
                TriggerServerEvent('remove:clothes', bag1, bag2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then 
            if GetPedDrawableVariation(ped, 5) == Config.Female.Bag and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_bag')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                bagonoff()
                SetPedComponentVariation(ped, 5, bag1, bag2, 2)
                TriggerServerEvent('remove:clothes', bag1, bag2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('mask', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'mask'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local mask1 = data.metadata.accessories
    local mask2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 1) == Config.Male.Mask and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_mask')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                maskonoff()
                SetPedComponentVariation(ped, 1, mask1, mask2, 3) 
                TriggerServerEvent('remove:clothes', mask1, mask2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 1) == Config.Female.Mask and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_mask')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                maskonoff()
                SetPedComponentVariation(ped, 1, mask1, mask2, 3) 
                TriggerServerEvent('remove:clothes', mask1, mask2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('ears', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'ears'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local ears1 = data.metadata.accessories
    local ears2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedPropIndex(ped, 2) == Config.Male.Ears and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_ears')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                earsonoff()
                SetPedPropIndex(ped, 2, ears1, ears2, true)
                TriggerServerEvent('remove:clothes', ears1, ears2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedPropIndex(ped, 2) == Config.Female.Ears and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_ears')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                earsonoff()
                SetPedPropIndex(ped, 2, ears1, ears2, true)
                TriggerServerEvent('remove:clothes', ears1, ears2, theType, metadata)
                LocalPlayer.state.invBusy = false
                IsAnim = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('glasses', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'glasses'
    local theGender = data.metadata.gender
    local metadata = data.metadata
    local glasses1 = data.metadata.accessories
    local glasses2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedPropIndex(ped, 1) == Config.Male.Glasses and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_glasses')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                glassesonoff()
                SetPedPropIndex(ped, 1, glasses1, glasses2, true)
                TriggerServerEvent('remove:clothes',  glasses1, glasses2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedPropIndex(ped, 1) == Config.Female.Glasses and not IsAnim  then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_glasses')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                glassesonoff()
                SetPedPropIndex(ped, 1, glasses1, glasses2, true)
                TriggerServerEvent('remove:clothes',  glasses1, glasses2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

exports('vest', function(slot, data)
    local ped = PlayerPedId()
    local theType = 'vest'
    local metadata = data.metadata
    local theGender = data.metadata.gender
    local vest1 = data.metadata.accessories
    local vest2 = data.metadata.accessories2
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 9) == Config.Male.Vest and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_vest')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                vestonoff()
                SetPedComponentVariation(ped, 9, vest1, vest2, 0) 
                TriggerServerEvent('remove:clothes', vest1, vest2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if theGender == gender then
            if GetPedDrawableVariation(ped, 9) == Config.Female.Vest and not IsAnim then
                TriggerEvent('sdw-progressBar:WearingClothes', 'sdw_vest')
                IsAnim = true
                LocalPlayer.state.invBusy = true
                vestonoff()
                SetPedComponentVariation(ped, 9, vest1, vest2, 0) 
                TriggerServerEvent('remove:clothes', vest1, vest2, theType, metadata)
                IsAnim = false
                LocalPlayer.state.invBusy = false
            else
                if Config.Notify == 'ox' then
                    lib.notify('error_input', 'SYSTEM', locale('alreadywearingsomething'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                    elseif Config.Notify == 'okok' then
                    exports['okokNotify']:Alert('SYSTEM', locale('alreadywearingsomething'), 5000, 'error', playSound)
                    else
                    print(locale('NotifySystemWrong'))
                    end
            end
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('wronsexclothes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('wronsexclothes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

if Config.ClothesKeybind.active then
RegisterKeyMapping('clothesmenu', 'sdw-clohes Menu', 'keyboard', Config.ClothesKeybind.defaultkeybind)
end

RegisterCommand("clothesmenu", function(source, args, rawCommand)
    lib.registerContext({
        id = 'Clothing_Menu',
        title = 'Menu Vêtements',
        options = {
            {
                title = locale('titletorsomenu'),
                event = 'sdw-clothes:client:shirt',
                description = locale('descriptiontorsomenu'),
            },
            {
                title = locale('titlepantsmenu'),
                event = 'sdw-clothes:client:pants',
                description = locale('descriptionpantsmenu'),
            },
            {
                title = locale('titleshoesmenu'),
                event = 'sdw-clothes:client:shoes',
                description = locale('descriptionshoesmenu'),
            },
            {
                title = locale('titlemaskmenu'),
                event = 'sdw-clothes:client:mask',
                description = locale('descriptionmaskmenu'),
            },
            {
                title = locale('titlehatsmenu'),
                event = 'sdw-clothes:client:hat',
                description = locale('descriptionhatsmenu'),
            },
            {
                title = locale('titlebagsmenu'),
                event = 'sdw-clothes:client:bag',
                description = locale('descriptionbagsmenu'),
            },
            {
                title =  locale('titleglassesmenu'),
                event = 'sdw-clothes:client:glasses',
                description = locale('descriptionglassesmenu'),
            },
            {
                title = locale('titlevestmenu'),
                event = 'sdw-clothes:client:vest',
                description = locale('descriptionvestmenu'),
            },
            {
                title = locale('titleearaccessoriesmenu'),
                event = 'sdw-clothes:client:ears',
                description = locale('descriptionearaccessoriesmenu'),
            },
            {
                title = locale('titlechainmenu'),
                event = 'sdw-clothes:client:chain',
                description = locale('descriptionchainmenu'),
            },
            {
                title = locale('titlewatchmenu'),
                event = 'sdw-clothes:client:watch',
                description = locale('descriptionwatchmenu'),
            },
            {
                title = locale('titlebraceletmenu'),
                event = 'sdw-clothes:client:wrist',
                description = locale('descriptionbraceletmenu'),
            },
            
        },
    })
    lib.showContext('Clothing_Menu')
end, false)

RegisterCommand("shirt", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:shirt')
end, false)
RegisterCommand("pants", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:pants')
end, false)
RegisterCommand("shoes", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:shoes')
end, false)
RegisterCommand("mask", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:mask')
end, false)
RegisterCommand("hat", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:hat')
end, false)
RegisterCommand("bag", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:bag')
end, false)
RegisterCommand("glasses", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:glasses')
end, false)
RegisterCommand("vest", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:vest')
end, false)
RegisterCommand("ears", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:ears')
end, false)
RegisterCommand("chain", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:chain')
end, false)
RegisterCommand("watch", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:watch')
end, false)
RegisterCommand("wrist", function(source, args, rawCommand)
    TriggerEvent('sdw-clothes:client:wrist')
end, false)

AddEventHandler('sdw-clothes:client:shirt', function()
    local ped = PlayerPedId()
    local theProp = 'torso'
    local DrawableTorso = GetPedDrawableVariation(ped, 11) -- Torso 1
    local TextureTorso = GetPedTextureVariation(ped, 11) -- Torso 2
    local DrawableGloves = GetPedDrawableVariation(ped, 3) -- Arms 1
    local TextureGloves = GetPedTextureVariation(ped, 3) -- Arms 2
    local DrawableTshirt = GetPedDrawableVariation(ped, 8) -- Tshirt 1
    local TextureTshirt = GetPedTextureVariation(ped, 8) -- Tshirt 2
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if DrawableTorso ~= Config.Male.Torso and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_torso')
            IsAnim = true
            Torsoonoff()
            SetPedComponentVariation(ped, 11, Config.Male.Torso, 0, 0)
            SetPedComponentVariation(ped, 8,  Config.Male.Shirt, 0, 0)
            if DrawableGloves ~= Config.Male.Gloves then
                SetPedComponentVariation(ped, 3, Config.Male.Gloves, 0, 0)
            end
            TriggerServerEvent('add:clothestorso', DrawableTorso, TextureTorso, DrawableGloves, TextureGloves, DrawableTshirt, TextureTshirt, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingontorso'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingontorso'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if DrawableTorso ~= Config.Female.Torso and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_torso')
            IsAnim = true
            Torsoonoff()
            SetPedComponentVariation(ped, 11, Config.Female.Torso, 1, 2)
            SetPedComponentVariation(ped, 8,  Config.Female.Shirt, 0, 0)
            if DrawableGloves ~= Config.Female.Gloves then
                SetPedComponentVariation(ped, 3, Config.Female.Gloves, 0, 0)
            end
            TriggerServerEvent('add:clothestorso', DrawableTorso, TextureTorso, DrawableGloves, TextureGloves, DrawableTshirt, TextureTshirt, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingontorso'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingontorso'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

AddEventHandler('sdw-clothes:client:pants', function()
    local ped = PlayerPedId()
    local theProp = 'jeans'
    local Drawable = GetPedDrawableVariation(ped, 4)
    local Texture = GetPedTextureVariation(ped, 4)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if Drawable ~= Config.Male.Jeans and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_pants')
            IsAnim = true
            jeansonoff()
            SetPedComponentVariation(ped, 4, Config.Male.Jeans, 1, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonpants'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonpants'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if Drawable ~= Config.Female.Jeans and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_pants')
            IsAnim = true
            jeansonoff()
            SetPedComponentVariation(ped, 4, Config.Female.Jeans, 1, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonpants'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonpants'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
    
end) 

AddEventHandler('sdw-clothes:client:shoes', function()
    local ped = PlayerPedId()
    local theProp = 'shoes'
    local Drawable = GetPedDrawableVariation(ped, 6)
    local Texture = GetPedTextureVariation(ped, 6)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if Drawable ~= Config.Male.Shoes and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_shoes')
            IsAnim = true
            shoesonoff()
            SetPedComponentVariation(ped, 6, Config.Male.Shoes, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonshoes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonshoes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if Drawable ~= Config.Female.Shoes and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_shoes')
            IsAnim = true
            shoesonoff()
            SetPedComponentVariation(ped, 6, Config.Female.Shoes, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonshoes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonshoes'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 

AddEventHandler('sdw-clothes:client:mask', function()
    local ped = PlayerPedId()
    local theProp = 'mask'
    local Drawable = GetPedDrawableVariation(ped, 1)
    local Texture = GetPedTextureVariation(ped, 1)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if Drawable ~= Config.Male.Mask and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_mask')
            IsAnim = true
            maskonoff()
            SetPedComponentVariation(ped, 1, Config.Male.Mask, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonshoes'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonmask'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if Drawable ~= Config.Female.Mask and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_mask')
            IsAnim = true
            maskonoff()
            SetPedComponentVariation(ped, 1, Config.Female.Mask, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonmask'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonmask'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 

AddEventHandler('sdw-clothes:client:hat', function()
    local ped = PlayerPedId()
    local theProp = 'helmet'
    local Texture = GetPedPropTextureIndex(ped, 0)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if GetPedPropIndex(ped, 0) ~= Config.Male.Hat and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_hat')
            IsAnim = true
            hatofon()
            ClearPedProp(ped, 0)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonhats'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonhats'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if GetPedPropIndex(ped, 0) ~= Config.Female.Hat and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_hat')
            IsAnim = true
            hatofon()
            ClearPedProp(ped, 0)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonhats'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonhats'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 

AddEventHandler('sdw-clothes:client:bag', function()
    local ped = PlayerPedId()
    local theProp = 'bag'
    local Drawable = GetPedDrawableVariation(ped, 5)
    local Texture = GetPedTextureVariation(ped, 5)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if Drawable ~= Config.Male.Bag and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_bag')
            IsAnim = true
            bagonoff()
            SetPedComponentVariation(ped, 5, Config.Male.Bag, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonbags'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonbags'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if Drawable ~= Config.Female.Bag and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_bag')
            IsAnim = true
            bagonoff()
            SetPedComponentVariation(ped, 5, Config.Female.Bag, 0, 2)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonbags'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonbags'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 
AddEventHandler('sdw-clothes:client:glasses', function()
    local ped = PlayerPedId()
    local theProp = 'glasses'
    local Drawable = GetPedPropIndex(ped, 1)
    local Texture = GetPedPropTextureIndex(ped, 1)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if Drawable ~= Config.Male.Glasses and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_glasses')
            IsAnim = true
            glassesonoff()
            ClearPedProp(ped, 1)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonglasses'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonglasses'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if Drawable ~= Config.Female.Glasses and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_glasses')
            IsAnim = true
            glassesonoff()
            ClearPedProp(ped, 1)
            TriggerServerEvent('add:clothes', Drawable, Texture, theProp, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonglasses'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonglasses'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 

AddEventHandler('sdw-clothes:client:vest', function()
    local ped = PlayerPedId()
    local theType = 'vest'
    local vest1 = GetPedDrawableVariation(ped, 9)
    local vest2 = GetPedTextureVariation(ped, 9)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if vest1 ~= Config.Male.Vest and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_vest')
            IsAnim = true
            vestonoff()
            SetPedComponentVariation(ped, 9, Config.Male.Vest, 0, 0)
            TriggerServerEvent('add:clothes', vest1, vest2, theType, gender) 
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonvest'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonvest'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if vest1 ~= Config.Female.Vest and not IsAnim then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_vest')
            IsAnim = true
            vestonoff()
            SetPedComponentVariation(ped, 9, Config.Female.Vest, 0, 0)
            TriggerServerEvent('add:clothes', vest1, vest2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonvest'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonvest'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
    
end) 
AddEventHandler('sdw-clothes:client:ears', function()
    local ped = PlayerPedId()
    local theType = 'ears'
    local skin1 = GetPedPropIndex(ped, 2)
    local skin2 = GetPedPropTextureIndex(ped, 2)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if GetPedPropIndex(ped, 2) ~= Config.Male.Ears and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_ears')
            IsAnim = true
            earsonoff()
            ClearPedProp(ped, 2)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonearaccessories'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonearaccessories'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if GetPedPropIndex(ped, 2) ~= Config.Female.Ears and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_ears')
            IsAnim = true
            earsonoff()
            ClearPedProp(ped, 2)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonearaccessories'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonearaccessories'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end) 
AddEventHandler('sdw-clothes:client:chain', function()
    local ped = PlayerPedId()
    local theType = 'chain'
    local skin1 = GetPedDrawableVariation(ped, 7)
    local skin2 = GetPedTextureVariation(ped,7)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if GetPedDrawableVariation(ped, 7) ~= Config.Male.Chain and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_chain')
            IsAnim = true
            chainonoff()
            SetPedComponentVariation(ped, 7, Config.Male.Chain, 0, 2)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonchain'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonchain'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if GetPedDrawableVariation(ped, 7) ~= Config.Female.Chain and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_chain')
            IsAnim = true
            chainonoff()
            SetPedComponentVariation(ped, 7, Config.Female.Chain, 0, 2)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonchain'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonchain'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)
AddEventHandler('sdw-clothes:client:watch', function()
    local ped = PlayerPedId()
    local theType = 'watch'
    local skin1 = GetPedPropIndex(ped, 6)
    local skin2 = GetPedPropTextureIndex(ped, 6)
    local gender = IsMpPed(ped) 
    if gender == 'Male' then
        if GetPedPropIndex(ped, 6) ~= Config.Male.Watch and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_watch')
            IsAnim = true
            watchonoff()
            ClearPedProp(ped, 6)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonwatch'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonwatch'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if GetPedPropIndex(ped, 6) ~= Config.Female.Watch and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_watch')
            IsAnim = true
            watchonoff()
            ClearPedProp(ped, 6)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonwatch'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonwatch'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

AddEventHandler('sdw-clothes:client:wrist', function()
    local ped = PlayerPedId()
    local theType = 'wrist'
    local skin1 = GetPedPropIndex(ped, 7)
    local skin2 = GetPedPropTextureIndex(ped, 7)
    local gender = IsMpPed(ped)
    if gender == 'Male' then
        if GetPedPropIndex(ped, 7) ~= Config.Male.Wrist and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_wrist')
            IsAnim = true
            wristonoff()
            ClearPedProp(ped, 7)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonbracelet'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonbracelet'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    elseif gender == 'Female' then
        if GetPedPropIndex(ped, 7) ~= Config.Female.Watch and not IsAnim  then
            TriggerEvent('sdw-progressBar:removingClothes', 'sdw_wrist')
            IsAnim = true
            wristonoff()
            ClearPedProp(ped, 7)
            TriggerServerEvent('add:clothes', skin1, skin2, theType, gender)
            IsAnim = false
        else
            if Config.Notify == 'ox' then
                lib.notify('error_input_chain1', 'SYSTEM', locale('nothingonbracelet'), 5000, 'top', {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, 'ban', '#FFFFFF')
                elseif Config.Notify == 'okok' then
                exports['okokNotify']:Alert('SYSTEM', locale('nothingonbracelet'), 5000, 'error', playSound)
                else
                print(locale('NotifySystemWrong'))
                end
        end
    end
end)

function IsMpPed(ped)
	local Male = GetHashKey("mp_m_freemode_01") 
    local Female = GetHashKey("mp_f_freemode_01")
	local CurrentModel = GetEntityModel(ped)
	if CurrentModel == Male then 
        return "Male" 
    elseif CurrentModel == Female then
        return "Female"
    else
        return false
    end
end

function Torsoonoff()
    SDW.PlayAnim("clothingtie", "try_tie_positive_a", 1500)
end
			
function hatofon()
    SDW.PlayAnim("mp_masks@standard_car@ds@", "put_on_mask", 600)  
end
					
function maskonoff()				
    SDW.PlayAnim("mp_masks@standard_car@ds@", "put_on_mask", 600)  
end

function earsonoff()
    SDW.PlayAnim("mp_cp_stolen_tut", "b_think", 600)  			             
end			
function tshirtonoff()
    SDW.PlayAnim("clothingtie", "try_tie_positive_a", 1500)			           
end
			
function armsonoff()	
    SDW.PlayAnim("nmt_3_rcm-10", "cs_nigel_dual-10", 600) 				            
end
			
function jeansonoff()
    SDW.PlayAnim("re@construction", "out_of_breath", 1300)				           
end
			
function shoesonoff()
    SDW.PlayAnim("random@domestic", "pickup_low", 1300)		
end
			
function bagonoff()
    SDW.PlayAnim("anim@heists@ornate_bank@grab_cash", "intro", 1300)					            
end
			
function chainonoff()
    SDW.PlayAnim("clothingtie", "try_tie_positive_a", 1500)	
end

function watchonoff()
    SDW.PlayAnim("nmt_3_rcm-10", "cs_nigel_dual-10", 1500)	
end
function wristonoff()
    SDW.PlayAnim("nmt_3_rcm-10", "cs_nigel_dual-10", 1500)	
end
			
function glassesonoff()
    SDW.PlayAnim("clothingspecs", "take_off", 1300)	
end

function vestonoff()
    SDW.PlayAnim("clothingtie", "try_tie_positive_a", 1500)
end

RegisterNetEvent('sdw.msfclothes:Notification')
AddEventHandler('sdw.msfclothes:Notification', function(data)
    lib.notify(data)
end)