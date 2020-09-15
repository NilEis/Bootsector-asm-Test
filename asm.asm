msg  db  "Hello world"
;Set 80x25 16-color text mode
xor ah, ah
mov al, 0x03
int 0x10
;-----------
mov AH, 13h
mov al, 1
mov dh, 0
mov dl, 0
mov cx, 12
mov es, [0]
mov bp, msg
mov bl, 0xf ;Set text-color to white
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0