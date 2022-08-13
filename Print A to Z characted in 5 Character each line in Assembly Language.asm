.MODEL SMALL
.STACK 100H
.DATA
.CODE

    MAIN PROC
    MOV CL,"A"
    MOV BL,"0"
    
START:
    MOV AH, 2
    MOV DL,CL
    INT 21H
    
    INC BL
    CMP BL,"5"
    JE FIRST
    JNE SECOND

FIRST:
    MOV BL,"0"
    MOV AH, 2
    
    MOV DL,0DH
    INT 21H
    
    MOV DL,0AH
    INT 21H

SECOND:
    INC CL
    CMP CL,"Z"
    JNG START

    MAIN ENDP
    END MAIN