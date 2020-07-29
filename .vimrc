syntax on
 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set ve+=onemore
set hidden
set wildmenu
set path+=**
set wildignore+=**/node_modules/**
set wildignore+=**/client/node_modules/**
set ignorecase
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set expandtab
retab

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\


call plug#begin('~/.vim/plugged')

Plug 'git@github.com:Valloric/YouCompleteMe.git' 

call plug#end()

set background=dark
colorscheme dracula

imap jj <Esc>
