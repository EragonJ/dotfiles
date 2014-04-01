" vim:fdm=marker
 
" Info {{{
"    EragonJ ( eragonj@eragonj.me )
"    http://eragonj.me
" }}}

set nocompatible
filetype off  
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Kris2k/matchit'
" Not sure what's going on
" Bundle 'snipMate'
Bundle 'ervandew/supertab'
Bundle 'thinca/vim-template'
Bundle 'simplecommenter'
Bundle 'groenewege/vim-less'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'surround.vim'
Bundle 'mattn/emmet-vim'
Bundle 'derekwyatt/vim-scala'
" Bundle 'Syntastic'
Bundle 'ctrlp.vim'
Bundle 'ap/vim-css-color'
Bundle 'heavenshell/vim-jsdoc'
" Bundle 'Shutnik/jshint2.vim'
Bundle 'jshint.vim'
Bundle 'suan/vim-instant-markdown'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'

filetype plugin indent on

" Basis {{{
"    x  delete character under the cursor (short for "dl")
"    X  delete character before the cursor (short for "dh")
"    D  delete from cursor to end of line (short for "d$")
"    dw delete from cursor to next start of word
"    db delete from cursor to previous start of word
"    diw                delete word under the cursor (excluding white space)
"    daw                delete word under the cursor (including white space)
"    dG delete until the end of the file
" }}}

" Color Table{{{
"    NR-16   NR-8    COLOR NAME ~
"    0       0       Black
"    1       4       DarkBlue
"    2       2       DarkGreen
"    3       6       DarkCyan
"    4       1       DarkRed
"    5       5       DarkMagenta
"    6       3       Brown, DarkYellow
"    7       7       LightGray, LightGrey, Gray, Grey
"    8       0*      DarkGray, DarkGrey
"    9       4*      Blue, LightBlue
"    10      2*      Green, LightGreen
"    11      6*      Cyan, LightCyan
"    12      1*      Red, LightRed
"    13      5*      Magenta, LightMagenta
"    14      3*      Yellow, LightYellow
"    15      7*      White
" }}}

" Insert mapping {{{

" }}}

" Normal mapping{{{
"    <leader> is '\'
nmap <tab> v>
nmap <s-tab> v<
nmap <silent> <leader>t :TlistToggle<CR>
nmap <Space> i<Space>
nmap <silent> <leader>c :CoffeeMake<CR>
"    Map F2 to reload this file
nmap <F2> :source %<CR>
nmap ; :
nmap <silent> T :NERDTree<CR>
nmap <silent> time :read !date<CR>kddo

" for FuzzyFinder
nmap ff :FufFile<CR>
nmap fcd :FufDir<CR>

"    It is important for commands that can make them auto-complete
"    Ctrl-L means it can find the longest match and show up
"    Ctrl-D means it can find list all possibilities to the programmer
" cmap <Tab> <c-L><c-D>
" }}}

" Insert mapping {{{
" }}}

" Visual mapping {{{
"     <tab> ... conflict with slippery Snippet
vmap <tab> >gv 
vmap <s-tab> <gv
" }}}

" Insert mapping {{{
" inoremap {     {}<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {}    {}
" inoremap (     ()<Left>
" inoremap (<CR> (<CR>)<Esc>O
" inoremap ()    ()
" inoremap [     []<Left>
" inoremap [<CR> [<CR>]<Esc>O
" inoremap []    []
" }}}

" Slippery Snippet{{{
"     filetype on
"     filetype plugin on
"     set runtimepath+=~/.vim/textmateOnly
"     set runtimepath+=~/.vim/textmateOnly/after
"     let g:snip_start_tag="≮" .. special char in dig !<
"     let g:snip_end_tag="≯" .. special char in dig !>
" }}}

" Emmet setting {{{
imap <c-e> <c-y>,
" }}}

" EJ command{{{
" Ht maps to help <args> in tab page
command! -nargs=1 HT :tab help <args>

" SUDO can help me save files when permission is not granted
command! SUDO w !sudo tee % > /dev/null 
" }}}

" EJ autocmd{{{
" autocmd BufNewFile *.cpp call append(0,["#include <iostream>","using namespace std;","int main() {","","\<TAB>return 0;","}"])
" autocmd BufNewFile *.c                 call append(0,["#include <stdio.h>","int main() {","\<TAB>","\<TAB>return 0;","}"])
" autocmd BufNewFile *.php call append(0,["<?php","","?>"])
" au BufRead,BufNewFile *.scss set filetype=scss sw=2 ts=2 sts=2
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.twig set ft=htmldjango
au BufRead,BufNewFile *.ejs set ft=html
au BufRead,BufNewFile *.coffee set shiftwidth=2 softtabstop=2 tabstop=2
au BufRead,BufNewFile * :IndentGuidesEnable
" au BufWritePost,FileWritePost *.js :JSHint
" au BufWritePost,FileWritePost *.coffee :CoffeeLint | cwindow
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
set hlsearch
set incsearch 
set ignorecase " Make search ignorecase ( noignorecase instead )
" Complete longest common string, then each full match 
set wildmode=longest,list
" }}}

" TlistOption
" let Tlist_Auto_Open = 1

" coffeescript additionl setting {{{
" au! Filetype coffee :set sw=2 ts=2 sts=2
" }}}

" ctrlp settings {{{
let g:ctrlp_max_files=50000
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|swp|tar|zip|png|jpg|jpeg)$'
	\ }
" }}}

" Personnal fold{{{
" function! JavaScriptFold() 
"     setl foldmethod=syntax
"     setl foldlevelstart=1
"     syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend
" 
"     function! FoldText()
"         return substitute(getline(v:foldstart), '{.*', '{...}', '')
"     endfunction
"     setl foldtext=FoldText()
" endfunction
" au FileType javascript call JavaScriptFold()
" au FileType javascript setl fen
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

" deprecated {{{

" function! TAB()
"     set et sts=4 st=4 ts=4 
" endfunction
" 
" fun! Retab()
"     set list
"     set listchars=tab:>-,eol:$
"     set noexpandtab
"     retab!
"     set sw=4
"     set tabstop=4
"     set softtabstop=4
"     set expandtab
"     retab!
" endf
" com! Retab4 :cal Retab()

" }}}

