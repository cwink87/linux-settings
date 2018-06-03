"
" The following must be run before using this script:
"
"   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Also, 'git' will need to be installed for vim-plug to work.
"
" Power Fonts are also used for Airline, get them via:
"
"   git clone https://github.com/powerline/fonts.git --depth=1
"   cd fonts
"   ./install.sh
"

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'altercation/vim-colors-solarized'
call plug#end()

"
" Create ~/.vim/tmp and set all temp directories/files to goto ~/.vim/tmp.
"
if !isdirectory('~/.vim/tmp')
  call mkdir('~/.vim/tmp', 'p')
endif

set undodir=~/.vim/tmp
set backupdir=~/.vim/tmp
set dir=~/.vim/tmp
set viminfo+=n~/.vim/viminfo
set undofile
set backup

"
" Try to used the solarized color scheme, if not, then elflord.
"
try
  colors solarized
catch
  colors elflord
endtry


set background=dark

"
" Set default tabbing style.
"
set ts=2 sts=2 sw=2 expandtab

"
" Turn on symbols, the status bar, line numbers, and no wrap.
"
set list!
set laststatus=2
set number
set nowrap

"
" Global keybindings to save all, quit all, navigate, and delete a buffer.
"
nnoremap gw :wa!<cr>
nnoremap gq :qa!<cr>
nnoremap >  :bn!<cr>
nnoremap <  :bp!<cr>
nnoremap gd :bd!<cr>

"
" Enable tabline and powerline fonts for the airline plugin.
"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

