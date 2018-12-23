" Noah Yoshida-vim
" Use at own risk

" ======================= Plugins with Vundle ==========================
set nocompatible
filetype on
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=/usr/local/opt/fzf
call vundle#begin()

" Other packages:
" YouCompleteMe, vim-airline, syntastic, ctrl-p (fzf alt if you dont want to
" download fzf)

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Tab autocompletion
Plugin 'ervandew/supertab'

" Another Syntax / Linting tool
" Plugin 'w0rp/ale'

" Indentation guide
Plugin 'Yggdroot/indentLine'

" Tree / file viewer plugin
Plugin 'scrooloose/nerdtree'

" File explorer
Plugin 'junegunn/fzf.vim'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" Org mode? - activate using :Org
Plugin 'jceb/vim-orgmode'

" Easy surround editing in vim
" Plugin 'tpope/vim-surround'

" Easy commenting
Plugin 'tpope/vim-commentary'

" Calendar, etc
Plugin 'itchyny/calendar.vim'

" Matching paren/brackets!
" Plugin 'jiangmiao/auto-pairs'

" Nested parens will be given different colors
Plugin 'junegunn/rainbow_parentheses.vim'

" Makes movement easier to see
Plugin 'easymotion/vim-easymotion'

" Markdown preview in browser
" Requires 'grip' to view github - flavored markdown
Plugin 'JamshedVesuna/vim-markdown-preview'

" Machine learning - powered auto complete??
" Plugin 'zxqfl/tabnine-vim'
" Lets you move lines up and down
" Plugin 'matze/vim-move' -> I now use custom mappings

" Airline bar
" Plugin 'vim-airline/vim-airline'

" Airline themes
" Plugin 'vim-airline/vim-airline-themes'

" +++++++++++ Color schemes ++++++++++++

Plugin 'andreypopp/vim-colors-plain'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'treycucco/vim-monotonic'

Plugin 'chriskempson/base16-vim'

" Integrates with pywal or wal
Plugin 'dylanaraps/wal.vim'

Plugin 'dracula/vim'

Plugin 'jnurmine/Zenburn'

Plugin 'morhetz/gruvbox'

Plugin 'joshdick/onedark.vim'

Plugin 'junegunn/seoul256.vim'

Plugin 'srcery-colors/srcery-vim'

Plugin 'tomasr/molokai'

Plugin 'crusoexia/vim-monokai'

Plugin 'sts10/vim-pink-moon'

Plugin 'cdmedia/itg_flat_vim'

Plugin 'logico-dev/typewriter'

call vundle#end()

filetype plugin indent on

" ====================== General ====================================
syntax on
set background=dark
colorscheme gruvbox 

set termguicolors " this enables italics~
set showmatch
set number
" set relativenumber
set showmode
set expandtab
set softtabstop=2
set shiftwidth=2
set textwidth=80
set autoindent
set smartindent
set tabstop=2
set fileformat=unix
set mouse=a
"set statusline+=%#warningmsg#
"set statusline+=%*
set wrap
set linebreak

" Tabs lets you fold/unfold indented code
nnoremap <tab> za
vnoremap <tab> zf
set foldmethod=indent
set foldlevel=99

" Don't have tildes in empty lines
" Make sure to have a whitespace after the backslash, only works for neovim 
set fillchars=eob:\ 

" ========================== Plugin Adjustments ======================
" Markdown preview
" allows github-flavored markdown (needs grip installed) 
let vim_markdown_preview_github=1
" Default hotkey is <C-p>, change that to something else
let vim_markdown_preview_hotkey='<C-m>'

" Ale - syntax checker
let g:ale_sign_error = '>>'

" Gruvbox specific configs
let g:gruvbox_italic=1
let g:gruvbox_contrast_darke='medium'
let g:gruvbox_italicize_comments=1

let g:monokai_term_italic = 1
let g:srcery_italic = 1
" Press F3 to toggle paste mode
set pastetoggle=<F3>

" So that we never ever highlight the background... this keeps vim working
" properly when we are in transparent / opaque terminals.
hi CursorLine cterm=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi Normal ctermbg=NONE guibg=NONE

" ++++++++ You complete me +++++++++++
let g:ycm_python_binary_path = 'python'

" ++++++++ EasyMotion +++++++++
let mapleader=" "
map <Leader> <Plug>(easymotion-prefix)

" Normal mode
nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==

" Visual mode
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv<Paste>

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
" Also shows the date and time in day of week, mon, day, time format
" See the strftime manpage for more info
" Fugitive
set statusline=%{fugitive#statusline()}
" Gets current dir
set statusline+=\ %{getcwd()} 
" Left floated time
set statusline+=%=%{strftime('%a\ %b\ %d\ %H:%M')}

" +++++++ FZF +++++++++
" Remap ctrl-p to fzf
nnoremap <silent> <C-p> :FZF<CR>

" ============================== MISC ===============================
"Remove all trailing whitespace by pressing F5
" nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
:command! Strip :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>

" Toggle spell checker
" use z= on the beginning of a highlighted word to see autocorrect options
:command! Spell :set spell spelllang=en_us
:command! NoSpell :set nospell

" Your cursor goes back to where you were when you last closed the file
augroup Vim
    autocmd!
    autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif
augroup END

" Switches ; to : in normal mode
nnoremap ; :

" Lets me use <esc> like normal in terminal mode
tnoremap <Esc> <C-\><C-n>

" 2 Spaces for html - NOT WORKING?
autocmd FileType html set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css  set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType md   set spelllang=en_us

" Org filetype detection is broken, this is a work around
:command! Org set filetype=org

" Reloads the vimrc (only if you are already in the vimrc)
:command! ReloadVim :so ~/.vimrc

:command! UpdateVim :e ~/.vimrc

" Enable italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment gui=italic

" Non - vim settings
" iTerm2 - I have Command + [ or ] to map to 
" :tabn or :tabp to cycle through vim tabs
