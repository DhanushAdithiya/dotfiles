-- return {
-- 	{"folke/tokyonight.nvim", "catppuccin/nvim", "navarasu/onedark.nvim"},
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- 	config = function ()
-- 		require("tokyonight").setup {
-- 		}
-- 		vim.cmd("colorscheme tokyonight")
-- 	end
-- }

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
	},
	{
  "morhetz/gruvbox",
  lazy = true,
  config = function()
    vim.g.gruvbox_contrast_dark = "hard"
    vim.cmd("colorscheme gruvbox")
  end
	}
}


--
-- return {
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- 	config = function ()
-- 		require("onedark").setup {
-- 		}
-- 		vim.cmd("colorscheme onedark")
-- 	end
-- }
--
-- return {
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- 	config = function ()
-- 		require("catppuccin").setup {
-- 		}
-- 		vim.cmd("colorscheme catppuccin")
-- 	end
-- }
