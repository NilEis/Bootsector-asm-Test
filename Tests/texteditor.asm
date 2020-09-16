loop:
;Interrupt read char
mov ah, 0x00
int 0x16
;write
mov ah, 0x0e
cmp al,8
int 0x10
;cmp
je clear
;jmp to top
jmp loop

backspace:

;clear
clear:
mov ah, 0x0e
mov al, 177
int 0x10
mov al, 8
int 0x10
jmp loop

times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0