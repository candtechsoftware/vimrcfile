"
" MAPPINGS
"
" Make leader the spacebar key
let mapleader = " "
nnoremap <leader>ff <cmd>:Files<cr>
nnoremap <leader>fw <cmd>:BLines!<cr>
map <C-g> <Esc><Esc>:BCommits!<CR> 

" SPC + Q Exit from file
nmap <Leader>q :q!<CR>
" SPC + S Save file
nmap <Leader>s :w<CR>
" SPC + X Save file and exit
nmap <Leader>x :x<CR>
" SPC + R Quick run code
map <Leader>r <Plug>(quickrun)
" SPC + [ Nerd Tree Toggle
map <Leader>[ :NERDTreeToggle<CR>
" SPC + Shift + [ Nerd Tree Toggle s
map <Leader>{ :NERDTreeFind<CR>
" SPC + ] TagBar Toggle
nmap <Leader>] :TagbarToggle<CR>
" SPC + C Comment line or lines
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle gv
" SPC + = Auto Format code
noremap <Leader>= :Autoformat<CR>
" SPC + LD Toggle Markdown live-server
nmap <Leader>ld :LivedownToggle<CR>
" SPC + BG Toggle Light/Dark background
nmap <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" SPC + \ or - or t Window navigations
nmap <Leader>\ :vsplit<CR>
nmap <Leader>- :split<CR>
nmap <Leader>t :tabnew<CR>
" Run Go Code 
nmap <Leader>gl :GoLint<CR>

" CTRL + E Call Emmet
let g:user_emmet_expandabbr_key = '<C-e>'
" SPC + 1...9 Go to that tab
map <silemt> <Leader>1 1gt
map <silent> <Leader>2 2gt
map <silent> <Leader>3 3gt
map <silent> <Leader>4 4gt
map <silent> <Leader>5 5gt
map <silent> <Leader>6 6gt
map <silent> <Leader>7 7gt
map <silent> <Leader>8 8gt
map <silent> <Leader>9 9gt


nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
"
" PLUGINS
"
call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " File-tree
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar',   { 'on': ['TagbarToggle'] }                   " Tags-tree
Plug 'Raimondi/delimitMate'         " Auto close bracket's
Plug 'scrooloose/nerdcommenter', { 'on': '<plug>NERDCommenterToggle' }   " For comment line(s)
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] } " Highlight
Plug 'Chiel92/vim-autoformat',{ 'on': 'Autoformat' }             " Indent fix on file
Plug 'ctrlpvim/ctrlp.vim'           " Search files
Plug 'rust-lang/rust.vim'           "for rust
Plug 'cormacrelf/vim-colors-github'
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-surround'
Plug 'shime/vim-livedown', { 'for': 'markdown' } " Install Node and: npm install -g livedown
Plug 'lifepillar/vim-mucomplete'    " Auto-complete Engine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
" Testing
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

call plug#end()
let g:loaded_matchit = 1

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
set termguicolors

set background=dark
" Theme
colorscheme github
syntax enable


inoremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

let g:airline#extensions#tabline#enabled = 1

" --- The Greatest plugin of all time.  I am not bias
let g:vim_be_good_floating = 1

" --- vim go (polyglot) setings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
let g:go_list_type = "quickfix"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:rustfmt_autosave = 1


if executable('rg')
    let g:rg_derive_root='true'
endif

set encoding=UTF-8  " Default encoding
set tabstop=4
set softtabstop=4   " Set tabs to have 4 spaces
set autoindent      " Indent when moving to the next line while writing code
set expandtab       " Expand tabs into spaces
set shiftwidth=2    " When using the >> or << commands, shift lines by 4 spaces
set showmatch       " Show the matching part of the pair for brackets
set autoread        " Set to auto read when a file is changed from the outside
"   LOOK
syntax on
set number          " Show numbers of lines
set relativenumber  " Better info of line (use j,k for navigate)
set showtabline=2   " Show tab line (always)
"   NERDTREE
let g:NERDTreeNodeDelimiter = "\u00a0"  " Fix delimitter in nerdtree
let g:NERDTreeIgnore=['CVS','\.dSYM$', '.git', '.DS_Store', '\.swp$', '\.swo$']
let g:NERDTreeChDirMode = 2             " Setting root dir in NT also sets VIM's cd
let g:NERDTreeShowHidden = 1            " Shows invisibles
"   SYNTAX
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1      " C/C++ improve
let g:python_highlight_all = 1          " Python Improve
"   SYNTASTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_python_checkers=['python3', 'flake8']
function! SyntasticCheckHook(errors) " For optimize size a list of errors and warnings
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction
"   SEARCH
let g:ctrlp_cmd = 'CtrlPMixed' " Improved behavior CtrlP
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"   EXTRA
filetype plugin indent on      " Enable file type detection and do lang-dependent indenting.
set laststatus=2               " Always show status line
set backspace=indent,eol,start " Make backspace behave in a sane manner.
map Q <Nop>
" Still keep ability to repeat a go-to
noremap ;; ;
set nocompatible               " Disable vi compatibility (emulation of old bugs)
set lazyredraw                 " Don't redraw while executing macros (good performance config)
set mouse=a                    " Mouse Support
set noshowmode                 " Get rid of the ugly default status line
let @/ = ""                    " Clear search pattern
" For qwerty it is easier tu use ; than :
map ; :
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"           " Cursor thin/bold
" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Fix copy text to system clipboard and paste from it (for ubuntu install xsel)
nmap <C-c> "+yy
vmap <C-c> "+y
nmap <C-v> "+pa
imap <C-v> <Esc> "+pa
set noeb vb t_vb=             " Disable beep
"   SNIPPETS
"
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> mucomplete#extend_fwd("\<down>")
"
"   AUTOCOMPLETIONS
"
set wildmenu | set noinfercase | set completeopt=menuone,noinsert,noselect,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
let g:mucomplete#chains = {
            \ 'default' : ['path', 'nsnp', 'c-n', 'keyn', 'uspl']
            \ }
let g:mucomplete#no_mappings = 1
let g:mucomplete#enable_auto_at_startup = 1



let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_inactive_alt_sep=1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline_mode_map = {} " see source for the defaults

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <leader>rr <Plug> (coc-rename) 
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR> 

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gtr <Plug>(coc-references)

let g:clang_format#code_style='llvm'
let g:clang_format#style_options = {
            \ 'IndentWidth' : '8',
            \ 'UseTab' : 'Always',
            \ 'BreakBeforeBraces' : 'Linux',
            \ 'AllowShortIfStatementsOnASingleLine': 'false',
	    \ 'AllowShortBlocksOnASingleLine': 'false',
	    \ 'AllowShortCaseLabelsOnASingleLine': 'false',
	    \ 'AllowShortFunctionsOnASingleLine': 'None',
	    \ 'AllowShortLoopsOnASingleLine': 'false',
            \ 'IndentCaseLabels' : 'false'}



" LSP configuration
lua << END
local lspconfig = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

  -- Forward to other plugins
  require'completion'.on_attach(client)
end

local servers = { "rust_analyzer", "gopls",  "clangd", "pyright"} 
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
END
