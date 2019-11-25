:let mapleader = ";"

" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Easier way to move between windows.

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Avoid hitting escape in insert mode
imap jj <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  NERD Tree Commands

nnoremap <silent> <C-e><C-f> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow switching between buffers without saving .

set hidden
nmap <Leader>d :exe "bn\|:bd#"<CR>

" Buffer config
" Move to the next buffer
 nmap <S-L> :bnext<CR>

" Move to the previous buffer
 nmap <S-H> :bprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" FZF bindings
nmap <S-t> :GFiles<cr>
nmap <Leader>t :GFiles<CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>c :BCommits<CR>

nmap <Leader>f :Find 

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

let g:fzf_commits_log_options = '--graph --color=always --format="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
