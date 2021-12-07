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
call plug#end()


let g:deoplete#enable_at_startup = 1

map <silent><C-f>	:NERDTree		<CR>
map <silent><C-f>	:NERDTreeToggle		<CR>


