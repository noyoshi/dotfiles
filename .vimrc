" Noah Yoshida-vim
" Use at own risk

" ======================= Plugins with Vundle ==========================

" Initial Settings 
  set nocompatible
  filetype on
  set runtimepath+=~/.vim/Vundle.vim
  set runtimepath+=/usr/local/opt/fzf
  call vundle#begin()

" ======================= Packages ===================================== 

  " Let Vundle manage itself
  Plugin 'gmarik/Vundle.vim'

  " Tab autocompletion
  Plugin 'ervandew/supertab'

  " Another Syntax / Linting tool
  Plugin 'w0rp/ale'

  " Indentation guide
  Plugin 'Yggdroot/indentLinelet'

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

  " Support for nim lang
  Plugin 'baabelfish/nvim-nim'

" ======== Color Schemes ========= 

  Plugin 'andreypopp/vim-colors-plain'
  Plugin 'kristijanhusak/vim-hybrid-material'
  Plugin 'treycucco/vim-monotonic'
  Plugin 'chriskempson/base16-vim'
  Plugin 'dylanaraps/wal.vim' " Integrates with pywal or wal
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
  
  " Reads file updates from outside vim
  set autoread 
  set termguicolors "to help enable italics

  " Highlights matching parens
  set showmatch
  set number
  set showmode

  " Changes tabs -> 2 spaces
  set expandtab
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set autoindent

  set smartindent
  set textwidth=80
  set fileformat=unix
  set mouse=a
  set wrap
  set linebreak
  "set statusline+=%*
  "set statusline+=%#warningmsg#

  "So that we never ever highlight the background... this keeps vim working
  " properly when we are in transparent / opaque terminals.
  hi CursorLine ctermbg=NONE guibg=NONE
  hi LineNr ctermbg=NONE guibg=NONE
  hi NonText ctermbg=NONE guibg=NONE
  hi Normal ctermbg=NONE guibg=NONE
  hi LineNr ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE

  " Don't have tildes in empty lines
  " Make sure to have a whitespace after the backslash, only works for neovim
  set fillchars=eob:\ 

  " Remap t to code fold toggle 
  nnoremap t za
  vnoremap t zf
  set foldmethod=indent
  set foldlevel=99
  :command! Fold set foldlevel=0
  :command! UnFold set foldlevel=99

  " Set the custom ctags file as ./.tags by default (where my zsh alias sends tags
  " to!)
  set tags=./.tags,tags;
 
  " Press F3 to toggle paste mode
  set pastetoggle=<F3>

  " Line / Selection drag
  " Normal mode
  nnoremap <A-down> :m .+1<CR>==
  nnoremap <A-up> :m .-2<CR>==
  " Visual mode
  vnoremap <A-down> :m '>+1<CR>gv=gv
  vnoremap <A-up> :m '<-2<CR>gv=gv<Paste>

  " Switches ; to : in normal mode
  nnoremap ; :

  " Lets me use <esc> like normal in terminal mode
  tnoremap <Esc> <C-\><C-n>
 
  " Enable italics
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
  highlight Comment gui=italic

" ========================== Plugin Adjustments ======================
  " === Markdown preview ===
  " Allows github-flavored markdown (needs grip installed)
  let vim_markdown_preview_github=1
  let vim_markdown_preview_toggle=1

  " Default hotkey is <C-p>, change that to something else
  let vim_markdown_preview_hotkey='<C-m>'

  " === Ale === 
  " Change the error sign
  let g:ale_sign_error = '❗️'
  let g:ale_sign_warning = '❔'
  " let g:ale_sign_warning = '--'
  " let g:ale_sign_error = '>>'
  " Do not highlight the side column or the symbols
  hi AlEErrorSign ctermbg=NONE guibg=NONE
  hi AleWarningSign ctermbg=NONE guibg=NONE

  " === Git Gutter ===
  " Override the highlights and set them to none 
  let g:gitgutter_override_sign_column_highlight = 1
  hi GitGutterAdd ctermbg=NONE guibg=NONE
  hi GitGutterChange ctermbg=NONE guibg=NONE
  hi GitGutterDelete ctermbg=NONE guibg=NONE
  " Change the color of the characters
  " Add is the green from gruvbox and delete is the red from gruvbox
  " Change is white (default)
  hi GitGutterAdd ctermfg=108 guifg=#8ec07c
  hi GitGutterChange ctermfg=208 guifg=#fabd2f
  hi GitGutterDelete ctermfg=100 guifg=#fb4934

  " Make sure these unicode characters are good
  let g:gitgutter_sign_added = '┃'
  let g:gitgutter_sign_modified = '┃'
  let g:gitgutter_sign_removed = '┃'

  " === Gruvbox === 
  let g:gruvbox_italic=1
  let g:gruvbox_contrast_darke='medium'
  let g:gruvbox_italicize_comments=1

  " === Other COlor Schemes === 
  let g:monokai_term_italic = 1
  let g:srcery_italic = 1

  " === YCM ===
  " let g:ycm_python_binary_path = 'python'

  " === EasyMotion ===
  let mapleader=" "
  map <Leader> <Plug>(easymotion-prefix)

  " === Nerd Tree === 
  " Automatically call nerd tree
  " autocmd vimenter * NERDTree
  " NERDTree toggle
  map <C-n> :NERDTreeToggle<CR>

  " Closes vim if only the menu tab is left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " === Airline === 
  " Populates the 'g:airline_symbols' dictionary with the powerline symbols
  " let g:airline_powerline_fonts = 1

  " === Fugitive === 
  " Also shows the date and time in day of week, mon, day, time format
  " See the strftime manpage for more info
  " Fugitive
  set statusline=%{fugitive#statusline()}
  " Gets current file 
  set statusline+=[\%F]
  " Left floated time
  set statusline+=%=[%{strftime('%a\ %b\ %d\ %H:%M')}]\ \ \ \ [%l\ \ %p%%]

  " === FZF === 
  " Remap ctrl-p to fzf
  nnoremap <silent> <C-p> :FZF<CR>

  " ============================== Custom Commands ===============================
  "Remove all trailing whitespace with command strip 
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

  " 2 Spaces for html - NOT WORKING?
  autocmd FileType html set shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType css  set shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType md   set spelllang=en_us

  " Org filetype detection is broken, this is a work around
  :command! Org set filetype=org

  " Reloads the vimrc (only if you are already in the vimrc)
  :command! ReloadVim :so ~/.vimrc
  :command! UpdateVim :e ~/.vimrc

  " Non - vim settings
  " iTerm2 - I have Command + [ or ] to map to
  " :tabn or :tabp to cycle through vim tabs

