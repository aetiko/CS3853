; ADD 2 8 BIT NUMBERS
;

	ORG	$0000;
NUM1	FCB	$02;
NUM2	FCB	$02;
SUM8	FCB	$00;

	ORG	$E000;
	LDAA	NUM1;
	LDAB	NUM2;
	ABA;
	DAA;
	STAA	SUM8;
	NOP;