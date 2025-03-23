fx_version 'adamant'
game 'gta5'

lua54 'yes'

shared_scripts  {'@es_extended/imports.lua', 'config.lua', '@ox_lib/init.lua'}

server_script 'server.lua'

client_scripts {'client.lua'}

ui_page('html/ui.html')

files {'html/ui.html', 'html/js/script.js', 'html/css/style.css', 'html/img/radio.png'}