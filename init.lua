vim.g.mapleader = ' ' -- Setting <space> as the map <leader>

vim.o.number = true -- The number of line on side visibility
vim.o.list = true -- This makes the trailing spaces like <tab> visible.
vim.o.confirm = true -- Makes a confirmation dialogue box appear when files with unsaved changes are closed.

--sets tab to 4 spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.keymap.set('n', '<C-w>', ':wq<CR>', {}) -- Set the ':wq' command to <Ctrl+w> key
vim.keymap.set('n', '<C-q>', ':q!<CR>', {}) -- Set the ':q!' command to <Ctrl+q> key to quit easily

-- creating non reader profiles for languages I dont use but shows up in `:checkhealth`.
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_go_provider = 0

-- The lua configuration files are safe inside the lua\config\ directory
require("config.lazy")

-- Making "catppuccin" the default colorscheme
vim.cmd.colorscheme "catppuccin"

-- Making the color of indentscope
require("mini.indentscope").setup({
  symbol = "│",
  options = { try_as_border = true },
})

vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#81F499" }) -- change color here

