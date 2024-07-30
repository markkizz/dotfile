" Yank will copy into the global clipboard!
set clipboard=unnamed
" surrounded word
" set surround

" Allow the use of mouse!
set mouse=a

" We already have airline to show current mode in the status line.
set noshowmode

" Show the result of your substitution as you type!
" :%s/a/b/g will highlight and preview the replaced text.
" Use tab or esc to ignore, use enter to accept substitution.
" (Change this to `split` to show extra preview pane.)
set inccommand=nosplit

" Persist undo history across sessions.
set undofile
set undodir=~/.vim/undo

" Disable swap and backup files.
set nobackup
set noswapfile

" Make vim completion menu works like an IDE.
" Read more:http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=menu

" Highlight the current line.
set cursorline



"set relativenumber
set number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" colorscheme gruvbox


" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Disable new line comment
set formatoptions-=cro

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}



function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\