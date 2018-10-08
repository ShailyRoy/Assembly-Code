        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
        .data 
        
        
        a db 30 dup('$')  
        x db 10 dup('$')
        
        .code 
        
        mov ax,@data
        mov ds,ax
            
        mov si,0
        mov bl,0
        
        print "give 5 names" 
        
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h  
        
        
        ;taking input
          
        input: 
        
        cmp bl,5
        je end_input
        inc bl 
        
        input2: 
        
        mov ah,1
        int 21h 
       
        cmp al,13
        je end_input2
        mov a[si],al 
        inc si
       
        jmp input2
       
             
        end_input2:   
         
        inc si    
         
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h  
         
        jmp input
         
        end_input:
         
         
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h  
        
        ;end input
        
        print 'Printing Main Array:  '
        
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h  
          
        mov si,0
        mov bl,0
          
        p1: 
        
        cmp bl,5
        je end_p
        inc bl  
        
        
        p2:
         
        mov dl,a[si]   
        
        cmp dl,'$'
        je end_p2
        
        mov ah,2
        int 21h
         
        inc si       
        
        jmp p2
        
        
        end_p2: 
        inc si   
         
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h 
        jmp p1
       
        end_p: 
         
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h      
        
        ;again input
        
                  
        print 'Enter a Name: '
        
        
        
        mov si,0
        mov bl,0
        
        ;input Name 
        
        in3:
        
        mov ah,1
        int 21h 
        cmp al,13
        je end_in3
        mov x[si],al 
        inc si
        jmp in3 
        
        end_in3:
            
        mov si,0
        mov di,0
        mov dl,0
        mov sp,0
        mov cl,0
        
        
        
        ;search
        
        search:
        
        mov dl,0
        mov dl,a[di]
        
        
        cmp dl,'$'
        je search2
         
        
        mov cl,x[si]
        inc si
        inc di 
        cmp cl,dl
        je search
        
        jmp start
        
        start:
        mov si,0
        jmp search
        
        search2:
        
        inc sp
        mov bl,x[si]
        cmp bl,'$'
        je match
        
        cmp sp,5
        je notmatch
        
        mov si,0
        inc di
        mov bl,0
        mov dl,0
        
        jmp search
        
        end_search:
          
        
        
        notmatch:
        
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h
        print 'ei nam Array te nai'
      
        jmp end
        
        
           
        match: 
        
        mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h
        
        print 'ei nam Array te ase'
        
        jmp end
        
              
        end:
                  
        mov ah,4ch
        int 21h
         
         
         define_scan_num 
         define_print_num
         define_print_num_uns