
# Compile
# nasm -f elf32 -o linuxPrintText.o linuxPrintText.s

# Link
# i686-linux-gnu-ld linuxPrintText.o -o linuxPrintText

# Run
# qemu-i386 linuxPrintText


global _start           ; Entry point of the program

section .data
  msg: db "Text", 0xa   ; "Message", lineBreak
  len: equ $-msg        ; Current offset - msg == msg_length

section .text
  _start:
    mov eax, 4          ; 4 is the id of the WRITE function as defined in kernel headers
    mov ebx, 1          ; 1 is the stdout filedescriptor
    mov ecx, msg        ; The message to write 
    mov edx, len        ; Length of the message to write
    int 0x80            ; Invoque the call
    
    mov al, 1           ; 1 is the id of the EXIT function as defined in kernel headers
    mov ebx, 0          ; Status value returned to the parent process
    int 0x80            ; Invoque the call
