COMMENT *
Project Description:
Write a program that contain the following:
1.	Using the AddTwo program from Section 3.2 as a reference, write code to calculate the following expression, using registers: A = (A+B)-(C+D). Assign integer values to the EAX, EBX, ECX, and EDX registers
2.	Write code that defines symbolic constants for all seven days of the week. Create an array variable that uses the symbols as initializers
3.	The program must contain a definition of each data type listed in Table 3.2 in Section 3.4 of the textbook. Initialize each variable to a value that is consistent with its data type
4.	Write code defines symbolic names for several string literals. Use each symbolic name in a variable definition

Name: Monyvann Men
Date: 2/22/2025
*


.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword


.DATA
    ; Task 1: Integer Expression Calculation
    varA DWORD 30
    varB DWORD 20
    varC DWORD 10  
    varD DWORD 10

    ; Task 2: Symbolic Integer Constants for Days of the Week
    SUNDAY      EQU 0
    MONDAY      EQU 1
    TUESDAY     EQU 2
    WEDNESDAY   EQU 3
    THURSDAY    EQU 4
    FRIDAY      EQU 5
    SATURDAY    EQU 6

    daysArr DWORD SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY

    ; Task 3: Data Definitions
    byteVar    BYTE  123                            ; Unsigned 8-bit
    sbyteVar   SBYTE -45                            ; Signed 8-bit

    wordVar    WORD  32000                          ; Unsigned 16-bit
    swordVar   SWORD -15300                         ; Signed 16-bit

    dwordVar   DWORD 2147483647                     ; Unsigned 32-bit
    sdwordVar  SDWORD -100000                       ; Signed 32-bit

    fwordVar   FWORD 123456                         ; 48-bit (Far pointer placeholder)
    qwordVar   QWORD 0AABBCCDDEEFF1122h             ; 64-bit
    tbyteVar   TBYTE 9876543210                     ; 80-bit integer placeholder

    real4Var   REAL4 2.718                          ; 32-bit floating point
    real8Var   REAL8 1.61803398875                  ; 64-bit floating point
    real10Var  REAL10 0.5772156649                  ; 80-bit floating point

    ; Task 4: Symbolic Text Constants
    helloText  BYTE "Hello, my name is Monyvann!", 0
    goodbyeText BYTE "Goodbye, everybody!", 0
    greeting TEXTEQU <"Welcome to the United States of America"> ; Fixed string definition

.CODE
main PROC
    ; Task 1: Integer Expression Calculation
    MOV EAX, varA               ; Load varA into EAX
    ADD EAX, varB               ; EAX = varA + varB
    MOV EBX, varC               ; Load varC into EBX
    ADD EBX, varD               ; EBX = varC + varD
    SUB EAX, EBX                ; EAX = (varA + varB) - (varC + varD)

    ; Exit program
    INVOKE ExitProcess, 0
main ENDP

END main
