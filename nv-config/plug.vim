call plug#begin('~/.config/nvim/plugged')
  Plug 'scrooloose/nerdtree'
    nmap <leader>nt :NERDTree<cr>:set rnu<cr>
    let NERDTreeShowBookmarks=1
    let NERDTreeShowFiles=1
    let NERDTreeShowHidden=1
    let NERDTreeIgnore=['\.$','\~$']
    let NERDTreeShowLineNumbers=1
    let NERDTreeWinPos=1

  Plug 'ervandew/supertab'
    let g:SuperTabDefaultCompletionType = "<c-n>"

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'morhetz/gruvbox'

  Plug 'vim-airline/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline_powerline_fonts = 1
    let g:airline_theme= 'gruvbox'

  "Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'

  Plug 'luochen1990/rainbow'
    let g:rainbow_active = 1

call plug#end()

colorscheme gruvbox
