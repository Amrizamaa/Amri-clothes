fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'Amrizama & Shiro Morningstar'
description 'Amri-clothes | OX Clothing Menu As Items Data | Fork from sdw-clothies'
version '1.0.0'

shared_scripts{
	'@ox_lib/init.lua',
	'config.lua',
	'utils/utils.lua'
} 

client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}

dependency{
	'ox_inventory',
	'ox_lib'
}