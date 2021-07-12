scriptencoding utf-8

let g:plugin_home = printf('%s/site/pack/packer/', stdpath('data'))

lua require 'plugins'

"{ Plugin settings
"{{ Vim-plug settings
" Use shortnames for common vim-plug command to reduce typing.
" To use these shortcut: first activate command line with `:`, then input the
" short alias, e.g., `pi`, then press <space>, the alias will be expanded
" to the full command automatically
call utils#Cabbrev('pi', 'PackerInstall')
call utils#Cabbrev('pud', 'PackerUpdate')
call utils#Cabbrev('pc', 'PackerClean')
call utils#Cabbrev('ps', 'PackerSync')
"}}

"{{ Auto-completion related
lua require('entrance')


"""""""""""""""""""""""""UltiSnips settings"""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger='<c-j>'

" Do not look for SnipMate snippets
let g:UltiSnipsEnableSnipMate = 0

" Shortcut to jump forward and backward in tabstop positions
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Configuration for custom snippets directory, see
" https://jdhao.github.io/2019/04/17/neovim_snippet_s1/ for details.
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my_snippets']

" Search related
"""""""""""""""""""""""""""""vim-sneak settings"""""""""""""""""""""""
" Use sneak label mode
let g:sneak#label = 1

nmap f <Plug>Sneak_s
xmap f <Plug>Sneak_s
onoremap <silent> f :call sneak#wrap(v:operator, 2, 0, 1, 1)<CR>
nmap F <Plug>Sneak_S
xmap F <Plug>Sneak_S
onoremap <silent> F :call sneak#wrap(v:operator, 2, 1, 1, 1)<CR>

" Immediately after entering sneak mode, you can press f and F to go to next
" or previous match
let g:sneak#s_next = 1

"""""""""""""""""""""""""""""vim-anzu settings"""""""""""""""""""""""
nmap n <Plug>(anzu-n-with-echo)zzzv
nmap N <Plug>(anzu-N-with-echo)zzzv

" Maximum number of words to search
let g:anzu_search_limit = 500000

" Message to show for search pattern
let g:anzu_status_format = '/%p [%i/%l]'

"""""""""""""""""""""""""""""vim-asterisk settings"""""""""""""""""""""
nmap *  <Plug>(asterisk-z*)
nmap #  <Plug>(asterisk-z#)
xmap *  <Plug>(asterisk-z*)
xmap #  <Plug>(asterisk-z#)

" URL related
""""""""""""""""""""""""""""open-browser.vim settings"""""""""""""""""""
" Use another mapping for the open URL method
nmap ob <Plug>(openbrowser-smart-search)
xmap ob <Plug>(openbrowser-smart-search)

" Navigation and tags
""""""""""""""""""""""""""" gutentags settings """"""""""""""""""""""""""""""
" The path to store tags files, instead of in the project root.
let g:gutentags_cache_dir = stdpath('cache') . '/ctags'
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_exclude = ['*.md', '*.html', '*.json', '*.toml', '*.css', '*.js',]

""""""""""""""""""""""""""" vista settings """"""""""""""""""""""""""""""""""
let g:vista#renderer#icons = {
      \ 'member': '',
      \ }

" Do not echo message on command line
let g:vista_echo_cursor = 0
" Stay in current window when vista window is opened
let g:vista_stay_on_open = 0

augroup vista_conf
  autocmd!
  " Double mouse click to go to a tag
  autocmd FileType vista* nnoremap <buffer> <silent>
        \ <2-LeftMouse> :<C-U>call vista#cursor#FoldOrJump()<CR>
augroup END

nnoremap <silent> <Space>t :<C-U>Vista!!<CR>

" File editting
""""""""""""""""""""""""""""vim-titlecase settings"""""""""""""""""""""""
" Do not use the default mapping provided
let g:titlecase_map_keys = 0

nmap <leader>gt <Plug>Titlecase
xmap <leader>gt <Plug>Titlecase
nmap <leader>gT <Plug>TitlecaseLine

""""""""""""""""""""""""vim-mundo settings"""""""""""""""""""""""
let g:mundo_verbose_graph = 0
let g:mundo_width = 80

nnoremap <silent> <Space>u :MundoToggle<CR>

""""""""""""""""""""""""""""better-escape.vim settings"""""""""""""""""""""""""
let g:better_escape_interval = 200

""""""""""""""""""""""""""""vim-xkbswitch settings"""""""""""""""""""""""""
let g:XkbSwitchEnabled = 1

" Linting and formating
"""""""""""""""""""""""""""""" ale settings """""""""""""""""""""""
" linters for different filetypes
let g:ale_linters = {
  \ 'vim': ['vint'],
  \ 'cpp': ['cppcheck'],
  \ }

