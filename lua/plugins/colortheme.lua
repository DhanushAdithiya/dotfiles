return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			terminal_colors = true,

			styles = {
				comments = { italic = false },

				keywords = { italic = false },
			}
		})
		function Transparent()
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end

		local colorscheme = "tokyonight-night"
		vim.cmd.colorscheme 'tokyonight-night'


		vim.keymap.set('n', '<leader>t', ':lua Transparent()<CR>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>ot', string.format(':colorscheme %s<CR>', colorscheme),
			{ noremap = true, silent = true })
	end,
}
