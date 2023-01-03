vim.cmd([[
nnoremap <c-z> <nop>
nnoremap <leader>x<nop>

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <C-f> :Neoformat<CR>
let g:user_emmet_leader_key='<,>,'

"mathup"
let g:loaded_matchit = 1


]])
