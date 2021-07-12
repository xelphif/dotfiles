" config source: https://github.com/jdhao/nvim-config

let g:config_file_list = ['variables.vim',
  \ 'options.vim',
  \ 'autocommands.vim',
  \ 'mappings.vim',
  \ 'plugins.vim',
  \ ]

let g:nvim_config_root = expand('<sfile>:p:h')
for s:fname in g:config_file_list
  execute printf('source %s/config/%s', g:nvim_config_root, s:fname)
endfor
