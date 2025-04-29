%define TXT "%define TXT %define PRINT  %define MAIN"
%define PRINT "mov rax, [rel dprintf wrt ..got],10    call rax"
%define MAIN "section .text,10    extern dprintf,10    global main,10main:,10    "
; this is a comment