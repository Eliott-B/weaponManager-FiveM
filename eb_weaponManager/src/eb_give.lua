RegisterCommand('gw', function(source, args)
    if not IsWeaponValid(args[1]) then
        Notify('~r~~h~ERROR :~h~ `' .. args[1] .. '` is not a ID Weapon ...')

        return
    end

    local playerPed = PlayerPedId()
    
    GiveWeaponToPed(playerPed, args[1], -1, false, true)

    Notify('~y~Sucess !')
end, false)


function Notify( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end