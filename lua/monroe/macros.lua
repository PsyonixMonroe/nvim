vim.keymap.set(
	"n",
	"<leader>ee",
	"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format() end)

 
