"" Source your .vimrc
" source L:\\user\\matt\\.config\\nvim\\ideavim.vim

" Full list of Actions: https://gist.github.com/zchee/9c78f91cc5ad771c1f5d

" setup Leader Key
noremap <Space> <Nop>
let mapleader = " "
let maplocalleader = " "

" fix yank line
nnoremap Y yy

"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
nnoremap <leader>r :vsc Edit.FormatDocument<CR>
nnoremap <leader>f :vsc Edit.GoToFile<CR><BS><BS>
nnoremap <leader>u :vsc Edit.FindAllReferences<CR>
nnoremap <leader>i :vsc Edit.PeekDefinition<CR>
inoremap <A-p> <C-o>:vsc Edit.QuickInfo<CR>
nnoremap <leader>r :vsc Refactor.Rename<CR>
nnoremap <leader><leader> :vsc Edit.QuickInfo<CR>
nnoremap gl :vsc Edit.QuickInfo<CR>
nnoremap gi :vsc Edit.GoToDefinition<CR>

" This will activate but not deactivate
nnoremap <A-.> :vsc View.Terminal<CR>
" nnoremap <A-q> :action CloseActiveTab<CR>

" ----- TERMINAL SETUP -----

" Instead, For Terminal binds go to keymap and set
" ToolWindow > Terminal = <A-.>
" Then Remove `Escape` from Plugins > Terminal > Switch Focus to Editor"

" ----- MENU SETUP -----
" to get hjkl to work in menus
" Keymap > Editor Actions >
"   Down    Add Alt+Shift+j
"   Up      Add Alt+Shift+k
"   Left    Add Alt+Shift+h
"   Right   Add Alt+Shift+l

" Nerd Tree
nnoremap <leader>e :vsc View.SolutionExplorer<CR>
" <ENTER>   open file in main window
" i         open file in split
" s         open file in vsplit
" P         go to root of project
" p         go to current dir root
" q         close window
" x         close parent node
" /         search directories
" m         display menu

" Git actions
" TODO: currently support for hunks doesn't seem to be in place for IdeaVim
" nnoremap <leader>ga :action <CR>
" nnoremap <leader>gu :action <CR>
" nnoremap <leader>g[ :action <CR>
" nnoremap <leader>g] :action <CR>
" nnoremap <leader>gp :action <CR>
" nnoremap <leader>gb :action <CR>

nnoremap <A-\> :vsc Window.SplitWindowVertically<CR>:action MoveEditorToOppositeTabGroup<CR>
nnoremap <A-_> :vsc Window.SplitWindowHorizontally<CR>:action MoveEditorToOppositeTabGroup<CR>
"nnoremap <A-=> :action Unsplit<CR>
"nnoremap <C-]> :action MoveEditorToOppositeTabGroup<CR>

nnoremap <A-]> :vsc Window.NextTab<CR>
nnoremap <A-[> :vsc Window.PreviousTab<CR>

" nnoremap <TAB> :action PreviousTab<CR>
" nnoremap <s-TAB> :action NextTab<CR>

" window navigation between splits
" Move to Left
nnoremap <A-h> <C-w>h
" Move down
nnoremap <A-j> <C-w>j
" Move up
nnoremap <A-k> <C-w>k
" Move right
nnoremap <A-l> <C-w>l

" Resize with Arrows
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" Move Text Up or Down
nnoremap <C-j> <Esc>:m .+1<CR>==gi
nnoremap <C-k> <Esc>:m .-2<CR>==gi

"- Visual Mode "-
" stay in indent mode
vnoremap < <gv
vnoremap > >gv

" move text block up or down
vnoremap <C-j> :m .+1<CR>==
vnoremap <C-k> :m .-2<CR>==

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '>-2<CR>gv-gv
xnoremap <C-j> :move '>+1<CR>gv-gv
xnoremap <C-k> :move '>-2<CR>gv-gv

set backspace=indent,eol,start

set hlsearch=true
set ignorecase=true
let pumheight=10
set smartcase=true
let updatetime=100
set relativenumber=false
let scrolloff=8
let sidescrolloff=8

