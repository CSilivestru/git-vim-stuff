"------------------------------ Visuals ---------------------------------
set t_Co=256

set nocursorline
set nocursorcolumn
set termguicolors
set background=dark

let g:spacegray_low_contrast = 1
colorscheme onedark

autocmd FileType * set tabstop=2|set shiftwidth=2
autocmd FileType ruby set tabstop=2|set shiftwidth=2
autocmd FileType javascript set tabstop=2|set shiftwidth=2
autocmd FileType less set tabstop=2|set shiftwidth=2
autocmd FileType css set tabstop=2|set shiftwidth=2
autocmd FileType stylus set tabstop=2|set shiftwidth=2
autocmd FileType html set tabstop=2|set shiftwidth=2
autocmd FileType mustache set tabstop=2|set shiftwidth=2
autocmd FileType coffee set tabstop=2|set shiftwidth=2
autocmd FileType jade set tabstop=2|set shiftwidth=2
autocmd FileType text setlocal textwidth=78 " for git commits
set expandtab

" Use JavaScript mode for es6 files
autocmd BufNewFile,BufRead *.es6   set syntax=javascript

" Syntax highlighting for ejs files.
au BufNewFile,BufRead *.ejs set filetype=html
