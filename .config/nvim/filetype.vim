" SCons

if exists ("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile SConstruct       setfiletype python
  au! BufRead,BufNewFile SConscript*      setfiletype python
augroup END

