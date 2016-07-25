set nobackup
set hlsearch
set tabstop=4
set ts=4
"set expandtab

" ##save lasttime postion
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

" ##Taglist setup
map <F4> : Tlist<CR>
"let g:Tlist_Ctags_Cmd='~/bin/ctags'
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 50

" ##solarized setting
syntax enable
syntax on
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

if has('gui_running')
    set background=light
else
    set background=dark
endif
