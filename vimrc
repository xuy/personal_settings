" .vimrc file of Eric Xu, many features were copy/pasted
" from others' vimrc files.
set nocompatible    " use vim defaults
syntax on           " syntax highlighing
call pathogen#infect()

set expandtab       " tabs are converted to spaces, use only when required
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
set scrolloff=1     " keep 1 lines when scrolling
set shiftwidth=2    " numbers of spaces to (auto)indent
set shortmess=atI   " Abbreviate messages
set showcmd         " display incomplete commands
set softtabstop=2		" the space used by a tab
set spell           " because English is hard
set tabstop=2       " numbers of spaces of tab character
set title           " show title in console title bar
set ttyfast         " smoother changes
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

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
    
    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
    au FileType cpp,c,java,sh,pl,php,asp  set smartindent
    au FileType cpp,c,java,sh,pl,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72
    
    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
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
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

" C D Y family
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

