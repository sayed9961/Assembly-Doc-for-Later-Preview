.MODEL SMALL
.STACK 100H
.DATA
NL EQU 0DH,0AH
MSG1 DB NL, "Input the characters (Press Enter To Exit): $"
MSG2 DB NL, "The Input Characters In Reverse Order : $"

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
START:    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1

INPUT:
    INT 21H
    MOV BL,AL
    CMP BL,0DH
    JE NEXT
    PUSH BX
    JMP INPUT

NEXT:
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    MOV AH,2

OUTPUT:
    POP DX
    INT 21H
    CMP SP,0100H
    JNE OUTPUT
    JMP START

EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    END MAIN
    