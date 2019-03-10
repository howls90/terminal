call plug#begin()
    Plug 'roxma/nvim-completion-manager'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'mattn/emmet-vim'
    Plug 'myusuf3/numbers.vim'
    Plug 'roxma/nvim-completion-manager'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'zchee/deoplete-jedi'
    Plug 'davidhalter/jedi-vim'
    Plug 'fishbullet/deoplete-ruby'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-surround'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'ap/vim-css-color'
    Plug 'mileszs/ack.vim'
    Plug 'airblade/vim-gitgutter'
call plug#end()

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme gruvbox
set background=dark

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

"" Deoplete
let g:deoplete#enable_at_startup = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <c-l> :NERDTreeFind<CR>
noremap <c-l> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
:set mouse=a
let g:NERDTreeMouseMode=3 

"" Control P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"" Autocomple
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>


:set guicursor=

"" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

"" Save
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

"" Jedi vim
let g:jedi#autocompletion_command = "<C-m>"

"" Autocomplete css c-x and c-o
:set omnifunc=csscomplete#CompleteCSS

"" Python go to definition or declaration
let g:jedi#completions_enabled = 0
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"

"" Ctags
" set tags=tags
" set tags+=tags;$HOME

"" Ack shortcut
:nmap <c-k> :Ack<CR>

"" Numbers plugin
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F5> :NumbersOnOff<CR>
