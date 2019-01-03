" ----------common settings----------
"  no line number
set nu
" support 256 color
set t_Co=256
" auto wrap
set wrap
" disable mouse
set mouse -=a


" ----------quick save file----------
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>qa :qa<cr>
nnoremap <Leader>fw :w<cr>
nnoremap <Leader>fq :q<cr>


" ----------insert mode map----------
inoremap jj <esc>
inoremap kj <Left>
inoremap jk <Right>
" unmap esc, use jj force
" inoremap <esc> <nop>


" ----------motion----------
" move to head or none blank
nnoremap <expr>0     col('.') == 1 ? '^': '0'


" ----------edit vimrc----------
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit ~/.vim_runtime/my_configs.vim<cr>


" ----------encoding----------
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


" ----------highlight----------
"  highlight blank EOL
highlight WhitespaceEOL ctermbg=cyan guibg=red
match WhitespaceEOL /\s\+$/

" highlight current line
set cursorline

let g:solarized_termtrans = 1

" highlight tabs
highlight SpecialKey ctermfg=red
set list
set listchars=tab:T>

" disable Background Color Erase (BCE)
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

" highlight search result
set hlsearch "search highlight"


" ----------indent----------
" indent guide line
" --- thanaelkane/vim-indent-guides
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"let g:indent_guides_tab_guides = 0
" --- Yggdroot/indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '▏'


" ----------hotkeys----------
" paste mode hot key
set pastetoggle=<F12>


" ----------misc----------
let g:pymode_python = 'python2'

" disable version warning
let g:go_version_warning = 0

" ----------fold----------
" disable fold by default
let g:foldenable = 0
" map <Leader>z to enable fold, and set foldmethod to indent
nnoremap <Leader>z :set foldenable<cr>:set foldmethod=indent<cr>zR


" ----------comment----------
nnoremap <leader>bo :set paste<cr>o// Task-7097997-BEGIN xiong.chen@tcl.com disable SmartManager, enable DuraSpeed<esc>:set nopaste<cr><S-v>=
nnoremap <leader>bp :set paste<cr>o// Task-7097997-end xiong.chen@tcl.com disable SmartManager, enable DuraSpeed<esc>:set nopaste<cr><S-v>=




" ----------------------------------------plugin settings----------------------------------------

" ----------tagbar----------
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :NERDTreeToggle<CR>
let g:tagbar_left = 1 "左侧显示
let g:tagbar_width = 60 "宽度30,默认40
let g:tagbar_autofocus = 1 "打开后光标置于tarbar
let g:tagbar_sort = 0 "不排序
let g:tagbar_autoclose = 1 "跳转后关闭tagbar
let g:tagbar_zoomwidth = 1 "适应宽度


" ----------NerdTree----------
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>tt :TagbarToggle<cr>


" ----------rainbow----------
" enable rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"


" ----------auto complete----------
" enable neocomplete
"let g:neocomplete#enable_at_startup = 1

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1


" ----------Markdown----------
" disable auto fold when open markdown document
let g:vim_markdown_folding_disabled = 1
" disable autoapirs in markdown, which is boring when type ```
au Filetype markdown let b:autopairs_enabled = 0


" ----------Ctrlp----------
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
" exchange c-t and enter, open file in new tab by default
" (but if use buftabline, every buf if a tab, don't need it)
"let g:ctrlp_prompt_mappings = {
"    \ 'AcceptSelection("e")': ['<c-t>'],
"    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"    \ }


" ----------gitgutter----------
" show modified lines
nnoremap <silent> <leader>gd :GitGutterToggle<cr>
" show git log of current line
nnoremap <Leader>gs :<C-u>call gitblame#echo()<CR>
" max sign lines
let g:gitgutter_max_signs = 1000


" ----------buf tab line----------
" show every buffer as tab
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bb :bprev<CR>


