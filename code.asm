AREA PROGRAM, CODE, READONLY
MOV R2, #3     ; Load Q into R2
MOV R3, #0     ; Load A into R3
MOV R4, #4     ; Number of iterations
MOV R5, #5   ; Load M into R5
             LOOP
CMP R4, #0
BLE END_LOOP
AND R0, R2, #1
LSR R1, R2, #1
AND R1, R1, #1
ORR R1, R1, R0
CMP R1, #2
BEQ  SUB_M
                  SUB_M
                             SUB R0, R3, #5
     MOV R3, R0
     B SHIFT_RIGHT ; Performing right shift
     CMP R1, #1
     BEQ  ADD_M
             ADD_M
    		    ADD R0, R3, #5
    		    MOV R3, R0
          SHIFT_RIGHT
            SHIFT_RIGHT
           ASR R3, R3, #1
    		    ROR R2, R2,#1
           SUBS R4, R4, #1
           B ITERATION_LOOP
           ORR R3, R3,R0
            STOP B STOP 
           END
