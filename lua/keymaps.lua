-- BASE CONFIG
vim.cmd("set tabstop=2")
vim.o.signcolumn = "yes"
vim.cmd("set shiftwidth=2")
vim.cmd("set rnu")
vim.cmd("set nu")
--vim.opt.guicursor = ""
vim.opt.mouse = "a"
vim.cmd("highlight clear SignColumn")
vim.o.clipboard = 'unnamedplus'
vim.o.undofile = true
vim.o.cursorline = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmode = false
vim.o.completeopt = 'menuone,noselect'
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.scrolloff = 10
vim.keymap.set('n', '<a-J>', ":move+<CR>")
vim.keymap.set('n', '<a-K>', ":move-2<CR>")


-- KEYMAPS
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Explore<CR>', { noremap = true, silent = true })
vim.keymap.set('x', '<', '<gv')
vim.keymap.set('x', '>', '>gv')

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
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)
vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols)
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})


-- STOLEN REMAPS
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "Q", "<nop>")

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })

-- UNDO TREE
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

--HARPOON
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- HARPOON
vim.keymap.set("n", "<leader>h", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.cmd [[command! W w]]
vim.cmd [[command! Q q]]
vim.cmd [[command! Wq wq]]

-- FUGITIVE keymap
vim.keymap.set('n', '<leader>vfd', ':below G diff %<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfgd', ':below G diff<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfl', ':below G log<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfs', ':below G status<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfc', ':below G commit<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfp', ':below G push<CR>', { noremap = true })
vim.keymap.set('n', '<leader>vfg', ':below G <CR>', { noremap = true })


vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
