fx_version "cerulean"
game "gta5"
author "Iceyy"
description 'Quick GPS with exports made for radial menu.'
version "1.0"
lua54 "yes"

dependencies {
    'ox_lib'
}

shared_script {
    '@ox_lib/init.lua',
    'modules/lib.lua',
}

client_scripts {
    'config.lua',
    'client/utils.lua',
    'client/client.lua'
}