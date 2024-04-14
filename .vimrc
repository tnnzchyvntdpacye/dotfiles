set nocompatible
" set number relativenumber
set wrap
set encoding=utf-8
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set t_vb=

nm j gj
nm k gk

syntax on
filetype plugin indent on

set textwidth=72
"""" Tab settings

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2	

set autoindent
set smartindent

if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif
set t_Co=256

" Use new vim 8.2 popup window for Go Doc
" let g:go_doc_popup_window=1
" 
" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'
" 
" au FileType go nm <leader>r <Plug>(go-run)
" au FileType go nm <leader>b <Plug>(go-build)
" au FileType go nm <leader>t <Plug>(go-test)
" au FileType go nm <leader>c <Plug>(go-coverage-toggle)
" au FileType go nm <leader>e <Plug>(go-rename)
" au FileType go nm <leader>s <Plug>(go-implements)
" au FileType go nm <leader>i <Plug>(go-info)
" " Alternate commands
" au FileType go nm <leader>ae <Plug>(go-alternate-edit)
" au FileType go nm <leader>av <Plug>(go-alternate-vertical)
" " Enable lsp for go by using gopls
" let g:completor_filetype_map={}
" let g:completor_filetype_map.go={'ft': 'lsp', 'cmd': 'gopls -remote=auto'}"
" 
" call plug#begin()
" Plug 'preservim/NERDTree'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'sainnhe/gruvbox-material'
" Plug 'fatih/vim-go'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax' 
" call plug#end()

" Set contrast.
" This configuration option should be placed before
" `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard'
" set background=dark
" color gruvbox-material
