
-- mount/open the component

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
        vim.api.nvim_command(string.format("! make %s", value))
      end,
    })
    input:mount()

    input:on(event.BufLeave, function()
      input:unmount()
    end)
end
