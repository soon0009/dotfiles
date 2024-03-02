" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use RipGrep https://github.com/BurntSushi/ripgrep
if executable('rg')
  " Use RipGrep over Grep
  set grepprg=rg\ --nogroup\ --nocolor

  " Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'rg %s -l --nocolor --hidden -g ""'

  " rg is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Make it obvious where 80 characters is
" set textwidth=80
" set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
