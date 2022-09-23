"  __  __ _         _
" |  \/  (_) __   _(_)_ __ ___  _ __ ___
" | |\/| | | \ \ / / | '_ ` _ \| '__/ __|
" | |  | | |  \ V /| | | | | | | | | (__
" |_|  |_|_|   \_/ |_|_| |_| |_|_|  \___|

" j: para ir hacia abajo
" k: para ir hacia arriba
"l: para ir hacia la derecha
"h: para ir hacia la izquierda
"w: mover hacia la derecha entre palabras
"b: mover hacia la izquierda entre palabras
"dw: elimina una palabra

" Shutdown classic vi
    set nocompatible		" disable vi compatibility mode
    set history=1000		" increase history size
    set noswapfile			" don't create swapfile
    " set nobackup			" don't backup, use git!
    set nowritebackup

" Modify indenting setting
    set autoindent			" autoindent always ON
    set tabstop=4
    set softtabstop=4   " number of space in tab when editing <new>
    set expandtab
    set shiftwidth=4
    set smarttab
    set autoindent
    filetype indent plugin on

" Persist undo history between file editing session
    set undofile			" persist track change on a file
    "set undodir=~/.vim/undodir

" Display 5 lines above/below the cursor when scrolling with a mouse
    set scrolloff=5

" Change the appear of the cursor on 'Insert' or 'Normal' mode
    let &t_SI="\e[6 q"
    let &t_EI="\e[2 q"
    " autocmd InsertEnter * set cul
    " autocmd InsertLeave * set nocul
    set cul

" Highlight matching search
    set hlsearch

" Speed up scrolling in vim
    set ttyfast

" Modify some other setting about files
    set encoding=utf-8
    set backspace=indent,eol,start	" fix common backspace problems
    set hidden                      " allow to switch to another buffer without writting change

" Status bar
    set laststatus=2
    set statusline^=%{coc#status()}

" Toggle paste
    set pastetoggle=<F10>
" -----------------------

" Display options
    set showmode
    set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between
" them.
    set matchpairs+=<:>

    set wildmenu			" display all matching file when we tab complete
    " set wildmode=list:full
    set wildignore=*.o,*obj,*.git,*.class,**/node_modules/**
    set nowrap			" don't wrap long lines
    set number relativenumber	" show line and relative line numbers
    set showmatch			" highlight matching parenthesis and brackets
    set cursorline

" reload file when change happen in other editors
    set autoread

" leader
    let mapleader=","
    syntax on
    " set mouse=a
    " set clipboard=unnamedplus	" compartir portapapeles

" key map setting
    " map Q !!$SHELL<Enter>   " normal mode mapping
    map <F6> :setlocal spell! spelllang=es<Enter>   " ]s 'selecciona la palabra' z= muestra sugerencia
    map nt :bnext<cr>
    map pt :bprev<cr>
    map <leader>ee :bdelete<cr>
    inoremap ii <Esc>
    inoremap <leader><tab> <C-n>
    vnoremap ii <Esc>

    map <leader>m :NERDTreeToggle<cr>
    noremap <leader>w :w<cr>
    noremap <leader>q :q<cr>
    noremap <leader>wq :wq<cr>
    noremap <leader>qq :q!<cr>

    " move into the options of 'complete'
    inoremap jk ()<Esc>i
    nnoremap tt  :tabnew<CR>

    " Left to highlight matching search
    nnoremap <leader><space> :nohlsearch<cr>

    " Partir la pantalla en dos
    noremap <leader>s :vsplit<cr>

    " Aplicar codeAction a la región seleccionada
    " xmap <leader>a <Plug>(coc-codeaction-selected)
    " nmap <leader>a <Plug>(coc-codeaction-selected)

" Navegando con guias
"    inoremap ;guid <++>

" Configuracion de plugins
    so ~/.vim/plugins.vim

" ColorScheme
    colorscheme codedark

" -- FOLDING --
    set foldmethod=syntax   " syntax highlighting items specify folds
    set foldcolumn=1        " defines 1 col at window left, to indicate folding
    let javaScript_fold=1   " activate folding by JS syntax
    set foldlevel=1000      " start file with all folds opened

" Search down into subfolders
    " set path+=**
" :b lets you autocomplete any open buffer

" Abbreviation
    :abbr #b /********************************************************
    :abbr #e ********************************************************/
