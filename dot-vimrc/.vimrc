set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-sort-motion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'valloric/MatchTagAlways'
Plugin 'Raimondi/delimitMate'
Plugin 'gregsexton/MatchTag'
Plugin 'mattn/emmet-vim'
Plugin 'jistr/vim-nerdtree-tabs' 
Plugin 'ternjs/tern_for_vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'msanders/snipmate.vim'
" Plugin 'tmhedbery/matchit'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'tpope/vim-fugitive'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'bkad/CamelCaseMotion'
Plugin 'rstacruz/sparkup'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'

" Prueba de plugins
Plugin 'othree/xml.vim'
Plugin 'PeterRincker/vim-argumentative'
Plugin 'Shougo/neocomplete.vim'
"vim-rails
"vim-ruby
"super-tab
"vim-vroom
"vim-dispatch

" Optional: "   Plugin 'honza/vim-snippets'

Plugin 'isRuslan/vim-es6' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set number
set relativenumber
set mouse=a 
set showmatch
set showcmd " display an incomplete command in statusline
set laststatus=2              " always show status line.
set clipboard+=unnamed " Yanks go on clipboard instead.
set pastetoggle=<F10> " toggle between paste and normal: for 'safer' pasting from keyboard
set ruler

set hlsearch                   " highlight search
set ignorecase                 " be case insensitive when searching
set smartcase                  " be case sensitive when input has a capital letter
set incsearch                  " show matches while typing

set list                      " display unprintable characters f12 - switches
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F12> :set invlist<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set t_Co=16
"colorscheme candyman
"colorscheme solarized
colorscheme monokai-chris

set background=dark
" set background=light

set autoindent 
set cindent 
set tabstop=4 
set shiftwidth=2 
set expandtab

filetype on
filetype plugin on
filetype indent on
:let g:html_indent_inctags = "html,body,head,tbody,script"
set smartindent

inoremap <leader><CR> <CR><C-o>==<C-o>O

let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" NERDTree tabs
let g:nerdtree_tabs_open_on_console_startup=1
"Nerd tree see hidden files
let NERDTreeShowHidden=1

"Pasar entre distintas partes de una ventana dividida facilmente
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nnoremap <Leader>s :SemanticHighlightToggle<cr>

"Syntastic recomendation
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_aggregate_errors = 1


let g:syntastic_html_checkers=['jshint']
let g:syntastic_javascript_checkers = ['jshint']

 " set syntastic to use jslint for html with sane params
"let g:syntastic_html_checkers=['jslint']
" predef test and equal are for qunit
"let g:syntastic_html_jslint_args="--sloppy --browser --vars --predef test --predef equal"
"---------------------------------------

map <leader>1  :setlocal spell spelllang=es<CR>
nmap <leader>2 ]s z= 1
nmap <leader>3 :setf html.javascript<CR>
nmap <leader>5 o. 


"para abrir la pagina en firefox
nnoremap <F5> :update<Bar>silent !xdg-open %:p &<CR>
nnoremap <F8> :silent !xdg-open <cfile> &<CR>

"poner eneter sin tener que entrar en modo insert
:map <leader>6 i<CR><Esc>

"--------------------------------
set backspace=2
set backspace=indent,eol,start
"---------------------------------

"no funciona el automando
"au BufRead *.html         setfiletype html.javascript
"au FileType html setfiletype html.javascript
au BufReadPost *.twig set syntax=html
"Reemplazar un solo caracter y volver al modo normal
"nmap <silent> <leader>6 "=nr2char(getchar())<CR>P"


"let loaded_matchit = 1
"source /home/eze/.vim/bundle/matchit/plugin/matchit.vim
"runtime /home/eze/.vim/bundle/matchit/plugin/matchit.vim


"airline with vim-fugitive!
let g:airline#extensions#branch#enabled = 1


"Abrir ctrlp con todo
let g:ctrlp_cmd = 'CtrlPMixed'


"fondo transparente
hi Normal ctermbg=none

"cmabiar funcionalidad de capslock a esc al entrar a vim y al salir volverla a
"cambiar

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"add function to get out ob parenthesis ininsert mode
inoremap <C-v> <C-o>a

"camelcasemotion
call camelcasemotion#CreateMotionMappings('<leader>')

"vim-argumentative
nmap [; <Plug>Argumentative_Prev
nmap ]; <Plug>Argumentative_Next
xmap [; <Plug>Argumentative_XPrev
xmap ]; <Plug>Argumentative_XNext
nmap <; <Plug>Argumentative_MoveLeft
nmap >; <Plug>Argumentative_MoveRight
xmap i; <Plug>Argumentative_InnerTextObject
xmap a; <Plug>Argumentative_OuterTextObject
omap i; <Plug>Argumentative_OpPendingInnerTextObject
omap a; <Plug>Argumentative_OpPendingOuterTextObject

"To open file in mac in the browser
nnoremap <F12>f :exe ':silent !open -a /Applications/Firefox.app %'<CR>
nnoremap <F12>c :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>
nnoremap <F12>g :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>
nnoremap <F12>s :exe ':silent !open /Applications/Safari.app %'<CR>

"neocomplete config
let g:neocomplete#enable_at_startup = 1

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
