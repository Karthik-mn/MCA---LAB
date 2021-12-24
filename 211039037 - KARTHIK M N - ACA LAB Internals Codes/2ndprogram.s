	AREA PROGRAM, CODE, READONLY
	ENTRY
MAIN
	LDR R0,VALUE;		loading address of the value to R0
	LDR R3,COUNT;		loading address of the count into R3
	LDR R4,[R3];		loading count into R4
LOOP
	LDR R1,[R0];		loading content of address which is in R0 into R1
	CMP R1,#0;			comparing content of R1 to 0 to check for negative number
	BMI JUMP;			if the number in R1 is negative go to JUMP
	ADD R2,R1;			else add R2 and R1 and stores in R2
	ADD R0,#4;			incrementing the address in R0 to fetch next element of array
	ADD R4,#-1;			decrementing counter
	CMP R4,#0;			checks if R4 counter is 0 or not
	BEQ DONE;			if counter is 0 go to DONE
	B LOOP;				else go to LOOP
JUMP
	ADD R0,#4;			incrementing address
	ADD R4,#-1;			decrementing counter
	B LOOP;				go to LOOP

DONE
	LDR R3,RESULT;		loading address to store RESULT
	STR R2,[R3];		storing RESULT
STOP B STOP;



VALUE DCD 0X40000004;
COUNT DCD 0X40000000;
RESULT DCD 0X4000002C;
	END
; KARTHIK M N - 211039037