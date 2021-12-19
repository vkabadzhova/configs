" Add plugins to ~/.vim/pack/vendor/start
" if you want them to start every time you launch vim
" e.g. git clone --depth 1 \
"  https://github.com/preservim/nerdtree.git \
"  ~/.vim/pack/vendor/start/nerdtree

" Add plugins to ~/.vim/pack/vendor/opt
" if you don't want them to load into memory automatically,
" but you want to add them to session with the `packadd` command
" e.g. `:packadd foo`

" definitely install vim-plugin
" A guide can be found here: https://github.com/junegunn/vim-plug#usage

" The color scheme is added in: ~/.vim/colors/sublimemonokai.vim

if has("syntax")
  syntax on
endif       

" ------ miscellenia ----------------
set number
set autoindent
set smartindent
set mouse=a

" -------- colorschema setup ----------
" setup
let g:solarized_termcolors=256

" apply colorschema
syntax enable
set background=dark
colorscheme solarized
" colorscheme guardian2 
" -------- end colorschema ------

" ------- Rust --------------
filetype plugin indent on
" ------ end Rust -------

call plug#begin()
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'rust-lang/rust.vim'
"Debugging
Plug 'puremourning/vimspector'
" Lightline footer
Plug 'itchyny/lightline.vim'
" fuzzy finder
Plug 'junegunn/fzf'
Plug 'mhinz/vim-startify'
"Plug 'ying17zi/vim-live-latex-preview'
Plug 'lervag/vimtex'
call plug#end()


" =============================================================================
" # GUI settings
" =============================================================================
set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set relativenumber " Relative line numbers
set number " Also show current absolute line
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=80 " and give me a colored column
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set shortmess+=c " don't give |ins-completion-menu| messages.

" Show those damn hidden characters
" Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

let g:deoplete#enable_at_startup = 1 "completion
let g:rustfmt_autosave = 1

" You can use 'VISUAL_STUDIO' or 'HUMAN'
" Visual Studio config avoid to the mapping of <F3> key, sometimes used to map file explorer buffer.
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

" =============================================================================
" # Editor settings
" =============================================================================
filetype plugin indent on
set autoindent
set timeoutlen=300 " http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
set encoding=utf-8
set scrolloff=2
set noshowmode
set hidden
set nowrap
set nojoinspaces
let g:sneak#s_next = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_frontmatter = 1
set printfont=:h10
set printencoding=utf-8
set printoptions=paper:letter
" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

" Settings needed for .lvimrc
set exrc
set secure

" Sane splits
set splitright
set splitbelow

" Permanent undo
set undodir=~/.vimdid
set undofile

" Decent wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

" Use wide tabs
set shiftwidth=8
set softtabstop=8
set tabstop=8
set noexpandtab

" Wrapping options
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz



" =============================================================================
" # Keyboard shortcuts 
" =============================================================================

map <silent><C-f>	:NERDTree		<CR>
map <silent><C-f>	:NERDTreeToggle		<CR>

" Jump to start and end of line using the home row keys
map H ^
map L $


" No arrow keys --- force yourself to use the home row
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>


" =============================================================================
" # Footer
" =============================================================================

" nvim
if has('nvim')
	runtime! plugin/python_setup.vim
endif
