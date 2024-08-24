" Author: Marcel Simader (marcel0simader@gmail.com)
" Date: 11.10.2023
" (c) Marcel Simader 2023

augroup QCIRFiletype
    autocmd!
    autocmd BufNewFile,BufRead *.qcir set filetype=qcir
    autocmd BufNewFile,BufRead *
                \   for lnr in range(1, 12)
                \ |     if getline(lnr) =~? '#\s*QCIR\(-G\?\d\+\)\?'
                \ |         set filetype=qcir | break
                \ |     endif
                \ | endfor
augroup END

