.MODEL SMALL
.STACK 100H
.DATA
NL EQU 0DH,0AH
MSG1 DB NL,"Enter The Number (Not More Then Three): $"
MSG2 DB NL,"1st Number Is The Largest $"
MSG3 DB NL,"2nd Number Is The Largest $"
MSG4 DB NL,"3rd Number Is The Largest $"
MSG5 DB NL,"Number Is Same Or Invalid $"
NUM1 DB ?
NUM2 DB ?
NUM3 DB ?
.CODE
     MAIN PROC
MOV AX,@DATA
    MOV DS,AX
START:
      MOV AH,9
      LEA DX,MSG1
      INT 21H
      
      MOV AH,1
      
      INT 21H
      
      CMP AL,0DH
      JE EXIT
      
      MOV NUM1,AL
      
      INT 21H
      MOV NUM2,AL
      
      INT 21H
      MOV NUM3,AL
      
      MOV BL,NUM1
      CMP BL,NUM2
      JE I
      JlE A1
      JL  B1
A1:
      CMP BL,NUM3
      JGE A
      JMP C
A:    
      MOV AH,9
      LEA DX,MSG2
      INT 21H
      JMP START
B1:  
      MOV BL,NUM2
      CMP BL,NUM3
      JGE B
      JMP C
B:
      MOV AH,9
      LEA DX,MSG3
      INT 21H
      JMP START
C:
      MOV AH,9
      LEA DX,MSG4
      INT 21H
      JMP START
I: 
      MOV AH,9
      LEA DX,MSG5
      INT 21H
      JMP START
EXIT:      
     MOV AH,9
     INT 21H
     
MAIN ENDP
     END MAIN