" .vimrc file of Eric Xu, many features were copy/pasted
" from others' vimrc files.
set nocompatible    " use vim defaults
syntax on           " syntax highlighing
call pathogen#infect()
:filetype plugin on

set expandtab       " tabs are converted to spaces, use only when required
set history=1000    " Those who cannot remember the past are condemned to repeat it. 
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set incsearch       " do incremental searching
set ls=2            " allways show status line
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set noautoindent
set nobackup        " do not keep a backup file
set nocindent  
set nosmartindent
set nostartofline   " don't jump to first character when paging
set number          " show line numbers
set ruler           " show the cursor position all the time
set scrolloff=3     " keep 1 lines when scrolling
set shiftwidth=2    " numbers of spaces to (auto)indent
set shortmess=atI   " Abbreviate messages
set showcmd         " display incomplete commands
set smartcase       " will respect upper case char if there is any
set softtabstop=2		" the space used by a tab
set spell           " because English is hard
set tabstop=2       " numbers of spaces of tab character
set title           " show title in console title bar
set ttyfast         " smoother changes
set visualbell
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files

if has("gui_running")
  set guioptions-=T    
  set lines=50         
  set columns=100     
  set background=light 
  set selectmode=mouse,key,cmd
  set keymodel=
	colorscheme solarized
else
  set background=dark        " adapt colors for background
	colorscheme solarized
endif

" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Save some key presses
cmap WQ wq

" C D Y family consistency
nnoremap Y y$

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" sudo make me a sandwich style writing
cmap w!! w !sudo tee % >/dev/null

" change to the folder of my current file
cmap cd. lcd %:p:h
nnoremap j gj
nnoremap k gk
imap ;; <Esc>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Stuff about plugins
let g:EasyMotion_leader_key = '<Leader>'
