.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 0DH,0AH, 'Enter The First Integer Number: $'
MSG2 DB 0DH,0AH, 'Enter The Second Integer Number: $'
MSG3 DB 0DH,0AH, 'Please Keep The Result Between 0-9 For Accurate Result'
MSG4 DB 0DH,0AH, 'The Result is: $'
.CODE 

MAIN PROC
    
    
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
   
   
   ADD BL,AL
   SUB BL,48
   
   MOV AH,9
   LEA DX,MSG3
   INT 21H
      
   MOV AH,2
   MOV DL,BL
   INT 21H
   
   MOV AH,4CH
   INT 21H
   
   MOV AH,9
   LEA DX,MSG4
   INT 21H
   
   MAIN ENDP
   END MAIN