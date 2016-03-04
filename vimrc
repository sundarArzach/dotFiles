call plug#begin('~/.vim/plugged')
 Plug 'git://github.com/tpope/vim-fugitive'
 Plug 'git://github.com/tpope/vim-surround'
 Plug 'git://github.com/tpope/vim-rsi' 
 Plug 'git://github.com/tpope/vim-repeat'
 Plug 'git://github.com/tpope/vim-commentary'
 Plug 'git://github.com/tpope/vim-unimpaired'
 Plug 'git://github.com/sjl/gundo.vim'
 Plug 'git://github.com/wellle/targets.vim'
 Plug 'git://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'git://github.com/junegunn/fzf.vim'
 Plug 'git://github.com/altercation/vim-colors-solarized'
call plug#end()

let g:rsi_no_meta = 1
"let g:solarized_termcolors=256

"Tab related
set tabstop=2
set shiftwidth=2
set expandtab

"Search related
set incsearch
set hlsearch
set smartcase


"Indent related
set autoindent
set smartindent
set cindent
set smarttab

set showcmd
set ruler     " shows line no, posn, etc
set showmatch "highlights matching brace for a brief moment

"Keeps the cursor in the middle while scrolling allows to see the contents above and below the cursor
set scrolloff=10 

"color scheme, eyeCandy
syntax enable 
"highlight Comment ctermfg=cyan cterm=none

if has('gui_running')
  set background=light
  colorscheme solarized 
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right scroll bar
endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" nnoremap <SPACE> <Nop>
" let mapleader = "\<Space>"
map <SPACE> <Leader>

nnoremap <Leader>u :GundoToggle<CR>

nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gl :Glog<CR>

nnoremap <Leader>du :diffupdate<CR>

nnoremap <Leader>fs :Ag! <C-R>=expand("<cword>")<CR><CR>	
nnoremap <Leader>ff :AgFile! <C-R>=expand("<cfile>")<CR><CR>	

nnoremap <Leader>ca :cs add cscope.out<CR>
nnoremap <Leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <Leader>ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nnoremap <Leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>

set relativenumber
set number

"windo set scrollbind
"windo set noscrollbind
"nmap <F5> :windo set scrollbind!<cr>

"Slow start time in terminal - X11 clipboard
set clipboard=exclude:.*

filetype plugin on 
