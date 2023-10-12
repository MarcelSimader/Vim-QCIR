" Vim syntax file for QCIR
" Language: Dimacs
" Author:   Marcel Simader (marcel0simader@gmail.com)
" Date:     11.10.2023
" (c) Marcel Simader 2023

" quit when a syntax file was already loaded
if exists('b:current_syntax')
    finish
endif

" ~~~~~~~~~~~~~~~~~~~~ Syntax ~~~~~~~~~~~~~~~~~~~~

" ~~~~~~~~~~ General
syntax keyword QCIRKeywords   forall exists or and xor ite
syntax match   QCIROperators  /,\|;\|=\|-/
syntax match   QCIRDelimiters /(\|)/
syntax match   QCIRComment    /^\s*#.*$/
            \ contains=QCIRFormatID
syntax match   QCIRFormatID   /QCIR\(-G\?\d\+\)\?\(\s\+\d\+\)\?/
            \ contained

" ~~~~~~~~~~ Declaration
syntax keyword QCIRKeywordsOutput      output
syntax keyword QCIRKeywordsDeclaration forall exists
            \ contained=ALLBUT,QCIRStatement
syntax match   QCIRStatement           /=\s*\(forall\|exists\)/
            \ transparent contains=QCIRKeywords,QCIROperators

" ~~~~~~~~~~ Identifier
syntax match QCIRIdentifier /[_[:alnum:]]\+/

" ~~~~~~~~~~~~~~~~~~~~ Highlight ~~~~~~~~~~~~~~~~~~~~

" ~~~~~~~~~~ General
highlight default link QCIRKeywords   Statement
highlight default link QCIROperators  Operator
highlight default link QCIRDelimiters Delimiter
highlight default link QCIRComment    Comment
highlight default link QCIRFormatID   SpecialComment

" ~~~~~~~~~~ Declaration
highlight default link QCIRKeywordsDeclaration Structure
highlight default link QCIRKeywordsOutput      Constant

" ~~~~~~~~~~ Identifier
highlight default link QCIRIdentifier Normal

let b:current_syntax = 'qcir'

