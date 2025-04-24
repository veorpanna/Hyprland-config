set ts=4 
set sw=4
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12
set number
set mouse=a 

call plug#begin()

Plug 'wojciechkepka/vim-github-dark'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'Exafunction/windsurf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme ghdark
let g:airline_theme='simple'
