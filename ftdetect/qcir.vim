" Author: Marcel Simader (marcel0simader@gmail.com)
" Date: 11.10.2023
" (c) Marcel Simader 2023

augroup DimacsFiletype
    autocmd!
    autocmd BufNewFile,BufRead *.qcir set filetype=qcir
    autocmd BufNewFile,BufRead *
                \ for lnr in range(1, 5)
                \ |    if getline(lnr) =~? '#\s*QCIR\(-G\?\d\+\)\?'
                \ |        set filetype=qcir
                \ |     endif
                \ | endfor
augroup END

