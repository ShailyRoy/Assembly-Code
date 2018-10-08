        
include 'emu8086.inc'





.model small

.stack 100h

.data


X dw 0
Y dw 0
Z dw 0
xx dw 0

month dw 0
year dw 0      
elect dw 0
hour dw 0
water dw 0
gas dw 0
internet dw 0
phone dw 0
house dw 0
service dw 0 
clean dw 0 
minute dw 0   
m dw 0

   





.code

mov ax,@data
mov ds,ax

main proc

print "1.January!      2.February" 
     
;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

print "3.March!        4.April" 

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;


print "5.May!          6.June!"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

print "7.July!         8.August!"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

print "9.September!    10.October!"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

print "11.November!    12.December!"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

print "select a month number between 1 to 12"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;


call scan_num   
mov month,cx 

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;



print "mention avarage units your devices consume in a day"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

call scan_num 
mov elect,cx

   
;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;





print "mention your telephone bill"

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;      


call scan_num
mov phone,cx

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;


;moving values

mov water,900
mov gas,600
mov internet,500
mov house, 9000
mov service, 700
mov clean, 500



;adding rents

mov dx,0
add dx,water
add dx,gas
add dx,internet
add dx,phone
add dx,house
add dx,service
add dx,clean 
mov ax,elect
mov xx,dx




;month counting 


start1:
 cmp month,2
 je start2    
 cmp month,1 
 je start14
 cmp month,3
 je start3
 cmp month,4
 je start4 
  cmp month,5
 je start5    
 cmp month,6 
 je start6
 cmp month,7
 je start7
 cmp month,8
 je start8
  cmp month,9
 je start9    
 cmp month,10 
 je start10
 cmp month,11
 je start11
 cmp month,12
 je start12
print "invalid" 
jmp ending

ending:





start2:  
print "Is there any leap year? 1.yes     2.no.     Select a number"
;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

call scan_num
mov year,cx
cmp year,1
je start13
mov year,29
mov ax,0
mov ax,elect
mul year 
mov elect,ax
print "you chose february!" 
;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;

jmp end_start




start13: 

 mov year,28
 mov ax,0
 mov ax,elect
 mul year 
 mov elect,ax
 print "you chose february!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



 
start4:  
 mov year,30
 mov ax,0
 mov ax,elect
 mul year 
 mov elect,ax  
 
 print "you chose April!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 
                      
                      
                      
start5:  
 mov year,31
 mov ax,0
 mov ax,elect
 mul year 
 mov elect,ax 
 
 print "you chose May!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 


start6:  
mov ax,0
 mov year,30
 mov ax,elect
 mul year 
 mov elect,ax   
 
 print "you chose June!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start7: 
mov ax,0 
 mov year,31
  mov ax,elect
 mul year 
 mov elect,ax  
 
 print "you chose July!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start8:  
 mov year,31 
 mov ax,0
  mov ax,elect
 mul year 
 mov elect,ax   
 
 print "you chose August!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start9:  
mov ax,0
 mov year,30
  mov ax,elect
 mul year 
 mov elect,ax  
 
 print "you chose September!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start10:
mov ax,0  
 mov year,31
  mov ax,elect
 mul year 
 mov elect,ax
 
 print "you chose October!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start11:
mov ax,0  
 mov year,30
  mov ax,elect
 mul year 
 mov elect,ax   
 
 print "you chose November!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start12:
mov ax,0  
 mov year,31
  mov ax,elect
 mul year 
 mov elect,ax
 
 print "you chose December!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start3: 
mov ax,0 
 mov year,31
  mov ax,elect
 mul year 
 mov elect,ax
 
 print "you chose March!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



start14:
mov ax,0  
 mov year,31
  mov ax,elect
 mul year 
 mov elect,ax  
 
 print "you chose January!"
 ;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

;;;;;;
 
jmp end_start 



;monthly electricity end




;electricity bill


end_start:

mov ax,0

jmp r1 


r6:  
mov m,ax
mov ax,elect
mov x,10 ;9.98
mul x   
add ax,m
jmp endl 


r1:  
cmp elect,75
jle r11
mov z,75
mov m,ax    
mov ax,0
mov ax,z
mov bx,elect    
mov x,4;3.80
mul x     
sub bx,z 
mov elect,bx
add ax,m
jmp r2


r11: 
mov ax,elect
mov x,4;3.80
mul x   
jmp endl


r2:  
cmp elect,125
jle r12
mov bx,elect
sub bx,z
mov elect,bx
mov m,ax 
mov ax,0
mov ax,z  
mov z,125  
mov x,5;5.14
mul x     
add ax,m
jmp r3



r12:
mov m,ax
mov ax,elect
mov x,5;5.14
mul x
add ax,m   
jmp endl

r3:  
cmp elect,100
jle r13
mov z,100
mov bx,elect
sub bx,z     
mov elect,bx
mov m,ax 

mov ax,z    
mov z,100
mov x,5;5.36
mul x     
add ax,m
jmp r4


r13:    
mov m,ax
mov ax,0
mov ax,elect
mov x,5;5.36
mul x   
add ax,m
jmp endl



r4:  
cmp elect,100
jle r12
mov z,100 
mov bx,elect
sub bx,z     
mov elect,bx
mov m,ax
mov ax,z 
mov z,100   
mov x,6;5.63
mul x     
add ax,m
jmp r5


r14:    
mov m,ax
mov ax,elect
mov x,6;5.63
mul x   
add ax,m
jmp endl



r5:  
cmp elect,200
jle r15
mov z,200
mov bx,elect
sub bx,z     
mov elect,bx
mov m,ax
mov ax,z 
mov z,200   
mov x,9;8.7
mul x     
add ax,m
jmp r6


r15:    
mov m,ax
mov ax,0
mov ax,elect
mov x,9;8.7
mul x   
add ax,m
jmp endl





;electricity end



endl:
mov y,ax
mov bl,100
div bl
mov cx,0   
add cl,al
add cl,al
mov ax,0
add ax,cx
mov bl,15
mul bl
add ax,y
mov cx,ax   


print "Generating bill....."


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;

print "monthly water bill (tk): "

mov ax,water
call print_num



;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


print "monthly gas bill (tk):  "
mov ax,gas


call print_num


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;

;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;

print "monthly internet bill (tk): "


mov ax,internet
call print_num 


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;




print "monthly telephone bill (tk): "


mov ax,phone
call print_num


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


print "monthly house rent (tk): "



mov ax,house
call print_num


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;

print "monthly service charge (tk): "



mov ax,service
call print_num


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;




print "Monthly House Keeping & Cleansing bill (tk):  "
mov ax,clean

call print_num



;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


mov ax,cx
print "electricity bill with vat:  "
call print_num


;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;
 
 
 
;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;



mov ax,xx
add ax,cx
print "total bill:  "
call print_num



;Line space

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
;;;;;;;


endp main







define_scan_num
define_print_num
define_print_num_uns

