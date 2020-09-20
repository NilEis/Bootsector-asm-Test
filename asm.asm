;Set 80x25 16-color text mode
xor ah, ah
mov al, 0x03
int 0x10
;-----------
;Int 10, 13
mov ah, 13h
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0