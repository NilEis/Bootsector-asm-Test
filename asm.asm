mov AH, 0x0e
mov al, 8
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0