set syntax
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set nowrap
set smartcase
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
call plug#end()

colorscheme gruvbox
set background=dark


"findfilesglobally
set path+=**
" Display all mathing files when we tab complete
set wildmenu

map I :! pdflatex --shell-escape %<CR><CR>
map S :! zathura $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
