Config = {}

Config.Item = {
    Require = true,
    name = "radio"
}

Config.KeyMappings = {
    Enabled = true, 
    Key = "F4"
}

Config.ClientNotification = function(msg, type)
    ------------------------------------------------------------------------------------------
    -- Insert your Notification System here. (script uses types ("success", "inform", "error"))
    -------------------------------------------------------------------------------------------
  
    ----- T-Notify -----
    -- if type == "inform" then type = "info" end
    -- exports['t-notify']:Alert({style = type,  message = msg})
    ----------------------
  
    --------- mythic_notify ------
    --exports["mythic_notify"]:DoHudText(type, msg)
    --------------------------------
    ESX.ShowNotification(msg, false, false, 140)
  end
  
  Config.ServerNotification = function(msg, type, player)
    ------------------------------------------------------------------------------------------
    -- Insert your Notification System here. (script uses types ("success", "inform", "error"))
    -------------------------------------------------------------------------------------------
  
    --------- mythic_notify ------
    -- TriggerClientEvent("mythic_notify:client:SendAlert", player, {type = type, text = msg}) 
    --------------------------------
  
    ----- T-Notify ---------------
    --  if type == "inform" then type = "info" end
    --  TriggerClientEvent('t-notify:client:Custom', player, {style = type,title = 'SubZero Interactive:Garages',message = msg,duration = 1000})
    --------------------------------
    TriggerClientEvent('esx:showNotification', player, msg)
  end


--- Resticts in index order
Config.RestrictedChannels = {
    { -- Channel 1
        police = true,
        ambulance = true
    },
    { -- Channel 2
        police = true,
        ambulance = true
    },
    { -- Channel 3
        police = true,
        ambulance = true
    },
    { -- Channel 4
        police = true,
        ambulance = true
    },
    { -- Channel 5
        police = true,
        ambulance = true
    },
    { -- Channel 6
        police = true,
        ambulance = true
    },
    { -- Channel 7
        police = true,
        ambulance = true
    },
    { -- Channel 8
        police = true,
        ambulance = true
    },
    { -- Channel 9
        police = true,
        ambulance = true
    },
    { -- Channel 10
        police = true,
        ambulance = true
    }
}

Config.MaxFrequency = 500

Config.messages = {
    ["not on radio"] = "You are not connected to a frequency.",
    ["on radio"] = "You are already connected to this frequency.",
    ["joined to radio"] = "You are connected to the frequency: ",
    ["restricted channel error"] = "You cannot connect to this frequency!",
    ["invalid radio"] = "This frequency is not available.",
    ["you on radio"] = "You are already connected to this frequency.",
    ["you leave"] = "You have left the frequency.",
    ['volume radio'] = 'New volume: ',
    ['decrease radio volume'] = "The radio is already at maximum volume.",
    ['increase radio volume'] = "The radio is already at minimum volume.",
    ['increase decrease radio channel'] = 'New frequency: ',
}