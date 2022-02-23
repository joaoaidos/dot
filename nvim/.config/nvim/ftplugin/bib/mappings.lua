local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = false}
local term_opts = { silent = true }

-- vim.g.mapleader = ','

keymap("n", "<leader>p", "Go<esc>:$r!curl -s https://api.crossref.org/works/<C-R>+/transform/application/x-bibtex<CR>", opts)




-- https://api.crossref.org/works/10.1136/bmj.i5014/transform/application/x-bibtex
--
-- Normal --
-- Better window navigation
--
-- keymap('n', '<C-h>', '<C-w>h', opts)
-- keymap('n', '<C-l>', '<C-w>l', opts)
-- keymap('n', '<C-j>', '<C-w>j', opts)
-- keymap('n', '<C-k>', '<C-w>k', opts)

