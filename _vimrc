let mapleader = " "
filetype plugin on

set encoding=utf-8
set fileencoding=utf-8
set background=light
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set ai
set ruler
set hlsearch
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch
set number
highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'lervag/vimtex' , {'for':'tex'}
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
		\ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips' 
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()
syntax on

set t_Co=256
colorscheme peachpuff


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>


autocmd BufRead,BufNewFile *.tex set filetype=tex
