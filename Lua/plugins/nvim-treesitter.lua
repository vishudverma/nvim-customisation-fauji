return{
  {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		ensure_installed = { "lua", "markdown", "markdown_inline", "python", "R" }
		auto_install = true
		highlight = { enable = true }
		indent = { enable = true }
	end
  },
}
