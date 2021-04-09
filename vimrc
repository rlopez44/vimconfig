"let g:gruvbox_italic=1
let g:nord_italic=1
let g:nord_italic_comments=1
let g:nord_cursor_line_number_background=1
" we need background=dark to be set before specifying the colorscheme,
" since gruvbox checks the background setting to determine what conceal
" color to use with indentLine
set background=dark
"colorscheme gruvbox
colorscheme nord "goes with the Nordic GTK theme

" fix color issues by using true color (24-bit)
set termguicolors

" set timeouts so that we can escape from insert mode quickly
" since <Esc> is a key code and doesn't need to have a large timeout
set timeout ttimeoutlen=100 " milliseconds

" highlight the current line with CursorLine
set cursorline

set directory=~/vimtmp//,. "for swap files
set backupdir=~/vimtmp//,. "for backup files
set undodir=~/vimtmp//,. "for undo files
set undofile "default off
set backup "default off
set swapfile "default on

" shortcuts to switch between open buffers
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

" shortcuts to switch between windows
nnoremap [h <C-w>h
nnoremap [j <C-w>j
nnoremap [k <C-w>k
nnoremap [l <C-w>l

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

" shortcut to toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" code folding
set foldmethod=manual

" shortcut to fold current curly brace delimited block
nnoremap <leader>f zfa{

" for auto indenting
set autoindent
filetype plugin indent on

" so that vim loads all html files with django template syntax
autocmd BufNewFile,BufRead *.html set filetype=htmldjango

" search options
set hlsearch " highlight matches
set incsearch " find matches as we type
" shortcut to turn off highlight search
nnoremap <silent><Leader><Space> :nohlsearch<CR>

" vimrc shortcuts
nnoremap <silent><Leader>ev :e ~/.vim/vimrc<CR>
nnoremap <silent><Leader>sv :source ~/.vimrc<CR>

" python-syntax plugin enable all
let g:python_highlight_all=1

" jedi-vim settings
let g:jedi#show_call_signatures=2

" vim-cpp-modern settings
let g:cpp_member_highlight=1

" replace tabs with four spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" use tabs for makefiles
autocmd FileType make setlocal noexpandtab

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

" indentLine config
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1
nnoremap <silent><Leader>i :LeadingSpaceToggle<CR>
