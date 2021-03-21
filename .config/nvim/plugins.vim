" Run auto PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Move lines and selections.
Plug 'matze/vim-move'

Plug 'scrooloose/nerdtree'

"Plug 'tsony-tsonev/nerdtree-git-plugin'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'

Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files

" Blamer: gitlens like
Plug 'APZelos/blamer.nvim'

Plug 'scrooloose/nerdcommenter'

Plug 'neoclide/coc-vetur'

"Plug 'prettier/vim-prettiervidhalter/jedi-vim'', { 'do': 'yarn install' }

Plug 'vim-scripts/bash-support.vim'

Plug 'davidhalter/jedi-vim'

" Seamless switching between nvim splits and tmux panes!
" Use ctrl + {hjkl} to move between them as usual.
" ERROR: conflicts with vim-move.
" Plug 'christoomey/vim-tmux-navigator'

" Colorscheme
Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Git essential (:Gcommit, :Gstatus, :Gblame)
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Status bar preferance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language Packs! (syntax highlighting, indentation, etc.)
Plug 'sheerun/vim-polyglot'

" Fuzzy Finder
" :Rg for ripgrep, :Ag for silver searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Visually select larger, enclosing regions of text.
" + = expand, _ = shrink.
Plug 'terryma/vim-expand-region'

" Multiple Cursors with <C-n>
" Read more: https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" Adjust shiftwidth and expandtab based on current file.
Plug 'tpope/vim-sleuth'

" Highlight all trailing whitespaces. Prevent messy git diffs.
Plug 'ntpeters/vim-better-whitespace'

" Adds the ending pair for (parens), {braces} and 'quotes'
" Features: https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

" Easymotion: <leader><leader>s
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()

colorscheme gruvbox