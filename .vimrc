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
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Kris2k/matchit'
" Not sure what's going on
" Bundle 'snipMate'
" Bundle 'ervandew/supertab'
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
" Bundle 'ctrlp.vim'
Bundle 'ap/vim-css-color'
Bundle 'heavenshell/vim-jsdoc'
" Bundle 'Shutnik/jshint2.vim'
Bundle 'jshint.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'
Bundle 'vim-stylus'
Bundle 'rizzatti/dash.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'shime/vim-livedown'
Bundle 'mxw/vim-jsx'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'junkblocker/patchreview-vim'
Bundle 'codegram/vim-codereview'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'Chiel92/vim-autoformat'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

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
nmap ; :
nmap <silent> T :NERDTreeToggle<CR>
nmap <silent> t :NERDTreeFind<CR>
nmap \q :q<CR>
nmap wq :wq<CR>

" for FuzzyFinder
nmap ff :FufFile<CR>
nmap fc :FufCoverageFile<CR>
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

" Supertab Setting {{{
" Supertab now can support two differnt mappings
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
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
au Bufread,BufNewFile *.js.es6 set ft=javascript
au Bufread,BufNewFile *.md set ft=markdown
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
set nohlsearch " With easymotion, we don't need this search highlight
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

" NerdTree settings {{{
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0
" NERDTress File highlighting

" airline settings {{{
set laststatus=2
" }}}

" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction
" 
" call NERDTreeHighlightFile('jade', 'green', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('js', 'Red', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
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

" JSX settings {{
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
