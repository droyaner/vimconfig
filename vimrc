set nocompatible              " be iMproved, required
filetype off                  " required

" TODO maybe change this Path
set rtp+=~/git/vimconfig/bundle/Vundle.vim

call vundle#begin('~/git/vimconfig/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required

filetype plugin indent on    " required

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"<SET COLORS>
"colors claritybeauty
"colors evolution 
colors molokai_dark 
"colors wombat256dave
"</SET COLORS>


"<CLIPBOARD>
set clipboard=unnamedplus
vmap <C-c> "+y
nmap <C-v> "+p
set shortmess=a
set cmdheight=2
"</CLIPBOARD>


autocmd FileType tex setlocal spelllang=de spell



"<KEY MAPPING>
map <f2> :w<return> :!make<return>
"</KEY MAPPING>