" Only run linters in the g:ale_linters dictionary
let g:ale_linters_explicit = 1

" Linter signs
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'

"""""""""""""""""""""""""""""" neoformat settings """""""""""""""""""""""
let g:neoformat_enabled_python = ['black', 'yapf']
let g:neoformat_cpp_clangformat = {
      \ 'exe': 'clang-format',
      \ 'args': ['--style="{IndentWidth: 4}"']
      \ }
let g:neoformat_c_clangformat = {
      \ 'exe': 'clang-format',
      \ 'args': ['--style="{IndentWidth: 4}"']
      \ }

let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

" Git-related
"""""""""""""""""""""""""vim-signify settings""""""""""""""""""""""""""""""
" The VCS to use
let g:signify_vcs_list = [ 'git' ]

" Change the sign for certain operations
let g:signify_sign_change = '~'

"""""""""""""""""""""""""vim-fugitive settings""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gc :Git commit<CR>
nnoremap <silent> <leader>gs :Git<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gpl :Git pull<CR>
" Note that to use bar literally, we need backslash it, see also `:h :bar`.
nnoremap <silent> <leader>gpu :15split \| term git push

" Markdown writing
"""""""""""""""""""""""""plasticboy/vim-markdown settings"""""""""""""""""""
" Disable header folding
let g:vim_markdown_folding_disabled = 1

" Whether to use conceal feature in markdown
let g:vim_markdown_conceal = 1

" Disable math tex conceal and syntax highlight
let g:tex_conceal = ''
let g:vim_markdown_math = 0

" Support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" Let the TOC window autofit so that it doesn't take too much space
let g:vim_markdown_toc_autofit = 1

""""""""""""""""""""""""unicode.vim settings""""""""""""""""""""""""""""""
nmap ga <Plug>(UnicodeGA)

" text objects
""""""""""""""""""""""""""""vim-sandwich settings"""""""""""""""""""""""""""""
" Map s to nop since s in used by vim-sandwich. Use cl instead of s.
nmap s <Nop>
omap s <Nop>

"""""""""""""""""""""""""vim-airline settings""""""""""""""""""
" Set airline theme 
let g:airline_theme='lucius'

" Tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Show buffer number for easier switching between buffer,
" see https://github.com/vim-airline/vim-airline/issues/1149
let g:airline#extensions#tabline#buffer_nr_show = 1

" Buffer number display format
let g:airline#extensions#tabline#buffer_nr_format = '%s. '

" Whether to show function or other tags on status line
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#gutentags#enabled = 1

" Do not show search index in statusline since it is shown on command line
let g:airline#extensions#anzu#enabled = 0

" Enable vim-airline extension for nvim-lsp
let g:airline#extensions#nvimlsp#enabled = 1

" Skip empty sections if there are nothing to show,
" extracted from https://vi.stackexchange.com/a/9637/15292
let g:airline_skip_empty_sections = 1

" Whether to use powerline symbols, see https://vi.stackexchange.com/q/3359/15292
let g:airline_powerline_fonts = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = ' CN:'
let g:airline_symbols.linenr = ' LN'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'

" Only show git hunks which are non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" Speed up airline
let g:airline_highlighting_cache = 1

" The key in the following shortcode are the layout when we use a specific
" input method mode. On my macOS, 0 means that we are trying to input Chinese,
" and 1 means we are using English mode.
" See also https://github.com/vim-airline/vim-airline/blob/master/autoload/airline/extensions/xkblayout.vim#L11
let g:airline#extensions#xkblayout#short_codes = {'0': 'CN', '1': 'US'}

" Disable scrollbar
let g:airline#extensions#scrollbar#enabled = 0

""""""""""""""""""""""""""""vim-startify settings""""""""""""""""""""""""""""
" Do not change working directory when opening files.
let g:startify_change_to_dir = 0
let g:startify_fortune_use_unicode = 1

""""""""""""""""""""""""""""indent-blankline settings""""""""""""""""""""""""""""
let g:indent_blankline_char = '│'
" let g:indent_blankline_char = '┆'
" let g:indent_blankline_char = '┊'

let g:indent_blankline_filetype_exclude = ['help', 'startify', 'git', 'markdown']

" Misc plugin setting
"""""""""""""""""""""""""" asyncrun.vim settings """"""""""""""""""""""""""
" Automatically open quickfix window of 6 line tall after asyncrun starts
let g:asyncrun_open = 6

""""""""""""""""""""""""""""""nvim-gdb settings""""""""""""""""""""""""""""""
nnoremap <leader>dp :<C-U>GdbStartPDB python -m pdb %<CR>

""""""""""""""""""""""""""""""register.nvim settings""""""""""""""""""""""""""""""
let g:registers_show_empty_registers = 0
let g:registers_window_border = 'single'
let g:registers_window_max_width = 80
