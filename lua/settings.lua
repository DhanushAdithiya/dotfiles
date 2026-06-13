vim.cmd.colorscheme("tokyonight-night")
vim.cmd("set tabstop=2")
vim.o.signcolumn = "yes"
vim.opt.colorcolumn = "100"
opt.cursorline = true -- highlight the current cursor line
vim.cmd("set shiftwidth=2")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("highlight clear SignColumn")
vim.o.clipboard = "unnamedplus"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.scrolloff = 10
vim.keymap.set('n', '<a-J>', ":move+<CR>")
vim.keymap.set('n', '<a-K>', ":move-2<CR>")
vim.opt.termguicolors = true
vim.lsp.inlay_hint.enable(true)
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
