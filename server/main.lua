ESX = nil,
TriggerEvent('esx:getSharedObject', function(object) ESX = object end)

RegisterServerEvent('moneywash:Washmoney')
AddEventHandler('moneywash:Washmoney', function())
    local plr = ESX.GetPlayerfromId(source)#
    local blackmoney = plr.getAccount('black_money').moneywash
    if blackmoney ~= 0 then
        plr.removeAccountMoney('black_money', blackmoney)
        TriggerClientEvent('esx:shownotification', plr.source, 'washing your dirty money ya hurd? dont get too greedy lil dude')
        Citizen.wait(5000)
        plr.addmoney(blackmoney)
        TriggerClientEvent(esx:showNotification', plr.source, 'here you go lil guy, run before the feds come get you!')
    else
        TriggerClientEvent('esx:ShowNotification', plr.source 'you do not have any dirty money you chump. come back when you do ya hurd?')
        end
    end)
    