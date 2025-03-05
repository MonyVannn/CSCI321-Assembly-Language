COMMENT *
Project Description:
Write a program with a loop and indirect address that copies a string from source to target. Revising the character order in the process. Use the following variables:
source BYTE “This is the string that will be reversed”, 0
target BYTE SIZEOF source DUP(‘#’)
You may refer to the Programming Exercise #7 on Page 138 of the textbook.
*


.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword


.DATA
         source BYTE  "This is the string that will be reversed",0
         target BYTE  SIZEOF source DUP('#')
  


.CODE
main PROC
         mov    esi, OFFSET source        ; ESI points to the source string
         mov    edi, OFFSET target        ; EDI points to the target string
         mov    ecx, SIZEOF source - 1    ; Loop counter (excluding null terminator)

    ; Move ESI to the end of the source string
         add    esi, ecx                  ; ESI now points to the null terminator
         dec    esi                       ; ESI now points to the last character of the source

    L1:  
         mov    al, [esi]                 ; Load character from source using indirect addressing
         mov    [edi], al                 ; Store it in target
         inc    edi                       ; Move to the next position in target
         dec    esi                       ; Move to the previous character in source

         loop   L1                        ; Repeat until all characters are copied

         mov    byte ptr [edi], 0         ; Add null character to the end of target

    ; Exit program
         INVOKE ExitProcess, 0
main ENDP

END main
