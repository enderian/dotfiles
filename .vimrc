call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'dense-analysis/ale'

Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'

call plug#end()

" Mouse stuff
set mouse=niv
set clipboard=unnamed

" Keybinds
nmap <C-P> :Files<cr>
nmap <C-F> :Ag<cr>
nmap <C-S> :w<cr>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
nmap <C-N><C-N> :set invnumber<CR>

set backspace=indent,eol,start
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Visuals
set number
set list listchars=tab:»·,trail:·
hi LineNr ctermfg=grey
hi MatchParen cterm=bold ctermbg=none ctermfg=green

let &t_SI = "\<Esc>]50;CursorShape=1\x7:AirlineTheme"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" XML Edit
autocmd FileType erb set omnifunc=htmlcomplete

" Show status
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Ale
let g:ale_set_highlights = 0
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \   'ruby': ['rubocop']
      \	}
let g:ale_linter_aliases = {'jsx': 'javascript'}
