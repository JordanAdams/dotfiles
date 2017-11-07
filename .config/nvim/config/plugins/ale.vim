" Disable as-you-type linting
let g:ale_lint_on_text_changed = 'never'

" Enable fixing on save
let g:ale_fix_on_save = 1

" JavaScript Fixers
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ }
