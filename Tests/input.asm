loop:
;Interrupt read char
mov ah, 0x00
int 0x16
;write char
mov ah, 0x0e
int 0x10
;clear
mov ah, 0x0e
mov al, 8
int 0x10
;jmp to top
jmp loop

times 510-($-$$) db 0
dw 0xaa55