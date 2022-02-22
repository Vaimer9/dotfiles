local filesystem = require('gears.filesystem')

local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
local rofi_command = 'env /usr/bin/rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'

return {
  default = {
    terminal = 'alacritty',
    rofi = rofi_command,
    lock = 'i3lock-fancy',
    quake = 'terminator',
    screenshot = 'flameshot screen -p ~/Pictures',
    region_screenshot = 'flameshot gui -p ~/Pictures',
    delayed_screenshot = 'flameshot screen -p ~/Pictures -d 5000',
    browser = 'firefox',
    editor = 'nvim',
    social = '~/Downloads/Discord/Discord </dev/null &>/dev/null &; disown %\\~/Downloads/Discord/Discord',
    game = rofi_command,
    files = 'lf',
    music = rofi_command 
  },
  run_on_start_up = {
    'picom --config /home/v9/.config/picom/picom.conf', -- Compositor
    'nm-applet --indicator', -- wifi
    'pnmixer', -- shows an audiocontrol applet in systray when installed.
    'numlockx on', -- enable numlock
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)', -- credential manager
    'xfce4-power-manager',
     'flameshot',
     'synology-drive -minimized',
    'feh  --bg-fill '.. filesystem.get_configuration_dir() .. '/wallpaper.jpg',
    '/usr/bin/variety',
    '~/.config/awesome/configuration/awspawn', -- Spawn "dirty" apps that can linger between sessions
  }
}
