.model small
.stack 100h
.data
msg1 db 0dh,0ah, 'enter the first value: $'
msg2 db 0dh,0ah, 'enter the second value: $'
msg3 db 0dh,0ah, 'the sum is: $' 
.code 

main proc
    
    
   MOV AX,@DATA
   MOV DS,AX
    
    
   MOV AH,9
   LEA DX,MSG1
   INT 21H
    
   MOV AH,1
   INT 21H
   MOV BL,AL
    
    
   MOV AH,9
   LEA DX,MSG2
   INT 21H
   
   
   MOV AH,1
   INT 21H
   
   
   add BL,AL
   sub BL,48
   
   
   MOV AH,9
   LEA DX,MSG3
   INT 21H
   
   MOV AH,2
   MOV DL,BL
   int 21h
   
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
   END MAIN

