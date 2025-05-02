%define LF 10
%define DQ 34
%define FILENAME "Grace_kid.s"

section .data
    msg db "section .data%1$c    msg db %2$c%4$s%2$c,0%1$c%1$csection .text%1$c    global _start%1$c    extern printf, open, write, close%1$c%1$c; this is a comment%1$c%macro START 0%1$c_start:%1$c    mov rdi, %2$c%4$s%2$c%1$c    mov rsi, 577%1$c    mov rdx, 0777%1$c    xor rax, rax%1$c    mov rax, [rel open wrt ..got]%1$c    call rax%1$c    mov rdi, rax%1$c    lea rsi, [rel msg]%1$c    xor rax, rax%1$c    mov rax, [rel printf wrt ..got]%1$c    call rax%1$c    xor rax, rax%1$c    mov rax, [rel close wrt ..got]%1$c    call rax%1$c    ret%1$c%endmacro%1$c%1$c START",0

section .text
    global _start
    extern printf, open, write, close

; this is a comment
%macro START 0
_start:
    mov rdi, FILENAME
    mov rsi, 577
    mov rdx, 0777
    xor rax, rax
    mov rax, [rel open wrt ..got]
    call rax
    mov rdi, rax
    lea rsi, [rel msg]
    xor rax, rax
    mov rax, [rel printf wrt ..got]
    call rax
    xor rax, rax
    mov rax, [rel close wrt ..got]
    call rax
    ret
%endmacro

START
