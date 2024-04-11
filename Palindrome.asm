;ALP Program For Checking The Given Number Is Palindrome Or Not
.model small                      
.data
    num1 dw 2332d
    num2 dw 0   
    tempque dw 0
    temprem dw 0
    ten dw 0010d
    str1 db 'Number is Palindrome$'  
    str2 db 'Number is not Palindrome$'
.code
    mov ax,@data
    mov ds,ax 
    mov cx,4
     mov ax,num1 
  up:  
    div ten
    mov tempque,ax
    mov temprem,dx
    mov ax,num2
    mul ten 
       
    add ax,temprem
    mov num2,ax
    mov ax,tempque
    loop up  
    
    mov ax,num1
    mov bx,num2
            
    cmp ax,bx 
    je down
       mov ah,09h
       lea dx,str2
       int 21h
       jmp end
  down:     
       mov ah,09h
       lea dx,str1
       int 21h 
  end:
       mov ah,4ch
       int 21h
ends
end   