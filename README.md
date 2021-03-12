# Bootsector-asm-Test

## Code Examples

Use: 
```
mov AH, 0x0e
mov al, 'N'
int 0x10
```
To write the char 'N'.

## Installation

Nasm is required to create the files.

To build use:
```
nasm asm.asm -f bin -o boot_sector.img
```
or   
```
nasm asm.asm -f bin -o boot_sector.bin
```
