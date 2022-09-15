" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" Close the tab if NERDTree is the only window remaining in it.

noremap <C-n> :NERDTree<CR>
let base16colorspace=256

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'lervag/vimtex'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-fugitive'
    Plug 'xolox/vim-misc'
    Plug 'kjakapat/eva-theme', { 'rtp': 'vim' }
    Plug 'plasticboy/vim-markdown'
    Plug 'xolox/vim-notes' 
    Plug 'morhetz/gruvbox'
    Plug 'vim-python/python-syntax'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'mhinz/neovim-remote' 
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'chriskempson/base16-vim'
    Plug 'rafi/awesome-vim-colorschemes'

call plug#end()
colorscheme gruvbox
"colorscheme PaperColor
"colorscheme purify 




syntax on
set foldmethod=expr
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set number
set relativenumber
set wrap
set linebreak


let g:vimtex_compiler_progname = 'nvr'

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:tex_flavor = "latex"



