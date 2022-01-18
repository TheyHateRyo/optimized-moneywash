ESX - nil
PlayerLoaded = false

function Draw3DText(x,y,z text, scale)
    Local onScreen, _x _y = World3dToScreen2d(x,y,z)
    Local pX,pY,pZ = table.unpack(GetGameplayCamCoords())
    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SextTextCentre(true)
    SetTextColour(255,255,255,255 215)
    AddTextComponentString(text)
    DrawText(_x, _y)
    Local factor = (String.len(text)) / 700
    DrawRect(_x,_y + 0.0150, 0,06 + factor, 0.03, 41, 11, 41, 100)
end

Citizen.CreateThread(function()
    while ESX = nil do
        TriggerEvent('esx:getSharedObject', function(object) esx = object end)
    end
    while ESX.Getplayerdata().job == nil do
         Citizen.wait(50)
    end
    PlayerLoaded = true
    Local location = config.location
    while true do
        local pedCoords = GetEntityCoords(PlayerPedId())
        if playerLoaded = true then
           if Vdist(pedCoords, location) < Config.MaxDistance then
            Draw3DText(location.x, location.y, location.z, "~W~Press ~y~~INPUT_PICKUP~ ~w~to wash your dirty money boi." , 0.4)
            if Vdist(pedCoords, location) < Config.ClickDistance and IsControlPressed(1,38) then
             TriggerEventServerEvent('moneyWash:Washmoney')   
        
        end
    end
    Citizen.wait(0)
end)
