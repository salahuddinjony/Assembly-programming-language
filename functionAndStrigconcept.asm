.model small
.stack 100h
.data
m db 'Enter your value: $' 
m1 db 'Yuor value is:$'
.code
main proc
    
    ; Here the functions
    
    ; 1->use for single key input
    ; 2->Use for single character output
    ; 9->Use for character string output 
    
    mov ax,@data
    mov ds,ax 
    
      ;print the m message
    mov ah,9
    lea dx,m
    int 21h  
    
      ;input m
    mov ah,1
    int 21h
    mov m,al 
      
      ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
      
      ;print m1 message        
    mov ah,9
    lea dx,m1
    int 21h
        
        ;print m
    mov ah,2
    mov dl,m
    int 21h 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    
