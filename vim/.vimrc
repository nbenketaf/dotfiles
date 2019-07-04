""" Pathogen config
execute pathogen#infect()
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

""" change the mapleader from \ to ,
let mapleader=","

""" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

""" Misc
" disable the arrow keys while in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" disable the arrow keys while in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" movement by screen line instead of file line
nnoremap j gj
nnoremap k gk
" open a new vertical split and switch over to it
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
" move around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" don't wrap lines
set nowrap        
" a tab is four spaces
set tabstop=4 
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" set autoindent
set autoindent
" copy the previous indentation on
set copyindent
" always show line numbers
set nu
set rnu
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" switch to the next or previous buffer
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" mapping moving lines up and down
" ∆ == <A-j> == Alt+j
" ˚ == <A-k> == Alt+k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" number of spaces to use for
set shiftwidth=4
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" show matching parenthesis
set showmatch
" no backup and swap files
set nobackup
set noswapfile
" used when forgot to sudo before editing root privileged file
cmap w!! w !sudo tee % >/dev/null

""" Solarized config from dr.bunsen
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
execute togglebg#map("<F5>")

""" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

""" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

""" Set Inconsolata default gui font
if has('gui_running')
"    set guifont=Inconsolata:h14
    "set guifont=Inconsolata\ for\ powerline:h14
    "set guifont=Inconsolata-g\ for\ Powerline:h12

""" Set font ligatures
    set macligatures
    set guifont=Fira\ Code\ Retina:h14
endif

""" Remove scrollbars on gui mode
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

""" Enable mouse
set mouse=a

""" Enable Rainbow Parens in clojure files
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

""" Show command before it timeouts
set showcmd

""" Show undo tree
nnoremap <F6> :UndotreeToggle<CR>

""" Format JSON text
nmap =j :%!python -m json.tool<CR>

""" LimeLight Goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
