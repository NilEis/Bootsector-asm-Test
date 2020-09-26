[org 0x7c00]

hwString  db  'Hello world'

; Set 80x25 16-color text mode
xor ah, ah   ; set ah = 0
mov al, 0x03 ; set instruction 0x03
int 0x10     ; call int 0x10

; Write String
mov ax, 0x0
mov es, ax
xor ax,ax
mov bp, hwString
mov al, 1 ; 
mov dh, 0 ; Set row
mov dl, 0 ; Set column
mov cx, 11 ; Set String length 
mov bl, 0xf ; Set text-color to white
mov ah, 13h ; Set instruction 13h
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
times 1474560-($-$$) db 0