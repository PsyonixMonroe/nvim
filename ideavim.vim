"" Source your .vimrc
" source L:\\user\\matt\\.config\\nvim\\ideavim.vim

"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
nnoremap <leader>r :action ReformatCode<CR>
nnoremap <leader>f :action GotoFile<CR>
nnoremap <leader>c :action GotoClass<CR>
nnoremap <leader>d :action QuickJavaDoc<CR>
nnoremap <leader>u :action ShowUsages<CR>
nnoremap <leader>i :action GotoImplementation<CR>
nnoremap <leader>o :action GotoSuperMethod<CR>
nnoremap <leader>p :action ParameterInfo<CR>
inoremap <A-p> <C-o>:action ParameterInfo<CR>
nnoremap <leader>r :action Refactorings.QuickListPopupAction<CR>

" Git actions
" TODO: currently support for hunks doesn't seem to be in place for IdeaVim
" nnoremap <leader>ga :action <CR>
" nnoremap <leader>gu :action <CR>
" nnoremap <leader>g[ :action <CR>
" nnoremap <leader>g] :action <CR>
" nnoremap <leader>gp :action <CR>
" nnoremap <leader>gb :action <CR>

" Find more examples here: https://jb.gg/share-ideavimrc

" setup Leader Key
noremap <Space> <Nop>
let mapleader = " "
let maplocalleader = " "

"- Normal Mode "-
" fix yank line
nnoremap Y yy

nnoremap <A-\> :action SplitVertically<CR>:action MoveEditorToOppositeTabGroup<CR>
nnoremap <A-_> :action SplitHorizontally<CR>:action MoveEditorToOppositeTabGroup<CR>
nnoremap <A-=> :action Unsplit<CR>
nnoremap <A-]> :action MoveEditorToOppositeTabGroup<CR>

nnoremap <TAB> :action PreviousTab<CR>
nnoremap <s-TAB> :action NextTab<CR>

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

backspace=indent,eol,start

let fileencoding=utf-8
let hlsearch=true
let ignorecase=true
let pumheight=10
let smartcase=true
let smartindent=true
let splitbelow=true
let splitright=true
let updatetime=100
let relativenumber=false
let scrolloff=8
let sidescrolloff=8

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'junegunn/fzf'

