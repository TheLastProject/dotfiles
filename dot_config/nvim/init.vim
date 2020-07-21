set nocompatible "Needed by Vundle
filetype off "Needed by Vundle
set rtp+=~/.vim/bundle/Vundle.vim "Add Vundle to runtime path

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim' "Vundle
    Plugin 'neomake/neomake' "Neomake
    Plugin 'majutsushi/tagbar' "Tagbar
    Plugin 'TheLastProject/vim-betterK.git' "Improve K command
    Plugin 'junegunn/fzf' "Fuzzy file finder
    Plugin 'junegunn/fzf.vim' "Fuzzy file finder vim extras
call vundle#end()

"Automatically check syntax
autocmd! BufWritePost,BufEnter * Neomake

"Hide startup message
set shortmess+=I

"Keep undo history between sessions
set undofile
set undodir=~/.vim/undo/

"Store backups together
set directory=~/.vim/backups//

"Background buffers (no force saving when switching)
set hidden

"Tab is 4 spaces
set tabstop=4
set expandtab

"Disable mouse
set mouse=

"Nicer statusline, based on http://stackoverflow.com/a/5380230
set statusline =%F          "Full path
set statusline +=%m         "Modifier flag
set statusline +=%=         "Spacing
set statusline +=%l/%L\     "Current line/total lines
set statusline +=%v         "Virtual Column

"Change leader key
let mapleader=";"

"[tagbar]
nmap <F8> :TagbarToggle<CR>
autocmd VimEnter * TagbarOpen

"Fzf
"Copied from https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
