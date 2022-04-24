" install vim-plug
let plugblob = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
let plugfile = expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(plugfile)
  execute("!curl -fLo '".plugfile."' --create-dirs '".plugblob."'")
endif

syntax enable
let g:mapleader = ","
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""Plug Settings"""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')
  "UI Plugin"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'rakr/vim-one'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme = 'molokai'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
    let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
    let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
    let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
    let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
    let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
    let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
  Plug 'ryanoasis/vim-devicons'
  Plug 'luochen1990/rainbow'
    let g:rainbow_active = 1


  "Vim Feature Plugin""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'kana/vim-fakeclip'
    let g:fakeclip_no_default_key_mappings=1
    nmap <leader>y <Plug>(fakeclip-Y)
    vmap <leader>y <Plug>(fakeclip-y)
    nmap <leader>p <Plug>(fakeclip-p)
    vmap <leader>p <Plug>(fakeclip-p)

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "CocInstall coc-explorer coc-pairs coc-lists coc-snippets coc-diagnostic coc-highlight coc-markdownlint coc-bookmark
    "CocInstall coc-prettier coc-java coc-python coc-yaml coc-json coc-eslint coc-tsserver coc-sql coc-go coc-css coc-html coc-vetur
    let g:coc_explorer_global_presets = {'floating': {'position': 'floating','open-action-strategy': 'sourceWindow'}}
    let g:coc_user_config = {"explorer.icon.enableNerdfont": 1, "explorer.floating.width": 120}
    nmap <leader>e :CocCommand explorer --preset floating<CR>

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
    nnoremap <c-p> :Files<cr>
    nnoremap <leader>bf :Buffers<cr>
    let g:fzf_buffers_jump = 1

  "Plug 'airblade/vim-gitgutter'
  Plug 'voldikss/vim-floaterm'
    let g:floaterm_gitcommit='floaterm'
    let g:floaterm_autoinsert=1
    let g:floaterm_width=0.8
    let g:floaterm_height=0.8
    let g:floaterm_wintitle=0
    let g:floaterm_autoclose=1
    " let g:floaterm_keymap_new    = '<F7>'
    " let g:floaterm_keymap_prev   = '<F8>'
    " let g:floaterm_keymap_next   = '<F9>'
    let g:floaterm_keymap_toggle = '<C-o>'
    nmap <leader>lz :FloatermNew lazygit<cr>


  "Coding function Plugin""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'mattn/emmet-vim'
  Plug 'ervandew/supertab'
    let g:SuperTabDefaultCompletionType = "<c-n>"
  Plug 'tpope/vim-commentary'
    autocmd FileType apache setlocal commentstring=#\ %s
    nmap <leader>c <Plug>Commentary
    xmap <leader>c <Plug>Commentary
    omap <leader>c <Plug>Commentary
    nmap <leader>cc <Plug>CommentaryLine
  Plug 'ntpeters/vim-better-whitespace'
    let g:better_whitespace_enabled=1
    let g:current_line_whitespace_disabled_hard=1
    highlight ExtraWhitespace ctermbg=red
  Plug 'justinmk/vim-sneak'
call plug#end()

"fix vscode folding
if(exists("g:vscode"))
    nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
    nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
    nnoremap zc :call VSCodeNotify('editor.fold')<CR>
    nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
    nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
    nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
    nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>

    function! MoveCursor(direction) abort
        if(reg_recording() == '' && reg_executing() == '')
            return 'g'.a:direction
        else
            return a:direction
        endif
    endfunction

    nmap <expr> j MoveCursor('j')
    nmap <expr> k MoveCursor('k')
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""General Settings""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Color&Ruler Settings
set termguicolors " 一定要设置，不然颜色有可能不对
set colorcolumn=85           "彩色显示第85行
set background=dark          "使用color solarized
set cursorline               "设置光标高亮显示
set cursorcolumn             "光标垂直高亮
set mouse=a                  "鼠标滚动
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber   "相对行号 要想相对行号起作用要放在显示行号后面

colorscheme one


"Tab&Indent Setting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent


"Window Settings
set pumheight=10                        " Makes popup menu smaller
set signcolumn=yes:1 "防止提示文字闪动
"set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set showtabline=2                       " Always show tabs

set hidden              " TextEdit might fail if hidden is not set.
set ignorecase "设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set shortmess+=c              " Don't pass messages to |ins-completion-menu|.

set whichwrap=b,s,<,>,[,]  "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions=cro                   " Stop newline continution of comments

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""KeyMap Settings"""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap jj <esc>

""使用tab键来代替%进行匹配跳转
nmap <tab> %
vmap <tab> %

nnoremap <leader>v v`] "选中最近修改或粘贴

"tab切换
nmap <leader>t gt
nmap <leader>r gT

"<leader>空格快速保存
nmap <leader><space> :w<cr>

nnoremap <leader>q :cd %:p:h<CR>:pwd<CR>
" nmap <leader>s :1,%s///cg<left><left><left><left>   "搜索替换
nnoremap <leader>ft vatzf    "折叠html标签 ,fold tag

" 窗口管理
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nmap <leader>w <c-w>v<c-w>l
nmap <leader>wc <c-w>c
nmap <leader>ww <c-w>w
nmap <leader>ws <c-w>s
