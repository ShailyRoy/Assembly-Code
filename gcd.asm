        
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
mov x,cx 
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h

call scan_num   
mov y,cx 
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h

; while(num1!=num2)
;                   {
;                    if(num1 > num2)
;                    num1 =num1 - num2;
;                    else
;                    num2 = num2 - num1;
;                    }


start1:
cmp x,cx  
je end_start

cmp x,cx
jg start2

cmp x,cx
jle start3

jmp start1

 start2:  
 
 sub x,cx
 jmp start1
 
 start3:
   sub cx,x
   jmp start1

end_start:
       mov ax,x
       call print_num

endp main







define_scan_num
define_print_num
define_print_num_uns

