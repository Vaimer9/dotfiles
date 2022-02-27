local awful = require('awful')
local gears = require('gears')
local icons = require('theme.icons')
local apps = require('configuration.apps')

local tags = {
  {
    icon = icons.chrome,
    type = 'chrome',
    defaultApp = apps.default.browser,
    screen = 1
  },
  {
    icon = icons.code,
    type = 'lock',
    defaultApp = apps.default.editor,
    screen = 1
  },
  {
    icon = icons.social,
    type = 'social',
    defaultApp = apps.default.social,
    screen = 1
  },
  {
    icon = icons.game,
    type = 'game',
    defaultApp = apps.default.game,
    screen = 1
  },
  {
    icon = icons.folder,
    type = 'files',
    defaultApp = apps.default.files,
    screen = 1
  },
  {
    icon = icons.music,
    type = 'music',
    defaultApp = apps.default.music,
    screen = 1
  },
  {
    icon = icons.lab,
    type = 'any',
    defaultApp = apps.default.rofi,
    screen = 1
  }
}

awful.layout.layouts = {
  awful.layout.suit.tile,
  awful.layout.suit.max,
  awful.layout.suit.floating,
}

awful.screen.connect_for_each_screen(
  function(s)
    for i, tag in pairs(tags) do
      awful.tag.add(
        "name",
        {
          icon = tag.icon,
          icon_only = false,
          layout = awful.layout.suit.tile,
          gap_single_client = true,
          gap = 5,
          screen = s,
          defaultApp = tag.defaultApp,
          selected = i == 1
        }
      )
    end
  end
)

_G.tag.connect_signal(
  'property::layout',
  function(t)
    local currentLayout = awful.tag.getproperty(t, 'layout')
    if (currentLayout == awful.layout.suit.max) then
      t.gap = 5
    else
      t.gap = 5
    end
  end
)
