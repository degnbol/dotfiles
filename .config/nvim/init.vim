" drop vi support - kept for vim compatibility but not needed for nvim
set nocompatible

" reload files changed outside of Vim not currently modified in Vim (needs below)
set autoread
" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" use Unicode
set encoding=utf-8
set fenc=utf-8

" errors flash screen rather than emit beep
set visualbell

" make Backspace work like Delete
set backspace=indent,eol,start

" don't create `filename~` backups
set nobackup

" don't create temp files
set noswapfile

" line numbers and distances
set relativenumber 
set number

" number of lines offset when jumping
set scrolloff=2

" Tab key enters 4 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=4 shiftwidth=4 softtabstop=4 

" Indent new line the same as the preceding line
set autoindent

" statusline indicates insert or normal mode
set showmode showcmd

" make scrolling and painting fast
" ttyfast kept for vim compatibility but not needed for nvim
set ttyfast lazyredraw

" highlight matching parens, braces, brackets, etc
set showmatch

" http://vim.wikia.com/wiki/Searching
set hlsearch incsearch ignorecase smartcase


set nowrap

" jump to mouse click
set mouse=a


" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir

" open new buffers without saving current modifications (buffer remains open)
set hidden

" http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu wildmode=list:longest,full

" StatusLine always visible, display full path
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set laststatus=2 statusline=%F

" Use system clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set clipboard=unnamedplus


" Show character column
" highlight ColorColumn ctermbg=DarkBlue
" set colorcolumn=80

" CursorLine - sometimes autocmds are not performant; turn off if so
" http://vim.wikia.com/wiki/Highlight_current_line
set cursorline
" Normal mode
highlight CursorLine ctermbg=None
autocmd InsertEnter * highlight  CursorLine ctermbg=17 ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermbg=None ctermfg=None

syntax enable


call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 'on' means it is loaded when first toggled
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'metakirby5/codi.vim'
Plug 'julialang/julia-vim'
Plug 'joom/latex-unicoder.vim'
" theme
Plug 'morhetz/gruvbox'
call plug#end()

" ctrl+o toggles file tree
map <C-o> :NERDTreeToggle<CR>

" air-line use powerline symbols
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = ' ∄'

" youcompleteme settings to improve performance
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_max_num_candidates = 10
let g:ycm_max_num_identifier_candidates = 5
" only use tab, not arrow so we can navigate with those
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
" we have to remap so when Pop Up Menu is visible we go to normal mode and
" back quickly. \<C-O> followed by a key let's you exit insert mode,
" press that key and return to insert mode. This exits the PUM. Exiting to
" normal mode moved the cursor to block, which moves it's position wrong if it
" is at the end of the line and you want to left. I fixed it by moving first.
inoremap <expr> <Down>     pumvisible() ? "<C-O>j"               : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "<C-O>k"               : "\<Up>"
inoremap <expr> <Left>     pumvisible() ? "\<Left>\<C-O>\<Esc>"  : "\<Left>"
inoremap <expr> <Right>    pumvisible() ? "\<Right>\<C-O>\<Esc>" : "\<Right>"
" Default is Ctrl+space <C-Space>
let g:ycm_key_invoke_completion = '<S-Space>' 



" let latex unicoder interrupt insert mode
let g:unicoder_cancel_insert = 1
" use ctrl+\ instead of the default ctrl+l (l for latex)
nnoremap <C-\> :call unicoder#start(0)<CR>
inoremap <C-\> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-\> :<C-u>call unicoder#selection()<CR>

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
autocmd vimenter * colorscheme gruvbox

