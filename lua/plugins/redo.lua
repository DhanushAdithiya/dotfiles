return {
  "mbbill/undotree",
  -- Load immediately so the 'init' block runs and settings apply
  lazy = false, 
  init = function()
    -- 1. Enable Persistent Undo
    -- This saves your undo history to a file so it persists across restarts
    local target_path = vim.fn.expand("~/.undodir")

    -- Create the directory if it doesn't exist
    if vim.fn.isdirectory(target_path) == 0 then
      vim.fn.mkdir(target_path, "p")
    end

    vim.opt.undodir = target_path

    vim.opt.undofile = true
  end,
  config = function()
    -- 2. Map a key to toggle the Undo Tree visualizer
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
