hwString dw "Hello World",0xa
mov AH, 13h
mov al, 1
mov dh, 5
mov dl, 5
mov cx, 12
mov es, [hwString]
mov bl, 15
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0