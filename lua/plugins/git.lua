return {
	{"tpope/vim-fugitive"},
	{
		"lewis6991/gitsigns.nvim",
		config = function ()
			require("gitsigns").setup({})
		end
	},
	{
		"f-person/git-blame.nvim",
	config = function()
		require('gitblame').setup {
			--Note how the `gitblame_` prefix is omitted in `setup`
			enabled = false,
		}
	end
	}
}
