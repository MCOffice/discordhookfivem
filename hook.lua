# Step #1 [MOST IMPORTANT]
# You have to copy and paste the all code to your any script. But make sure you have to put in server side file.

```cs
function sendLogs (message,webhook)
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ content = message }), { ['ในเนือหาใน file server'] = 'application/json' })
end

RegisterServerEvent('toDiscord')
AddEventHandler('toDiscord', function(message, webhook)
sendLogs(message , webhook)
end)
```

# STEP #2 [Required]
# Open Discord and create text channel and also create the webhook. [In case you have no idea how to create webhook and how to use it so please watch my video: ]

# STEP #3 [LAST STEP]
# You have to use this template to get easy. Make sure if you are doing in client side script then you need to add "TriggerServerEvent" and in order to do it in server side then you only "TriggerEvent" .

```cs
TriggerServerEvent('toDiscord', '```diff\n- Item Given\n```\n```css\n[โดย]: '..name..'\n[แก่]: '..RecieverPlayer..'\n[Item]: '..data.item.name..'\n[จำนวน]: '..count..'```\n', 'WEBHOOK_LINK')
```
