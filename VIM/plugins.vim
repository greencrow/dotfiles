" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
	if executable('curl')
		let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
		if v:shell_error
			echom "Error downloading vim-plug. Please install it manually.\n"
			exit
		endif
	else
		echom "vim-plug not installed. Please install it manually or install curl.\n"
		exit
	endif
endif

call plug#begin('~/.vim/plugged')

" === Editing Plugins === "

Plug 'mattn/emmet-vim' "snipet hmtl/css
Plug 'scrooloose/syntastic' "syntax checking on save
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense emulation
Plug 'scrooloose/nerdcommenter' "comment when pressing <leader>/

" === UI Plugins === "

Plug 'drewtempelmeyer/palenight.vim' "colorscheme
Plug 'vim-airline/vim-airline' "custom vim status line and tabline
Plug 'vim-airline/vim-airline-themes' "enable using themes for airline
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } "install the fzf bin (required)
Plug 'junegunn/fzf.vim' "fuzzy finder
Plug 'ap/vim-css-color' "color highlighter for css

call plug#end()

" ============================================================================ "
" ===                           PLUGINS CONFIG                             === "
" ============================================================================ "

filetype plugin indent on "required

" let palenight colorscheme use truecolors
if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
	set termguicolors
endif

call coc#add_extension('coc-html', 'coc-css') "coc extensions

" === AIRLINE === "

let g:airline_powerline_fonts = 1 "use powerline font for separators (MUST BE INSTALLED)
let g:airline_theme = "palenight" "use colorschmeme for airline

" extensions for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#coc#enabled = 1

" suppress airline symbols if default
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

