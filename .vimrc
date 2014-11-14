
" Fork me on GITHUB  https://github.com/vgod/vimrc

" read https://github.com/vgod/vimrc/blob/master/README.md for more info


" For pathogen.vim: auto load all plugins in .vim/bundle


"let g:pathogen_disabled = []
"if !has('gui_running')
"   call add(g:pathogen_disabled, 'powerline')
"endif
"
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"General Settings

set nocompatible	" not compatible with the old-fashion vi mode
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set term=xterm

set rtp+=~/.vim/vundle.git/
call vundle#rc()

"Bundle 'vim-scripts/Smart-Parentheses'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-surround'
Bundle 'Twinside/vim-cuteErrorMarker'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/VisIncr'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'vim-scripts/javacomplete'
Bundle 'vgod/scala-vim-support'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/pythoncomplete'
Bundle 'pangloss/vim-javascript'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/VimClojure'
Bundle 'jpalardy/vim-slime'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'myusuf3/numbers.vim'
Bundle 'Shougo/neocomplcache'
" Bundle 'Townk/vim-autoclose'
"Bundle 'rson/vim-conque'
Bundle 'digitaltoad/vim-jade'
Bundle 'vim-scripts/VimClojure'
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-rails'
Bundle 'jc00ke/thor.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'epeli/slimux'
Bundle 'teramako/jscomplete-vim'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'ujihisa/neco-ghc'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/slim'
Bundle 'spolu/dwm.vim'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
Bundle 'vim-scripts/taglist.vim'
" Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
Bundle 'elixir-lang/vim-elixir'
Bundle 'carlosgaldino/elixir-snippets'
Bundle 'matthewsimo/angular-vim-ultisnips'
" Bundle 'christoomey/vim-tmux-navigator'
Bundle 'derekwyatt/vim-scala'
Bundle 'wting/rust.vim'
Bundle 'heartsentwined/vim-emblem'
" Bundle  'valloric/youCompleteMe'
Bundle 'vim-ruby/vim-ruby'

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc


filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

syntax on		" syntax highlight
set hlsearch		" search highlighting

if has("gui_running")	" GUI color and font settings
  set guifont=Monaco:h15
  set background=dark 
  set t_Co=256          " 256 color mode
  set cursorline        " highlight current line
  "colors moria
  colorscheme solarized
  highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
else
" terminal color settings
 "colors vgod
endif

if $TMUX == ''
   set clipboard=unnamed" yank to the system register (*) by default
endif
set showmatch		" Cursor shows matching ) and }
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent		" auto indentation
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=2 
   set shiftwidth=2 

   au FileType Makefile set noexpandtab
"}      							

" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction

"}


" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"--------------------------------------------------------------------------- 
" Tip #382: Search for <cword> and replace with input() in all open buffers 
"--------------------------------------------------------------------------- 
fun! Replace() 
    let s:word = input("Replace " . expand('<cword>') . " with:") 
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge' 
    :unlet! s:word 
endfun 


"--------------------------------------------------------------------------- 
" USEFUL SHORTCUTS
"--------------------------------------------------------------------------- 
" set leader to ,
let mapleader=","
let g:mapleader=","

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

" open the error console
map <leader>cc :botright cope<CR> 
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" --- move around splits {
" move to and maximize the below split 
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split 
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split 
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split  
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others 
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab 
map <S-H> gT
" go to next tab
map <S-L> gt

" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR> 

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h

" Writing Restructured Text (Sphinx Documentation) {
   " Ctrl-u 1:    underline Parts w/ #'s
   noremap  <C-u>1 yyPVr#yyjp
   inoremap <C-u>1 <esc>yyPVr#yyjpA
   " Ctrl-u 2:    underline Chapters w/ *'s
   noremap  <C-u>2 yyPVr*yyjp
   inoremap <C-u>2 <esc>yyPVr*yyjpA
   " Ctrl-u 3:    underline Section Level 1 w/ ='s
   noremap  <C-u>3 yypVr=
   inoremap <C-u>3 <esc>yypVr=A
   " Ctrl-u 4:    underline Section Level 2 w/ -'s
   noremap  <C-u>4 yypVr-
   inoremap <C-u>4 <esc>yypVr-A
   " Ctrl-u 5:    underline Section Level 3 w/ ^'s
   noremap  <C-u>5 yypVr^
   inoremap <C-u>5 <esc>yypVr^A
