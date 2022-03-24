local notif = require("notify")
local popup = require('popup')
local Input = require("nui.input")
local event = require("nui.utils.autocmd").event



-- mount/open the component

function greet()
    notif("Now get to working!", "welcome_msg", {
        title = "Welcome Back",
        timeout = 40
    })
end

function make()
    local input = Input({
      position = "50%",
      size = {
          width = 40,
          height = 2,
      },
      relative = "editor",
      border = {
        style = "single",
        text = {
            top = "Run Target",
            top_align = "center",
        },
      },
      win_options = {
        winblend = 10,
        winhighlight = "Normal:Normal",
      },
    }, {
      prompt = " > ",
      default_value = "",
      on_close = function()
        print("Input closed!")
      end,
      on_submit = function(value)
        vim.cmd[[:! make value]]
      end,
    })
    input:mount()

    input:on(event.BufLeave, function()
      input:unmount()
    end)
end
