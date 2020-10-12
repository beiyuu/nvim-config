# NeoVim 配置

## Vim-Plug 安装

NeoVim 采用`XDG Base Directory Specification(XDG 基本目录规范)`管理配置文件，先手动安装`Vim-Plug`：

``` Shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

或者：
`init.vim`中添加了自动`install vim-plug`的检查脚本：

``` Shell
let plugblob = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
let plugfile = expand("~/.config/nvim/autoload/plug.vim")
if !filereadable(plugfile)
  execute("!curl -fLo '".plugfile."' --create-dirs '".plugblob."'")
endif
```

完成后，使用`:PlugInstall`开始安装配置的插件。

## 核心配置

- 字体安装：下载`Nerd Fonts`后，通过 Mac & Windows 系统功能安装字体，在`iTerm2`或`Terminal(WSL)`中选择即可，NeoVim 中无需字体相关配置。
- Leader Key：`let g:mapleader = ","`
- ESC 映射：`imap jj <esc>`

## 插件选择

- `Plug 'rakr/vim-one'`     主题插件
- `Plug 'vim-airline/vim-airline'`    状态栏主题
- `Plug 'ryanoasis/vim-devicons'`   炫酷图标，依赖 Nerd Fonts
- `Plug 'luochen1990/rainbow'`      括号彩色匹配
- `Plug 'kana/vim-fakeclip'`        拉齐各平台复制粘贴，使用时屏蔽默认，完全隔离Vim和系统剪贴板
- `Plug 'neoclide/coc.nvim', {'branch': 'release'}`    自动补全神器
- `Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }`   文件模糊查找
- `Plug 'junegunn/fzf.vim'`    文件模糊查找
- `Plug 'voldikss/vim-floaterm'`   Float terminal
- `Plug 'mattn/emmet-vim'` HTML 快速补全
- `Plug 'ervandew/supertab'`     Tab功能增强，使用Tab键补全选择等
- `Plug 'tpope/vim-commentary'`  自动注释插件
- `Plug 'ntpeters/vim-better-whitespace'` 清除行末空格
- `Plug 'justinmk/vim-sneak'`  光标快速移动
