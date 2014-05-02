set nocompatible " must be first line

"
<<<<<<< HEAD
" Setup Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'Raimondi/delimitMate'
Bundle 'SirVer/ultisnips'
Bundle 'altercation/vim-colors-solarized'
Bundle 'dagwieers/asciidoc-vim'
Bundle 'honza/vim-snippets'
Bundle 'kana/vim-textobj-user'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/dbext.vim'
Bundle 'vim-scripts/gnuplot.vim'
Bundle 'vim-scripts/tabular'
Bundle 'vim-scripts/tlib'

 
=======
" Setup Bundle Support 
execute pathogen#infect()
>>>>>>> 5266a42d09fe6b903e6330c839063142825b1b75
syntax on " syntax highlighting
filetype plugin indent on " Automatically detect file types.
set encoding=utf-8
scriptencoding utf-8

set shortmess+=afilmnrxoOtT " abbrev. of messages (avoids 'hit enter')
set virtualedit=onemore " allow for cursor beyond last character
set history=1000 " Store a ton of history (default is 20)
"todo-- save undo levels to disk"
set nospell " spell checking on

"! to be redo in coffee script syntax"
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE
au BufNewFile, BufReadPost *.coffee setl foldmethod=indent nofoldenable
"!end"

" backups
set nobackup
set noswapfile
""set backupdir=~/tmp/backup
""set directory=~/tmp/swp
"au BufWinLeave * silent! mkview "make vim save view (state) (folds, cursor, etc)
"au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)


autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif


" colors 
set t_Co=256
set background=dark " Assume a dark background
colorscheme jellybeans
hi clear SpellBad
hi SpellBad cterm=undercurl
set tabpagemax=15 " only show 15 tabs
set showmode " display the current mode
set title 
set visualbell " don't beep"
set noerrorbells " don't beep"

"statusline
set laststatus=2

set backspace=indent,eol,start " backspace for dummys
set linespace=0 " No extra spaces between rows
set nu " Line numbers on
"set showmatch " show matching brackets/parenthesis
set incsearch " find as you type search
set nohlsearch " highlight search terms
set winminheight=0 " windows can be 0 line high
set ignorecase " case insensitive search
set smartcase " case sensitive when uc present
set wildmenu " show list instead of just completing
set wildignorecase " case insensitivity for the filename completion"
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=3 " minimum lines to keep above and below cursor
set gdefault " the /g flag on :s substitutions by default

set modeline 
set modelines=5

""--todo: set magic=very
nnoremap / /\v
vnoremap / /\v
nnoremap ? /\v
vnoremap ? ?\v
cnoremap %s/ %s/\v



set foldenable " auto fold code

" Formatting 
set nowrap " wrap long lines
set autoindent " indent at the same level of the previous line
set shiftwidth=2 " use indents of 2 spaces
set expandtab " tabs are spaces, not tabs
set tabstop=2 " an indentation every two columns
set softtabstop=2 " let backspace delete indent
set matchpairs+=<:> " match, to be used with %
"set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)


" Key (re)Mappings 
" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap ; :



" when you forgot to sudo before editing a file
cmap sw  w  !sudo tee % >/dev/null 

" plugins are good


let mapleader=","
"quick edit/reload the vimrc file
nmap <silent> <leader>v :tabedit $MYVIMRC<CR>
nmap <silent> <leader>s :source $MYVIMRC<CR>

nmap <silent> <leader>b ysiw*<ESC>
nmap <silent> <leader>2b ebys2w*<ESC>
nmap <silent> <leader>3b ebys3w*<ESC>
nmap <silent> <leader>4b ebys4w*<ESC>
nmap <silent> <leader>5b ebys5w*<ESC>
nmap <silent> <leader>6b ebys6w*<ESC>


" fast terminal
" set ttyfast

"source vimrc each time I save it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
end

"edit list of abbreviations 
nmap <silent> <leader>a :tabedit ~/.vim/abbreviations.txt<CR>

set listchars=""
" Fuzzy Finder 
""" Fuzzy Find file, tree, buffer, line
"nmap <leader>ff :FufFile **/<CR>
"nmap <leader>ft :FufFile<CR>
"nmap <leader>fb :FufBuffer<CR>
"nmap <leader>fl :FufLine<CR>
"nmap <leader>fr :FufRenewCache<CR>

"dbext database plugin
"let g:dbext_default_profile = 'type=MYSQL:user=root:passwd=kyamukende:dbname=otrs:extra=-t'
let g:dbext_default_profile_ODBC = 'type=ODBC:dsnname=acdis:user=acapp_otrs:passwd=kyamukende:dbname=acdis'
let g:dbext_default_history_file = '~/.vim/dbext_sql_history.txt'

source ~/.vim/abbreviations.txt



imap <F2>  <C-R>=strftime("%Y-%m-%d %a %H:%M")<CR>
nmap <F2>  a<C-R>=strftime("%Y-%m-%d %a %H:%M")<CR><ESC>
imap <F3> <C-R>=strftime("%H%M")<CR>
nmap <F3> a<C-R>=strftime("%H%M")<CR><esc>
vnoremap P "*p
nnoremap P "*p
nnoremap Y "*y
vnoremap Y "*y

set autowriteall " automatically write a file when leaving a modified buffer

" Gemmfile, Rakefile, Vagrantfile, Thorfile are Ruby"
au BufRead, BufNewFile {Gemfile, Rakefile, Vagrantfile,Thorfile,config.ru} set ft=ruby

" enable compiler support for ruby
compiler ruby

" to be removed 
set maxmempattern=200000

"needed for ruby text objects
runtime macros/matchit.vim

" Ultisnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
