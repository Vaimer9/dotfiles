map = vim.api.nvim_set_keymap

local bind = function(bindlist)
    defaults = { noremap = true, silent = true }
    
    for _, binding in ipairs(bindlist) do
        map("n", string.format("%s", binding[1]), string.format("%s", binding[2]), defaults)
    end
end

bind({
    { "<C-a>", ":NvimTreeToggle<CR>" },
    { "<leader>ss", ":w<CR>" },
    { "<leader>mr", ":! make<CR>" },
    { "<leader>,", ":BufferLineCyclePrev<CR>" },
    { "<leader>.", ":BufferLineCycleNext<CR>" },
    { "<leader>p", ":Telescope<CR>" },
    { "<leader>fh", ":DashboardFindHistory<CR>" },
    { "<leader>ff", ":DashboardFindFile<CR>" },
    { "<leader>tc", ":DashboardChangeColorscheme<CR>" },
    { "<leader>fa", ":DashboardFindWord<CR>" },
    { "<leader>fb", ":DashboardJumpMark<CR>" },
    { "<leader>cn", ":DashboardNewFile<CR>" }
})
