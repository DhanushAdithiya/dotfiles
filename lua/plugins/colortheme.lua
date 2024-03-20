return {
	"blazkowolf/gruber-darker.nvim",
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
		vim.cmd.colorscheme "gruber-darker"
	end,
}


--		require("tokyonight").setup({
--			terminal_colors = true,
--			styles = {
--				comments = { italic = false },
--				keywords = { italic = false },
--			}
--		})
