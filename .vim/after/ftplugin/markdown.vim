" Soft wrap and break on word boundaries for readability
set wrap
set nolist
set linebreak
set breakat=\ ^I

" Make movement commands work across displayed lines, not just physical lines
" See http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" vim-markdown plugin settings
set conceallevel=2
let g:vim_markdown_frontmatter=1
