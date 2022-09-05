set tabstop=4
set expandtab
set shiftwidth=4
nnoremap q: <Nop>
autocmd BufWritePre * %s/\s\+$//e

call plug#begin()

Plug 'projekt0n/github-nvim-theme'
Plug 'arcticicestudio/nord-vim'

Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

let g:coq_settings = { 'display.icons.mode': 'none', 'auto_start': 'shut-up', "clients.lsp.resolve_timeout": 1.0 }

lua require('init-lsp')
lua require('treesitter')

let g:github_dark_sidebar = "true"
colorscheme github_dimmed
