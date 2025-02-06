" ----------common settings----------
"  no line number
set nu
" support 256 color
set t_Co=256
" auto wrap
set wrap
" disable mouse
set mouse -=a

colorscheme onedark

" tab indent
"set autoindent
"set noexpandtab
"set tabstop=4
"set shiftwidth=4


" ----------quick save file----------
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>qa :qa<cr>
nnoremap <Leader>fw :w<cr>
nnoremap <Leader>fq :q<cr>

nnoremap <F5> :update<CR>:source %<CR>

" ----------insert mode map----------
inoremap jj <esc>
inoremap kj <Left>
inoremap jk <Right>
" unmap esc, use jj force
" inoremap <esc> <nop>


" ----------status line indent stat----------
set noshowmode

let g:lightline = {
      \   'active': {
      \     'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype'], ['indent']]
      \   },
      \   'component': {
      \     'indent': '%{&expandtab?"SPACE |":"TAB |"}',
      \   },
      \   'colorscheme': 'deus',
      \ }

autocmd FileType c setlocal noexpandtab


" ----------insert mode map----------
vnoremap <Leader>y "+y


" ----------motion----------
" move to head or none blank
nnoremap <expr>0     col('.') == 1 ? '^': '0'

" quick head or tail
nnoremap <space>h ^
nnoremap <space>l $

" move half page
nnoremap <space>j <C-d>
nnoremap <space>k <C-u>

" prev and next position
nnoremap <C-1> <C-o>
nnoremap <C-2> <C-i>


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

" highlight current column
set cursorcolumn
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

let g:solarized_termtrans = 1

" ----------highlight tabs----------
" SeeTab: toggles between showing tabs and using standard listchars
" press F9 to enable Specialkey highlight
"nnoremap <F9> :call SeeTab()<CR>
"autocmd BufReadPost * call SeeTab()

fu! SeeTab()
  if !exists("g:SeeTabEnabled")
    let g:SeeTabEnabled = 1
    let g:SeeTab_list = &list
    let g:SeeTab_listchars = &listchars
    let regA = @a
    redir @a
    silent hi SpecialKey
    redir END
    let g:SeeTabSpecialKey = @a
    let @a = regA
    silent! hi SpecialKey guifg=black guibg=magenta ctermfg=black ctermbg=magenta
    set list
    set listchars=tab:\|\
  else
    let &list = g:SeeTab_list
    let &listchars = &listchars
    silent! exe "hi ".substitute(g:SeeTabSpecialKey,'xxx','','e')
    unlet g:SeeTabEnabled g:SeeTab_list g:SeeTab_listchars
  endif
endfunc
com! -nargs=0 SeeTab :call SeeTab()


" ----------toggle indent tabs----------
" 切换indent缩进用table还是空格
function! ToggleIndent()
  if &expandtab
    set noexpandtab
    set tabstop=4
    set shiftwidth=4
    echo "Indent with tab"
  else
    set expandtab
    set tabstop=4
    set shiftwidth=4
    echo "Indent with spaces"
  endif
endfunction

command! ToggleIndent call ToggleIndent()
nnoremap <Leader>ti :ToggleIndent<cr>

" disable Background Color Erase (BCE)
if &term =~ 'xterm-256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

" highlight search result
set hlsearch "search highlight"

" semantic highlight
nnoremap <Leader>c :SemanticHighlightToggle<cr>
nnoremap <Leader>cc :SemanticHighlightRevert<cr>
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,8,125,124,27]


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
nnoremap <leader>bo :set paste<cr>o// Task-8976913 Add begin by chenxiong 20200304, fix app lunch slow after fota<esc>:set nopaste<cr><S-v>=
nnoremap <leader>bp :set paste<cr>o// Task-8976913 Add end by chenxiong 20200304, fix app lunch slow after fota<esc>:set nopaste<cr><S-v>=




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
let g:tagbar_highlight_follow_insert = 1 "follow cursor


" ----------NerdTree----------
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>tt :TagbarToggle<cr>


" ----------rainbow----------
" enable rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"


" ----------auto complete----------
" enable neocomplete
let g:neocomplete#enable_at_startup = 1

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1


" ----------Markdown----------
" disable auto fold when open markdown document
" when open, zM to fold all, zR to open all, ]] to next
"let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 3
" conceal conceal [link text](link url) as just link text
let g:vim_markdown_conceal = 0
" disable autoapirs in markdown, which is boring when type ```
au Filetype markdown let b:autopairs_enabled = 0


" ----------html----------
au FileType html setlocal syntax=OFF


" ----------Ctrlp----------
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_by_filename = 1
let g:ctrlp_open_new_file = 'r'
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
nnoremap <silent> <leader>d :GitGutterToggle<cr>
" show git log of current line
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" max sign lines
let g:gitgutter_max_signs = 1000


" ----------buf tab line----------
" show every buffer as tab
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bb :bprev<CR>


" ----------remove whitespace tail----------
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
nnoremap <Leader>rb :TrimWhitespace<cr>


" ----------MRU----------
"let MRU_File = $HOME/.cache/.vim_mru_files
let MRU_Max_Entries = 100


" ----------vim-cpp-modern----------
" To enable member highlight, install "https://github.com/sheerun/vim-polyglot",
" and copy "https://github.com/bfrg/vim-cpp-modern/blob/master/after/syntax/{c.vim, cpp.vim}" override
"let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
