" Setup Plugin
call plug#begin('~/.vim/plugged')
"Color Theme -  Sublime Monokai
Plug 'erichdongubler/vim-sublime-monokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'

" Git Gutter
Plug 'airblade/vim-gitgutter', {'on': 'GitGutterEnable'}

" File Finder - FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" File Menu - NERD Tree Sidebar
Plug 'scrooloose/nerdtree'

" Status Bar - Air Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Lint Engine
Plug 'dense-analysis/ale'

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prabirshrestha/vim-lsp'

" Git integration - Fugitive
Plug 'tpope/vim-fugitive'

" Typescript
Plug 'leafgarland/typescript-vim' " Syntax Highlighting
" Plug 'Quramy/tsuquyomi' " Language Server
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
call plug#end()

" General VIM Settings
set number
syntax on
colorscheme gruvbox
:set bg=dark
:GitGutterEnable

" COC Configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" Keymap
map <C-n> :NERDTreeToggle<CR>

" TypeScript
" Linter Settings
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}
