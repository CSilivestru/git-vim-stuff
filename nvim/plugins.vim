"-------------------------------- Plugins ------------------------------------
" Vim-Plug
" PluInstall
" PlugStatus


"Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'tpope/vim-surround'        " Quoting/parenthesizing made simple
  Plug 'tpope/vim-rails'           " Ruby on Rails power tools
  Plug 'tpope/vim-commentary'      " Comment stuff out
  Plug 'airblade/vim-gitgutter'    " Git gutter
  Plug 'jiangmiao/auto-pairs'      " Insrt or delete brackets, parens in pairs
  Plug 'iCyMind/NeoSolarized'      " Solarized color
  Plug 'joshdick/onedark.vim'      " oneDark color
  Plug 'mhartington/oceanic-next'  " Oceanic colour theme
  Plug 'lifepillar/vim-solarized8' " solarized but better?
  Plug 'rakr/vim-one'              " vim-one colourscheme
  Plug 'freeo/vim-kalisi'          " kalisi colourscheme
  Plug 'ajh17/Spacegray.vim'           " spacegray colourscheme
  Plug 'tpope/vim-fugitive'        " Fugitive for branch info in airline
  Plug 'Numkil/ag.nvim'            " Ag search
  Plug 'w0rp/ale'                  " ESLint 
  Plug 'joukevandermaas/vim-ember-hbs' " hbs highlighting
  Plug 'darthmall/vim-vue'
  Plug 'scrooloose/nerdtree' 	    " NerdTree support
  Plug 'nikvdp/ejs-syntax' 	      " ejs syntax highlighting support
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'jparise/vim-graphql'

  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Additional Languages
  Plug 'ElmCast/elm-vim'           " Elm

  " Typescript
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', { 'commit': 'ab637a787f2b56b2316b460ca31012bfae4273e5', 'build': './install.sh'}

  " Airline
  Plug 'vim-airline/vim-airline'   " Status / Tabline
  Plug 'vim-airline/vim-airline-themes'

  " Vim-Snipmate and dependencies
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Themes
  Plug 'crusoexia/vim-monokai'
call plug#end()


" ctrp.vim -- https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_user_command = 'rg --files %s'
let g:ctrlp_use_caching = 0


" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme='kolor'
let g:airline#extensions#tagbar#enabled = 1


" Deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {'_': ['ale']}
" let g:deoplete#sources = ['file', 'ultisnips']
