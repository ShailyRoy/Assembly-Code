                 
include 'emu8086.inc'





.model small

.stack 100h

.data


X dw 0
Y dw 0
Z dw 0

a dw 0
b dw 0
c dw 0


.code

mov ax,@data
mov ds,ax

main proc


call scan_num   
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h

mov ax,1


start1:
cmp cx,0  
je end_start

mul cx
dec cx  


jmp start1



end_start: 
call print_num  
jmp end

end:


endp main







define_scan_num
define_print_num
define_print_num_uns

