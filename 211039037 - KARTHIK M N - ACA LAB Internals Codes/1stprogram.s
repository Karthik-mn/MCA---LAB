    AREA PROGRAM,CODE,READONLY
    ENTRY
MAIN
        LDR R0,VALUE; 			loading address of the value to R0
        LDR R1,[R0]; 			loading count into R1
        MOV R2,#0X0000000F; 	Moving address to R2
        MOV R3,#0X000F0000; 	Moving Address to R3
        AND R4,R1,R2; 			Masking the bits
        AND R5,R1,R3;  			Masking the bits
        LSR R5,R5,#16; 			Logiical shift Right by 16 Bits
        ADD R6,R4,R5; 			Masking the bits
        LDR R0,RESULT; 			Storing the address of the result in R0
        STR R6,[R0]; 			Value of the R6 is stored in the address of the R0
        SVC &11; 

 

VALUE DCD &40000004;
RESULT DCD &4000000C;
    END;
; KARTHIK M N - 211039037