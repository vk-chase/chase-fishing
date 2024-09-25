
fx_version "cerulean"
game "gta5"
lua54 'yes'
server_scripts {'@oxmysql/lib/MySQL.lua','server/**.lua'}
shared_scripts {'@qb-core/shared/locale.lua','locales/en.lua','config.lua'}
client_scripts {'client/**.lua'}
ui_page 'ui/index.html'
files {
    "ui/**",
}

