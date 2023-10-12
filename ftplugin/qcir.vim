" Author: Marcel Simader (marcel0simader@gmail.com)
" Date: 11.10.2023
" (c) Marcel Simader 2023

let b:save_cpo = &cpo
set cpo&vim

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal comments& comments=:#
setlocal formatoptions& formatoptions+=ro

let b:undo_ftplugin = "setlocal fo< com<"
let &cpo = b:save_cpo

