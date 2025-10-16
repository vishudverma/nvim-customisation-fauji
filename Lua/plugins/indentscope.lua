return {
  "echasnovski/mini.indentscope",
  version = false,
  event = "VeryLazy",
  opts = {
    symbol = "│",
    options = { try_as_border = true },
  },
   init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "alpha",
        "dashboard",
        "starter",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
}
