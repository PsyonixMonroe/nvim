vim.opt.syntax = "on"                           -- turn on syntax highlighting
vim.opt.filetype = "on"                         -- make sure we are looking at file types for syntax highlighting
vim.opt.backspace = "indent,eol,start"          -- set backspacing behavior

vim.opt.backup = false                          -- creates a backup file
vim.opt.cmdheight = 2                           -- more space in the neovim command line for messages
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 100                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                             -- insert 4 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.binary = true                           -- don't automatically add new line to end of file on save
vim.opt.sidescrolloff = 8
vim.opt.guifont = "Hack 10"                     -- the font used in graphical neovim applications

vim.g.markdown_fenced_languages = { 'html', 'python', 'vim', 'sql', 'mysql', 'php', 'go', 'godoc', 'bash', 'cs', 'c', 'cpp', 'cmake', 'valgrind', 'rust', 'git', 'sql', 'mysql', 'zig', 'config', 'confini', 'gdb', 'java', 'javacc', 'javascript', 'json', 'make', 'nginx', 'nix', 'sed', 'sh', 'sshconfig', 'sshdconfig', 'systemd', 'tar', 'tmux', 'typescript', 'wget', 'yaml', 'zsh' }

vim.opt.autowrite = true
vim.opt.autowriteall = true
vim.cmd([[ 
    autocmd FocusLost,BufWinLeave * 
    \   if &readonly || &buftype == "nofile" || &buftype == "terminal" || &buftype == "prompt"
    \|  else
    \|   :w!
    \|  endif
    ]])
    -- this can be used after the else to inspect buftypes to add them to the list that is skipped
    -- \|   echo "buftype: " .. &buftype

vim.cmd "colorscheme codemonkey"                  -- prefered console color scheme

vim.cmd([[ autocmd BufEnter *.md :setlocal filetype=markdown ]])
vim.cmd([[ autocmd BufEnter *Jenkinsfile* :setlocal filetype=groovy ]])

-- Open buffers as tabs
-- vim.cmd(":au BuffAdd,BufNewFile,BufRead * nested tab sball")

-- vim.cmd("highlight! ErrorMsg guibg=White guifg=Red")                    -- TODO: this doesn't seem to work
-- vim.cmd("highlight! CursorLine gui=underline ") -- TODO: this doesn't seem to work

-- Vim-Go Settings --
vim.g.goimports_simplify = 1
vim.g.go_debug_log_output = 'debugger'
vim.g.go_debug_preserve_layout = 1

vim.g.goimports_simplify = 1
-- let g:go_debug_windows = {
--           \ 'vars':       'leftabove 30vnew',
--           \ 'stack':      'leftabove 20new',
--           \ 'goroutines': 'botright 10new',
--           \ 'out':        'botright 5new',
-- \ }
