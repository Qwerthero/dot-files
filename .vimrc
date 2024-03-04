" CURSOR
" terminal cursor
let &t_RC = "\e[?12$p"
" set cursor shape
let &t_SH = "\e[%d q"
" request terminal cursor style
let &t_RS = "\eP$q q\e\\"
" start/end insert|replace
let &t_SI = "\e[5 q" | let &t_EI = "\e[1 q"
" start replace
let &t_SR = "\e[3 q"
" cursor visible
let &t_VS = "\e[?12l"

set hlsearch
set incsearch

set softtabstop=4
set autoindent
set expandtab
set tabstop=4

set wildmenu
set wildmode=list:longest

set list
execute 'set listchars=tab:→\.'

set colorcolumn=+1
set colorcolumn=80,125

set number
set mouse=a

set cursorline

function! AdjustColors() abort
    hi CursorLineNr ctermbg=237 cterm=NONE
    hi CursorLine term=NONE cterm=NONE ctermbg=237 guibg=black
    hi ColorColumn ctermbg=4
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call AdjustColors()
augroup END

colorscheme torte
