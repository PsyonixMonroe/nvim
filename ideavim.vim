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
inoremap <C-p> <C-o>:action ParameterInfo<CR>
nnoremap <leader>r :action Refactorings.QuickListPopupAction<CR>

" Find more examples here: https://jb.gg/share-ideavimrc

" setup Leader Key
noremap <Space> <Nop>
let mapleader = " "
let maplocalleader = " "

"- Normal Mode "-
" fix yank line
nnoremap Y yy

nnoremap <c-\> :action SplitVertically<CR>:action MoveEditorToOppositeTabGroup<CR>
nnoremap <c--> :action SplitHorizontally<CR>:action MoveEditorToOppositeTabGroup<CR>
nnoremap <c-=> :action Unsplit<CR>
nnoremap <c-]> :action MoveEditorToOppositeTabGroup<CR>

nnoremap <TAB> :action PreviousTab<CR>
nnoremap <s-TAB> :action NextTab<CR>

" window navigation between splits
" Move to Left
nnoremap <C-h> <C-w>h
" Move down
nnoremap <C-j> <C-w>j
" Move up
nnoremap <C-k> <C-w>k
" Move right
nnoremap <C-l> <C-w>l

" Resize with Arrows
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" Move Text Up or Down
nnoremap <A-j> <Esc>:m .+1<CR>==gi
nnoremap <A-k> <Esc>:m .-2<CR>==gi

"- Visual Mode "-
" stay in indent mode
vnoremap < <gv
vnoremap > >gv

" move text block up or down
vnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m .-2<CR>==

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '>-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
xnoremap <A-k> :move '>-2<CR>gv-gv

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
Plug 'junegunn/fzf'

