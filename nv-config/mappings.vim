imap jj <esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"修改vim的正则表达
nmap / /\v
vmap / /\v

""使用tab键来代替%进行匹配跳转
nmap <tab> %
vmap <tab> %

nnoremap <leader>v v`]

"tab切换
nmap <leader>t gt
nmap <leader>r gT

"<leader>空格快速保存
nmap <leader><space> :w<cr>

nmap <leader>q :execute "cd" expand("%:h")<CR> "切换到当前目录
nmap <leader>s :1,%s///cg<left><left><left><left>   "搜索替换


"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nmap <leader>w <c-w>v<c-w>l
nmap <leader>wc <c-w>c
nmap <leader>ww <c-w>w

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
