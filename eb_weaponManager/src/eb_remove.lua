RegisterCommand('rw', function(source, args)
    local playerPed = args[1] or PlayerPedId()
    
    RemoveAllPedWeapons(playerPed, true)

    Notify('~y~Sucess !')
end, false)


function Notify( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end