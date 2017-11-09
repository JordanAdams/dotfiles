if executable('rg')
  let g:ackprg = 'rg --no-heading --ignore-case --color always --follow --hidden --line-number --column --glob !.git/*'
endif
