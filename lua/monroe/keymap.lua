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
keymap("n", "<A-h>", "<C-w>h", opts) -- Move to left
keymap("n", "<A-j>", "<C-w>j", opts) -- Move down
keymap("n", "<A-k>", "<C-w>k", opts) -- Move up
keymap("n", "<A-l>", "<C-w>l", opts) -- Move right

keymap("n", "<A-\\>", ":vsplit<CR>", opts) -- split vertical
keymap("n", "<A-_>", ":split<CR>", opts) -- split vertical
keymap("n", "<A-e>", "<C-w>q", opts) -- close split

-- tab/buffer commands
keymap("n", "<A-]>", ":bnext<CR>", opts)
keymap("n", "<A-[>", ":bprevious<CR>", opts)
keymap("n", "<A-o>", ":enew<CR>:NvimTreeToggle<CR>", opts)
keymap("n", "<A-q>", ":Bdelete<CR>", opts)

keymap("n", "<A-s>", ":w<CR>", opts)

-- Resize with Arrows
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<cr>", opts)    -- unfortunately
keymap("n", "<C-Right>", ":vertical resize -2<cr>", opts)

-- Move Text Up or Down
keymap("n", "<C-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<C-k>", "<Esc>:m .-2<CR>==gi", opts)

-- open left explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--- Visual Mode ---
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text block up or down
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

--- Insert Mode ---
-- better cut, copy, paste
keymap("v", "<C-x>", '"+x', opts)           -- Cut
keymap("v", "<C-c>", '"+y', opts)           -- Copy
keymap("v", "<C-v>", '"_d"+gP', opts)       -- Paste (delete selected and paste from clipboard)
keymap("n", "<C-v>", '"+gP', opts)          -- Paste (as an insert)
keymap("i", "<C-v>", '<ESC>"+gPa', opts)    -- Paste (as an insert from insert mode)

--- Buffers ---
keymap("n", "<leader>b", ":buffers<CR>", opts)			-- List Buffers
keymap("n", "<leader>1", ":b1<CR>", opts)				-- Jump to buffer #
keymap("n", "<leader>2", ":b2<CR>", opts)
keymap("n", "<leader>3", ":b3<CR>", opts)
keymap("n", "<leader>4", ":b4<CR>", opts)
keymap("n", "<leader>5", ":b5<CR>", opts)
keymap("n", "<leader>6", ":b6<CR>", opts)
keymap("n", "<leader>7", ":b7<CR>", opts)
keymap("n", "<leader>8", ":b8<CR>", opts)
keymap("n", "<leader>9", ":b9<CR>", opts)
keymap("n", "<leader>0", ":b10<CR>", opts)
keymap("n", "<leader>c", ":bd<CR>", opts) 				-- Close Buffer

--- Git Commands ---
keymap("n", "<leader>ga", ":Gitsigns stage_hunk<CR>", opts)
keymap("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", opts)
keymap("n", "<leader>g[", ":Gitsigns prev_hunk<CR>", opts)
keymap("n", "<leader>g]", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)

--- Plugin Binds ---
-- Telescope --
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)

