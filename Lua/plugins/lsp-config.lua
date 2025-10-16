return {
	{
		"mason-org/mason.nvim",
		opts = {
        	ui = {
            	icons = {
                	package_installed = "✓",
                	package_pending = "➜",
                	package_uninstalled = "✗"
            	}
        	}
    	},
		config = function ()
			require("mason").setup()
		end
	},
	{
    	"mason-org/mason-lspconfig.nvim",
    	dependencies = {
        	{ "mason-org/mason.nvim", opts = {} },
        	"neovim/nvim-lspconfig",
    	},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})

			local lspconfig = vim.lsp.config
			local  capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						lspconfig[server_name].setup({
							capabilities = capabilities,
						})
					end,
			}
		})

		-- keymaps
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		config = function ()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim", "ensure_installed", "auto_install", "indent", "highlight" }
					},
				},
			},
		})
		end
	}
}
