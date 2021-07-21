" ------------ Sets ------------
set number relativenumber 
set termguicolors
set title
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=12
set nohlsearch
syntax on

" ------------ Maps ------------
let mapleader = " "
nnoremap Y y$
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" ------------ Plugins ------------
filetype plugin on
call plug#begin('~/.local/share/nvim/plugged')

" Filetree
Plug 'preservim/nerdtree'
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
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Rust
Plug 'rust-lang/rust.vim'
" lsp
Plug 'neovim/nvim-lspconfig'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'

call plug#end()

" Rust
let g:rustfmt_autosave = 1
nnoremap <leader>r :RustRun<CR>

" ------------ emmet ------------
let g:user_emmet_leader_key='<A-c>'

" ------------ Hexokinase ------------
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" ------------ NerdTree ------------
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>

" ------------ Fugitive ------------
nnoremap <leader>g :G<CR>

" ------------ GitGutter ------------
nnoremap <silent> <leader>G :GitGutterBufferToggle<CR>
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
let g:gitgutter_set_sign_backgrounds = 0

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
  \ 'coc-css'
  \ ]

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
