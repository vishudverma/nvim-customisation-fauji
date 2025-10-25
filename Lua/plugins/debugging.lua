return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		-- Initialize dapui (CRITICAL - you were missing this)
		dapui.setup()

		-- Setup Python debugger adapter (CRITICAL - you were missing this)
		-- Option 1: Use system Python (if debugpy is installed globally)
		dap_python.setup("python")
		for _, config in pairs(dap.configurations.python) do
			config.pythonArgs = { "-Xfrozen_modules=off" }
		end

		-- Option 2: Use specific Python path (recommended for virtual environments)
		-- dap_python.setup("C:/path/to/your/python.exe")  -- Windows
		-- dap_python.setup("/usr/bin/python3")  -- Linux

		-- Option 3: Use Python from virtual environment
		-- dap_python.setup("~/.virtualenvs/debugpy/bin/python")

		-- DAP UI listeners (auto-open/close debug UI)
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- Keymaps for debugging
		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue/Start Debugging" })
		vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
		vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step Over" })
		vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step Out" })
		vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
		vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run Last" })
		vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
		vim.keymap.set("n", "<leader>dx", dap.terminate, { desc = "Terminate Debugging" })
	end,
}
