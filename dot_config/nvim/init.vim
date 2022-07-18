set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'editorconfig/editorconfig-vim' "Editorconfig
    Plug 'neomake/neomake' "Neomake
    Plug 'majutsushi/tagbar' "Tagbar
    Plug 'TheLastProject/vim-betterK' "Improve K command
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy file finder
    Plug 'junegunn/fzf.vim' "Fuzzy file finder vim extras
    Plug 'tpope/vim-sleuth' "Indent detection
    Plug 'hashivim/vim-terraform' "Terraform syntax highlighting
call plug#end()

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
