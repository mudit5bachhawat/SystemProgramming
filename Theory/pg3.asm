TITLE PG3

.MODEL SMALL
.STACK 100H
.DATA
	MSG1 DB "ENTER A SMALLER CASE LETTER: $"
	MSG2 DB 0DH,0AH,"UPPER CASE : "
	CHAR DB 'P$'

.CODE
	MOV AX, @DATA
	MOV DS, AX
	MOV AH, 9
	LEA DX, MSG1
	INT 21H
	MOV AH, 1
	INT 21H
	SUB AL, 20H

	MOV CHAR, AL
	MOV AH, 9
	LEA DX, MSG2
	INT 21H

	MOV AH, 4CH
	INT 33
END