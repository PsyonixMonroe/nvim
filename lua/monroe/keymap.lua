local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- CReate short name for the function
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
keymap("n", "<A-->", ":split<CR>", opts) -- split vertical
keymap("n", "<A-e>", "<C-w>q", opts) -- close split

-- jump up and down half page with cursor in middle
keymap("n", "<C-i>", "<C-u>zz", opts)
keymap("n", "<C-u>", "<C-d>zz", opts)

-- keep search in the middle 
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- tab/buffer commands
keymap("n", "<A-]>", ":bnext<CR>", opts)
keymap("n", "<A-[>", ":bprevious<CR>", opts)
keymap("n", "<A-o>", ":enew<CR>:NvimTreeToggle<CR>", opts)
keymap("n", "<A-q>", ":Bdelete<CR>", opts)

keymap("n", "<A-s>", ":w<CR>", opts)

-- Resize with Arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)    -- unfortunately
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move Text Up or Down
keymap("n", "<C-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("n", "<C-j>", "<Esc>:m .+1<CR>==gi", opts)

-- open left explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

keymap("n", "<leader>r<leader>", ":diffget 1<CR>", opts) -- take left diff
keymap("n", "<leader>g<leader>", ":diffget 2<CR>", opts) -- take center diff
keymap("n", "<leader>u<leader>", ":diffget 3<CR>", opts) -- take right diff

keymap("n", "J", "mzJ`z", opts) -- append line to end

keymap("n", "<leader>m", "<cmd>cnext<CR>zz", opts)
keymap("n", "<leader>n", "<cmd>cprev<CR>zz", opts)
keymap("n", "<leader>k", "<cmd>lnext<CR>zz", opts)
keymap("n", "<leader>j", "<cmd>lprev<CR>zz", opts)

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", term_opts)

--- Visual Mode ---
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text block up or down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '\"_dP', opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "p", '\"_dP', opts)

--- Insert Mode ---
-- better cut, copy, paste
keymap("x", "<C-x>", '"+x', opts)           -- Cut
keymap("x", "<C-c>", '"+y', opts)           -- Copy
keymap("x", "<C-v>", '"_d"+gP', opts)       -- Paste (delete selected and paste from clipboard)
keymap("v", "<C-x>", '"+x', opts)           -- Cut
keymap("v", "<C-c>", '"+y', opts)           -- Copy
keymap("v", "<C-v>", '"_d"+gP', opts)       -- Paste (delete selected and paste from clipboard)
keymap("n", "<C-v>", '"+gP', opts)          -- Paste (as an insert)
keymap("i", "<C-v>", '<ESC>"+gPa', opts)    -- Paste (as an insert from insert mode)
keymap("n", "<leader>y", '\"+y', opts)		-- yank to system clipboard
keymap("v", "<leader>y", '\"+y', opts)		-- yank to system clipboard
keymap("x", "<leader>y", '\"+y', opts)		-- yank to system clipboard
keymap("n", "<leader>p", '\"+gP', opts)		-- yank to system clipboard
keymap("v", "<leader>p", '\"+gP', opts)		-- yank to system clipboard
keymap("x", "<leader>p", '\"+gP', opts)		-- yank to system clipboard

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
keymap("n", "<leader>fa", "<cmd>Telescope find_files<CR>", opts)
keymap('n', '<leader>ff', "<cmd>Telescope git_files<CR>", opts)
vim.keymap.set('n', '<leader>fs', function()
	require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
end)

--- Go Keybinds ---
keymap("n", "<leader>dd", ":GoDebugBreakpoint<CR>", opts)
keymap("n", "<leader>de", ":GoDebugPrint ", opts)
keymap("n", "<leader>dq", ":GoDebugStop<CR>", opts)
keymap("n", "<leader>dr", ":GoDebugStart<CR>", opts)
keymap("n", "<F7>", ":GoDebugStep<CR>", opts)
keymap("n", "<F8>", ":GoDebugNext<CR>", opts)

vim.g.go_debug_mappings = {
  ['(go-debug-into)'] = { key = '<F7>' },
  ['(go-debug-next)'] = { key = '<F8>' },
  ['(go-debug-continue)'] = { key = '<F9>' },
  ['(go-debug-halt)'] = { key = '<F12>' },
  ['(go-debug-breakpoint)'] = { key = '<F4>' },

}

