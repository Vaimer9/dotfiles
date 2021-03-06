local awful = require('awful')
local beautiful = require('beautiful')
local wibox = require('wibox')
local TaskList = require('widget.task-list')
local TagList = require('widget.tag-list')
local gears = require('gears')
local clickable_container = require('widget.material.clickable-container')
local mat_icon_button = require('widget.material.icon-button')
local mat_icon = require('widget.material.icon')
local dpi = require('beautiful').xresources.apply_dpi
local icons = require('theme.icons')

local systray = wibox.widget.systray()
  systray:set_horizontal(true)
  systray:set_base_size(20)
  systray.forced_height = 20

local textclock = wibox.widget.textclock('<span font="Jetbrains Mono 15">%I:%M %p</span>')


local month_calendar = awful.widget.calendar_popup.month({
  screen = s,
  start_sunday = false,
  week_numbers = true
})
month_calendar:attach(textclock)

local clock_widget = wibox.container.margin(textclock, dpi(13), dpi(13), dpi(9), dpi(8))

local add_button = mat_icon_button(mat_icon(icons.plus, dpi(24)))
add_button:buttons(
  gears.table.join(
    awful.button(
      {},
      1,
      nil,
      function()
        awful.spawn(
          awful.screen.focused().selected_tag.defaultApp,
          {
            tag = _G.mouse.screen.selected_tag,
            placement = awful.placement.bottom_right
          }
        )
      end
    )
  )
)

local LayoutBox = function(s)
  local layoutBox = clickable_container(awful.widget.layoutbox(s))
  layoutBox:buttons(
    awful.util.table.join(
      awful.button(
        {},
        1,
        function()
          awful.layout.inc(1)
        end
      ),
      awful.button(
        {},
        3,
        function()
          awful.layout.inc(-1)
        end
      ),
      awful.button(
        {},
        4,
        function()
          awful.layout.inc(1)
        end
      ),
      awful.button(
        {},
        5,
        function()
          awful.layout.inc(-1)
        end
      )
    )
  )
  return layoutBox
end

local TopPanel = function(s)
  
    local panel =
	awful.wibar({
        ontop = true,
		position = "top",
		border_width = 4,
        width = s.geometry.width - 15,
		border_color = "#RRGGBBAA",
		screen = s,
		height = dpi(32),
        shape = function(cr, w, h)
          gears.shape.rounded_rect(cr, w, h, 10)
        end,
	})

    panel:struts(
      {
        top = dpi(32)
      }
    )

    panel:setup {
      layout = wibox.layout.align.horizontal,
      {
        layout = wibox.layout.fixed.horizontal,
        -- Create a taglist widget
        TagList(s),
		-- TaskList(s)
		-- add_button
      },
      nil,
      {
        layout = wibox.layout.fixed.horizontal,
        wibox.container.margin(systray, dpi(3), dpi(3), dpi(6), dpi(3)),
        -- Layout box
        LayoutBox(s),
        -- Clock
        clock_widget,
      }
    }

  return panel
end

return TopPanel
