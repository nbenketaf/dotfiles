""" Pathogen config
execute pathogen#infect()
syntax on
filetype plugin indent on

""" Solarized config from dr.bunsen
syntax enable
let g:solarized_termtrans = 1
colorscheme solarized
execute togglebg#map("<F5>")

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
"
" " Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

""" Set Inconsolata default gui font
if has('gui_running')
  set guifont=Inconsolata:h14
endif

""" Enable mouse
set mouse=a
