colorscheme gruvbox
set background=dark

" set transparent background
highlight Normal ctermbg=NONE

" set timeouts so that we can escape from insert mode quickly
" since <Esc> is a key code and doesn't need to have a large timeout
set timeout ttimeoutlen=100 " milliseconds

" highlight the current line with CursorLine
set cursorline
highlight CursorLine ctermbg=NONE

" underline the current line when in insert mode
autocmd InsertEnter * highlight CursorLine cterm=italic

" return to default CursorLine highlighting when in normal mode
autocmd InsertLeave * highlight CursorLine cterm=NONE

set directory=~/vimtmp//,. "for swap files
set backupdir=~/vimtmp//,. "for backup files
set undodir=~/vimtmp//,. "for undo files
set undofile "default off
set backup "default off
set swapfile "default on

" shortcuts to switch between open buffers
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

" insert single character at the cursor position in command mode
nnoremap <Space> i_<Esc>r
" insert single character after the cursor position in command mode
nnoremap <Tab><Space> a_<Esc>r

" show current line number
set number
" show relative line numbers
set relativenumber

" function to toggle relative line numbers
function! g:ToggleRelativeNumber()
    if &relativenumber == 1
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

" toggle relative line number
nnoremap <silent><C-l> :call g:ToggleRelativeNumber()<CR>

" shortcut to open NERDTree
nnoremap <C-n> :NERDTree<CR>

" code folding
set foldmethod=manual

" for auto indenting
set autoindent
set smartindent

" so that vim loads all html files with django template syntax
autocmd BufNewFile,BufRead *.html set filetype=htmldjango

" python-syntax plugin enable all
let g:python_highlight_all=1

" jedi-vim settings
let g:jedi#show_call_signatures=2

" replace tabs with four spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" so that buffers are hidden instead of unloaded when abandoned
set hidden

" turn off mode indicator at bottom so jedi-vim call sigs in command line work correctly
set noshowmode

" vim-airline config
let g:airline#extensions#tabline#enabled=1 " show tabline of all open buffers

" define airline symbols dict if it doesn't exist
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" git branch symbol (for use with vim-fugitive)
let g:airline_symbols.branch = '⎇ '

" vim-gitgutter config
set updatetime=100 " decrease vim's update time so diff markers appear quicker
