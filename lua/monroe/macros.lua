vim.keymap.set(
	"n",
	"<leader>rr",
	"aif err != nil {<CR>}<CR><Esc>kOreturn err<Esc>>%"
)

vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format() end)
