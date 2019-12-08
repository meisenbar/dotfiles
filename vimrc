" Setup Plugins
call plug#begin('~/.vim/plugged')
"Color Theme -  Sublime Monokai
Plug 'erichdongubler/vim-sublime-monokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'

" Git Gutter
Plug 'airblade/vim-gitgutter', {'on': 'GitGutterEnable'}

" File Finder - FZF
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" File Menu - NERD Tree Sidebar
Plug 'scrooloose/nerdtree'

" Status Bar - Air Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language Server
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" Git integration - Fugitiv'e
call plug#end()

" General VIM Settings
set number
syntax on
colorscheme gruvbox
:set bg=dark

" Keymap
map <C-n> :NERDTreeToggle<CR>
