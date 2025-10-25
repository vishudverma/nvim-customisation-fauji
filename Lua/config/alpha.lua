do
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	-- Set header
	dashboard.section.header.val = {
[[																								]],
[[ ███████████   █████████   █████  █████       █████ █████ █████   █████ █████ ██████   ██████	]],
[[░░███░░░░░░█  ███░░░░░███ ░░███  ░░███       ░░███ ░░███ ░░███   ░░███ ░░███ ░░██████ ██████ 	]],
[[ ░███   █ ░  ░███    ░███  ░███   ░███        ░███  ░███  ░███    ░███  ░███  ░███░█████░███ 	]],
[[ ░███████    ░███████████  ░███   ░███        ░███  ░███  ░███    ░███  ░███  ░███░░███ ░███ 	]],
[[ ░███░░░█    ░███░░░░░███  ░███   ░███        ░███  ░███  ░░███   ███   ░███  ░███ ░░░  ░███ 	]],
[[ ░███  ░     ░███    ░███  ░███   ░███  ███   ░███  ░███   ░░░█████░    ░███  ░███      ░███ 	]],
[[ █████       █████   █████ ░░████████  ░░████████   █████    ░░███      █████ █████     █████	]],
[[░░░░░       ░░░░░   ░░░░░   ░░░░░░░░    ░░░░░░░░   ░░░░░      ░░░      ░░░░░ ░░░░░     ░░░░░ 	]],
[[																								]],
	}
	-- Set menu
	dashboard.section.buttons.val = {
		dashboard.button("e", "📄 > New file", ":tabnew<CR>"),
		dashboard.button("f", "🔎 > Find file", ":Telescope find_files<CR>"),
		dashboard.button("r", "📑 > Recent", ":Telescope oldfiles<CR>"),
		dashboard.button("l", "💤 > Lazy", ":Lazy<CR>"),
		dashboard.button("m", "🛠 > Mason", ":Mason<CR>"),
		dashboard.button("g", "📦 > LazyGit", ":LazyGit<CR>"),
		dashboard.button("q", "❌ > Quit NVIM", ":qa<CR>"),
		dashboard.button("h", "💊 > Health Check", ":checkhealth<CR>"),
	}
	-- Set footer
	dashboard.section.footer.val = {
		"",
		"The computing Scientist's main challenge is not to",
		"get confused by the complexities of his own making.",
		"",
		"								- Edsger W. Dijkstra",
	}

	-- Set color highlights for header, buttons, and footer
	vim.cmd([[
  hi AlphaHeader guifg=#FAB387 guibg=#1E1E2E gui=bold
  hi AlphaButton guifg=#8aadf4 guibg=#181825 gui=bold
  hi AlphaFooter guifg=#a6e3a1 guibg=NONE
]])

	dashboard.section.header.opts.hl = "AlphaHeader"
	dashboard.section.buttons.opts.hl = "AlphaButton"
	if dashboard.section.footer then
		dashboard.section.footer.opts.hl = "AlphaFooter"
	end

	-- Send config to alpha
	return dashboard.opts
end

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
