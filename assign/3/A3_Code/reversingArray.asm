              ORG      $0000;   start data at 0000
N             FCB      5;       array size
ARR           FCB      1,2,3,4,5;     array values
NEW	      FCB;
              ORG      $E000;  continue with program at E000
              LDX      #ARR;   load the address of the arrayS END
	      LDY      #NEW;
              LDAA     N;      load the size of the array
 
              JSR      LOAD;   call the subroutine 
              NOP;              this is where your program ends
;                              (you may need to set a
;                               breakpoint here)
;
LOAD		LDAB	0,X;
		STAB	0,Y;
		INY;
		INX;
		DECA;
		BNE	LOAD;
		LDY	#NEW+4;
		LDX	#ARR;
		LDAA	N;
		JSR	REVERSE1;

REVERSE1	LDAB	0,Y;
		STAB	0,X;
		INX;
		DEY;
		DECA;	
		BNE	REVERSE1;
		RTS;
		