"}

" shortcut for :NERDTree
nmap <Leader>n :NERDTree<CR>

" Shortcut for :TagBar
nmap <Leader>s :TagbarOpen<CR>

"--------------------------------------------------------------------------- 
" PROGRAMMING SHORTCUTS
"--------------------------------------------------------------------------- 

" Ctrl-[ jump out of the tag stack (undo Ctrl-])
map <C-[> <ESC>:po<CR>

" ,g generates the header guard
map <leader>g :call IncludeGuard()<CR>
fun! IncludeGuard()
   let basename = substitute(bufname(""), '.*/', '', '')
   let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
   call append(0, "#ifndef " . guard)
   call append(1, "#define " . guard)
   call append( line("$"), "#endif // for #ifndef " . guard)
endfun



" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=jscomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
              \	if &omnifunc == "" |
              \		setlocal omnifunc=syntaxcomplete#Complete |
              \	endif
endif

set cot-=preview "disable doc preview in omnicomplete

" make CSS omnicompletion work for SASS and SCSS
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufNewFile,BufRead *.sass             set ft=sass.css

"--------------------------------------------------------------------------- 
" ENCODING SETTINGS
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun


"--------------------------------------------------------------------------- 
" PLUGIN SETTINGS
"--------------------------------------------------------------------------- 


" ------- vim-latex - many latex shortcuts and snippets {

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
set grepprg=grep\ -nH\ $*
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"}


" --- AutoClose - Inserts matching bracket, paren, brace or quote 
" fixed the arrow key problems caused by AutoClose
if !has("gui_running")	
   set term=linux
   imap OA <ESC>ki
   imap OB <ESC>ji
   imap OC <ESC>li
   imap OD <ESC>hi

   nmap OA k
   nmap OB j
   nmap OC l
   nmap OD h
endif



" --- Command-T
let g:CommandTMaxHeight = 15

" --- SuperTab
" let g:SuperTabDefaultCompletionType ="context"

let g:SuperTabDefaultCompletionType = "<c-n>"
" --- EasyMotion
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment


" --- TagBar
" toggle TagBar with F7
nnoremap <silent> <F7> :TagbarToggle<CR> 
" set focus to TagBar when opening it
let g:tagbar_autofocus = 1

" --- PowerLine
" let g:Powerline_symbols = 'fancy' " require fontpatcher

set number
:imap jj <ESC>
:imap <leader>e <C-o>A
:imap <leader>a <C-o>I
:imap <leader>o <C-o>o
:imap <leader>O <C-o>O
" za 关闭,zo打开
" set foldmethod=indent 

" setting tmux for vim
let g:slime_target = "tmux"

" set t_te= t_ti=
" au VimLeave * :!clear

" minibufexpl.vim
"  let g:miniBufExplMapWindowNavVim = 1
"  let g:miniBufExplMapWindowNavArrows = 1
"  let g:miniBufExplMapCTabSwitchBuffs = 1

"  enable auto-complete JavaScript syntaxes, shortcut is C-x then C-o
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FIleType css set omnifunc=csscomplete#CompleteCSS

" enable highlight for *.ru file
au BufRead,BufNewFile *.ru setfiletype ruby


" Macvim zsh and rvm rubies
set shell=/bin/sh

" Clojure setting
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
autocmd FileType lisp,clojure let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "'")
autocmd FileType lisp,clojure let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "`")


" javascript complete plugin
let g:node_usejscomplete = 1
let g:jscomplete_use = 1
" let g:neocomplcache_enable_at_startup = 1
"
"
" setting haddock_browser for haskell
au BufEnter *.hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
let g:ghc = "/usr/local/bin/ghc"
