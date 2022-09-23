call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
" --- Navigate either one window and another
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/nerd-fonts'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'
Plug 'udalov/kotlin'

" Klotin


call plug#end()

" NERDTree
    let g:NERDTreeIgnore = ['^node_modules$']

" NERDCommenter
    let g:NERDSpaceDelims = 1
    " show hide file (.<file>)
    let NERDTreeShowHidden=1
    nmap -- <Plug>NERDCommenterToggle
    vmap -- <Plug>NERDCommenterToggle

" Vim airline
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    " let g:airline_theme = 'deus'
    let g:airline_theme = 'onedark'

" Vim devicons
    " set macligatures
    set guifont=Fira\ Code:h12

" Coc Vim
"   - coc config
    let g:coc_global_extensions = [
        \ 'coc-snippets',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-eslint',
        \ 'coc-prettier',
        \ 'coc-json',
        \ 'coc-emmet',
        \ 'coc-html',
        \ 'coc-python',
        \ 'coc-solargraph',
        \ 'coc-sh',
        \ 'coc-go',
        \ 'coc-kotlin'
     \ ]
"   - Coc key mapping
    noremap gs :CocSearch<space>
    " Go to the definition
    nmap <silent> gd <Plug>(coc-definition)
    " Back to the definition
    nmap <silent> bd <c-o>
    nmap <silent> gy <Plug>(coc-type-definitio)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    " Rename current word
    nmap <F5> <Plug>(coc-rename)

"   - Prettier
    command! -nargs=0 Prettier :CocCommand prettier.formatFile
    vmap <leader>f <Plug>(coc-format-selected)
    nmap <leader>f <Plug>(coc-format-selected)
