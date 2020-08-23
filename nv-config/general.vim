syntax enable
filetype plugin indent on

let g:mapleader = ","

"Color&Ruler Settings
set termguicolors " 一定要设置，不然颜色有可能不对
set guifont=DroidSansMono\ Nerd\ Font\ 11
set colorcolumn=85           "彩色显示第85行
set background=dark          "使用color solarized
set cursorline               "设置光标高亮显示
set cursorcolumn             "光标垂直高亮
set mouse=a                  "鼠标滚动
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber   "相对行号 要想相对行号起作用要放在显示行号后面


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
"set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
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
set clipboard=unnamedplus               " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
