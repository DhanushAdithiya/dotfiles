return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript", "markdown", "python", "rust"},
        highlight = { enable = false },
        indent = { enable = true },
      })
    end
  }
}
