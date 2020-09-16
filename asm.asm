msg  db  'Hello world'
msg_length dw $-msg
;Set 80x25 16-color text mode
xor ah, ah
mov al, 0x03
int 0x10
;-----------
mov ax, 0x0a
mov es, ax
xor ax,ax
mov bp, 0x0
mov al, 1
mov dh, 0
mov dl, 0
mov cx, 11
mov bl, 0xf ;Set text-color to white
;Int 10, 13
mov ah, 13h
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0