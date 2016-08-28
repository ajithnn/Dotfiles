set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Avoid a name conflict with L9

"Plugin for auto-complete
Plugin 'Valloric/YouCompleteMe'

"plugin for solarized color
Plugin 'altercation/vim-colors-solarized'

"Add end keyword in ruby"
Plugin 'tpope/vim-endwise'

"ruby plugin for vim"
Plugin 'vim-ruby/vim-ruby'

Plugin 'ecomba/vim-ruby-refactoring'

Plugin 'scrooloose/syntastic'

Plugin 'Yggdroot/indentLine'

Plugin 'isRuslan/vim-es6'

Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'

Plugin 'tpope/vim-surround'

Plugin 'wincent/command-t'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'Shougo/vimproc.vim'

Plugin 'Shougo/unite.vim'

Plugin 'rking/ag.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype on
filetype plugin on    " required
filetype indent on
set hlsearch
set incsearch
set backspace=2
syntax on
colorscheme distinguished 
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" --- type ° to search the word in all files in the current dir
  nmap ~ :Ag <c-r>=expand("<cword>")<cr><cr>
"  nnoremap <space>/ :Ag

let g:unite_source_history_yank_enable = 1
    try
      let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
      call unite#filters#matcher_default#use(['matcher_fuzzy'])
    catch
    endtry
    " search a file in the filetree
     nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file<cr>
    " reset not it is <C-l> normally
     :nnoremap <space>r <Plug>(unite_restart)

let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 0

vnoremap <silent> <Enter> :EasyAlign<cr>

autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2

"if (exists('+colorcolumn'))
"  set colorcolumn=100
"  highlight ColorColumn ctermbg=9
"endif

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
