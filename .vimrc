" Noah Yoshida vim 
" Use at own risk 

" ======================= Plugins with Vundle ==========================

set nocompatible
filetype on 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself 
Plugin 'gmarik/Vundle.vim'

" Completion plugin, works for completing things outside of files aka filepaths
" when making references to files in a directory... 
"Plugin 'Valloric/YouCompleteMe'

" Tab complete - TODO check to see if this conflicts with YCM 
Plugin 'ervandew/supertab'

" Syntax checker. Needs other checkers in PATH to use 
"Plugin 'scrooloose/syntastic'

" Airline status bar 
" Plugin 'vim-airline/vim-airline'

" Tree / file viewer plugin 
Plugin 'scrooloose/nerdtree'

" File explorer
Plugin 'kien/ctrlp.vim'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" +++++++++++ Color schemes ++++++++++++
Plugin 'kristijanhusak/vim-hybrid-material'

Plugin 'chriskempson/base16-vim'

" Integrates with pywal or wal to set the colorscheme based on what those
" programs set 
Plugin 'dylanaraps/wal.vim'

Plugin 'junegunn/fzf.vim'

Plugin 'dracula/vim'

Plugin 'jnurmine/Zenburn'

Plugin 'morhetz/gruvbox'

Plugin 'joshdick/onedark.vim'

Plugin 'junegunn/seoul256.vim'

Plugin 'tomasr/molokai'

Plugin 'crusoexia/vim-monokai'

call vundle#end()

filetype plugin indent on

" ====================== General ====================================
" TLDR: 4 Spaces > tabs
syntax on
set bg=dark
"set bg=light
color zenburn 

set showmatch
" set number 
set showmode
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set tabstop=4
set fileformat=unix
set mouse=a
set statusline+=%#warningmsg#
set statusline+=%*
set wrap 
set linebreak

let g:monokai_term_italic = 1
" Press F3 to toggle paste mode
set pastetoggle=<F3>

" Auto spell check on non code elements 
"set spell spelllang=en_us

" So that we never ever highlight the background... this keeps vim working
" properly when we are in transparent / opaque terminals.
"autocmd ColorScheme * highlight Normal ctermbg=None
"hi CursorLine cterm=NONE ctermbg=8
hi! Normal ctermbg=NONE guibg=NONE


" ========================== Plugin Adjustments ======================
" ++++++++ You complete me +++++++++++ 
let g:ycm_python_binary_path = 'python'

" ++++++++ Syntastic +++++++++ 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1

" +++++++ NERD Tree ++++++++++
" Automatically call nerd tree 
" autocmd vimenter * NERDTree
" NERDTree toggle 
map <C-n> :NERDTreeToggle<CR>

" Closes vim if only the menu tab is left open 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ++++++++ Airline ++++++++++
" Populates the 'g:airline_symbols' dictionary with the powerline symbols
let g:airline_powerline_fonts = 1

" +++++++ Fugitive +++++++++
" set statusline=%{fugitive#statusline()}
" ============================== MISC ===============================

" Your cursor goes back to where you were when you last closed the file 
augroup Vim
    autocmd!
    autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif
augroup END

" 2 Spaces for html 
autocmd FileType html set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css  set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType md   set spelllang=en_us
"autocmd Filetype make set noexpandta
