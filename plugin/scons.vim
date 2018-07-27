" Author : Naresh (nareshkumargangwar@gmail.com)

" Keyboard mappings to run scons commands.
if !exists('g:scons_disable_mapping')
  noremap <leader>sd :call scons#dbg()<CR>
  noremap <leader>so :call scons#opt()<CR>
  noremap <leader>st :call scons#test()<CR>
  noremap <leader>sa :call scons#testall()<CR>
endif
