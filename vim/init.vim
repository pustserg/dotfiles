"-----VUNDLE INIT----------
set nocompatible
so ~/.vim/plugins.vim
"-----END OF VUNDLE INIT----
syntax enable
let mapleader = ','             "Try to use comma as Leader key
set number			                "Activate line numbers
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamedplus
set wildignore+=*/node_modules/*,*/.git/*

"---FOLDING----
"set foldenable
"set foldmethod=syntax

"---------PLUGIN SPECIFIC OPTIONS----
"let NERDTreeShowHidden=1
"let g:ctrlp_show_hidden=1
"indentLine
let g:indentLine_setColors=1
let g:indentLine_char = '¦'
let g:airline_theme='gruvbox'
let g:airline_solarized_bg='dark'
let g:gutentags_ctags_exclude = ["**/*.min.js", "**/*.min.css", "build", "vendor", ".git", "**/node_modules", "*.vim/bundle/*"]
let g:loaded_python3_provider=0
let g:loaded_python2_provider = 1
"-----------VISUALS----------------
"set guifont=Source\ Code\ Pro\ Medium:h17
set guifont=Consolas:h20
set t_CO=256
"remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set colorcolumn=81
set scrolloff=999
set cursorline
set cursorcolumn
set background=dark
colorscheme Gruvbox
"set cursorline
"highlight CursorLine guibg=#303000 ctermbg=238
"-----------SEARCH----------------
set incsearch
nmap <leader>fs :ts<space>
nmap <leader>f :tag<space>
nnoremap <leader>. :CtrlPTag<cr>

"-----------SPLIT MANAGEMENT----------------
nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
"-----------MAPPINGS----------------
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>ap :tabedit ~/.vim/plugins.vim<cr>
nmap <leader>q  :NERDTreeToggle<cr>
nmap <C-R>	:CtrlPBufTag<cr>
nmap <leader>h :nohl<cr>

"----------AUTOCOMMANDS------------
"Automatically source vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"Strip trailing whitespaces on save by plugin
"https://github.com/bronson/vim-trailing-whitespace
augroup remove_trailing_whitespaces
  autocmd!
  autocmd BufWritePre * FixWhitespace
augroup END
"Unfold file when opening
augroup unfold_file
  autocmd!
  autocmd BufRead * normal zR
augroup END
