------ Don't touch if you don't know what you're doing.
function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function SAHP()
    if Config.SAHPEnable == 0 then
        return false
    elseif Config.SAHPEnable == 1 then
        return true
    else
        return true
    end
end

function LSPD()
    if Config.LSPDEnable == 0 then
        return false
    elseif Config.LSPDEnable == 1 then
        return true
    else
        return true
    end
end

function BCSO()
    if Config.BCSOEnable == 0 then
        return false
    elseif Config.BCSOEnable == 1 then
        return true
    else
        return true
    end
end

function LSFD()
    if Config.LSFDEnable == 0 then
        return false
    elseif Config.LSFDEnable == 1 then
        return true
    else
        return true
    end
end

function Accessories()
    if Config.AccessoriesEnable == 0 then
        return false
    elseif Config.AccessoriesEnable == 1 then
        return true
    else
        return true
    end
end

function Loadout()
    if Config.Loadout == 0 then
        return false
    elseif Config.Loadout == 1 then
        return true
    else
        return true
    end
end

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function EUP(outfits)
    function setOutfit(outfit)
        local ped = PlayerPedId()
    
        RequestModel(outfit.ped)
    
        while not HasModelLoaded(outfit.ped) do
            Wait(0)
        end
    
        if GetEntityModel(ped) ~= GetHashKey(outfit.ped) then
            SetPlayerModel(PlayerId(), outfit.ped)
        end
    
        ped = PlayerPedId()
    
        for _, comp in ipairs(outfit.components) do
        SetPedComponentVariation(ped, comp[1], comp[2] - 1, comp[3] - 1, 0)
        end
    
        for _, comp in ipairs(outfit.props) do
            if comp[2] == 0 then
                ClearPedProp(ped, comp[1])
            else
                SetPedPropIndex(ped, comp[1], comp[2] - 1, comp[3] - 1, true)
            end
        end
    end
    
    local categoryOutfits = {}
    
    for name, outfit in pairs(outfits) do
        if not categoryOutfits[outfit.category] then
            categoryOutfits[outfit.category] = {}
        end
    
        categoryOutfits[outfit.category][name] = outfit
    end

    for name, list in pairs(categoryOutfits) do
        -- find the outfit
        for _, outfit in pairs(list) do
            if outfit.item == item then
                CreateThread(function()
                    setOutfit(outfit)
                end)
            end
        end
    end
end