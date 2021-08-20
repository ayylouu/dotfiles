" ------------ Sets ------------
set number relativenumber 
set termguicolors
set title
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=12
set nohlsearch
set noswapfile
set nobackup
set splitright
set updatetime=50
syntax on

" ------------ Maps ------------
let mapleader = " "
nnoremap Y y$
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <leader>T :Sex<CR>
nnoremap <leader>t :Vex<CR>
nnoremap <leader>s :sp<CR>
nnoremap <leader>v :vs<CR>
nnoremap <c-t> :terminal<CR>

" ------------ Plugins ------------
filetype plugin on
call plug#begin('~/.local/share/nvim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Syntax-Highlight
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Tags
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
" Commenting
Plug 'preservim/nerdcommenter'
" Git
Plug 'tpope/vim-fugitive'
" Rust
Plug 'rust-lang/rust.vim'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'

call plug#end()

" Telescope
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fb :Telescope buffers<CR>

" Rust
let g:rustfmt_autosave = 1
nnoremap <leader>r :RustRun<CR>

" ------------ emmet ------------
let g:user_emmet_leader_key='<A-c>'

" ------------ Hexokinase ------------
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" ------------ Fugitive ------------
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gp :Gpush<CR>
nnoremap <silent> <leader>gd :Gdiffsplit<CR>

" ------------ coc.vim ------------
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = [ 
  \ 'coc-pairs',
  \ 'coc-pyright',
  \ 'coc-rust-analyzer',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-sh',
  \ 'coc-css']


" ------------ airline ------------
let g:airline_powerline_fonts = 1
let g:airline_theme =  'dracula'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" ------------ TokyoNight ------------
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

" ------------ Sonkai ------------
let g:sonokai_style = 'atlantis'

colorscheme sonokai
