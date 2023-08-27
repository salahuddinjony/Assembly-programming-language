.model small ;for code and data segment
.stack 100h  ;memory size
.code  ;for code segment convert from all data segment in assebmly language


name PROC ;main function
    mov ah,1  ;input function
    int 21h   ; for any intger type data 
    mov bl,al ;al register has all bidefault data

; for another input

    mov ah,1  ;input function
    int 21h   ; for any intger type data 
    mov bh,al ;al

    ;for dislplay we use dl
    mov ah,2  
    mov dl,bl
    int 21h

    mov ah,2  
    mov dl,bh
    int 21h

    exit:
    mov ah,4ch
    int 21h 
    main ENDP


    
name ENDP