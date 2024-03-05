-- BASE CONFIG
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.o.signcolumn="yes"
--vim.opt.guicursor = ""
vim.opt.mouse="a"
vim.cmd("highlight clear SignColumn")
vim.o.clipboard = 'unnamedplus'
vim.o.undofile = true
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmode = false
vim.o.completeopt = 'menuone,noselect'
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- KEYMAPS
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-b>', ':Explore<CR>', {noremap = true, silent = true})
vim.keymap.set('x', '>', '>gv')
vim.keymap.set('x', '<', '<gv')

-- LSP KEYMAPS
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
vim.keymap.set({'n', 'v'}, '<leader>ca',vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<M-k>', ':move-2<CR>')
vim.keymap.set('n', '<M-j>', ':move+<CR>')



-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})


--HARPOON
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


-- UNDO TREE
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>h", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)


vim.cmd [[command! W w]]
vim.cmd [[command! Q q]]
vim.cmd [[command! Wq wq]]
