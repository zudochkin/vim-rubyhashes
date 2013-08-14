" rubyhashes.vim - Replace old hashes with new hashes (Ruby Language)
" Author:       Dima Zudochkin <http://zudochk.in/>

func! rubyhashes#ReplaceAll()
  exe '%s/:\(\w\+\)\s*=>\s*/\1: /ge'
endfunc

func! rubyhashes#ReplaceVisual()
  let range="'<,'>"

  silent exe range."yank"
  let selected = @@

  let new_hashes_text = substitute(selected, ':\(\w\+\)\s*=>\s*', '\1: ', 'g')

  silent exe "norm! :".range."change\<CR>".new_hashes_text
endfunc
