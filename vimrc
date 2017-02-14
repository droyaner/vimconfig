set nocompatible              " be iMproved, required
filetype off                  " required

" TODO maybe change this Path
set rtp+=~/git/vimconfig/bundle/Vundle.vim

call vundle#begin('~/git/vimconfig/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' 			"Git wrapper
Plugin 'scrooloose/syntastic' 			"Syntax Checking Plugin
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git' 	"Opening files and buffers
Plugin 'flazz/vim-colorschemes'			"Colorschemes
Plugin 'Valloric/YouCompleteMe'			"fuzzy-search code completion engine
Plugin 'vim-airline/vim-airline'		"StatusBar
Plugin 'vim-airline/vim-airline-themes'		"StatusBar-Themes

call vundle#end()            " required

filetype plugin indent on    " required

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

"<SET COLORS>
"colors claritybeauty
"colors evolution 
colors CandyPaper
"</SET COLORS>


"<CLIPBOARD>
set clipboard=unnamedplus
vmap <C-c> "+y
nmap <C-v> "+p
set shortmess=a
set cmdheight=2
"</CLIPBOARD>


autocmd FileType tex setlocal spelllang=de spell

""
"<PLUGIN-CONFIG>
"<SYNTASTIC>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"CPP
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_c_checkers = ['gcc']
"<//SYNTASTIC>
"<AIRLINE>
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

"</AIRLINE>
"</PLUGIN-CONFIG>



"<KEY MAPPING>
map <f2> :w<return> :!make<return>
"</KEY MAPPING>
