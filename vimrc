" vimrc configuration file
" user: lookupatnight
"       github.com/lookupatnight


set t_Co=256 "Sets 256 colors
syntax enable
"inoremap jj <esc> "Sets double pressing j same as esc key
set tabstop=4 "Tab = 4 colums
set expandtab "Replaces tabs with x spaces
set shiftwidth=4 "Size of an indentation
set number "Line numbers
set autoindent "Automatic indentation
set mouse=a "Enables mouse
set backspace=2 "Correct behavior for backspace key
set ignorecase "Ignores case on search
set incsearch "Highlights results as you type your search
set hlsearch "Highlights all search results
set colorcolumn=80 "Highlights column number 80
set list
set listchars=trail:\ 
"set listchars=trail:\ ,tab:\|\ 

call plug#begin("~/.vim/plugins") "Calling vim-plug, plugin manager
Plug 'lookupatnight/spacegraynobg'
Plug 'Yggdroot/indentLine'
call plug#end() "Ending plugin management

colo spacegraynobg "color scheme
let g:indentLine_char = '|' "Sets the indentation character

"Statusline
set ls=2
hi User1 ctermbg=NONE ctermfg=130   guibg=NONE guifg=darkorange3
set statusline=%t\ %1*\|%*\ %Y\ %1*\|%*\ %{&ff}\ %1*\|%*\ %{strlen(&fenc)?&fenc:'none'}%=%c\ %1*\|%*\ %l/%L\ %1*\|%*\ %P
