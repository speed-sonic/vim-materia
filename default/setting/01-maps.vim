"=============================================================================
" FILE: 01-gui-settings.vim
" AUTHOR:  Alex Layton <omytty.alex@126.com>
" License: MIT license
"=============================================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap vv <ESC>

" goto or remove buffer
nnoremap <C-h> :bp!<CR>
nnoremap <C-l> :bn!<CR>
nnoremap <C-0> :bd<CR>
" move to another window
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wv :vsp<CR>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>ww <C-w>w
nnoremap <leader>wq :close<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle hlsearch
nnoremap <leader>al :set hlsearch! hlsearch?<CR>
" highlight all occurrences of the current word
nnoremap <leader>ah :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save current buffer
inoremap <M-w> <ESC>:w<CR>:startinsert<CR>
nnoremap<M-w> :w<CR>