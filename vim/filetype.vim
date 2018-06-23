" my filetype file
if exists("did_load_filetypes")
  finish
end

augroup filetypedetect
  au! BufRead, BufNewFile *.rabl setfiletype ruby
augroup END
