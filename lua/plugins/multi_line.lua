return {
	"mg979/vim-visual-multi",
		config = function()
			require("notify").setup()
		vim.notify = require("notify")
		end
}
