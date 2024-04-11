return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		--		require("boring").setup({
		--		transparent = false, -- Enable this to disable the bg color
		--		styles = {
		--			-- You can set any of the style values specified for `:h nvim_set_hl`
		--			comments = {},
		--			keywords = {},
		--			functions = {},
		--			variables = {},
		--			type = { bold = true },
		--			lsp = { underline = true }
		--		},
		--	})
		-- transparent window
		function Transparent()
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end

		vim.keymap.set('n', '<leader>t', ':lua Transparent()<CR>', { noremap = true, silent = true })
		vim.keymap.set('n', '<leader>ot', ':colorscheme ayu-mirage<CR>', {noremap = true, silent = true})

		vim.cmd.colorscheme "ayu-mirage"
	end,
}


--		require("tokyonight").setup({
--			terminal_colors = true,
--			styles = {
--				comments = { italic = false },
--				keywords = { italic = false },
--			}
--		})
