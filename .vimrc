" vim:fdm=marker

" Info {{{
"    EragonJ ( eragonj@eragonj.me )
"    http://eragonj.me
" }}}

set shell=bash\ -i "for vim-instant-markdown

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'thinca/vim-template'
Plugin 'simplecommenter'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mileszs/ack.vim'
Plugin 'surround.vim'
Plugin 'mattn/emmet-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'ap/vim-css-color'
Plugin 'jshint.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rking/ag.vim'
Plugin 'vim-stylus'
Plugin 'rizzatti/dash.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'junkblocker/patchreview-vim'
Plugin 'codegram/vim-codereview'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'mbbill/undotree'
Plugin 'wakatime/vim-wakatime'
Plugin 'suan/vim-instant-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'matchit.zip'
Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on

" Normal mapping{{{
"    <leader> is '\'
nmap <tab> v>
nmap <s-tab> v<
nmap <silent> <leader>t :TlistToggle<CR>
nmap <Space> i<Space>
nmap <silent> <leader>c :CoffeeMake<CR>
"    Map F2 to reload this file
nmap <F2> :source %<CR>
nmap <F5> :UndotreeToggle<CR>
nmap ; :
nmap <silent> T :NERDTreeToggle<CR>
nmap <silent> t :NERDTreeFind<CR>
nmap \q :q<CR>
nmap wq :wq<CR>

" for FuzzyFinder
nmap ff :FufFile<CR>
nmap fc :FufCoverageFile<CR>
nmap fcd :FufDir<CR>

" Visual mapping {{{
"     <tab> ... conflict with slippery Snippet
vmap <tab> >gv
vmap <s-tab> <gv
" }}}

" Easymotion {{{
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" }}}

" Emmet setting {{{
imap <c-e> <c-y>,
" }}}

" vim-livedown {{{
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337
" }}}

" EJ command{{{
" Ht maps to help <args> in tab page
command! -nargs=1 HT :tab help <args>

" SUDO can help me save files when permission is not granted
command! SUDO w !sudo tee % > /dev/null
command! -nargs=0 WriteWrite :w
cnoreabbrev ww WriteWrite
" }}}

" EJ autocmd{{{
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.twig set ft=htmldjango
au BufRead,BufNewFile *.ejs set ft=html
au BufRead,BufNewFile *.coffee set shiftwidth=2 softtabstop=2 tabstop=2
au Bufread,BufNewFile *.js.es6 set ft=javascript
au Bufread,BufNewFile *.md set ft=markdown
au BufRead,BufNewFile * :IndentGuidesEnable
" }}}

" perl tt syntax {{{
au! Bufread,BufNewFile *.tt setfiletype html
au! Filetype perl :set equalprg=perltidy
" }}}

syntax enable

let php_sql_query = 1
let php_folding = 1

" Personnal setting{{{

filetype on
filetype plugin on
set mls=5
set pastetoggle=<C-k> "<C-i> will conflict with <Tab> in insert mode
set cindent
set smartindent
set autoindent
set noswapfile

" Tab settings
set expandtab " 強制把 tab 轉為 空白
set shiftwidth=2 " 設定 tab 的寬
set tabstop=2 " tab 視為 {n} 個空白
set softtabstop=2 " 搭配 expandtab 使用 {n} 個空白視為一個 tab 然後刪除

set showcmd
set showmode
set ruler
set sj=2
set so=6
set foldcolumn=2
set colorcolumn=80
set nu
set modeline
" Highlight the search result
set nohlsearch " With easymotion, we don't need this search highlight
set incsearch
set noignorecase " Need this to work with easy-motion
" Complete longest common string, then each full match
set wildmode=longest,list
" }}}

" NerdTree settings {{{
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0
" NERDTress File highlighting

" airline settings {{{
set laststatus=2
" }}}

" YCM settings {{{
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_complete_in_comments = 1
" let g:ycm_complete_in_strings = 0
let g:ycm_filetype_blacklist = {
  \ 'gitcomit' : 1,
  \ }
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_min_num_of_chars_for_completion = 99
" }}}

" ctrlp settings {{{
" Let's use ag, and this would be super-fast !
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
endif
" }}}

" fuzzy finder settings {{{
let g:fuf_file_exclude = '\v\.(exe|so|dll|swp|tar|zip|png|jpg|jpeg|gif|bmp|png)$'
let g:fuf_dir_exclude = '\v[\/]\.(git|hg|svn)$|xulrunner-sdk-*|node_modules'
let g:fuf_coveragefile_exclude = '\v\~$|(^|[/\\])(bower_componenets|b2g|build_stage|test_media)($|[/\\])|\.(o|exe|dll|bak|orig|swp|jpg|jpeg|gif|bmp|png)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
" }}}

" Ag settings {{{
let g:agprg = "ag --column -i"
" }}}

" vim-vue settings {{{
let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
" }}}

if ! has('gui')
    set t_Co=16
    hi Comment ctermfg=10 ctermbg=black
    hi IncSearch ctermfg=black ctermbg=darkgreen
    hi Search ctermfg=black ctermbg=darkgreen
    hi SpecialKey ctermfg=10

    hi FoldColumn ctermbg=black ctermfg=green
    hi LineNr ctermbg=black ctermfg=green
    hi Folded ctermbg=darkgreen ctermfg=black

    hi TabLineFill term=reverse ctermfg=white
    hi TabLine ctermfg=darkgreen ctermbg=black
    hi TabLineSel ctermbg=darkgreen ctermfg=black
    hi Cursor ctermbg=darkgreen
    hi VertSplit ctermbg=black ctermfg=black

    hi StatusLine ctermfg=darkgreen
    hi StatusLineNC ctermfg=black ctermbg=darkgreen
    hi Visual ctermbg=green ctermfg=black
    " Add this to make all Normal words' background black
    hi Normal ctermbg=black
    hi NonText ctermfg=darkgreen
else
    set guifont=Monaco:h16
    set background=dark
    colorscheme koehler
    hi Folded guifg=white guibg=#222222
    hi colorcolumn guibg=#66B3FF
endif
