local set = vim.opt
--
-- Change directory to the current buffer
vim.cmd("autocmd BufEnter * silent! lcd %:p:h")

-- :help options
set.backup = false                          -- creates a backup file
set.swapfile = false                        -- creates a swapfile
set.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
set.cmdheight = 2                           -- more space in the neovim command line for displaying messages
set.completeopt = { "menuone", "noselect" } -- mostly just for cmp
set.conceallevel = 0                        -- so that `` is visible in markdown files
set.fileencoding = "utf-8"                  -- the encoding written to a file

set.hlsearch = false -- highlight all matches on previous search pattern
set.incsearch = true
set.ignorecase = true                       -- ignore case in search patterns
set.smartcase = true

-- vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
set.pumheight = 10                          -- pop up menu height
set.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
set.showtabline = 2                         -- always show tabs
set.smartcase = true                        -- smart case
set.smartindent = true                      -- make indenting smarter again

set.splitbelow = true                       -- force all horizontal splits to go below current window
set.splitright = true                       -- force all vertical splits to go to the right of current window
set.termguicolors = true                    -- set term gui colors (most terminals support this)
set.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
set.undofile = true                         -- enable persistent undo
set.updatetime = 300                        -- faster completion (4000ms default)
set.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- Tabs
set.expandtab = true                        -- convert tabs to spaces
set.shiftwidth = 2                          -- the number of spaces inserted for each indentation
set.tabstop = 2                             -- insert 2 spaces for a tab
  

set.cursorline = true                       -- highlight the current line
set.number = false                          -- set numbered lines
set.relativenumber = false                  -- set relative numbered lines
set.numberwidth = 4                         -- set number column width to 2 {default 4}
-- vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
set.wrap = true -- display lines as one long line
set.scrolloff = 5                           -- is one of my fav
set.guifont = "monospace:h17"               -- the font used in graphical neovim applications

-- set.shortmess:append "c"

vim.cmd [[set iskeyword+=-]]
vim.cmd [[set iskeyword+=ã]]
vim.cmd [[set iskeyword+=ç]]
vim.cmd [[set iskeyword+=ç]]
