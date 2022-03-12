local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- create short name for the function
local keymap = vim.api.nvim_set_keymap

-- setup Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


--- Normal Mode ---
-- fix yank line
keymap("n", "Y", "yy", opts)

-- window navigation between splits
keymap("n", "<C-h>", "<C-w>h", opts) -- Move to left
keymap("n", "<C-j>", "<C-w>j", opts) -- Move down
keymap("n", "<C-k>", "<C-w>k", opts) -- Move up
keymap("n", "<C-l>", "<C-w>l", opts) -- Move right

keymap("n", "<C-\\>", ":vsplit<CR>", opts) -- split vertical
keymap("n", "<C-_>", ":split<CR>", opts) -- split vertical

-- tab commands
keymap("n", "<A-]>", ":tabnext<CR>", opts)
keymap("n", "<A-[>", ":tabprevious<CR>", opts)
keymap("n", "<A-o>", ":tabnew<CR>:Lex 30<CR>", opts)

-- Resize with Arrows
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<cr>", opts)    -- unfortunately 
keymap("n", "<C-Right>", ":vertical resize -2<cr>", opts)

-- Move Text Up or Down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- open left explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

--- Visual Mode ---
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text block up or down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--- Insert Mode ---
-- better cut, copy, paste
keymap("v", "<C-x>", '"+x', opts)           -- Cut
keymap("v", "<C-c>", '"+y', opts)           -- Copy
keymap("v", "<C-v>", '"_d"+gP', opts)       -- Paste (delete selected and paste from clipboard)
keymap("n", "<C-v>", '"+gP', opts)          -- Paste (as an insert)
keymap("i", "<C-v>", '<ESC>"+gPa', opts)    -- Paste (as an insert from insert mode)
