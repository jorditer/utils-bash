-- Neovim configuration with VSCode-like keybindings
vim.g.mapleader = "\\"
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General keybindings
keymap('n', '<C-e>', ':Ex<CR>', opts)  -- Toggle file explorer
keymap('n', '<C-a>', 'gg<S-v>G', opts) -- Select all
keymap('v', '<C-c>', '"+y', opts)      -- Copy to system clipboard
keymap('v', '<C-S-x>', '"+x', opts)      -- Cut to system clipboard
keymap('n', '<C-S-v>', '"+p', opts)      -- Paste from system clipboard
keymap('i', '<C-S-v>', '<C-r>+', opts)   -- Paste in insert mode

-- keymap("n", "<A-j>", ":m .+1<CR>==", opts) -- move line up(n)
-- keymap("n", "<A-k>", ":m .-2<CR>==", opts) -- move line down(n)
-- keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- move line up(v)
-- keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- move line down(v)

-- Basic settings
vim.opt.number = true                -- Show line numbers
vim.opt.relativenumber = true        -- Show relative line numbers
vim.opt.mouse = 'a'                  -- Enable mouse support
vim.opt.ignorecase = true           -- Case insensitive search
vim.opt.smartcase = true            -- Case sensitive if search includes uppercase
vim.opt.hlsearch = false            -- Don't highlight all search results
vim.opt.wrap = false               -- Don't wrap lines vim.opt.breakindent = true         -- Maintain indent when wrapping vim.opt.tabstop = 2                -- Number of spaces tabs count for
vim.opt.shiftwidth = 2             -- Size of an indent
vim.opt.expandtab = false           -- Use spaces instead of tabs
vim.opt.smartindent = true         -- Insert indents automatically
vim.opt.termguicolors = true       -- True color support
vim.opt.scrolloff = 8              -- Lines of context
vim.opt.sidescrolloff = 8          -- Columns of context
vim.opt.updatetime = 50            -- Faster completion
vim.opt.timeoutlen = 300           -- Time to wait for mapped sequence
