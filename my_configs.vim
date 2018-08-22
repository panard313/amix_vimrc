set nu

set t_Co=256

set wrap

"quick save file
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>qa :qa<cr>
nnoremap <Leader>fw :w<cr>
nnoremap <Leader>fq :q<cr>
noremap  <expr>0     col('.') == 1 ? '^': '0'

set mouse -=a
highlight WhitespaceEOL ctermbg=cyan guibg=red
match WhitespaceEOL /\s\+$/

"for tagbar
nmap <F2> :TagbarToggle<CR>
nnoremap <Leader>tt :TagbarToggle<cr>
let g:tagbar_left = 1 "左侧显示
let g:tagbar_width = 60 "宽度30,默认40
let g:tagbar_autofocus = 1 "打开后光标置于tarbar
let g:tagbar_sort = 0 "不排序
let g:tagbar_autoclose = 1 "跳转后关闭tagbar
let g:tagbar_zoomwidth = 1 "适应宽度


let g:solarized_termtrans = 1

let g:pymode_python = 'python2'

" highlight search result
set hlsearch "search highlight"

imap jk <esc>
imap jj <esc>
"inoremap kj <esc>
inoremap kj <RIGHT>

" paste mode hot key
set pastetoggle=<F12>

" enable rainnow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"

" disable version warning
let g:go_version_warning = 0

" enable neocomplete
"let g:neocomplete#enable_at_startup = 1

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1
