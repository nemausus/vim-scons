" Author : Naresh (nareshkumargangwar@gmail.com)

function! scons#run(cmd)
  execute 'term scons -j20 '.a:cmd
  execute "normal \<C-w>\<C-w>"
endfunction

function! scons#dbg()
  call scons#run('mode=dbg %:h:%:t:r')
endfunction

function! scons#opt()
  call scons#run('mode=opt %:h:%:t:r')
endfunction

function! scons#testall()
  let cmd='runtests=default '.expand('%:h').':'.expand('%:t:r')
  let suffix=strpart(cmd, strlen(cmd) - 4)
  if suffix != "test"
    let cmd=cmd.'_test'
  endif
  call scons#run(cmd)
endfunction

function! scons#test()
  let l = line(".")
  let c = col(".")
  execute "normal! ?^TEST\<CR>f(w"
  let suite = expand("<cword>")
  execute "normal! W"
  let test = expand("<cword>")
  let cmd = 'runtests=default %:h:%:t:r'.
      \' --test_args=--gtest_filter=*'.suite.'.'.test
  call scons#run(cmd)
  call cursor(l, c)
endfunction
