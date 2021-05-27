	.org 0
	dc.l		reset					;Power-on reset PC
	dc.l		0x0F001000				;Power-on reset SP
	dc.l		reset					;Manual reset PC
	dc.l		0x0F001000				;Manual reset SP
	dc.l		gen_illegal_inst			;General illegal instruction
	dc.l		reserved				;Reserved
	dc.l		illegal_slot_inst			;Illegal slot instruction
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		cpu_addr_error			;CPU address error
	dc.l		dma_addr_error			;DMA address error
	dc.l		nmi					;NMI interrupt
	dc.l		user_break				;User break interrupt
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		TRAP_32				;Trap 32
	dc.l		TRAP_33				;Trap 33
	dc.l		TRAP_34				;Trap 34
	dc.l		TRAP_35				;Trap 35
	dc.l		TRAP_36				;Trap 36
	dc.l		TRAP_37				;Trap 37
	dc.l		TRAP_38				;Trap 38
	dc.l		TRAP_39				;Trap 39
	dc.l		TRAP_40				;Trap 40
	dc.l		TRAP_41				;Trap 41
	dc.l		TRAP_42				;Trap 42
	dc.l		TRAP_43				;Trap 43
	dc.l		TRAP_44				;Trap 44
	dc.l		TRAP_45				;Trap 45
	dc.l		TRAP_46				;Trap 46
	dc.l		reserved				;Trap 47
	dc.l		reserved				;Trap 48
	dc.l		reserved				;Trap 49
	dc.l		reserved				;Trap 50
	dc.l		reserved				;Trap 51
	dc.l		reserved				;Trap 52
	dc.l		reserved				;Trap 53
	dc.l		reserved				;Trap 54
	dc.l		reserved				;Trap 55
	dc.l		reserved				;Trap 56
	dc.l		reserved				;Trap 57
	dc.l		reserved				;Trap 58
	dc.l		reserved				;Trap 59
	dc.l		reserved				;Trap 60
	dc.l		reserved				;Trap 61
	dc.l		reserved				;Trap 62
	dc.l		reserved				;Trap 63
	dc.l		int_unused				;IRQ0
	dc.l		int_unused				;IRQ1
	dc.l		int_unused				;IRQ2
	dc.l		int_unused				;IRQ3
	dc.l		int_unused				;IRQ4
	dc.l		int_unused				;IRQ5
	dc.l		IRQL					;IRQ6
	dc.l		IRQH					;IRQ7
	dc.l		DMAC0					;DMAC0 DEI0
	dc.l		reserved				;
	dc.l		DMAC1 				;DMAC1 DEI1
	dc.l		reserved				;
	dc.l		DMAC2					;DMAC2 DEI2
	dc.l		reserved				;
	dc.l		DMAC3					;DMAC3 DEI3
	dc.l		reserved				;
	dc.l		int_unused				;
	dc.l		int_unused				;
	dc.l		int_unused				;
	dc.l		reserved				;
	dc.l		int_unused				;
	dc.l		int_unused				;
	dc.l		int_unused				;
	dc.l		reserved				;
	dc.l		mpega_int				;ITU2 IMIA2
	dc.l		mpegv_int				;ITU2 IMIB2
	dc.l		int_unused				;
	dc.l		reserved				;
	dc.l		unused_int				;
	dc.l		comreq_int				;ITU3 IMIB3
	dc.l		unused_int				;
	dc.l		reserved				;
	dc.l		timer_compa_int			;ITU4 IMIA4
	dc.l		timer_compb_int			;ITU4 IMIB4
	dc.l		timer_ovf_int			;ITU4 OVI4
	dc.l		reserved				;
	dc.l		unused_int				;
	dc.l		sci0_rx_int				;SCI0 RXI0
	dc.l		unused_int				;
	dc.l		unused_int				;
	dc.l		sci1_test_int			;
	dc.l		sci1_test_int			;
	dc.l		sci1_test_int			;
	dc.l		sci1_test_int			;
	dc.l		unused_int				;
	dc.l		unused_int				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		unused_int				;
	dc.l		unused_int				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;
	dc.l		reserved				;

	dc.b		"Copyright (C) Hitachi, Ltd. 1993"

000422 0009 
000424 E2E0
000426 9BA6

reset:
000428 D039     	MOV.L   	@(#0E4,PC),R0	;
00042A 400E     	LDC     	R0,SR			;SR = 0x00F0;
00042C 3EE8     	SUB     	R14,R14		;
00042E 4E2E     	LDC     	R14,VBR		;VBR = 0x00000000;
000430 B080     	BRS     	L000534		;ram_clear();
000432 0009     	NOP     				;
000434 D0E9     	MOV.L   	@(#3A4,PC),R0	;
000436 401E     	LDC     	R0,GBR		;
000438 B088     	BRS     	L00054C		;intc_init();
00043A 0009     	NOP     				;
00043C B094     	BRS     	L000568		;ubc_init();
00043E 0009     	NOP     				;
000440 B0B2     	BRS     	L0005A8		;wdt_init();
000442 0009     	NOP     				;
000444 B0C0     	BRS     	L0005C8		;pd_init();
000446 0009     	NOP     				;
000448 B094     	BRS     	L000574		;bsc_init();
00044A 0009     	NOP     				;
00044C B0D5     	BRS     	L0005FA		;tpc_init();
00044E 0009     	NOP     				;
000450 D030     	MOV.L   	@(#0C0,PC),R0	;
000452 401E     	LDC     	R0,GBR		;
000454 B0DC     	BRS     	L000610		;sci_init();
000456 0009     	NOP     				;
000458 B0E8     	BRS     	L00062C		;ad_init();
00045A 0009     	NOP     				;
00045C D02E     	MOV.L   	@(#0B8,PC),R0	;
00045E 401E     	LDC     	R0,GBR		;
000460 B0EA     	BRS     	L000638		;itu_init();
000462 0009     	NOP     				;
000464 B12A     	BRS     	L0006BC		;dmac_init();
000466 0009     	NOP     				;
000468 D0DC     	MOV.L   	@(#370,PC),R0	;
00046A 401E     	LDC     	R0,GBR		;
00046C B0B0     	BRS     	L0005D0		;pfc_init();
00046E 0009     	NOP     				;
000470 EA03     	MOV     	#03,R10		;
L000472:
000472 2FA6     	MOV.L   	R10,@-R15		;
000474 B1B4     	BRS     	L0007E0		;ygr_init();
000476 0009     	NOP     				;
000478 B146     	BRS     	L000708		;dram_init();
00047A 0009     	NOP     				;
00047C B157     	BRS     	L00072E		;int ret = dram_check();
00047E 0009     	NOP     				;
000480 2008     	TST     	R0,R0			;
000482 8900     	BT      	L000486		;
000484 E080     	MOV     	#80,R0		;
L000486:
000486 DC27     	MOV.L   	@(#09C,PC),R12	;//save check result
000488 2C00     	MOV.B   	R0,@R12		;hw_flags = !ret ? 0x00 : 0x80;
00048A DC27     	MOV.L   	@(#09C,PC),R12	;
00048C 2CD1     	MOV.W   	R13,@R12		;hw_check1 = R13 & 0xFFF;
00048E 6DD9     	SWAP.W   	R13,R13		;
000490 DC26     	MOV.L   	@(#098,PC),R12	;
000492 2CD1     	MOV.W   	R13,@R12		;hw_check2 = R13>>16;
000494 B1B8     	BRS     	L000808		;ret = ygr_check();
000496 0009     	NOP     				;
000498 2008     	TST     	R0,R0			;
00049A 8907     	BT      	L0004AC		;if (ret != 0) {
00049C DC21     	MOV.L   	@(#084,PC),R12	;
00049E 60C0     	MOV.B   	@R12,R0		;
0004A0 CB80     	OR      	#80,R0		;
0004A2 2C00     	MOV.B   	R0,@R12		;hw_flags|=0x80;
0004A4 DC21     	MOV.L   	@(#084,PC),R12	;
0004A6 60C1     	MOV.W   	@R12,R0		;
0004A8 20DB     	OR      	R13,R0		;
0004AA 2C01     	MOV.W   	R0,@R12		;hw_check1|=R13;
L0004AC:							;}
0004AC 6AF6     	MOV.L   	@R15+,R10		;
0004AE DC1D     	MOV.L   	@(#074,PC),R12	;
0004B0 60C0     	MOV.B   	@R12,R0		;
0004B2 C880     	TST     	#80,R0		;
0004B4 8902     	BT      	L0004BC		;if (hw_flags & 0x80 != 0) {
0004B6 7AFF     	ADD     	#FF,R10		;
0004B8 2AA8     	TST     	R10,R10		;
0004BA 8BDA     	BF      	L000472		;goto L000472; 
L0004BC:							;}
0004BC D017     	MOV.L   	@(#05C,PC),R0	;
0004BE 400B     	JSR     	@R0			;mpeg_init(); //L00A364
0004C0 0009     	NOP     				;
0004C2 B115     	BRS     	L0006F0		;rom_crc();
0004C4 0009     	NOP     				;
0004C6 D01A     	MOV.L   	@(#068,PC),R0	;
L0004C8:
0004C8 70FF     	ADD     	#FF,R0		;
0004CA 2008     	TST     	R0,R0			;
0004CC 8BFC     	BF      	L0004C8		;//wait 7500
0004CE D014     	MOV.L   	@(#050,PC),R0	;
0004D0 400B     	JSR     	@R0			;ret,in=read_mpeg_input(in); //L00A3B8
0004D2 0009     	NOP     				;
0004D4 2008     	TST     	R0,R0			;
0004D6 8B03     	BF      	L0004E0		;ret != 0
0004D8 DD12     	MOV.L   	@(#048,PC),R13	;
0004DA 60D0     	MOV.B   	@R13,R0		;
0004DC CB02     	OR      	#02,R0		;
0004DE 2D00     	MOV.B   	R0,@R13		;hw_flags|=0x02;
L0004E0:
0004E0 DC12     	MOV.L   	@(#048,PC),R12	;
0004E2 60C1     	MOV.W   	@R12,R0		;
0004E4 6D1C     	EXTU.B   	R1,R13		;
0004E6 4D08     	SHLL2   	R13			;
0004E8 4D08     	SHLL2   	R13			;
0004EA 20DB     	OR      	R13,R0		;
0004EC 2C01     	MOV.W   	R0,@R12		;hw_check2|=in<<4;
0004EE B1FD     	BRS     	L0008EC		;ret=0;
0004F0 0009     	NOP     				;
0004F2 2008     	TST     	R0,R0			;
0004F4 8903     	BT      	L0004FE		;if (ret != 0) {
0004F6 DD0B     	MOV.L   	@(#02C,PC),R13	;
0004F8 60D0     	MOV.B   	@R13,R0		;
0004FA CB01     	OR      	#01,R0		;
0004FC 2D00     	MOV.B   	R0,@R13		;}
L0004FE:
0004FE D1B7     	MOV.L   	@(#2DC,PC),R1	;
000500 411E     	LDC     	R1,GBR		;
000502 C442     	MOV.B   	@(#042,GBR),R0	;
000504 C804     	TST     	#04,R0		;
000506 8B01     	BF      	L00050C		; 
000508 A266     	BRA     	L0009D8		;if (PBDR[2] == 0) goto L0009D8;//pin /COMSYNC
00050A 0009     	NOP     				;
L00050C:
00050C A1F4     	BRA     	L0008F8		;
00050E 0009     	NOP     				;
000510 000000F0
000514 05FFFEC0
000518 05FFFF00
00051C 0000A364
000520 0000A3B8
000524 0F00027D
000528 0F000000
00052C 0F000002
000530 0001D4C0

L000534:							;ram_clear()
000534 D003     	MOV.L   	@(#00C,PC),R0	;u32* ptr = 0x0F000000;
000536 D104     	MOV.L   	@(#010,PC),R1	;
L000538:							;do {
000538 20E2     	MOV.L   	R14,@R0		;*ptr = 0x00000000;
00053A 7004     	ADD     	#04,R0		;ptr++;
00053C 3016     	CMP/HI 	R1,R0			;
00053E 8BFB     	BF      	L000538		;} while (ptr < 0x0F000FFF);
000540 000B     	RTS     				;
000542 0009     	NOP     				;
000544 0F000000
000548 0F000FFF

L00054C:							;intc_init()
00054C D003     	MOV.L   	@(#00C,PC),R0	;
00054E C201     	MOV.L   	R0,@(#004,GBR)	;IPRA = 0x0000; IPRB = 0x0000;
000550 D003     	MOV.L   	@(#00C,PC),R0	;
000552 C202     	MOV.L   	R0,@(#008,GBR)	;IPRC = 0x8600; IPRD = 0x6666;
000554 D003     	MOV.L   	@(#00C,PC),R0	;
000556 C203     	MOV.L   	R0,@(#00C,GBR)	;IPRE = 0x0000; ICR = 0x0000;
000558 000B     	RTS     				;
00055A 0009     	NOP     				;
00055C 00000000
000560 86006666
000564 00000000

L000568:							;ubc_init()
000568 E000     	MOV     	#00,R0		;
00056A C204     	MOV.L   	R0,@(#010,GBR)	;BAR = 0x00000000;
00056C C205     	MOV.L   	R0,@(#014,GBR)	;BAMR = 0x00000000;
00056E C10C     	MOV.W   	R0,@(#018,GBR)	;BBR = 0x0000;
000570 000B     	RTS     				;
000572 0009     	NOP     				;

L000574:							;bsc_init()
000574 D007     	MOV.L   	@(#01C,PC),R0	;
000576 C208     	MOV.L   	R0,@(#020,GBR)	;BCR = 0x8000; WCR1 = 0xFFFF;
000578 D007     	MOV.L   	@(#01C,PC),R0	;
00057A C209     	MOV.L   	R0,@(#024,GBR)	;WCR2 = 0xFFFF; WCR3 = 0x9800;
00057C D007     	MOV.L   	@(#01C,PC),R0	;
00057E C20A     	MOV.L   	R0,@(#028,GBR)	;DCR = 0x7500; PCR = 0x0000;
000580 900E     	MOV.W   	@(#01C,PC),R0	;
000582 C116     	MOV.W   	R0,@(#02C,GBR)	;RCR = 0x5A80;
000584 900D     	MOV.W   	@(#01A,PC),R0	;
000586 C118     	MOV.W   	R0,@(#030,GBR)	;RTCNT = 0x6980;
000588 900C     	MOV.W   	@(#018,PC),R0	;
00058A C119     	MOV.W   	R0,@(#032,GBR)	;RTCOR = 0x9680;
00058C 900B     	MOV.W   	@(#016,PC),R0	;
00058E C117     	MOV.W   	R0,@(#02E,GBR)	;RTCSR = 0xA500;
000590 000B     	RTS     				;
000592 0009     	NOP     				;
000594 8000FFFF
000598 FFFF9800
00059C 75000000
0005A0 5A80
0005A2 6980
0005A4 9680
0005A6 A500

L0005A8:							;wdt_init()
0005A8 900A     	MOV.W   	@(#014,PC),R0	;
0005AA C11C     	MOV.W   	R0,@(#038,GBR)	;TCNT = 0x00;
0005AC C438     	MOV.B   	@(#038,GBR),R0	;TCNT;
0005AE 9008     	MOV.W   	@(#010,PC),R0	;
0005B0 C11C     	MOV.W   	R0,@(#038,GBR)	;TCSR = 0x18;
0005B2 C51D     	MOV.W   	@(#03A,GBR),R0	;TCSR;
0005B4 9006     	MOV.W   	@(#00C,PC),R0	;
0005B6 C11D     	MOV.W   	R0,@(#03A,GBR)	;RSTCSR[7] = 0x00;
0005B8 9005     	MOV.W   	@(#00A,PC),R0	;
0005BA C11D     	MOV.W   	R0,@(#03A,GBR)	;RSTCSR[6:0] = 0x1F;
0005BC 000B     	RTS     				;
0005BE 0009     	NOP     				;
0005C0 5A00
0005C2 A518
0005C4 A500
0005C6 5A1F

L0005C8:							;pd_init()
0005C8 E01F     	MOV     	#1F,R0		;
0005CA C20F     	MOV.L   	R0,@(#03C,GBR)	;SBYCR = 0x0000001F;
0005CC 000B     	RTS     				;
0005CE 0009     	NOP     				;

L0005D0:							;pfc_init()
0005D0 D005     	MOV.L   	@(#014,PC),R0	;
0005D2 C210     	MOV.L   	R0,@(#040,GBR)	;PADR = 0xF67B; PBDR = 0x0000;
0005D4 D005     	MOV.L   	@(#014,PC),R0	;
0005D6 C211     	MOV.L   	R0,@(#044,GBR)	;PAIOR = 0x5BF6; PBIOR = 0x3AF0;
0005D8 D005     	MOV.L   	@(#014,PC),R0	;
0005DA C212     	MOV.L   	R0,@(#048,GBR)	;PACR1 = 0xFF22; PACR2 = 0xBF1A;
0005DC D005     	MOV.L   	@(#014,PC),R0	;
0005DE C213     	MOV.L   	R0,@(#04C,GBR)	;PBCR1 = 0x5A8A; PBCR2 = 0x008A;
0005E0 900A     	MOV.W   	@(#014,PC),R0	;
0005E2 C137     	MOV.W   	R0,@(#06E,GBR)	;CASCR = 0xAFFF;
0005E4 000B     	RTS     				;
0005E6 0009     	NOP     				;
0005E8 F67B0000
0005EC 5BF63AF0
0005F0 FF22BF1A
0005F4 5A8A008A
0005F8 AFFF

L0005FA:							;tpc_init()
0005FA E0F0     	MOV     	#F0,R0		;
0005FC C070     	MOV.B   	R0,@(#070,GBR)	;TPMR = 0xF0;
0005FE E0FF     	MOV     	#FF,R0		;
000600 C071     	MOV.B   	R0,@(#071,GBR)	;TPCR = 0xFF;
000602 E000     	MOV     	#00,R0		;
000604 C072     	MOV.B   	R0,@(#072,GBR)	;NDERB = 0x00;
000606 C073     	MOV.B   	R0,@(#073,GBR)	;NDERA = 0x00;
000608 C075     	MOV.B   	R0,@(#075,GBR)	;NDRA = 0x00;
00060A C074     	MOV.B   	R0,@(#074,GBR)	;NDRB = 0x00;
00060C 000B     	RTS     				;
00060E 0009     	NOP     				;

L000610:							;sci_init()
000610 E080     	MOV     	#80,R0		;
000612 C000     	MOV.B   	R0,@(#000,GBR)	;SMR0 = 0x80;
000614 E063     	MOV     	#63,R0		;
000616 C001     	MOV.B   	R0,@(#001,GBR)	;BRR0 = 0x63;
000618 E000     	MOV     	#00,R0		;
00061A C002     	MOV.B   	R0,@(#002,GBR)	;SCR0 = 0x00;
00061C E080     	MOV     	#80,R0		;
00061E C008     	MOV.B   	R0,@(#008,GBR)	;SMR1 = 0x80;
000620 E063     	MOV     	#63,R0		;
000622 C009     	MOV.B   	R0,@(#009,GBR)	;BRR1 = 0x63;
000624 E000     	MOV     	#00,R0		;
000626 C00A     	MOV.B   	R0,@(#00A,GBR)	;SCR0 = 0x00;
000628 000B     	RTS     				;
00062A 0009     	NOP     				;

L00062C:							;ad_init()
00062C E00E     	MOV     	#0E,R0		;
00062E C028     	MOV.B   	R0,@(#028,GBR)	;ADCSR = 0x0E;
000630 E07F     	MOV     	#7F,R0		;
000632 C029     	MOV.B   	R0,@(#029,GBR)	;ADCR = 0x7F;
000634 000B     	RTS     				;
000636 0009     	NOP     				;

L000638:							;itu_init()
000638 E0E0     	MOV     	#E0,R0		;
00063A C000     	MOV.B   	R0,@(#000,GBR)	;TSTR = 0xE0;
00063C E0E0     	MOV     	#E0,R0		;
00063E C001     	MOV.B   	R0,@(#001,GBR)	;TSNC = 0xE0;
000640 E000     	MOV     	#00,R0		;
000642 C002     	MOV.B   	R0,@(#002,GBR)	;TMDR = 0x00;
000644 E0C0     	MOV     	#C0,R0		;
000646 C0C0     	MOV.B   	R0,@(#0C0,GBR)	;PADR[15:8] = 0xC0;
000648 E0FF     	MOV     	#FF,R0		;
00064A C031     	MOV.B   	R0,@(#031,GBR)	;TOCR = 0xFF;
00064C E000     	MOV     	#00,R0		;
00064E C104     	MOV.W   	R0,@(#008,GBR)	;TCNT0 = 0x0000;
000650 C109     	MOV.W   	R0,@(#012,GBR)	;TCNT1 = 0x0000;
000652 C10E     	MOV.W   	R0,@(#01C,GBR)	;TCNT2 = 0x0000;
000654 C113     	MOV.W   	R0,@(#026,GBR)	;TCNT3 = 0x0000;
000656 C11B     	MOV.W   	R0,@(#036,GBR)	;TCNT4 = 0x0000;
000658 E0FF     	MOV     	#FF,R0		;
00065A C105     	MOV.W   	R0,@(#00A,GBR)	;GRA0 = 0xFFFF;
00065C C106     	MOV.W   	R0,@(#00C,GBR)	;GRB0 = 0xFFFF;
00065E C10A     	MOV.W   	R0,@(#014,GBR)	;GRA1 = 0xFFFF;
000660 C10B     	MOV.W   	R0,@(#016,GBR)	;GRB1 = 0xFFFF;
000662 C10F     	MOV.W   	R0,@(#01E,GBR)	;GRA2 = 0xFFFF;
000664 C110     	MOV.W   	R0,@(#020,GBR)	;GRB2 = 0xFFFF;
000666 C114     	MOV.W   	R0,@(#028,GBR)	;GRA3 = 0xFFFF;
000668 C115     	MOV.W   	R0,@(#02A,GBR)	;GRB3 = 0xFFFF;
00066A C11C     	MOV.W   	R0,@(#038,GBR)	;GRA4 = 0xFFFF;
00066C C11D     	MOV.W   	R0,@(#03A,GBR)	;GRB4 = 0xFFFF;
00066E C116     	MOV.W   	R0,@(#02C,GBR)	;BRA3 = 0xFFFF;
000670 C117     	MOV.W   	R0,@(#02E,GBR)	;BRB3 = 0xFFFF;
000672 C11E     	MOV.W   	R0,@(#03C,GBR)	;BRA4 = 0xFFFF;
000674 C11F     	MOV.W   	R0,@(#03E,GBR)	;BRB4 = 0xFFFF;
000676 E000     	MOV     	#00,R0		;
000678 C004     	MOV.B   	R0,@(#004,GBR)	;TCR0 = 0x00;
00067A C00E     	MOV.B   	R0,@(#00E,GBR)	;TCR1 = 0x00;
00067C C018     	MOV.B   	R0,@(#018,GBR)	;TCR2 = 0x00;
00067E C022     	MOV.B   	R0,@(#022,GBR)	;TCR3 = 0x00;
000680 C032     	MOV.B   	R0,@(#032,GBR)	;TCR4 = 0x00;
000682 E008     	MOV     	#08,R0		;
000684 C005     	MOV.B   	R0,@(#005,GBR)	;TIOR0 = 0x08;
000686 C00F     	MOV.B   	R0,@(#00F,GBR)	;TIOR1 = 0x08;
000688 C019     	MOV.B   	R0,@(#019,GBR)	;TIOR2 = 0x08;
00068A C023     	MOV.B   	R0,@(#023,GBR)	;TIOR3 = 0x08;
00068C C033     	MOV.B   	R0,@(#033,GBR)	;TIOR4 = 0x08;
00068E C407     	MOV.B   	@(#007,GBR),R0	;TSR0;
000690 E0F8     	MOV     	#F8,R0		;
000692 C007     	MOV.B   	R0,@(#007,GBR)	;TSR0 = 0xF8;
000694 C411     	MOV.B   	@(#011,GBR),R0	;TSR1;
000696 E0F8     	MOV     	#F8,R0		;
000698 C011     	MOV.B   	R0,@(#011,GBR)	;TSR1 = 0xF8;
00069A C41B     	MOV.B   	@(#01B,GBR),R0	;TSR2;
00069C E0F8     	MOV     	#F8,R0		;
00069E C01B     	MOV.B   	R0,@(#01B,GBR)	;TSR2 = 0xF8;
0006A0 C425     	MOV.B   	@(#025,GBR),R0	;TSR3;
0006A2 E0F8     	MOV     	#F8,R0		;
0006A4 C025     	MOV.B   	R0,@(#025,GBR)	;TSR3 = 0xF8;
0006A6 C435     	MOV.B   	@(#035,GBR),R0	;TSR4;
0006A8 E0F8     	MOV     	#F8,R0		;
0006AA C035     	MOV.B   	R0,@(#035,GBR)	;TSR4 = 0xF8;
0006AC E0F8     	MOV     	#F8,R0		;
0006AE C006     	MOV.B   	R0,@(#006,GBR)	;TIER0 = 0xF8;
0006B0 C010     	MOV.B   	R0,@(#010,GBR)	;TIER1 = 0xF8;
0006B2 C01A     	MOV.B   	R0,@(#01A,GBR)	;TIER2 = 0xF8;
0006B4 C024     	MOV.B   	R0,@(#024,GBR)	;TIER3 = 0xF8;
0006B6 C034     	MOV.B   	R0,@(#034,GBR)	;TIER4 = 0xF8;
0006B8 000B     	RTS     				;
0006BA 0009     	NOP     				;

L0006BC:							;dmac_init()
0006BC C524     	MOV.W   	@(#048,GBR),R0	;DMAOR;
0006BE 9011     	MOV.W   	@(#022,PC),R0	;
0006C0 C124     	MOV.W   	R0,@(#048,GBR)	;DMAOR = 0x0000;
0006C2 C527     	MOV.W   	@(#04E,GBR),R0	;CHCR0;
0006C4 9010     	MOV.W   	@(#020,PC),R0	;
0006C6 C127     	MOV.W   	R0,@(#04E,GBR)	;CHCR0 = 0x0040;
0006C8 C52F     	MOV.W   	@(#05E,GBR),R0	;CHCR1;
0006CA 900E     	MOV.W   	@(#01C,PC),R0	;
0006CC C12F     	MOV.W   	R0,@(#05E,GBR)	;CHCR1 = 0x0040;
0006CE C537     	MOV.W   	@(#06E,GBR),R0	;CHCR2;
0006D0 900C     	MOV.W   	@(#018,PC),R0	;
0006D2 C137     	MOV.W   	R0,@(#06E,GBR)	;CHCR2 = 0x0040;
0006D4 C53F     	MOV.W   	@(#07E,GBR),R0	;CHCR3;
0006D6 900A     	MOV.W   	@(#014,PC),R0	;
0006D8 C13F     	MOV.W   	R0,@(#07E,GBR)	;CHCR3 = 0x0040;
0006DA C524     	MOV.W   	@(#048,GBR),R0	;DMAOR;
0006DC 9003     	MOV.W   	@(#006,PC),R0	;
0006DE C124     	MOV.W   	R0,@(#048,GBR)	;DMAOR = 0x0001;
0006E0 000B     	RTS     				;
0006E2 0009     	NOP     				;
0006E4 0000
0006E6 0001
0006E8 0040
0006EA 0040
0006EC 0040
0006EE 0040

L0006F0:							;rom_crc()
0006F0 E100     	MOV     	#00,R1		;u32* ptr = 0x00000000;
0006F2 E201     	MOV     	#01,R2		;
0006F4 6229     	SWAP.W   	R2,R2			;
0006F6 E300     	MOV     	#00,R3		;u32 crc = 0x00000000;
L0006F8:							;do {
0006F8 6016     	MOV.L   	@R1+,R0		;
0006FA 330C     	ADD     	R0,R3			;crc+=*ptr; ptr++;
0006FC 3122     	CMP/HS 	R2,R1			;
0006FE 8BFB     	BF      	L0006F8		;} while (ptr < 0x00010000)
000700 D1E3     	MOV.L   	@(#38C,PC),R1	;
000702 2132     	MOV.L   	R3,@R1		;rom_crc = crc;
000704 000B     	RTS     				;
000706 0009     	NOP     				;

L000708:							;dram_init()
000708 9166     	MOV.W   	@(#0CC,PC),R1	;
L00070A:
00070A 71FF     	ADD     	#FF,R1		;//wait 400
00070C 3E10     	CMP/EQ 	R1,R14		;
00070E 8BFC     	BF      	L00070A		;
000710 D032     	MOV.L   	@(#0C8,PC),R0	;
000712 401E     	LDC     	R0,GBR		;
000714 9061     	MOV.W   	@(#0C2,PC),R0	;
000716 C117     	MOV.W   	R0,@(#02E,GBR)	;RTCSR = 0xA508; //BSC
000718 D16E     	MOV.L   	@(#1B8,PC),R1	;u16* ptr = 0x09000000;
00071A D26F     	MOV.L   	@(#1BC,PC),R2	;
00071C D36F     	MOV.L   	@(#1BC,PC),R3	;
00071E 200A     	XOR     	R0,R0			;
L000720:							;do {
000720 2101     	MOV.W   	R0,@R1		;*ptr = 0x0000;
000722 6011     	MOV.W   	@R1,R0		;
000724 313C     	ADD     	R3,R1			;ptr+=0x00000200;
000726 3126     	CMP/HI 	R2,R1			;
000728 8BFA     	BF      	L000720		;} while (ptr < 0x09080000);
00072A 000B     	RTS     				;
00072C 0009     	NOP     				;

L00072E:							;dram_check()
00072E ED00     	MOV     	#00,R13		;u32 chck = 0x00000000;
000730 E001     	MOV     	#01,R0		;u32 patt = 0x00000001;
000732 6309     	SWAP.W   	R0,R3			;
000734 D267     	MOV.L   	@(#19C,PC),R2	;
000736 2201     	MOV.W   	R0,@R2		;*(u16*)0x09000000 = (u16)patt;
000738 4000     	SHLL    	R0			;patt<<=1;
L00073A:							;do {
00073A 0205     	MOV.W   	R0,@(R0,R2)		;*(u16*)(0x09000000+patt) = (u16)patt;
00073C 4000     	SHLL    	R0			;patt<<=1;
00073E 3300     	CMP/EQ 	R0,R3			;
000740 8BFB     	BF      	L00073A		;} while (patt!= 0x00010000);
000742 E001     	MOV     	#01,R0		;patt = 0x0000001;
000744 A002     	BRA     	L00074C		;u16 res = *(u16*)0x09000000;
000746 6121     	MOV.W   	@R2,R1		;goto L00074C;
L000748:							;do {
000748 012D     	MOV.W   	@(R0,R2),R1		;res = *(u16*)(0x09000000+patt);
00074A 611D     	EXTU.W   	R1,R1			;
L00074C:
00074C 3100     	CMP/EQ 	R0,R1			;
00074E 8900     	BT      	L000752		; 
000750 2D0B     	OR      	R0,R13		;if (patt != res) chck|=patt;
L000752:
000752 4000     	SHLL    	R0			;patt<<=1;
000754 3300     	CMP/EQ 	R0,R3			;
000756 8BF7     	BF      	L000748		;} while (patt != 0x00010000);
000758 E0AA     	MOV     	#AA,R0		;
00075A 8020     	MOV.B   	R0,@(#00,R2)	;*(u8*)0x09000000 = 0xAA;
00075C E055     	MOV     	#55,R0		;
00075E 8021     	MOV.B   	R0,@(#01,R2)	;*(u8*)0x09000001 = 0x55;
000760 E033     	MOV     	#33,R0		;
000762 8022     	MOV.B   	R0,@(#02,R2)	;*(u8*)0x09000002 = 0x33;
000764 E0CC     	MOV     	#CC,R0		;
000766 8023     	MOV.B   	R0,@(#03,R2)	;*(u8*)0x09000003 = 0xCC;
000768 8420     	MOV.B   	@(#00,R2),R0	;
00076A 88AA     	CMP/EQ  	#AA,R0		;
00076C 8B0A     	BF      	L000784		;
00076E 8421     	MOV.B   	@(#01,R2),R0	;
000770 8855     	CMP/EQ  	#55,R0		;
000772 8B07     	BF      	L000784		;
000774 8422     	MOV.B   	@(#02,R2),R0	;
000776 8833     	CMP/EQ  	#33,R0		;
000778 8B04     	BF      	L000784		;
00077A 8423     	MOV.B   	@(#03,R2),R0	;
00077C 88CC     	CMP/EQ  	#CC,R0		;
00077E 8B01     	BF      	L000784		;
000780 A001     	BRA     	L000786		;
000782 0009     	NOP     				;if (*(u8*)0x09000000 != 0xAA || *(u8*)0x09000001 = 0x55 ||
L000784:							;    *(u8*)0x09000002 != 0x33 || *(u8*)0x09000003 = 0xCC)
000784 2D3B     	OR      	R3,R13		;chck|=0x00010000;
L000786:
000786 D253     	MOV.L   	@(#14C,PC),R2	;
000788 D353     	MOV.L   	@(#14C,PC),R3	;
00078A D455     	MOV.L   	@(#154,PC),R4	;
00078C 6133     	MOV     	R3,R1			;u32* ptr = 0x09080000;
L00078E:							;do {
00078E 2146     	MOV.L   	R4,@-R1		;ptr--; 
000790 3126     	CMP/HI 	R2,R1			;*ptr = 0xAA5555AA;
000792 89FC     	BT      	L00078E		;} while (ptr > 0x09000000);
L000794:
000794 6016     	MOV.L   	@R1+,R0		;do {
000796 3040     	CMP/EQ 	R4,R0			;
000798 8B18     	BF      	L0007CC		;if (*ptr != 0xAA5555AA) goto L0007CC;
00079A 3132     	CMP/HS 	R3,R1			;ptr++;
00079C 8BFA     	BF      	L000794		;} while (ptr < 0x09080000);
00079E 6447     	NOT     	R4,R4			;
0007A0 2146     	MOV.L   	R4,@-R1		;
0007A2 3126     	CMP/HI 	R2,R1			;
0007A4 89FC     	BT      	#1F8			;
0007A6 6016     	MOV.L   	@R1+,R0		;
0007A8 3040     	CMP/EQ 	R4,R0			;
0007AA 8B0F     	BF      	#01E			;
0007AC 3132     	CMP/HS 	R3,R1			;
0007AE 8BFA     	BF      	#1F4			;
0007B0 244A     	XOR     	R4,R4			;
0007B2 2146     	MOV.L   	R4,@-R1		;
0007B4 3126     	CMP/HI 	R2,R1			;
0007B6 89FC     	BT      	#1F8			;
0007B8 6016     	MOV.L   	@R1+,R0		;
0007BA 3040     	CMP/EQ 	R4,R0			;
0007BC 8B06     	BF      	#00C			;
0007BE 3132     	CMP/HS 	R3,R1			;
0007C0 8BFA     	BF      	#1F4			;
0007C2 2DD8     	TST     	R13,R13		;
0007C4 8B05     	BF      	#00A			;
0007C6 E000     	MOV     	#00,R0		;
0007C8 A004     	BRA     	L0007D4		;return 0;
0007CA 0009     	NOP     				;
L0007CC:
0007CC E002     	MOV     	#02,R0		;
0007CE 6009     	SWAP.W   	R0,R0			;
0007D0 2D0B     	OR      	R0,R13		;chck|=0x00020000;
0007D2 E0FF     	MOV     	#FF,R0		;return -1;
L0007D4:
0007D4 000B     	RTS     				;
0007D6 0009     	NOP     				;
0007D8 0190
0007DA A508
0007DC 05FFFF80

L0007E0:							;ygr_init()
0007E0 D13B     	MOV.L   	@(#0EC,PC),R1	;
0007E2 8411     	MOV.B   	@(#01,R1),R0	;
0007E4 CB80     	OR      	#80,R0		;
0007E6 8011     	MOV.B   	R0,@(#01,R1)	;PFC.PADR[7] = 1; //pin 60 /RESET
0007E8 D138     	MOV.L   	@(#0E0,PC),R1	;
0007EA 9066     	MOV.W   	@(#0CC,PC),R0	;
0007EC 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0002; //reset fifo
0007EE 9065     	MOV.W   	@(#0CA,PC),R0	;
0007F0 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0008;
0007F2 E000     	MOV     	#00,R0		;
0007F4 8114     	MOV.W   	R0,@(#08,R1)	;YGR.REG08 = 0x0000;
0007F6 8115     	MOV.W   	R0,@(#0A,R1)	;YGR.CDMASK = 0x0000;
0007F8 8112     	MOV.W   	R0,@(#04,R1)	;YGR.REG04 = 0x0000;
0007FA 8113     	MOV.W   	R0,@(#06,R1)	;YGR.CDIRQ = 0x0000;
0007FC E000     	MOV     	#00,R0		;
0007FE 811D     	MOV.W   	R0,@(#1A,R1)	;YGR.REG1A = 0x0000;
000800 E003     	MOV     	#03,R0		;
000802 8116     	MOV.W   	R0,@(#0C,R1)	;YGR.REG0C = 0x0003;
000804 000B     	RTS     				;
000806 0009     	NOP     				;

L000808:							;ygr_check()
000808 ED00     	MOV     	#00,R13		;
00080A D130     	MOV.L   	@(#0C0,PC),R1	;
00080C 9058     	MOV.W   	@(#0B0,PC),R0	;
00080E 6203     	MOV     	R0,R2			;
000810 8114     	MOV.W   	R0,@(#08,R1)	;YGR.REG08 = 0x0003;
000812 8514     	MOV.W   	@(#08,R1),R0	;
000814 2029     	AND     	R2,R0			;
000816 3200     	CMP/EQ 	R0,R2			;
000818 8B14     	BF      	L000844		;if (YGR.REG08 & 0x0003 != 0x0003) goto L000844;
00081A E000     	MOV     	#00,R0		;
00081C 8114     	MOV.W   	R0,@(#08,R1)	;YGR.REG08 = 0x0000;
00081E 8514     	MOV.W   	@(#08,R1),R0	;
000820 2029     	AND     	R2,R0			;
000822 2008     	TST     	R0,R0			;
000824 8B0E     	BF      	L000844		;if (YGR.REG08 & 0x0003 != 0x0000) goto L000844;
000826 904C     	MOV.W   	@(#098,PC),R0	;
000828 6203     	MOV     	R0,R2			;
00082A 8115     	MOV.W   	R0,@(#0A,R1)	;YGR.CDMASK = 0x0070;
00082C 8515     	MOV.W   	@(#0A,R1),R0	;
00082E 2029     	AND     	R2,R0			;
000830 3200     	CMP/EQ 	R0,R2			;
000832 8B07     	BF      	L000844		;if (YGR.CDMASK & 0x0070 != 0x0070) goto L000844;
000834 E000     	MOV     	#00,R0		;
000836 8115     	MOV.W   	R0,@(#0A,R1)	;YGR.CDMASK = 0x0000;
000838 8515     	MOV.W   	@(#0A,R1),R0	;
00083A 2029     	AND     	R2,R0			;
00083C 2008     	TST     	R0,R0			;
00083E 8B01     	BF      	L000844		;if (YGR.CDMASK & 0x0070 != 0x0000) goto L000844;
000840 A001     	BRA     	L000846		;
000842 ED00     	MOV     	#00,R13		;chck = 0x00000000
L000844:
000844 ED04     	MOV     	#04,R13		;chck = 0x00000004
L000846:
000846 D027     	MOV.L   	@(#09C,PC),R0	;
000848 D222     	MOV.L   	@(#088,PC),R2	;
00084A 1200     	MOV.L   	R0,@(#0,R2)		;*(u32*)0x09000000 = 0xAA5555AA;
00084C 1201     	MOV.L   	R0,@(#4,R2)		;*(u32*)0x09000004 = 0xAA5555AA;
00084E D326     	MOV.L   	@(#098,PC),R3	;
000850 1320     	MOV.L   	R2,@(#0,R3)		;DMAC.SAR1 = 0x09000000;
000852 1311     	MOV.L   	R1,@(#4,R3)		;DMAC.DAR1 = 0x0A000000;
000854 E004     	MOV     	#04,R0		;
000856 8135     	MOV.W   	R0,@(#0A,R3)	;DMAC.TCR1 = 0x0004;
000858 9034     	MOV.W   	@(#068,PC),R0	;
00085A 8137     	MOV.W   	R0,@(#0E,R3)	;DMAC.CHCR1 = 0x1258;
00085C CB01     	OR      	#01,R0		;
00085E 8137     	MOV.W   	R0,@(#0E,R3)	;DMAC.CHCR1 = 0x1259;
000860 902D     	MOV.W   	@(#05A,PC),R0	;
000862 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0004;
000864 0009     	NOP     				;
000866 0009     	NOP     				;
000868 0009     	NOP     				;
00086A 0009     	NOP     				;
00086C 8537     	MOV.W   	@(#0E,R3),R0	;DMAC.CHCR1;
00086E 9029     	MOV.W   	@(#052,PC),R0	;
000870 8137     	MOV.W   	R0,@(#0E,R3)	;DMAC.CHCR1 = 0x1258;
000872 9028     	MOV.W   	@(#050,PC),R0	;
000874 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0003;
000876 9027     	MOV.W   	@(#04E,PC),R0	;
000878 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0001;
00087A 8510     	MOV.W   	@(#00,R1),R0	;
00087C 6309     	SWAP.W   	R0,R3			;
00087E 8510     	MOV.W   	@(#00,R1),R0	;u32 temp;
000880 230D     	XTRCT   	R0,R3			;((u16*)temp)[0] = YGR.DATATRNS;
000882 6339     	SWAP.W   	R3,R3			;((u16*)temp)[1] = YGR.DATATRNS;
000884 5020     	MOV.L   	@(#00,R2),R0	;
000886 3030     	CMP/EQ 	R3,R0			;
000888 8B13     	BF      	L0008B2		;if (*(u32*)0x09000000 != temp) goto L0008B2;
00088A 8510     	MOV.W   	@(#00,R1),R0	;
00088C 6309     	SWAP.W   	R0,R3			;
00088E 8510     	MOV.W   	@(#00,R1),R0	;
000890 230D     	XTRCT   	R0,R3			;((u16*)temp)[0] = YGR.DATATRNS;
000892 6339     	SWAP.W   	R3,R3			;((u16*)temp)[1] = YGR.DATATRNS;
000894 5021     	MOV.L   	@(#04,R2),R0	;
000896 3030     	CMP/EQ 	R3,R0			;
000898 8B0B     	BF      	L0008B2		;if (*(u32*)0x09000004 != temp) goto L0008B2;
00089A 900E     	MOV.W   	@(#01C,PC),R0	;
00089C 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0002;
00089E 900D     	MOV.W   	@(#01A,PC),R0	;
0008A0 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0008;
0008A2 E100     	MOV     	#00,R1		;
0008A4 2212     	MOV.L   	R1,@R2		;*(u32*)0x09000000 = 0x00000000;
0008A6 1211     	MOV.L   	R1,@(#4,R2)		;*(u32*)0x09000004 = 0x00000000;
0008A8 2DD8     	TST     	R13,R13		;
0008AA 8B04     	BF      	L0008B6		;
0008AC E000     	MOV     	#00,R0		;return 0;
L0008AE:
0008AE 000B     	RTS     				;
0008B0 0009     	NOP     				;
L0008B2:
0008B2 E008     	MOV     	#08,R0		;
0008B4 2D0B     	OR      	R0,R13		;chck|=0x00000008;
L0008B6:
0008B6 AFFA     	BRA     	L0008AE		;
0008B8 E0FF     	MOV     	#FF,R0		;return -1;
0008BA 0002
0008BC 0008
0008BE 0004
0008C0 0003
0008C2 0070     	
0008C4 1258
0008C6 0003
0008C8 0001
0008CA 0009
0008CC 0A000000
0008D0 05FFFFC0
0008D4 09000000
0008D8 09080000
0008DC 00000200
0008E0 AA5555AA
0008E4 AA5555AA
0008E8 05FFFF50

L0008EC:
0008EC E000     	MOV     	#00,R0		;
0008EE 000B     	RTS     				;
0008F0 0009     	NOP     				;
0008F2 0009
0008F4 05FF
0008F6 FFD0     	

L0008F8:							;
0008F8 D008     	MOV.L   	@(#020,PC),R0	;
0008FA 400B     	JSR     	@R0			;L00BA34_init();
0008FC 0009     	NOP     				;
0008FE D008     	MOV.L   	@(#020,PC),R0	;
000900 400B     	JSR     	@R0			;L0077A8_init();
000902 0009     	NOP     				;
000904 D007     	MOV.L   	@(#01C,PC),R0	;
000906 400B     	JSR     	@R0			;L0019D4_init();
000908 0009     	NOP     				;
00090A D007     	MOV.L   	@(#01C,PC),R0	;
00090C 400B     	JSR     	@R0			;L002388_init();
00090E 0009     	NOP     				;
000910 D006     	MOV.L   	@(#018,PC),R0	;
000912 400B     	JSR     	@R0			;L001C04_init();
000914 0009     	NOP     				;
000916 D006     	MOV.L   	@(#018,PC),R0	;
000918 402B     	JMP     	@R0			;task_func_list_init(); //L000D4C
00091A 0009     	NOP     				;
00091C 0000BA34
000920 000077A8
000924 000019D4
000928 00002388
00092C 00001C04
000930 00000D4C

gen_illegal_inst:
000934 0009     	NOP     				;
000936 AD77     	BRA     	reset			;
000938 0009     	NOP     				;

illegal_slot_inst:
00093A 0009     	NOP     				;
00093C 002B     	RTE     				;
00093E 0009     	NOP     				;

cpu_addr_error:
000940 0009     	NOP     				;
000942 002B     	RTE     				;
000944 0009     	NOP     				;

dma_addr_error:
000946 0009     	NOP     				;
000948 2F06     	MOV.L   	R0,@-R15		;
00094A 2F16     	MOV.L   	R1,@-R15		;
00094C E0F0     	MOV     	#F0,R0		;
00094E 600C     	EXTU.B   	R0,R0			;
000950 400E     	LDC     	R0,SR			;
000952 D112     	MOV.L   	@(#048,PC),R1	;
000954 6011     	MOV.W   	@R1,R0		;
000956 901A     	MOV.W   	@(#034,PC),R0	;
000958 2101     	MOV.W   	R0,@R1		;
00095A D111     	MOV.L   	@(#044,PC),R1	;
00095C 6011     	MOV.W   	@R1,R0		;
00095E 9018     	MOV.W   	@(#030,PC),R0	;
000960 2101     	MOV.W   	R0,@R1		;
000962 D110     	MOV.L   	@(#040,PC),R1	;
000964 6011     	MOV.W   	@R1,R0		;
000966 9015     	MOV.W   	@(#02A,PC),R0	;
000968 2101     	MOV.W   	R0,@R1		;
00096A D10F     	MOV.L   	@(#03C,PC),R1	;
00096C 6011     	MOV.W   	@R1,R0		;
00096E 9012     	MOV.W   	@(#024,PC),R0	;
000970 2101     	MOV.W   	R0,@R1		;
000972 D10E     	MOV.L   	@(#038,PC),R1	;
000974 6011     	MOV.W   	@R1,R0		;
000976 900F     	MOV.W   	@(#01E,PC),R0	;
000978 2101     	MOV.W   	R0,@R1		;
00097A D108     	MOV.L   	@(#020,PC),R1	;
00097C 9008     	MOV.W   	@(#010,PC),R0	;
00097E 2101     	MOV.W   	R0,@R1		;
000980 D10B     	MOV.L   	@(#02C,PC),R1	;
000982 E008     	MOV     	#08,R0		;
000984 2101     	MOV.W   	R0,@R1		;
000986 61F6     	MOV.L   	@R15+,R1		;
000988 60F6     	MOV.L   	@R15+,R0		;
00098A 002B     	RTE     				;
00098C 0009     	NOP     				;
00098E 0000
000990 0001
000992 0040
000994 0040
000996 0040
000998 0040
00099A 0009
00099C 05FF
00099E FF48
0009A0 05FF
0009A2 FF4E
0009A4 05FF
0009A6 FF5E
0009A8 05FF
0009AA FF6E
0009AC 05FF
0009AE FF7E
0009B0 0A00
0009B2 0002

nmi:
0009B4 0009     	NOP     				;
0009B6 002B     	RTE     				;
0009B8 0009     	NOP     				;

user_break:
0009BA 0009     	NOP     				;
0009BC AD34     	BRA     	reset			;
0009BE 0009     	NOP     				;

:
0009C0 0009     	NOP     				;
0009C2 AD31     	BRA     	reset			;
0009C4 0009     	NOP     				;

sci1_test_int:
0009C6 0009     	NOP     				;
0009C8 AD2E     	BRA     	reset			;
0009CA 0009     	NOP     				;

unused_int:
0009CC 0009     	NOP     				;
0009CE AD2B     	BRA     	reset			;
0009D0 0009     	NOP     				;

reserved:							;
0009D2 0009     	NOP     				;
0009D4 002B     	RTE     				;
0009D6 0009     	NOP     				;

L0009D8:							;
0009D8 DA2B     	MOV.L   	@(#0AC,PC),R10	;
0009DA 84AA     	MOV.B   	@(#0A,R10),R0	;
0009DC CB20     	OR      	#20,R0		;
0009DE 80AA     	MOV.B   	R0,@(#0A,R10)	;SCR1|=0x20;
0009E0 DD2B     	MOV.L   	@(#0AC,PC),R13	;
0009E2 60D2     	MOV.L   	@R13,R0		;
0009E4 80AB     	MOV.B   	R0,@(#0B,R10)	;TDR1 = ((u8*)rom_crc)[0];
0009E6 84AC     	MOV.B   	@(#0C,R10),R0	;
0009E8 C97F     	AND     	#7F,R0		;
0009EA 80AC     	MOV.B   	R0,@(#0C,R10)	;SSR1&=0x7F;
0009EC D029     	MOV.L   	@(#0A4,PC),R0	;
L0009EE:
0009EE 70FF     	ADD     	#FF,R0		;
0009F0 2008     	TST     	R0,R0			;
0009F2 8BFC     	BF      	L0009EE		;//wait 0x002B98B6
0009F4 D125     	MOV.L   	@(#094,PC),R1	;
0009F6 6011     	MOV.W   	@R1,R0		;
0009F8 2008     	TST     	R0,R0			;u8 temp;
0009FA 8900     	BT      	L0009FE		;
0009FC ED01     	MOV     	#01,R13		;if (hw_check1 != 0) temp = 0x01;
L0009FE:
0009FE 6012     	MOV.L   	@R1,R0		;
000A00 C90F     	AND     	#0F,R0		;
000A02 2D0B     	OR      	R0,R13		;temp|=(hw_check1 & 0x000F);
000A04 EC10     	MOV     	#10,R12		;
000A06 6012     	MOV.L   	@R1,R0		;
000A08 4009     	SHLR2   	R0			;
000A0A 4009     	SHLR2   	R0			;
000A0C C805     	TST     	#05,R0		;
000A0E 8900     	BT      	L000A12		;
000A10 2DCB     	OR      	R12,R13		;if ((hw_check1>>4) & 0x0005 != 0) temp|=0x10;
L000A12:
000A12 4C00     	SHLL    	R12			;
000A14 C802     	TST     	#02,R0		;
000A16 8900     	BT      	L000A1A		;
000A18 2DCB     	OR      	R12,R13		;if ((hw_check1>>4) & 0x0002 != 0) temp|=0x20;
L000A1A:
000A1A 4C00     	SHLL    	R12			;
000A1C C808     	TST     	#08,R0		;
000A1E 8900     	BT      	L000A22		;
000A20 2DCB     	OR      	R12,R13		;if ((hw_check1>>4) & 0x0008 != 0) temp|=0x40;
L000A22:
000A22 4C00     	SHLL    	R12			;
000A24 C810     	TST     	#10,R0		;
000A26 8900     	BT      	L000A2A		;
000A28 2DCB     	OR      	R12,R13		;if ((hw_check1>>4) & 0x0010 != 0) temp|=0x80;
L000A2A:
000A2A 60D3     	MOV     	R13,R0		;
000A2C 80AB     	MOV.B   	R0,@(#0B,R10)	;TDR1 = temp;
000A2E 84AC     	MOV.B   	@(#0C,R10),R0	;
000A30 C97F     	AND     	#7F,R0		;
000A32 80AC     	MOV.B   	R0,@(#0C,R10)	;SSR1&=0x7F;
000A34 D21A     	MOV.L   	@(#068,PC),R2	;
L000A36:							;//wait /COMSYNC
000A36 D118     	MOV.L   	@(#060,PC),R1	;
L000A38:
000A38 6020     	MOV.B   	@R2,R0		;
000A3A C804     	TST     	#04,R0		;
000A3C 89FB     	BT      	L000A36		;if (PBDR[2] == 0) goto L000A36; // /COMSYNC
000A3E 71FF     	ADD     	#FF,R1		;
000A40 2118     	TST     	R1,R1			;
000A42 8BF9     	BF      	L000A38		;
000A44 A000     	BRA     	#0000			;
000A46 0009     	NOP     				;
L000A48:
000A48 DF14     	MOV.L   	@(#050,PC),R15	;SP = 0x0F001000;
000A4A DA0F     	MOV.L   	@(#03C,PC),R10	;
000A4C DB16     	MOV.L   	@(#058,PC),R11	;
000A4E E000     	MOV     	#00,R0		;
000A50 80A8     	MOV.B   	R0,@(#08,R10)	;SMR1 = 0x00;
000A52 E030     	MOV     	#30,R0		;
000A54 80AA     	MOV.B   	R0,@(#0A,R10)	;SCR1 = 0x30;
000A56 E041     	MOV     	#41,R0		;
000A58 80A9     	MOV.B   	R0,@(#09,R10)	;BRR1 = 0x41;
000A5A 84AC     	MOV.B   	@(#0C,R10),R0	;SSR1;
000A5C E000     	MOV     	#00,R0		;
000A5E 80AC     	MOV.B   	R0,@(#0C,R10)	;SSR1 = 0x00;
000A60 D110     	MOV.L   	@(#040,PC),R1	;
000A62 6010     	MOV.B   	@R1,R0		;
000A64 C9CF     	AND     	#CF,R0		;
000A66 CB20     	OR      	#20,R0		;
000A68 2100     	MOV.B   	R0,@R1		;RDR1 = (RDR1 & 0xCF) | 0x20;
000A6A E000     	MOV     	#00,R0		;
000A6C 2B02     	MOV.L   	R0,@R11		;rom_crc = 0x00000000;
000A6E B141     	BRS     	L000CF4		;L000CF4(arg1=0x3A,arg2=&rom_crc);
000A70 E03A     	MOV     	#3A,R0		;
L000A72:							;
000A72 B01B     	BRS     	L000AAC		;L000AAC(arg1=&rom_crc);
000A74 0009     	NOP     				;
000A76 B04B     	BRS     	L000B10		;L000B10();
000A78 0009     	NOP     				;
000A7A B05D     	BRS     	L000B38		;L000B38();
000A7C 0009     	NOP     				;
000A7E B07F     	BRS     	L000B80		;L000B80();
000A80 0009     	NOP     				;
000A82 AFF6     	BRA     	L000A72		;L000A72();
000A84 0009     	NOP     				;
000A86 0009
000A88 05FFFEC0
000A8C 0F000000
000A90 0F000004
000A94 002B98B6
000A98 00030D40
000A9C 0F001000
000AA0 05FFFFC2
000AA4 05FFFFCD
000AA8 0F000004

L000AAC:							;(R11-arg1)
000AAC 4F22     	STS.L   	PR,@-R15		;
000AAE D3A3     	MOV.L   	@(#28C,PC),R3	;
000AB0 84AC     	MOV.B   	@(#0C,R10),R0	;
000AB2 C840     	TST     	#40,R0		;
000AB4 8929     	BT      	L000B0A		;if ((SSR1 & 0x40) == 0) goto L000B0A;
000AB6 C9BF     	AND     	#BF,R0		;
000AB8 6203     	MOV     	R0,R2			;
000ABA 84AD     	MOV.B   	@(#0D,R10),R0	;temp = RDR1;
000ABC 6103     	MOV     	R0,R1			;
000ABE 6023     	MOV     	R2,R0			;
000AC0 80AC     	MOV.B   	R0,@(#0C,R10)	;SSR1&=0xBF;
000AC2 6013     	MOV     	R1,R0			;
000AC4 8809     	CMP/EQ  	#09,R0		;
000AC6 8908     	BT      	L000ADA		;temp == 0x09
000AC8 E220     	MOV     	#20,R2		;
000ACA 3022     	CMP/HS 	R2,R0			;
000ACC 8905     	BT      	L000ADA		;temp > 0x20
000ACE 880D     	CMP/EQ  	#0D,R0		;
000AD0 890B     	BT      	L000AEA		;temp == 0x0D
000AD2 8808     	CMP/EQ  	#08,R0		;
000AD4 8911     	BT      	L000AFA		;temp == 0x08
000AD6 A016     	BRA     	L000B06		;
000AD8 0009     	NOP     				;
L000ADA:
000ADA 84B0     	MOV.B   	@(#00,R11),R0	;i = *(u8*)(arg1+0x00);
000ADC 600C     	EXTU.B   	R0,R0			;
000ADE 0314     	MOV.B   	R1,@(R0,R3)		;*(u8*)(0x0F000100+i) = temp;
000AE0 7001     	ADD     	#01,R0		;i++;
000AE2 C8FF     	TST     	#FF,R0		;
000AE4 890F     	BT      	L000B06		;i > 0xFF
000AE6 A00E     	BRA     	L000B06		;
000AE8 80B0     	MOV.B   	R0,@(#00,R11)	;*(u8*)(arg1+0x00) = i;
L000AEA:
000AEA E001     	MOV     	#01,R0		;
000AEC 80B3     	MOV.B   	R0,@(#03,R11)	;*(u8*)(arg1+0x03) = 0x01;
000AEE E000     	MOV     	#00,R0		;
000AF0 80BA     	MOV.B   	R0,@(#0A,R11)	;*(u8*)(arg1+0x0A) = 0x00;
000AF2 84B0     	MOV.B   	@(#00,R11),R0	;i = *(u8*)(arg1+0x00);
000AF4 600C     	EXTU.B   	R0,R0			;
000AF6 A006     	BRA     	L000B06		;@(0x0F000100+i) = temp;
000AF8 0314     	MOV.B   	R1,@(R0,R3)		;
L000AFA:
000AFA 84B0     	MOV.B   	@(#00,R11),R0	;i = *(u8*)(arg1+0x00);
000AFC 2008     	TST     	R0,R0			;
000AFE 8902     	BT      	L000B06		;i == 0x00
000B00 70FF     	ADD     	#FF,R0		;i--;
000B02 A000     	BRA     	L000B06		;*(u8*)(arg1+0x00) = i;
000B04 80B0     	MOV.B   	R0,@(#00,R11)	;
L000B06:
000B06 B0F5     	BRS     	L000CF4		;L000CF4(arg1=i,arg2=arg1);
000B08 6013     	MOV     	R1,R0			;
L000B0A:
000B0A 4F26     	LDS.L   	@R15+,PR		;
000B0C 000B     	RTS     				;
000B0E 0009     	NOP     				;

L000B10:							;
000B10 84AC     	MOV.B   	@(#0C,R10),R0	;
000B12 C880     	TST     	#80,R0		;
000B14 890E     	BT      	L000B34		;
000B16 84B1     	MOV.B   	@(#01,R11),R0	;
000B18 6103     	MOV     	R0,R1			;
000B1A 84B2     	MOV.B   	@(#02,R11),R0	;
000B1C 3100     	CMP/EQ 	R0,R1			;
000B1E 8909     	BT      	L000B34		;
000B20 D287     	MOV.L   	@(#21C,PC),R2	;
000B22 600C     	EXTU.B   	R0,R0			;
000B24 002C     	MOV.B   	@(R0,R2),R0		;
000B26 80AB     	MOV.B   	R0,@(#0B,R10)	;
000B28 84AC     	MOV.B   	@(#0C,R10),R0	;
000B2A C97F     	AND     	#7F,R0		;
000B2C 80AC     	MOV.B   	R0,@(#0C,R10)	;
000B2E 84B2     	MOV.B   	@(#02,R11),R0	;
000B30 7001     	ADD     	#01,R0		;
000B32 80B2     	MOV.B   	R0,@(#02,R11)	;
L000B34:
000B34 000B     	RTS     				;
000B36 0009     	NOP     				;

L000B38:							;
000B38 4F22     	STS.L   	PR,@-R15		;
000B3A 84B3     	MOV.B   	@(#03,R11),R0	;
000B3C 2008     	TST     	R0,R0			;
000B3E 891C     	BT      	#038			;
000B40 E000     	MOV     	#00,R0		;
000B42 80B3     	MOV.B   	R0,@(#03,R11)	;
000B44 D17D     	MOV.L   	@(#1F4,PC),R1	;
000B46 6010     	MOV.B   	@R1,R0		;
000B48 C9DF     	AND     	#DF,R0		;
000B4A 8857     	CMP/EQ  	#57,R0		;
000B4C 8905     	BT      	#00A			;
000B4E 8852     	CMP/EQ  	#52,R0		;
000B50 8907     	BT      	#00E			;
000B52 884C     	CMP/EQ  	#4C,R0		;
000B54 8909     	BT      	#012			;
000B56 A00C     	BRA     	#0018			;
000B58 0009     	NOP     				;
000B5A B054     	BRS     	#00A8			;
000B5C 0009     	NOP     				;
000B5E A008     	BRA     	#0010			;
000B60 0009     	NOP     				;
000B62 B028     	BRS     	#0050			;
000B64 0009     	NOP     				;
000B66 A004     	BRA     	#0008			;
000B68 0009     	NOP     				;
000B6A B06A     	BRS     	#00D4			;
000B6C 0009     	NOP     				;
000B6E A000     	BRA     	#0000			;
000B70 0009     	NOP     				;
000B72 E000     	MOV     	#00,R0		;
000B74 80B0     	MOV.B   	R0,@(#00,R11)	;
000B76 B0BD     	BRS     	#017A			;
000B78 E03A     	MOV     	#3A,R0		;
000B7A 4F26     	LDS.L   	@R15+,PR		;
000B7C 000B     	RTS     				;
000B7E 0009     	NOP     				;

L000B80:							;
000B80 84BA     	MOV.B   	@(#0A,R11),R0	;
000B82 2008     	TST     	R0,R0			;
000B84 8915     	BT      	#02A			;
000B86 51B1     	MOV.L   	@(#04,R11),R1	;
000B88 8801     	CMP/EQ  	#01,R0		;
000B8A 8902     	BT      	#004			;
000B8C 8802     	CMP/EQ  	#02,R0		;
000B8E 8907     	BT      	#00E			;
000B90 A00F     	BRA     	#001E			;
000B92 E001     	MOV     	#01,R0		;
000B94 2108     	TST     	R0,R1			;
000B96 8B01     	BF      	#002			;
000B98 A00B     	BRA     	#0016			;
000B9A 6011     	MOV.W   	@R1,R0		;
000B9C A009     	BRA     	#0012			;
000B9E 6010     	MOV.B   	@R1,R0		;
000BA0 85B4     	MOV.W   	@(#08,R11),R0	;
000BA2 6203     	MOV     	R0,R2			;
000BA4 E001     	MOV     	#01,R0		;
000BA6 2108     	TST     	R0,R1			;
000BA8 8B01     	BF      	#002			;
000BAA A002     	BRA     	#0004			;
000BAC 2121     	MOV.W   	R2,@R1		;
000BAE A000     	BRA     	#0000			;
000BB0 2120     	MOV.B   	R2,@R1		;
000BB2 000B     	RTS     				;
000BB4 0009     	NOP     				;
000BB6 4F22     	STS.L   	PR,@-R15		;
000BB8 D160     	MOV.L   	@(#180,PC),R1	;
000BBA B07B     	BRS     	#00F6			;
000BBC 7101     	ADD     	#01,R1		;
000BBE 2118     	TST     	R1,R1			;
000BC0 891E     	BT      	#03C			;
000BC2 B05F     	BRS     	#00BE			;
000BC4 0009     	NOP     				;
000BC6 60D9     	SWAP.W   	R13,R0		;
000BC8 6008     	SWAP.B   	R0,R0			;
000BCA C907     	AND     	#07,R0		;
000BCC 8800     	CMP/EQ  	#00,R0		;
000BCE 8B04     	BF      	#008			;
000BD0 60D3     	MOV     	R13,R0		;
000BD2 C91F     	AND     	#1F,R0		;
000BD4 DD5B     	MOV.L   	@(#16C,PC),R13	;
000BD6 A004     	BRA     	#0008			;
000BD8 3D0C     	ADD     	R0,R13		;
000BDA 8807     	CMP/EQ  	#07,R0		;
000BDC 8B01     	BF      	#002			;
000BDE D05A     	MOV.L   	@(#168,PC),R0	;
000BE0 2D09     	AND     	R0,R13		;
000BE2 B087     	BRS     	#010E			;
000BE4 E03E     	MOV     	#3E,R0		;
000BE6 E001     	MOV     	#01,R0		;
000BE8 2D08     	TST     	R0,R13		;
000BEA 8902     	BT      	#004			;
000BEC 6CD0     	MOV.B   	@R13,R12		;
000BEE A001     	BRA     	#0002			;
000BF0 6CCC     	EXTU.B   	R12,R12		;
000BF2 6CD1     	MOV.W   	@R13,R12		;
000BF4 B070     	BRS     	#00E0			;
000BF6 60C8     	SWAP.B   	R12,R0		;
000BF8 B06E     	BRS     	#00DC			;
000BFA 60C3     	MOV     	R12,R0		;
000BFC B07A     	BRS     	#00F4			;
000BFE E00D     	MOV     	#0D,R0		;
000C00 4F26     	LDS.L   	@R15+,PR		;
000C02 000B     	RTS     				;
000C04 0009     	NOP     				;
000C06 4F22     	STS.L   	PR,@-R15		;
000C08 D14C     	MOV.L   	@(#130,PC),R1	;
000C0A B053     	BRS     	#00A6			;
000C0C 7101     	ADD     	#01,R1		;
000C0E 2118     	TST     	R1,R1			;
000C10 8914     	BT      	#028			;
000C12 B037     	BRS     	#006E			;
000C14 0009     	NOP     				;
000C16 60D9     	SWAP.W   	R13,R0		;
000C18 6008     	SWAP.B   	R0,R0			;
000C1A C907     	AND     	#07,R0		;
000C1C 8805     	CMP/EQ  	#05,R0		;
000C1E 890D     	BT      	#01A			;
000C20 8807     	CMP/EQ  	#07,R0		;
000C22 890B     	BT      	#016			;
000C24 B046     	BRS     	#008C			;
000C26 6CD3     	MOV     	R13,R12		;
000C28 2118     	TST     	R1,R1			;
000C2A 8907     	BT      	#00E			;
000C2C B02A     	BRS     	#0054			;
000C2E 0009     	NOP     				;
000C30 E001     	MOV     	#01,R0		;
000C32 2C08     	TST     	R0,R12		;
000C34 8901     	BT      	#002			;
000C36 A001     	BRA     	#0002			;
000C38 2CD0     	MOV.B   	R13,@R12		;
000C3A 2CD1     	MOV.W   	R13,@R12		;
000C3C 4F26     	LDS.L   	@R15+,PR		;
000C3E 000B     	RTS     				;
000C40 0009     	NOP     				;
000C42 4F22     	STS.L   	PR,@-R15		;
000C44 D13D     	MOV.L   	@(#0F4,PC),R1	;
000C46 B035     	BRS     	#006A			;
000C48 7101     	ADD     	#01,R1		;
000C4A 2118     	TST     	R1,R1			;
000C4C 8917     	BT      	#02E			;
000C4E B019     	BRS     	#0032			;
000C50 0009     	NOP     				;
000C52 60D9     	SWAP.W   	R13,R0		;
000C54 6008     	SWAP.B   	R0,R0			;
000C56 C907     	AND     	#07,R0		;
000C58 8805     	CMP/EQ  	#05,R0		;
000C5A 8910     	BT      	#020			;
000C5C 8807     	CMP/EQ  	#07,R0		;
000C5E 890E     	BT      	#01C			;
000C60 8800     	CMP/EQ  	#00,R0		;
000C62 890C     	BT      	#018			;
000C64 B026     	BRS     	#004C			;
000C66 1BD1     	MOV.L   	R13,@(#4,R11)	;
000C68 2118     	TST     	R1,R1			;
000C6A 8906     	BT      	#00C			;
000C6C B00A     	BRS     	#0014			;
000C6E 0009     	NOP     				;
000C70 60D3     	MOV     	R13,R0		;
000C72 81B4     	MOV.W   	R0,@(#08,R11)	;
000C74 E002     	MOV     	#02,R0		;
000C76 A002     	BRA     	#0004			;
000C78 80BA     	MOV.B   	R0,@(#0A,R11)	;
000C7A E001     	MOV     	#01,R0		;
000C7C 80BA     	MOV.B   	R0,@(#0A,R11)	;
000C7E 4F26     	LDS.L   	@R15+,PR		;
000C80 000B     	RTS     				;
000C82 0009     	NOP     				;
000C84 4F22     	STS.L   	PR,@-R15		;
000C86 ED00     	MOV     	#00,R13		;
000C88 D22C     	MOV.L   	@(#0B0,PC),R2	;
000C8A 84B0     	MOV.B   	@(#00,R11),R0	;
000C8C 600C     	EXTU.B   	R0,R0			;
000C8E 320C     	ADD     	R0,R2			;
000C90 6010     	MOV.B   	@R1,R0		;
000C92 8820     	CMP/EQ  	#20,R0		;
000C94 890B     	BT      	#016			;
000C96 8809     	CMP/EQ  	#09,R0		;
000C98 8909     	BT      	#012			;
000C9A 3210     	CMP/EQ 	R1,R2			;
000C9C 8907     	BT      	#00E			;
000C9E 2F16     	MOV.L   	R1,@-R15		;
000CA0 4D08     	SHLL2   	R13			;
000CA2 B030     	BRS     	#0060			;
000CA4 4D08     	SHLL2   	R13			;
000CA6 61F6     	MOV.L   	@R15+,R1		;
000CA8 3D0C     	ADD     	R0,R13		;
000CAA AFF1     	BRA     	#1FE2			;
000CAC 7101     	ADD     	#01,R1		;
000CAE 4F26     	LDS.L   	@R15+,PR		;
000CB0 000B     	RTS     				;
000CB2 0009     	NOP     				;
000CB4 D221     	MOV.L   	@(#084,PC),R2	;
000CB6 84B0     	MOV.B   	@(#00,R11),R0	;
000CB8 600C     	EXTU.B   	R0,R0			;
000CBA 320C     	ADD     	R0,R2			;
000CBC 3122     	CMP/HS 	R2,R1			;
000CBE 8908     	BT      	#010			;
000CC0 6010     	MOV.B   	@R1,R0		;
000CC2 8820     	CMP/EQ  	#20,R0		;
000CC4 8903     	BT      	#006			;
000CC6 8809     	CMP/EQ  	#09,R0		;
000CC8 8901     	BT      	#002			;
000CCA A003     	BRA     	#0006			;
000CCC 0009     	NOP     				;
000CCE AFF1     	BRA     	#1FE2			;
000CD0 7101     	ADD     	#01,R1		;
000CD2 E100     	MOV     	#00,R1		;
000CD4 000B     	RTS     				;
000CD6 0009     	NOP     				;
000CD8 4F22     	STS.L   	PR,@-R15		;
000CDA 2F06     	MOV.L   	R0,@-R15		;
000CDC 4009     	SHLR2   	R0			;
000CDE B023     	BRS     	#0046			;
000CE0 4009     	SHLR2   	R0			;
000CE2 B007     	BRS     	#000E			;
000CE4 0009     	NOP     				;
000CE6 B01F     	BRS     	#003E			;
000CE8 60F6     	MOV.L   	@R15+,R0		;
000CEA B003     	BRS     	#0006			;
000CEC 0009     	NOP     				;
000CEE 4F26     	LDS.L   	@R15+,PR		;
000CF0 000B     	RTS     				;
000CF2 0009     	NOP     				;

L000CF4:							;(R0-arg1,R11-arg2)
000CF4 6103     	MOV     	R0,R1			;
000CF6 D212     	MOV.L   	@(#048,PC),R2	;
000CF8 84B1     	MOV.B   	@(#01,R11),R0	;u8 n = *(u8*)(arg2+1);
000CFA 600C     	EXTU.B   	R0,R0			;
000CFC 0214     	MOV.B   	R1,@(R0,R2)		;*(u8*)(0x0F000200+n) = arg1;
000CFE 7001     	ADD     	#01,R0		;
000D00 80B1     	MOV.B   	R0,@(#01,R11)	;*(u8*)(arg2+1) = n+1;
000D02 000B     	RTS     				;
000D04 0009     	NOP     				;


000D06 600C     	EXTU.B   	R0,R0			;
000D08 70D0     	ADD     	#D0,R0		;
000D0A 4011     	CMP/PZ  	R0			;
000D0C 8B09     	BF      	#012			;
000D0E E10A     	MOV     	#0A,R1		;
000D10 3012     	CMP/HS 	R1,R0			;
000D12 8B07     	BF      	#00E			;
000D14 C9DF     	AND     	#DF,R0		;
000D16 70F9     	ADD     	#F9,R0		;
000D18 3012     	CMP/HS 	R1,R0			;
000D1A 8B02     	BF      	#004			;
000D1C E10F     	MOV     	#0F,R1		;
000D1E 3016     	CMP/HI 	R1,R0			;
000D20 8B00     	BF      	#000			;
000D22 E000     	MOV     	#00,R0		;
000D24 000B     	RTS     				;
000D26 0009     	NOP     				;
000D28 C90F     	AND     	#0F,R0		;
000D2A E10A     	MOV     	#0A,R1		;
000D2C 3012     	CMP/HS 	R1,R0			;
000D2E 8901     	BT      	#002			;
000D30 A001     	BRA     	#0002			;
000D32 7030     	ADD     	#30,R0		;
000D34 7037     	ADD     	#37,R0		;
000D36 000B     	RTS     				;
000D38 0009     	NOP     				;
000D3A 0009     	NOP     				;
000D3C 0F000100
000D40 0F000200
000D44 0000
000D46 0400
000D48 FF00
000D4A 0007

L000D4C:							;task_func_list_init()
000D4C DCEE     	MOV.L   	@(#3B8,PC),R12	;u32* ptr = task_queue_0;
000D4E DDEF     	MOV.L   	@(#3BC,PC),R13	;
000D50 2AAA     	XOR     	R10,R10		;
L000D52:							;do {
000D52 2CA2     	MOV.L   	R10,@R12		;*ptr = 0x00000000;
000D54 7C04     	ADD     	#04,R12		;ptr++;
000D56 3CD2     	CMP/HS 	R13,R12		;
000D58 8BFB     	BF      	L000D52		;} while (ptr < task_queue_14_end);
000D5A D235     	MOV.L   	@(#0D4,PC),R2	;u8* num_ptr = task_num_tbl;
000D5C D335     	MOV.L   	@(#0D4,PC),R3	;
L000D5E:							;do {
000D5E 6024     	MOV.B   	@R2+,R0		;u8 n = *num_ptr; num_ptr++;
000D60 610C     	EXTU.B   	R0,R1			;
000D62 B179     	BRS     	L001058		;task_init(n);
000D64 0009     	NOP     				;
000D66 3232     	CMP/HS 	R3,R2			;
000D68 8BF9     	BF      	L000D5E		;} while (num_ptr < task_num_tbl+13);
000D6A D231     	MOV.L   	@(#0C4,PC),R2	;num_ptr = task_num_tbl;
000D6C D33A     	MOV.L   	@(#0E8,PC),R3	;
000D6E D473     	MOV.L   	@(#1CC,PC),R4	;
000D70 D5E5     	MOV.L   	@(#394,PC),R5	;
000D72 6024     	MOV.B   	@R2+,R0		;n = *num_ptr; num_ptr++;
000D74 600C     	EXTU.B   	R0,R0			;
000D76 4008     	SHLL2   	R0			;
000D78 064E     	MOV.L   	@(R0,R4),R6		;u32* entry = task_entry_tbl[n];
000D7A 2562     	MOV.L   	R6,@R5		;task_queue_0 = entry;
L000D7C:							;do {
000D7C 6024     	MOV.B   	@R2+,R0		;n = *num_ptr; num_ptr++;
000D7E 600C     	EXTU.B   	R0,R0			;
000D80 4008     	SHLL2   	R0			;
000D82 054E     	MOV.L   	@(R0,R4),R5		;u32* next = task_entry_tbl[n];
000D84 1654     	MOV.L   	R5,@(#10,R6)	;entry.next = next;
000D86 6653     	MOV     	R5,R6			;entry = next;
000D88 3232     	CMP/HS 	R3,R2			;
000D8A 8BF7     	BF      	L000D7C		;} while (num_ptr < task_num_tbl+11);
000D8C B18C     	BRS     	L0010A8		;u32* task = get_next_entry();
000D8E 0009     	NOP     				;
000D90 A1C2     	BRA     	L001118		;run_task(task);
000D92 0009     	NOP     				;

TRAP_46:							;task_func_list_init_and_run_task6()
000D94 E0F0     	MOV     	#F0,R0		;
000D96 600C     	EXTU.B   	R0,R0			;
000D98 400E     	LDC     	R0,SR			;SH1.SR = 0x000000F0;
000D9A D024     	MOV.L   	@(#090,PC),R0	;
000D9C 401E     	LDC     	R0,GBR		;
000D9E E000     	MOV     	#00,R0		;
000DA0 C006     	MOV.B   	R0,@(#006,GBR)	;SH1.ITU.TIER0 = 0x00;
000DA2 C010     	MOV.B   	R0,@(#010,GBR)	;SH1.ITU.TIER1 = 0x00;
000DA4 C01A     	MOV.B   	R0,@(#01A,GBR)	;SH1.ITU.TIER2 = 0x00;
000DA6 C007     	MOV.B   	R0,@(#007,GBR)	;SH1.ITU.TSR0 = 0x00;
000DA8 C011     	MOV.B   	R0,@(#011,GBR)	;SH1.ITU.TSR1 = 0x00;
000DAA C01B     	MOV.B   	R0,@(#01B,GBR)	;SH1.ITU.TSR2 = 0x00;
000DAC D025     	MOV.L   	@(#094,PC),R0	;
000DAE 400B     	JSR     	@R0			;L001C46()
000DB0 0009     	NOP     				;
000DB2 D025     	MOV.L   	@(#094,PC),R0	;
000DB4 400B     	JSR     	@R0			;L0006BC()
000DB6 0009     	NOP     				;
000DB8 D024     	MOV.L   	@(#090,PC),R0	;
000DBA 400B     	JSR     	@R0			;L002388()
000DBC 0009     	NOP     				;
000DBE DCD2     	MOV.L   	@(#348,PC),R12	;u32* ptr = task_queue_0;
000DC0 DDD3     	MOV.L   	@(#34C,PC),R13	;
000DC2 2AAA     	XOR     	R10,R10		;
L000DC4:							;do {
000DC4 2CA2     	MOV.L   	R10,@R12		;*ptr = 0x00000000;
000DC6 7C04     	ADD     	#04,R12		;ptr++;
000DC8 3CD2     	CMP/HS 	R13,R12		;
000DCA 8BFB     	BF      	L000DC4		;} while (ptr < task_queue_14);
000DCC D21A     	MOV.L   	@(#068,PC),R2	;u8* num_ptr = L00134D;
000DCE D31B     	MOV.L   	@(#06C,PC),R3	;
L000DD0:
000DD0 6024     	MOV.B   	@R2+,R0		;do {
000DD2 610C     	EXTU.B   	R0,R1			;
000DD4 B140     	BRS     	L001058		;task_init(*num_ptr); 
000DD6 0009     	NOP     				;ptr++;
000DD8 3232     	CMP/HS 	R3,R2			;
000DDA 8BF9     	BF      	L000DD0		;} while (ptr < L001358);
000DDC D214     	MOV.L   	@(#050,PC),R2	;num_ptr = task_num_tbl;
000DDE D318     	MOV.L   	@(#060,PC),R3	;
000DE0 D456     	MOV.L   	@(#158,PC),R4	;
000DE2 D5C9     	MOV.L   	@(#324,PC),R5	;
000DE4 6024     	MOV.B   	@R2+,R0		;
000DE6 600C     	EXTU.B   	R0,R0			;u8 num = *num_ptr; ptr++;
000DE8 4008     	SHLL2   	R0			;
000DEA 064E     	MOV.L   	@(R0,R4),R6		;u32* task_entry = task_entry_tbl[num];
000DEC 2562     	MOV.L   	R6,@R5		;*task_queue_0 = task_entry;
L000DEE:
000DEE 6024     	MOV.B   	@R2+,R0		;do {
000DF0 600C     	EXTU.B   	R0,R0			;num = *num_ptr; ptr++;
000DF2 4008     	SHLL2   	R0			;
000DF4 054E     	MOV.L   	@(R0,R4),R5		;u32* next = task_entry_tbl[num];
000DF6 1654     	MOV.L   	R5,@(#10,R6)	;task_entry.next = next;
000DF8 6653     	MOV     	R5,R6			;task_entry = next;
000DFA 3232     	CMP/HS 	R3,R2			;
000DFC 8BF7     	BF      	L000DEE		;} while (num_ptr < L00134A);
000DFE E006     	MOV     	#06,R0		;
000E00 6108     	SWAP.B   	R0,R1			;
000E02 4008     	SHLL2   	R0			;
000E04 0D4E     	MOV.L   	@(R0,R4),R13	;
000E06 6119     	SWAP.W   	R1,R1			;
000E08 2D12     	MOV.L   	R1,@R13		;task_entry_tbl[6].header = 0x06000000;
000E0A EA00     	MOV     	#00,R10		;
000E0C 1DA1     	MOV.L   	R10,@(#4,R13)	;task_entry_tbl[6].m04 = 0x00000000;
000E0E 1DA3     	MOV.L   	R10,@(#C,R13)	;task_entry_tbl[6].m0C = 0x00000000;
000E10 1DA4     	MOV.L   	R10,@(#10,R13)	;task_entry_tbl[6].next = 0x00000000;
000E12 1DA5     	MOV.L   	R10,@(#14,R13)	;task_entry_tbl[6].m14 = 0x00000000;
000E14 1DF2     	MOV.L   	R15,@(#8,R13)	;task_entry_tbl[6].stack = SH1.SP;
000E16 D30E     	MOV.L   	@(#038,PC),R3	;
000E18 D20E     	MOV.L   	@(#038,PC),R2	;
L000E1A:							;do {
000E1A 23A2     	MOV.L   	R10,@R3		;task_args_6[i] = 0x00000000;
000E1C 7304     	ADD     	#04,R3		;
000E1E 3322     	CMP/HS 	R2,R3			;
000E20 8BFB     	BF      	L000E1A		;} while (i < 7);
000E22 B141     	BRS     	L0010A8		;u32* task = get_next_entry();
000E24 0009     	NOP     				;
000E26 A177     	BRA     	L001118		;run_task(task);
000E28 0009     	NOP     				;
000E2A 0009     	NOP     				;
000E2C 05FFFF00
000E30 00001340
000E34 0000134D
000E38 0000134D
000E3C 00001358
000E40 0000134A
000E44 00001C46
000E48 000006BC
000E4C 00002388
000E50 0F0000CC
000E54 0F0000E8
000E58 0000134B

TRAP_40:
000E5C E060     	MOV     	#60,R0		;
000E5E 400E     	LDC     	R0,SR			;
000E60 66D3     	MOV     	R13,R6		;
000E62 65C3     	MOV     	R12,R5		;
000E64 64B3     	MOV     	R11,R4		;
000E66 63A3     	MOV     	R10,R3		;
000E68 61B9     	SWAP.W   	R11,R1		;
000E6A 611D     	EXTU.W   	R1,R1			;
000E6C 4119     	SHLR8   	R1			;
000E6E B0F3     	BRS     	#01E6			;
000E70 0009     	NOP     				;
000E72 6D63     	MOV     	R6,R13		;
000E74 6C53     	MOV     	R5,R12		;
000E76 6B43     	MOV     	R4,R11		;
000E78 6A33     	MOV     	R3,R10		;
000E7A 002B     	RTE     				;
000E7C 0009     	NOP     				;
000E7E 0009     	NOP     				;

TRAP_35:							;
000E80 E060     	MOV     	#60,R0		;
000E82 400E     	LDC     	R0,SR			;SH1.SR = 0x00000060;
000E84 D715     	MOV.L   	@(#054,PC),R7	;
000E86 6372     	MOV.L   	@R7,R3		;u32* entry = *(u32*)0x0F0001D4;
000E88 8437     	MOV.B   	@(#07,R3),R0	;
000E8A 2008     	TST     	R0,R0			;
000E8C 890B     	BT      	L000EA6		;if (((u8*)entry)[7] == 0) goto L000EA6;
000E8E 8430     	MOV.B   	@(#00,R3),R0	;u8 n = entry.eader_tn;
000E90 4008     	SHLL2   	R0			;
000E92 D22B     	MOV.L   	@(#0AC,PC),R2	;
000E94 042E     	MOV.L   	@(R0,R2),R4		;u32* queue_ptr = task_queue_tbl[n];
000E96 8036     	MOV.B   	R0,@(#06,R3)	;((u8*)entry)[6] = n*4;
L000E98:
000E98 6542     	MOV.L   	@R4,R5		;u32* node = *queue_ptr;
000E9A 2558     	TST     	R5,R5			;
000E9C 8902     	BT      	L000EA4		;if (node == 0) goto L000EA4;
000E9E E410     	MOV     	#10,R4		;queue_ptr = node.next;
000EA0 AFFA     	BRA     	L000E98		;
000EA2 345C     	ADD     	R5,R4			;
L000EA4:
000EA4 2432     	MOV.L   	R3,@R4		;*queue_ptr = entry;
L000EA6:
000EA6 5235     	MOV.L   	@(#14,R3),R2	;u32 temp2 = entry.m14;
000EA8 2228     	TST     	R2,R2			;
000EAA 890F     	BT      	L000ECC		;if (temp2 == 0) goto L000ECC;
000EAC 8434     	MOV.B   	@(#04,R3),R0	;
000EAE 6120     	MOV.B   	@R2,R1		;
000EB0 3010     	CMP/EQ 	R1,R0			;
000EB2 8B02     	BF      	L000EBA		;if (entry.m04 != temp2.header_tn) goto L000EBA;
000EB4 200A     	XOR     	R0,R0			;entry.m04 = 0x00;
000EB6 A005     	BRA     	L000EC4		;
000EB8 8034     	MOV.B   	R0,@(#04,R3)	;
L000EBA:
000EBA 8435     	MOV.B   	@(#05,R3),R0	;
000EBC 3010     	CMP/EQ 	R1,R0			;
000EBE 8B05     	BF      	L000ECC		;if (entry.m05 != temp2.header_tn) goto L000ECC;
000EC0 200A     	XOR     	R0,R0			;
000EC2 8035     	MOV.B   	R0,@(#05,R3)	;entry.m05 = 0x00;
L000EC4:
000EC4 6D23     	MOV     	R2,R13		;
000EC6 222A     	XOR     	R2,R2			;entry.next = 0x00000000;
000EC8 A003     	BRA     	L000ED2		;
000ECA 1325     	MOV.L   	R2,@(#14,R3)	;
L000ECC:
000ECC 200A     	XOR     	R0,R0			;entry.m04 = 0x00;
000ECE B0EB     	BRS     	L0010A8		;u32* next_entry = get_next_entry();
000ED0 8034     	MOV.B   	R0,@(#04,R3)	;
L000ED2:
000ED2 13F2     	MOV.L   	R15,@(#8,R3)	;entry.stack = SH1.SP;
000ED4 E001     	MOV     	#01,R0		;entry.fn = 0x01;
000ED6 A11F     	BRA     	L001118		;run_task(next_entry);
000ED8 8031     	MOV.B   	R0,@(#01,R3)	;
000EDA 0009     	NOP     				;
000EDC 0F0001D4
000EE0 0000     	
000EE2 14A0

TRAP_32:							;
000EE4 E060     	MOV     	#60,R0		;
000EE6 400E     	LDC     	R0,SR			;
000EE8 60B9     	SWAP.W   	R11,R0		;
000EEA 4019     	SHLR8   	R0			;
000EEC C9FF     	AND     	#FF,R0		;
000EEE 4008     	SHLL2   	R0			;
000EF0 D112     	MOV.L   	@(#048,PC),R1	;
000EF2 021E     	MOV.L   	@(R0,R1),R2		;
000EF4 60B9     	SWAP.W   	R11,R0		;
000EF6 C9FF     	AND     	#FF,R0		;
000EF8 4008     	SHLL2   	R0			;
000EFA 031E     	MOV.L   	@(R0,R1),R3		;
000EFC 8421     	MOV.B   	@(#01,R2),R0	;
000EFE 8802     	CMP/EQ  	#02,R0		;
000F00 8917     	BT      	#02E			;
000F02 8803     	CMP/EQ  	#03,R0		;
000F04 8915     	BT      	#02A			;
000F06 B15A     	BRS     	#02B4			;
000F08 0009     	NOP     				;
000F0A 8426     	MOV.B   	@(#06,R2),R0	;
000F0C 2008     	TST     	R0,R0			;
000F0E 890A     	BT      	#014			;
000F10 D10B     	MOV.L   	@(#02C,PC),R1	;
000F12 C97F     	AND     	#7F,R0		;
000F14 301C     	ADD     	R1,R0			;
000F16 6102     	MOV.L   	@R0,R1		;
000F18 3210     	CMP/EQ 	R1,R2			;
000F1A 8902     	BT      	#004			;
000F1C E010     	MOV     	#10,R0		;
000F1E AFFA     	BRA     	#1FF4			;
000F20 301C     	ADD     	R1,R0			;
000F22 5414     	MOV.L   	@(#10,R1),R4	;
000F24 2042     	MOV.L   	R4,@R0		;
000F26 13F2     	MOV.L   	R15,@(#8,R3)	;
000F28 E002     	MOV     	#02,R0		;
000F2A 8031     	MOV.B   	R0,@(#01,R3)	;
000F2C 1235     	MOV.L   	R3,@(#14,R2)	;
000F2E A0F3     	BRA     	#01E6			;
000F30 6D23     	MOV     	R2,R13		;
000F32 E004     	MOV     	#04,R0		;
000F34 C32B     	TRAPA   	#2B			;
000F36 002B     	RTE     				;
000F38 E0FF     	MOV     	#FF,R0		;
000F3A 0009     	NOP     				;
000F3C 00001464
000F40 000013EC

TRAP_41:
000F44 E060     	MOV     	#60,R0		;
000F46 400E     	LDC     	R0,SR			;
000F48 D4F5     	MOV.L   	@(#3D4,PC),R4	;
000F4A 6142     	MOV.L   	@R4,R1		;
000F4C 5215     	MOV.L   	@(#14,R1),R2	;
000F4E 2228     	TST     	R2,R2			;
000F50 890B     	BT      	#016			;
000F52 12C6     	MOV.L   	R12,@(#18,R2)	;
000F54 12D7     	MOV.L   	R13,@(#1C,R2)	;
000F56 6010     	MOV.B   	@R1,R0		;
000F58 8025     	MOV.B   	R0,@(#05,R2)	;
000F5A 1215     	MOV.L   	R1,@(#14,R2)	;
000F5C 233A     	XOR     	R3,R3			;
000F5E 1135     	MOV.L   	R3,@(#14,R1)	;
000F60 6D23     	MOV     	R2,R13		;
000F62 11F2     	MOV.L   	R15,@(#8,R1)	;
000F64 E003     	MOV     	#03,R0		;
000F66 A0D7     	BRA     	#01AE			;
000F68 8011     	MOV.B   	R0,@(#01,R1)	;
000F6A E005     	MOV     	#05,R0		;
000F6C C32B     	TRAPA   	#2B			;
000F6E 002B     	RTE     				;
000F70 E0FF     	MOV     	#FF,R0		;

TRAP_33:							;int add_task_to_queue(u32 handle) //handle-R11
000F72 E060     	MOV     	#60,R0		;
000F74 400E     	LDC     	R0,SR			;
000F76 4F22     	STS.L   	PR,@-R15		;
000F78 B121     	BRS     	L0011BE		;int err = task_create(handle);
000F7A 0009     	NOP     				;
000F7C 4F26     	LDS.L   	@R15+,PR		;
000F7E 2008     	TST     	R0,R0			;
000F80 8B18     	BF      	L000FB4		;if (err == 0) {
000F82 60B9     	SWAP.W   	R11,R0		;
000F84 4019     	SHLR8   	R0			;
000F86 C9FF     	AND     	#FF,R0		;  u8 n = handle>>24;
000F88 4008     	SHLL2   	R0			;
000F8A 6C03     	MOV     	R0,R12		;
000F8C DDE7     	MOV.L   	@(#39C,PC),R13	;
000F8E 0ADE     	MOV.L   	@(R0,R13),R10	;  u32* entry = task_entry_tbl[n];
000F90 84A1     	MOV.B   	@(#01,R10),R0	;
000F92 8801     	CMP/EQ  	#01,R0		;
000F94 8B0E     	BF      	L000FB4		;
000F96 84A6     	MOV.B   	@(#06,R10),R0	;
000F98 2008     	TST     	R0,R0			;
000F9A 8B0B     	BF      	L000FB4		;  if (entry.fn == 0x01 && entry.m06 == 0x00) {
000F9C 60C3     	MOV     	R12,R0		;
000F9E 80A6     	MOV.B   	R0,@(#06,R10)	;    entry.m06 = n*4;
000FA0 DCE1     	MOV.L   	@(#384,PC),R12	;
000FA2 0DCE     	MOV.L   	@(R0,R12),R13	;    u32* queue = task_queue_tbl[n];
L000FA4:							;    while (1) {
000FA4 60D2     	MOV.L   	@R13,R0		;      u32* node = *queue;
000FA6 2008     	TST     	R0,R0			;
000FA8 8902     	BT      	L000FB0		;      if (node == 0) break;
000FAA ED10     	MOV     	#10,R13		;      queue = node.next;
000FAC AFFA     	BRA     	L000FA4		;
000FAE 3D0C     	ADD     	R0,R13		;    }
L000FB0:
000FB0 2DA2     	MOV.L   	R10,@R13		;    *queue = entry;
000FB2 200A     	XOR     	R0,R0			;    return 0;
L000FB4:							;  }
000FB4 002B     	RTE     				;}
000FB6 0009     	NOP     				;return err;

TRAP_34:
000FB8 E060     	MOV     	#60,R0		;
000FBA 400E     	LDC     	R0,SR			;
000FBC 4F22     	STS.L   	PR,@-R15		;
000FBE B0FE     	BRS     	#01FC			;
000FC0 0009     	NOP     				;
000FC2 4F26     	LDS.L   	@R15+,PR		;
000FC4 2008     	TST     	R0,R0			;
000FC6 8B30     	BF      	#060			;
000FC8 60B9     	SWAP.W   	R11,R0		;
000FCA 4019     	SHLR8   	R0			;
000FCC C9FF     	AND     	#FF,R0		;
000FCE 4008     	SHLL2   	R0			;
000FD0 DCD6     	MOV.L   	@(#358,PC),R12	;
000FD2 0ACE     	MOV.L   	@(R0,R12),R10	;
000FD4 84A1     	MOV.B   	@(#01,R10),R0	;
000FD6 8801     	CMP/EQ  	#01,R0		;
000FD8 8901     	BT      	#002			;
000FDA 8804     	CMP/EQ  	#04,R0		;
000FDC 8B25     	BF      	#04A			;
000FDE 84A6     	MOV.B   	@(#06,R10),R0	;
000FE0 C8FF     	TST     	#FF,R0		;
000FE2 890E     	BT      	#01C			;
000FE4 C97F     	AND     	#7F,R0		;
000FE6 DDD0     	MOV.L   	@(#340,PC),R13	;
000FE8 0CDE     	MOV.L   	@(R0,R13),R12	;
000FEA 6DC2     	MOV.L   	@R12,R13		;
000FEC 2DD8     	TST     	R13,R13		;
000FEE 8908     	BT      	#010			;
000FF0 3DA0     	CMP/EQ 	R10,R13		;
000FF2 8902     	BT      	#004			;
000FF4 EC10     	MOV     	#10,R12		;
000FF6 AFF8     	BRA     	#1FF0			;
000FF8 3CDC     	ADD     	R13,R12		;
000FFA 50D4     	MOV.L   	@(#10,R13),R0	;
000FFC 2C02     	MOV.L   	R0,@R12		;
000FFE E000     	MOV     	#00,R0		;
001000 1D04     	MOV.L   	R0,@(#10,R13)	;
001002 60B9     	SWAP.W   	R11,R0		;
001004 C9FF     	AND     	#FF,R0		;
001006 C880     	TST     	#80,R0		;
001008 8903     	BT      	#006			;
00100A E080     	MOV     	#80,R0		;
00100C DC3E     	MOV.L   	@(#0F8,PC),R12	;
00100E A004     	BRA     	#0008			;
001010 80A6     	MOV.B   	R0,@(#06,R10)	;
001012 4008     	SHLL2   	R0			;
001014 80A6     	MOV.B   	R0,@(#06,R10)	;
001016 DDC4     	MOV.L   	@(#310,PC),R13	;
001018 0CDE     	MOV.L   	@(R0,R13),R12	;
00101A 6DC2     	MOV.L   	@R12,R13		;
00101C 2DD8     	TST     	R13,R13		;
00101E 8902     	BT      	#004			;
001020 EC10     	MOV     	#10,R12		;
001022 AFFA     	BRA     	#1FF4			;
001024 3CDC     	ADD     	R13,R12		;
001026 A000     	BRA     	#0000			;
001028 2CA2     	MOV.L   	R10,@R12		;
00102A 002B     	RTE     				;
00102C 0009     	NOP     				;

L00102E:							;add_task13_to_queue()
00102E D6BC     	MOV.L   	@(#2F0,PC),R6	;
001030 6162     	MOV.L   	@R6,R1		;u32* entry = *(u32*)0x0F0001D4;
001032 8410     	MOV.B   	@(#00,R1),R0	;u8 n = entry.tn;
001034 4008     	SHLL2   	R0			;
001036 D2BC     	MOV.L   	@(#2F0,PC),R2	;
001038 042E     	MOV.L   	@(R0,R2),R4		;u32* queue = task_queue_tbl[n];
00103A 8016     	MOV.B   	R0,@(#06,R1)	;entry.m06 = n*4;
00103C E004     	MOV     	#04,R0		;
00103E 8011     	MOV.B   	R0,@(#01,R1)	;entry.fn = 0x04;
001040 E010     	MOV     	#10,R0		;
L001042:							;while (1) {
001042 6542     	MOV.L   	@R4,R5		;  u32* node = *queue;
001044 2558     	TST     	R5,R5			;
001046 8902     	BT      	L00104E		;  if (node == 0) break;
001048 350C     	ADD     	R0,R5			;  queue = node.next;
00104A AFFA     	BRA     	L001042		;
00104C 6453     	MOV     	R5,R4			;}
L00104E:
00104E 2412     	MOV.L   	R1,@R4		;*queue = entry;
001050 B02A     	BRS     	L0010A8		;u32* task = get_next_entry();
001052 0009     	NOP     				;
001054 A060     	BRA     	L001118		;run_task(task);
001056 0009     	NOP     				;

L001058:							;task_init(u8 tn)	//tn-R1
001058 6013     	MOV     	R1,R0			;
00105A DDB4     	MOV.L   	@(#2D0,PC),R13	;
00105C 4008     	SHLL2   	R0			;
00105E 0DDE     	MOV.L   	@(R0,R13),R13	;u32* entry = task_entry_tbl[tn];
001060 6C18     	SWAP.B   	R1,R12		;
001062 6CC9     	SWAP.W   	R12,R12		;
001064 2DC2     	MOV.L   	R12,@R13		;entry.header = tn<<24;
001066 DB0D     	MOV.L   	@(#034,PC),R11	;
001068 DA0D     	MOV.L   	@(#034,PC),R10	;
00106A 0CBE     	MOV.L   	@(R0,R11),R12	;u32* stack = task_stack_tbl[tn];
00106C 2CC8     	TST     	R12,R12		;
00106E 8904     	BT      	L00107A		;if (stack != 0) {
001070 DB0C     	MOV.L   	@(#030,PC),R11	;
001072 2CB6     	MOV.L   	R11,@-R12		;  stack--; *stack = 0x00000020;
001074 0BAE     	MOV.L   	@(R0,R10),R11	;
001076 2CB6     	MOV.L   	R11,@-R12		;  stack--; *stack = L0013B0[tn];
001078 1DC2     	MOV.L   	R12,@(#8,R13)	;  entry.stack = stack;
L00107A:							;}
00107A EA00     	MOV     	#00,R10		;
00107C 1DA1     	MOV.L   	R10,@(#4,R13)	;entry.m04 = 0x00000000;
00107E 1DA5     	MOV.L   	R10,@(#14,R13)	;entry.m14 = 0x00000000;
001080 1DA3     	MOV.L   	R10,@(#C,R13)	;entry.m0C = 0x00000000;
001082 1DA4     	MOV.L   	R10,@(#10,R13)	;entry.next = 0x00000000;
001084 DCAA     	MOV.L   	@(#2A8,PC),R12	;
001086 0BCE     	MOV.L   	@(R0,R12),R11	;u8* map = task_map_tbl[tn];
001088 7B6C     	ADD     	#6C,R11		;
00108A 6DB6     	MOV.L   	@R11+,R13		;u32* ram_ptr = *(u32*)(map+0x6C);
00108C 6CB2     	MOV.L   	@R11,R12		;u32* ram_end = *(u32*)(map+0x70);
L00108E:							;while (1) {
00108E 3DC2     	CMP/HS 	R12,R13		;
001090 8902     	BT      	L001098		;  if (ram_ptr >= ram_end) break;
001092 2DA2     	MOV.L   	R10,@R13		;  *ram_ptr = 0x00000000;
001094 AFFB     	BRA     	L00108E		;  ram_ptr++;
001096 7D04     	ADD     	#04,R13		;}
L001098:
001098 000B     	RTS     				;
00109A 0009     	NOP     				;
00109C 00001374
0010A0 000013B0
0010A4 00000020

L0010A8:							;u32* get_next_entry()
0010A8 DD17     	MOV.L   	@(#05C,PC),R13	;u32* queue = &task_queue_0;
0010AA 6CD6     	MOV.L   	@R13+,R12		;u32* entry = *queue++;
0010AC 2CC8     	TST     	R12,R12		;
0010AE 8B23     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010B0 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010B2 2CC8     	TST     	R12,R12		;
0010B4 8B20     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010B6 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010B8 2CC8     	TST     	R12,R12		;
0010BA 8B1D     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010BC 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010BE 2CC8     	TST     	R12,R12		;
0010C0 8B1A     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010C2 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010C4 2CC8     	TST     	R12,R12		;
0010C6 8B17     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010C8 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010CA 2CC8     	TST     	R12,R12		;
0010CC 8B14     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010CE 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010D0 2CC8     	TST     	R12,R12		;
0010D2 8B11     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010D4 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010D6 2CC8     	TST     	R12,R12		;
0010D8 8B0E     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010DA 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010DC 2CC8     	TST     	R12,R12		;
0010DE 8B0B     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010E0 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010E2 2CC8     	TST     	R12,R12		;
0010E4 8B08     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010E6 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010E8 2CC8     	TST     	R12,R12		;
0010EA 8B05     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010EC 6CD6     	MOV.L   	@R13+,R12		;entry = *queue++;
0010EE 2CC8     	TST     	R12,R12		;
0010F0 8B02     	BF      	L0010F8		;if (entry != 0) goto L0010F8;
0010F2 E006     	MOV     	#06,R0		;
0010F4 C32B     	TRAPA   	#43			;TRAP_43()
0010F6 DC07     	MOV.L   	@(#01C,PC),R12	;entry = &task_entry_13;
L0010F8:
0010F8 7DFC     	ADD     	#FC,R13		;queue--;
0010FA 50C4     	MOV.L   	@(#10,R12),R0	;
0010FC 2D02     	MOV.L   	R0,@R13		;*queue = entry.next;
0010FE 200A     	XOR     	R0,R0			;
001100 1C04     	MOV.L   	R0,@(#10,R12)	;entry.next = 0x00000000;
001102 000B     	RTS     				;
001104 6DC3     	MOV     	R12,R13		;return entry;
001106 0009     	NOP     				;
001108 0F0001D8
00110C 0F000208
001110 0F000204
001114 0F0001BC

L001118:							;int run_task(u32* entry)	//entry-R13
001118 DA81     	MOV.L   	@(#204,PC),R10	;
00111A DC88     	MOV.L   	@(#220,PC),R12	;
00111C 84D1     	MOV.B   	@(#01,R13),R0	;
00111E 4008     	SHLL2   	R0			;
001120 0BCE     	MOV.L   	@(R0,R12),R11	;u32* func = task_pre_func_tbl[entry.fn];
001122 E005     	MOV     	#05,R0		;
001124 80D1     	MOV.B   	R0,@(#01,R13)	;entry.fn = 0x05
001126 200A     	XOR     	R0,R0			;
001128 80D6     	MOV.B   	R0,@(#06,R13)	;entry.m06 = 0x00;
00112A 2AD2     	MOV.L   	R13,@R10		;*(u32*)0x0F0001D4 = entry;
00112C 4B2B     	JMP     	@R11			;SH1.SP = entry.stack; 
00112E 5FD2     	MOV.L   	@(#08,R13),R15	;return func(entry);

L001130:							;int task_pre_func_1130(u32* entry)	//entry-R13
001130 60D0     	MOV.B   	@R13,R0		;u8 tn = entry.tn;
001132 4008     	SHLL2   	R0			;
001134 DC20     	MOV.L   	@(#080,PC),R12	;
001136 0CCE     	MOV.L   	@(R0,R12),R12	;
001138 2CC8     	TST     	R12,R12		;
00113A 8900     	BT      	L00113E		;*(u32*)(0x09075800+tn*4) == 0
00113C 2FC2     	MOV.L   	R12,@R15		;
L00113E:
00113E DC1D     	MOV.L   	@(#074,PC),R12	;
001140 0CCE     	MOV.L   	@(R0,R12),R12	;u32* task_args = task_args_tbl[tn];
L001142:							;do {
001142 6BC6     	MOV.L   	@R12+,R11		;  u32 arg = *task_args;
001144 2BB8     	TST     	R11,R11		;  task_args++;
001146 89FC     	BT      	L001142		;} while (arg == 0);
001148 7CFC     	ADD     	#FC,R12		;task_args--;
00114A 60D0     	MOV.B   	@R13,R0		;
00114C 6AC0     	MOV.B   	@R12,R10		;
00114E 3A00     	CMP/EQ 	R0,R10		;
001150 8B07     	BF      	L001162		;if (((u8*)task_args)[0] == entry.tn) {
001152 60B9     	SWAP.W   	R11,R0		;
001154 80D4     	MOV.B   	R0,@(#04,R13)	;  entry.m04 = (arg>>16)&0xFF;
001156 84D7     	MOV.B   	@(#07,R13),R0	;
001158 70FF     	ADD     	#FF,R0		;
00115A 80D7     	MOV.B   	R0,@(#07,R13)	;  entry.m07--;
00115C 2DDA     	XOR     	R13,R13		;  
00115E 002B     	RTE     				;  *task_args = 0x00000000;
001160 2CD2     	MOV.L   	R13,@R12		;  return entry.tn;
L001162:							;}
001162 E007     	MOV     	#07,R0		;else {
001164 C32B     	TRAPA   	#43			;  TRAP_43(0x07)
001166 EB00     	MOV     	#00,R11		;  arg = 0;
001168 002B     	RTE     				;  return -1;
00116A E0FF     	MOV     	#FF,R0		;}

L00116C:							;int task_pre_func_116C(u32* entry)	//entry-R13
00116C 6AD3     	MOV     	R13,R10		;
00116E 5CA6     	MOV.L   	@(#18,R10),R12	;R12 = entry.args[0];
001170 5DA7     	MOV.L   	@(#1C,R10),R13	;R13 = entry.args[1];
001172 200A     	XOR     	R0,R0			;entry.args[0] = 0x00000000;
001174 1A06     	MOV.L   	R0,@(#18,R10)	;entry.args[1] = 0x00000000;
001176 002B     	RTE     				;
001178 1A07     	MOV.L   	R0,@(#1C,R10)	;
00117A 0009     	NOP     				;

L00117C:							;int task_pre_func_117C(u32* entry)	//entry-R13
00117C E050     	MOV     	#50,R0		;
00117E 30FC     	ADD     	R15,R0		;
001180 1D02     	MOV.L   	R0,@(#8,R13)	;entry.stack = SH1.SP+0x50;
001182 4F16     	LDS.L   	@R15+,MACL		;
001184 4F06     	LDS.L   	@R15+,MACH		;
001186 4F17     	LDC.L   	@R15+,GBR		;
001188 4F26     	LDS.L   	@R15+,PR		;
00118A 6DF6     	MOV.L   	@R15+,R13		;
00118C 6CF6     	MOV.L   	@R15+,R12		;
00118E 6BF6     	MOV.L   	@R15+,R11		;
001190 6AF6     	MOV.L   	@R15+,R10		;
001192 69F6     	MOV.L   	@R15+,R9		;
001194 68F6     	MOV.L   	@R15+,R8		;
001196 67F6     	MOV.L   	@R15+,R7		;
001198 66F6     	MOV.L   	@R15+,R6		;
00119A 65F6     	MOV.L   	@R15+,R5		;
00119C 64F6     	MOV.L   	@R15+,R4		;
00119E 63F6     	MOV.L   	@R15+,R3		;
0011A0 62F6     	MOV.L   	@R15+,R2		;
0011A2 61F6     	MOV.L   	@R15+,R1		;
0011A4 60F6     	MOV.L   	@R15+,R0		;
0011A6 002B     	RTE     				;
0011A8 0009     	NOP     				;

L0011AA:							;int task_pre_func_11AA(u32* entry)	//entry-R13
0011AA 002B     	RTE     				;
0011AC 0009     	NOP     				;
0011AE 0009     	NOP     				;
0011B0 05FF
0011B2 FFC2
0011B4 00001428
0011B8 09075800
0011BC C3FF

L0011BE:							;int task_create(u32 handle)	//handle-R11
0011BE 60B9     	SWAP.W   	R11,R0		;
0011C0 6008     	SWAP.B   	R0,R0			;
0011C2 DC5A     	MOV.L   	@(#168,PC),R12	;
0011C4 C9FF     	AND     	#FF,R0		;u8 n = ((u8*)handle)[0];
0011C6 DD5A     	MOV.L   	@(#168,PC),R13	;
0011C8 4008     	SHLL2   	R0			;
0011CA 0ACE     	MOV.L   	@(R0,R12),R10	;u32* entry = task_entry_tbl[n];
0011CC 0CDE     	MOV.L   	@(R0,R13),R12	;u32* map = task_map_tbl[n];
0011CE 84A3     	MOV.B   	@(#03,R10),R0	;
0011D0 6D0C     	EXTU.B   	R0,R13		;
0011D2 60B9     	SWAP.W   	R11,R0		;
0011D4 C9FF     	AND     	#FF,R0		;
0011D6 C880     	TST     	#80,R0		;
0011D8 8B06     	BF      	L0011E8		;if (((u8*)handle)[1] & 0x80 != 0 ||
0011DA 2DD8     	TST     	R13,R13		;
0011DC 8904     	BT      	L0011E8		;     entry.header3 == 0 ||
0011DE 3D00     	CMP/EQ 	R0,R13		;
0011E0 8902     	BT      	L0011E8		;     ((u8*)handle)[1] == entry.header3 ||
0011E2 6DA0     	MOV.B   	@R10,R13		;
0011E4 3D00     	CMP/EQ 	R0,R13		;
0011E6 8B12     	BF      	L00120E		;     ((u8*)handle)[1] == entry.tn) {
L0011E8:
0011E8 C880     	TST     	#80,R0		;
0011EA 8903     	BT      	L0011F4		;
0011EC C97F     	AND     	#7F,R0		;
0011EE 4008     	SHLL2   	R0			;
0011F0 A001     	BRA     	L0011F6		;  u8 mn = (((u8*)handle)[1] & 0x80) == 0 ?
0011F2 7038     	ADD     	#38,R0		;          ((u8*)handle)[1] :
0011F4 4008     	SHLL2   	R0			;          (((u8*)handle)[1] & 0x80) + 14;
0011F6 0DCE     	MOV.L   	@(R0,R12),R13	;  u32* ptr = map[mn];
0011F8 2DD8     	TST     	R13,R13		;
0011FA 890C     	BT      	L001216		;  if (ptr == 0) goto L001216;
0011FC 60D2     	MOV.L   	@R13,R0		;
0011FE 2008     	TST     	R0,R0			;
001200 8B02     	BF      	L001208		;  if (@ptr == 0)
001202 84A7     	MOV.B   	@(#07,R10),R0	;
001204 7001     	ADD     	#01,R0		;
001206 80A7     	MOV.B   	R0,@(#07,R10)	;    entry.m07++;
L001208:							;  }
001208 2DB2     	MOV.L   	R11,@R13		;  *ptr = handle;
00120A 000B     	RTS     				;  return 0;
00120C 200A     	XOR     	R0,R0			;}
L00120E:
00120E E002     	MOV     	#02,R0		;else {
001210 C32B     	TRAPA   	#43			;  TRAP_43(0x02)
001212 000B     	RTS     				;  return -1;
001214 E0FF     	MOV     	#FF,R0		;}
L001216:
001216 E003     	MOV     	#03,R0		;
001218 C32B     	TRAPA   	#43			;TRAP_43(0x03)
00121A 000B     	RTS     				;return -1;
00121C E0FF     	MOV     	#FF,R0		;

TRAP_38:							;(u32 arg1)	//arg1-R11
00121E E060     	MOV     	#60,R0		;
001220 400E     	LDC     	R0,SR			;SH1.SR = 0x00000060;
001222 60B9     	SWAP.W   	R11,R0		;
001224 6A03     	MOV     	R0,R10		;
001226 4019     	SHLR8   	R0			;
001228 C9FF     	AND     	#FF,R0		;
00122A 4008     	SHLL2   	R0			;
00122C DD3F     	MOV.L   	@(#0FC,PC),R13	;
00122E 0CDE     	MOV.L   	@(R0,R13),R12	;u32* entry = task_entry_tbl[arg1[31:24]];
001230 7C02     	ADD     	#02,R12		;
001232 4C1B     	TAS.B   	@R12			;
001234 8B02     	BF      	L00123C		;if (entry.header2 != 0) {
001236 7C01     	ADD     	#01,R12		;
001238 A007     	BRA     	L00124A		;
00123A 2CA0     	MOV.B   	R10,@R12		;  entry.header3 = arg1[23:15];
L00123C:							;  return 0;
00123C 7C01     	ADD     	#01,R12		;} else {
00123E 60C0     	MOV.B   	@R12,R0		;
001240 6AAC     	EXTU.B   	R10,R10		;
001242 3A00     	CMP/EQ 	R0,R10		;
001244 8901     	BT      	L00124A		;
001246 A001     	BRA     	L00124C		;
001248 E0FF     	MOV     	#FF,R0		;
L00124A:							;
00124A E000     	MOV     	#00,R0		;  
L00124C:
00124C 002B     	RTE     				;  return (entry.header3 == arg1[23:15]) ? 0 : -1;
00124E 0009     	NOP     				;}

TRAP_39:							;(u32 arg1)	//arg1-R11
001250 E060     	MOV     	#60,R0		;
001252 400E     	LDC     	R0,SR			;SH1.SR = 0x00000060;
001254 DD35     	MOV.L   	@(#0D4,PC),R13	;
001256 60B9     	SWAP.W   	R11,R0		;
001258 4019     	SHLR8   	R0			;
00125A C9FF     	AND     	#FF,R0		;
00125C 4008     	SHLL2   	R0			;
00125E 0CDE     	MOV.L   	@(R0,R13),R12	;u32* entry = task_entry_tbl[arg1[31:24]];
001260 6AB9     	SWAP.W   	R11,R10		;
001262 84C3     	MOV.B   	@(#03,R12),R0	;
001264 20AA     	XOR     	R10,R0		;
001266 C8FF     	TST     	#FF,R0		;
001268 8B2F     	BF      	L0012CA		;if (entry.header3 ^ arg1[23:15] == 0) {
00126A 5DC3     	MOV.L   	@(#0C,R12),R13	;  u32* ptr = entry.m0C;
00126C 2DD8     	TST     	R13,R13		;
00126E 8928     	BT      	L0012C2		;  if (ptr != 0) {
001270 84D0     	MOV.B   	@(#00,R13),R0	;    u8 n = *(u8*)(ptr+0x00);
001272 80C3     	MOV.B   	R0,@(#03,R12)	;    entry.header3 = n;
001274 5AD3     	MOV.L   	@(#0C,R13),R10	;
001276 1CA3     	MOV.L   	R10,@(#C,R12)	;    entry.m0C = *(u32*)(ptr+0x0C);
001278 EA00     	MOV     	#00,R10		;
00127A 1DA3     	MOV.L   	R10,@(#C,R13)	;    *(u32*)(ptr+0x0C) = 0x00000000;
00127C 4008     	SHLL2   	R0			;
00127E 80D6     	MOV.B   	R0,@(#06,R13)	;    *(u8*)(ptr2+0x06) = n*4;
001280 DA29     	MOV.L   	@(#0A4,PC),R10	;
001282 0CAE     	MOV.L   	@(R0,R10),R12	;    u32* queue = task_queue_tbl[n];
L001284:							;    while (1) {
001284 6AC2     	MOV.L   	@R12,R10		;       u32* node = *queue;
001286 2AA8     	TST     	R10,R10		;
001288 8902     	BT      	L001290		;      if (node == 0) break;
00128A EC10     	MOV     	#10,R12		;
00128C AFFA     	BRA     	L001284		;      queue = node.next;
00128E 3CAC     	ADD     	R10,R12		;    }
L001290:
001290 2CD2     	MOV.L   	R13,@R12		;    *queue = ptr;
001292 200A     	XOR     	R0,R0			;
001294 2F06     	MOV.L   	R0,@-R15		;
001296 2F16     	MOV.L   	R1,@-R15		;
001298 2F26     	MOV.L   	R2,@-R15		;
00129A 2F36     	MOV.L   	R3,@-R15		;
00129C 2F46     	MOV.L   	R4,@-R15		;
00129E 2F56     	MOV.L   	R5,@-R15		;
0012A0 2F66     	MOV.L   	R6,@-R15		;
0012A2 2F76     	MOV.L   	R7,@-R15		;
0012A4 2F86     	MOV.L   	R8,@-R15		;
0012A6 2F96     	MOV.L   	R9,@-R15		;
0012A8 2FA6     	MOV.L   	R10,@-R15		;
0012AA 2FB6     	MOV.L   	R11,@-R15		;
0012AC 2FC6     	MOV.L   	R12,@-R15		;
0012AE 2FD6     	MOV.L   	R13,@-R15		;
0012B0 4F22     	STS.L   	PR,@-R15		;
0012B2 4F13     	STC.L   	GBR,@-R15		;
0012B4 4F02     	STS.L   	MACH,@-R15		;
0012B6 4F12     	STS.L   	MACL,@-R15		;
0012B8 DD19     	MOV.L   	@(#064,PC),R13	;
0012BA 6CD2     	MOV.L   	@R13,R12		;
0012BC 1CF2     	MOV.L   	R15,@(#8,R12)	;
0012BE AEB6     	BRA     	L00102E		;    add_task13_to_queue();
0012C0 0009     	NOP     				;
L0012C2:
0012C2 200A     	XOR     	R0,R0			;  } else {
0012C4 80C3     	MOV.B   	R0,@(#03,R12)	;    *(u8*)(ptr+0x03) = 0x00
0012C6 002B     	RTE     				;    *(u8*)(ptr+0x02) = 0x00
0012C8 80C2     	MOV.B   	R0,@(#02,R12)	;  }
L0012CA:
0012CA E001     	MOV     	#01,R0		;} else {
0012CC C32B     	TRAPA   	#43			;  TRAP_43(0x01)
0012CE 002B     	RTE     				;
0012D0 0009     	NOP     				;}

TRAP_42:							;(u32 arg1)	//arg1-R11
0012D2 E060     	MOV     	#60,R0		;
0012D4 400E     	LDC     	R0,SR			;SH1.SR = 0x00000060;
0012D6 60B9     	SWAP.W   	R11,R0		;
0012D8 6008     	SWAP.B   	R0,R0			;
0012DA C9FF     	AND     	#FF,R0		;
0012DC 4008     	SHLL2   	R0			;
0012DE DD13     	MOV.L   	@(#04C,PC),R13	;
0012E0 0CDE     	MOV.L   	@(R0,R13),R12	;u32* entry = task_entry_tbl[arg1[31:24]];
0012E2 EA02     	MOV     	#02,R10		;
0012E4 3ACC     	ADD     	R12,R10		;
0012E6 4A1B     	TAS.B   	@R10			;
0012E8 8B03     	BF      	L0012F2		;if (entry.header2 == 0) {
0012EA 60B9     	SWAP.W   	R11,R0		;  entry.header2|=0x80;
0012EC 80C3     	MOV.B   	R0,@(#03,R12)	;  entry.header3 = arg1[23:15];
0012EE 002B     	RTE     				;
0012F0 200A     	XOR     	R0,R0			;
L0012F2:
0012F2 84C3     	MOV.B   	@(#03,R12),R0	;} else if (entry.header3 != arg1[23:15]) {
0012F4 6DB9     	SWAP.W   	R11,R13		;
0012F6 6DDC     	EXTU.B   	R13,R13		;
0012F8 30D0     	CMP/EQ 	R13,R0		;
0012FA 8B03     	BF      	L001304		;
0012FC E00A     	MOV     	#0A,R0		;
0012FE C32B     	TRAPA   	#43			;  TRAP_43(0x0A);
001300 002B     	RTE     				;
001302 E000     	MOV     	#00,R0		;
L001304:
001304 DD06     	MOV.L   	@(#018,PC),R13	;} else {
001306 6AD2     	MOV.L   	@R13,R10		;  ptr2 = *(u32*)0x0F0001D4;
L001308:							;  while (1) {
001308 5DC3     	MOV.L   	@(#0C,R12),R13	;    u32* node = entry.m0C;
00130A 2DD8     	TST     	R13,R13		;
00130C 8901     	BT      	L001312		;    if (node == 0) break;
00130E AFFB     	BRA     	L001308		;    entry = node;
001310 6CD3     	MOV     	R13,R12		;  }
L001312:
001312 BEC9     	BRS     	L0010A8		;  u32* task = get_next_entry();
001314 1CA3     	MOV.L   	R10,@(#C,R12)	;  entry.m0C = ptr2;
001316 E006     	MOV     	#06,R0		;
001318 80A1     	MOV.B   	R0,@(#01,R10)	;  *(u8*)(ptr2+0x01) = 0x06;
00131A AEFD     	BRA     	L001118		;  run_task(task);
00131C 1AF2     	MOV.L   	R15,@(#8,R10)	;
00131E 0009     	NOP     				;}
001320 0F0001D4
001324 0F00
001326 08F8
001328 000013EC
00132C 00001464
001330 000014A0
001334 0000
001336 0070
001338 05FF
00133A FF86
00133C 00001358

task_num_tbl:						;L001340
	dc.b 0x01,0x02,0x04,0x0C,0x0D,0x07,0x09,0x08,0x05,0x06,0x0E,0x0B
L00134D:
	dc.b 0x03,0x01,0x02,0x04,0x0C,0x0D,0x07,0x09,0x08,0x05,0x0B,0x03

task_pre_func_tbl:					;001358 
	dc.l 	L0011AA
	dc.l 	L001130
	dc.l 	L00116C
	dc.l 	L0011AA
	dc.l 	L00117C
	dc.l 	L0011AA
	dc.l 	L0011AA

task_stack_tbl:						;001374
	dc.l 	0x00000000					;task 0
	dc.l	0x0F000CB0					;task 1
	dc.l	0x0F000D38					;task 2
	dc.l	0x00000000					;task 3
	dc.l	0x0F000C28					;task 4
	dc.l	0x0F000BA0					;task 5
	dc.l	0x0F000A90					;task 6
	dc.l	0x0F000B18					;task 7
	dc.l	0x0F000DE0					;task 8
	dc.l	0x0F000E88					;task 9
	dc.l	0x00000000					;task A
	dc.l	0x00000000					;task B
	dc.l	0x0F000F10					;task C
	dc.l	0x0F000F98					;task D
	dc.l	0x0F001000					;task E

L0013B0:
0013B0 00000000
0013B4 000063DC
0013B8 00005E68
0013BC 00000000
0013C0 000056F8
0013C4 00004594
0013C8 00002718
0013CC 000077B2
0013D0 0000A010
0013D4 0000BA46
0013D8 00000000
0013DC 00000000
0013E0 00006990
0013E4 00006FC8
0013E8 00001BE0

task_queue_tbl:						;L0013EC
	dc.l 	task_queue_0				;0
	dc.l 	task_queue_1				;1
	dc.l 	task_queue_2				;2
	dc.l 	0x00000000					;3
	dc.l 	task_queue_4				;4
	dc.l 	task_queue_5				;5
	dc.l 	task_queue_6				;6
	dc.l 	task_queue_7				;7
	dc.l 	task_queue_8				;8
	dc.l 	task_queue_9				;9
	dc.l 	0x00000000					;10
	dc.l 	0x00000000					;11
	dc.l 	task_queue_12				;12
	dc.l 	task_queue_13				;13
	dc.l 	task_queue_14				;14

task_args_tbl:						;001428
	dc.l 	0x00000000					;0
	dc.l 	0x0F000020					;1
	dc.l 	0x0F00003C					;2
	dc.l 	0x00000000					;3
	dc.l 	0x0F000078					;4
	dc.l 	0x0F00009C					;5
	dc.l 	0x0F0000CC					;6
	dc.l 	0x0F000100					;7
	dc.l 	0x0F00012C					;8
	dc.l 	0x0F000160					;9
	dc.l 	0x00000000					;10
	dc.l 	0x00000000					;11
	dc.l 	0x0F000198					;12
	dc.l 	0x0F0001B8					;13
	dc.l 	0x00000000					;14

task_entry_tbl:						;L001464
	dc.l 	0x00000000					;
	dc.l 	task_entry_0				;
	dc.l 	task_entry_1				;
	dc.l 	task_entry_2				;
	dc.l 	task_entry_3				;
	dc.l 	task_entry_4				;
	dc.l 	task_entry_5				;
	dc.l 	task_entry_6				;
	dc.l 	task_entry_7				;
	dc.l 	task_entry_8				;
	dc.l 	task_entry_12				;
	dc.l 	task_entry_9				;
	dc.l 	task_entry_10				;
	dc.l 	task_entry_11				;
	dc.l 	task_entry_12				;

task_map_tbl:						;L0014A0
	dc.l 	0x00000000					;func 0
	dc.l 	0x000014D8					;func 1
	dc.l 	0x0000154C					;func 2
	dc.l 	0x00001960					;func 3
	dc.l 	0x000015C0					;func 4
	dc.l 	0x00001634					;func 5
	dc.l 	task_map_6					;func 6
	dc.l 	0x0000171C					;func 7
	dc.l 	0x00001790					;func 8
	dc.l 	0x00001804					;func 9
	dc.l 	0x00001960					;func A
	dc.l 	0x00001960					;func B
	dc.l 	0x00001878					;func C
	dc.l 	0x000018EC					;func D

L0014D8:
0014D8 0000
0014DA 0000
0014DC 0000
0014DE 0000
0014E0 0000
0014E2 0000
0014E4 0000
0014E6 0000
0014E8 0000
0014EA 0000
0014EC 0F000020
0014F0 0000
0014F2 0000
0014F4 0000
0014F6 0000
0014F8 0000
0014FA 0000
0014FC 0000
0014FE 0000
001500 0000
001502 0000
001504 0000
001506 0000
001508 0000
00150A 0000
00150C 0000
00150E 0000
001510 0000
001512 0000
001514 0000
001516 0000
001518 0000
00151A 0000
00151C 0000
00151E 0000
001520 0000
001522 0000
001524 0000
001526 0000
001528 0000
00152A 0000
00152C 0000
00152E 0000
001530 0000
001532 0000
001534 0000
001536 0000
001538 0000
00153A 0000
00153C 0000
00153E 0000
001540 0000
001542 0000
001544 0F000020
001548 0F000024
L00154C:
00154C 0000
00154E 0000
001550 0000
001552 0000
001554 0000
001556 0000
001558 0F00003C
00155C 0000
00155E 0000
001560 0000
001562 0000
001564 0000
001566 0000
001568 0000
00156A 0000
00156C 0000
00156E 0000
001570 0000
001572 0000
001574 0000
001576 0000
001578 0000
00157A 0000
00157C 0000
00157E 0000
001580 0000
001582 0000
001584 0F000040
001588 0F000044
00158C 0000
00158E 0000
001590 0000
001592 0000
001594 0000
001596 0000
001598 0000
00159A 0000
00159C 0000
00159E 0000
0015A0 0000
0015A2 0000
0015A4 0000
0015A6 0000
0015A8 0000
0015AA 0000
0015AC 0000
0015AE 0000
0015B0 0000
0015B2 0000
0015B4 0000
0015B6 0000
0015B8 0F00003C
0015BC 0F000048
L0015C0:
0015C0 0000
0015C2 0000
0015C4 0000
0015C6 0000
0015C8 0000
0015CA 0000
0015CC 0F000078
0015D0 0000
0015D2 0000
0015D4 0F00007C
0015D8 0000
0015DA 0000
0015DC 0000
0015DE 0000
0015E0 0000
0015E2 0000
0015E4 0000
0015E6 0000
0015E8 0000
0015EA 0000
0015EC 0000
0015EE 0000
0015F0 0000
0015F2 0000
0015F4 0000     	
0015F6 0000     	
0015F8 0000     	
0015FA 0000     	
0015FC 0F000080     	
001600 0000     	
001602 0000     	
001604 0000     	
001606 0000     	
001608 0000     	
00160A 0000     	
00160C 0000     	
00160E 0000     	
001610 0000     	
001612 0000     	
001614 0000     	
001616 0000     	
001618 0000     	
00161A 0000     	
00161C 0000     	
00161E 0000     	
001620 0000     	
001622 0000     	
001624 0000     	
001626 0000     	
001628 0000     	
00162A 0000     	
00162C 0F000078
001630 0F000084
L001634:
001634 0000     	
001636 0000     	
001638 0F0000AC
00163C 0000     	
00163E 0000     	
001640 0000     	
001642 0000     	
001644 0F0000A8
001648 0000     	
00164A 0000     	
00164C 0F0000A4
001650 0000     	
001652 0000     	
001654 0000     	
001656 0000     	
001658 0000     	
00165A 0000     	
00165C 0000     	
00165E 0000     	
001660 0000     	
001662 0000     	
001664 0000     	
001666 0000     	
001668 0000     	
00166A 0000     	
00166C 0F00009C
001670 0F0000B0     	
001674 0000     	
001676 0000     	
001678 0000     	
00167A 0000     	
00167C 0F0000A0     	
001680 0000     	
001682 0000     	
001684 0000     	
001686 0000     	
001688 0000     	
00168A 0000     	
00168C 0000     	
00168E 0000     	
001690 0000     	
001692 0000     	
001694 0000     	
001696 0000     	
001698 0000     	
00169A 0000     	
00169C 0000     	
00169E 0000     	
0016A0 0F00009C
0016A4 0F0000B4

task_map_6:						;L0016A8
0016A8 00000000     	
0016AC 00000000     	
0016B0 00000000     	
0016B4 0F0000D0     	
0016B8 0F0000D4
0016BC 0F0000D8
0016C0 0F0000DC
0016C4 0F0000E0     	
0016C8 00000000     	
0016CC 00000000     	
0016D0 00000000     	
0016D4 00000000     	
0016D8 00000000     	
0016DC 00000000     	
0016E0 00000000					;+0x38
0016E4 0F0000E4
0016E8 00000000	
0016EC 0F0000CC
0016F0 00000000     	
0016F4 00000000     	
0016F8 00000000     	
0016FC 00000000     	
001700 00000000     	
001704 00000000     	
001708 00000000     	
00170C 00000000     	
001710 00000000     	
001714 0F0000CC
001718 0F0000E8

L00171C:
00171C 0000     	
00171E 0000     	
001720 0000     	
001722 0000     	
001724 0000     	
001726 0000     	
001728 0F000100     	
00172C 0F000104
001730 0000     	
001732 0000     	
001734 0F000108
001738 0F00010C
00173C 0000     	
00173E 0000     	
001740 0000     	
001742 0000     	
001744 0000     	
001746 0000     	
001748 0000     	
00174A 0000     	
00174C 0000     	
00174E 0000     	
001750 0000     	
001752 0000     	
001754 0000     	
001756 0000     	
001758 0F000110     	
00175C 0000     	
00175E 0000     	
001760 0000     	
001762 0000     	
001764 0000     	
001766 0000     	
001768 0000     	
00176A 0000     	
00176C 0000     	
00176E 0000     	
001770 0000     	
001772 0000     	
001774 0000     	
001776 0000     	
001778 0000     	
00177A 0000     	
00177C 0000     	
00177E 0000     	
001780 0000     	
001782 0000     	
001784 0000     	
001786 0000     	
001788 0F000100     	
00178C 0F000114
L001790:
001790 0000     	
001792 0000     	
001794 0000     	
001796 0000     	
001798 0000     	
00179A 0000     	
00179C 0000     	
00179E 0000     	
0017A0 0000     	
0017A2 0000     	
0017A4 0000     	
0017A6 0000     	
0017A8 0000     	
0017AA 0000     	
0017AC 0000     	
0017AE 0000     	
0017B0 0F00013C
0017B4 0F000140     	
0017B8 0000     	
0017BA 0000     	
0017BC 0000     	
0017BE 0000     	
0017C0 0000     	
0017C2 0000     	
0017C4 0000     	
0017C6 0000     	
0017C8 0000     	
0017CA 0000     	
0017CC 0F000144
0017D0 0000     	
0017D2 0000     	
0017D4 0000     	
0017D6 0000     	
0017D8 0000     	
0017DA 0000     	
0017DC 0000     	
0017DE 0000     	
0017E0 0000     	
0017E2 0000     	
0017E4 0000     	
0017E6 0000     	
0017E8 0000     	
0017EA 0000     	
0017EC 0F00012C
0017F0 0F000130     	
0017F4 0F000138
0017F8 0F000134
0017FC 0F00012C
001800 0F000148
L001804:
001804 0000     	
001806 0000     	
001808 0000     	
00180A 0000     	
00180C 0000     	
00180E 0000     	
001810 0000     	
001812 0000     	
001814 0000     	
001816 0000     	
001818 0000     	
00181A 0000     	
00181C 0000     	
00181E 0000     	
001820 0000     	
001822 0000     	
001824 0000     	
001826 0000     	
001828 0F000164
00182C 0000     	
00182E 0000     	
001830 0000     	
001832 0000     	
001834 0000     	
001836 0000     	
001838 0000     	
00183A 0000     	
00183C 0000     	
00183E 0000     	
001840 0F000160     	
001844 0000     	
001846 0000     	
001848 0000     	
00184A 0000     	
00184C 0000     	
00184E 0000     	
001850 0000     	
001852 0000     	
001854 0000     	
001856 0000     	
001858 0000     	
00185A 0000     	
00185C 0000     	
00185E 0000     	
001860 0000     	
001862 0000     	
001864 0000     	
001866 0000     	
001868 0000     	
00186A 0000     	
00186C 0000     	
00186E 0000     	
001870 0F000160     	
001874 0F000168
L001878:
001878 0000     	
00187A 0000     	
00187C 0000     	
00187E 0000     	
001880 0000     	
001882 0000     	
001884 0F000198
001888 0000     	
00188A 0000     	
00188C 0000     	
00188E 0000     	
001890 0000     	
001892 0000     	
001894 0000     	
001896 0000     	
001898 0000     	
00189A 0000     	
00189C 0000     	
00189E 0000     	
0018A0 0000     	
0018A2 0000     	
0018A4 0000     	
0018A6 0000     	
0018A8 0000     	
0018AA 0000     	
0018AC 0000     	
0018AE 0000     	
0018B0 0000     	
0018B2 0000     	
0018B4 0F00019C
0018B8 0000     	
0018BA 0000     	
0018BC 0000     	
0018BE 0000     	
0018C0 0000     	
0018C2 0000     	
0018C4 0000     	
0018C6 0000     	
0018C8 0000     	
0018CA 0000     	
0018CC 0000     	
0018CE 0000     	
0018D0 0000     	
0018D2 0000     	
0018D4 0000     	
0018D6 0000     	
0018D8 0000     	
0018DA 0000     	
0018DC 0000     	
0018DE 0000     	
0018E0 0000     	
0018E2 0000     	
0018E4 0F000198
0018E8 0F0001A0
L0018EC:
0018EC 0000     	
0018EE 0000     	
0018F0 0000     	
0018F2 0000     	
0018F4 0000     	
0018F6 0000     	
0018F8 0000     	
0018FA 0000     	
0018FC 0000     	
0018FE 0000     	
001900 0000     	
001902 0000     	
001904 0000     	
001906 0000     	
001908 0000     	
00190A 0000     	
00190C 0000     	
00190E 0000     	
001910 0000     	
001912 0000     	
001914 0000     	
001916 0000     	
001918 0000     	
00191A 0000     	
00191C 0000     	
00191E 0000     	
001920 0000     	
001922 0000     	
001924 0000     	
001926 0000     	
001928 0F0001B8
00192C 0000     	
00192E 0000     	
001930 0000     	
001932 0000     	
001934 0000     	
001936 0000     	
001938 0000     	
00193A 0000     	
00193C 0000     	
00193E 0000     	
001940 0000     	
001942 0000     	
001944 0000     	
001946 0000     	
001948 0000     	
00194A 0000     	
00194C 0000     	
00194E 0000     	
001950 0000     	
001952 0000     	
001954 0000     	
001956 0000     	
001958 0F0001B8
00195C 0F0001BC
L001960:
001960 0000     	
001962 0000     	
001964 0000     	
001966 0000     	
001968 0000     	
00196A 0000     	
00196C 0000     	
00196E 0000     	
001970 0000     	
001972 0000     	
001974 0000     	
001976 0000     	
001978 0000     	
00197A 0000     	
00197C 0000     	
00197E 0000     	
001980 0000     	
001982 0000     	
001984 0000     	
001986 0000     	
001988 0000     	
00198A 0000     	
00198C 0000     	
00198E 0000     	
001990 0000     	
001992 0000     	
001994 0000     	
001996 0000     	
001998 0000     	
00199A 0000     	
00199C 0000     	
00199E 0000     	
0019A0 0000     	
0019A2 0000     	
0019A4 0000     	
0019A6 0000     	
0019A8 0000     	
0019AA 0000     	
0019AC 0000     	
0019AE 0000     	
0019B0 0000     	
0019B2 0000     	
0019B4 0000     	
0019B6 0000     	
0019B8 0000     	
0019BA 0000     	
0019BC 0000     	
0019BE 0000     	
0019C0 0000     	
0019C2 0000     	
0019C4 0000     	
0019C6 0000     	
0019C8 0000     	
0019CA 0000     	
0019CC 00000000     	
0019D0 00000000     	

L0019D4:							;_init()
0019D4 4F22     	STS.L   	PR,@-R15		;
0019D6 B07E     	BRS     	L001AD6		;L001AD6_init()
0019D8 0009     	NOP     				;
0019DA D16B     	MOV.L   	@(#1AC,PC),R1	;u32* ptr = 0x0F000208;
0019DC D26B     	MOV.L   	@(#1AC,PC),R2	;
L0019DE:							;do {
0019DE 2102     	MOV.L   	R0,@R1		;  *ptr = 0x00000000;
0019E0 7104     	ADD     	#04,R1		;  ptr++;
0019E2 3122     	CMP/HS 	R2,R1			;
0019E4 8BFB     	BF      	L0019DE		;} while (ptr < 0x0F00021c);
0019E6 4F26     	LDS.L   	@R15+,PR		;
0019E8 000B     	RTS     				;
0019EA 0009     	NOP     				;

L0019EC:							;
0019EC 4F22     	STS.L   	PR,@-R15		;
0019EE B07E     	BRS     	L001AEE		;L001AEE();
0019F0 0009     	NOP     				;
0019F2 D165     	MOV.L   	@(#194,PC),R1	;
0019F4 5012     	MOV.L   	@(#08,R1),R0	;
0019F6 2008     	TST     	R0,R0			;
0019F8 8919     	BT      	L001A2E		;if (*(u32*)(0x0F000208+0x08) != 0 &&
0019FA 5011     	MOV.L   	@(#04,R1),R0	;
0019FC 2008     	TST     	R0,R0			;
0019FE 8916     	BT      	L001A2E		;    *(u32*)(0x0F000208+0x04) != 0 &&
001A00 D264     	MOV.L   	@(#190,PC),R2	;
001A02 6222     	MOV.L   	@R2,R2		;
001A04 4218     	SHLL8   	R2			;
001A06 4219     	SHLR8   	R2			;
001A08 3026     	CMP/HI 	R2,R0			;
001A0A 8910     	BT      	L001A2E		;    *(u32*)(0x0F000208+0x04) <= (*(u32*)090001FC & 0x00FFFFFF))
001A0C D060     	MOV.L   	@(#180,PC),R0	;{
001A0E 1103     	MOV.L   	R0,@(#C,R1)		;  *(u32*)(0x0F000208+0x0C) = 0x09075848;
001A10 5012     	MOV.L   	@(#08,R1),R0	;
001A12 1104     	MOV.L   	R0,@(#10,R1)	;  *(u32*)(0x0F000208+0x10) = *(u32*)(0x0F000208+0x08);
001A14 6203     	MOV     	R0,R2			;
001A16 4219     	SHLR8   	R2			;
001A18 4209     	SHLR2   	R2			;
001A1A 4201     	SHLR    	R2			;  u32 temp = *(u32*)(0x0F000208+0x08) >> 11;
001A1C 930B     	MOV.W   	@(#016,PC),R3	;
001A1E 2038     	TST     	R3,R0			;
001A20 8900     	BT      	L001A24		;
001A22 7201     	ADD     	#01,R2		;  if ((*(u32*)(0x0F000208+0x08) & 0x000007FF) != 0) temp++;
L001A24:
001A24 6023     	MOV     	R2,R0			;
001A26 8010     	MOV.B   	R0,@(#00,R1)	;  *(u8*)(0x0F000208+0x00) = temp;
L001A28:
001A28 4F26     	LDS.L   	@R15+,PR		;
001A2A 000B     	RTS     				;  return temp;
001A2C 0009     	NOP     				;} else {
L001A2E:
001A2E B052     	BRS     	L001AD6		;  L001AD6();
001A30 0009     	NOP     				;
001A32 AFF9     	BRA     	L001A28		;  return 0; 
001A34 E000     	MOV     	#00,R0		;}
001A36 07FF

001A38 2F06     	MOV.L   	R0,@-R15		;
001A3A DB62     	MOV.L   	@(#188,PC),R11	;
001A3C C32A     	TRAPA   	#42			;TRAP_42(0x0B070000);
001A3E 69F6     	MOV.L   	@R15+,R9		;
001A40 D855     	MOV.L   	@(#154,PC),R8	;
001A42 289E     	MULU.W  	R9,R8			;
001A44 091A     	STS     	MACL, R9		;
001A46 D756     	MOV.L   	@(#158,PC),R7	;
001A48 379C     	ADD     	R9,R7			;u8* block_ptr = 0x09000230 + (R9*2352);
001A4A E118     	MOV     	#18,R1		;
001A4C 5073     	MOV.L   	@(#0C,R7),R0	;
001A4E 600C     	EXTU.B   	R0,R0			;
001A50 8801     	CMP/EQ  	#01,R0		;
001A52 8B00     	BF      	L001A56		;
001A54 E110     	MOV     	#10,R1		;
L001A56:
001A56 317C     	ADD     	R7,R1			;u8* ptr = block_ptr[15] == 0x01 ? block_ptr+16 : block_ptr+24;
001A58 D74B     	MOV.L   	@(#12C,PC),R7	;
001A5A 933B     	MOV.W   	@(#076,PC),R3	;
001A5C 5474     	MOV.L   	@(#10,R7),R4	;
001A5E 3346     	CMP/HI 	R4,R3			;
001A60 8B00     	BF      	L001A64		;
001A62 6343     	MOV     	R4,R3			;int len = *(u32*)(0x0F000208+0x10) > 2048 ? 2048 : *(u32*)(0x0F000208+0x10);
L001A64:
001A64 5273     	MOV.L   	@(#0C,R7),R2	;u8* ptr2 = *(u32*)(0x0F000208+0x0C);
001A66 6033     	MOV     	R3,R0			;
001A68 302C     	ADD     	R2,R0			;
001A6A 1703     	MOV.L   	R0,@(#C,R7)		;*(u32*)(0x0F000208+0x0C) = ptr2 + len;
001A6C 3438     	SUB     	R3,R4			;
001A6E 1744     	MOV.L   	R4,@(#10,R7)	;*(u32*)(0x0F000208+0x10) = 2048 - len;
001A70 331C     	ADD     	R1,R3			;u32 end = ptr + len;
L001A72:
001A72 6016     	MOV.L   	@R1+,R0		;do {
001A74 2202     	MOV.L   	R0,@R2		;*((u32*)ptr2) = *((u32*)ptr);
001A76 7204     	ADD     	#04,R2		;ptr+=4;
001A78 3132     	CMP/HS 	R3,R1			;ptr2+=4;
001A7A 8BFA     	BF      	L001A72		;} while (ptr < end);
001A7C DB51     	MOV.L   	@(#144,PC),R11	;
001A7E C327     	TRAPA   	#39			;TRAP_39(0x0B070000)
001A80 D441     	MOV.L   	@(#104,PC),R4	;
001A82 5044     	MOV.L   	@(#10,R4),R0	;
001A84 2008     	TST     	R0,R0			;
001A86 8B23     	BF      	L001AD0		;if (*(u32*)(0x0F000208+0x10) != 0) return;
001A88 4F22     	STS.L   	PR,@-R15		;
001A8A 4F03     	STC.L   	SR,@-R15		;
001A8C D045     	MOV.L   	@(#114,PC),R0	;
001A8E 400E     	LDC     	R0,SR			;SH1.SR = 0x000000F0;
001A90 D13F     	MOV.L   	@(#0FC,PC),R1	;R1 = 0x09075848;
001A92 D23A     	MOV.L   	@(#0E8,PC),R2	;R2 = 0x09075800;
001A94 5342     	MOV.L   	@(#08,R4),R3	;R3 = *(u32*)(0x0F000208+0x08);
001A96 D041     	MOV.L   	@(#104,PC),R0	;
001A98 400B     	JSR     	@R0			;err = L009904();
001A9A 0009     	NOP     				;
001A9C 2008     	TST     	R0,R0			;
001A9E 8B04     	BF      	L001AAA		;
001AA0 D141     	MOV.L   	@(#104,PC),R1	;
001AA2 6010     	MOV.B   	@R1,R0		;
001AA4 E100     	MOV     	#00,R1		;
001AA6 3016     	CMP/HI 	R1,R0			;
001AA8 8903     	BT      	L001AB2		;if (err != 0 || *(u8*)0x09075844 <= 0x00) {
L001AAA:
001AAA B014     	BRS     	L001AD6		;  L001AD6();
001AAC 0009     	NOP     				;
001AAE A00C     	BRA     	L001ACA		;
001AB0 0009     	NOP     				;}
L001AB2:
001AB2 D13D     	MOV.L   	@(#0F4,PC),R1	;else {
001AB4 D23D     	MOV.L   	@(#0F4,PC),R2	;
001AB6 6010     	MOV.B   	@R1,R0		;
001AB8 2200     	MOV.B   	R0,@R2		;  *(u8*)0x0F0002FF = *(u8*)0x09075844;
001ABA D140     	MOV.L   	@(#100,PC),R1	;
001ABC 4127     	LDC.L   	@R1+,VBR		;  VBR = *(u32*)0x09075800;
001ABE D13E     	MOV.L   	@(#0F8,PC),R1	;
001AC0 6012     	MOV.L   	@R1,R0		;  void* func = *(u32*)0x0907583C;
001AC2 2008     	TST     	R0,R0			;
001AC4 8901     	BT      	L001ACA		;
001AC6 400B     	JSR     	@R0			;  if (func) func();
001AC8 0009     	NOP     				;}
L001ACA:
001ACA E000     	MOV     	#00,R0		;return 0;
001ACC 4F07     	LDC.L   	@R15+,SR		;
001ACE 4F26     	LDS.L   	@R15+,PR		;
L001AD0:
001AD0 000B     	RTS     				;
001AD2 0009     	NOP     				;
001AD4 0800

L001AD6:							;
001AD6 E000     	MOV     	#00,R0		;
001AD8 402E     	LDC     	R0,VBR		;SH1.VBR = 0x00000000;
001ADA D128     	MOV.L   	@(#0A0,PC),R1	;u32* ptr = 0x09075800;
001ADC D229     	MOV.L   	@(#0A4,PC),R2	;
L001ADE:							;do {
001ADE 2102     	MOV.L   	R0,@R1		;*ptr = 0x00000000;
001AE0 7104     	ADD     	#04,R1		;ptr++;
001AE2 3122     	CMP/HS 	R2,R1			;
001AE4 8BFB     	BF      	L001ADE		;} while (ptr < 0x09075848);
001AE6 D131     	MOV.L   	@(#0C4,PC),R1	;
001AE8 2100     	MOV.B   	R0,@R1		;*(u8*)0x0F0002FF = 0x00;
001AEA 000B     	RTS     				;
001AEC 0009     	NOP     				;

L001AEE:							;
001AEE E000     	MOV     	#00,R0		;
001AF0 402E     	LDC     	R0,VBR		;SH1.VBR = 0x00000000;
001AF2 D122     	MOV.L   	@(#088,PC),R1	;u32* ptr = 0x09075800;
001AF4 D222     	MOV.L   	@(#088,PC),R2	;
L001AF6:							;do {
001AF6 2102     	MOV.L   	R0,@R1		;*ptr = 0x00000000;
001AF8 7104     	ADD     	#04,R1		;ptr++;
001AFA 3122     	CMP/HS 	R2,R1			;
001AFC 8BFB     	BF      	L001AF6		;} while (ptr < 0x09075848);
001AFE D12B     	MOV.L   	@(#0AC,PC),R1	;
001B00 2100     	MOV.B   	R0,@R1		;*(u8*)0x0F0002FF = 0x00;
001B02 000B     	RTS     				;
001B04 0009     	NOP     				;

L001B06:							;
001B06 4F22     	STS.L   	PR,@-R15		;
001B08 D133     	MOV.L   	@(#0CC,PC),R1	;
001B0A 6316     	MOV.L   	@R1+,R3		;
001B0C 2338     	TST     	R3,R3			;
001B0E 891C     	BT      	L001B4A		;
001B10 D032     	MOV.L   	@(#0C8,PC),R0	;
001B12 3306     	CMP/HI 	R0,R3			;
001B14 8919     	BT      	#032			;
001B16 D22C     	MOV.L   	@(#0B0,PC),R2	;
001B18 D020     	MOV.L   	@(#080,PC),R0	;
001B1A 400B     	JSR     	@R0			;
001B1C 0009     	NOP     				;
001B1E 2008     	TST     	R0,R0			;
001B20 8B13     	BF      	#026			;
001B22 D129     	MOV.L   	@(#0A4,PC),R1	;
001B24 8410     	MOV.B   	@(#00,R1),R0	;
001B26 D222     	MOV.L   	@(#088,PC),R2	;
001B28 2200     	MOV.B   	R0,@R2		;
001B2A 8411     	MOV.B   	@(#01,R1),R0	;
001B2C D229     	MOV.L   	@(#0A4,PC),R2	;
001B2E 6320     	MOV.B   	@R2,R3		;
001B30 3306     	CMP/HI 	R0,R3			;
001B32 8B05     	BF      	#00A			;
001B34 D026     	MOV.L   	@(#098,PC),R0	;
001B36 6002     	MOV.L   	@R0,R0		;
001B38 2008     	TST     	R0,R0			;
001B3A 8901     	BT      	#002			;
001B3C 400B     	JSR     	@R0			;
001B3E 0009     	NOP     				;
001B40 5011     	MOV.L   	@(#04,R1),R0	;
001B42 400B     	JSR     	@R0			;
001B44 0009     	NOP     				;
001B46 A006     	BRA     	L001B56		;
001B48 0009     	NOP     				;
L001B4A:
001B4A B008     	BRS     	#0010			;
001B4C 0009     	NOP     				;
001B4E A003     	BRA     	#0006			;
001B50 E0FF     	MOV     	#FF,R0		;
001B52 B004     	BRS     	#0008			;
001B54 0009     	NOP     				;
L001B56:
001B56 E000     	MOV     	#00,R0		;
001B58 4F26     	LDS.L   	@R15+,PR		;
001B5A 000B     	RTS     				;
001B5C 0009     	NOP     				;

001B5E D11A     	MOV.L   	@(#068,PC),R1	;
001B60 D21A     	MOV.L   	@(#068,PC),R2	;
001B62 E000     	MOV     	#00,R0		;
001B64 2102     	MOV.L   	R0,@R1		;
001B66 7104     	ADD     	#04,R1		;
001B68 3122     	CMP/HS 	R2,R1			;
001B6A 8BFB     	BF      	#1F6			;
001B6C D110     	MOV.L   	@(#040,PC),R1	;
001B6E E000     	MOV     	#00,R0		;
001B70 2100     	MOV.B   	R0,@R1		;
001B72 D110     	MOV.L   	@(#040,PC),R1	;
001B74 2101     	MOV.W   	R0,@R1		;
001B76 000B     	RTS     				;
001B78 0009     	NOP     				;
001B7A 0009     	NOP     				;
001B7C 09075800
001B80 09075848
001B84 0907
001B86 7C00
001B88 0F000208
001B8C 0F00021C
001B90 09075848
001B94 090001FC
001B98 00000930
001B9C 00009904
001BA0 09000230
001BA4 000000F0
001BA8 09075844
001BAC 0F0002FF
001BB0 0F00
001BB2 02FD
001BB4 0F00
001BB6 07AC
001BB8 0907583C
001BBC 09075800
001BC0 0000
001BC2 1464
001BC4 0B070000
001BC8 0907
001BCA B000
001BCC 0908
001BCE 0000
001BD0 0907
001BD2 5840
001BD4 0907
001BD6 5845
001BD8 0E000000
001BDC 0000
001BDE 5000

L001BE0:
001BE0 D003     	MOV.L   	@(#00C,PC),R0	;
001BE2 400B     	JSR     	@R0			;L001EFC();
001BE4 0009     	NOP     				;
L001BE6:							;
001BE6 0009     	NOP     				;
001BE8 0009     	NOP     				;
001BEA 0009     	NOP     				;
001BEC AFFB     	BRA     	L001BE6		;
001BEE 0009     	NOP     				;
001BF0 00001EFC
001BF4 05FF
001BF6 FFC2

TRAP_43:
001BF8 0009     	NOP     				;
001BFA 002B     	RTE     				;
001BFC 0009     	NOP     				;

TRAP_44:
001BFE 0009     	NOP     				;
001C00 002B     	RTE     				;
001C02 0009     	NOP     				;

L001C04:							;_init()
001C04 D1B6     	MOV.L   	@(#2D8,PC),R1	;
001C06 411E     	LDC     	R1,GBR		;
001C08 E001     	MOV     	#01,R0		;
001C0A CDEF     	AND.B   	#EF,@(R0,GBR)	;SH1.ITU.TSNC&=0xEF;
001C0C E002     	MOV     	#02,R0		;
001C0E CDEF     	AND.B   	#EF,@(R0,GBR)	;SH1.ITU.TMDR&=0xEF;
001C10 E003     	MOV     	#03,R0		;
001C12 CDF3     	AND.B   	#F3,@(R0,GBR)	;SH1.ITU.TFCR&=0xF3;
001C14 D3B6     	MOV.L   	@(#2D8,PC),R3	;
001C16 200A     	XOR     	R0,R0			;
001C18 2302     	MOV.L   	R0,@R3		;*(u32*)0x0F000220 = 0x00000000;
001C1A 1301     	MOV.L   	R0,@(#4,R3)		;*(u32*)0x0F000224 = 0x00000000;
001C1C 1302     	MOV.L   	R0,@(#8,R3)		;*(u32*)0x0F000228 = 0x00000000;
001C1E 1303     	MOV.L   	R0,@(#C,R3)		;*(u32*)0x0F00022C = 0x00000000;
001C20 1304     	MOV.L   	R0,@(#10,R3)	;*(u32*)0x0F000230 = 0x00000000;
001C22 1305     	MOV.L   	R0,@(#14,R3)	;*(u32*)0x0F000234 = 0x00000000;
001C24 1306     	MOV.L   	R0,@(#18,R3)	;*(u32*)0x0F000238 = 0x00000000;
001C26 1307     	MOV.L   	R0,@(#1C,R3)	;*(u32*)0x0F00023C = 0x00000000;
001C28 D3B2     	MOV.L   	@(#2C8,PC),R3	;
001C2A 2302     	MOV.L   	R0,@R3		;*(u32*)0x0F000240 = 0x00000000;
001C2C 1301     	MOV.L   	R0,@(#4,R3)		;*(u32*)0x0F000244 = 0x00000000;
001C2E D3AE     	MOV.L   	@(#2B8,PC),R3	;
001C30 2302     	MOV.L   	R0,@R3		;timer_high_cnt = 0x00000000;
001C32 E003     	MOV     	#03,R0		;
001C34 C032     	MOV.B   	R0,@(#032,GBR)	;SH1.ITU.TCR4 = 0x03;
001C36 E000     	MOV     	#00,R0		;
001C38 C033     	MOV.B   	R0,@(#033,GBR)	;SH1.ITU.TIOR4 = 0x00;
001C3A E004     	MOV     	#04,R0		;
001C3C C034     	MOV.B   	R0,@(#034,GBR)	;SH1.ITU.TIER4 = 0x04;
001C3E E000     	MOV     	#00,R0		;
001C40 CF10     	OR .B   	#10,@(R0,GBR)	;SH1.ITU.TSTR|=0x10;
001C42 000B     	RTS     				;
001C44 0009     	NOP     				;

001C46 D1A6     	MOV.L   	@(#298,PC),R1	;
001C48 411E     	LDC     	R1,GBR		;
001C4A E000     	MOV     	#00,R0		;
001C4C C033     	MOV.B   	R0,@(#033,GBR)	;SH1.ITU.TIOR4 = 0x00;
001C4E E004     	MOV     	#04,R0		;
001C50 C034     	MOV.B   	R0,@(#034,GBR)	;SH1.ITU.TIER4 = 0x04;
001C52 D3A7     	MOV.L   	@(#29C,PC),R3	;
001C54 200A     	XOR     	R0,R0			;
001C56 2302     	MOV.L   	R0,@R3		;*(u32*)(0x0F000220+0x00) = 0x00000000;
001C58 1301     	MOV.L   	R0,@(#4,R3)		;*(u32*)(0x0F000220+0x04) = 0x00000000;
001C5A 1302     	MOV.L   	R0,@(#8,R3)		;*(u32*)(0x0F000220+0x08) = 0x00000000;
001C5C 1303     	MOV.L   	R0,@(#C,R3)		;*(u32*)(0x0F000220+0x0C) = 0x00000000;
001C5E 1304     	MOV.L   	R0,@(#10,R3)	;*(u32*)(0x0F000220+0x10) = 0x00000000;
001C60 1305     	MOV.L   	R0,@(#14,R3)	;*(u32*)(0x0F000220+0x14) = 0x00000000;
001C62 1306     	MOV.L   	R0,@(#18,R3)	;*(u32*)(0x0F000220+0x18) = 0x00000000;
001C64 1307     	MOV.L   	R0,@(#1C,R3)	;*(u32*)(0x0F000220+0x1C) = 0x00000000;
001C66 D3A3     	MOV.L   	@(#28C,PC),R3	;
001C68 2302     	MOV.L   	R0,@R3		;*(u32*)(0x0F000240+0x00) = 0x00000000;
001C6A 1301     	MOV.L   	R0,@(#4,R3)		;*(u32*)(0x0F000240+0x04) = 0x00000000;
001C6C 000B     	RTS     				;
001C6E 0009     	NOP     				;

timer_ovf_int:						;ITU4 OVI4 handler
001C70 2F06     	MOV.L   	R0,@-R15		;
001C72 4F13     	STC.L   	GBR,@-R15		;
001C74 D09B     	MOV.L   	@(#26C,PC),R0	;
001C76 401E     	LDC     	R0,GBR		;
001C78 E003     	MOV     	#03,R0		;
001C7A CDFB     	AND.B   	#FB,@(R0,GBR)	;SH1.ITU.TSR4&=0xFB;
001C7C D09A     	MOV.L   	@(#268,PC),R0	;
001C7E 401E     	LDC     	R0,GBR		;
001C80 C600     	MOV.L   	@(#000,GBR),R0	;
001C82 7001     	ADD     	#01,R0		;
001C84 C200     	MOV.L   	R0,@(#000,GBR)	;timer_high_cnt++;
001C86 4F17     	LDC.L   	@R15+,GBR		;
001C88 60F6     	MOV.L   	@R15+,R0		;
001C8A 002B     	RTE     				;
001C8C 0009     	NOP     				;
001C8E 0009     	NOP     				;

timer_compa_int:						;ITU4 IMIA4 handler
001C90 2F06     	MOV.L   	R0,@-R15		;
001C92 2F16     	MOV.L   	R1,@-R15		;
001C94 2F26     	MOV.L   	R2,@-R15		;
001C96 4F13     	STC.L   	GBR,@-R15		;
001C98 D092     	MOV.L   	@(#248,PC),R0	;
001C9A 401E     	LDC     	R0,GBR		;
001C9C E003     	MOV     	#03,R0		;
001C9E CDFE     	AND.B   	#FE,@(R0,GBR)	;SH1.ITU.TSR4&=0xFE;
001CA0 D291     	MOV.L   	@(#244,PC),R2	;
001CA2 6122     	MOV.L   	@R2,R1		;
001CA4 4118     	SHLL8   	R1			;u32 temp = timer_high_cnt<<8;
001CA6 C503     	MOV.W   	@(#006,GBR),R0	;
001CA8 4019     	SHLR8   	R0			;
001CAA 600C     	EXTU.B   	R0,R0			;
001CAC 310C     	ADD     	R0,R1			;temp+= GRA4 >> 8;
001CAE D290     	MOV.L   	@(#240,PC),R2	;
001CB0 5021     	MOV.L   	@(#04,R2),R0	;u32 temp2 = *(u32*)(0x0F000220+0x04);
001CB2 3018     	SUB     	R1,R0			;temp2-=temp;
001CB4 4015     	CMP/PL  	R0			;
001CB6 8938     	BT      	L001D2A		;if (temp2 >= 0) return;
001CB8 4F17     	LDC.L   	@R15+,GBR		;
001CBA 2F36     	MOV.L   	R3,@-R15		;
001CBC 2F46     	MOV.L   	R4,@-R15		;
001CBE 2F56     	MOV.L   	R5,@-R15		;
001CC0 2F66     	MOV.L   	R6,@-R15		;
001CC2 2F76     	MOV.L   	R7,@-R15		;
001CC4 2F86     	MOV.L   	R8,@-R15		;
001CC6 2F96     	MOV.L   	R9,@-R15		;
001CC8 2FA6     	MOV.L   	R10,@-R15		;
001CCA 2FB6     	MOV.L   	R11,@-R15		;
001CCC 2FC6     	MOV.L   	R12,@-R15		;
001CCE 2FD6     	MOV.L   	R13,@-R15		;
001CD0 4F22     	STS.L   	PR,@-R15		;
001CD2 4F13     	STC.L   	GBR,@-R15		;
001CD4 4F02     	STS.L   	MACH,@-R15		;
001CD6 4F12     	STS.L   	MACL,@-R15		;
001CD8 DD7E     	MOV.L   	@(#1F8,PC),R13	;
001CDA 6CD2     	MOV.L   	@R13,R12		;u32* entry = *(u32*)0x0F0001D4;
001CDC 1CF2     	MOV.L   	R15,@(#8,R12)	;entry.stack = SH1.SP;
001CDE DF7E     	MOV.L   	@(#1F8,PC),R15	;SH1.SP = &temp_stack0_end;
L001CE0:							;do {
001CE0 5B20     	MOV.L   	@(#00,R2),R11	;  u32 handle = *(u32*)(0x0F000220+0x00);
001CE2 C321     	TRAPA   	#33			;  add_task_to_queue(handle);
001CE4 5322     	MOV.L   	@(#08,R2),R3	;
001CE6 1230     	MOV.L   	R3,@(#0,R2)		;  *(u32*)(0x0F000220+0x00) = *(u32*)(0x0F000220+0x08);
001CE8 5423     	MOV.L   	@(#0C,R2),R4	;  temp3 = *(u32*)(0x0F000220+0x0C);
001CEA 1241     	MOV.L   	R4,@(#4,R2)		;  *(u32*)@(0x0F000220+0x04) = temp3;
001CEC 2338     	TST     	R3,R3			;
001CEE 8916     	BT      	L001D1E		;  if (*(u32*)(0x0F000220+0x08) == 0) goto L001D1E;
001CF0 5024     	MOV.L   	@(#10,R2),R0	;
001CF2 1202     	MOV.L   	R0,@(#8,R2)		;  *(u32*)(0x0F000220+0x08) = *(u32*)(0x0F000220+0x10);
001CF4 5025     	MOV.L   	@(#14,R2),R0	;
001CF6 1203     	MOV.L   	R0,@(#C,R2)		;  *(u32*)(0x0F000220+0x0C) = *(u32*)(0x0F000220+0x14);
001CF8 5026     	MOV.L   	@(#18,R2),R0	;
001CFA 1204     	MOV.L   	R0,@(#10,R2)	;  *(u32*)(0x0F000220+0x10) = *(u32*)(0x0F000220+0x18);
001CFC 5027     	MOV.L   	@(#1C,R2),R0	;
001CFE 1205     	MOV.L   	R0,@(#14,R2)	;  *(u32*)(0x0F000220+0x14) = *(u32*)(0x0F000220+0x1C);
001D00 E000     	MOV     	#00,R0		;
001D02 1206     	MOV.L   	R0,@(#18,R2)	;  *(u32*)(0x0F000220+0x18) = 0x00000000;
001D04 1207     	MOV.L   	R0,@(#1C,R2)	;  *(u32*)(0x0F000220+0x1C) = 0x00000000;
001D06 3418     	SUB     	R1,R4			;  temp3-=temp;
001D08 4415     	CMP/PL  	R4			;
001D0A 8BE9     	BF      	L001CE0		;} while (temp3 <= 0);
001D0C D075     	MOV.L   	@(#1D4,PC),R0	;
001D0E 401E     	LDC     	R0,GBR		;
001D10 5021     	MOV.L   	@(#04,R2),R0	;
001D12 4018     	SHLL8   	R0			;
001D14 707F     	ADD     	#7F,R0		;
001D16 C103     	MOV.W   	R0,@(#006,GBR)	;SH1.ITU.GRA4 = (*(u32*)(0x0F000220+0x04)<<8) + 0x7F;
L001D18:
001D18 D070     	MOV.L   	@(#1C0,PC),R0	;
001D1A 402B     	JMP     	@R0			;add_task13_to_queue();
001D1C 0009     	NOP     				;
L001D1E:
001D1E D171     	MOV.L   	@(#1C4,PC),R1	;
001D20 411E     	LDC     	R1,GBR		;
001D22 E002     	MOV     	#02,R0		;
001D24 CDFE     	AND.B   	#FE,@(R0,GBR)	;SH1.ITU.TIER4&=0xFE;
001D26 AFF7     	BRA     	L001D18		;
001D28 0009     	NOP     				;
L001D2A:
001D2A 4F17     	LDC.L   	@R15+,GBR		;
001D2C 62F6     	MOV.L   	@R15+,R2		;
001D2E 61F6     	MOV.L   	@R15+,R1		;
001D30 60F6     	MOV.L   	@R15+,R0		;
001D32 002B     	RTE     				;
001D34 0009     	NOP     				;
001D36 0009     	NOP     				;

timer_compb_int:						;ITU4 IMIB4 handler
001D38 2F06     	MOV.L   	R0,@-R15		;
001D3A 2F16     	MOV.L   	R1,@-R15		;
001D3C 2F26     	MOV.L   	R2,@-R15		;
001D3E 2F36     	MOV.L   	R3,@-R15		;
001D40 2F46     	MOV.L   	R4,@-R15		;
001D42 2F56     	MOV.L   	R5,@-R15		;
001D44 2F66     	MOV.L   	R6,@-R15		;
001D46 2F76     	MOV.L   	R7,@-R15		;
001D48 2F86     	MOV.L   	R8,@-R15		;
001D4A 2F96     	MOV.L   	R9,@-R15		;
001D4C 2FA6     	MOV.L   	R10,@-R15		;
001D4E 2FB6     	MOV.L   	R11,@-R15		;
001D50 2FC6     	MOV.L   	R12,@-R15		;
001D52 2FD6     	MOV.L   	R13,@-R15		;
001D54 4F22     	STS.L   	PR,@-R15		;
001D56 4F13     	STC.L   	GBR,@-R15		;
001D58 4F02     	STS.L   	MACH,@-R15		;
001D5A 4F12     	STS.L   	MACL,@-R15		;
001D5C DD5D     	MOV.L   	@(#174,PC),R13	;
001D5E 6CD2     	MOV.L   	@R13,R12		;
001D60 1CF2     	MOV.L   	R15,@(#8,R12)	;
001D62 DF5D     	MOV.L   	@(#174,PC),R15	;SH1.SP = &temp_stack0_end;
001D64 D15F     	MOV.L   	@(#17C,PC),R1	;
001D66 411E     	LDC     	R1,GBR		;
001D68 E003     	MOV     	#03,R0		;
001D6A CDFD     	AND.B   	#FD,@(R0,GBR)	;SH1.ITU.TSR4&=0xFD;
001D6C E002     	MOV     	#02,R0		;
001D6E D161     	MOV.L   	@(#184,PC),R1	;
001D70 0402     	STC     	SR, R4		;
001D72 E5F0     	MOV     	#F0,R5		;
001D74 655C     	EXTU.B   	R5,R5			;
001D76 E600     	MOV     	#00,R6		;
001D78 450E     	LDC     	R5,SR			;SH1.SR = 0x000000F0;
001D7A 6B12     	MOV.L   	@R1,R11		;u32 handle1 = *(u32*)0x0F000240;
001D7C 2162     	MOV.L   	R6,@R1		;*(u32*)0x0F000240 = 0x00000000;
001D7E 5211     	MOV.L   	@(#04,R1),R2	;u32 handle2 = *(u32*)0x0F000244;
001D80 1161     	MOV.L   	R6,@(#4,R1)		;*(u32*)0x0F000244 = 0x00000000
001D82 CDFD     	AND.B   	#FD,@(R0,GBR)	;SH1.ITU.TIER4&=0xFD;
001D84 440E     	LDC     	R4,SR			;
001D86 C321     	TRAPA   	#33			;add_task_to_queue(handle1);
001D88 6B23     	MOV     	R2,R11		;
001D8A 2BB8     	TST     	R11,R11		;
001D8C 8900     	BT      	L001D90		;
001D8E C321     	TRAPA   	#33			;if (handle2) add_task_to_queue(handle2);
L001D90:
001D90 D052     	MOV.L   	@(#148,PC),R0	;
001D92 402B     	JMP     	@R0			;add_task13_to_queue();
001D94 0009     	NOP     				;

TRAP_36:							;(arg1)	//arg1-R10
L001D96:
001D96 DD54     	MOV.L   	@(#150,PC),R13	;do {
001D98 D954     	MOV.L   	@(#150,PC),R9	;
001D9A 6CD2     	MOV.L   	@R13,R12		;
001D9C 6991     	MOV.W   	@R9,R9		;  u16 tcnt = SH1.ITU.TCNT4;
001D9E 60D2     	MOV.L   	@R13,R0		;  u32 old_cnt = timer_high_cnt;
001DA0 3C00     	CMP/EQ 	R0,R12		;
001DA2 8BF8     	BF      	L001D96		;} while (timer_high_cnt != old_cnt);
001DA4 E060     	MOV     	#60,R0		;
001DA6 400E     	LDC     	R0,SR			;SH1.SR = 0x00000060;
001DA8 699D     	EXTU.W   	R9,R9			;
001DAA 4C18     	SHLL8   	R12			;
001DAC 4919     	SHLR8   	R9			;
001DAE 39CC     	ADD     	R12,R9		;u32 temp = (old<<8) + (tcnt>>8);
001DB0 6DA3     	MOV     	R10,R13		;
001DB2 60A3     	MOV     	R10,R0		;
001DB4 4008     	SHLL2   	R0			;
001DB6 4D00     	SHLL    	R13			;
001DB8 30DC     	ADD     	R13,R0		;
001DBA 4019     	SHLR8   	R0			;
001DBC 6DA3     	MOV     	R10,R13		;
001DBE 3D08     	SUB     	R0,R13		;
001DC0 39DC     	ADD     	R13,R9		;temp+= (arg1 - (arg1 * 3 / 256));
001DC2 DD4B     	MOV.L   	@(#12C,PC),R13	;
001DC4 60D2     	MOV.L   	@R13,R0		;
001DC6 2008     	TST     	R0,R0			;
001DC8 8926     	BT      	L001E18		;*(u32*)0x0F000220 == 0
001DCA 7D08     	ADD     	#08,R13		;
001DCC 60D2     	MOV.L   	@R13,R0		;
001DCE 2008     	TST     	R0,R0			;
001DD0 8919     	BT      	L001E06		;*(u32*)0x0F000228 == 0
001DD2 7D08     	ADD     	#08,R13		;
001DD4 60D2     	MOV.L   	@R13,R0		;
001DD6 2008     	TST     	R0,R0			;
001DD8 890C     	BT      	L001DF4		;*(u32*)0x0F000230 == 0
001DDA 7D08     	ADD     	#08,R13		;
001DDC 60D2     	MOV.L   	@R13,R0		;
001DDE 2008     	TST     	R0,R0			;
001DE0 8B2C     	BF      	L001E3C		;*(u32*)0x0F000238 != 0
001DE2 7DF8     	ADD     	#F8,R13		;
001DE4 50D1     	MOV.L   	@(#04,R13),R0	;
001DE6 3098     	SUB     	R9,R0			;
001DE8 4015     	CMP/PL  	R0			;
001DEA 8B22     	BF      	L001E32		;*(u32*)0x0F000234 - temp <= 0
001DEC 50D0     	MOV.L   	@(#00,R13),R0	;
001DEE 1D02     	MOV.L   	R0,@(#8,R13)	;*(u32*)0x0F000238 = *(u32*)0x0F000230;
001DF0 50D1     	MOV.L   	@(#04,R13),R0	;
001DF2 1D03     	MOV.L   	R0,@(#C,R13)	;*(u32*)0x0F00023C = *(u32*)0x0F000234;
L001DF4:
001DF4 7DF8     	ADD     	#F8,R13		;
001DF6 50D1     	MOV.L   	@(#04,R13),R0	;
001DF8 3098     	SUB     	R9,R0			;
001DFA 4015     	CMP/PL  	R0			;
001DFC 8B19     	BF      	#032			;
001DFE 50D0     	MOV.L   	@(#00,R13),R0	;
001E00 1D02     	MOV.L   	R0,@(#8,R13)	;
001E02 50D1     	MOV.L   	@(#04,R13),R0	;
001E04 1D03     	MOV.L   	R0,@(#C,R13)	;
L001E06:
001E06 7DF8     	ADD     	#F8,R13		;
001E08 50D1     	MOV.L   	@(#04,R13),R0	;
001E0A 3098     	SUB     	R9,R0			;
001E0C 4015     	CMP/PL  	R0			;
001E0E 8B10     	BF      	#020			;
001E10 50D0     	MOV.L   	@(#00,R13),R0	;
001E12 1D02     	MOV.L   	R0,@(#8,R13)	;
001E14 50D1     	MOV.L   	@(#04,R13),R0	;
001E16 1D03     	MOV.L   	R0,@(#C,R13)	;
L001E18:
001E18 7DF8     	ADD     	#F8,R13		;
001E1A 0C12     	STC     	GBR, R12		;
001E1C D031     	MOV.L   	@(#0C4,PC),R0	;
001E1E 401E     	LDC     	R0,GBR		;
001E20 609C     	EXTU.B   	R9,R0			;
001E22 4018     	SHLL8   	R0			;
001E24 707F     	ADD     	#7F,R0		;
001E26 C103     	MOV.W   	R0,@(#006,GBR)	;
001E28 E003     	MOV     	#03,R0		;
001E2A CDFE     	AND.B   	#FE,@(R0,GBR)	;
001E2C E002     	MOV     	#02,R0		;
001E2E CF01     	OR .B   	#01,@(R0,GBR)	;
001E30 4C1E     	LDC     	R12,GBR		;
L001E32:
001E32 7D08     	ADD     	#08,R13		;
001E34 2DB2     	MOV.L   	R11,@R13		;
001E36 1D91     	MOV.L   	R9,@(#4,R13)	;
001E38 002B     	RTE     				;
001E3A E000     	MOV     	#00,R0		;
L001E3C:
001E3C E009     	MOV     	#09,R0		;
001E3E C32B     	TRAPA   	#2B			;
001E40 E0FF     	MOV     	#FF,R0		;
001E42 002B     	RTE     				;
001E44 0009     	NOP     				;

TRAP_37:							;int TRAP_37(u32 arg1)	//arg1-R11
001E46 E060     	MOV     	#60,R0		;
001E48 400E     	LDC     	R0,SR			;SH1.SR = 0x000000F0;
001E4A DD29     	MOV.L   	@(#0A4,PC),R13	;
001E4C 60D2     	MOV.L   	@R13,R0		;
001E4E 2008     	TST     	R0,R0			;
001E50 890A     	BT      	L001E68		;if (*(u32*)0x0F000220 != 0) {
001E52 30B0     	CMP/EQ 	R11,R0		;
001E54 890A     	BT      	L001E6C		;  if (arg1 == 0) goto L001E6C;
001E56 50D2     	MOV.L   	@(#08,R13),R0	;
001E58 30B0     	CMP/EQ 	R11,R0		;
001E5A 891A     	BT      	L001E92		;  if (arg1 == *(u32*)(0x0F000220+0x08)) goto L001E92;
001E5C 50D4     	MOV.L   	@(#10,R13),R0	;
001E5E 30B0     	CMP/EQ 	R11,R0		;
001E60 891B     	BT      	L001E9A		;  if (arg1 == *(u32*)(0x0F000220+0x10)) goto L001E9A;
001E62 50D6     	MOV.L   	@(#18,R13),R0	;
001E64 30B0     	CMP/EQ 	R11,R0		;
001E66 891C     	BT      	L001EA2		;  if (arg1 == *(u32*)(0x0F000220+0x18)) goto L001EA2;
L001E68:							;} else {
001E68 A01E     	BRA     	L001EA8		;  return -1;
001E6A E0FF     	MOV     	#FF,R0		;}
L001E6C:
001E6C 50D3     	MOV.L   	@(#0C,R13),R0	;
001E6E 1D01     	MOV.L   	R0,@(#4,R13)	;*(u32*)(0x0F000220+0x04) = *(u32*)(0x0F000220+0x0C);
001E70 50D2     	MOV.L   	@(#08,R13),R0	;
001E72 2D02     	MOV.L   	R0,@R13		;*(u32*)(0x0F000220+0x00) = *(u32*)(0x0F000220+0x08);
001E74 2008     	TST     	R0,R0			;
001E76 8906     	BT      	L001E86		;if (*(u32*)(0x0F000220+0x08) != 0) {
001E78 50D1     	MOV.L   	@(#04,R13),R0	;
001E7A 600C     	EXTU.B   	R0,R0			;
001E7C 4018     	SHLL8   	R0			;
001E7E 707F     	ADD     	#7F,R0		;
001E80 DC18     	MOV.L   	@(#060,PC),R12	;  SH1.ITU.GRA4 = (*(u8*)(0x0F000220+0x07) << 8) | 0x007F;
001E82 A006     	BRA     	L001E92		;
001E84 81C3     	MOV.W   	R0,@(#06,R12)	;}
L001E86:
001E86 0C12     	STC     	GBR, R12		;else {
001E88 D016     	MOV.L   	@(#058,PC),R0	;
001E8A 401E     	LDC     	R0,GBR		;
001E8C E002     	MOV     	#02,R0		;
001E8E CDFE     	AND.B   	#FE,@(R0,GBR)	;  SH1.ITU.TIER4&=0xFE;
001E90 4C1E     	LDC     	R12,GBR		;}
L001E92:
001E92 50D4     	MOV.L   	@(#10,R13),R0	;
001E94 1D02     	MOV.L   	R0,@(#8,R13)	;*(u32*)(0x0F000220+0x08) = *(u32*)(0x0F000220+0x10);
001E96 50D5     	MOV.L   	@(#14,R13),R0	;
001E98 1D03     	MOV.L   	R0,@(#C,R13)	;*(u32*)(0x0F000220+0x0C) = *(u32*)(0x0F000220+0x14);
L001E9A:
001E9A 50D6     	MOV.L   	@(#18,R13),R0	;*(u32*)(0x0F000220+0x10) = *(u32*)(0x0F000220+0x18);
001E9C 1D04     	MOV.L   	R0,@(#10,R13)	;
001E9E 50D7     	MOV.L   	@(#1C,R13),R0	;
001EA0 1D05     	MOV.L   	R0,@(#14,R13)	;*(u32*)(0x0F000220+0x14) = *(u32*)(0x0F000220+0x1C);
L001EA2:
001EA2 E000     	MOV     	#00,R0		;
001EA4 1D06     	MOV.L   	R0,@(#18,R13)	;*(u32*)(0x0F000220+0x18) = 0x00000000;
001EA6 1D07     	MOV.L   	R0,@(#1C,R13)	;*(u32*)(0x0F000220+0x1C) = 0x00000000;
L001EA8:
001EA8 002B     	RTE     				;return 0;
001EAA 0009     	NOP     				;

TRAP_45:							;(arg1)	//arg1-R11
001EAC DD11     	MOV.L   	@(#044,PC),R13	;u32* ptr = 0x0F000240;
001EAE 60D2     	MOV.L   	@R13,R0		;
001EB0 2008     	TST     	R0,R0			;
001EB2 8900     	BT      	L001EB6		;
001EB4 7D04     	ADD     	#04,R13		;if (*ptr == 0) ptr++;
L001EB6:
001EB6 2DB2     	MOV.L   	R11,@R13		;*ptr = arg1;
001EB8 0D12     	STC     	GBR, R13		;
001EBA D00A     	MOV.L   	@(#028,PC),R0	;
001EBC 401E     	LDC     	R0,GBR		;
001EBE DC0E     	MOV.L   	@(#038,PC),R12	;
001EC0 C502     	MOV.W   	@(#004,GBR),R0	;
001EC2 30CC     	ADD     	R12,R0		;
001EC4 C104     	MOV.W   	R0,@(#008,GBR)	;SH1.ITU.GRB4 = SH1.ITU.TCNT4 + 125;
001EC6 E003     	MOV     	#03,R0		;
001EC8 CDFD     	AND.B   	#FD,@(R0,GBR)	;SH1.ITU.TSR4&=0xFD;
001ECA E002     	MOV     	#02,R0		;
001ECC CF02     	OR .B   	#02,@(R0,GBR)	;SH1.ITU.TIER4|=0x02;
001ECE 4D1E     	LDC     	R13,GBR		;
001ED0 002B     	RTE     				;
001ED2 0009     	NOP     				;
001ED4 0F0001D4
001ED8 0F0008F8
001EDC 0000102E
001EE0 05FFFF00
001EE4 05FFFF32
001EE8 0F00021C
001EEC 05FFFF36
001EF0 0F000220
001EF4 0F000240
001EF8 0000007D

L001EFC:							;
001EFC D1EE     	MOV.L   	@(#3B8,PC),R1	;
001EFE 9015     	MOV.W   	@(#02A,PC),R0	;
001F00 8112     	MOV.W   	R0,@(#04,R1)	;YGR.REG04 = 0x0000;
001F02 D50C     	MOV.L   	@(#030,PC),R5	;
001F04 6051     	MOV.W   	@R5,R0		;
001F06 9214     	MOV.W   	@(#028,PC),R2	;
001F08 202B     	OR      	R2,R0			;
001F0A 2501     	MOV.W   	R0,@R5		;SH1.PFC.IPRB|=0x0060 (1->DEMP)
001F0C 900F     	MOV.W   	@(#01E,PC),R0	;
001F0E 8114     	MOV.W   	R0,@(#08,R1)	;YGR.REG08 = 0x0001;
001F10 900E     	MOV.W   	@(#01C,PC),R0	;
001F12 811F     	MOV.W   	R0,@(#1E,R1)	;YGR.HIRQ = 0x0BE1;
001F14 D308     	MOV.L   	@(#020,PC),R3	;
001F16 D409     	MOV.L   	@(#024,PC),R4	;
001F18 6039     	SWAP.W   	R3,R0			;
001F1A 8118     	MOV.W   	R0,@(#10,R1)	;YGR.RR1 = "/0C";
001F1C 6033     	MOV     	R3,R0			;
001F1E 8119     	MOV.W   	R0,@(#12,R1)	;YGR.RR2 = "DB";
001F20 6049     	SWAP.W   	R4,R0			;
001F22 811A     	MOV.W   	R0,@(#14,R1)	;YGR.RR3 = "LO";
001F24 6043     	MOV     	R4,R0			;
001F26 811B     	MOV.W   	R0,@(#16,R1)	;YGR.RR4 = "CK";
001F28 000B     	RTS     				;
001F2A 0009     	NOP     				;
001F2C 0000
001F2E 0001
001F30 0BE1
001F32 0060
001F34 05FFFF86
001F38 00434442						;"/0CDBLOCK"
001F3C 4C4F434B

IRQL:								;IRQL handler
001F40 2F06     	MOV.L   	R0,@-R15		;
001F42 2F16     	MOV.L   	R1,@-R15		;
001F44 2F26     	MOV.L   	R2,@-R15		;
001F46 2F36     	MOV.L   	R3,@-R15		;
001F48 2F46     	MOV.L   	R4,@-R15		;
001F4A 2F56     	MOV.L   	R5,@-R15		;
001F4C 2F66     	MOV.L   	R6,@-R15		;
001F4E 2F76     	MOV.L   	R7,@-R15		;
001F50 2F86     	MOV.L   	R8,@-R15		;
001F52 2F96     	MOV.L   	R9,@-R15		;
001F54 2FA6     	MOV.L   	R10,@-R15		;
001F56 2FB6     	MOV.L   	R11,@-R15		;
001F58 2FC6     	MOV.L   	R12,@-R15		;
001F5A 2FD6     	MOV.L   	R13,@-R15		;
001F5C 4F22     	STS.L   	PR,@-R15		;
001F5E 4F13     	STC.L   	GBR,@-R15		;
001F60 4F02     	STS.L   	MACH,@-R15		;
001F62 4F12     	STS.L   	MACL,@-R15		;
001F64 DDD1     	MOV.L   	@(#344,PC),R13	;
001F66 6CD2     	MOV.L   	@R13,R12		;
001F68 1CF2     	MOV.L   	R15,@(#8,R12)	;
001F6A DFD1     	MOV.L   	@(#344,PC),R15	;SH1.SP = &temp_stack0_end;
001F6C D1D4     	MOV.L   	@(#350,PC),R1	;
001F6E 9033     	MOV.W   	@(#066,PC),R0	;
001F70 2101     	MOV.W   	R0,@R1		;YGR.REG04 = 0x0000;
001F72 DDD1     	MOV.L   	@(#344,PC),R13	;
001F74 85DB     	MOV.W   	@(#16,R13),R0	;
001F76 6209     	SWAP.W   	R0,R2			;u16 cr4 = YGR.CR4;
001F78 85DA     	MOV.W   	@(#14,R13),R0	;
001F7A 220D     	XTRCT   	R0,R2			;u16 cr3 = YGR.CR3;
001F7C 85D9     	MOV.W   	@(#12,R13),R0	;
001F7E 6109     	SWAP.W   	R0,R1			;u16 cr2 = YGR.CR2;
001F80 85D8     	MOV.W   	@(#10,R13),R0	;
001F82 210D     	XTRCT   	R0,R1			;u16 cr1 = YGR.CR1;
001F84 D4FF     	MOV.L   	@(#3FC,PC),R4	;
001F86 6040     	MOV.B   	@R4,R0		;
001F88 C801     	TST     	#01,R0		;
001F8A 8908     	BT      	L001F9E		;
001F8C 6019     	SWAP.W   	R1,R0			;
001F8E 6008     	SWAP.B   	R0,R0			;
001F90 600E     	EXTS.B   	R0,R0			;u16 rr1,rr2,rr3,rr4;
001F92 8805     	CMP/EQ  	#05,R0		;
001F94 8903     	BT      	L001F9E		;if (*(u8*)0x0F0007B0 & 0x01 == 0 || cr1>>8 == 0x05) {
001F96 B186     	BRS     	L0022A6		; L0022A6(&rr1,&rr2,&rr3,&rr4);
001F98 0009     	NOP     				;
001F9A A00A     	BRA     	L001FB2		;
001F9C 0009     	NOP     				;
L001F9E:							;} else {
001F9E 6019     	SWAP.W   	R1,R0			;
001FA0 6008     	SWAP.B   	R0,R0			;
001FA2 C9FF     	AND     	#FF,R0		;
001FA4 630E     	EXTS.B   	R0,R3			;  u8 cmd = cr1>>8;
001FA6 D40D     	MOV.L   	@(#034,PC),R4	;
001FA8 C9F0     	AND     	#F0,R0		;
001FAA 4009     	SHLR2   	R0			;
001FAC 0A4E     	MOV.L   	@(R0,R4),R10	;
001FAE 4A0B     	JSR     	@R10			;  command_group_tbl[cmd>>4](cr1,cr2,cr3,cr4,cmd,&rr1,&rr2,&rr3,&rr4);
001FB0 6033     	MOV     	R3,R0			;}
L001FB2:
001FB2 D1C1     	MOV.L   	@(#304,PC),R1	;
001FB4 60C9     	SWAP.W   	R12,R0		;
001FB6 8118     	MOV.W   	R0,@(#10,R1)	;YGR.RR1 = rr1;
001FB8 60C3     	MOV     	R12,R0		;
001FBA 8119     	MOV.W   	R0,@(#12,R1)	;YGR.RR2 = rr2;
001FBC 60D9     	SWAP.W   	R13,R0		;
001FBE 811A     	MOV.W   	R0,@(#14,R1)	;YGR.RR3 = rr3;
001FC0 60D3     	MOV     	R13,R0		;
001FC2 811B     	MOV.W   	R0,@(#16,R1)	;YGR.RR4 = rr4;
001FC4 9007     	MOV.W   	@(#00E,PC),R0	;
001FC6 D1BD     	MOV.L   	@(#2F4,PC),R1	;
001FC8 2101     	MOV.W   	R0,@R1		;YGR.HIRQ = 0x0001; //set CMOK only
001FCA 2BB8     	TST     	R11,R11		;
001FCC 8900     	BT      	#000			;
001FCE C321     	TRAPA   	#33			;if (R11) TRAP_33(R11);
001FD0 D0B8     	MOV.L   	@(#2E0,PC),R0	;
001FD2 402B     	JMP     	@R0			;add_task13_to_queue();
001FD4 0009     	NOP     				;
001FD6 0001
001FD8 0000
001FDA 0009
001FDC 00001FE0

command_group_tbl:
	dc.l	L002020					;cdb command 0x
	dc.l	L002050					;cdb command 1x
	dc.l	L002074					;cdb command 2x
	dc.l	L002090					;cdb command 3x
	dc.l	L0020B4					;cdb command 4x
	dc.l	L0020F4					;cdb command 5x
	dc.l	L002128					;cdb command 6x
	dc.l	L002160					;cdb command 7x
	dc.l	L002294					;cdb command 8x
	dc.l	L002190					;cdb command 9x
	dc.l	L002200					;cdb command Ax
	dc.l	L002294					;cdb command Bx
	dc.l	L002294					;cdb command Cx
	dc.l	L002294					;cdb command Dx
	dc.l	L002270					;cdb command Ex
	dc.l	L002298					;cdb command Fx

L002020:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002020 E006     	MOV     	#06,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002022 3306     	CMP/HI 	R0,R3			;
002024 8904     	BT      	L002030		;
002026 C703     	MOVA    	@(#0C,PC),R0	;
002028 4308     	SHLL2   	R3			;
00202A 043E     	MOV.L   	@(R0,R3),R4		;
00202C 442B     	JMP     	@R4			;if (cmd <= 0x06) command_0x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00202E 0009     	NOP     				;
L002030:
002030 A139     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002032 0009     	NOP     				;

command_0x_tbl:						;00002034
	dc.l	L0091F0					;cdb command 00 "Get Status"
	dc.l	L009274					;cdb command 01 "Get Hardware Info"
	dc.l	L0022D6					;cdb command 02 "Get TOC"
	dc.l	L0092AC					;cdb command 03 "Get Session Info"
	dc.l	L009310					;cdb command 04 "Initialize CD System"
	dc.l	L00934A					;cdb command 05 "Open Tray"
	dc.l	L0022CC					;cdb command 06 "End Data Transfer"

L002050:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002050 E012     	MOV     	#12,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002052 3306     	CMP/HI 	R0,R3			;
002054 8905     	BT      	L002062		;
002056 C704     	MOVA    	@(#10,PC),R0	;
002058 73F0     	ADD     	#F0,R3		;
00205A 4308     	SHLL2   	R3			;
00205C 043E     	MOV.L   	@(R0,R3),R4		;
00205E 442B     	JMP     	@R4			;if (cmd <= 0x06) command_1x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
002060 0009     	NOP     				;
L002062:
002062 A120     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002064 0009     	NOP     				;
002066 0009

command_1x_tbl:						;00002068
	dc.l	L009350					;cdb command 10 "Play Disc"
	dc.l	L0093F0					;cdb command 11 "Seek Disc"
	dc.l	L00941A					;cdb command 12 "Scan Disc"

L002074:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002074 E020     	MOV     	#20,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002076 3306     	CMP/HI 	R0,R3			;
002078 8905     	BT      	L002086		;
00207A C704     	MOVA    	@(#10,PC),R0	;
00207C 73E0     	ADD     	#E0,R3		;
00207E 4308     	SHLL2   	R3			;
002080 043E     	MOV.L   	@(R0,R3),R4		;
002082 442B     	JMP     	@R4			;if (cmd <= 0x20) command_2x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
002084 0009     	NOP     				;
L002086:
002086 A10E     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002088 0009     	NOP     				;
00208A 0009     	NOP     				;

command_2x_tbl:						;0000208C
	dc.l	L0022DC					;cdb command 20 "Get Subcode QRW"

L002090:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002090 E032     	MOV     	#32,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002092 3306     	CMP/HI 	R0,R3			;
002094 8905     	BT      	#00A			;
002096 C704     	MOVA    	@(#10,PC),R0	;
002098 73D0     	ADD     	#D0,R3		;
00209A 4308     	SHLL2   	R3			;
00209C 043E     	MOV.L   	@(R0,R3),R4		;
00209E 442B     	JMP     	@R4			;if (cmd <= 0x32) command_3x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
0020A0 0009     	NOP     				;
0020A2 A100     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0020A4 0009     	NOP     				;
0020A6 0009     	NOP     				;

command_3x_tbl:						;000020A8
	dc.l	L004D68					;cdb command 30 "Set CD Device Connection"
	dc.l	L004D8E					;cdb command 31 "Get CD Device Connection"
	dc.l	L004D96					;cdb command 32 "Get Last Buffer Destination"

L0020B4:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
0020B4 E048     	MOV     	#48,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
0020B6 3306     	CMP/HI 	R0,R3			;
0020B8 8905     	BT      	#00A			;
0020BA C705     	MOVA    	@(#14,PC),R0	;
0020BC 73C0     	ADD     	#C0,R3		;
0020BE 4308     	SHLL2   	R3			;
0020C0 043E     	MOV.L   	@(R0,R3),R4		;
0020C2 442B     	JMP     	@R4			;if (cmd <= 0x48) command_4x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
0020C4 0009     	NOP     				;
0020C6 A0EE     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0020C8 0009     	NOP     				;
0020CA 442B     	JMP     	@R4			;
0020CC 0009     	NOP     				;
0020CE 0009     	NOP     				;

command_4x_tbl:						;000020D0
	dc.l	L007380					;cdb command 40 "Set Filter Range"
	dc.l	L007396					;cdb command 41 "Get Filter Range"
	dc.l	L0073C4					;cdb command 42 "Set Filter Subheader Conditions"
	dc.l	L0073DA					;cdb command 43 "Get Filter Subheader Conditions"
	dc.l	L00741C					;cdb command 44 "Set Filter Mode"
	dc.l	L007432					;cdb command 45 "Get Filter Mode"
	dc.l	L00745E					;cdb command 46 "Set Filter Connection"
	dc.l	L0074B2					;cdb command 47 "Get Filter Connection"
	dc.l	L007512					;cdb command 48 "Reset Selector"

L0020F4:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
0020F4 E056     	MOV     	#56,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
0020F6 3306     	CMP/HI 	R0,R3			;
0020F8 8905     	BT      	#00A			;
0020FA C704     	MOVA    	@(#10,PC),R0	;
0020FC 73B0     	ADD     	#B0,R3		;
0020FE 4308     	SHLL2   	R3			;
002100 043E     	MOV.L   	@(R0,R3),R4		;
002102 442B     	JMP     	@R4			;if (cmd <= 0x56) command_5x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
002104 0009     	NOP     				;
002106 A0CE     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002108 0009     	NOP     				;
00210A 0009

command_5x_tbl:						;0000210C
	dc.l	L007532					;cdb command 50 "Get Buffer Size"
	dc.l	L007590					;cdb command 51 "Get Sector Number"
	dc.l	L0075B4					;cdb command 52 "Calculate Actual Size"
	dc.l	L0075D4					;cdb command 53 "Get Actual Size"
	dc.l	L0075E0					;cdb command 54 "Get Sector Info"
	dc.l	L00766E					;cdb command 55 "Execute FAD Search"
	dc.l	L0076B8					;cdb command 56 "Get FAD Search Results"

L002128:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002128 E067     	MOV     	#67,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
00212A 3306     	CMP/HI 	R0,R3			;
00212C 8905     	BT      	#00A			;
00212E C704     	MOVA    	@(#10,PC),R0	;
002130 73A0     	ADD     	#A0,R3		;
002132 4308     	SHLL2   	R3			;
002134 043E     	MOV.L   	@(R0,R3),R4		;
002136 442B     	JMP     	@R4			;if (cmd <= 0x67) command_6x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
002138 0009     	NOP     				;
00213A A0B4     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00213C 0009     	NOP     				;
00213E 0009

command_6x_tbl:						;00002140
	dc.l	L00754E					;cdb command 60 "Set Sector Length"
	dc.l	L0022E2					;cdb command 61 "Get Sector Data"
	dc.l	L0068BA					;cdb command 62 "Delete Sector Data"
	dc.l	L0022E8					;cdb command 63 "Get Then Delete Sector Data"
	dc.l	L0022EE					;cdb command 64 "Put Sector Data"
	dc.l	L006EFC					;cdb command 65 "Copy Sector Data"
	dc.l	L006EFC					;cdb command 66 "Move Sector Data"
	dc.l	L006F38					;cdb command 67 "Get Copy Error"

L002160:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002160 E075     	MOV     	#75,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002162 3306     	CMP/HI 	R0,R3			;
002164 8905     	BT      	#00A			;
002166 C704     	MOVA    	@(#10,PC),R0	;
002168 7390     	ADD     	#90,R3		;
00216A 4308     	SHLL2   	R3			;
00216C 043E     	MOV.L   	@(R0,R3),R4		;
00216E 442B     	JMP     	@R4			;if (cmd <= 0x75) command_7x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4)
002170 0009     	NOP     				;
002172 A098     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002174 0009     	NOP     				;
002176 0009

command_7x_tbl:						;00002178
	dc.l	L009478					;cdb command 70 "Change Directory"
	dc.l	L009524					;cdb command 71 "Read Directory"
	dc.l	L009566					;cdb command 72 "Get File System Scope"
	dc.l	L0022F4					;cdb command 73 "Get File Info"
	dc.l	L009618					;cdb command 74 "Read File"
	dc.l	L0096C2					;cdb command 75 "Abort File"

L002190:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002190 E09F     	MOV     	#9F,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002192 3306     	CMP/HI 	R0,R3			;
002194 8946     	BT      	L002224		;if (cmd > 0x9F) goto L002224;
002196 D434     	MOV.L   	@(#0D0,PC),R4	;
002198 6040     	MOV.B   	@R4,R0		;
00219A C802     	TST     	#02,R0		;
00219C 890D     	BT      	L0021BA		;
00219E E093     	MOV     	#93,R0		;
0021A0 3300     	CMP/EQ 	R0,R3			;
0021A2 8903     	BT      	L0021AC		;    
0021A4 D431     	MOV.L   	@(#0C4,PC),R4	;
0021A6 6040     	MOV.B   	@R4,R0		;
0021A8 C880     	TST     	#80,R0		;if (hw_flags & 0x02 != 0x00 && 
0021AA 8906     	BT      	L0021BA		;     (cmd == 0x93 || *(u8*)0x0F000892 & 0x80 != 0x00)) {
L0021AC:
0021AC C704     	MOVA    	@(#10,PC),R0	;
0021AE E40F     	MOV     	#0F,R4		;
0021B0 2349     	AND     	R4,R3			;
0021B2 4308     	SHLL2   	R3			;
0021B4 043E     	MOV.L   	@(R0,R3),R4		;
0021B6 442B     	JMP     	@R4			;  command_9x_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0021B8 0009     	NOP     				;}
L0021BA:
0021BA A074     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0021BC 0009     	NOP     				;
0021BE 0009     	NOP     				;

command_9x_tbl:						;000021C0
0021C0 0000F800						;cdb command 90 "MPEG Get Status"
0021C4 0000F800						;cdb command 91 "MPEG Get Interrupt"
0021C8 0000F800						;cdb command 92 "MPEG Set Interrupt Mask"
0021CC 0000A050						;cdb command 93 "MPEG Init"
0021D0 0000F800						;cdb command 94 "MPEG Set Mode"
0021D4 0000F800						;cdb command 95 "MPEG Play"
0021D8 0000F800						;cdb command 96 "MPEG Set Decoding Method"
0021DC 0000F800						;cdb command 97 "MPEG Out Decoding Sync"
0021E0 0000F800						;cdb command 98 "MPEG Get Timecode"
0021E4 0000F800						;cdb command 99 "MPEG Get PTS"
0021E8 0000F800						;cdb command 9A "MPEG Set Connection"
0021EC 0000F800						;cdb command 9B "MPEG Get Connection"
0021F0 0000F800						;cdb command 9C "MPEG Change Connection"
0021F4 0000F800						;cdb command 9D "MPEG Set Stream"
0021F8 0000F800						;cdb command 9E "MPEG Get Stream"
0021FC 0000F800						;cdb command 9F "MPEG Get Picture Size"

L002200:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) 
002200 E0AF     	MOV     	#AF,R0		;//cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002202 3306     	CMP/HI 	R0,R3			;
002204 890E     	BT      	L002224		;
002206 D418     	MOV.L   	@(#060,PC),R4	;
002208 6040     	MOV.B   	@R4,R0		;
00220A C802     	TST     	#02,R0		;
00220C 890A     	BT      	L002224		;
00220E D417     	MOV.L   	@(#05C,PC),R4	;
002210 6040     	MOV.B   	@R4,R0		;if (cmd <= 0xAF &&
002212 C880     	TST     	#80,R0		;    (hw_flags & 0x02) != 0x00 &&
002214 8906     	BT      	L002224		;    (@0x0F000892.b & 0x80) != 0x00) {
002216 C704     	MOVA    	@(#10,PC),R0	;
002218 E40F     	MOV     	#0F,R4		;
00221A 2349     	AND     	R4,R3			;
00221C 4308     	SHLL2   	R3			;
00221E 043E     	MOV.L   	@(R0,R3),R4		;
002220 442B     	JMP     	@R4			;  command_Ax_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002222 0009     	NOP     				;}
L002224:
002224 A03F     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002226 0009     	NOP     				;
command_Ax_tbl:						;00002228
002228 0000F800						;cdb command A0 "MPEG Display"
00222C 0000F800						;cdb command A1 "MPEG Set Window"
002230 0000F800						;cdb command A2 "MPEG Set Border Color"
002234 0000F800						;cdb command A3 "MPEG Set Fade"
002238 0000F800						;cdb command A4 "MPEG Set Video Effects"
00223C 0000F800						;cdb command A5 "MPEG Get Image"
002240 0000F800						;cdb command A6 "MPEG Set Image"
002244 0000F800						;cdb command A7 "MPEG Read Image"
002248 0000F800						;cdb command A8 "MPEG Write Image"
00224C 0000F800						;cdb command A9 "MPEG Read Sector"
002250 0000F800						;cdb command AA "MPEG Write Sector"
002254 0000F800						;cdb command AB ""
002258 0000F800						;cdb command AC ""
00225C 0000F800						;cdb command AD ""
002260 0000A148						;cdb command AE "MPEG Get LSI"
002264 0000A0F0						;cdb command AF "MPEG Set LSI"
002268 0F00027D
00226C 0F000892

L002270:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) //cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002270 E0E2     	MOV     	#E2,R0		;
002272 3306     	CMP/HI 	R0,R3			;
002274 8906     	BT      	L002284		;
002276 C704     	MOVA    	@(#10,PC),R0	;
002278 E40F     	MOV     	#0F,R4		;
00227A 2349     	AND     	R4,R3			;
00227C 4308     	SHLL2   	R3			;
00227E 043E     	MOV.L   	@(R0,R3),R4		;
002280 442B     	JMP     	@R4			;if (cmd <= 0xE2) command_Ex_tbl[cmd&0x0F](cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002282 0009     	NOP     				;
L002284:
002284 A00F     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
002286 0009     	NOP     				;
command_Ex_tbl:						;
002288 0000C2B6						;cdb command E0 "Authenticate Device"
00228C 0000C39A						;cdb command E1 "Is Device Authenticated"
002290 0000C334						;cdb command E2 "Get MPEG ROM"
								
								;cdb command 8x,Bx,Cx,Dx
L002294:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) //cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002294 A007     	BRA     	L0022A6		;
002296 0009     	NOP     				;L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);

								;cdb command Fx
L002298:							;(u16 cr1,cr2,cr3,cr4,u8 cmd,u16 *rr1,*rr2,*rr3,*rr4) //cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
002298 E0FF     	MOV     	#FF,R0		;
00229A 3300     	CMP/EQ 	R0,R3			;
00229C 8B01     	BF      	L0022A2		;
00229E A055     	BRA     	L00234C		;if (cmd == 0xFF) L00234C(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0022A0 0009     	NOP     				;
L0022A2:
0022A2 A000     	BRA     	L0022A6		;else L0022A6(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0022A4 0009     	NOP     				;

L0022A6:							;(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4) //cr1/cr2-R1,cr3/cr4-R2,cmd-R3,rr1/rr2-R12,rr3/rr4-R13
0022A6 D007     	MOV.L   	@(#01C,PC),R0	;
0022A8 402B     	JMP     	@R0			;return make_cd_status_FF(rr1,rr2,rr3,rr4);
0022AA 2BBA     	XOR     	R11,R11		;
0022AC 0F0001D4
0022B0 0F0008F8
0022B4 0000102E
0022B8 0A000000
0022BC 0A00001E
0022C0 0A000004
0022C4 000091E8
0022C8 0000
0022CA 22A6

;cdb command 06 "End Data Transfer"
L0022CC:							;cmd_end_data_transfer()
0022CC D91E     	MOV.L   	@(#078,PC),R9	;
0022CE E000     	MOV     	#00,R0		;*(u8*)0x0F00025B = 0x00;
0022D0 D416     	MOV.L   	@(#058,PC),R4	;
0022D2 442B     	JMP     	@R4			;L002568();
0022D4 2900     	MOV.B   	R0,@R9		;

L0022D6:							;cdb command 02 "Get TOC"
0022D6 D414     	MOV.L   	@(#050,PC),R4	;
0022D8 A00F     	BRA     	L0022FA		;L0022FA(0x00009292);
0022DA 0009     	NOP     				;
L0022DC:							;cdb command 20 "Get Subcode QRW"
0022DC D414     	MOV.L   	@(#050,PC),R4	;
0022DE A00C     	BRA     	L0022FA		;L0022FA(0x00009430);
0022E0 0009     	NOP     				;
L0022E2:							;cdb command 61 "Get Sector Data"
0022E2 D414     	MOV.L   	@(#050,PC),R4	;
0022E4 A009     	BRA     	L0022FA		;L0022FA(0x0000689C);
0022E6 0009     	NOP     				;
L0022E8:							;cdb command 63 "Get Then Delete Sector Data"
0022E8 D413     	MOV.L   	@(#04C,PC),R4	;
0022EA A006     	BRA     	L0022FA		;L0022FA(0x0000689C);
0022EC 0009     	NOP     				;
L0022EE:							;cdb command 64 "Put Sector Data"
0022EE D413     	MOV.L   	@(#04C,PC),R4	;
0022F0 A003     	BRA     	L0022FA		;L0022FA(0x000068D0);
0022F2 0009     	NOP     				;
L0022F4:							;cdb command 73 "Get File Info"
0022F4 D412     	MOV.L   	@(#048,PC),R4	;
0022F6 A000     	BRA     	L0022FA		;L0022FA(0x000095B8);
0022F8 0009     	NOP     				;
L0022FA:							;(void* func)	//func-R4
0022FA D913     	MOV.L   	@(#04C,PC),R9	;
0022FC 6090     	MOV.B   	@R9,R0		;
0022FE 2008     	TST     	R0,R0			;
002300 8B0E     	BF      	L002320		;if (*(u8*)0x0F00025B == 0x00) {
002302 4F22     	STS.L   	PR,@-R15		;
002304 440B     	JSR     	@R4			;  func();
002306 0009     	NOP     				;
002308 4F26     	LDS.L   	@R15+,PR		;
00230A 4C11     	CMP/PZ  	R12			;
00230C 8B06     	BF      	L00231C		;
00230E 60C9     	SWAP.W   	R12,R0		;
002310 6008     	SWAP.B   	R0,R0			;
002312 C840     	TST     	#40,R0		;
002314 8902     	BT      	L00231C		;
002316 D90C     	MOV.L   	@(#030,PC),R9	;
002318 E001     	MOV     	#01,R0		;
00231A 2900     	MOV.B   	R0,@R9		;  *(u8*)0x0F00025B = 0x01;
L00231C:
00231C 000B     	RTS     				;  return;
00231E 0009     	NOP     				;}
L002320:
002320 D408     	MOV.L   	@(#020,PC),R4	;
002322 442B     	JMP     	@R4			;return make_cd_status_80(rr1,rr2,rr3,rr4);
002324 EB00     	MOV     	#00,R11		;
002326 0009     	NOP     				;
002328 00009292
00232C 00002568
002330 00009430
002334 0000689C
002338 0000689C
00233C 000068D0
002340 000095B8
002344 000091EC
002348 0F00025B
L00234C:							;cdb command FF ""
00234C 6019     	SWAP.W   	R1,R0			;
00234E 600C     	EXTU.B   	R0,R0			;
002350 8800     	CMP/EQ  	#00,R0		;
002352 8906     	BT      	L002362		;
002354 8801     	CMP/EQ  	#01,R0		;
002356 8908     	BT      	L00236A		;
002358 EB00     	MOV     	#00,R11		;
00235A EC00     	MOV     	#00,R12		;
00235C ED00     	MOV     	#00,R13		;
00235E A00A     	BRA     	L002376		;
002360 0009     	NOP     				;
L002362:
002362 6C23     	MOV     	R2,R12		;
002364 6D23     	MOV     	R2,R13		;
002366 A006     	BRA     	L002376		;
002368 EB00     	MOV     	#00,R11		;
L00236A:
00236A D104     	MOV.L   	@(#010,PC),R1	;
00236C 6C12     	MOV.L   	@R1,R12		;
00236E D104     	MOV.L   	@(#010,PC),R1	;
002370 6D12     	MOV.L   	@R1,R13		;
002372 A000     	BRA     	L002376		;
002374 EB00     	MOV     	#00,R11		;
L002376:
002376 000B     	RTS     				;
002378 0009     	NOP     				;
00237A 0009     	NOP     				;
00237C 0F00
00237E 0000
002380 0F00
002382 0004
002384 0F0007B0

L002388:							;_init()
002388 D1D1     	MOV.L   	@(#344,PC),R1	;
00238A 9015     	MOV.W   	@(#02A,PC),R0	;
00238C 8117     	MOV.W   	R0,@(#0E,R1)	;SH1.DMAC.SAR1 = 0x1258;
00238E D1D1     	MOV.L   	@(#344,PC),R1	;
002390 E008     	MOV     	#08,R0		;
002392 8111     	MOV.W   	R0,@(#02,R1)	;YGR.TRCTL = 0x0008;
002394 E003     	MOV     	#03,R0		;
002396 8116     	MOV.W   	R0,@(#0C,R1)	;YGR.REG0C = 0x0003;
002398 D1CB     	MOV.L   	@(#32C,PC),R1	;
00239A E000     	MOV     	#00,R0		;
00239C 1100     	MOV.L   	R0,@(#0,R1)		;*(u32*)0x0F000248 = 0x00000000;
00239E 1101     	MOV.L   	R0,@(#4,R1)		;*(u32*)0x0F00024C = 0x00000000;
0023A0 1102     	MOV.L   	R0,@(#8,R1)		;*(u32*)0x0F000250 = 0x00000000;
0023A2 8116     	MOV.W   	R0,@(#0C,R1)	;*(u32*)0x0F000254 = 0x00000000;
0023A4 D1C9     	MOV.L   	@(#324,PC),R1	;
0023A6 8010     	MOV.B   	R0,@(#00,R1)	;*(u8*)0x0F000256 = 0x00;
0023A8 8011     	MOV.B   	R0,@(#01,R1)	;*(u8*)0x0F000257 = 0x00;
0023AA 8013     	MOV.B   	R0,@(#03,R1)	;*(u8*)0x0F000259 = 0x00;
0023AC 8014     	MOV.B   	R0,@(#04,R1)	;*(u8*)0x0F00025A = 0x00;
0023AE 8015     	MOV.B   	R0,@(#05,R1)	;*(u8*)0x0F00025B = 0x00;
0023B0 E0FF     	MOV     	#FF,R0		;
0023B2 8012     	MOV.B   	R0,@(#02,R1)	;*(u8*)0x0F000258 = 0xFF;
0023B4 000B     	RTS     				;
0023B6 0009     	NOP     				;
0023B8 1258

L0023BA:							;(arg1)	//arg1-R11
0023BA 4F22     	STS.L   	PR,@-R15		;
0023BC D1C3     	MOV.L   	@(#30C,PC),R1	;
0023BE E000     	MOV     	#00,R0		;
0023C0 8014     	MOV.B   	R0,@(#04,R1)	;*(u8*)(0x0F000256+0x04) = 0x00;
0023C2 60B9     	SWAP.W   	R11,R0		;
0023C4 8010     	MOV.B   	R0,@(#00,R1)	;*(u8*)(0x0F000256+0x00) = arg1[23:16];
0023C6 9862     	MOV.W   	@(#0C4,PC),R8	;
0023C8 4029     	SHLR16  	R0			;
0023CA 6703     	MOV     	R0,R7			;
0023CC 3870     	CMP/EQ 	R7,R8			;
0023CE 8938     	BT      	L002442		;arg1[15:0] == 0x0000
0023D0 8412     	MOV.B   	@(#02,R1),R0	;
0023D2 690C     	EXTU.B   	R0,R9			;
0023D4 88FF     	CMP/EQ  	#FF,R0		;
0023D6 8926     	BT      	#04C			;
0023D8 8413     	MOV.B   	@(#03,R1),R0	;
0023DA D2C6     	MOV.L   	@(#318,PC),R2	;
0023DC 4008     	SHLL2   	R0			;
0023DE 302C     	ADD     	R2,R0			;
0023E0 D1BE     	MOV.L   	@(#2F8,PC),R1	;
0023E2 9855     	MOV.W   	@(#0AA,PC),R8	;
0023E4 3870     	CMP/EQ 	R7,R8			;
0023E6 8909     	BT      	#012			;
0023E8 2102     	MOV.L   	R0,@R1		;
0023EA D2C4     	MOV.L   	@(#310,PC),R2	;
0023EC 420B     	JSR     	@R2			;
0023EE 0009     	NOP     				;
0023F0 E101     	MOV     	#01,R1		;
0023F2 92B7     	MOV.W   	@(#16E,PC),R2	;
0023F4 D3C2     	MOV.L   	@(#308,PC),R3	;
0023F6 6473     	MOV     	R7,R4			;
0023F8 A009     	BRA     	#0012			;
0023FA 0009     	NOP     				;
0023FC 7001     	ADD     	#01,R0		;
0023FE 2102     	MOV.L   	R0,@R1		;
002400 D2BD     	MOV.L   	@(#2F4,PC),R2	;
002402 420B     	JSR     	@R2			;
002404 0009     	NOP     				;
002406 E100     	MOV     	#00,R1		;
002408 92AD     	MOV.W   	@(#15A,PC),R2	;
00240A 6373     	MOV     	R7,R3			;
00240C D4BC     	MOV.L   	@(#2F0,PC),R4	;
00240E D7B6     	MOV.L   	@(#2D8,PC),R7	;
002410 6070     	MOV.B   	@R7,R0		;
002412 600C     	EXTU.B   	R0,R0			;
002414 D9B6     	MOV.L   	@(#2D8,PC),R9	;
002416 099C     	MOV.B   	@(R0,R9),R9		;
002418 2790     	MOV.B   	R9,@R7		;
00241A D7B1     	MOV.L   	@(#2C4,PC),R7	;
00241C 6070     	MOV.B   	@R7,R0		;
00241E 70FF     	ADD     	#FF,R0		;
002420 2700     	MOV.B   	R0,@R7		;
002422 A01B     	BRA     	#0036			;
002424 0009     	NOP     				;
002426 E0FF     	MOV     	#FF,R0		;
002428 8014     	MOV.B   	R0,@(#04,R1)	;
00242A E000     	MOV     	#00,R0		;
00242C 9830     	MOV.W   	@(#060,PC),R8	;
00242E 3870     	CMP/EQ 	R7,R8			;
002430 8900     	BT      	#000			;
002432 E001     	MOV     	#01,R0		;
002434 D2A7     	MOV.L   	@(#29C,PC),R2	;
002436 CB08     	OR      	#08,R0		;
002438 8121     	MOV.W   	R0,@(#02,R2)	;
00243A E002     	MOV     	#02,R0		;
00243C 812F     	MOV.W   	R0,@(#1E,R2)	;
00243E A023     	BRA     	#0046			;
002440 0009     	NOP     				;
L002442:
002442 D7A7     	MOV.L   	@(#29C,PC),R7	;
002444 E000     	MOV     	#00,R0		;
002446 2700     	MOV.B   	R0,@R7		;*(u8*)0x0F000257 = 0x00;
002448 D7A7     	MOV.L   	@(#29C,PC),R7	;
00244A E0FF     	MOV     	#FF,R0		;
00244C 2700     	MOV.B   	R0,@R7		;*(u8*)0x0F000258 = 0xFF;
00244E D7AE     	MOV.L   	@(#2B8,PC),R7	;
002450 6871     	MOV.W   	@R7,R8		;
002452 D7AC     	MOV.L   	@(#2B0,PC),R7	;
002454 6372     	MOV.L   	@R7,R3		;
002456 E100     	MOV     	#00,R1		;
002458 9285     	MOV.W   	@(#10A,PC),R2	;
00245A D4A9     	MOV.L   	@(#2A4,PC),R4	;
00245C D9A3     	MOV.L   	@(#28C,PC),R9	;
00245E 2982     	MOV.L   	R8,@R9		;*(u8*)0x0F000248 = *(u8*)0x0F000254;
002460 D99B     	MOV.L   	@(#26C,PC),R9	;
002462 D79C     	MOV.L   	@(#270,PC),R7	;
002464 E002     	MOV     	#02,R0		;
002466 201B     	OR      	R1,R0			;
002468 8171     	MOV.W   	R0,@(#02,R7)	;YGR.TRCTL = 0x0002;
00246A E000     	MOV     	#00,R0		;
00246C 201B     	OR      	R1,R0			;
00246E 8171     	MOV.W   	R0,@(#02,R7)	;YGR.TRCTL = 0x0000;
002470 1930     	MOV.L   	R3,@(#0,R9)		;SH1.DMAC.SAR1 = *(u32*)0x0F000250;
002472 1941     	MOV.L   	R4,@(#4,R9)		;SH1.DMAC.DAR1 = 0x0A000000;
002474 6083     	MOV     	R8,R0			;
002476 8195     	MOV.W   	R0,@(#0A,R9)	;SH1.DMAC.TCR1 = *(u16*)0x0F000254;
002478 8597     	MOV.W   	@(#0E,R9),R0	;SH1.DMAC.CHCR1;
00247A 6023     	MOV     	R2,R0			;
00247C 8197     	MOV.W   	R0,@(#0E,R9)	;SH1.DMAC.CHCR1 = 0x125D;
00247E E004     	MOV     	#04,R0		;
002480 201B     	OR      	R1,R0			;
002482 8171     	MOV.W   	R0,@(#02,R7)	;YGR.TRCTL = 0x0004;
002484 E002     	MOV     	#02,R0		;
002486 817F     	MOV.W   	R0,@(#1E,R7)	;YGR.HIRQ = 0x0002;
002488 4F26     	LDS.L   	@R15+,PR		;
00248A 000B     	RTS     				;
00248C 0009     	NOP     				;
00248E 0000
002490 0002

DMAC1:							;DMAC1 handler
002492 2F06     	MOV.L   	R0,@-R15		;
002494 2F16     	MOV.L   	R1,@-R15		;
002496 D18E     	MOV.L   	@(#238,PC),R1	;
002498 8517     	MOV.W   	@(#0E,R1),R0	;
00249A C9F8     	AND     	#F8,R0		;
00249C 801F     	MOV.B   	R0,@(#0F,R1)	;
00249E 61F3     	MOV     	R15,R1		;
0024A0 DF9A     	MOV.L   	@(#268,PC),R15	;SH1.SP = &temp_stack2_end;
0024A2 E060     	MOV     	#60,R0		;
0024A4 400E     	LDC     	R0,SR			;
0024A6 2F06     	MOV.L   	R0,@-R15		;
0024A8 2F16     	MOV.L   	R1,@-R15		;
0024AA 2F26     	MOV.L   	R2,@-R15		;
0024AC 2F36     	MOV.L   	R3,@-R15		;
0024AE 2F46     	MOV.L   	R4,@-R15		;
0024B0 2F56     	MOV.L   	R5,@-R15		;
0024B2 2F66     	MOV.L   	R6,@-R15		;
0024B4 2F76     	MOV.L   	R7,@-R15		;
0024B6 2F86     	MOV.L   	R8,@-R15		;
0024B8 2F96     	MOV.L   	R9,@-R15		;
0024BA 4F22     	STS.L   	PR,@-R15		;
0024BC 4F13     	STC.L   	GBR,@-R15		;
0024BE 4F12     	STS.L   	MACL,@-R15		;
0024C0 D183     	MOV.L   	@(#20C,PC),R1	;
0024C2 D282     	MOV.L   	@(#208,PC),R2	;
0024C4 D383     	MOV.L   	@(#20C,PC),R3	;
0024C6 8421     	MOV.B   	@(#01,R2),R0	;
0024C8 8800     	CMP/EQ  	#00,R0		;
0024CA 8935     	BT      	#06A			;
0024CC 8422     	MOV.B   	@(#02,R2),R0	;
0024CE 690C     	EXTU.B   	R0,R9			;
0024D0 88FF     	CMP/EQ  	#FF,R0		;
0024D2 892C     	BT      	#058			;
0024D4 8531     	MOV.W   	@(#02,R3),R0	;
0024D6 C801     	TST     	#01,R0		;
0024D8 8B0E     	BF      	#01C			;
0024DA D480     	MOV.L   	@(#200,PC),R4	;
0024DC 6442     	MOV.L   	@R4,R4		;
0024DE 6040     	MOV.B   	@R4,R0		;
0024E0 8888     	CMP/EQ  	#88,R0		;
0024E2 8B24     	BF      	#048			;
0024E4 D484     	MOV.L   	@(#210,PC),R4	;
0024E6 440B     	JSR     	@R4			;
0024E8 0009     	NOP     				;
0024EA 1170     	MOV.L   	R7,@(#0,R1)		;
0024EC 6083     	MOV     	R8,R0			;
0024EE 8115     	MOV.W   	R0,@(#0A,R1)	;
0024F0 9039     	MOV.W   	@(#072,PC),R0	;
0024F2 8117     	MOV.W   	R0,@(#0E,R1)	;
0024F4 A00D     	BRA     	#001A			;
0024F6 0009     	NOP     				;
0024F8 D478     	MOV.L   	@(#1E0,PC),R4	;
0024FA 6442     	MOV.L   	@R4,R4		;
0024FC 6040     	MOV.B   	@R4,R0		;
0024FE 8888     	CMP/EQ  	#88,R0		;
002500 8B15     	BF      	#02A			;
002502 D47E     	MOV.L   	@(#1F8,PC),R4	;
002504 440B     	JSR     	@R4			;
002506 0009     	NOP     				;
002508 1171     	MOV.L   	R7,@(#4,R1)		;
00250A 6083     	MOV     	R8,R0			;
00250C 8115     	MOV.W   	R0,@(#0A,R1)	;
00250E 9029     	MOV.W   	@(#052,PC),R0	;
002510 8117     	MOV.W   	R0,@(#0E,R1)	;
002512 D977     	MOV.L   	@(#1DC,PC),R9	;
002514 8422     	MOV.B   	@(#02,R2),R0	;
002516 600C     	EXTU.B   	R0,R0			;
002518 009C     	MOV.B   	@(R0,R9),R0		;
00251A 8022     	MOV.B   	R0,@(#02,R2)	;
00251C 8421     	MOV.B   	@(#01,R2),R0	;
00251E 70FF     	ADD     	#FF,R0		;
002520 8021     	MOV.B   	R0,@(#01,R2)	;
002522 D472     	MOV.L   	@(#1C8,PC),R4	;
002524 6042     	MOV.L   	@R4,R0		;
002526 308C     	ADD     	R8,R0			;
002528 2402     	MOV.L   	R0,@R4		;
00252A A009     	BRA     	#0012			;
00252C 0009     	NOP     				;
00252E D478     	MOV.L   	@(#1E0,PC),R4	;
002530 E0FF     	MOV     	#FF,R0		;
002532 2400     	MOV.B   	R0,@R4		;
002534 E000     	MOV     	#00,R0		;
002536 8021     	MOV.B   	R0,@(#01,R2)	;
002538 8531     	MOV.W   	@(#02,R3),R0	;
00253A C901     	AND     	#01,R0		;
00253C CB08     	OR      	#08,R0		;
00253E 8131     	MOV.W   	R0,@(#02,R3)	;
002540 4F16     	LDS.L   	@R15+,MACL		;
002542 4F17     	LDC.L   	@R15+,GBR		;
002544 4F26     	LDS.L   	@R15+,PR		;
002546 69F6     	MOV.L   	@R15+,R9		;
002548 68F6     	MOV.L   	@R15+,R8		;
00254A 67F6     	MOV.L   	@R15+,R7		;
00254C 66F6     	MOV.L   	@R15+,R6		;
00254E 65F6     	MOV.L   	@R15+,R5		;
002550 64F6     	MOV.L   	@R15+,R4		;
002552 63F6     	MOV.L   	@R15+,R3		;
002554 62F6     	MOV.L   	@R15+,R2		;
002556 61F6     	MOV.L   	@R15+,R1		;
002558 60F6     	MOV.L   	@R15+,R0		;
00255A 6F13     	MOV     	R1,R15		;
00255C 61F6     	MOV.L   	@R15+,R1		;
00255E 60F6     	MOV.L   	@R15+,R0		;
002560 002B     	RTE     				;
002562 0009     	NOP     				;
002564 435D
002566 125D

L002568:							;
002568 4F22     	STS.L   	PR,@-R15		;
00256A D159     	MOV.L   	@(#164,PC),R1	;
00256C 8517     	MOV.W   	@(#0E,R1),R0	;
00256E 90A8     	MOV.W   	@(#150,PC),R0	;
002570 8117     	MOV.W   	R0,@(#0E,R1)	;
002572 D156     	MOV.L   	@(#158,PC),R1	;
002574 8410     	MOV.B   	@(#00,R1),R0	;
002576 2008     	TST     	R0,R0			;
002578 8959     	BT      	#0B2			;
00257A 8414     	MOV.B   	@(#04,R1),R0	;
00257C 2008     	TST     	R0,R0			;
00257E 8B54     	BF      	#0A8			;
002580 D253     	MOV.L   	@(#14C,PC),R2	;
002582 D154     	MOV.L   	@(#150,PC),R1	;
002584 8525     	MOV.W   	@(#0A,R2),R0	;
002586 630D     	EXTU.W   	R0,R3			;
002588 8511     	MOV.W   	@(#02,R1),R0	;
00258A C801     	TST     	#01,R0		;
00258C 8939     	BT      	#072			;
00258E 2338     	TST     	R3,R3			;
002590 8953     	BT      	#0A6			;
002592 5D21     	MOV.L   	@(#04,R2),R13	;
002594 8511     	MOV.W   	@(#02,R1),R0	;
002596 C804     	TST     	#04,R0		;
002598 8B33     	BF      	#066			;
00259A 2338     	TST     	R3,R3			;
00259C 894D     	BT      	#09A			;
00259E 8510     	MOV.W   	@(#00,R1),R0	;
0025A0 2D01     	MOV.W   	R0,@R13		;
0025A2 73FF     	ADD     	#FF,R3		;
0025A4 7D02     	ADD     	#02,R13		;
0025A6 8511     	MOV.W   	@(#02,R1),R0	;
0025A8 C804     	TST     	#04,R0		;
0025AA 8B2A     	BF      	#054			;
0025AC 2338     	TST     	R3,R3			;
0025AE 8944     	BT      	#088			;
0025B0 8510     	MOV.W   	@(#00,R1),R0	;
0025B2 2D01     	MOV.W   	R0,@R13		;
0025B4 73FF     	ADD     	#FF,R3		;
0025B6 7D02     	ADD     	#02,R13		;
0025B8 8511     	MOV.W   	@(#02,R1),R0	;
0025BA C804     	TST     	#04,R0		;
0025BC 8B21     	BF      	#042			;
0025BE 2338     	TST     	R3,R3			;
0025C0 893B     	BT      	#076			;
0025C2 8510     	MOV.W   	@(#00,R1),R0	;
0025C4 2D01     	MOV.W   	R0,@R13		;
0025C6 73FF     	ADD     	#FF,R3		;
0025C8 7D02     	ADD     	#02,R13		;
0025CA 8511     	MOV.W   	@(#02,R1),R0	;
0025CC C804     	TST     	#04,R0		;
0025CE 8B18     	BF      	#030			;
0025D0 2338     	TST     	R3,R3			;
0025D2 8932     	BT      	#064			;
0025D4 8510     	MOV.W   	@(#00,R1),R0	;
0025D6 2D01     	MOV.W   	R0,@R13		;
0025D8 73FF     	ADD     	#FF,R3		;
0025DA 7D02     	ADD     	#02,R13		;
0025DC 8511     	MOV.W   	@(#02,R1),R0	;
0025DE C804     	TST     	#04,R0		;
0025E0 8B0F     	BF      	#01E			;
0025E2 2338     	TST     	R3,R3			;
0025E4 8929     	BT      	#052			;
0025E6 8510     	MOV.W   	@(#00,R1),R0	;
0025E8 2D01     	MOV.W   	R0,@R13		;
0025EA 73FF     	ADD     	#FF,R3		;
0025EC 7D02     	ADD     	#02,R13		;
0025EE 8511     	MOV.W   	@(#02,R1),R0	;
0025F0 C804     	TST     	#04,R0		;
0025F2 8B06     	BF      	#00C			;
0025F4 2338     	TST     	R3,R3			;
0025F6 8920     	BT      	#040			;
0025F8 8510     	MOV.W   	@(#00,R1),R0	;
0025FA 2D01     	MOV.W   	R0,@R13		;
0025FC 73FF     	ADD     	#FF,R3		;
0025FE A000     	BRA     	#0000			;
002600 0009     	NOP     				;
002602 E008     	MOV     	#08,R0		;
002604 8111     	MOV.W   	R0,@(#02,R1)	;
002606 D439     	MOV.L   	@(#0E4,PC),R4	;
002608 6C42     	MOV.L   	@R4,R12		;
00260A 3C38     	SUB     	R3,R12		;
00260C D141     	MOV.L   	@(#104,PC),R1	;
00260E 410B     	JSR     	@R1			;
002610 ED00     	MOV     	#00,R13		;
002612 D131     	MOV.L   	@(#0C4,PC),R1	;
002614 6010     	MOV.B   	@R1,R0		;
002616 4018     	SHLL8   	R0			;
002618 CB03     	OR      	#03,R0		;
00261A 6B09     	SWAP.W   	R0,R11		;
00261C 9052     	MOV.W   	@(#0A4,PC),R0	;
00261E 2B0B     	OR      	R0,R11		;
002620 E000     	MOV     	#00,R0		;
002622 2100     	MOV.B   	R0,@R1		;
002624 4F26     	LDS.L   	@R15+,PR		;
002626 000B     	RTS     				;
002628 0009     	NOP     				;
00262A AFEF     	BRA     	#1FDE			;
00262C ECFF     	MOV     	#FF,R12		;
00262E D139     	MOV.L   	@(#0E4,PC),R1	;
002630 410B     	JSR     	@R1			;
002632 ECFF     	MOV     	#FF,R12		;
002634 ED00     	MOV     	#00,R13		;
002636 AFF5     	BRA     	#1FEA			;
002638 EB00     	MOV     	#00,R11		;
00263A D524     	MOV.L   	@(#090,PC),R5	;
00263C 8451     	MOV.B   	@(#01,R5),R0	;
00263E 8800     	CMP/EQ  	#00,R0		;
002640 89DF     	BT      	#1BE			;
002642 8452     	MOV.B   	@(#02,R5),R0	;
002644 690C     	EXTU.B   	R0,R9			;
002646 88FF     	CMP/EQ  	#FF,R0		;
002648 89EF     	BT      	#1DE			;
00264A D524     	MOV.L   	@(#090,PC),R5	;
00264C 6552     	MOV.L   	@R5,R5		;
00264E 6050     	MOV.B   	@R5,R0		;
002650 8888     	CMP/EQ  	#88,R0		;
002652 8BEA     	BF      	#1D4			;
002654 D529     	MOV.L   	@(#0A4,PC),R5	;
002656 450B     	JSR     	@R5			;
002658 0009     	NOP     				;
00265A 6D73     	MOV     	R7,R13		;
00265C 6383     	MOV     	R8,R3			;
00265E D423     	MOV.L   	@(#08C,PC),R4	;
002660 6042     	MOV.L   	@R4,R0		;
002662 308C     	ADD     	R8,R0			;
002664 2402     	MOV.L   	R0,@R4		;
002666 8511     	MOV.W   	@(#02,R1),R0	;
002668 C804     	TST     	#04,R0		;
00266A 8BCA     	BF      	#194			;
00266C 2338     	TST     	R3,R3			;
00266E 89C8     	BT      	#190			;
002670 8510     	MOV.W   	@(#00,R1),R0	;
002672 2D01     	MOV.W   	R0,@R13		;
002674 73FF     	ADD     	#FF,R3		;
002676 7D02     	ADD     	#02,R13		;
002678 8511     	MOV.W   	@(#02,R1),R0	;
00267A C804     	TST     	#04,R0		;
00267C 8BC1     	BF      	#182			;
00267E 2338     	TST     	R3,R3			;
002680 89BF     	BT      	#17E			;
002682 8510     	MOV.W   	@(#00,R1),R0	;
002684 2D01     	MOV.W   	R0,@R13		;
002686 73FF     	ADD     	#FF,R3		;
002688 7D02     	ADD     	#02,R13		;
00268A 8511     	MOV.W   	@(#02,R1),R0	;
00268C C804     	TST     	#04,R0		;
00268E 8BB8     	BF      	#170			;
002690 2338     	TST     	R3,R3			;
002692 89B6     	BT      	#16C			;
002694 8510     	MOV.W   	@(#00,R1),R0	;
002696 2D01     	MOV.W   	R0,@R13		;
002698 73FF     	ADD     	#FF,R3		;
00269A 7D02     	ADD     	#02,R13		;
00269C 8511     	MOV.W   	@(#02,R1),R0	;
00269E C804     	TST     	#04,R0		;
0026A0 8BAF     	BF      	#15E			;
0026A2 2338     	TST     	R3,R3			;
0026A4 89AD     	BT      	#15A			;
0026A6 8510     	MOV.W   	@(#00,R1),R0	;
0026A8 2D01     	MOV.W   	R0,@R13		;
0026AA 73FF     	ADD     	#FF,R3		;
0026AC 7D02     	ADD     	#02,R13		;
0026AE 8511     	MOV.W   	@(#02,R1),R0	;
0026B0 C804     	TST     	#04,R0		;
0026B2 8BA6     	BF      	#14C			;
0026B4 2338     	TST     	R3,R3			;
0026B6 89A4     	BT      	#148			;
0026B8 8510     	MOV.W   	@(#00,R1),R0	;
0026BA 2D01     	MOV.W   	R0,@R13		;
0026BC 73FF     	ADD     	#FF,R3		;
0026BE AFA0     	BRA     	#1F40			;
0026C0 7D02     	ADD     	#02,R13		;
0026C2 1258
0026C4 0001
0026C6 0009
0026C8 0F000248
0026CC 0F000256
0026D0 05FFFF50
0026D4 0A000000
0026D8 0F00
0026DA 0256
0026DC 0F00
0026DE 024C
0026E0 0F000257
0026E4 0F00
0026E6 0259
0026E8 0F000258
0026EC 0F000248
0026F0 0F00
0026F2 0354
0026F4 0F00
0026F6 05A0
0026F8 0000
0026FA 6E18
0026FC 0000
0026FE 6E76
002700 0A000000
002704 0F000250
002708 0F000254
00270C 0F0009F8
002710 0F00
002712 025A
002714 0000
002716 91A8

002718 D2D1     	MOV.L   	@(#344,PC),R2	;
00271A 421E     	LDC     	R2,GBR		;
00271C 4F22     	STS.L   	PR,@-R15		;
00271E B18B     	BRS     	L002A38		;L002A38();
002720 0009     	NOP     				;
002722 4F26     	LDS.L   	@R15+,PR		;
002724 D1CF     	MOV.L   	@(#33C,PC),R1	;u32* ptr = 0x0F000304;
002726 D2CE     	MOV.L   	@(#338,PC),R2	;
002728 421E     	LDC     	R2,GBR		;
00272A C421     	MOV.B   	@(#021,GBR),R0	;u8 hw_flags_save = hw_flags;
00272C E300     	MOV     	#00,R3		;
L00272E:
00272E 3120     	CMP/EQ 	R2,R1			;while (1) {
002730 8901     	BT      	L002736		;  if (ptr == 0x0F00025C) break;
002732 2136     	MOV.L   	R3,@-R1		;  ptr--; *ptr = 0x00000000;
002734 8BFB     	BF      	L00272E		;}
L002736:
002736 C021     	MOV.B   	R0,@(#021,GBR)	;hw_flags = hw_flags_save;
002738 E0FF     	MOV     	#FF,R0		;
00273A C204     	MOV.L   	R0,@(#010,GBR)	;*((u32*)cd_status_buf1[0]) = 0xFFFFFFFF;
00273C C205     	MOV.L   	R0,@(#014,GBR)	;*((u32*)cd_status_buf1[4]) = 0xFFFFFFFF;
00273E C206     	MOV.L   	R0,@(#018,GBR)	;*((u32*)cd_status_buf2[0]) = 0xFFFFFFFF;
002740 C207     	MOV.L   	R0,@(#01C,GBR)	;*((u32*)cd_status_buf2[4]) = 0xFFFFFFFF;
002742 E000     	MOV     	#00,R0		;
002744 C010     	MOV.B   	R0,@(#010,GBR)	;cd_status_buf1[0] = 0x00;
002746 C018     	MOV.B   	R0,@(#018,GBR)	;cd_status_buf2[0] = 0x00;
002748 D139     	MOV.L   	@(#0E4,PC),R1	;
00274A E0FF     	MOV     	#FF,R0		;
00274C 2106     	MOV.L   	R0,@-R1		;*(u32*)0x0900022C = 0xFFFFFFFF;
00274E 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000228 = 0xFFFFFFFF;
002750 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000224 = 0xFFFFFFFF;
002752 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000220 = 0xFFFFFFFF;
002754 2106     	MOV.L   	R0,@-R1		;*(u32*)0x0900021C = 0xFFFFFFFF;
002756 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000218 = 0xFFFFFFFF;
002758 E0FF     	MOV     	#FF,R0		;
00275A C0A2     	MOV.B   	R0,@(#0A2,GBR)	;*(u8*)(0x0F00025C+0xA2) = 0xFF;
00275C D1C4     	MOV.L   	@(#310,PC),R1	;
00275E 2136     	MOV.L   	R3,@-R1		;cdd_csum = cdd_nb = cdd_ret = unk_0313 = 0x00;
002760 E0FF     	MOV     	#FF,R0		;
002762 600C     	EXTU.B   	R0,R0			;
002764 2106     	MOV.L   	R0,@-R1		;*((u32*)cdd_tx_data[8]) = 0xFFFFFFFF;
002766 2136     	MOV.L   	R3,@-R1		;*((u32*)cdd_tx_data[4]) = 0xFFFFFFFF;
002768 2136     	MOV.L   	R3,@-R1		;*((u32*)cdd_tx_data[0]) = 0xFFFFFFFF;
00276A D1C7     	MOV.L   	@(#31C,PC),R1	;
00276C 0202     	STC     	SR, R2		;
00276E D38A     	MOV.L   	@(#228,PC),R3	;
002770 232B     	OR      	R2,R3			;
002772 E5EF     	MOV     	#EF,R5		;
002774 E440     	MOV     	#40,R4		;
002776 430E     	LDC     	R3,SR			;SH1.SR|=0x000000F0;
002778 6011     	MOV.W   	@R1,R0		;
00277A 2059     	AND     	R5,R0			;
00277C 204B     	OR      	R4,R0			;
00277E 2101     	MOV.W   	R0,@R1		;YGR.REG1A = (YGR.REG1A & 0xFFEF) | 0x0040;
002780 420E     	LDC     	R2,SR			;
002782 D0BC     	MOV.L   	@(#2F0,PC),R0	;
002784 401E     	LDC     	R0,GBR		;
002786 E030     	MOV     	#30,R0		;
002788 C002     	MOV.B   	R0,@(#002,GBR)	;SH1.SCI.SCR0 = 0x30;
00278A D1BB     	MOV.L   	@(#2EC,PC),R1	;
00278C 411E     	LDC     	R1,GBR		;
00278E E023     	MOV     	#23,R0		;
002790 CF50     	OR .B   	#50,@(R0,GBR)	;TIOR3|=0x50;
002792 E024     	MOV     	#24,R0		;
002794 CF02     	OR .B   	#02,@(R0,GBR)	;TIER3|=0x02;
L002796:
002796 C323     	TRAPA   	#35			;u32 h = TRAP_35();
002798 6CB3     	MOV     	R11,R12		;
00279A DAB1     	MOV.L   	@(#2C4,PC),R10	;
00279C 4A1E     	LDC     	R10,GBR		;
00279E D9B2     	MOV.L   	@(#2C8,PC),R9	;
0027A0 60B9     	SWAP.W   	R11,R0		;
0027A2 680E     	EXTS.B   	R0,R8			;
0027A4 6BBC     	EXTU.B   	R11,R11		;
0027A6 6083     	MOV     	R8,R0			;
0027A8 8881     	CMP/EQ  	#81,R0		;
0027AA 8B10     	BF      	L0027CE		;if (h[23:16] == 0x81) {
0027AC 60B3     	MOV     	R11,R0		;
0027AE 880C     	CMP/EQ  	#0C,R0		;
0027B0 890B     	BT      	L0027CA		;  if (h[7:0] == 0x0C) goto L0035E4;
0027B2 880D     	CMP/EQ  	#0D,R0		;
0027B4 8907     	BT      	L0027C6		;  if (h[7:0] == 0x0D) goto L00360E;
0027B6 8800     	CMP/EQ  	#00,R0		;
0027B8 8B0B     	BF      	L0027D2		;  if (h[7:0] != 0x00) goto L0027D2;
0027BA 4F22     	STS.L   	PR,@-R15		;
0027BC B2A3     	BRS     	L002D06		;  L002D06();
0027BE 0009     	NOP     				;
0027C0 4F26     	LDS.L   	@R15+,PR		;
0027C2 AFE8     	BRA     	L002796		;  goto L002796;
0027C4 0009     	NOP     				;
L0027C6:
0027C6 A722     	BRA     	L00360E		;
0027C8 0009     	NOP     				;
L0027CA:
0027CA A70B     	BRA     	L0035E4		;
0027CC 0009     	NOP     				;
L0027CE:
0027CE 8803     	CMP/EQ  	#03,R0		;
0027D0 8949     	BT      	L002866		;} else if (h[23:16] == 0x03) {
L0027D2:
0027D2 6083     	MOV     	R8,R0			;
0027D4 8883     	CMP/EQ  	#83,R0		;
0027D6 8B0B     	BF      	L0027F0		;  if (h[23:16] == 0x83 &&
0027D8 E04A     	MOV     	#4A,R0		;
0027DA CC20     	TST.B   	#20,@(R0,GBR)	;
0027DC 8908     	BT      	L0027F0		;      (cd_flags & 0x20) != 0 &&
0027DE C473     	MOV.B   	@(#073,GBR),R0	;
0027E0 8801     	CMP/EQ  	#01,R0		;
0027E2 8905     	BT      	L0027F0		;      cdd_comm[11] != 0x01) {
0027E4 E04A     	MOV     	#4A,R0		;
0027E6 CC08     	TST.B   	#08,@(R0,GBR)	;
0027E8 8B01     	BF      	L0027EE		;
0027EA A001     	BRA     	L0027F0		;
0027EC CDDF     	AND.B   	#DF,@(R0,GBR)	;    if (cd_flags & 0x08 == 0) cd_flags&=0xDF;
0027EE CDF7     	AND.B   	#F7,@(R0,GBR)	;    else                      cd_flags&=0xF7;
L0027F0:							;  }
0027F0 C449     	MOV.B   	@(#049,GBR),R0	;
0027F2 8800     	CMP/EQ  	#00,R0		;
0027F4 890D     	BT      	L002812		;  if (cd_state == 0x00) {
0027F6 E111     	MOV     	#11,R1		;
0027F8 3012     	CMP/HS 	R1,R0			;
0027FA 8B1B     	BF      	L002834		;
0027FC E116     	MOV     	#16,R1		;
0027FE 3102     	CMP/HS 	R0,R1			;
002800 8B18     	BF      	L002834		;    if (cd_state < 0x11 || cd_state > 0x16) goto L002834;
002802 70EF     	ADD     	#EF,R0		;
002804 6103     	MOV     	R0,R1			;
002806 C704     	MOVA    	@(#10,PC),R0	;
002808 4108     	SHLL2   	R1			;
00280A 310C     	ADD     	R0,R1			;
00280C 6212     	MOV.L   	@R1,R2		;
00280E 422B     	JMP     	@R2			;    return L002818[cd_state-0x11](h[23:16],h);
002810 6083     	MOV     	R8,R0			;  }
L002812:
002812 A161     	BRA     	L002AD8		;  goto L002AD8;
002814 6083     	MOV     	R8,R0			;
002816 0009     	NOP     				;
L002818:
002818 00002B1E						;11
00281C 00002B1E						;12
002820 00002C58						;13
002824 00002CF0						;14
002828 00002C58						;15
00282C 00002C58						;16
002830 09000230
L002834:							;//cd_state < 0x11 || cd_state > 0x16
002834 6083     	MOV     	R8,R0			;
002836 8804     	CMP/EQ  	#04,R0		;
002838 892D     	BT      	#05A			;h[23:16] == 0x04
00283A 8805     	CMP/EQ  	#05,R0		;
00283C 891F     	BT      	#03E			;
00283E 8806     	CMP/EQ  	#06,R0		;
002840 8907     	BT      	#00E			;
002842 8807     	CMP/EQ  	#07,R0		;
002844 8920     	BT      	#040			;
002846 8881     	CMP/EQ  	#81,R0		;
002848 8914     	BT      	#028			;
00284A 8883     	CMP/EQ  	#83,R0		;
00284C 8BA3     	BF      	#146			;
00284E A027     	BRA     	#004E			;
002850 0009     	NOP     				;
002852 C75E     	MOVA    	@(#178,PC),R0	;
002854 4B08     	SHLL2   	R11			;
002856 30BC     	ADD     	R11,R0		;
002858 6002     	MOV.L   	@R0,R0		;
00285A 4F22     	STS.L   	PR,@-R15		;
00285C 400B     	JSR     	@R0			;
00285E 0009     	NOP     				;
002860 4F26     	LDS.L   	@R15+,PR		;
002862 A016     	BRA     	#002C			;
002864 0009     	NOP     				;}
L002866:
002866 60B3     	MOV     	R11,R0		;
002868 8801     	CMP/EQ  	#01,R0		;
00286A 8B01     	BF      	#002			;
00286C DB84     	MOV.L   	@(#210,PC),R11	;
00286E C327     	TRAPA   	#27			;
002870 A00F     	BRA     	#001E			;
002872 0009     	NOP     				;
002874 E00E     	MOV     	#0E,R0		;
002876 3B06     	CMP/HI 	R0,R11		;
002878 890B     	BT      	#016			;
00287A C75F     	MOVA    	@(#17C,PC),R0	;
00287C 8BEA     	BF      	#1D4			;
00287E E004     	MOV     	#04,R0		;
002880 3B06     	CMP/HI 	R0,R11		;
002882 8906     	BT      	#00C			;
002884 C752     	MOVA    	@(#148,PC),R0	;
002886 8BE5     	BF      	#1CA			;
002888 E004     	MOV     	#04,R0		;
00288A 3B06     	CMP/HI 	R0,R11		;
00288C 8901     	BT      	#002			;
00288E C755     	MOVA    	@(#154,PC),R0	;
002890 8BE0     	BF      	#1C0			;
002892 AF80     	BRA     	#1F00			;
002894 0009     	NOP     				;

002896 E001     	MOV     	#01,R0		;
002898 3B06     	CMP/HI 	R0,R11		;
00289A 89FA     	BT      	#1F4			;
00289C C764     	MOVA    	@(#190,PC),R0	;void* func = L002A30[h[7:0]];
00289E 8BD9     	BF      	#1B2			;
0028A0 C749     	MOVA    	@(#124,PC),R0	;void* func = L0029C8[h[7:0]];
0028A2 4B08     	SHLL2   	R11			;
0028A4 30BC     	ADD     	R11,R0		;
0028A6 6002     	MOV.L   	@R0,R0		;
0028A8 4F22     	STS.L   	PR,@-R15		;
0028AA 400B     	JSR     	@R0			;func();
0028AC 0009     	NOP     				;
0028AE 4F26     	LDS.L   	@R15+,PR		;

L0028B0:							;
0028B0 D175     	MOV.L   	@(#1D4,PC),R1	;
0028B2 0202     	STC     	SR, R2		;//save SR
0028B4 D338     	MOV.L   	@(#0E0,PC),R3	;
0028B6 232B     	OR      	R2,R3			;
0028B8 D407     	MOV.L   	@(#01C,PC),R4	;
0028BA 6040     	MOV.B   	@R4,R0		;
0028BC C810     	TST     	#10,R0		;
0028BE 890D     	BT      	L0028DC		;*(u8*)0x0F000894 & 0x10 == 0
0028C0 E510     	MOV     	#10,R5		;
0028C2 430E     	LDC     	R3,SR			;SH1.SR|=0x000000F0;
0028C4 6011     	MOV.W   	@R1,R0		;
0028C6 205B     	OR      	R5,R0			;
0028C8 2101     	MOV.W   	R0,@R1		;YGR.REG1A|=0x0010;
0028CA 420E     	LDC     	R2,SR			;//restore SR
0028CC 6040     	MOV.B   	@R4,R0		;
0028CE C880     	TST     	#80,R0		;
0028D0 8B1B     	BF      	L00290A		;*(u8*)0x0F000894.b & 0x80 != 0
0028D2 A01F     	BRA     	L002914		;
0028D4 0009     	NOP     				;
0028D6 0009     	NOP     				;
0028D8 0F000894
L0028DC:
0028DC E5EF     	MOV     	#EF,R5		;
0028DE 430E     	LDC     	R3,SR			;SH1.SR|=0x000000F0;
0028E0 6011     	MOV.W   	@R1,R0		;
0028E2 2059     	AND     	R5,R0			;
0028E4 2101     	MOV.W   	R0,@R1		;YGR.REG1A&=0xFFEF;
0028E6 420E     	LDC     	R2,SR			;//restore SR
0028E8 E04A     	MOV     	#4A,R0		;
0028EA CC28     	TST.B   	#28,@(R0,GBR)	;
0028EC 8B18     	BF      	L002920		;cd_flags & 0x28 != 0
0028EE C449     	MOV.B   	@(#049,GBR),R0	;
0028F0 8806     	CMP/EQ  	#06,R0		;
0028F2 8901     	BT      	L0028F8		;
0028F4 880C     	CMP/EQ  	#0C,R0		;
0028F6 8B0D     	BF      	L002914		;cd_state != 0x06 && cd_state != 0x0C
L0028F8:
0028F8 E074     	MOV     	#74,R0		;
0028FA CC04     	TST.B   	#04,@(R0,GBR)	;
0028FC 8910     	BT      	L002920		;cdd_rx_data.stat & 0x04 == 0
0028FE C476     	MOV.B   	@(#076,GBR),R0	;
002900 8800     	CMP/EQ  	#00,R0		;
002902 890D     	BT      	L002920		;cdd_rx_data.track == 0x00
002904 E075     	MOV     	#75,R0		;
002906 CC10     	TST.B   	#10,@(R0,GBR)	;
002908 8904     	BT      	L002914		;
L00290A:
00290A D12A     	MOV.L   	@(#0A8,PC),R1	;
00290C 411E     	LDC     	R1,GBR		;
00290E E043     	MOV     	#43,R0		;
002910 A004     	BRA     	L00291C		;
002912 CF40     	OR .B   	#40,@(R0,GBR)	;
L002914:
002914 D127     	MOV.L   	@(#09C,PC),R1	;
002916 411E     	LDC     	R1,GBR		;
002918 E043     	MOV     	#43,R0		;
00291A CDBF     	AND.B   	#BF,@(R0,GBR)	;SH1.PFC.PBDR[6] = cdd_rx_data.qcode & 0x10 == 0 ? 0 : 1; //DEMP
L00291C:
00291C D150     	MOV.L   	@(#140,PC),R1	;
00291E 411E     	LDC     	R1,GBR		;
L002920:
002920 D025     	MOV.L   	@(#094,PC),R0	;
002922 6000     	MOV.B   	@R0,R0		;
002924 C801     	TST     	#01,R0		;
002926 8904     	BT      	L002932		;*(u8*)0x0F0007B0.b & 0x01 == 0
002928 954A     	MOV.W   	@(#094,PC),R5	;rr1 = 0x20FF;
00292A E6FF     	MOV     	#FF,R6		;rr2 = 0xFFFF;
00292C E7FF     	MOV     	#FF,R7		;rr3 = 0xFFFF;
00292E A01C     	BRA     	L00296A		;rr4 = 0xFFFF;
002930 E8FF     	MOV     	#FF,R8		;
L002932:
002932 0112     	STC     	GBR, R1		;
002934 7110     	ADD     	#10,R1		;
002936 C420     	MOV.B   	@(#020,GBR),R0	;
002938 8800     	CMP/EQ  	#00,R0		;
00293A 8900     	BT      	L00293E		;u8* status_ptr = cd_status_buf_sel == 0x00 ? cd_status_buf1 : 
00293C 7108     	ADD     	#08,R1		;                                             cd_status_buf2;
L00293E:
00293E 6515     	MOV.W   	@R1+,R5		;rr1 = status_ptr[0];
002940 6615     	MOV.W   	@R1+,R6		;rr2 = status_ptr[1];
002942 6715     	MOV.W   	@R1+,R7		;rr3 = status_ptr[2];
002944 6815     	MOV.W   	@R1+,R8		;rr4 = status_ptr[3];
002946 9039     	MOV.W   	@(#072,PC),R0	;
002948 250B     	OR      	R0,R5			;rr1|=0x2000;
00294A E04A     	MOV     	#4A,R0		;
00294C CC28     	TST.B   	#28,@(R0,GBR)	;
00294E 8902     	BT      	L002956		;if (cd_flags & 0x28 != 0) {
002950 9035     	MOV.W   	@(#06A,PC),R0	;  rr1&=0xF0FF;
002952 A00A     	BRA     	L00296A		;
002954 2509     	AND     	R0,R5			;
L002956:
002956 E04B     	MOV     	#4B,R0		;
002958 CC08     	TST.B   	#08,@(R0,GBR)	;
00295A 8906     	BT      	L00296A		;} else if (@(0x0F00025C+0x4B).b & 0x08 != 0) {
00295C 9031     	MOV.W   	@(#062,PC),R0	;
00295E 2509     	AND     	R0,R5			;  rr1&= 0xF000;
002960 9030     	MOV.W   	@(#060,PC),R0	;
002962 250B     	OR      	R0,R5			;  rr1|= 0x09FF;
002964 E6FF     	MOV     	#FF,R6		;  rr2 = 0xFFFF;
002966 E7FF     	MOV     	#FF,R7		;  rr3 = 0xFFFF;
002968 E8FF     	MOV     	#FF,R8		;  rr4 = 0xFFFF;
L00296A:							;}
00296A D40D     	MOV.L   	@(#034,PC),R4	;
00296C D90D     	MOV.L   	@(#034,PC),R9	;
00296E DA0E     	MOV.L   	@(#038,PC),R10	;
002970 DB0E     	MOV.L   	@(#038,PC),R11	;
002972 D30A     	MOV.L   	@(#028,PC),R3	;
002974 0102     	STC     	SR, R1		;//save SR
002976 D208     	MOV.L   	@(#020,PC),R2	;
002978 221B     	OR      	R1,R2			;
00297A 420E     	LDC     	R2,SR			;SH1.SR|= 0x000000F0;
00297C 6031     	MOV.W   	@R3,R0		;
00297E C802     	TST     	#02,R0		;
002980 8903     	BT      	L00298A		;if (YGR.REG04 & 0x02 != 0) {
002982 2451     	MOV.W   	R5,@R4		;  RR1 = rr1;
002984 2961     	MOV.W   	R6,@R9		;  RR2 = rr2;
002986 2A71     	MOV.W   	R7,@R10		;  RR3 = rr3;
002988 2B81     	MOV.W   	R8,@R11		;  RR4 = rr4;
L00298A:							;}
00298A 410E     	LDC     	R1,SR			;//restore SR
00298C D108     	MOV.L   	@(#020,PC),R1	;
00298E E004     	MOV     	#04,R0		;
002990 4018     	SHLL8   	R0			;
002992 2101     	MOV.W   	R0,@R1		;HIRQ = 0x0400;
002994 AEFF     	BRA     	L002796		;
002996 0009     	NOP     				;
002998 000000F0
00299C 0A000004
0029A0 0A000010
0029A4 0A000012
0029A8 0A000014
0029AC 0A000016
0029B0 0A00001E
0029B4 05FFFF80
0029B8 0F0007B0
0029BC 2000
0029BE F0FF
0029C0 20FF
0029C2 F000
0029C4 09FF
0029C6 0009
L0029C8:
0029C8 00003AA8
0029CC 000031C4
0029D0 00003650
0029D4 00003680
0029D8 0000368E
0029DC 000036C0
0029E0 000036DC
0029E4 000036FE
0029E8 00003728
0029EC 00003730
0029F0 00003754
0029F4 00003778
0029F8 00002D06
0029FC 00002D7A
002A00 00002D7E
002A04 00002DC8
002A08 00003004
002A0C 00002EBC
002A10 00003084
002A14 000030A0
002A18 000030B8
002A1C 00003178
002A20 00003208
002A24 00003250
002A28 000035E4
002A2C 0000360E
L002A30:
002A30 000037C4
002A34 000037FE

L002A38:							;
002A38 E0FF     	MOV     	#FF,R0		;
002A3A D20B     	MOV.L   	@(#02C,PC),R2	;
002A3C D10B     	MOV.L   	@(#02C,PC),R1	;u32* ptr = 0x09000204;
L002A3E:
002A3E 3120     	CMP/EQ 	R2,R1			;while (1) {
002A40 8901     	BT      	L002A46		;  if (ptr == 0x09000000) break
002A42 2106     	MOV.L   	R0,@-R1		;  ptr--; *ptr = 0xFFFFFFFF;
002A44 8BFB     	BF      	L002A3E		;}
L002A46:
002A46 E003     	MOV     	#03,R0		;
002A48 CD7F     	AND.B   	#7F,@(R0,GBR)	;*(u8*)(0x0F00025C+03)&= 0x7F;
002A4A D110     	MOV.L   	@(#040,PC),R1	;
002A4C E000     	MOV     	#00,R0		;
002A4E 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000214 = 0x00000000;
002A50 2106     	MOV.L   	R0,@-R1		;*(u32*)0x09000210 = 0x00000000;
002A52 2102     	MOV.L   	R0,@R1		;*(u32*)0x0900020C = 0x00000000;
002A54 C221     	MOV.L   	R0,@(#084,GBR)	;*(u32*)(0x0F00025C+0x84) = 0x00000000;
002A56 C222     	MOV.L   	R0,@(#088,GBR)	;*(u32*)(0x0F00025C+0x88) = 0x00000000;
002A58 C223     	MOV.L   	R0,@(#08C,GBR)	;*(u32*)(0x0F00025C+0x8C) = 0x00000000;
002A5A 000B     	RTS     				;
002A5C 0009     	NOP     				;
002A5E 0009     	NOP     				;
002A60 0F00025C
002A64 0F000304
002A68 09000000
002A6C 09000204
002A70 0F000314
002A74 05FFFEC0
002A78 05FFFF00
002A7C 05FF
002A7E FF80
002A80 0306
002A82 0000
002A84 0306
002A86 0002
002A88 0A00001A
002A8C 09000218

L002A90:							;
002A90 4F22     	STS.L   	PR,@-R15		;
002A92 B3E0     	BRS     	L003256		;L00418C();
002A94 0009     	NOP     				;
002A96 4F26     	LDS.L   	@R15+,PR		;
002A98 4F22     	STS.L   	PR,@-R15		;
002A9A BFCD     	BRS     	L002A38		;L002A38();
002A9C 0009     	NOP     				;
002A9E 4F26     	LDS.L   	@R15+,PR		;
002AA0 DB07     	MOV.L   	@(#01C,PC),R11	;
002AA2 C321     	TRAPA   	#33			;add_task_to_queue(0x07060000);
002AA4 D107     	MOV.L   	@(#01C,PC),R1	;
002AA6 E020     	MOV     	#20,R0		;
002AA8 2101     	MOV.W   	R0,@R1		;YGR.HIRQ = 0x0020;
002AAA E04A     	MOV     	#4A,R0		;
002AAC CD3A     	AND.B   	#3A,@(R0,GBR)	;cd_flags&= 0x3A;
002AAE E04B     	MOV     	#4B,R0		;
002AB0 CD10     	AND.B   	#10,@(R0,GBR)	;*(u8*)(0x0F00025c+0x4B).b&= 0x10;
002AB2 E003     	MOV     	#03,R0		;
002AB4 CD3F     	AND.B   	#3F,@(R0,GBR)	;*(u8*)(0x0F00025c+0x03).b&= 0x3F;
002AB6 DB04     	MOV.L   	@(#010,PC),R11	;
002AB8 C325     	TRAPA   	#37			;TRAP_37(0x06060000)
002ABA 000B     	RTS     				;
002ABC 0009     	NOP     				;
002ABE 0009     	NOP     				;
002AC0 07060000
002AC4 0A00001E
002AC8 06060000
002ACC 0000
002ACE 0000
002AD0 0000
002AD2 0000
002AD4 0000
002AD6 0001

L002AD8:							;(arg1,arg2)	//arg1-R0,arg2-R11
002AD8 8883     	CMP/EQ  	#83,R0		;
002ADA 8B1E     	BF      	L002B1A		;
002ADC C47F     	MOV.B   	@(#07F,GBR),R0	;
002ADE 8801     	CMP/EQ  	#01,R0		;
002AE0 8B1B     	BF      	L002B1A		;if (arg1 != 0x83 || cdd_rx_data.done != 0x01) goto L002796;
002AE2 A006     	BRA     	L002AF2		;
002AE4 0009     	NOP     				;

002AE6 C475     	MOV.B   	@(#075,GBR),R0	;
002AE8 C90F     	AND     	#0F,R0		;
002AEA 8801     	CMP/EQ  	#01,R0		;
002AEC 8B15     	BF      	#02A			;
002AEE C47B     	MOV.B   	@(#07B,GBR),R0	;
002AF0 C0A2     	MOV.B   	R0,@(#0A2,GBR)	;
L002AF2:
002AF2 C474     	MOV.B   	@(#074,GBR),R0	;
002AF4 8880     	CMP/EQ  	#80,R0		;
002AF6 896E     	BT      	L002BD6		;if (cdd_rx_data.stat == 0x80) goto L002BD6;
002AF8 8881     	CMP/EQ  	#81,R0		;
002AFA 8965     	BT      	L002BC8		;if (cdd_rx_data.stat == 0x81) goto L002BC8;
002AFC 8883     	CMP/EQ  	#83,R0		;
002AFE 8974     	BT      	L002BEA		;if (cdd_rx_data.stat == 0x83) goto L002BEA;
002B00 C808     	TST     	#08,R0		;
002B02 600C     	EXTU.B   	R0,R0			;
002B04 4009     	SHLR2   	R0			;
002B06 4009     	SHLR2   	R0			;
002B08 8901     	BT      	L002B0E		;
002B0A 8808     	CMP/EQ  	#08,R0		;if (cdd_rx_data.stat & 0x08 != 0x00 &&
002B0C 8975     	BT      	L002BFA		;    cdd_rx_data.stat & 0xF0 == 0x80) goto L002BFA;
L002B0E:
002B0E 4F22     	STS.L   	PR,@-R15		;
002B10 B046     	BRS     	L002BA0		;make_readtoc_cmd(0x01);
002B12 E001     	MOV     	#01,R0		;
002B14 4F26     	LDS.L   	@R15+,PR		;
002B16 A06D     	BRA     	L002BF4		;goto L002BF4;
002B18 0009     	NOP     				;
L002B1A:
002B1A AE3C     	BRA     	L002796		;
002B1C 0009     	NOP     				;

L002B1E:							;(arg1,arg2)	//arg1-R0,arg2-R11
002B1E 8881     	CMP/EQ  	#81,R0		;
002B20 8B12     	BF      	L002B48		;if (arg1 == 0x81) {
002B22 60B3     	MOV     	R11,R0		;
002B24 8802     	CMP/EQ  	#02,R0		;
002B26 8B07     	BF      	L002B38		;  if (arg2 == 0x02) {
002B28 C449     	MOV.B   	@(#049,GBR),R0	;
002B2A 8811     	CMP/EQ  	#11,R0		;
002B2C 8902     	BT      	L002B34		;    if (cd_state != 0x11) {
002B2E E04A     	MOV     	#4A,R0		;      cd_flags&=0xF7
002B30 A034     	BRA     	L002B9C		;      goto L002796;
002B32 CDF7     	AND.B   	#F7,@(R0,GBR)	;    }
L002B34:
002B34 A09A     	BRA     	L002C6C		;    goto L002C6C;
002B36 0009     	NOP     				;  }
L002B38:
002B38 60C3     	MOV     	R12,R0		;
002B3A C209     	MOV.L   	R0,@(#024,GBR)	;  *(u32*)(0x0F00025C+0x24) = R12;
L002B3C:
002B3C 4F22     	STS.L   	PR,@-R15		;
002B3E B02F     	BRS     	L002BA0		;  make_readtoc_cmd();
002B40 E001     	MOV     	#01,R0		;
002B42 4F26     	LDS.L   	@R15+,PR		;
002B44 A04E     	BRA     	L002BE4		;  goto L002BE4;
002B46 0009     	NOP     				;}
L002B48:
002B48 8807     	CMP/EQ  	#07,R0		;if (arg1 == 0x07) {
002B4A 8B04     	BF      	L002B56		;
002B4C 60B3     	MOV     	R11,R0		;
002B4E 8800     	CMP/EQ  	#00,R0		;
002B50 89F2     	BT      	L002B38		;  if (arg2 == 0x00) goto L002B38;
002B52 A023     	BRA     	L002B9C		;  goto L002796;
002B54 0009     	NOP     				;}
L002B56:
002B56 8883     	CMP/EQ  	#83,R0		;
002B58 8B20     	BF      	L002B9C		;if (arg1 != 0x83) goto L002796;
002B5A 4F22     	STS.L   	PR,@-R15		;
002B5C B072     	BRS     	L002C44		;
002B5E 0009     	NOP     				;
002B60 4F26     	LDS.L   	@R15+,PR		;
002B62 8B19     	BF      	L002B98		;if (!cdd_rx_done()) goto L0028B0;
002B64 C474     	MOV.B   	@(#074,GBR),R0	;
002B66 8882     	CMP/EQ  	#82,R0		;
002B68 89E8     	BT      	L002B3C		;if (cdd_rx_data.stat == 0x82) goto L002B3C;
002B6A 8880     	CMP/EQ  	#80,R0		;
002B6C 8937     	BT      	#L002BDE		;if (cdd_rx_data.stat == 0x80) goto L002BDE;
002B6E 8881     	CMP/EQ  	#81,R0		;
002B70 892E     	BT      	L002BD0		;if (cdd_rx_data.stat == 0x81) goto L002BD0;
002B72 8883     	CMP/EQ  	#83,R0		;
002B74 8939     	BT      	L002BEA		;if (cdd_rx_data.stat == 0x83) goto L002BEA;
002B76 C808     	TST     	#08,R0		;
002B78 600C     	EXTU.B   	R0,R0			;
002B7A 4009     	SHLR2   	R0			;
002B7C 4009     	SHLR2   	R0			;
002B7E 8901     	BT      	L002B84		;
002B80 8808     	CMP/EQ  	#08,R0		;if (cdd_rx_data.stat & 0x08 != 0x00 &&
002B82 8932     	BT      	L002BEA		;    cdd_rx_data.stat & 0xF0 == 0x80) goto L002BEA;
L002B84:
002B84 4F22     	STS.L   	PR,@-R15		;
002B86 B00B     	BRS     	L002BA0		;make_readtoc_cmd(cdd_rx_data.stat>>4);
002B88 E001     	MOV     	#01,R0		;
002B8A 4F26     	LDS.L   	@R15+,PR		;
002B8C A032     	BRA     	L002BF4		;goto L002BF4;
002B8E 0009     	NOP     				;

L002B90:							;
002B90 8803     	CMP/EQ  	#03,R0		;
002B92 8932     	BT      	L002BFA		;
002B94 8805     	CMP/EQ  	#05,R0		;if (cdd_rx_data.stat & 0xF0 == 0x30 ||
002B96 8930     	BT      	L002BFA		;    cdd_rx_data.stat & 0xF0 == 0x50) goto L002BFA;
L002B98:
002B98 AE8A     	BRA     	L0028B0		;
002B9A 0009     	NOP     				;
L002B9C:
002B9C ADFB     	BRA     	L002796		;
002B9E 0009     	NOP     				;

L002BA0:							;make_readtoc_cmd(u8 arg1)	//arg1-R0
002BA0 C02D     	MOV.B   	R0,@(#02D,GBR)	;*(u8*)(0x0F00025c+0x2D) = arg1;
002BA2 D106     	MOV.L   	@(#018,PC),R1	;u8 cmd[12] = {0x03,0x00,0x00,0x00,
002BA4 4028     	SHLL16  	R0			;              0x00,0x00,0x00,0x00,
002BA6 D206     	MOV.L   	@(#018,PC),R2	;              0x00,0x00,0xFF,0x01};
002BA8 D306     	MOV.L   	@(#018,PC),R3	;
002BAA 210B     	OR      	R0,R1			;cmd[1] = arg1;
002BAC E003     	MOV     	#03,R0		;
002BAE CF20     	OR .B   	#20,@(R0,GBR)	;*(u8*)(0x0F00025c+0x03)|= 0x20;
002BB0 4F22     	STS.L   	PR,@-R15		;
002BB2 B352     	BRS     	L00325A		;make_cdd_cmd(cmd);
002BB4 0009     	NOP     				;
002BB6 4F26     	LDS.L   	@R15+,PR		;
002BB8 000B     	RTS     				;
002BBA 0009     	NOP     				;
002BBC 03000000
002BC0 00000000
002BC4 0000FF01

L002BC8:
002BC8 4F22     	STS.L   	PR,@-R15		;
002BCA BF61     	BRS     	L002A90		;L002A90();
002BCC 0009     	NOP     				;
002BCE 4F26     	LDS.L   	@R15+,PR		;u8 new_state, new_status;
L002BD0:
002BD0 E011     	MOV     	#11,R0		;new_state = 0x11; new_status = 0x00;
002BD2 A018     	BRA     	L002C06		;
002BD4 E100     	MOV     	#00,R1		;
L002BD6:
002BD6 4F22     	STS.L   	PR,@-R15		;
002BD8 BF5A     	BRS     	L002A90		;L002A90()
002BDA 0009     	NOP     				;
002BDC 4F26     	LDS.L   	@R15+,PR		;
L002BDE:
002BDE E012     	MOV     	#12,R0		;new_state = 0x12; new_status = 0x06;
002BE0 A00E     	BRA     	L002C00		;
002BE2 E106     	MOV     	#06,R1		;
L002BE4:
002BE4 E013     	MOV     	#13,R0		;new_state = 0x13; new_status = 0x00;
002BE6 A00E     	BRA     	L002C06		;
002BE8 E100     	MOV     	#00,R1		;
L002BEA:
002BEA E000     	MOV     	#00,R0		;
002BEC C209     	MOV.L   	R0,@(#024,GBR)	;*(u8*)(0x0F00025C+0x24) = 0x00;
002BEE E014     	MOV     	#14,R0		;new_state = 0x14; new_status = 0x07;
002BF0 A006     	BRA     	L002C00		;
002BF2 E107     	MOV     	#07,R1		;
L002BF4:							;
002BF4 E015     	MOV     	#15,R0		;new_state = 0x15; new_status = 0x00;
002BF6 A006     	BRA     	L002C06		;
002BF8 E100     	MOV     	#00,R1		;
L002BFA:
002BFA E099     	MOV     	#99,R0		;new_state = 0x99; new_status = 0x0A;
002BFC A000     	BRA     	L002C00		;
002BFE E10A     	MOV     	#0A,R1		;
L002C00:
002C00 D20F     	MOV.L   	@(#03C,PC),R2	;void* func = L00450;
002C02 A001     	BRA     	L002C08		;
002C04 0009     	NOP     				;
L002C06:
002C06 D20D     	MOV.L   	@(#034,PC),R2	;void* func = L0044F4;
L002C08:
002C08 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = new_state;
002C0A 6013     	MOV     	R1,R0			;
002C0C C02E     	MOV.B   	R0,@(#02E,GBR)	;cd_status = new_statu;
002C0E 4F22     	STS.L   	PR,@-R15		;
002C10 420B     	JSR     	@R2			;func();
002C12 0009     	NOP     				;
002C14 4F26     	LDS.L   	@R15+,PR		;
002C16 6083     	MOV     	R8,R0			;
002C18 8883     	CMP/EQ  	#83,R0		;
002C1A 8B01     	BF      	L002C20		;
002C1C AE48     	BRA     	L0028B0		;
002C1E 0009     	NOP     				;
L002C20:
002C20 ADB9     	BRA     	L002796		;
002C22 0009     	NOP     				;

L002C24:
002C24 E015     	MOV     	#15,R0		;
002C26 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x15;
002C28 E000     	MOV     	#00,R0		;
002C2A C02E     	MOV.B   	R0,@(#02E,GBR)	;cd_status = 0x00;
002C2C D003     	MOV.L   	@(#00C,PC),R0	;
002C2E 4F22     	STS.L   	PR,@-R15		;
002C30 400B     	JSR     	@R0			;set_cd_status(); //L0044F4
002C32 0009     	NOP     				;
002C34 4F26     	LDS.L   	@R15+,PR		;
002C36 A60F     	BRA     	L003858		;L003858();
002C38 0009     	NOP     				;
002C3A 0009     	NOP     				;
002C3C 000044F4
002C40 0000450A

L002C44:							;bool cdd_rx_done()
002C44 E04B     	MOV     	#4B,R0		;
002C46 CDEF     	AND.B   	#EF,@(R0,GBR)	;*(u8*)(0x0F00025C+0x4B)&= 0xEF;
002C48 C47F     	MOV.B   	@(#07F,GBR),R0	;
002C4A 8801     	CMP/EQ  	#01,R0		;
002C4C 8B02     	BF      	L002C54		;
002C4E E04A     	MOV     	#4A,R0		;
002C50 CC20     	TST.B   	#20,@(R0,GBR)	;
002C52 89FF     	BT      	L002C54		;
L002C54:
002C54 000B     	RTS     				;return (cdd_rx_data.done == 0x01) && (cd_flags & 0x20 == 0);
002C56 0009     	NOP     				;

L002C58:							;(R0-arg1)
002C58 8881     	CMP/EQ  	#81,R0		;
002C5A 8B10     	BF      	L002C7E		;if (arg1 == 0x81) {
002C5C 60B3     	MOV     	R11,R0		;
002C5E 8802     	CMP/EQ  	#02,R0		;
002C60 8904     	BT      	L002C6C		;
L002C62:
002C62 E04A     	MOV     	#4A,R0		;
002C64 CDF7     	AND.B   	#F7,@(R0,GBR)	;
002C66 60C3     	MOV     	R12,R0		;
002C68 A031     	BRA     	L002CCE		;
002C6A C209     	MOV.L   	R0,@(#024,GBR)	;
L002C6C:
002C6C D11D     	MOV.L   	@(#074,PC),R1	;  u8 cmd[12] = {0x0C,0x00,0x00,0x00,
002C6E D21E     	MOV.L   	@(#078,PC),R2	;                0x00,0x00,0x00,0x00,
002C70 D31E     	MOV.L   	@(#078,PC),R3	;                0x00,0x00,0x00,0x01};
002C72 4F22     	STS.L   	PR,@-R15		;
002C74 B2F1     	BRS     	L004148		;  make_cdd_cmd(cmd);
002C76 0009     	NOP     				;
002C78 4F26     	LDS.L   	@R15+,PR		;
002C7A AFA5     	BRA     	L002BC8		;  goto L002BC8;
002C7C 0009     	NOP     				;}
L002C7E:
002C7E 8807     	CMP/EQ  	#07,R0		;
002C80 8B04     	BF      	L002C8C		;else if (arg1 == 0x07) {
002C82 60B3     	MOV     	R11,R0		;
002C84 8800     	CMP/EQ  	#00,R0		;
002C86 89EC     	BT      	L002C62		;
002C88 A021     	BRA     	L002CCE		;
002C8A 0009     	NOP     				;}
L002C8C:
002C8C 8883     	CMP/EQ  	#83,R0		;
002C8E 8B1E     	BF      	L002CCE		;else if (arg1 == 0x83) {
002C90 4F22     	STS.L   	PR,@-R15		;
002C92 BFD7     	BRS     	L002C44		;
002C94 0009     	NOP     				;
002C96 4F26     	LDS.L   	@R15+,PR		;
002C98 8B17     	BF      	L002CCA		;  if (!cdd_rx_done()) goto L0028B0;
002C9A C474     	MOV.B   	@(#074,GBR),R0	;
002C9C 8880     	CMP/EQ  	#80,R0		;
002C9E 899A     	BT      	L002BD6		;  if (cdd_rx_data.stat == 0x80) goto L002BD6;
002CA0 8881     	CMP/EQ  	#81,R0		;
002CA2 8991     	BT      	L002BC8		;  if (cdd_rx_data.stat == 0x81) goto L002BC8;
002CA4 8883     	CMP/EQ  	#83,R0		;
002CA6 89A0     	BT      	L002BEA		;  if (cdd_rx_data.stat == 0x83) goto L002BEA;
002CA8 C808     	TST     	#08,R0		;
002CAA 600C     	EXTU.B   	R0,R0			;
002CAC 4009     	SHLR2   	R0			;
002CAE 4009     	SHLR2   	R0			;
002CB0 8901     	BT      	L002CB6		;
002CB2 8808     	CMP/EQ  	#08,R0		;  if (cdd_rx_data.stat & 0x08 != 0x00
002CB4 89A1     	BT      	L002BFA		;      cdd_rx_data.stat & 0xF0 == 0x80) goto L002BFA;
L002CB6:
002CB6 8800     	CMP/EQ  	#00,R0		;
002CB8 89B4     	BT      	L002C24		;  if (cdd_rx_data.stat & 0xF0 == 0x00) goto L002BFA;
002CBA 8809     	CMP/EQ  	#09,R0		;
002CBC 8909     	BT      	L002CD2		;  if (cdd_rx_data.stat & 0xF0 == 0x90) goto L0039EC;
002CBE 8801     	CMP/EQ  	#01,R0		;
002CC0 8998     	BT      	L002BF4		;  if (cdd_rx_data.stat & 0xF0 == 0x10) goto L002BFA;
002CC2 8804     	CMP/EQ  	#04,R0		;
002CC4 8907     	BT      	L002CD6		;  if (cdd_rx_data.stat & 0xF0 == 0x40) goto L002CD6;
L002CC6:
002CC6 AF63     	BRA     	L002B90		;
002CC8 0009     	NOP     				;
L002CCA:
002CCA ADF1     	BRA     	L0028B0		;
002CCC 0009     	NOP     				;}
L002CCE:
002CCE AD62     	BRA     	L002796		;
002CD0 0009     	NOP     				;
L002CD2:							;
002CD2 A68B     	BRA     	L0039EC		;
002CD4 0009     	NOP     				;
L002CD6:							;
002CD6 6103     	MOV     	R0,R1			;
002CD8 C449     	MOV.B   	@(#049,GBR),R0	;
002CDA 8816     	CMP/EQ  	#16,R0		;
002CDC 6013     	MOV     	R1,R0			;
002CDE 8BF2     	BF      	L002CC6		;if (cd_state != 0x16) goto L002B90;
002CE0 A6D0     	BRA     	L003A84		;goto L003A84;
002CE2 0009     	NOP     				;
002CE4 0C000000
002CE8 00000000
002CEC 00000001

L002CF0:							;(arg1,arg2)	//arg1-R0,arg2-R11
002CF0 8881     	CMP/EQ  	#81,R0		;
002CF2 89BB     	BT      	L002C6C		;if (arg1 == 0x81) goto L002C6C;
002CF4 8807     	CMP/EQ  	#07,R0		;
002CF6 8B04     	BF      	L002D02		;if (arg1 != 0x07) goto L002C8C;
002CF8 60B3     	MOV     	R11,R0		;
002CFA 8800     	CMP/EQ  	#00,R0		;
002CFC 89B6     	BT      	L002C6C		;
002CFE AD4A     	BRA     	L002796		;
002D00 0009     	NOP     				;
L002D02:
002D02 AFC3     	BRA     	L002C8C		;
002D04 0009     	NOP     				;

L002D06:
002D06 E000     	MOV     	#00,R0		;
002D08 C000     	MOV.B   	R0,@(#000,GBR)	;init_cd_flags = 0x00;
002D0A C001     	MOV.B   	R0,@(#001,GBR)	;0x00->@(0x0F00025c+0x01).b
002D0C C201     	MOV.L   	R0,@(#004,GBR)	;init_cd_stby = 0x0000; init_cd_ecc = init_cd_retry = 0x00;
002D0E C20F     	MOV.L   	R0,@(#03C,GBR)	;*(u32*)(0x0F00025c+0x3C) = 0x00000000;
002D10 C210     	MOV.L   	R0,@(#040,GBR)	;*(u32*)(0x0F00025c+0x40) = 0x00000000;
002D12 C202     	MOV.L   	R0,@(#008,GBR)	;*(u32*)(0x0F00025c+0x08) = 0x00000000;
002D14 C203     	MOV.L   	R0,@(#00C,GBR)	;*(u32*)(0x0F00025c+0x0C) = 0x00000000;
002D16 C02F     	MOV.B   	R0,@(#02F,GBR)	;*(u8*)(0x0F00025c+0x2F).b = 0x00;
002D18 E04A     	MOV     	#4A,R0		;
002D1A CD28     	AND.B   	#28,@(R0,GBR)	;cd_flags&= 0x28;
002D1C E04B     	MOV     	#4B,R0		;
002D1E CD10     	AND.B   	#10,@(R0,GBR)	;*(u8*)(0x0F00025c+0x4B).b&= 0x10;
002D20 2F96     	MOV.L   	R9,@-R15		;
002D22 2FA6     	MOV.L   	R10,@-R15		;
002D24 4F13     	STC.L   	GBR,@-R15		;
002D26 4F22     	STS.L   	PR,@-R15		;
002D28 D012     	MOV.L   	@(#048,PC),R0	;
002D2A 401E     	LDC     	R0,GBR		;
002D2C C601     	MOV.L   	@(#004,GBR),R0	;
002D2E 2F06     	MOV.L   	R0,@-R15		;u16 ipra = SH1.INTC.IPRA;
002D30 C602     	MOV.L   	@(#008,GBR),R0	;
002D32 2F06     	MOV.L   	R0,@-R15		;u16 iprc = SH1.INTC.IPRC;
002D34 E000     	MOV     	#00,R0		;
002D36 C201     	MOV.L   	R0,@(#004,GBR)	;SH1.INTC.IPRA = 0x0000; SH1.INTC.IPRB = 0x0000;
002D38 C202     	MOV.L   	R0,@(#008,GBR)	;SH1.INTC.IPRC = 0x0000; SH1.INTC.IPRD = 0x0000;
002D3A C32E     	TRAPA   	#46			;task_func_list_init_and_run_task6();
002D3C D00D     	MOV.L   	@(#034,PC),R0	;
002D3E 401E     	LDC     	R0,GBR		;
002D40 60F6     	MOV.L   	@R15+,R0		;
002D42 C202     	MOV.L   	R0,@(#008,GBR)	;SH1.INTC.IPRC = temp2;
002D44 60F6     	MOV.L   	@R15+,R0		;
002D46 C201     	MOV.L   	R0,@(#004,GBR)	;SH1.INTC.IPRA = temp1;
002D48 4F26     	LDS.L   	@R15+,PR		;
002D4A 4F17     	LDC.L   	@R15+,GBR		;
002D4C 6AF6     	MOV.L   	@R15+,R10		;
002D4E 69F6     	MOV.L   	@R15+,R9		;
002D50 D107     	MOV.L   	@(#01C,PC),R1	;
002D52 9011     	MOV.W   	@(#022,PC),R0	;
002D54 2101     	MOV.W   	R0,@R1		;YGR.HRIQ = 0x0BC1;
002D56 C42E     	MOV.B   	@(#02E,GBR),R0	;
002D58 8800     	CMP/EQ  	#00,R0		;
002D5A 8905     	BT      	L002D68		;
002D5C 8806     	CMP/EQ  	#06,R0		;
002D5E 8903     	BT      	L002D68		;
002D60 8807     	CMP/EQ  	#07,R0		;
002D62 8901     	BT      	L002D68		;if (cd_status == 0 || cd_status == 6 || cd_status == 7) {
002D64 A1A8     	BRA     	L0030B8		;  goto L0030B8;
002D66 0009     	NOP     				;}
L002D68:
002D68 E04A     	MOV     	#4A,R0		;
002D6A CDF7     	AND.B   	#F7,@(R0,GBR)	;cd_flags&= 0xF7;
002D6C 000B     	RTS     				;
002D6E 0009     	NOP     				;
002D70 0A00001E
002D74 05FFFF80
002D78 0BC1
002D7A 000B     	RTS     				;
002D7C 0009     	NOP     				;

002D7E E003     	MOV     	#03,R0		;
002D80 CC40     	TST.B   	#40,@(R0,GBR)	;
002D82 8905     	BT      	L002D90		;
002D84 CDBF     	AND.B   	#BF,@(R0,GBR)	;
002D86 E000     	MOV     	#00,R0		;
002D88 C20F     	MOV.L   	R0,@(#03C,GBR)	;
002D8A C210     	MOV.L   	R0,@(#040,GBR)	;
002D8C DB0D     	MOV.L   	@(#034,PC),R11	;
002D8E C321     	TRAPA   	#33			;add_task_to_queue(0x07060003);
L002D90:
002D90 4F22     	STS.L   	PR,@-R15		;
002D92 BE7D     	BRS     	#1CFA			;
002D94 0009     	NOP     				;
002D96 4F26     	LDS.L   	@R15+,PR		;
002D98 D107     	MOV.L   	@(#01C,PC),R1	;
002D9A D208     	MOV.L   	@(#020,PC),R2	;
002D9C D308     	MOV.L   	@(#020,PC),R3	;
002D9E 4F22     	STS.L   	PR,@-R15		;
002DA0 B25B     	BRS     	#04B6			;
002DA2 0009     	NOP     				;
002DA4 4F26     	LDS.L   	@R15+,PR		;
002DA6 E011     	MOV     	#11,R0		;
002DA8 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x1;
002DAA E000     	MOV     	#00,R0		;cd_status = 0x00;
002DAC 4F22     	STS.L   	PR,@-R15		;
002DAE B44D     	BRS     	L00364C		;L00364C();
002DB0 C02E     	MOV.B   	R0,@(#02E,GBR)	;
002DB2 4F26     	LDS.L   	@R15+,PR		;
002DB4 000B     	RTS     				;
002DB6 0009     	NOP     				;
002DB8 0C00
002DBA 0000
002DBC 0000
002DBE 0000
002DC0 0000
002DC2 0001
002DC4 07060003
002DC8 E04B     	MOV     	#4B,R0		;
002DCA CDD3     	AND.B   	#D3,@(R0,GBR)	;
002DCC C401     	MOV.B   	@(#001,GBR),R0	;
002DCE C97F     	AND     	#7F,R0		;
002DD0 E10F     	MOV     	#0F,R1		;
002DD2 3102     	CMP/HS 	R0,R1			;
002DD4 8B00     	BF      	#000			;
002DD6 C040     	MOV.B   	R0,@(#040,GBR)	;
002DD8 E000     	MOV     	#00,R0		;
002DDA C02F     	MOV.B   	R0,@(#02F,GBR)	;
002DDC C602     	MOV.L   	@(#008,GBR),R0	;
002DDE C20F     	MOV.L   	R0,@(#03C,GBR)	;
002DE0 E001     	MOV     	#01,R0		;
002DE2 C03C     	MOV.B   	R0,@(#03C,GBR)	;
002DE4 C440     	MOV.B   	@(#040,GBR),R0	;
002DE6 C00C     	MOV.B   	R0,@(#00C,GBR)	;
002DE8 C603     	MOV.L   	@(#00C,GBR),R0	;
002DEA A047     	BRA     	#008E			;
002DEC C210     	MOV.L   	R0,@(#040,GBR)	;
002DEE E800     	MOV     	#00,R8		;
002DF0 A007     	BRA     	#000E			;
002DF2 277A     	XOR     	R7,R7			;
002DF4 643C     	EXTU.B   	R3,R4			;
002DF6 4319     	SHLR8   	R3			;
002DF8 4F22     	STS.L   	PR,@-R15		;
002DFA B236     	BRS     	#046C			;
002DFC 0009     	NOP     				;
002DFE 4F26     	LDS.L   	@R15+,PR		;
002E00 6743     	MOV     	R4,R7			;
002E02 6603     	MOV     	R0,R6			;
002E04 E04A     	MOV     	#4A,R0		;
002E06 CDFB     	AND.B   	#FB,@(R0,GBR)	;
002E08 D01B     	MOV.L   	@(#06C,PC),R0	;
002E0A 3060     	CMP/EQ 	R6,R0			;
002E0C 8B06     	BF      	#00C			;
002E0E D119     	MOV.L   	@(#064,PC),R1	;
002E10 6012     	MOV.L   	@R1,R0		;
002E12 4018     	SHLL8   	R0			;
002E14 4019     	SHLR8   	R0			;
002E16 C211     	MOV.L   	R0,@(#044,GBR)	;
002E18 6603     	MOV     	R0,R6			;
002E1A E700     	MOV     	#00,R7		;
002E1C 2668     	TST     	R6,R6			;
002E1E 8B03     	BF      	#006			;
002E20 764B     	ADD     	#4B,R6		;
002E22 764B     	ADD     	#4B,R6		;
002E24 6063     	MOV     	R6,R0			;
002E26 C211     	MOV.L   	R0,@(#044,GBR)	;
002E28 E004     	MOV     	#04,R0		;
002E2A C02E     	MOV.B   	R0,@(#02E,GBR)	;cd_status = 0x04;

L002E2C:							;(R6-lba,R7-arg2,R8-arg3)
002E2C E04A     	MOV     	#4A,R0		;
002E2E CF08     	OR .B   	#08,@(R0,GBR)	;cd_flags|= 0x08;
002E30 4F22     	STS.L   	PR,@-R15		;
002E32 B405     	BRS     	#080A			;
002E34 0009     	NOP     				;
002E36 4F26     	LDS.L   	@R15+,PR		;
002E38 4828     	SHLL16  	R8			;
002E3A D10B     	MOV.L   	@(#02C,PC),R1	;
002E3C 4818     	SHLL8   	R8			;
002E3E 6273     	MOV     	R7,R2			;
002E40 D30A     	MOV.L   	@(#028,PC),R3	;
002E42 216B     	OR      	R6,R1			;
002E44 238B     	OR      	R8,R3			;
002E46 4F22     	STS.L   	PR,@-R15		;
002E48 B205     	BRS     	#040A			;
002E4A 0009     	NOP     				;
002E4C 4F26     	LDS.L   	@R15+,PR		;
002E4E 4F22     	STS.L   	PR,@-R15		;
002E50 B203     	BRS     	#0406			;
002E52 0009     	NOP     				;
002E54 4F26     	LDS.L   	@R15+,PR		;
002E56 E004     	MOV     	#04,R0		;
002E58 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x0;
002E5A DB05     	MOV.L   	@(#014,PC),R11	;
002E5C C325     	TRAPA   	#37			;TRAP_37();
002E5E E04A     	MOV     	#4A,R0		;
002E60 CF80     	OR .B   	#80,@(R0,GBR)	;cd_flags|= 0x80;
002E62 CDBE     	AND.B   	#BE,@(R0,GBR)	;cd_flags&= 0xBE;
002E64 000B     	RTS     				;
002E66 0009     	NOP     				;
002E68 0900
002E6A 0000
002E6C 0000
002E6E FF01
002E70 0606
002E72 0000
002E74 0900
002E76 01FC
002E78 00FF
002E7A FFFF
002E7C C610     	MOV.L   	@(#040,GBR),R0	;
002E7E 4018     	SHLL8   	R0			;
002E80 4019     	SHLR8   	R0			;
002E82 8800     	CMP/EQ  	#00,R0		;
002E84 8B04     	BF      	#008			;
002E86 D10C     	MOV.L   	@(#030,PC),R1	;
002E88 6012     	MOV.L   	@R1,R0		;
002E8A 4018     	SHLL8   	R0			;
002E8C A00C     	BRA     	#0018			;
002E8E 4019     	SHLR8   	R0			;
002E90 C43C     	MOV.B   	@(#03C,GBR),R0	;
002E92 8800     	CMP/EQ  	#00,R0		;
002E94 8901     	BT      	#002			;
002E96 A007     	BRA     	#000E			;
002E98 E0FF     	MOV     	#FF,R0		;
002E9A C610     	MOV.L   	@(#040,GBR),R0	;
002E9C 4018     	SHLL8   	R0			;
002E9E 4019     	SHLR8   	R0			;
002EA0 4F22     	STS.L   	PR,@-R15		;
002EA2 B393     	BRS     	#0726			;
002EA4 0009     	NOP     				;
002EA6 4F26     	LDS.L   	@R15+,PR		;
002EA8 C20A     	MOV.L   	R0,@(#028,GBR)	;
002EAA E0FF     	MOV     	#FF,R0		;
002EAC C220     	MOV.L   	R0,@(#080,GBR)	;
002EAE E001     	MOV     	#01,R0		;
002EB0 CC80     	TST.B   	#80,@(R0,GBR)	;
002EB2 8925     	BT      	#04A			;
002EB4 8B0F     	BF      	#01E			;
002EB6 0009     	NOP     				;
002EB8 0900
002EBA 01FC     	MOV.B   	@(R0,R15),R1	;
002EBC E04B     	MOV     	#4B,R0		;
002EBE CDD3     	AND.B   	#D3,@(R0,GBR)	;
002EC0 C401     	MOV.B   	@(#001,GBR),R0	;
002EC2 C97F     	AND     	#7F,R0		;
002EC4 887F     	CMP/EQ  	#7F,R0		;
002EC6 89D9     	BT      	#1B2			;
002EC8 E10F     	MOV     	#0F,R1		;
002ECA 3102     	CMP/HS 	R0,R1			;
002ECC 8B00     	BF      	#000			;
002ECE C040     	MOV.B   	R0,@(#040,GBR)	;
002ED0 E000     	MOV     	#00,R0		;
002ED2 AFD3     	BRA     	#1FA6			;
002ED4 C02F     	MOV.B   	R0,@(#02F,GBR)	;
002ED6 C42E     	MOV.B   	@(#02E,GBR),R0	;
002ED8 8803     	CMP/EQ  	#03,R0		;
002EDA 8905     	BT      	#00A			;
002EDC 8801     	CMP/EQ  	#01,R0		;
002EDE 8907     	BT      	#00E			;
002EE0 8802     	CMP/EQ  	#02,R0		;
002EE2 8905     	BT      	#00A			;
002EE4 A013     	BRA     	#0026			;
002EE6 0009     	NOP     				;
002EE8 E04A     	MOV     	#4A,R0		;
002EEA CDF7     	AND.B   	#F7,@(R0,GBR)	;
002EEC 000B     	RTS     				;
002EEE 0009     	NOP     				;
002EF0 E04A     	MOV     	#4A,R0		;
002EF2 CC01     	TST.B   	#01,@(R0,GBR)	;
002EF4 8B0B     	BF      	#016			;
002EF6 E0FF     	MOV     	#FF,R0		;
002EF8 C220     	MOV.L   	R0,@(#080,GBR)	;
002EFA E000     	MOV     	#00,R0		;
002EFC A01D     	BRA     	#003A			;
002EFE C002     	MOV.B   	R0,@(#002,GBR)	;
002F00 E001     	MOV     	#01,R0		;
002F02 CD7F     	AND.B   	#7F,@(R0,GBR)	;
002F04 C60F     	MOV.L   	@(#03C,GBR),R0	;
002F06 4F22     	STS.L   	PR,@-R15		;
002F08 B312     	BRS     	#0624			;
002F0A 0009     	NOP     				;
002F0C 4F26     	LDS.L   	@R15+,PR		;
002F0E E0FF     	MOV     	#FF,R0		;
002F10 C220     	MOV.L   	R0,@(#080,GBR)	;
002F12 E000     	MOV     	#00,R0		;
002F14 C002     	MOV.B   	R0,@(#002,GBR)	;
002F16 C444     	MOV.B   	@(#044,GBR),R0	;
002F18 8801     	CMP/EQ  	#01,R0		;
002F1A C611     	MOV.L   	@(#044,GBR),R0	;
002F1C 8905     	BT      	#00A			;
002F1E 8800     	CMP/EQ  	#00,R0		;
002F20 8B06     	BF      	#00C			;
002F22 E096     	MOV     	#96,R0		;
002F24 600C     	EXTU.B   	R0,R0			;
002F26 A003     	BRA     	#0006			;
002F28 C211     	MOV.L   	R0,@(#044,GBR)	;
002F2A C032     	MOV.B   	R0,@(#032,GBR)	;
002F2C 4019     	SHLR8   	R0			;
002F2E C031     	MOV.B   	R0,@(#031,GBR)	;
002F30 C444     	MOV.B   	@(#044,GBR),R0	;
002F32 6103     	MOV     	R0,R1			;
002F34 C43C     	MOV.B   	@(#03C,GBR),R0	;
002F36 3100     	CMP/EQ 	R0,R1			;
002F38 8B10     	BF      	#020			;
002F3A 4F22     	STS.L   	PR,@-R15		;
002F3C B1C2     	BRS     	#0384			;
002F3E 0009     	NOP     				;
002F40 4F26     	LDS.L   	@R15+,PR		;
002F42 890B     	BT      	#016			;
002F44 E001     	MOV     	#01,R0		;
002F46 CC80     	TST.B   	#80,@(R0,GBR)	;
002F48 8B01     	BF      	#002			;
002F4A A0CA     	BRA     	#0194			;
002F4C 0009     	NOP     				;
002F4E 4F22     	STS.L   	PR,@-R15		;
002F50 B72C     	BRS     	#0E58			;
002F52 0009     	NOP     				;
002F54 4F26     	LDS.L   	@R15+,PR		;
002F56 8BD3     	BF      	#1A6			;
002F58 A0AE     	BRA     	#015C			;
002F5A 0009     	NOP     				;
002F5C E0FF     	MOV     	#FF,R0		;
002F5E C220     	MOV.L   	R0,@(#080,GBR)	;
002F60 C444     	MOV.B   	@(#044,GBR),R0	;
002F62 8801     	CMP/EQ  	#01,R0		;
002F64 E800     	MOV     	#00,R8		;
002F66 277A     	XOR     	R7,R7			;
002F68 C611     	MOV.L   	@(#044,GBR),R0	;
002F6A 8B0F     	BF      	#01E			;
002F6C 630D     	EXTU.W   	R0,R3			;
002F6E 643C     	EXTU.B   	R3,R4			;
002F70 4319     	SHLR8   	R3			;
002F72 4F22     	STS.L   	PR,@-R15		;
002F74 B179     	BRS     	#02F2			;
002F76 0009     	NOP     				;
002F78 4F26     	LDS.L   	@R15+,PR		;
002F7A 6743     	MOV     	R4,R7			;
002F7C 2778     	TST     	R7,R7			;
002F7E 8B00     	BF      	#000			;
002F80 C211     	MOV.L   	R0,@(#044,GBR)	;
002F82 D11F     	MOV.L   	@(#07C,PC),R1	;
002F84 3010     	CMP/EQ 	R1,R0			;
002F86 8B01     	BF      	#002			;
002F88 AF31     	BRA     	#1E62			;
002F8A 0009     	NOP     				;
002F8C 6603     	MOV     	R0,R6			;
002F8E E04B     	MOV     	#4B,R0		;
002F90 CC04     	TST.B   	#04,@(R0,GBR)	;
002F92 E008     	MOV     	#08,R0		;
002F94 8B00     	BF      	#000			;
002F96 E004     	MOV     	#04,R0		;
002F98 C02E     	MOV.B   	R0,@(#02E,GBR)	;
002F9A E04A     	MOV     	#4A,R0		;
002F9C CF08     	OR .B   	#08,@(R0,GBR)	;
002F9E 4F22     	STS.L   	PR,@-R15		;
002FA0 B34E     	BRS     	#069C			;
002FA2 0009     	NOP     				;
002FA4 4F26     	LDS.L   	@R15+,PR		;
002FA6 E04B     	MOV     	#4B,R0		;
002FA8 CC20     	TST.B   	#20,@(R0,GBR)	;
002FAA 8B02     	BF      	#004			;
002FAC E030     	MOV     	#30,R0		;
002FAE CC40     	TST.B   	#40,@(R0,GBR)	;
002FB0 8905     	BT      	#00A			;
002FB2 C444     	MOV.B   	@(#044,GBR),R0	;
002FB4 8801     	CMP/EQ  	#01,R0		;
002FB6 8902     	BT      	#004			;
002FB8 C448     	MOV.B   	@(#048,GBR),R0	;
002FBA 360C     	ADD     	R0,R6			;
002FBC 76FF     	ADD     	#FF,R6		;
002FBE 4828     	SHLL16  	R8			;
002FC0 D10D     	MOV.L   	@(#034,PC),R1	;
002FC2 4818     	SHLL8   	R8			;
002FC4 6273     	MOV     	R7,R2			;
002FC6 D30D     	MOV.L   	@(#034,PC),R3	;
002FC8 216B     	OR      	R6,R1			;
002FCA 238B     	OR      	R8,R3			;
002FCC C402     	MOV.B   	@(#002,GBR),R0	;
002FCE 8806     	CMP/EQ  	#06,R0		;
002FD0 8903     	BT      	#006			;
002FD2 4F22     	STS.L   	PR,@-R15		;
002FD4 B13F     	BRS     	#027E			;
002FD6 0009     	NOP     				;
002FD8 4F26     	LDS.L   	@R15+,PR		;
002FDA 4F22     	STS.L   	PR,@-R15		;
002FDC B13D     	BRS     	#027A			;
002FDE 0009     	NOP     				;
002FE0 4F26     	LDS.L   	@R15+,PR		;
002FE2 E004     	MOV     	#04,R0		;
002FE4 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x04;
002FE6 DB03     	MOV.L   	@(#00C,PC),R11	;
002FE8 C325     	TRAPA   	#25			;
002FEA E04A     	MOV     	#4A,R0		;
002FEC CD3A     	AND.B   	#3A,@(R0,GBR)	;
002FEE 000B     	RTS     				;
002FF0 0009     	NOP     				;
002FF2 0009     	NOP     				;
002FF4 0606
002FF6 0000
002FF8 0600
002FFA 0000
002FFC 0000
002FFE FF01
003000 00FF
003002 FFFF
003004 E04B     	MOV     	#4B,R0		;
003006 CDD3     	AND.B   	#D3,@(R0,GBR)	;
003008 C401     	MOV.B   	@(#001,GBR),R0	;
00300A C97F     	AND     	#7F,R0		;
00300C E10F     	MOV     	#0F,R1		;
00300E 3102     	CMP/HS 	R0,R1			;
003010 8B00     	BF      	#000			;
003012 C040     	MOV.B   	R0,@(#040,GBR)	;
003014 E000     	MOV     	#00,R0		;
003016 C02F     	MOV.B   	R0,@(#02F,GBR)	;
003018 4F22     	STS.L   	PR,@-R15		;
00301A B279     	BRS     	#04F2			;
00301C 0009     	NOP     				;
00301E 4F26     	LDS.L   	@R15+,PR		;
003020 C20F     	MOV.L   	R0,@(#03C,GBR)	;
003022 6203     	MOV     	R0,R2			;
003024 D016     	MOV.L   	@(#058,PC),R0	;
003026 6000     	MOV.B   	@R0,R0		;
003028 8801     	CMP/EQ  	#01,R0		;
00302A 8B0D     	BF      	#01A			;
00302C 4F22     	STS.L   	PR,@-R15		;
00302E B305     	BRS     	#060A			;
003030 6103     	MOV     	R0,R1			;
003032 4F26     	LDS.L   	@R15+,PR		;
003034 4018     	SHLL8   	R0			;
003036 4019     	SHLR8   	R0			;
003038 D110     	MOV.L   	@(#040,PC),R1	;
00303A 3106     	CMP/HI 	R0,R1			;
00303C 8904     	BT      	#008			;
00303E 3018     	SUB     	R1,R0			;
003040 3026     	CMP/HI 	R2,R0			;
003042 8B01     	BF      	#002			;
003044 E04B     	MOV     	#4B,R0		;
003046 CF20     	OR .B   	#20,@(R0,GBR)	;
003048 C603     	MOV.L   	@(#00C,GBR),R0	;
00304A 8800     	CMP/EQ  	#00,R0		;
00304C 8910     	BT      	#020			;
00304E D10A     	MOV.L   	@(#028,PC),R1	;
003050 3100     	CMP/EQ 	R0,R1			;
003052 890B     	BT      	#016			;
003054 D107     	MOV.L   	@(#01C,PC),R1	;
003056 2109     	AND     	R0,R1			;
003058 2228     	TST     	R2,R2			;
00305A 8B01     	BF      	#002			;
00305C 714B     	ADD     	#4B,R1		;
00305E 714B     	ADD     	#4B,R1		;
003060 312C     	ADD     	R2,R1			;
003062 C440     	MOV.B   	@(#040,GBR),R0	;
003064 4028     	SHLL16  	R0			;
003066 4018     	SHLL8   	R0			;
003068 201B     	OR      	R1,R0			;
00306A C210     	MOV.L   	R0,@(#040,GBR)	;
00306C AF06     	BRA     	#1E0C			;
00306E 0009     	NOP     				;
003070 AFF7     	BRA     	#1FEE			;
003072 6103     	MOV     	R0,R1			;
003074 007F
003076 FFFF
003078 00FF
00307A FFFF     	
00307C 0000     	
00307E 08CA     	
003080 0900     	
003082 01F5     	MOV.W   	R15,@(R0,R1)	;
003084 E04B     	MOV     	#4B,R0		;
003086 CDD3     	AND.B   	#D3,@(R0,GBR)	;
003088 C602     	MOV.L   	@(#008,GBR),R0	;
00308A D104     	MOV.L   	@(#010,PC),R1	;
00308C 4F22     	STS.L   	PR,@-R15		;
00308E B24F     	BRS     	#049E			;
003090 201B     	OR      	R1,R0			;
003092 4F26     	LDS.L   	@R15+,PR		;
003094 6303     	MOV     	R0,R3			;
003096 4318     	SHLL8   	R3			;
003098 AEAC     	BRA     	#1D58			;
00309A 4319     	SHLR8   	R3			;
00309C 0100
00309E 0000
0030A0 E04B     	MOV     	#4B,R0		;
0030A2 CDD3     	AND.B   	#D3,@(R0,GBR)	;
0030A4 4F22     	STS.L   	PR,@-R15		;
0030A6 B233     	BRS     	#0466			;
0030A8 0009     	NOP     				;
0030AA 4F26     	LDS.L   	@R15+,PR		;
0030AC 4F22     	STS.L   	PR,@-R15		;
0030AE B23F     	BRS     	#047E			;
0030B0 0009     	NOP     				;
0030B2 4F26     	LDS.L   	@R15+,PR		;
0030B4 AE9B     	BRA     	#1D36			;
0030B6 0009     	NOP     				;

L0030B8:
0030B8 E04B     	MOV     	#4B,R0		;
0030BA CDD3     	AND.B   	#D3,@(R0,GBR)	;
0030BC C449     	MOV.B   	@(#049,GBR),R0	;
0030BE 880A     	CMP/EQ  	#0A,R0		;
0030C0 8B07     	BF      	#00E			;
0030C2 E04B     	MOV     	#4B,R0		;
0030C4 CC40     	TST.B   	#40,@(R0,GBR)	;
0030C6 8902     	BT      	#004			;
0030C8 CD3F     	AND.B   	#3F,@(R0,GBR)	;
0030CA DB29     	MOV.L   	@(#0A4,PC),R11	;
0030CC C321     	TRAPA   	#21			;
0030CE A02C     	BRA     	#0058			;
0030D0 0009     	NOP     				;
0030D2 C42E     	MOV.B   	@(#02E,GBR),R0	;
0030D4 8801     	CMP/EQ  	#01,R0		;
0030D6 890E     	BT      	#01C			;
0030D8 8803     	CMP/EQ  	#03,R0		;
0030DA 8914     	BT      	#028			;
0030DC E04B     	MOV     	#4B,R0		;
0030DE CC40     	TST.B   	#40,@(R0,GBR)	;
0030E0 8B11     	BF      	#022			;
0030E2 C444     	MOV.B   	@(#044,GBR),R0	;
0030E4 8801     	CMP/EQ  	#01,R0		;
0030E6 C611     	MOV.L   	@(#044,GBR),R0	;
0030E8 8901     	BT      	#002			;
0030EA AE80     	BRA     	#1D00			;
0030EC 0009     	NOP     				;
0030EE 4018     	SHLL8   	R0			;
0030F0 4019     	SHLR8   	R0			;
0030F2 AE7F     	BRA     	#1CFE			;
0030F4 6303     	MOV     	R0,R3			;
0030F6 E04B     	MOV     	#4B,R0		;
0030F8 CC40     	TST.B   	#40,@(R0,GBR)	;
0030FA 8904     	BT      	#008			;
0030FC CD3F     	AND.B   	#3F,@(R0,GBR)	;
0030FE DB1C     	MOV.L   	@(#070,PC),R11	;
003100 C321     	TRAPA   	#21			;
003102 A000     	BRA     	#0000			;
003104 0009     	NOP     				;
L003106:
003106 E04B     	MOV     	#4B,R0		;
003108 CC40     	TST.B   	#40,@(R0,GBR)	;
00310A 8907     	BT      	#00E			;
00310C E00A     	MOV     	#0A,R0		;
00310E C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x0A;
003110 E04B     	MOV     	#4B,R0		;
003112 CD3F     	AND.B   	#3F,@(R0,GBR)	;
003114 DB16     	MOV.L   	@(#058,PC),R11	;
003116 C321     	TRAPA   	#21			;
003118 A007     	BRA     	#000E			;
00311A 0009     	NOP     				;
00311C CC02     	TST.B   	#02,@(R0,GBR)	;
00311E 8902     	BT      	#004			;
003120 CDFD     	AND.B   	#FD,@(R0,GBR)	;
003122 DB14     	MOV.L   	@(#050,PC),R11	;
003124 C321     	TRAPA   	#21			;
003126 E005     	MOV     	#05,R0		;
003128 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x05;
00312A E001     	MOV     	#01,R0		;
00312C C02E     	MOV.B   	R0,@(#02E,GBR)	;
00312E E04A     	MOV     	#4A,R0		;
003130 CF08     	OR .B   	#08,@(R0,GBR)	;
003132 4F22     	STS.L   	PR,@-R15		;
003134 B288     	BRS     	#0510			;
003136 0009     	NOP     				;
003138 4F26     	LDS.L   	@R15+,PR		;
00313A D109     	MOV.L   	@(#024,PC),R1	;
00313C D209     	MOV.L   	@(#024,PC),R2	;
00313E D30A     	MOV.L   	@(#028,PC),R3	;
003140 4F22     	STS.L   	PR,@-R15		;
003142 B08A     	BRS     	#0114			;
003144 0009     	NOP     				;
003146 4F26     	LDS.L   	@R15+,PR		;
003148 DB08     	MOV.L   	@(#020,PC),R11	;
00314A C325     	TRAPA   	#25			;
00314C E04A     	MOV     	#4A,R0		;
00314E CF80     	OR .B   	#80,@(R0,GBR)	;
003150 CDBA     	AND.B   	#BA,@(R0,GBR)	;
003152 C449     	MOV.B   	@(#049,GBR),R0	;
003154 8805     	CMP/EQ  	#05,R0		;
003156 8B01     	BF      	#002			;
003158 A75B     	BRA     	#0EB6			;
00315A 0009     	NOP     				;
00315C 000B     	RTS     				;
00315E 0009     	NOP     				;
003160 0800
003162 0000
003164 0000
003166 0000
003168 0000
00316A FF01
00316C 0606
00316E 0000
003170 0506
003172 0003
003174 0506
003176 0007
003178 E04B     	MOV     	#4B,R0		;
00317A CDD3     	AND.B   	#D3,@(R0,GBR)	;
00317C 200A     	XOR     	R0,R0			;
00317E C211     	MOV.L   	R0,@(#044,GBR)	;
003180 E002     	MOV     	#02,R0		;
003182 C02E     	MOV.B   	R0,@(#02E,GBR)	;
003184 4F22     	STS.L   	PR,@-R15		;
003186 B261     	BRS     	#04C2			;
003188 0009     	NOP     				;
00318A 4F26     	LDS.L   	@R15+,PR		;
00318C E009     	MOV     	#09,R0		;
00318E C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x09;
003190 D108     	MOV.L   	@(#020,PC),R1	;
003192 D209     	MOV.L   	@(#024,PC),R2	;
003194 D309     	MOV.L   	@(#024,PC),R3	;
003196 4F22     	STS.L   	PR,@-R15		;
003198 B05D     	BRS     	#00BA			;
00319A 0009     	NOP     				;
00319C 4F26     	LDS.L   	@R15+,PR		;
00319E 4F22     	STS.L   	PR,@-R15		;
0031A0 B05B     	BRS     	#00B6			;
0031A2 0009     	NOP     				;
0031A4 4F26     	LDS.L   	@R15+,PR		;
0031A6 DB06     	MOV.L   	@(#018,PC),R11	;
0031A8 C325     	TRAPA   	#25			;
0031AA E04A     	MOV     	#4A,R0		;
0031AC CF81     	OR .B   	#81,@(R0,GBR)	;
0031AE CDBB     	AND.B   	#BB,@(R0,GBR)	;
0031B0 000B     	RTS     				;
0031B2 0009     	NOP     				;
0031B4 0400
0031B6 0000
0031B8 0000
0031BA 0000
0031BC 0000
0031BE 0001
0031C0 0606
0031C2 0000
0031C4 E04A     	MOV     	#4A,R0		;
0031C6 CC40     	TST.B   	#40,@(R0,GBR)	;
0031C8 8914     	BT      	#028			;
0031CA E002     	MOV     	#02,R0		;
0031CC C02E     	MOV.B   	R0,@(#02E,GBR)	;
0031CE E04A     	MOV     	#4A,R0		;
0031D0 CF08     	OR .B   	#08,@(R0,GBR)	;
0031D2 4F22     	STS.L   	PR,@-R15		;
0031D4 B238     	BRS     	#0470			;
0031D6 0009     	NOP     				;
0031D8 4F26     	LDS.L   	@R15+,PR		;
0031DA D107     	MOV.L   	@(#01C,PC),R1	;
0031DC D207     	MOV.L   	@(#01C,PC),R2	;
0031DE D308     	MOV.L   	@(#020,PC),R3	;
0031E0 4F22     	STS.L   	PR,@-R15		;
0031E2 B03A     	BRS     	#0074			;
0031E4 0009     	NOP     				;
0031E6 4F26     	LDS.L   	@R15+,PR		;
0031E8 E008     	MOV     	#08,R0		;
0031EA C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x08;
0031EC DB05     	MOV.L   	@(#014,PC),R11	;
0031EE C325     	TRAPA   	#25			;
0031F0 E04A     	MOV     	#4A,R0		;
0031F2 CDBB     	AND.B   	#BB,@(R0,GBR)	;
0031F4 000B     	RTS     				;
0031F6 0009     	NOP     				;
0031F8 0500
0031FA 0000
0031FC 0000
0031FE 0000
003200 0000
003202 0001
003204 0606
003206 0000
003208 E04A     	MOV     	#4A,R0		;
00320A CDEF     	AND.B   	#EF,@(R0,GBR)	;
00320C E04A     	MOV     	#4A,R0		;
00320E CF04     	OR .B   	#04,@(R0,GBR)	;
003210 E04B     	MOV     	#4B,R0		;
003212 CDD3     	AND.B   	#D3,@(R0,GBR)	;
003214 DB0D     	MOV.L   	@(#034,PC),R11	;
003216 C325     	TRAPA   	#25			;
003218 E04A     	MOV     	#4A,R0		;
00321A CDBF     	AND.B   	#BF,@(R0,GBR)	;
00321C C42E     	MOV.B   	@(#02E,GBR),R0	;
00321E 8803     	CMP/EQ  	#03,R0		;
003220 8912     	BT      	#024			;
003222 8801     	CMP/EQ  	#01,R0		;
003224 8907     	BT      	#00E			;
003226 8805     	CMP/EQ  	#05,R0		;
003228 890E     	BT      	#01C			;
00322A 8802     	CMP/EQ  	#02,R0		;
00322C 8903     	BT      	#006			;
00322E E04A     	MOV     	#4A,R0		;
003230 CDF7     	AND.B   	#F7,@(R0,GBR)	;
003232 000B     	RTS     				;
003234 0009     	NOP     				;
003236 C611     	MOV.L   	@(#044,GBR),R0	;
003238 6603     	MOV     	R0,R6			;
00323A 4029     	SHLR16  	R0			;
00323C 4019     	SHLR8   	R0			;
00323E 8800     	CMP/EQ  	#00,R0		;
003240 8BF5     	BF      	#1EA			;
003242 E800     	MOV     	#00,R8		;
003244 ADE0     	BRA     	#1BC0			;
003246 E700     	MOV     	#00,R7		;
003248 A70C     	BRA     	#0E18			;
00324A 0009     	NOP     				;
00324C 0606     	MOV.L   	R0,@(R0,R6)		;
00324E 0000     	
003250 E04A     	MOV     	#4A,R0		;
003252 AFDB     	BRA     	#1FB6			;
003254 CF10     	OR .B   	#10,@(R0,GBR)	;
L003256:
003256 A799     	BRA     	L00418C		;L00418C();
003258 0009     	NOP     				;
L00325A:
00325A A775     	BRA     	L004148		;make_cdd_cmd(cmd);
00325C 0009     	NOP     				;

00325E AA9B     	BRA     	#1536			;
003260 0009     	NOP     				;

L003262:
003262 AB25     	BRA     	L0028B0		;
003264 0009     	NOP     				;

003266 AC13     	BRA     	#1826			;
003268 0009     	NOP     				;
00326A 4F22     	STS.L   	PR,@-R15		;
00326C B7CD     	BRS     	#0F9A			;
00326E 6133     	MOV     	R3,R1			;
003270 4F26     	LDS.L   	@R15+,PR		;
003272 6803     	MOV     	R0,R8			;
003274 4029     	SHLR16  	R0			;
003276 4019     	SHLR8   	R0			;
003278 C840     	TST     	#40,R0		;
00327A 8908     	BT      	#010			;
00327C 6043     	MOV     	R4,R0			;
00327E 8800     	CMP/EQ  	#00,R0		;
003280 8901     	BT      	#002			;
003282 8801     	CMP/EQ  	#01,R0		;
003284 8B06     	BF      	#00C			;
003286 6083     	MOV     	R8,R0			;
003288 E400     	MOV     	#00,R4		;
00328A A018     	BRA     	#0030			;
00328C E800     	MOV     	#00,R8		;
00328E 2448     	TST     	R4,R4			;
003290 8B00     	BF      	#000			;
003292 E401     	MOV     	#01,R4		;
003294 6133     	MOV     	R3,R1			;
003296 7101     	ADD     	#01,R1		;
003298 D09B     	MOV.L   	@(#26C,PC),R0	;
00329A 6200     	MOV.B   	@R0,R2		;
00329C 622C     	EXTU.B   	R2,R2			;
00329E 3126     	CMP/HI 	R2,R1			;
0032A0 8B02     	BF      	#004			;
0032A2 D29A     	MOV.L   	@(#268,PC),R2	;
0032A4 A004     	BRA     	#0008			;
0032A6 6022     	MOV.L   	@R2,R0		;
0032A8 4F22     	STS.L   	PR,@-R15		;
0032AA B1C7     	BRS     	#038E			;
0032AC 0009     	NOP     				;
0032AE 4F26     	LDS.L   	@R15+,PR		;
0032B0 4018     	SHLL8   	R0			;
0032B2 4019     	SHLR8   	R0			;
0032B4 4428     	SHLL16  	R4			;
0032B6 4418     	SHLL8   	R4			;
0032B8 240B     	OR      	R0,R4			;
0032BA 6083     	MOV     	R8,R0			;
0032BC 6833     	MOV     	R3,R8			;
0032BE 4018     	SHLL8   	R0			;
0032C0 000B     	RTS     				;
0032C2 4019     	SHLR8   	R0			;

L0032C4:
0032C4 E003     	MOV     	#03,R0		;
0032C6 CC40     	TST.B   	#40,@(R0,GBR)	;
0032C8 8901     	BT      	#002			;
0032CA A0CD     	BRA     	#019A			;
0032CC 0018     	SETT    				;
0032CE C43C     	MOV.B   	@(#03C,GBR),R0	;
0032D0 600C     	EXTU.B   	R0,R0			;
0032D2 8800     	CMP/EQ  	#00,R0		;
0032D4 8B25     	BF      	#04A			;
0032D6 C444     	MOV.B   	@(#044,GBR),R0	;
0032D8 8801     	CMP/EQ  	#01,R0		;
0032DA 8B01     	BF      	#002			;
0032DC A0C4     	BRA     	#0188			;
0032DE 0009     	NOP     				;
0032E0 D082     	MOV.L   	@(#208,PC),R0	;
0032E2 6202     	MOV.L   	@R0,R2		;
0032E4 C60F     	MOV.L   	@(#03C,GBR),R0	;
0032E6 2008     	TST     	R0,R0			;
0032E8 8B02     	BF      	#004			;
0032EA E04B     	MOV     	#4B,R0		;
0032EC A004     	BRA     	#0008			;
0032EE 704B     	ADD     	#4B,R0		;
0032F0 4F22     	STS.L   	PR,@-R15		;
0032F2 B16B     	BRS     	#02D6			;
0032F4 0009     	NOP     				;
0032F6 4F26     	LDS.L   	@R15+,PR		;
0032F8 3202     	CMP/HS 	R0,R2			;
0032FA 8901     	BT      	#002			;
0032FC A0B6     	BRA     	#016C			;
0032FE 0009     	NOP     				;
003300 C610     	MOV.L   	@(#040,GBR),R0	;
003302 4018     	SHLL8   	R0			;
003304 4019     	SHLR8   	R0			;
003306 8800     	CMP/EQ  	#00,R0		;
003308 8B04     	BF      	#008			;
00330A D080     	MOV.L   	@(#200,PC),R0	;
00330C 6002     	MOV.L   	@R0,R0		;
00330E 4018     	SHLL8   	R0			;
003310 A004     	BRA     	#0008			;
003312 4019     	SHLR8   	R0			;
003314 4F22     	STS.L   	PR,@-R15		;
003316 B159     	BRS     	#02B2			;
003318 0009     	NOP     				;
00331A 4F26     	LDS.L   	@R15+,PR		;
00331C 3026     	CMP/HI 	R2,R0			;
00331E A0A3     	BRA     	#0146			;
003320 0009     	NOP     				;
003322 C444     	MOV.B   	@(#044,GBR),R0	;
003324 8800     	CMP/EQ  	#00,R0		;
003326 8B36     	BF      	#06C			;
003328 C611     	MOV.L   	@(#044,GBR),R0	;
00332A 6103     	MOV     	R0,R1			;
00332C C620     	MOV.L   	@(#080,GBR),R0	;
00332E 88FF     	CMP/EQ  	#FF,R0		;
003330 8903     	BT      	#006			;
003332 3102     	CMP/HS 	R0,R1			;
003334 895B     	BT      	#0B6			;
003336 A099     	BRA     	#0132			;
003338 0009     	NOP     				;
00333A C60F     	MOV.L   	@(#03C,GBR),R0	;
00333C 4018     	SHLL8   	R0			;
00333E 4019     	SHLR8   	R0			;
003340 8800     	CMP/EQ  	#00,R0		;
003342 8B06     	BF      	#00C			;
003344 E096     	MOV     	#96,R0		;
003346 610C     	EXTU.B   	R0,R1			;
003348 C611     	MOV.L   	@(#044,GBR),R0	;
00334A 3012     	CMP/HS 	R1,R0			;
00334C 894F     	BT      	#09E			;
00334E A08D     	BRA     	#011A			;
003350 0009     	NOP     				;
003352 C430     	MOV.B   	@(#030,GBR),R0	;
003354 C840     	TST     	#40,R0		;
003356 8904     	BT      	#008			;
003358 C43F     	MOV.B   	@(#03F,GBR),R0	;
00335A 8800     	CMP/EQ  	#00,R0		;
00335C 8903     	BT      	#006			;
00335E 8801     	CMP/EQ  	#01,R0		;
003360 8901     	BT      	#002			;
003362 A085     	BRA     	#010A			;
003364 0009     	NOP     				;
003366 C43E     	MOV.B   	@(#03E,GBR),R0	;
003368 D166     	MOV.L   	@(#198,PC),R1	;
00336A 6110     	MOV.B   	@R1,R1		;
00336C 3106     	CMP/HI 	R0,R1			;
00336E 8B01     	BF      	#002			;
003370 A005     	BRA     	#000A			;
003372 6013     	MOV     	R1,R0			;
003374 D164     	MOV.L   	@(#190,PC),R1	;
003376 6110     	MOV.B   	@R1,R1		;
003378 3016     	CMP/HI 	R1,R0			;
00337A 8B00     	BF      	#000			;
00337C 6013     	MOV     	R1,R0			;
00337E 4F22     	STS.L   	PR,@-R15		;
003380 B15C     	BRS     	#02B8			;
003382 6103     	MOV     	R0,R1			;
003384 4F26     	LDS.L   	@R15+,PR		;
003386 6103     	MOV     	R0,R1			;
003388 4118     	SHLL8   	R1			;
00338A 4119     	SHLR8   	R1			;
00338C C611     	MOV.L   	@(#044,GBR),R0	;
00338E 3012     	CMP/HS 	R1,R0			;
003390 892D     	BT      	#05A			;
003392 A06B     	BRA     	#00D6			;
003394 0009     	NOP     				;
003396 C60F     	MOV.L   	@(#03C,GBR),R0	;
003398 6103     	MOV     	R0,R1			;
00339A 4118     	SHLL8   	R1			;
00339C 4119     	SHLR8   	R1			;
00339E D04D     	MOV.L   	@(#134,PC),R0	;
0033A0 2019     	AND     	R1,R0			;
0033A2 8800     	CMP/EQ  	#00,R0		;
0033A4 8B03     	BF      	#006			;
0033A6 D057     	MOV.L   	@(#15C,PC),R0	;
0033A8 6000     	MOV.B   	@R0,R0		;
0033AA 4018     	SHLL8   	R0			;
0033AC 210B     	OR      	R0,R1			;
0033AE D04A     	MOV.L   	@(#128,PC),R0	;
0033B0 2019     	AND     	R1,R0			;
0033B2 8800     	CMP/EQ  	#00,R0		;
0033B4 E000     	MOV     	#00,R0		;
0033B6 310E     	ADDC    	R0,R1			;
0033B8 D052     	MOV.L   	@(#148,PC),R0	;
0033BA 6000     	MOV.B   	@R0,R0		;
0033BC 4018     	SHLL8   	R0			;
0033BE 3016     	CMP/HI 	R1,R0			;
0033C0 8B02     	BF      	#004			;
0033C2 6103     	MOV     	R0,R1			;
0033C4 A00B     	BRA     	#0016			;
0033C6 7101     	ADD     	#01,R1		;
0033C8 D04F     	MOV.L   	@(#13C,PC),R0	;
0033CA 6000     	MOV.B   	@R0,R0		;
0033CC 7001     	ADD     	#01,R0		;
0033CE 4018     	SHLL8   	R0			;
0033D0 3102     	CMP/HS 	R0,R1			;
0033D2 8B04     	BF      	#008			;
0033D4 4019     	SHLR8   	R0			;
0033D6 70FF     	ADD     	#FF,R0		;
0033D8 4018     	SHLL8   	R0			;
0033DA 7001     	ADD     	#01,R0		;
0033DC 6103     	MOV     	R0,R1			;
0033DE C60C     	MOV.L   	@(#030,GBR),R0	;
0033E0 4018     	SHLL8   	R0			;
0033E2 4029     	SHLR16  	R0			;
0033E4 3012     	CMP/HS 	R1,R0			;
0033E6 8B41     	BF      	#082			;
0033E8 C444     	MOV.B   	@(#044,GBR),R0	;
0033EA 8800     	CMP/EQ  	#00,R0		;
0033EC 8B14     	BF      	#028			;
0033EE C610     	MOV.L   	@(#040,GBR),R0	;
0033F0 4018     	SHLL8   	R0			;
0033F2 4019     	SHLR8   	R0			;
0033F4 8800     	CMP/EQ  	#00,R0		;
0033F6 8B0A     	BF      	#014			;
0033F8 C430     	MOV.B   	@(#030,GBR),R0	;
0033FA C840     	TST     	#40,R0		;
0033FC 8907     	BT      	#00E			;
0033FE C611     	MOV.L   	@(#044,GBR),R0	;
003400 D142     	MOV.L   	@(#108,PC),R1	;
003402 6112     	MOV.L   	@R1,R1		;
003404 4118     	SHLL8   	R1			;
003406 4119     	SHLR8   	R1			;
003408 3106     	CMP/HI 	R0,R1			;
00340A A02D     	BRA     	#005A			;
00340C 0009     	NOP     				;
00340E C431     	MOV.B   	@(#031,GBR),R0	;
003410 88AA     	CMP/EQ  	#AA,R0		;
003412 8949     	BT      	#092			;
003414 8800     	CMP/EQ  	#00,R0		;
003416 8947     	BT      	#08E			;
003418 C610     	MOV.L   	@(#040,GBR),R0	;
00341A 6103     	MOV     	R0,R1			;
00341C 4118     	SHLL8   	R1			;
00341E 4119     	SHLR8   	R1			;
003420 D02C     	MOV.L   	@(#0B0,PC),R0	;
003422 2019     	AND     	R1,R0			;
003424 8800     	CMP/EQ  	#00,R0		;
003426 8B03     	BF      	#006			;
003428 D037     	MOV.L   	@(#0DC,PC),R0	;
00342A 6000     	MOV.B   	@R0,R0		;
00342C 4018     	SHLL8   	R0			;
00342E 210B     	OR      	R0,R1			;
003430 D029     	MOV.L   	@(#0A4,PC),R0	;
003432 2019     	AND     	R1,R0			;
003434 8800     	CMP/EQ  	#00,R0		;
003436 8B00     	BF      	#000			;
003438 7163     	ADD     	#63,R1		;
00343A D032     	MOV.L   	@(#0C8,PC),R0	;
00343C 6000     	MOV.B   	@R0,R0		;
00343E 4018     	SHLL8   	R0			;
003440 3016     	CMP/HI 	R1,R0			;
003442 8B02     	BF      	#004			;
003444 6103     	MOV     	R0,R1			;
003446 A00B     	BRA     	#0016			;
003448 7163     	ADD     	#63,R1		;
00344A D02F     	MOV.L   	@(#0BC,PC),R0	;
00344C 6000     	MOV.B   	@R0,R0		;
00344E 7001     	ADD     	#01,R0		;
003450 4018     	SHLL8   	R0			;
003452 3102     	CMP/HS 	R0,R1			;
003454 8B04     	BF      	#008			;
003456 4019     	SHLR8   	R0			;
003458 70FF     	ADD     	#FF,R0		;
00345A 4018     	SHLL8   	R0			;
00345C 7063     	ADD     	#63,R0		;
00345E 6103     	MOV     	R0,R1			;
003460 C60C     	MOV.L   	@(#030,GBR),R0	;
003462 4018     	SHLL8   	R0			;
003464 4029     	SHLR16  	R0			;
003466 3102     	CMP/HS 	R0,R1			;
003468 000B     	RTS     				;
00346A 200A     	XOR     	R0,R0			;
00346C 000B     	RTS     				;
00346E E001     	MOV     	#01,R0		;
003470 C431     	MOV.B   	@(#031,GBR),R0	;
003472 88AA     	CMP/EQ  	#AA,R0		;
003474 8906     	BT      	#00C			;
003476 8800     	CMP/EQ  	#00,R0		;
003478 8B8D     	BF      	#11A			;
00347A C611     	MOV.L   	@(#044,GBR),R0	;
00347C 8800     	CMP/EQ  	#00,R0		;
00347E 8B01     	BF      	#002			;
003480 AFF4     	BRA     	#1FE8			;
003482 0008     	CLRT    				;
003484 4F22     	STS.L   	PR,@-R15		;
003486 B6CA     	BRS     	#0D94			;
003488 C611     	MOV.L   	@(#044,GBR),R0	;
00348A 4F26     	LDS.L   	@R15+,PR		;
00348C C43E     	MOV.B   	@(#03E,GBR),R0	;
00348E D21D     	MOV.L   	@(#074,PC),R2	;
003490 6220     	MOV.B   	@R2,R2		;
003492 3206     	CMP/HI 	R0,R2			;
003494 8903     	BT      	#006			;
003496 D21C     	MOV.L   	@(#070,PC),R2	;
003498 6220     	MOV.B   	@R2,R2		;
00349A 3026     	CMP/HI 	R2,R0			;
00349C 8B00     	BF      	#000			;
00349E 6023     	MOV     	R2,R0			;
0034A0 3102     	CMP/HS 	R0,R1			;
0034A2 8BE3     	BF      	#1C6			;
0034A4 AFA3     	BRA     	#1F46			;
0034A6 0009     	NOP     				;
0034A8 4F22     	STS.L   	PR,@-R15		;
0034AA B6B8     	BRS     	#0D70			;
0034AC C611     	MOV.L   	@(#044,GBR),R0	;
0034AE 4F26     	LDS.L   	@R15+,PR		;
0034B0 C442     	MOV.B   	@(#042,GBR),R0	;
0034B2 8800     	CMP/EQ  	#00,R0		;
0034B4 8B01     	BF      	#002			;
0034B6 D014     	MOV.L   	@(#050,PC),R0	;
0034B8 6000     	MOV.B   	@R0,R0		;
0034BA D212     	MOV.L   	@(#048,PC),R2	;
0034BC 6220     	MOV.B   	@R2,R2		;
0034BE 3206     	CMP/HI 	R0,R2			;
0034C0 8903     	BT      	#006			;
0034C2 D211     	MOV.L   	@(#044,PC),R2	;
0034C4 6220     	MOV.B   	@R2,R2		;
0034C6 3026     	CMP/HI 	R2,R0			;
0034C8 8B00     	BF      	#000			;
0034CA 6023     	MOV     	R2,R0			;
0034CC 3016     	CMP/HI 	R1,R0			;
0034CE AFCB     	BRA     	#1F96			;
0034D0 0009     	NOP     				;
0034D2 0009     	NOP     				;
0034D4 0000
0034D6 FF00
0034D8 0000
0034DA 00FF
0034DC 0F0002A5
0034E0 0F00
0034E2 028A
0034E4 0F00
0034E6 02A6
0034E8 0F00
0034EA 0268
0034EC 0F00
0034EE 02A0
0034F0 0F00
0034F2 02A0
0034F4 0F00
0034F6 028D
0034F8 0F00
0034FA 029C
0034FC 0F00
0034FE 028B
003500 0F00
003502 0294
003504 0900
003506 01F5
003508 0900
00350A 01F9
00350C 0900
00350E 01FC     	MOV.B   	@(R0,R15),R1	;
003510 C602     	MOV.L   	@(#008,GBR),R0	;
003512 8800     	CMP/EQ  	#00,R0		;
003514 8906     	BT      	#00C			;
003516 D104     	MOV.L   	@(#010,PC),R1	;
003518 2019     	AND     	R1,R0			;
00351A E196     	MOV     	#96,R1		;
00351C 611C     	EXTU.B   	R1,R1			;
00351E 3106     	CMP/HI 	R0,R1			;
003520 8B00     	BF      	#000			;
003522 6013     	MOV     	R1,R0			;
003524 000B     	RTS     				;
003526 0009     	NOP     				;
003528 007F
00352A FFFF
00352C 0900
00352E 01FC
003530 6203     	MOV     	R0,R2			;
003532 4018     	SHLL8   	R0			;
003534 8800     	CMP/EQ  	#00,R0		;
003536 8B02     	BF      	#004			;
003538 E096     	MOV     	#96,R0		;
00353A A03C     	BRA     	#0078			;
00353C 600C     	EXTU.B   	R0,R0			;
00353E 6023     	MOV     	R2,R0			;
003540 4029     	SHLR16  	R0			;
003542 4019     	SHLR8   	R0			;
003544 8800     	CMP/EQ  	#00,R0		;
003546 6023     	MOV     	R2,R0			;
003548 8B0A     	BF      	#014			;
00354A 8800     	CMP/EQ  	#00,R0		;
00354C 8B02     	BF      	#004			;
00354E E096     	MOV     	#96,R0		;
003550 A031     	BRA     	#0062			;
003552 600C     	EXTU.B   	R0,R0			;
003554 4F22     	STS.L   	PR,@-R15		;
003556 B039     	BRS     	#0072			;
003558 0009     	NOP     				;
00355A 4F26     	LDS.L   	@R15+,PR		;
00355C A02B     	BRA     	#0056			;
00355E 0009     	NOP     				;
003560 D017     	MOV.L   	@(#05C,PC),R0	;
003562 2029     	AND     	R2,R0			;
003564 E163     	MOV     	#63,R1		;
003566 3016     	CMP/HI 	R1,R0			;
003568 8B03     	BF      	#006			;
00356A 4219     	SHLR8   	R2			;
00356C 4218     	SHLL8   	R2			;
00356E A003     	BRA     	#0006			;
003570 221B     	OR      	R1,R2			;
003572 8800     	CMP/EQ  	#00,R0		;
003574 E000     	MOV     	#00,R0		;
003576 320E     	ADDC    	R0,R2			;
003578 D010     	MOV.L   	@(#040,PC),R0	;
00357A 2029     	AND     	R2,R0			;
00357C 8800     	CMP/EQ  	#00,R0		;
00357E 8B04     	BF      	#008			;
003580 D110     	MOV.L   	@(#040,PC),R1	;
003582 6010     	MOV.B   	@R1,R0		;
003584 4018     	SHLL8   	R0			;
003586 A012     	BRA     	#0024			;
003588 202B     	OR      	R2,R0			;
00358A 4019     	SHLR8   	R0			;
00358C D10D     	MOV.L   	@(#034,PC),R1	;
00358E 6110     	MOV.B   	@R1,R1		;
003590 3106     	CMP/HI 	R0,R1			;
003592 8B03     	BF      	#006			;
003594 6013     	MOV     	R1,R0			;
003596 4018     	SHLL8   	R0			;
003598 A009     	BRA     	#0012			;
00359A 7001     	ADD     	#01,R0		;
00359C D10A     	MOV.L   	@(#028,PC),R1	;
00359E 6110     	MOV.B   	@R1,R1		;
0035A0 3102     	CMP/HS 	R0,R1			;
0035A2 8B01     	BF      	#002			;
0035A4 A003     	BRA     	#0006			;
0035A6 6023     	MOV     	R2,R0			;
0035A8 6013     	MOV     	R1,R0			;
0035AA 4018     	SHLL8   	R0			;
0035AC 7001     	ADD     	#01,R0		;
0035AE E201     	MOV     	#01,R2		;
0035B0 4228     	SHLL16  	R2			;
0035B2 4218     	SHLL8   	R2			;
0035B4 202B     	OR      	R2,R0			;
0035B6 000B     	RTS     				;
0035B8 C211     	MOV.L   	R0,@(#044,GBR)	;
0035BA 0009     	NOP     				;
0035BC 0000
0035BE FF00
0035C0 0000
0035C2 00FF
0035C4 0900
0035C6 01F5
0035C8 0900
0035CA 01F9
0035CC D104     	MOV.L   	@(#010,PC),R1	;
0035CE 6112     	MOV.L   	@R1,R1		;
0035D0 4118     	SHLL8   	R1			;
0035D2 4119     	SHLR8   	R1			;
0035D4 3016     	CMP/HI 	R1,R0			;
0035D6 8B00     	BF      	#000			;
0035D8 6013     	MOV     	R1,R0			;
0035DA 000B     	RTS     				;
0035DC 0009     	NOP     				;
0035DE 0009
0035E0 0900
0035E2 01FC

L0035E4:
0035E4 DB10     	MOV.L   	@(#040,PC),R11	;
0035E6 C32A     	TRAPA   	#2A			;
0035E8 C42C     	MOV.B   	@(#02C,GBR),R0	;
0035EA 8800     	CMP/EQ  	#00,R0		;
0035EC 8B01     	BF      	#002			;
0035EE D10F     	MOV.L   	@(#03C,PC),R1	;
0035F0 8900     	BT      	#000			;
0035F2 D10F     	MOV.L   	@(#03C,PC),R1	;
0035F4 E005     	MOV     	#05,R0		;
L0035F6:
0035F6 D70A     	MOV.L   	@(#028,PC),R7	;
0035F8 2712     	MOV.L   	R1,@R7		;
0035FA D90A     	MOV.L   	@(#028,PC),R9	;
0035FC 2901     	MOV.W   	R0,@R9		;
0035FE DB0A     	MOV.L   	@(#028,PC),R11	;
003600 D006     	MOV.L   	@(#018,PC),R0	;
003602 4F22     	STS.L   	PR,@-R15		;
003604 400B     	JSR     	@R0			;L0023BA();
003606 0009     	NOP     				;
003608 4F26     	LDS.L   	@R15+,PR		;
00360A A8C4     	BRA     	#1188			;
00360C 0009     	NOP     				;

L00360E:
00360E DB06     	MOV.L   	@(#018,PC),R11	;
003610 C32A     	TRAPA   	#2A			;
003612 D109     	MOV.L   	@(#024,PC),R1	;
003614 E0CC     	MOV     	#CC,R0		;
003616 AFEE     	BRA     	L0035F6		;
003618 600C     	EXTU.B   	R0,R0			;
00361A 0009
00361C 000023BA
003620 0F00
003622 0250
003624 0F00
003626 0254
003628 0306
00362A 0000
00362C 0900
00362E 021A
003630 0900
003632 0226
003634 0900
003636 0000
003638 0900
00363A 0068
00363C A5E5     	BRA     	#0BCA			;
00363E 0009     	NOP     				;
003640 A65E     	BRA     	#0CBC			;
003642 0009     	NOP     				;
003644 A6BE     	BRA     	#0D7C			;
003646 0009     	NOP     				;
003648 A754     	BRA     	#0EA8			;
00364A 0009     	NOP     				;

L00364C:
00364C A75D     	BRA     	#0EBA			;
00364E 0009     	NOP     				;

003650 E04B     	MOV     	#4B,R0		;
003652 CC40     	TST.B   	#40,@(R0,GBR)	;
003654 8912     	BT      	#024			;
003656 CC80     	TST.B   	#80,@(R0,GBR)	;
003658 8B10     	BF      	#020			;
00365A CF04     	OR .B   	#04,@(R0,GBR)	;
00365C CC10     	TST.B   	#10,@(R0,GBR)	;
00365E 8904     	BT      	#008			;
003660 C615     	MOV.L   	@(#054,GBR),R0	;
003662 6103     	MOV     	R0,R1			;
003664 C60E     	MOV.L   	@(#038,GBR),R0	;
003666 3018     	SUB     	R1,R0			;
003668 C048     	MOV.B   	R0,@(#048,GBR)	;
00366A E002     	MOV     	#02,R0		;
00366C C002     	MOV.B   	R0,@(#002,GBR)	;
00366E C616     	MOV.L   	@(#058,GBR),R0	;
003670 C211     	MOV.L   	R0,@(#044,GBR)	;
003672 E04B     	MOV     	#4B,R0		;
003674 AC72     	BRA     	#18E4			;
003676 CDBF     	AND.B   	#BF,@(R0,GBR)	;
003678 AC70     	BRA     	#18E0			;
00367A C211     	MOV.L   	R0,@(#044,GBR)	;
00367C 000B     	RTS     				;
00367E 0009     	NOP     				;
003680 E04B     	MOV     	#4B,R0		;
003682 CC40     	TST.B   	#40,@(R0,GBR)	;
003684 89FA     	BT      	#1F4			;
003686 CC80     	TST.B   	#80,@(R0,GBR)	;
003688 8BF8     	BF      	#1F0			;
00368A 000B     	RTS     				;
00368C 0009     	NOP     				;
00368E E04B     	MOV     	#4B,R0		;
003690 CC40     	TST.B   	#40,@(R0,GBR)	;
003692 89F3     	BT      	#1E6			;
003694 CC80     	TST.B   	#80,@(R0,GBR)	;
003696 8BF1     	BF      	#1E2			;
003698 E04A     	MOV     	#4A,R0		;
00369A CF08     	OR .B   	#08,@(R0,GBR)	;
00369C E04B     	MOV     	#4B,R0		;
00369E CF08     	OR .B   	#08,@(R0,GBR)	;
0036A0 CD9B     	AND.B   	#9B,@(R0,GBR)	;
0036A2 E003     	MOV     	#03,R0		;
0036A4 CC40     	TST.B   	#40,@(R0,GBR)	;
0036A6 8905     	BT      	#00A			;
0036A8 CDBF     	AND.B   	#BF,@(R0,GBR)	;
0036AA E000     	MOV     	#00,R0		;
0036AC C20F     	MOV.L   	R0,@(#03C,GBR)	;
0036AE C210     	MOV.L   	R0,@(#040,GBR)	;
0036B0 DB02     	MOV.L   	@(#008,PC),R11	;
0036B2 C321     	TRAPA   	#21			;
0036B4 E00A     	MOV     	#0A,R0		;cd_state = 0x0A;
0036B6 AD38     	BRA     	#1A70			;
0036B8 C049     	MOV.B   	R0,@(#049,GBR)	;
0036BA 0009     	NOP     				;
0036BC 0706     	MOV.L   	R0,@(R0,R7)		;
0036BE 0003     	BSRF    	R0			;
0036C0 E04B     	MOV     	#4B,R0		;
0036C2 CC40     	TST.B   	#40,@(R0,GBR)	;
0036C4 89DA     	BT      	#1B4			;
0036C6 CC80     	TST.B   	#80,@(R0,GBR)	;
0036C8 8BD8     	BF      	#1B0			;
0036CA CC10     	TST.B   	#10,@(R0,GBR)	;
0036CC 8904     	BT      	#008			;
0036CE C615     	MOV.L   	@(#054,GBR),R0	;
0036D0 6103     	MOV     	R0,R1			;
0036D2 C60E     	MOV.L   	@(#038,GBR),R0	;
0036D4 3018     	SUB     	R1,R0			;
0036D6 C048     	MOV.B   	R0,@(#048,GBR)	;
0036D8 000B     	RTS     				;
0036DA 0009     	NOP     				;
0036DC E04B     	MOV     	#4B,R0		;
0036DE CC40     	TST.B   	#40,@(R0,GBR)	;
0036E0 89CC     	BT      	#198			;
0036E2 CC80     	TST.B   	#80,@(R0,GBR)	;
0036E4 8BCA     	BF      	#194			;
0036E6 CF04     	OR .B   	#04,@(R0,GBR)	;
0036E8 CC10     	TST.B   	#10,@(R0,GBR)	;
0036EA 8904     	BT      	#008			;
0036EC C615     	MOV.L   	@(#054,GBR),R0	;
0036EE 6103     	MOV     	R0,R1			;
0036F0 C60E     	MOV.L   	@(#038,GBR),R0	;
0036F2 3018     	SUB     	R1,R0			;
0036F4 C048     	MOV.B   	R0,@(#048,GBR)	;
0036F6 E008     	MOV     	#08,R0		;
0036F8 C002     	MOV.B   	R0,@(#002,GBR)	;
0036FA AFB9     	BRA     	#1F72			;
0036FC C616     	MOV.L   	@(#058,GBR),R0	;
0036FE E000     	MOV     	#00,R0		;
003700 C20F     	MOV.L   	R0,@(#03C,GBR)	;
003702 C210     	MOV.L   	R0,@(#040,GBR)	;
003704 E0FF     	MOV     	#FF,R0		;
003706 C20A     	MOV.L   	R0,@(#028,GBR)	;
003708 E001     	MOV     	#01,R0		;
00370A C002     	MOV.B   	R0,@(#002,GBR)	;
00370C E04B     	MOV     	#4B,R0		;
00370E CF20     	OR .B   	#20,@(R0,GBR)	;
003710 CDF3     	AND.B   	#F3,@(R0,GBR)	;
003712 C618     	MOV.L   	@(#060,GBR),R0	;
003714 8800     	CMP/EQ  	#00,R0		;
003716 8BAF     	BF      	#15E			;
003718 D102     	MOV.L   	@(#008,PC),R1	;
00371A 6012     	MOV.L   	@R1,R0		;
00371C 704B     	ADD     	#4B,R0		;
00371E 704B     	ADD     	#4B,R0		;
003720 AFAA     	BRA     	#1F54			;
003722 7010     	ADD     	#10,R0		;
003724 0900     	
003726 0214     	MOV.B   	R1,@(R0,R2)		;
003728 E04B     	MOV     	#4B,R0		;
00372A CDD3     	AND.B   	#D3,@(R0,GBR)	;
00372C ACEB     	BRA     	#19D6			;
00372E 0009     	NOP     				;
003730 E000     	MOV     	#00,R0		;
003732 C20F     	MOV.L   	R0,@(#03C,GBR)	;
003734 E0FF     	MOV     	#FF,R0		;
003736 C20A     	MOV.L   	R0,@(#028,GBR)	;
003738 4018     	SHLL8   	R0			;
00373A 4019     	SHLR8   	R0			;
00373C C210     	MOV.L   	R0,@(#040,GBR)	;
00373E E001     	MOV     	#01,R0		;
003740 C002     	MOV.B   	R0,@(#002,GBR)	;
003742 E003     	MOV     	#03,R0		;
003744 CF40     	OR .B   	#40,@(R0,GBR)	;
003746 E04B     	MOV     	#4B,R0		;
003748 CF20     	OR .B   	#20,@(R0,GBR)	;
00374A CDF3     	AND.B   	#F3,@(R0,GBR)	;
00374C AF94     	BRA     	#1F28			;
00374E C618     	MOV.L   	@(#060,GBR),R0	;
003750 DB08     	MOV.L   	@(#020,PC),R11	;
003752 C321     	TRAPA   	#21			;
003754 E000     	MOV     	#00,R0		;
003756 C20F     	MOV.L   	R0,@(#03C,GBR)	;
003758 C210     	MOV.L   	R0,@(#040,GBR)	;
00375A E003     	MOV     	#03,R0		;
00375C CDBF     	AND.B   	#BF,@(R0,GBR)	;
00375E E04B     	MOV     	#4B,R0		;
003760 CDD3     	AND.B   	#D3,@(R0,GBR)	;
003762 D103     	MOV.L   	@(#00C,PC),R1	;
003764 6012     	MOV.L   	@R1,R0		;
003766 704B     	ADD     	#4B,R0		;
003768 704B     	ADD     	#4B,R0		;
00376A AB40     	BRA     	#1680			;
00376C C211     	MOV.L   	R0,@(#044,GBR)	;
00376E 0009     	NOP     				;
003770 0900     	
003772 0214     	MOV.B   	R1,@(R0,R2)		;
003774 0706     	MOV.L   	R0,@(R0,R7)		;
003776 0003     	BSRF    	R0			;
003778 E003     	MOV     	#03,R0		;
00377A CF40     	OR .B   	#40,@(R0,GBR)	;
00377C E000     	MOV     	#00,R0		;
00377E C09E     	MOV.B   	R0,@(#09E,GBR)	;
003780 E021     	MOV     	#21,R0		;
003782 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x21;
003784 C618     	MOV.L   	@(#060,GBR),R0	;
003786 C211     	MOV.L   	R0,@(#044,GBR)	;
003788 E000     	MOV     	#00,R0		;
00378A C111     	MOV.W   	R0,@(#022,GBR)	;
00378C 4F22     	STS.L   	PR,@-R15		;
00378E B4FD     	BRS     	#09FA			;
003790 0009     	NOP     				;
003792 4F26     	LDS.L   	@R15+,PR		;
003794 E003     	MOV     	#03,R0		;
003796 CF20     	OR .B   	#20,@(R0,GBR)	;
003798 C611     	MOV.L   	@(#044,GBR),R0	;
00379A D106     	MOV.L   	@(#018,PC),R1	;
00379C D206     	MOV.L   	@(#018,PC),R2	;
00379E D307     	MOV.L   	@(#01C,PC),R3	;
0037A0 4F22     	STS.L   	PR,@-R15		;
0037A2 B4D1     	BRS     	#09A2			;
0037A4 210B     	OR      	R0,R1			;
0037A6 4F26     	LDS.L   	@R15+,PR		;
0037A8 DB05     	MOV.L   	@(#014,PC),R11	;
0037AA C325     	TRAPA   	#25			;
0037AC E04A     	MOV     	#4A,R0		;
0037AE CD3A     	AND.B   	#3A,@(R0,GBR)	;
0037B0 000B     	RTS     				;
0037B2 0009     	NOP     				;
0037B4 0200
0037B6 0000
0037B8 0000
0037BA 0000
0037BC 0000
0037BE FF01
0037C0 0606
0037C2 0000
0037C4 E04B     	MOV     	#4B,R0		;
0037C6 CC40     	TST.B   	#40,@(R0,GBR)	;
0037C8 890E     	BT      	#01C			;
0037CA CC80     	TST.B   	#80,@(R0,GBR)	;
0037CC 890C     	BT      	#018			;
0037CE C614     	MOV.L   	@(#050,GBR),R0	;
0037D0 4018     	SHLL8   	R0			;
0037D2 4019     	SHLR8   	R0			;
0037D4 4F22     	STS.L   	PR,@-R15		;
0037D6 BD75     	BRS     	#1AEA			;
0037D8 C211     	MOV.L   	R0,@(#044,GBR)	;
0037DA 4F26     	LDS.L   	@R15+,PR		;
0037DC 8B06     	BF      	#00C			;
0037DE E006     	MOV     	#06,R0		;
0037E0 C002     	MOV.B   	R0,@(#002,GBR)	;
0037E2 C619     	MOV.L   	@(#064,GBR),R0	;
0037E4 ABBA     	BRA     	#1774			;
0037E6 C211     	MOV.L   	R0,@(#044,GBR)	;
0037E8 000B     	RTS     				;
0037EA 0009     	NOP     				;
0037EC 4F22     	STS.L   	PR,@-R15		;
0037EE B2DD     	BRS     	#05BA			;
0037F0 0009     	NOP     				;
0037F2 4F26     	LDS.L   	@R15+,PR		;
0037F4 8B01     	BF      	#002			;
0037F6 AC5F     	BRA     	#18BE			;
0037F8 0009     	NOP     				;
0037FA AB81     	BRA     	#1702			;
0037FC 0009     	NOP     				;
0037FE E04B     	MOV     	#4B,R0		;
003800 CC40     	TST.B   	#40,@(R0,GBR)	;
003802 89F1     	BT      	#1E2			;
003804 CC80     	TST.B   	#80,@(R0,GBR)	;
003806 8BEF     	BF      	#1DE			;
003808 C614     	MOV.L   	@(#050,GBR),R0	;
00380A 4018     	SHLL8   	R0			;
00380C 4019     	SHLR8   	R0			;
00380E 4F22     	STS.L   	PR,@-R15		;
003810 BD58     	BRS     	#1AB0			;
003812 C211     	MOV.L   	R0,@(#044,GBR)	;
003814 4F26     	LDS.L   	@R15+,PR		;
003816 8BE9     	BF      	#1D2			;
003818 E04B     	MOV     	#4B,R0		;
00381A CF80     	OR .B   	#80,@(R0,GBR)	;
00381C E00A     	MOV     	#0A,R0		;
00381E C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x0A;
003820 DB01     	MOV.L   	@(#004,PC),R11	;
003822 C321     	TRAPA   	#21			;
003824 AC81     	BRA     	#1902			;
003826 0009     	NOP     				;
003828 0506     	MOV.L   	R0,@(R0,R5)		;
00382A 0009     	NOP     				;

L00382C:
00382C C42D     	MOV.B   	@(#02D,GBR),R0	;
00382E 4F22     	STS.L   	PR,@-R15		;
003830 B9B6     	BRS     	#136C			;
003832 0009     	NOP     				;
003834 4F26     	LDS.L   	@R15+,PR		;
003836 D106     	MOV.L   	@(#018,PC),R1	;
003838 6012     	MOV.L   	@R1,R0		;
00383A D106     	MOV.L   	@(#018,PC),R1	;
00383C 2102     	MOV.L   	R0,@R1		;
00383E E067     	MOV     	#67,R0		;
003840 4008     	SHLL2   	R0			;
003842 D182     	MOV.L   	@(#208,PC),R1	;
003844 310C     	ADD     	R0,R1			;
003846 E0FF     	MOV     	#FF,R0		;
003848 2106     	MOV.L   	R0,@-R1		;
00384A 2106     	MOV.L   	R0,@-R1		;
00384C AD09     	BRA     	#1A12			;
00384E 2106     	MOV.L   	R0,@-R1		;
003850 0900
003852 01F8
003854 0900
003856 020C

L003858:							;(R9->arg1)
003858 C474     	MOV.B   	@(#074,GBR),R0	;
00385A C804     	TST     	#04,R0		;
00385C 8938     	BT      	L0038D0		;
00385E 0512     	STC     	GBR, R5		;
003860 E074     	MOV     	#74,R0		;
003862 350C     	ADD     	R0,R5			;
003864 8452     	MOV.B   	@(#02,R5),R0	;
003866 8800     	CMP/EQ  	#00,R0		;if (cdd_rx_data.stat & 0x04 == 0 || 
003868 8B32     	BF      	L0038D0		;    cdd_rx_data.track != 0) goto L003262;
00386A C621     	MOV.L   	@(#084,GBR),R0	;
00386C 7001     	ADD     	#01,R0		;
00386E C221     	MOV.L   	R0,@(#084,GBR)	;*(u8*)(0x0F00025C+0x84)++;
003870 C474     	MOV.B   	@(#074,GBR),R0	;
003872 C808     	TST     	#08,R0		;
003874 8903     	BT      	L00387E		;if (cdd_rx_data.stat & 0x08 != 0) {
003876 C622     	MOV.L   	@(#088,GBR),R0	;
003878 7001     	ADD     	#01,R0		;
00387A A003     	BRA     	L003884		;
00387C C222     	MOV.L   	R0,@(#088,GBR)	;  *(u8*)(0x0F00025C+0x88)++;
L00387E:
00387E C623     	MOV.L   	@(#08C,GBR),R0	;} else {
003880 7001     	ADD     	#01,R0		;
003882 C223     	MOV.L   	R0,@(#08C,GBR)	;  *(u8*)(0x0F00025C+0x8C)++;
L003884:							;}
003884 8451     	MOV.B   	@(#01,R5),R0	;
003886 C90F     	AND     	#0F,R0		;
003888 8801     	CMP/EQ  	#01,R0		;
00388A 8B23     	BF      	L0038D4		;if (cdd_rx_data.qcode & 0x0F != 0x01) goto L0039B0;
00388C C47B     	MOV.B   	@(#07B,GBR),R0	;
00388E C0A2     	MOV.B   	R0,@(#0A2,GBR)	;*(u8*)(0x0F00025C+0xA2) = cdd_rx_data[7];
003890 E003     	MOV     	#03,R0		;
003892 6353     	MOV     	R5,R3			;
003894 330C     	ADD     	R0,R3			;
003896 4F22     	STS.L   	PR,@-R15		;
003898 B48A     	BRS     	L0041B0		;u8 num = bcd2num(&cdd_rx_data.index);
00389A 0009     	NOP     				;
00389C 4F26     	LDS.L   	@R15+,PR		;
00389E 6103     	MOV     	R0,R1			;
0038A0 E001     	MOV     	#01,R0		;
0038A2 3102     	CMP/HS 	R0,R1			;
0038A4 8B14     	BF      	L0038D0		;if (num < 01) goto L003262;
0038A6 E063     	MOV     	#63,R0		;
0038A8 3106     	CMP/HI 	R0,R1			;
0038AA 8915     	BT      	L0038D8		;if (num > 99) goto L0039F4;
L0038AC:
0038AC 6613     	MOV     	R1,R6			;u8 track = num;
0038AE E008     	MOV     	#08,R0		;
0038B0 6353     	MOV     	R5,R3			;
0038B2 330C     	ADD     	R0,R3			;
0038B4 4F22     	STS.L   	PR,@-R15		;
0038B6 B47E     	BRS     	L0041B6		;u32 fad = msf2fad(&cdd_rx_data.abs_mm);
0038B8 0009     	NOP     				;
0038BA 4F26     	LDS.L   	@R15+,PR		;
0038BC 6203     	MOV     	R0,R2			;
0038BE 8451     	MOV.B   	@(#01,R5),R0	;
0038C0 4028     	SHLL16  	R0			;
0038C2 4018     	SHLL8   	R0			;
0038C4 220B     	OR      	R0,R2			;u32 tocdata = (cdd_rx_data.qcode << 24) | fad;
0038C6 E066     	MOV     	#66,R0		;
0038C8 3600     	CMP/EQ 	R0,R6			;
0038CA 8B07     	BF      	L0038DC		;
0038CC A0BB     	BRA     	L003A46		;if (track == 102) goto L003A46;
0038CE 0009     	NOP     				;
L0038D0:
0038D0 ACC7     	BRA     	L003262		;
0038D2 0009     	NOP     				;
L0038D4:
0038D4 A06C     	BRA     	L0039B0		;
0038D6 0009     	NOP     				;
L0038D8:
0038D8 A08C     	BRA     	L0039F4		;
0038DA 0009     	NOP     				;

L0038DC:
0038DC 6163     	MOV     	R6,R1			;
0038DE 4F22     	STS.L   	PR,@-R15		;
0038E0 B498     	BRS     	L004214		;save_toc_data(track,tocdata);
0038E2 0009     	NOP     				;
0038E4 4F26     	LDS.L   	@R15+,PR		;
0038E6 D15C     	MOV.L   	@(#170,PC),R1	;
0038E8 6012     	MOV.L   	@R1,R0		;
0038EA 88FF     	CMP/EQ  	#FF,R0		;
0038EC 895E     	BT      	L0039AC		;if (*(u32*)0x090001FC == 0xFFFFFFFF ||
0038EE D158     	MOV.L   	@(#160,PC),R1	;
0038F0 6012     	MOV.L   	@R1,R0		;
0038F2 88FF     	CMP/EQ  	#FF,R0		;
0038F4 895A     	BT      	L0039AC		;    *(u32*)0x090001F4 == 0xFFFFFFFF ||
0038F6 4029     	SHLR16  	R0			;
0038F8 620C     	EXTU.B   	R0,R2			;
0038FA 6423     	MOV     	R2,R4			;
0038FC D155     	MOV.L   	@(#154,PC),R1	;
0038FE 6012     	MOV.L   	@R1,R0		;
003900 88FF     	CMP/EQ  	#FF,R0		;
003902 8953     	BT      	L0039AC		;    *(u32*)0x090001F8 == 0xFFFFFFFF ||
003904 4029     	SHLR16  	R0			;
003906 630C     	EXTU.B   	R0,R3			;
003908 3322     	CMP/HS 	R2,R3			;
00390A 8B4F     	BF      	L0039AC		;    *(u8*)0x090001F9 >= *(u8*)0x090001F5) goto L003262;
00390C D156     	MOV.L   	@(#158,PC),R1	;
00390E 6010     	MOV.B   	@R1,R0		;
003910 8810     	CMP/EQ  	#10,R0		;
003912 8B10     	BF      	L003936		;*(u8*)0x090001F6 != 0x10
003914 D158     	MOV.L   	@(#160,PC),R1	;
003916 6011     	MOV.W   	@R1,R0		;
003918 640C     	EXTU.B   	R0,R4			;
00391A 4019     	SHLR8   	R0			;
00391C C840     	TST     	#40,R0		;
00391E E000     	MOV     	#00,R0		;
003920 340E     	ADDC    	R0,R4			;u8 temp3 = *(u16*)0x0900020C[7:0] + *(u16*)0x0900020C[14];
003922 D152     	MOV.L   	@(#148,PC),R1	;
003924 6210     	MOV.B   	@R1,R2		;u8* temp4 = *(u8*)0x090001F9;
003926 D152     	MOV.L   	@(#148,PC),R1	;
003928 6310     	MOV.B   	@R1,R3		;u8* temp5 = *(u8*)0x090001F5;
00392A 3320     	CMP/EQ 	R2,R3			;
00392C 8B03     	BF      	L003936		;
00392E D151     	MOV.L   	@(#144,PC),R1	;
003930 6010     	MOV.B   	@R1,R0		;
003932 C840     	TST     	#40,R0		;
003934 8B09     	BF      	L00394A		;if (temp4 != temp5 || *(u8*)0x090001F8 & 0x40 == 0x00) {
L003936:
003936 4208     	SHLL2   	R2			;  temp4<<= 2;
003938 4308     	SHLL2   	R3			;  temp5<<= 2;
00393A D144     	MOV.L   	@(#110,PC),R1	;
00393C 321C     	ADD     	R1,R2			;  temp4+= 0x09000064;
00393E 331C     	ADD     	R1,R3			;  temp5+= 0x09000064;
L003940:
003940 6026     	MOV.L   	@R2+,R0		;  do {
003942 88FF     	CMP/EQ  	#FF,R0		;
003944 8932     	BT      	L0039AC		;  if(*((u32*)temp4++) == 0xFFFFFFFF) goto L003262;
003946 3236     	CMP/HI 	R3,R2			;
003948 8BFA     	BF      	#L003940		;  } while (temp4 <= temp5);
L00394A:							;}
00394A C42D     	MOV.B   	@(#02D,GBR),R0	;u8 i = *(u8*)(0x0F00025C+0x2D);
00394C 0944     	MOV.B   	R4,@(R0,R9)		;*(u8*)(arg1+i) = temp3;
00394E 6403     	MOV     	R0,R4			;
003950 7001     	ADD     	#01,R0		;
003952 C02D     	MOV.B   	R0,@(#02D,GBR)	;*(u8*)(0x0F00025C+0x2D) = i+1;
003954 E003     	MOV     	#03,R0		;
003956 CC80     	TST.B   	#80,@(R0,GBR)	;
003958 8901     	BT      	L00395E		;
00395A AF67     	BRA     	L00382C		;if (*(u8*)(0x0F00025C+0x03) & 0x80 != 0x00) goto L00382C;
00395C 0009     	NOP     				;
L00395E:
00395E E267     	MOV     	#67,R2		;
003960 4208     	SHLL2   	R2			;
003962 E167     	MOV     	#67,R1		;
003964 4108     	SHLL2   	R1			;
003966 D039     	MOV.L   	@(#0E4,PC),R0	;
003968 320C     	ADD     	R0,R2			;u32* ptr2 = 0x09000064 + (0x67*4);
00396A 310C     	ADD     	R0,R1			;u32* ptr1 = 0x09000064 + (0x67*4);
00396C 5012     	MOV.L   	@(#08,R1),R0	;ptr2--;
00396E 2206     	MOV.L   	R0,@-R2		;*ptr2 = *(ptr1+0x08);
003970 5011     	MOV.L   	@(#04,R1),R0	;ptr2--;
003972 2206     	MOV.L   	R0,@-R2		;*ptr2 = *(ptr1+0x04);
003974 6012     	MOV.L   	@R1,R0		;ptr2--;
003976 2206     	MOV.L   	R0,@-R2		;*ptr2 = *(ptr1+0x00);
003978 2940     	MOV.B   	R4,@R9		;*(u8*)arg1 = i;
00397A E064     	MOV     	#64,R0		;
00397C 009E     	MOV.L   	@(R0,R9),R0		;
00397E 88FF     	CMP/EQ  	#FF,R0		;
003980 8B03     	BF      	L00398A		;
003982 D135     	MOV.L   	@(#0D4,PC),R1	;
003984 6212     	MOV.L   	@R1,R2		;
003986 E064     	MOV     	#64,R0		;if (*(u32*)(arg1+0x64) != 0xFFFFFFFF)
003988 0926     	MOV.L   	R2,@(R0,R9)		;  *(u32*)(arg1+0x64) = *(u32*)0x090001FC;
L00398A:
00398A E064     	MOV     	#64,R0		;
00398C 0944     	MOV.B   	R4,@(R0,R9)		;*(u8*)(arg1+0x64) = i;
00398E E000     	MOV     	#00,R0		;
003990 C048     	MOV.B   	R0,@(#048,GBR)	;*(u8*)(0x0F00025C+0x48) = 0x00;
003992 D13B     	MOV.L   	@(#0EC,PC),R1	;
003994 6012     	MOV.L   	@R1,R0		;
003996 704B     	ADD     	#4B,R0		;
003998 704B     	ADD     	#4B,R0		;u32 fad = *(u32*)0x09000214 + 150;
00399A C211     	MOV.L   	R0,@(#044,GBR)	;*(u32*)(0x0F00025C+0x44) = fad;
00399C E700     	MOV     	#00,R7		;
00399E E800     	MOV     	#00,R8		;
0039A0 4F22     	STS.L   	PR,@-R15		;
0039A2 BA43     	BRS     	L002E2C		;L002E2C(fad,0,0);
0039A4 6603     	MOV     	R0,R6			;
0039A6 4F26     	LDS.L   	@R15+,PR		;
0039A8 E016     	MOV     	#16,R0		;
0039AA C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x16;
L0039AC:
0039AC AC59     	BRA     	L003262		;goto L003262;
0039AE 0009     	NOP     				;

L0039B0:
0039B0 8805     	CMP/EQ  	#05,R0		;
0039B2 8BFB     	BF      	L0039AC		;
0039B4 E303     	MOV     	#03,R3		;
0039B6 335C     	ADD     	R5,R3			;
0039B8 6030     	MOV.B   	@R3,R0		;
0039BA 88B0     	CMP/EQ  	#B0,R0		;if (cdd_rx_data.qcode & 0x0F != 0x05 ||
0039BC 8BF6     	BF      	L0039AC		;    cdd_rx_data.index != 0xB0) goto L003262;
0039BE E308     	MOV     	#08,R3		;
0039C0 335C     	ADD     	R5,R3			;
0039C2 4F22     	STS.L   	PR,@-R15		;
0039C4 B3F7     	BRS     	L0041B6		;u32 fad = msf2fad(&cdd_rx_data.abs_mm)
0039C6 0009     	NOP     				;
0039C8 4F26     	LDS.L   	@R15+,PR		;
0039CA 6103     	MOV     	R0,R1			;
0039CC E064     	MOV     	#64,R0		;
0039CE 0916     	MOV.L   	R1,@(R0,R9)		;*(u32*)(arg1+0x64) = fad;
0039D0 E304     	MOV     	#04,R3		;
0039D2 4F22     	STS.L   	PR,@-R15		;
0039D4 B3EF     	BRS     	L0041B6		;fad = msf2fad(&cdd_rx_data.mm)
0039D6 335C     	ADD     	R5,R3			;
0039D8 4F26     	LDS.L   	@R15+,PR		;
0039DA D128     	MOV.L   	@(#0A0,PC),R1	;
0039DC 6212     	MOV.L   	@R1,R2		;
0039DE 3026     	CMP/HI 	R2,R0			;
0039E0 8B01     	BF      	L0039E6		;if (*(u32*)0x09000210 > fad) {
0039E2 1121     	MOV.L   	R2,@(#4,R1)		;  *(u32*)0x09000214 = *(u32*)0x09000210;
0039E4 2102     	MOV.L   	R0,@R1		;  *(u32*)0x09000210 = fad;
L0039E6:							;}
0039E6 E003     	MOV     	#03,R0		;*(u8*)(0x0F00025C+0x03)|= 0x80;
0039E8 AFE0     	BRA     	L0039AC		;goto L003262;
0039EA CF80     	OR .B   	#80,@(R0,GBR)	;

L0039EC:
0039EC C42D     	MOV.B   	@(#02D,GBR),R0	;
0039EE 70FF     	ADD     	#FF,R0		;i = *(u8*)(0x0F00025C+0x2D) - 1;
0039F0 AFB5     	BRA     	L00395E		;goto L00395E;
0039F2 6403     	MOV     	R0,R4			;
L0039F4:
0039F4 C477     	MOV.B   	@(#077,GBR),R0	;
0039F6 88A0     	CMP/EQ  	#A0,R0		;
0039F8 8B04     	BF      	L003A04		;if (cdd_rx_data.index == 0xA0) {
0039FA D615     	MOV.L   	@(#054,PC),R6	;  u8* ptr3 = 0x090001F4;
0039FC A005     	BRA     	L003A0A		;  goto L003A0A;
0039FE 0009     	NOP     				;}
L003A00:
003A00 AF71     	BRA     	L0038E6		;
003A02 0009     	NOP     				;
L003A04:
003A04 88A1     	CMP/EQ  	#A1,R0		;
003A06 8B1A     	BF      	L003A3E		;else if (cdd_rx_data.index == 0xA1) {
003A08 D612     	MOV.L   	@(#048,PC),R6	;  u32* ptr3 =0x090001F8;
L003A0A:
003A0A E308     	MOV     	#08,R3		;
003A0C 335C     	ADD     	R5,R3			;
003A0E 4F22     	STS.L   	PR,@-R15		;
003A10 B3CE     	BRS     	L0041B0		;  u8 mm = bcd2num(&cdd_rx_data.abs_mm);
003A12 0009     	NOP     				;
003A14 4F26     	LDS.L   	@R15+,PR		;
003A16 6203     	MOV     	R0,R2			;
003A18 C475     	MOV.B   	@(#075,GBR),R0	;
003A1A 4018     	SHLL8   	R0			;
003A1C 220B     	OR      	R0,R2			;
003A1E C61F     	MOV.L   	@(#07C,GBR),R0	;
003A20 4018     	SHLL8   	R0			;
003A22 4029     	SHLR16  	R0			;
003A24 4228     	SHLL16  	R2			;
003A26 220B     	OR      	R0,R2			;u32 tocdata = cdd_rx_data.qcode<<24 | (mm<<16) | (cdd_rx_data.abs_mm<<8);
L003A28:
003A28 2622     	MOV.L   	R2,@R6		;*ptr3 = tocdata;
003A2A 760C     	ADD     	#0C,R6		;ptr3+= 3;
003A2C D00B     	MOV.L   	@(#02C,PC),R0	;
003A2E 3600     	CMP/EQ 	R0,R6			;
003A30 8B02     	BF      	L003A38		;
003A32 6062     	MOV.L   	@R6,R0		;
003A34 88FF     	CMP/EQ  	#FF,R0		;
003A36 8BE3     	BF      	L003A00		;  if (ptr3 != 0x09000200 || *ptr3 == 0xFFFFFFFF) {
L003A38:
003A38 2622     	MOV.L   	R2,@R6		;    *ptr3 = tocdata;
003A3A AFE1     	BRA     	L003A00		;  }
003A3C 0009     	NOP     				;  goto L0038E6;
L003A3E:							;}
003A3E 88A2     	CMP/EQ  	#A2,R0		;
003A40 8BB4     	BF      	L0039AC		;if (cdd_rx_data.index != 0xA2) goto L003262;
003A42 AF33     	BRA     	L0038AC		;num = 102;
003A44 E166     	MOV     	#66,R1		;goto L0038AC;
L003A46:
003A46 D604     	MOV.L   	@(#010,PC),R6	;u32* ptr3 = 0x090001FC;
003A48 AFEE     	BRA     	L003A28		;goto L003A28;
003A4A 0009     	NOP     				;
003A4C 09000064
003A50 090001F4
003A54 090001F8
003A58 090001FC
003A5C 09000200
003A60 0900
003A62 0204
003A64 0900
003A66 0208
003A68 090001F6
003A6C 090001F5
003A70 090001F9
003A74 090001F8
003A78 0900020C
003A7C 09000210
003A80 09000214

L003A84:							;
003A84 4F22     	STS.L   	PR,@-R15		;
003A86 B0F5     	BRS     	#01EA			;
003A88 0009     	NOP     				;
003A8A 4F26     	LDS.L   	@R15+,PR		;
003A8C DB05     	MOV.L   	@(#014,PC),R11	;
003A8E C321     	TRAPA   	#21			;
003A90 C609     	MOV.L   	@(#024,GBR),R0	;
003A92 6B03     	MOV     	R0,R11		;
003A94 E000     	MOV     	#00,R0		;
003A96 30B0     	CMP/EQ 	R11,R0		;
003A98 8901     	BT      	#002			;
003A9A ABE0     	BRA     	#17C0			;
003A9C C209     	MOV.L   	R0,@(#024,GBR)	;
003A9E ABE0     	BRA     	#17C0			;
003AA0 0009     	NOP     				;
003AA2 0009     	NOP     				;
003AA4 0706
003AA6 0001
003AA8 4F22     	STS.L   	PR,@-R15		;
003AAA B8CB     	BRS     	#1196			;
003AAC 0009     	NOP     				;
003AAE 4F26     	LDS.L   	@R15+,PR		;
003AB0 8901     	BT      	#002			;
003AB2 000B     	RTS     				;
003AB4 0009     	NOP     				;
003AB6 C474     	MOV.B   	@(#074,GBR),R0	;
003AB8 600C     	EXTU.B   	R0,R0			;
003ABA 6103     	MOV     	R0,R1			;
003ABC 4009     	SHLR2   	R0			;
003ABE 4009     	SHLR2   	R0			;
003AC0 8808     	CMP/EQ  	#08,R0		;
003AC2 8B41     	BF      	#082			;
003AC4 4F22     	STS.L   	PR,@-R15		;
003AC6 B361     	BRS     	#06C2			;
003AC8 0009     	NOP     				;
003ACA 4F26     	LDS.L   	@R15+,PR		;
003ACC E003     	MOV     	#03,R0		;
003ACE CC40     	TST.B   	#40,@(R0,GBR)	;
003AD0 8905     	BT      	#00A			;
003AD2 CDBF     	AND.B   	#BF,@(R0,GBR)	;
003AD4 E000     	MOV     	#00,R0		;
003AD6 C20F     	MOV.L   	R0,@(#03C,GBR)	;
003AD8 C210     	MOV.L   	R0,@(#040,GBR)	;
003ADA DB17     	MOV.L   	@(#05C,PC),R11	;
003ADC C321     	TRAPA   	#21			;
003ADE 6013     	MOV     	R1,R0			;
003AE0 C90F     	AND     	#0F,R0		;
003AE2 8800     	CMP/EQ  	#00,R0		;
003AE4 890A     	BT      	#014			;
003AE6 8801     	CMP/EQ  	#01,R0		;
003AE8 8908     	BT      	#010			;
003AEA 8802     	CMP/EQ  	#02,R0		;
003AEC 8906     	BT      	#00C			;
003AEE 8803     	CMP/EQ  	#03,R0		;
003AF0 8901     	BT      	#002			;
003AF2 C808     	TST     	#08,R0		;
003AF4 8902     	BT      	#004			;
003AF6 E099     	MOV     	#99,R0		;
003AF8 A00D     	BRA     	#001A			;
003AFA E10A     	MOV     	#0A,R1		;
003AFC 4F22     	STS.L   	PR,@-R15		;
003AFE BBB2     	BRS     	#1764			;
003B00 0009     	NOP     				;
003B02 4F26     	LDS.L   	@R15+,PR		;
003B04 D10D     	MOV.L   	@(#034,PC),R1	;
003B06 D20E     	MOV.L   	@(#038,PC),R2	;
003B08 D30E     	MOV.L   	@(#038,PC),R3	;
003B0A 4F22     	STS.L   	PR,@-R15		;
003B0C B31C     	BRS     	#0638			;
003B0E 0009     	NOP     				;
003B10 4F26     	LDS.L   	@R15+,PR		;
003B12 E012     	MOV     	#12,R0		;
003B14 E106     	MOV     	#06,R1		;
003B16 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x12;
003B18 6013     	MOV     	R1,R0			;
003B1A C02E     	MOV.B   	R0,@(#02E,GBR)	;
003B1C E04B     	MOV     	#4B,R0		;
003B1E CDF7     	AND.B   	#F7,@(R0,GBR)	;
003B20 DB04     	MOV.L   	@(#010,PC),R11	;
003B22 C325     	TRAPA   	#25			;
003B24 E04A     	MOV     	#4A,R0		;
003B26 CDBF     	AND.B   	#BF,@(R0,GBR)	;
003B28 E000     	MOV     	#00,R0		;
003B2A A4EE     	BRA     	#09DC			;
003B2C C211     	MOV.L   	R0,@(#044,GBR)	;
003B2E 0009
003B30 0706
003B32 0000
003B34 0606
003B36 0000
003B38 0706
003B3A 0003
003B3C 0000     	
003B3E 0000     	
003B40 0000     	
003B42 0000     	
003B44 0000     	
003B46 0000     	
003B48 C474     	MOV.B   	@(#074,GBR),R0	;
003B4A 620C     	EXTU.B   	R0,R2			;
003B4C 4209     	SHLR2   	R2			;
003B4E 4209     	SHLR2   	R2			;
003B50 C449     	MOV.B   	@(#049,GBR),R0	;
003B52 E104     	MOV     	#04,R1		;
003B54 3012     	CMP/HS 	R1,R0			;
003B56 8B0A     	BF      	#014			;
003B58 E10C     	MOV     	#0C,R1		;
003B5A 3102     	CMP/HS 	R0,R1			;
003B5C 8B07     	BF      	#00E			;
003B5E 70FC     	ADD     	#FC,R0		;
003B60 6103     	MOV     	R0,R1			;
003B62 C706     	MOVA    	@(#18,PC),R0	;
003B64 4108     	SHLL2   	R1			;
003B66 310C     	ADD     	R0,R1			;
003B68 6012     	MOV.L   	@R1,R0		;
003B6A 402B     	JMP     	@R0			;
003B6C 0009     	NOP     				;
003B6E 8821     	CMP/EQ  	#21,R0		;
003B70 8B01     	BF      	#002			;
003B72 A2AD     	BRA     	#055A			;
003B74 0009     	NOP     				;
003B76 000B     	RTS     				;
003B78 0009     	NOP     				;
003B7A 0009     	NOP     				;
003B7C 0000
003B7E 3BA0
003B80 0000
003B82 3C96
003B84 0000
003B86 3CAC
003B88 0000
003B8A 3DEE
003B8C 0000
003B8E 3E5A
003B90 0000
003B92 3E5E
003B94 0000
003B96 3E62
003B98 0000
003B9A 3EB4
003B9C 0000
003B9E 3EC2     	CMP/HS 	R12,R14		;
003BA0 6023     	MOV     	R2,R0			;
003BA2 8803     	CMP/EQ  	#03,R0		;
003BA4 890E     	BT      	#01C			;
003BA6 8804     	CMP/EQ  	#04,R0		;
003BA8 8964     	BT      	#0C8			;
003BAA 8801     	CMP/EQ  	#01,R0		;
003BAC 8903     	BT      	#006			;
003BAE 000B     	RTS     				;
003BB0 0009     	NOP     				;
003BB2 A49F     	BRA     	#093E			;
003BB4 C02E     	MOV.B   	R0,@(#02E,GBR)	;
003BB6 4F22     	STS.L   	PR,@-R15		;
003BB8 B2E8     	BRS     	#05D0			;
003BBA 0009     	NOP     				;
003BBC 4F26     	LDS.L   	@R15+,PR		;
003BBE E10A     	MOV     	#0A,R1		;
003BC0 AFA9     	BRA     	#1F52			;
003BC2 E099     	MOV     	#99,R0		;
003BC4 E000     	MOV     	#00,R0		;
003BC6 C20E     	MOV.L   	R0,@(#038,GBR)	;
003BC8 C152     	MOV.W   	R0,@(#0A4,GBR)	;
003BCA E074     	MOV     	#74,R0		;
003BCC CC04     	TST.B   	#04,@(R0,GBR)	;
003BCE 8B0D     	BF      	#01A			;
003BD0 E04A     	MOV     	#4A,R0		;
003BD2 CC84     	TST.B   	#84,@(R0,GBR)	;
003BD4 8B3B     	BF      	#076			;
003BD6 E04B     	MOV     	#4B,R0		;
003BD8 CC20     	TST.B   	#20,@(R0,GBR)	;
003BDA 8B02     	BF      	#004			;
003BDC E030     	MOV     	#30,R0		;
003BDE CC40     	TST.B   	#40,@(R0,GBR)	;
003BE0 893B     	BT      	#076			;
003BE2 C444     	MOV.B   	@(#044,GBR),R0	;
003BE4 8800     	CMP/EQ  	#00,R0		;
003BE6 8922     	BT      	#044			;
003BE8 000B     	RTS     				;
003BEA 0009     	NOP     				;
003BEC 4F22     	STS.L   	PR,@-R15		;
003BEE B365     	BRS     	#06CA			;
003BF0 0009     	NOP     				;
003BF2 4F26     	LDS.L   	@R15+,PR		;
003BF4 E04A     	MOV     	#4A,R0		;
003BF6 CC84     	TST.B   	#84,@(R0,GBR)	;
003BF8 8B29     	BF      	#052			;
003BFA E04B     	MOV     	#4B,R0		;
003BFC CC20     	TST.B   	#20,@(R0,GBR)	;
003BFE 8B05     	BF      	#00A			;
003C00 E030     	MOV     	#30,R0		;
003C02 CC40     	TST.B   	#40,@(R0,GBR)	;
003C04 8926     	BT      	#04C			;
003C06 E075     	MOV     	#75,R0		;
003C08 CC40     	TST.B   	#40,@(R0,GBR)	;
003C0A 8920     	BT      	#040			;
003C0C C444     	MOV.B   	@(#044,GBR),R0	;
003C0E 8800     	CMP/EQ  	#00,R0		;
003C10 890D     	BT      	#01A			;
003C12 C475     	MOV.B   	@(#075,GBR),R0	;
003C14 C90F     	AND     	#0F,R0		;
003C16 8801     	CMP/EQ  	#01,R0		;
003C18 8901     	BT      	#002			;
003C1A 000B     	RTS     				;
003C1C 0009     	NOP     				;
003C1E C60E     	MOV.L   	@(#038,GBR),R0	;
003C20 7005     	ADD     	#05,R0		;
003C22 C211     	MOV.L   	R0,@(#044,GBR)	;
003C24 E001     	MOV     	#01,R0		;
003C26 CC80     	TST.B   	#80,@(R0,GBR)	;
003C28 8B01     	BF      	#002			;
003C2A C611     	MOV.L   	@(#044,GBR),R0	;
003C2C C220     	MOV.L   	R0,@(#080,GBR)	;
003C2E C611     	MOV.L   	@(#044,GBR),R0	;
003C30 C217     	MOV.L   	R0,@(#05C,GBR)	;
003C32 C214     	MOV.L   	R0,@(#050,GBR)	;
003C34 E000     	MOV     	#00,R0		;
003C36 C215     	MOV.L   	R0,@(#054,GBR)	;
003C38 DB0C     	MOV.L   	@(#030,PC),R11	;
003C3A C402     	MOV.B   	@(#002,GBR),R0	;
003C3C 3B0C     	ADD     	R0,R11		;
003C3E C321     	TRAPA   	#21			;
003C40 E04B     	MOV     	#4B,R0		;
003C42 CF40     	OR .B   	#40,@(R0,GBR)	;
003C44 C402     	MOV.B   	@(#002,GBR),R0	;
003C46 8806     	CMP/EQ  	#06,R0		;
003C48 8B01     	BF      	#002			;
003C4A E04B     	MOV     	#4B,R0		;
003C4C CD7F     	AND.B   	#7F,@(R0,GBR)	;
003C4E E00C     	MOV     	#0C,R0		;cd_state = 0x0C;
003C50 000B     	RTS     				;
003C52 C049     	MOV.B   	R0,@(#049,GBR)	;
003C54 E075     	MOV     	#75,R0		;
003C56 CC40     	TST.B   	#40,@(R0,GBR)	;
003C58 8BF9     	BF      	#1F2			;
003C5A E000     	MOV     	#00,R0		;
003C5C CC02     	TST.B   	#02,@(R0,GBR)	;
003C5E 89F6     	BT      	#1EC			;
003C60 DB03     	MOV.L   	@(#00C,PC),R11	;
003C62 C321     	TRAPA   	#21			;
003C64 E04B     	MOV     	#4B,R0		;
003C66 AFF2     	BRA     	#1FE4			;
003C68 CF02     	OR .B   	#02,@(R0,GBR)	;
003C6A 0009     	NOP     				;
003C6C 0506     	MOV.L   	R0,@(R0,R5)		;
003C6E 0000     	
003C70 0506     	MOV.L   	R0,@(R0,R5)		;
003C72 0005     	MOV.W   	R0,@(R0,R0)		;
003C74 E04A     	MOV     	#4A,R0		;
003C76 CC80     	TST.B   	#80,@(R0,GBR)	;
003C78 890A     	BT      	#014			;
003C7A E000     	MOV     	#00,R0		;
003C7C C20E     	MOV.L   	R0,@(#038,GBR)	;
003C7E E074     	MOV     	#74,R0		;
003C80 CC04     	TST.B   	#04,@(R0,GBR)	;
003C82 8905     	BT      	#00A			;
003C84 4F22     	STS.L   	PR,@-R15		;
003C86 B319     	BRS     	#0632			;
003C88 0009     	NOP     				;
003C8A 4F26     	LDS.L   	@R15+,PR		;
003C8C E00B     	MOV     	#0B,R0		;
003C8E C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x0B;
003C90 000B     	RTS     				;
003C92 0009     	NOP     				;
003C94 2710     	MOV.B   	R1,@R7		;
003C96 6023     	MOV     	R2,R0			;
003C98 8804     	CMP/EQ  	#04,R0		;
003C9A 8905     	BT      	#00A			;
003C9C 8801     	CMP/EQ  	#01,R0		;
003C9E 8901     	BT      	#002			;
003CA0 000B     	RTS     				;
003CA2 0009     	NOP     				;
003CA4 AF87     	BRA     	#1F0E			;
003CA6 0009     	NOP     				;
003CA8 000B     	RTS     				;
003CAA 0009     	NOP     				;
003CAC 6023     	MOV     	R2,R0			;
003CAE 8804     	CMP/EQ  	#04,R0		;
003CB0 8907     	BT      	#00E			;
003CB2 8803     	CMP/EQ  	#03,R0		;
003CB4 8905     	BT      	#00A			;
003CB6 8801     	CMP/EQ  	#01,R0		;
003CB8 8901     	BT      	#002			;
003CBA 000B     	RTS     				;
003CBC 0009     	NOP     				;
003CBE AF7A     	BRA     	#1EF4			;
003CC0 0009     	NOP     				;
003CC2 E074     	MOV     	#74,R0		;
003CC4 CC04     	TST.B   	#04,@(R0,GBR)	;
003CC6 8B04     	BF      	#008			;
003CC8 E04B     	MOV     	#4B,R0		;
003CCA CC40     	TST.B   	#40,@(R0,GBR)	;
003CCC 8B1A     	BF      	#034			;
003CCE 000B     	RTS     				;
003CD0 0009     	NOP     				;
003CD2 C60E     	MOV.L   	@(#038,GBR),R0	;
003CD4 6903     	MOV     	R0,R9			;
003CD6 4F22     	STS.L   	PR,@-R15		;
003CD8 B2F0     	BRS     	#05E0			;
003CDA 0009     	NOP     				;
003CDC 4F26     	LDS.L   	@R15+,PR		;
003CDE E04B     	MOV     	#4B,R0		;
003CE0 CC40     	TST.B   	#40,@(R0,GBR)	;
003CE2 8B0F     	BF      	#01E			;
003CE4 C431     	MOV.B   	@(#031,GBR),R0	;
003CE6 8800     	CMP/EQ  	#00,R0		;
003CE8 890C     	BT      	#018			;
003CEA 88AA     	CMP/EQ  	#AA,R0		;
003CEC 890A     	BT      	#014			;
003CEE 4F22     	STS.L   	PR,@-R15		;
003CF0 B077     	BRS     	#00EE			;
003CF2 C60E     	MOV.L   	@(#038,GBR),R0	;
003CF4 4F26     	LDS.L   	@R15+,PR		;
003CF6 8B05     	BF      	#00A			;
003CF8 E04B     	MOV     	#4B,R0		;
003CFA CF04     	OR .B   	#04,@(R0,GBR)	;
003CFC 6093     	MOV     	R9,R0			;
003CFE 701E     	ADD     	#1E,R0		;
003D00 A92C     	BRA     	#1258			;
003D02 C211     	MOV.L   	R0,@(#044,GBR)	;
003D04 4F22     	STS.L   	PR,@-R15		;
003D06 B35D     	BRS     	#06BA			;
003D08 0009     	NOP     				;
003D0A 4F26     	LDS.L   	@R15+,PR		;
003D0C 4F22     	STS.L   	PR,@-R15		;
003D0E BAD9     	BRS     	#15B2			;
003D10 0009     	NOP     				;
003D12 4F26     	LDS.L   	@R15+,PR		;
003D14 8B3A     	BF      	#074			;
003D16 C432     	MOV.B   	@(#032,GBR),R0	;
003D18 8800     	CMP/EQ  	#00,R0		;
003D1A 8B35     	BF      	#06A			;
003D1C C431     	MOV.B   	@(#031,GBR),R0	;
003D1E 88AA     	CMP/EQ  	#AA,R0		;
003D20 8932     	BT      	#064			;
003D22 8800     	CMP/EQ  	#00,R0		;
003D24 8930     	BT      	#060			;
003D26 D11E     	MOV.L   	@(#078,PC),R1	;
003D28 6210     	MOV.B   	@R1,R2		;
003D2A 3026     	CMP/HI 	R2,R0			;
003D2C 8907     	BT      	#00E			;
003D2E 3200     	CMP/EQ 	R0,R2			;
003D30 8B2A     	BF      	#054			;
003D32 D11D     	MOV.L   	@(#074,PC),R1	;
003D34 6010     	MOV.B   	@R1,R0		;
003D36 8810     	CMP/EQ  	#10,R0		;
003D38 8911     	BT      	#022			;
003D3A A025     	BRA     	#004A			;
003D3C 0009     	NOP     				;
003D3E 4F22     	STS.L   	PR,@-R15		;
003D40 B263     	BRS     	#04C6			;
003D42 6103     	MOV     	R0,R1			;
003D44 4F26     	LDS.L   	@R15+,PR		;
003D46 6203     	MOV     	R0,R2			;
003D48 C431     	MOV.B   	@(#031,GBR),R0	;
003D4A 70FF     	ADD     	#FF,R0		;
003D4C 4F22     	STS.L   	PR,@-R15		;
003D4E B25C     	BRS     	#04B8			;
003D50 6103     	MOV     	R0,R1			;
003D52 4F26     	LDS.L   	@R15+,PR		;
003D54 202A     	XOR     	R2,R0			;
003D56 4029     	SHLR16  	R0			;
003D58 4019     	SHLR8   	R0			;
003D5A C840     	TST     	#40,R0		;
003D5C 8914     	BT      	#028			;
003D5E 6023     	MOV     	R2,R0			;
003D60 4029     	SHLR16  	R0			;
003D62 4019     	SHLR8   	R0			;
003D64 C840     	TST     	#40,R0		;
003D66 8904     	BT      	#008			;
003D68 6023     	MOV     	R2,R0			;
003D6A 4018     	SHLL8   	R0			;
003D6C 4019     	SHLR8   	R0			;
003D6E A008     	BRA     	#0010			;
003D70 C211     	MOV.L   	R0,@(#044,GBR)	;
003D72 C431     	MOV.B   	@(#031,GBR),R0	;
003D74 6009     	SWAP.W   	R0,R0			;
003D76 7001     	ADD     	#01,R0		;
003D78 6009     	SWAP.W   	R0,R0			;
003D7A 4F22     	STS.L   	PR,@-R15		;
003D7C BBD8     	BRS     	#17B0			;
003D7E 4018     	SHLL8   	R0			;
003D80 4F26     	LDS.L   	@R15+,PR		;
003D82 E001     	MOV     	#01,R0		;
003D84 A8C3     	BRA     	#1186			;
003D86 CF80     	OR .B   	#80,@(R0,GBR)	;
003D88 000B     	RTS     				;
003D8A 0009     	NOP     				;
003D8C 4F22     	STS.L   	PR,@-R15		;
003D8E B00D     	BRS     	#001A			;
003D90 0009     	NOP     				;
003D92 4F26     	LDS.L   	@R15+,PR		;
003D94 8901     	BT      	#002			;
003D96 A8B3     	BRA     	#1166			;
003D98 0009     	NOP     				;
003D9A A9B4     	BRA     	#1368			;
003D9C 0009     	NOP     				;
003D9E 0009     	NOP     				;
003DA0 0900
003DA2 01F5
003DA4 4000
003DA6 0000
003DA8 0900
003DAA 01F6     	MOV.L   	R15,@(R0,R1)	;
003DAC C440     	MOV.B   	@(#040,GBR),R0	;
003DAE 6103     	MOV     	R0,R1			;
003DB0 C42F     	MOV.B   	@(#02F,GBR),R0	;
003DB2 3106     	CMP/HI 	R0,R1			;
003DB4 8B06     	BF      	#00C			;
003DB6 E10E     	MOV     	#0E,R1		;
003DB8 3106     	CMP/HI 	R0,R1			;
003DBA 8B01     	BF      	#002			;
003DBC 7001     	ADD     	#01,R0		;
003DBE C02F     	MOV.B   	R0,@(#02F,GBR)	;
003DC0 000B     	RTS     				;
003DC2 0008     	CLRT    				;

003DC4 E04B     	MOV     	#4B,R0		;
003DC6 CF01     	OR .B   	#01,@(R0,GBR)	;
003DC8 000B     	RTS     				;
003DCA 0018     	SETT    				;

L003DCC:
003DCC C440     	MOV.B   	@(#040,GBR),R0	;
003DCE 6103     	MOV     	R0,R1			;
003DD0 C42F     	MOV.B   	@(#02F,GBR),R0	;
003DD2 3106     	CMP/HI 	R0,R1			;
003DD4 8B01     	BF      	L003DDA		;
003DD6 000B     	RTS     				;
003DD8 0008     	CLRT    				;
L003DDA:
003DDA E04B     	MOV     	#4B,R0		;
003DDC CF01     	OR .B   	#01,@(R0,GBR)	;
003DDE 000B     	RTS     				;
003DE0 0018     	SETT    				;

L003DE2:
003DE2 3906     	CMP/HI 	R0,R9			;
003DE4 8901     	BT      	#002			;
003DE6 70B5     	ADD     	#B5,R0		;
003DE8 3096     	CMP/HI 	R9,R0			;
003DEA 000B     	RTS     				;
003DEC 0009     	NOP     				;
003DEE 6023     	MOV     	R2,R0			;
003DF0 8805     	CMP/EQ  	#05,R0		;
003DF2 890E     	BT      	#01C			;
003DF4 8804     	CMP/EQ  	#04,R0		;
003DF6 8905     	BT      	#00A			;
003DF8 8801     	CMP/EQ  	#01,R0		;
003DFA 8901     	BT      	#002			;
003DFC 000B     	RTS     				;
003DFE 0009     	NOP     				;
003E00 AED9     	BRA     	#1DB2			;
003E02 0009     	NOP     				;
003E04 4F22     	STS.L   	PR,@-R15		;
003E06 BFE1     	BRS     	#1FC2			;
003E08 0009     	NOP     				;
003E0A 4F26     	LDS.L   	@R15+,PR		;
003E0C E04A     	MOV     	#4A,R0		;
003E0E A0EF     	BRA     	#01DE			;
003E10 CF80     	OR .B   	#80,@(R0,GBR)	;
003E12 E074     	MOV     	#74,R0		;
003E14 CC04     	TST.B   	#04,@(R0,GBR)	;
003E16 8918     	BT      	#030			;
003E18 4F22     	STS.L   	PR,@-R15		;
003E1A B24F     	BRS     	#049E			;
003E1C 0009     	NOP     				;
003E1E 4F26     	LDS.L   	@R15+,PR		;
003E20 C430     	MOV.B   	@(#030,GBR),R0	;
003E22 6103     	MOV     	R0,R1			;
003E24 C475     	MOV.B   	@(#075,GBR),R0	;
003E26 201A     	XOR     	R1,R0			;
003E28 C840     	TST     	#40,R0		;
003E2A 8905     	BT      	#00A			;
003E2C 4F22     	STS.L   	PR,@-R15		;
003E2E B2C9     	BRS     	#0592			;
003E30 0009     	NOP     				;
003E32 4F26     	LDS.L   	@R15+,PR		;
003E34 A116     	BRA     	#022C			;
003E36 0009     	NOP     				;
003E38 4F22     	STS.L   	PR,@-R15		;
003E3A B2C3     	BRS     	#0586			;
003E3C 0009     	NOP     				;
003E3E 4F26     	LDS.L   	@R15+,PR		;
003E40 4F22     	STS.L   	PR,@-R15		;
003E42 BA3F     	BRS     	#147E			;
003E44 0009     	NOP     				;
003E46 4F26     	LDS.L   	@R15+,PR		;
003E48 8B01     	BF      	#002			;
003E4A 000B     	RTS     				;
003E4C 0009     	NOP     				;
003E4E 4F22     	STS.L   	PR,@-R15		;
003E50 BFBC     	BRS     	#1F78			;
003E52 0009     	NOP     				;
003E54 4F26     	LDS.L   	@R15+,PR		;
003E56 A956     	BRA     	#12AC			;
003E58 0009     	NOP     				;
003E5A 000B     	RTS     				;
003E5C 0009     	NOP     				;
003E5E 000B     	RTS     				;
003E60 0009     	NOP     				;
003E62 6023     	MOV     	R2,R0			;
003E64 8804     	CMP/EQ  	#04,R0		;
003E66 8905     	BT      	#00A			;
003E68 8801     	CMP/EQ  	#01,R0		;
003E6A 8901     	BT      	#002			;
003E6C 000B     	RTS     				;
003E6E 0009     	NOP     				;
003E70 AEA1     	BRA     	#1D42			;
003E72 0009     	NOP     				;
003E74 E005     	MOV     	#05,R0		;
003E76 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x05;
003E78 E001     	MOV     	#01,R0		;
003E7A C02E     	MOV.B   	R0,@(#02E,GBR)	;
003E7C 4F22     	STS.L   	PR,@-R15		;
003E7E B36B     	BRS     	#06D6			;
003E80 0009     	NOP     				;
003E82 4F26     	LDS.L   	@R15+,PR		;
003E84 4F22     	STS.L   	PR,@-R15		;
003E86 BA1D     	BRS     	#143A			;
003E88 0009     	NOP     				;
003E8A 4F26     	LDS.L   	@R15+,PR		;
003E8C 890D     	BT      	#01A			;
003E8E 4F22     	STS.L   	PR,@-R15		;
003E90 BF9C     	BRS     	#1F38			;
003E92 0009     	NOP     				;
003E94 4F26     	LDS.L   	@R15+,PR		;
003E96 8902     	BT      	#004			;
003E98 E04B     	MOV     	#4B,R0		;
003E9A CC80     	TST.B   	#80,@(R0,GBR)	;
003E9C 8B05     	BF      	#00A			;
003E9E E04B     	MOV     	#4B,R0		;
003EA0 CC40     	TST.B   	#40,@(R0,GBR)	;
003EA2 8902     	BT      	#004			;
003EA4 CD3F     	AND.B   	#3F,@(R0,GBR)	;
003EA6 DB02     	MOV.L   	@(#008,PC),R11	;
003EA8 C321     	TRAPA   	#21			;
003EAA A0B2     	BRA     	#0164			;
003EAC 0009     	NOP     				;
003EAE 0009     	NOP     				;
003EB0 0506     	MOV.L   	R0,@(R0,R5)		;
003EB2 0003     	BSRF    	R0			;
003EB4 6023     	MOV     	R2,R0			;
003EB6 8804     	CMP/EQ  	#04,R0		;
003EB8 890C     	BT      	#018			;
003EBA 8801     	CMP/EQ  	#01,R0		;
003EBC 8908     	BT      	#010			;
003EBE 000B     	RTS     				;
003EC0 0009     	NOP     				;
003EC2 6023     	MOV     	R2,R0			;
003EC4 8803     	CMP/EQ  	#03,R0		;
003EC6 8905     	BT      	#00A			;
003EC8 8801     	CMP/EQ  	#01,R0		;
003ECA 8901     	BT      	#002			;
003ECC 000B     	RTS     				;
003ECE 0009     	NOP     				;
003ED0 AE71     	BRA     	#1CE2			;
003ED2 0009     	NOP     				;

003ED4 C60E     	MOV.L   	@(#038,GBR),R0	;
003ED6 6903     	MOV     	R0,R9			;
003ED8 E074     	MOV     	#74,R0		;
003EDA CC04     	TST.B   	#04,@(R0,GBR)	;
003EDC 8903     	BT      	#006			;
003EDE C475     	MOV.B   	@(#075,GBR),R0	;
003EE0 C90F     	AND     	#0F,R0		;
003EE2 8801     	CMP/EQ  	#01,R0		;
003EE4 8907     	BT      	#00E			;
003EE6 C60E     	MOV.L   	@(#038,GBR),R0	;
003EE8 8800     	CMP/EQ  	#00,R0		;
003EEA 8977     	BT      	#0EE			;
003EEC 7001     	ADD     	#01,R0		;
003EEE C20E     	MOV.L   	R0,@(#038,GBR)	;
003EF0 E04B     	MOV     	#4B,R0		;
003EF2 A004     	BRA     	#0008			;
003EF4 CF10     	OR .B   	#10,@(R0,GBR)	;
003EF6 4F22     	STS.L   	PR,@-R15		;
003EF8 B1E0     	BRS     	#03C0			;
003EFA 0009     	NOP     				;
003EFC 4F26     	LDS.L   	@R15+,PR		;
003EFE E04B     	MOV     	#4B,R0		;
003F00 CC40     	TST.B   	#40,@(R0,GBR)	;
003F02 8922     	BT      	#044			;
003F04 CC80     	TST.B   	#80,@(R0,GBR)	;
003F06 8B20     	BF      	L003F4A		;
003F08 C615     	MOV.L   	@(#054,GBR),R0	;
003F0A 8800     	CMP/EQ  	#00,R0		;
003F0C 8904     	BT      	#008			;
003F0E 6103     	MOV     	R0,R1			;
003F10 C611     	MOV.L   	@(#044,GBR),R0	;
003F12 3102     	CMP/HS 	R0,R1			;
003F14 8964     	BT      	#0C8			;
003F16 8B61     	BF      	#0C2			;
003F18 C552     	MOV.W   	@(#0A4,GBR),R0	;
003F1A 7001     	ADD     	#01,R0		;
003F1C C152     	MOV.W   	R0,@(#0A4,GBR)	;
003F1E 919A     	MOV.W   	@(#134,PC),R1	;
003F20 3106     	CMP/HI 	R0,R1			;
003F22 895B     	BT      	L003FDC		;
003F24 E04A     	MOV     	#4A,R0		;
003F26 CF08     	OR .B   	#08,@(R0,GBR)	;
003F28 E04B     	MOV     	#4B,R0		;
003F2A CF08     	OR .B   	#08,@(R0,GBR)	;
003F2C CD1B     	AND.B   	#1B,@(R0,GBR)	;
003F2E E003     	MOV     	#03,R0		;
003F30 CC40     	TST.B   	#40,@(R0,GBR)	;
003F32 8903     	BT      	#006			;
003F34 DB45     	MOV.L   	@(#114,PC),R11	;
003F36 C321     	TRAPA   	#33			;TRAP_33(0x05060003);
003F38 AC0A     	BRA     	#1814			;
003F3A 0009     	NOP     				;

003F3C E04B     	MOV     	#4B,R0		;
003F3E CD3F     	AND.B   	#3F,@(R0,GBR)	;
003F40 DB42     	MOV.L   	@(#108,PC),R11	;
003F42 C321     	TRAPA   	#33			;TRAP_33(0x05060003);
003F44 E005     	MOV     	#05,R0		;cd_state = 0x05;
003F46 A8F0     	BRA     	#11E0			;
003F48 C049     	MOV.B   	R0,@(#049,GBR)	;
L003F4A:
003F4A 2998     	TST     	R9,R9			;
003F4C 8926     	BT      	L003F9C		;
003F4E 4F22     	STS.L   	PR,@-R15		;
003F50 BF47     	BRS     	L003DE2		;L003DE2();
003F52 C60E     	MOV.L   	@(#038,GBR),R0	;
003F54 4F26     	LDS.L   	@R15+,PR		;
003F56 8B21     	BF      	L003F9C		;
003F58 E04B     	MOV     	#4B,R0		;
003F5A CF04     	OR .B   	#04,@(R0,GBR)	;*(u8*)(0x0F00025C+0x4B)|= 0x04;
003F5C E008     	MOV     	#08,R0		;
003F5E 4F22     	STS.L   	PR,@-R15		;cd_state = 0x08;
003F60 B2C8     	BRS     	L0044F4		;L0044F4();
003F62 C02E     	MOV.B   	R0,@(#02E,GBR)	;
003F64 4F26     	LDS.L   	@R15+,PR		;
003F66 C449     	MOV.B   	@(#049,GBR),R0	;
003F68 880C     	CMP/EQ  	#0C,R0		;
003F6A 8902     	BT      	#004			;
003F6C D107     	MOV.L   	@(#01C,PC),R1	;u8 cmd[12] = {0};
003F6E A001     	BRA     	#0002			;
003F70 0009     	NOP     				;
003F72 D107     	MOV.L   	@(#01C,PC),R1	;cmd[0] = cd_state == 0x0C ? 0x06 : 0x09;
003F74 D207     	MOV.L   	@(#01C,PC),R2	;cmd[10] = 0xFF;
003F76 D308     	MOV.L   	@(#020,PC),R3	;cmd[11] = 0x01;
003F78 791E     	ADD     	#1E,R9		;
003F7A 219B     	OR      	R9,R1			;*((u32*)cmd[4]) |= R9 + 30;
003F7C E004     	MOV     	#04,R0		;
003F7E C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x04;
003F80 4F22     	STS.L   	PR,@-R15		;
003F82 B0E1     	BRS     	L004148		;make_cdd_cmd(cmd);
003F84 0009     	NOP     				;
003F86 4F26     	LDS.L   	@R15+,PR		;
003F88 000B     	RTS     				;
003F8A 0009     	NOP     				;
003F8C 09000000
003F90 06000000
003F94 00000000
003F98 0000FF01
L003F9C:
003F9C C444     	MOV.B   	@(#044,GBR),R0	;
003F9E 8800     	CMP/EQ  	#00,R0		;
003FA0 8B01     	BF      	#002			;
003FA2 AFB4     	BRA     	#1F68			;
003FA4 C60E     	MOV.L   	@(#038,GBR),R0	;
003FA6 E074     	MOV     	#74,R0		;
003FA8 CC04     	TST.B   	#04,@(R0,GBR)	;
003FAA 8917     	BT      	#02E			;
003FAC C475     	MOV.B   	@(#075,GBR),R0	;
003FAE C90F     	AND     	#0F,R0		;
003FB0 8801     	CMP/EQ  	#01,R0		;
003FB2 8B13     	BF      	#026			;
003FB4 0312     	STC     	GBR, R3		;
003FB6 4F22     	STS.L   	PR,@-R15		;
003FB8 B0FA     	BRS     	#01F4			;
003FBA 7376     	ADD     	#76,R3		;
003FBC 4F26     	LDS.L   	@R15+,PR		;
003FBE 6103     	MOV     	R0,R1			;
003FC0 C431     	MOV.B   	@(#031,GBR),R0	;
003FC2 3102     	CMP/HS 	R0,R1			;
003FC4 8B0A     	BF      	#014			;
003FC6 3100     	CMP/EQ 	R0,R1			;
003FC8 8B0A     	BF      	#014			;
003FCA 0312     	STC     	GBR, R3		;
003FCC 4F22     	STS.L   	PR,@-R15		;
003FCE B0EF     	BRS     	#01DE			;
003FD0 7377     	ADD     	#77,R3		;
003FD2 4F26     	LDS.L   	@R15+,PR		;
003FD4 6103     	MOV     	R0,R1			;
003FD6 C432     	MOV.B   	@(#032,GBR),R0	;
003FD8 3102     	CMP/HS 	R0,R1			;
003FDA 8901     	BT      	#002			;
L003FDC:
003FDC 000B     	RTS     				;
003FDE 0009     	NOP     				;
003FE0 E04B     	MOV     	#4B,R0		;
003FE2 CDFB     	AND.B   	#FB,@(R0,GBR)	;
003FE4 E04A     	MOV     	#4A,R0		;
003FE6 CC04     	TST.B   	#04,@(R0,GBR)	;
003FE8 8B3C     	BF      	#078			;
003FEA C449     	MOV.B   	@(#049,GBR),R0	;
003FEC 880C     	CMP/EQ  	#0C,R0		;
003FEE 8933     	BT      	#066			;
003FF0 E005     	MOV     	#05,R0		;
003FF2 C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x05;
003FF4 E001     	MOV     	#01,R0		;
003FF6 C02E     	MOV.B   	R0,@(#02E,GBR)	;
003FF8 4F22     	STS.L   	PR,@-R15		;
003FFA B1E3     	BRS     	#03C6			;
003FFC 0009     	NOP     				;
003FFE 4F26     	LDS.L   	@R15+,PR		;
004000 4F22     	STS.L   	PR,@-R15		;
004002 B95F     	BRS     	#12BE			;
004004 0009     	NOP     				;
004006 4F26     	LDS.L   	@R15+,PR		;
004008 8903     	BT      	#006			;
00400A 4F22     	STS.L   	PR,@-R15		;
00400C BEDE     	BRS     	#1DBC			;
00400E 0009     	NOP     				;
004010 4F26     	LDS.L   	@R15+,PR		;
004012 E04B     	MOV     	#4B,R0		;
004014 CC01     	TST.B   	#01,@(R0,GBR)	;
004016 8903     	BT      	#006			;
004018 CDFE     	AND.B   	#FE,@(R0,GBR)	;
00401A D10B     	MOV.L   	@(#02C,PC),R1	;
00401C E010     	MOV     	#10,R0		;
00401E 2101     	MOV.W   	R0,@R1		;
004020 E04A     	MOV     	#4A,R0		;
004022 CC40     	TST.B   	#40,@(R0,GBR)	;
004024 8B0B     	BF      	#016			;
004026 C502     	MOV.W   	@(#004,GBR),R0	;
004028 2008     	TST     	R0,R0			;
00402A 8B01     	BF      	#002			;
00402C E0B4     	MOV     	#B4,R0		;
00402E 600C     	EXTU.B   	R0,R0			;
004030 9110     	MOV.W   	@(#020,PC),R1	;
004032 201E     	MULU.W  	R1,R0			;
004034 0A1A     	STS     	MACL, R10		;
004036 DB03     	MOV.L   	@(#00C,PC),R11	;
004038 C324     	TRAPA   	#24			;
00403A E04A     	MOV     	#4A,R0		;
00403C CF40     	OR .B   	#40,@(R0,GBR)	;
00403E 000B     	RTS     				;
004040 0009     	NOP     				;
004042 0009     	NOP     				;
004044 0606
004046 0000
004048 0A00
00404A 001E
00404C 05060003
004050 0706
004052 0003
004054 2710     	MOV.B   	R1,@R7		;
004056 0096     	MOV.L   	R9,@(R0,R0)		;
004058 E006     	MOV     	#06,R0		;
00405A C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x06;
00405C E003     	MOV     	#03,R0		;
00405E C02E     	MOV.B   	R0,@(#02E,GBR)	;
004060 AE2F     	BRA     	#1C5E			;
004062 0009     	NOP     				;

004064 4F22     	STS.L   	PR,@-R15		;
004066 B92D     	BRS     	L0032C4		;L0032C4()
004068 0009     	NOP     				;
00406A 4F26     	LDS.L   	@R15+,PR		;
00406C 8905     	BT      	L00407A		;
00406E 4F22     	STS.L   	PR,@-R15		;
004070 BEAC     	BRS     	L003DCC		;L003DCC()
004072 0009     	NOP     				;
004074 4F26     	LDS.L   	@R15+,PR		;
004076 A846     	BRA     	L003106		;L003106()
004078 0009     	NOP     				;
L00407A:
00407A E007     	MOV     	#07,R0		;
00407C C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x07;
00407E E005     	MOV     	#05,R0		;
004080 C02E     	MOV.B   	R0,@(#02E,GBR)	;cd_status = 0x05;
004082 E04A     	MOV     	#4A,R0		;
004084 CF08     	OR .B   	#08,@(R0,GBR)	;cd_flags|= 0x08;
004086 4F22     	STS.L   	PR,@-R15		;
004088 B234     	BRS     	L0044F4		;L0044F4();
00408A 0009     	NOP     				;
00408C 4F26     	LDS.L   	@R15+,PR		;
00408E 4F22     	STS.L   	PR,@-R15		;
004090 B07C     	BRS     	#00F8			;
004092 0009     	NOP     				;
004094 4F26     	LDS.L   	@R15+,PR		;
004096 E04A     	MOV     	#4A,R0		;
004098 CC10     	TST.B   	#10,@(R0,GBR)	;
00409A 8B01     	BF      	#002			;
00409C D108     	MOV.L   	@(#020,PC),R1	;
00409E 8900     	BT      	#000			;u8 cmd[12] = {0};
0040A0 D106     	MOV.L   	@(#018,PC),R1	;cmd[0] = cd_flags & 0x10 != 0 ? 0x0B : 0x0A;
0040A2 D208     	MOV.L   	@(#020,PC),R2	;cmd[10] = 0xFF;
0040A4 D308     	MOV.L   	@(#020,PC),R3	;cmd[11] = 0x01;
0040A6 CC80     	TST.B   	#80,@(R0,GBR)	;
0040A8 8901     	BT      	L0040AE		;
0040AA D008     	MOV.L   	@(#020,PC),R0	;
0040AC 210B     	OR      	R0,R1			;if (cd_flags & 0x80 != 0) cmd[5] |= 0x01;
L0040AE:
0040AE 4F22     	STS.L   	PR,@-R15		;
0040B0 B04A     	BRS     	L004148		;make_cdd_cmd(cmd);
0040B2 0009     	NOP     				;
0040B4 4F26     	LDS.L   	@R15+,PR		;
0040B6 000B     	RTS     				;
0040B8 0009     	NOP     				;
0040BA 0009     	NOP     				;
0040BC 0B000000
0040C0 0A000000
0040C4 00000000
0040C8 0000FF01
0040CC 00010000

0040D0 6023     	MOV     	R2,R0			;
0040D2 880B     	CMP/EQ  	#0B,R0		;
0040D4 8905     	BT      	#00A			;
0040D6 8801     	CMP/EQ  	#01,R0		;
0040D8 8901     	BT      	#002			;
0040DA 000B     	RTS     				;
0040DC 0009     	NOP     				;
0040DE AD6A     	BRA     	#1AD4			;
0040E0 0009     	NOP     				;
0040E2 E074     	MOV     	#74,R0		;
0040E4 CC04     	TST.B   	#04,@(R0,GBR)	;
0040E6 8919     	BT      	#032			;
0040E8 C477     	MOV.B   	@(#077,GBR),R0	;
0040EA 6103     	MOV     	R0,R1			;
0040EC C53C     	MOV.W   	@(#078,GBR),R0	;
0040EE 600D     	EXTU.W   	R0,R0			;
0040F0 4128     	SHLL16  	R1			;
0040F2 210B     	OR      	R0,R1			;
0040F4 C611     	MOV.L   	@(#044,GBR),R0	;
0040F6 3100     	CMP/EQ 	R0,R1			;
0040F8 8B10     	BF      	#020			;
0040FA C61D     	MOV.L   	@(#074,GBR),R0	;
0040FC 4018     	SHLL8   	R0			;
0040FE 4029     	SHLR16  	R0			;
004100 8800     	CMP/EQ  	#00,R0		;
004102 890D     	BT      	#01A			;
004104 D10D     	MOV.L   	@(#034,PC),R1	;
004106 3100     	CMP/EQ 	R0,R1			;
004108 890A     	BT      	#014			;
00410A C111     	MOV.W   	R0,@(#022,GBR)	;
00410C C53D     	MOV.W   	@(#07A,GBR),R0	;
00410E C148     	MOV.W   	R0,@(#090,GBR)	;
004110 C53E     	MOV.W   	@(#07C,GBR),R0	;
004112 C149     	MOV.W   	R0,@(#092,GBR)	;
004114 DB08     	MOV.L   	@(#020,PC),R11	;
004116 C321     	TRAPA   	#21			;
004118 E022     	MOV     	#22,R0		;
00411A C049     	MOV.B   	R0,@(#049,GBR)	;cd_state = 0x22;
00411C 000B     	RTS     				;
00411E 0009     	NOP     				;
004120 C49E     	MOV.B   	@(#09E,GBR),R0	;
004122 7001     	ADD     	#01,R0		;
004124 8803     	CMP/EQ  	#03,R0		;
004126 8905     	BT      	#00A			;
004128 C09E     	MOV.B   	R0,@(#09E,GBR)	;
00412A C611     	MOV.L   	@(#044,GBR),R0	;
00412C D104     	MOV.L   	@(#010,PC),R1	;
00412E 301C     	ADD     	R1,R0			;
004130 AB2A     	BRA     	#1654			;
004132 C211     	MOV.L   	R0,@(#044,GBR)	;
004134 AB0C     	BRA     	#1618			;
004136 0009     	NOP     				;
004138 0706     	MOV.L   	R0,@(R0,R7)		;
00413A 0002     	STC     	SR, R0		;
00413C 0000     	
00413E FFFF     	
004140 0000     	
004142 00CE     	MOV.L   	@(R0,R12),R0	;
004144 0706     	MOV.L   	R0,@(R0,R7)		;
004146 0003     	BSRF    	R0			;

L004148:							;make_cdd_cmd(u8* cmd)	//cmd-R1,R2,R3
004148 E000     	MOV     	#00,R0		;
00414A C073     	MOV.B   	R0,@(#073,GBR)	;cdd_comm[11] = 0x00;
00414C E04A     	MOV     	#4A,R0		;
00414E CF28     	OR .B   	#28,@(R0,GBR)	;cd_flags|= 0x28;
004150 E003     	MOV     	#03,R0		;
004152 CC20     	TST.B   	#20,@(R0,GBR)	;
004154 CDDF     	AND.B   	#DF,@(R0,GBR)	;
004156 D00C     	MOV.L   	@(#030,PC),R0	;
004158 8B0C     	BF      	L004174		;(0x0F00025C+0x03).b & 0x20 != 0, @(0x0F00025C+0x03).b&=0xDF
00415A E000     	MOV     	#00,R0		;
00415C CC10     	TST.B   	#10,@(R0,GBR)	;
00415E 8B08     	BF      	L004172		;init_cd_flags & 0x10 != 0
004160 E04B     	MOV     	#4B,R0		;
004162 CC20     	TST.B   	#20,@(R0,GBR)	;
004164 8B02     	BF      	L00416C		;(0x0F00025C+0x4B).b & 0x20 != 0
004166 E030     	MOV     	#30,R0		;
004168 CC40     	TST.B   	#40,@(R0,GBR)	;
00416A 8902     	BT      	L004172		;
L00416C:
00416C D006     	MOV.L   	@(#018,PC),R0	;
00416E A001     	BRA     	L004174		;
004170 0009     	NOP     				;
L004172:
004172 D004     	MOV.L   	@(#010,PC),R0	;u8 mask = *(u8*)(0x0F00025C+0x30) & 0x40 == 0 ? 0x01 : 0x02->
L004174:
004174 2309     	AND     	R0,R3			;cmd[10]&= mask;
004176 0412     	STC     	GBR, R4		;
004178 7468     	ADD     	#68,R4		;
00417A 2412     	MOV.L   	R1,@R4		;cdd_comm[0] = cmd[0];cdd_comm[1] = cmd[1];cdd_comm[2] = cmd[2];cdd_comm[3] = cmd[3];
00417C 1421     	MOV.L   	R2,@(#4,R4)		;cdd_comm[4] = cmd[4];cdd_comm[5] = cmd[5];cdd_comm[6] = cmd[6];cdd_comm[7] = cmd[7];
00417E 1432     	MOV.L   	R3,@(#8,R4)		;cdd_comm[8] = cmd[8];cdd_comm[9] = cmd[9];cdd_comm[10] = cmd[10];cdd_comm[11] = cmd[11];
004180 000B     	RTS     				;
004182 0009     	NOP     				;
004184 FFFF01FF
004188 FFFF02FF

L00418C:							;
00418C E04B     	MOV     	#4B,R0		;
00418E CC40     	TST.B   	#40,@(R0,GBR)	;
004190 8902     	BT      	L004198		;if (*(u8*)(0x0F00025C+0x4B) & 0x40 != 0) {
004192 DB05     	MOV.L   	@(#014,PC),R11	;  *(u8*)(0x0F00025C+0x4B)&= 0x3F;
004194 A004     	BRA     	L0041A0		;  TRAP_33(0x05060003);
004196 CD3F     	AND.B   	#3F,@(R0,GBR)	;}
L004198:
004198 CC02     	TST.B   	#02,@(R0,GBR)	;
00419A 8902     	BT      	L0041A2		;else if (*(u8*)(0x0F00025C+0x4B) & 0x02 != 0) {
00419C CDFD     	AND.B   	#FD,@(R0,GBR)	;  *(u8*)(0x0F00025C+0x4B)&= 0xFD;
00419E DB03     	MOV.L   	@(#00C,PC),R11	;  TRAP_33(0x05060007);
L0041A0:							;}
0041A0 C321     	TRAPA   	#33			;
L0041A2:
0041A2 000B     	RTS     				;
0041A4 0009     	NOP     				;
0041A6 0009
0041A8 05060003
0041AC 05060007

L0041B0:							;u8 bcd2num(u8* ptr)
0041B0 E400     	MOV     	#00,R4		;u32 res = 0x00000000;
0041B2 A01E     	BRA     	L0041F2		;u8 bcd  = *ptr;
0041B4 6030     	MOV.B   	@R3,R0		;goto L0041F2;

L0041B6:							;msf2fad(u8* ptr)	//ptr-R3
0041B6 6034     	MOV.B   	@R3+,R0		;u8 bcd = *ptr;
0041B8 600C     	EXTU.B   	R0,R0			;ptr++;
0041BA 6103     	MOV     	R0,R1			;
0041BC 4109     	SHLR2   	R1			;
0041BE 4109     	SHLR2   	R1			;
0041C0 C90F     	AND     	#0F,R0		;
0041C2 6203     	MOV     	R0,R2			;
0041C4 E00A     	MOV     	#0A,R0		;
0041C6 201E     	MULU.W  	R1,R0			;
0041C8 001A     	STS     	MACL, R0		;
0041CA 302C     	ADD     	R2,R0			;
0041CC 926A     	MOV.W   	@(#0D4,PC),R2	;
0041CE 220E     	MULU.W  	R0,R2			;
0041D0 041A     	STS     	MACL, R4		;u32 res = (((bcd>>4) * 10) + (bcd&0x0F)) * 4500;
0041D2 6034     	MOV.B   	@R3+,R0		;bcd = *ptr;
0041D4 600C     	EXTU.B   	R0,R0			;ptr++;
0041D6 6103     	MOV     	R0,R1			;
0041D8 4109     	SHLR2   	R1			;
0041DA 4109     	SHLR2   	R1			;
0041DC C90F     	AND     	#0F,R0		;
0041DE 6203     	MOV     	R0,R2			;
0041E0 E00A     	MOV     	#0A,R0		;
0041E2 201E     	MULU.W  	R1,R0			;
0041E4 001A     	STS     	MACL, R0		;
0041E6 302C     	ADD     	R2,R0			;
0041E8 925D     	MOV.W   	@(#0BA,PC),R2	;
0041EA 220E     	MULU.W  	R0,R2			;
0041EC 021A     	STS     	MACL, R2		;
0041EE 342C     	ADD     	R2,R4			;res += (((bcd>>4) * 10) + (bcd&0x0F)) * 75;
0041F0 6030     	MOV.B   	@R3,R0		;bcd = *ptr;
L0041F2:
0041F2 600C     	EXTU.B   	R0,R0			;
0041F4 6103     	MOV     	R0,R1			;
0041F6 4109     	SHLR2   	R1			;
0041F8 4109     	SHLR2   	R1			;
0041FA C90F     	AND     	#0F,R0		;
0041FC 6203     	MOV     	R0,R2			;
0041FE E00A     	MOV     	#0A,R0		;
004200 201E     	MULU.W  	R1,R0			;
004202 001A     	STS     	MACL, R0		;
004204 302C     	ADD     	R2,R0			;
004206 000B     	RTS     				;res += ((bcd>>4) * 10) + (bcd&0F);
004208 304C     	ADD     	R4,R0			;return res;

00420A D027     	MOV.L   	@(#09C,PC),R0	;
00420C 4108     	SHLL2   	R1			;
00420E 001E     	MOV.L   	@(R0,R1),R0		;
004210 000B     	RTS     				;
004212 4109     	SHLR2   	R1			;

L004214:							;save_toc_data(u8 pos, u32 data)	//pos-R1,data-R2
004214 D024     	MOV.L   	@(#090,PC),R0	;
004216 4108     	SHLL2   	R1			;
004218 0126     	MOV.L   	R2,@(R0,R1)		;toc_dram_buf[pos] = data;
00421A 000B     	RTS     				;
00421C 4109     	SHLR2   	R1			;

00421E 6203     	MOV     	R0,R2			;
004220 D122     	MOV.L   	@(#088,PC),R1	;
004222 6012     	MOV.L   	@R1,R0		;
004224 4018     	SHLL8   	R0			;
004226 4019     	SHLR8   	R0			;
004228 3026     	CMP/HI 	R2,R0			;
00422A 8903     	BT      	#006			;
00422C E155     	MOV     	#55,R1		;
00422E 4100     	SHLL    	R1			;
004230 3208     	SUB     	R0,R2			;
004232 8B33     	BF      	#066			;
004234 D120     	MOV.L   	@(#080,PC),R1	;
004236 6010     	MOV.B   	@R1,R0		;
004238 8810     	CMP/EQ  	#10,R0		;
00423A 8B12     	BF      	#024			;
00423C E096     	MOV     	#96,R0		;
00423E 600C     	EXTU.B   	R0,R0			;
004240 3026     	CMP/HI 	R2,R0			;
004242 8928     	BT      	#050			;
004244 D01A     	MOV.L   	@(#068,PC),R0	;
004246 4F22     	STS.L   	PR,@-R15		;
004248 BFDF     	BRS     	#1FBE			;
00424A 6100     	MOV.B   	@R0,R1		;
00424C 4F26     	LDS.L   	@R15+,PR		;
00424E 88FF     	CMP/EQ  	#FF,R0		;
004250 8903     	BT      	#006			;
004252 4018     	SHLL8   	R0			;
004254 4019     	SHLR8   	R0			;
004256 3026     	CMP/HI 	R2,R0			;
004258 8B03     	BF      	#006			;
00425A E101     	MOV     	#01,R1		;
00425C E496     	MOV     	#96,R4		;
00425E A01C     	BRA     	#0038			;
004260 644C     	EXTU.B   	R4,R4			;
004262 D114     	MOV.L   	@(#050,PC),R1	;
004264 6310     	MOV.B   	@R1,R3		;
004266 D112     	MOV.L   	@(#048,PC),R1	;
004268 6110     	MOV.B   	@R1,R1		;
00426A 4F22     	STS.L   	PR,@-R15		;
00426C BFCD     	BRS     	#1F9A			;
00426E 0009     	NOP     				;
004270 4F26     	LDS.L   	@R15+,PR		;
004272 4018     	SHLL8   	R0			;
004274 4019     	SHLR8   	R0			;
004276 3202     	CMP/HS 	R0,R2			;
004278 8B0D     	BF      	#01A			;
00427A 6403     	MOV     	R0,R4			;
00427C 3132     	CMP/HS 	R3,R1			;
00427E 890C     	BT      	#018			;
004280 7101     	ADD     	#01,R1		;
004282 4F22     	STS.L   	PR,@-R15		;
004284 BFC1     	BRS     	#1F82			;
004286 0009     	NOP     				;
004288 4F26     	LDS.L   	@R15+,PR		;
00428A 4018     	SHLL8   	R0			;
00428C 4019     	SHLR8   	R0			;
00428E 3202     	CMP/HS 	R0,R2			;
004290 89F3     	BT      	#1E6			;
004292 71FF     	ADD     	#FF,R1		;
004294 8B01     	BF      	#002			;
004296 A002     	BRA     	#0004			;
004298 3028     	SUB     	R2,R0			;
00429A 3248     	SUB     	R4,R2			;
00429C 6023     	MOV     	R2,R0			;
00429E 000B     	RTS     				;
0042A0 0009     	NOP     				;
0042A2 0009     	NOP     				;
0042A4 1194
0042A6 004B
0042A8 09000064
0042AC 0900
0042AE 01FC
0042B0 0900
0042B2 01F5
0042B4 0900
0042B6 01F9
0042B8 0900
0042BA 01F6     	MOV.L   	R15,@(R0,R1)	;
0042BC C475     	MOV.B   	@(#075,GBR),R0	;
0042BE C90F     	AND     	#0F,R0		;
0042C0 8801     	CMP/EQ  	#01,R0		;
0042C2 8B18     	BF      	#030			;
0042C4 E04B     	MOV     	#4B,R0		;
0042C6 CF10     	OR .B   	#10,@(R0,GBR)	;
0042C8 C476     	MOV.B   	@(#076,GBR),R0	;
0042CA 8800     	CMP/EQ  	#00,R0		;
0042CC 8B0C     	BF      	#018			;
0042CE E003     	MOV     	#03,R0		;
0042D0 CC80     	TST.B   	#80,@(R0,GBR)	;
0042D2 8907     	BT      	#00E			;
0042D4 0312     	STC     	GBR, R3		;
0042D6 4F22     	STS.L   	PR,@-R15		;
0042D8 BF6D     	BRS     	#1EDA			;
0042DA 7378     	ADD     	#78,R3		;
0042DC 4F26     	LDS.L   	@R15+,PR		;
0042DE D107     	MOV.L   	@(#01C,PC),R1	;
0042E0 3102     	CMP/HS 	R0,R1			;
0042E2 8906     	BT      	#00C			;
0042E4 A005     	BRA     	#000A			;
0042E6 E000     	MOV     	#00,R0		;
0042E8 0312     	STC     	GBR, R3		;
0042EA 4F22     	STS.L   	PR,@-R15		;
0042EC BF63     	BRS     	#1EC6			;
0042EE 737C     	ADD     	#7C,R3		;
0042F0 4F26     	LDS.L   	@R15+,PR		;
0042F2 000B     	RTS     				;
0042F4 C20E     	MOV.L   	R0,@(#038,GBR)	;
0042F6 000B     	RTS     				;
0042F8 0009     	NOP     				;
0042FA 0009     	NOP     				;
0042FC 0005     	MOV.W   	R0,@(R0,R0)		;
0042FE 7E40     	ADD     	#40,R14		;
004300 E044     	MOV     	#44,R0		;
004302 CC01     	TST.B   	#01,@(R0,GBR)	;
004304 8B26     	BF      	#04C			;
004306 C611     	MOV.L   	@(#044,GBR),R0	;
004308 2008     	TST     	R0,R0			;
00430A 8B01     	BF      	#002			;
00430C E096     	MOV     	#96,R0		;
00430E 600C     	EXTU.B   	R0,R0			;
004310 4F22     	STS.L   	PR,@-R15		;
004312 BF84     	BRS     	#1F08			;
004314 C20E     	MOV.L   	R0,@(#038,GBR)	;
004316 4F26     	LDS.L   	@R15+,PR		;
004318 C20D     	MOV.L   	R0,@(#034,GBR)	;
00431A 6013     	MOV     	R1,R0			;
00431C C031     	MOV.B   	R0,@(#031,GBR)	;
00431E E0AA     	MOV     	#AA,R0		;
004320 600C     	EXTU.B   	R0,R0			;
004322 3010     	CMP/EQ 	R1,R0			;
004324 8B00     	BF      	#000			;
004326 E166     	MOV     	#66,R1		;
004328 E001     	MOV     	#01,R0		;
00432A C032     	MOV.B   	R0,@(#032,GBR)	;
00432C 6013     	MOV     	R1,R0			;
00432E 8801     	CMP/EQ  	#01,R0		;
004330 8B06     	BF      	#00C			;
004332 D206     	MOV.L   	@(#018,PC),R2	;
004334 6020     	MOV.B   	@R2,R0		;
004336 8810     	CMP/EQ  	#10,R0		;
004338 8B02     	BF      	#004			;
00433A D005     	MOV.L   	@(#014,PC),R0	;
00433C A019     	BRA     	#0032			;
00433E 0009     	NOP     				;
004340 4F22     	STS.L   	PR,@-R15		;
004342 BF62     	BRS     	#1EC4			;
004344 0009     	NOP     				;
004346 4F26     	LDS.L   	@R15+,PR		;
004348 A013     	BRA     	#0026			;
00434A 0009     	NOP     				;
00434C 0900     	
00434E 01F6     	MOV.L   	R15,@(R0,R1)	;
004350 4100     	SHLL    	R1			;
004352 0000     	
004354 C447     	MOV.B   	@(#047,GBR),R0	;
004356 C032     	MOV.B   	R0,@(#032,GBR)	;
004358 C446     	MOV.B   	@(#046,GBR),R0	;
00435A C031     	MOV.B   	R0,@(#031,GBR)	;
00435C 4F22     	STS.L   	PR,@-R15		;
00435E BF54     	BRS     	#1EA8			;
004360 610C     	EXTU.B   	R0,R1			;
004362 4F26     	LDS.L   	@R15+,PR		;
004364 6103     	MOV     	R0,R1			;
004366 4018     	SHLL8   	R0			;
004368 4019     	SHLR8   	R0			;
00436A C20E     	MOV.L   	R0,@(#038,GBR)	;
00436C E000     	MOV     	#00,R0		;
00436E C20D     	MOV.L   	R0,@(#034,GBR)	;
004370 6013     	MOV     	R1,R0			;
004372 4029     	SHLR16  	R0			;
004374 4019     	SHLR8   	R0			;
004376 C030     	MOV.B   	R0,@(#030,GBR)	;
004378 E000     	MOV     	#00,R0		;
00437A C033     	MOV.B   	R0,@(#033,GBR)	;
00437C C42C     	MOV.B   	@(#02C,GBR),R0	;
00437E 8801     	CMP/EQ  	#01,R0		;
004380 8B01     	BF      	#002			;
004382 D959     	MOV.L   	@(#164,PC),R9	;
004384 8900     	BT      	#000			;
004386 D959     	MOV.L   	@(#164,PC),R9	;
004388 C430     	MOV.B   	@(#030,GBR),R0	;
00438A 8092     	MOV.B   	R0,@(#02,R9)	;
00438C C431     	MOV.B   	@(#031,GBR),R0	;
00438E 8093     	MOV.B   	R0,@(#03,R9)	;
004390 C432     	MOV.B   	@(#032,GBR),R0	;
004392 4028     	SHLL16  	R0			;
004394 4018     	SHLL8   	R0			;
004396 6103     	MOV     	R0,R1			;
004398 C60D     	MOV.L   	@(#034,GBR),R0	;
00439A 201B     	OR      	R1,R0			;
00439C 1901     	MOV.L   	R0,@(#4,R9)		;
00439E C60E     	MOV.L   	@(#038,GBR),R0	;
0043A0 1902     	MOV.L   	R0,@(#8,R9)		;
0043A2 E02C     	MOV     	#2C,R0		;
0043A4 A07F     	BRA     	#00FE			;
0043A6 CE01     	XOR.B   	#01,@(R0,GBR)	;
0043A8 C60E     	MOV.L   	@(#038,GBR),R0	;
0043AA 7001     	ADD     	#01,R0		;
0043AC C20E     	MOV.L   	R0,@(#038,GBR)	;
0043AE C60D     	MOV.L   	@(#034,GBR),R0	;
0043B0 7001     	ADD     	#01,R0		;
0043B2 C20D     	MOV.L   	R0,@(#034,GBR)	;
0043B4 C444     	MOV.B   	@(#044,GBR),R0	;
0043B6 8800     	CMP/EQ  	#00,R0		;
0043B8 8B02     	BF      	#004			;
0043BA C611     	MOV.L   	@(#044,GBR),R0	;
0043BC 7001     	ADD     	#01,R0		;
0043BE C211     	MOV.L   	R0,@(#044,GBR)	;
0043C0 000B     	RTS     				;
0043C2 0009     	NOP     				;
0043C4 E074     	MOV     	#74,R0		;
0043C6 CC04     	TST.B   	#04,@(R0,GBR)	;
0043C8 8942     	BT      	#084			;
0043CA E04B     	MOV     	#4B,R0		;
0043CC CC40     	TST.B   	#40,@(R0,GBR)	;
0043CE 8908     	BT      	#010			;
0043D0 C614     	MOV.L   	@(#050,GBR),R0	;
0043D2 6103     	MOV     	R0,R1			;
0043D4 4018     	SHLL8   	R0			;
0043D6 4019     	SHLR8   	R0			;
0043D8 C211     	MOV.L   	R0,@(#044,GBR)	;
0043DA 6013     	MOV     	R1,R0			;
0043DC 4029     	SHLR16  	R0			;
0043DE A003     	BRA     	#0006			;
0043E0 4019     	SHLR8   	R0			;
0043E2 C60E     	MOV.L   	@(#038,GBR),R0	;
0043E4 C211     	MOV.L   	R0,@(#044,GBR)	;
0043E6 E000     	MOV     	#00,R0		;
0043E8 C033     	MOV.B   	R0,@(#033,GBR)	;
0043EA C475     	MOV.B   	@(#075,GBR),R0	;
0043EC C90F     	AND     	#0F,R0		;
0043EE 8801     	CMP/EQ  	#01,R0		;
0043F0 8B30     	BF      	#060			;
0043F2 0312     	STC     	GBR, R3		;
0043F4 7376     	ADD     	#76,R3		;
0043F6 6030     	MOV.B   	@R3,R0		;
0043F8 88AA     	CMP/EQ  	#AA,R0		;
0043FA 8905     	BT      	#00A			;
0043FC 8800     	CMP/EQ  	#00,R0		;
0043FE 890A     	BT      	#014			;
004400 4F22     	STS.L   	PR,@-R15		;
004402 BED5     	BRS     	#1DAA			;
004404 0009     	NOP     				;
004406 4F26     	LDS.L   	@R15+,PR		;
004408 C031     	MOV.B   	R0,@(#031,GBR)	;
00440A 0312     	STC     	GBR, R3		;
00440C 4F22     	STS.L   	PR,@-R15		;
00440E BED2     	BRS     	#1DA4			;
004410 7378     	ADD     	#78,R3		;
004412 A002     	BRA     	#0004			;
004414 4F26     	LDS.L   	@R15+,PR		;
004416 C031     	MOV.B   	R0,@(#031,GBR)	;
004418 E000     	MOV     	#00,R0		;
00441A C20D     	MOV.L   	R0,@(#034,GBR)	;
00441C 0312     	STC     	GBR, R3		;
00441E 7377     	ADD     	#77,R3		;
004420 6030     	MOV.B   	@R3,R0		;
004422 E199     	MOV     	#99,R1		;
004424 3016     	CMP/HI 	R1,R0			;
004426 8903     	BT      	#006			;
004428 4F22     	STS.L   	PR,@-R15		;
00442A BEC1     	BRS     	#1D82			;
00442C 0009     	NOP     				;
00442E 4F26     	LDS.L   	@R15+,PR		;
004430 C032     	MOV.B   	R0,@(#032,GBR)	;
004432 E003     	MOV     	#03,R0		;
004434 CC40     	TST.B   	#40,@(R0,GBR)	;
004436 8908     	BT      	#010			;
004438 C611     	MOV.L   	@(#044,GBR),R0	;
00443A D12D     	MOV.L   	@(#0B4,PC),R1	;
00443C 6112     	MOV.L   	@R1,R1		;
00443E 4118     	SHLL8   	R1			;
004440 4119     	SHLR8   	R1			;
004442 3012     	CMP/HS 	R1,R0			;
004444 8B01     	BF      	#002			;
004446 A001     	BRA     	#0002			;
004448 E029     	MOV     	#29,R0		;
00444A C475     	MOV.B   	@(#075,GBR),R0	;
00444C AF96     	BRA     	#1F2C			;
00444E C030     	MOV.B   	R0,@(#030,GBR)	;
004450 AF94     	BRA     	#1F28			;
004452 0009     	NOP     				;
004454 C42E     	MOV.B   	@(#02E,GBR),R0	;
004456 8803     	CMP/EQ  	#03,R0		;
004458 8B06     	BF      	#00C			;
00445A E04B     	MOV     	#4B,R0		;
00445C CC40     	TST.B   	#40,@(R0,GBR)	;
00445E 8B03     	BF      	#006			;
004460 4F22     	STS.L   	PR,@-R15		;
004462 BFA1     	BRS     	#1F42			;
004464 0009     	NOP     				;
004466 4F26     	LDS.L   	@R15+,PR		;
004468 C42C     	MOV.B   	@(#02C,GBR),R0	;
00446A 8801     	CMP/EQ  	#01,R0		;
00446C 8B01     	BF      	#002			;
00446E D91E     	MOV.L   	@(#078,PC),R9	;
004470 8900     	BT      	#000			;
004472 D91E     	MOV.L   	@(#078,PC),R9	;
004474 7902     	ADD     	#02,R9		;
004476 0112     	STC     	GBR, R1		;
004478 7175     	ADD     	#75,R1		;
00447A 6014     	MOV.B   	@R1+,R0		;
00447C 2900     	MOV.B   	R0,@R9		;
00447E 6014     	MOV.B   	@R1+,R0		;
004480 8091     	MOV.B   	R0,@(#01,R9)	;
004482 6014     	MOV.B   	@R1+,R0		;
004484 8092     	MOV.B   	R0,@(#02,R9)	;
004486 6014     	MOV.B   	@R1+,R0		;
004488 8093     	MOV.B   	R0,@(#03,R9)	;
00448A 6014     	MOV.B   	@R1+,R0		;
00448C 8094     	MOV.B   	R0,@(#04,R9)	;
00448E 6014     	MOV.B   	@R1+,R0		;
004490 8095     	MOV.B   	R0,@(#05,R9)	;
004492 6014     	MOV.B   	@R1+,R0		;
004494 8096     	MOV.B   	R0,@(#06,R9)	;
004496 6014     	MOV.B   	@R1+,R0		;
004498 8097     	MOV.B   	R0,@(#07,R9)	;
00449A 6014     	MOV.B   	@R1+,R0		;
00449C 8098     	MOV.B   	R0,@(#08,R9)	;
00449E 6010     	MOV.B   	@R1,R0		;
0044A0 8099     	MOV.B   	R0,@(#09,R9)	;
0044A2 E02C     	MOV     	#2C,R0		;
0044A4 CE01     	XOR.B   	#01,@(R0,GBR)	;
0044A6 C517     	MOV.W   	@(#02E,GBR),R0	;
0044A8 6103     	MOV     	R0,R1			;
0044AA C433     	MOV.B   	@(#033,GBR),R0	;
0044AC 600C     	EXTU.B   	R0,R0			;
0044AE 210B     	OR      	R0,R1			;
0044B0 4128     	SHLL16  	R1			;
0044B2 C518     	MOV.W   	@(#030,GBR),R0	;
0044B4 600D     	EXTU.W   	R0,R0			;
0044B6 210B     	OR      	R0,R1			;
0044B8 C432     	MOV.B   	@(#032,GBR),R0	;
0044BA 4028     	SHLL16  	R0			;
0044BC 4018     	SHLL8   	R0			;
0044BE 6203     	MOV     	R0,R2			;
0044C0 C444     	MOV.B   	@(#044,GBR),R0	;
0044C2 8801     	CMP/EQ  	#01,R0		;
0044C4 C611     	MOV.L   	@(#044,GBR),R0	;
0044C6 8B00     	BF      	#000			;
0044C8 C60E     	MOV.L   	@(#038,GBR),R0	;
0044CA 220B     	OR      	R0,R2			;
0044CC E020     	MOV     	#20,R0		;
0044CE CC01     	TST.B   	#01,@(R0,GBR)	;
0044D0 8B01     	BF      	#002			;
0044D2 E018     	MOV     	#18,R0		;
0044D4 8900     	BT      	#000			;
0044D6 E010     	MOV     	#10,R0		;
0044D8 0A12     	STC     	GBR, R10		;
0044DA 30AC     	ADD     	R10,R0		;
0044DC 2012     	MOV.L   	R1,@R0		;
0044DE 7004     	ADD     	#04,R0		;
0044E0 2022     	MOV.L   	R2,@R0		;
0044E2 E020     	MOV     	#20,R0		;
0044E4 000B     	RTS     				;
0044E6 CE01     	XOR.B   	#01,@(R0,GBR)	;
0044E8 0900
0044EA 0218
0044EC 0900
0044EE 0224
0044F0 0900
0044F2 01FC

L0044F4:							;set_cd_status()
0044F4 E020     	MOV     	#20,R0		;
0044F6 CC01     	TST.B   	#01,@(R0,GBR)	;
0044F8 8901     	BT      	#002			;
0044FA E118     	MOV     	#18,R1		;
0044FC 8B00     	BF      	#000			;
0044FE E110     	MOV     	#10,R1		;
004500 0012     	STC     	GBR, R0		;u8* status_ptr = (cd_status_buf_sel & 0x01) == 0x01 ? cd_status_buf2 : 
004502 310C     	ADD     	R0,R1			;                                                   cd_status_buf1;
004504 C42E     	MOV.B   	@(#02E,GBR),R0	;status_ptr[0] = cd_status;
004506 000B     	RTS     				;
004508 2100     	MOV.B   	R0,@R1		;

L00450A:							;init_cd_status()
00450A E020     	MOV     	#20,R0		;
00450C CC01     	TST.B   	#01,@(R0,GBR)	;
00450E 8B01     	BF      	L004514		;
004510 E118     	MOV     	#18,R1		;
004512 8900     	BT      	L004516		;
004514 E110     	MOV     	#10,R1		;
004516 0012     	STC     	GBR, R0		;u32* status_ptr = (cd_status_buf_sel & 0x01) == 0x01 ? cd_status_buf2 :
004518 310C     	ADD     	R0,R1			;                                                       cd_status_buf1;
00451A D00B     	MOV.L   	@(#02C,PC),R0	;
00451C 2102     	MOV.L   	R0,@R1		;status_ptr[0] = 0xFFFFFFFF;
00451E 1101     	MOV.L   	R0,@(#4,R1)		;status_ptr[1] = 0xFFFFFFFF;
004520 C42E     	MOV.B   	@(#02E,GBR),R0	;
004522 2100     	MOV.B   	R0,@R1		;((u8*)status_ptr)[0] = cd_status;
004524 E020     	MOV     	#20,R0		;
004526 CE01     	XOR.B   	#01,@(R0,GBR)	;cd_status_buf_sel^= 0x01;
004528 C42C     	MOV.B   	@(#02C,GBR),R0	;
00452A 8801     	CMP/EQ  	#01,R0		;
00452C 8B01     	BF      	L004532		;
00452E D108     	MOV.L   	@(#020,PC),R1	;
004530 8900     	BT      	#000			;
L004532:
004532 D108     	MOV.L   	@(#020,PC),R1	;u32* cddata_ptr=*(u8*)(0x0F00025C+0x2C) == 0x01 ? 0x09000224 : cddata_dram_buf;
004534 D005     	MOV.L   	@(#014,PC),R0	;
004536 2106     	MOV.L   	R0,@-R1		;cddata_ptr[-1] = 0xFFFFFFFF;
004538 2106     	MOV.L   	R0,@-R1		;cddata_ptr[-2] = 0xFFFFFFFF;
00453A 2106     	MOV.L   	R0,@-R1		;cddata_ptr[-3] = 0xFFFFFFFF;
00453C E02C     	MOV     	#2C,R0		;*(u8*)(0x0F00025C+0x2C)^= 0x01;
00453E 000B     	RTS     				;
004540 CE01     	XOR.B   	#01,@(R0,GBR)	;
004542 0009     	NOP     				;
004544 00FF
004546 FFFF
004548 FFFFFFFF
00454C FFFFFFFF
004550 09000224
004554 09000230

004558 E020     	MOV     	#20,R0		;
00455A CC01     	TST.B   	#01,@(R0,GBR)	;
00455C 8B02     	BF      	#004			;
00455E E118     	MOV     	#18,R1		;
004560 E210     	MOV     	#10,R2		;
004562 8901     	BT      	#002			;
004564 E110     	MOV     	#10,R1		;
004566 E218     	MOV     	#18,R2		;
004568 0012     	STC     	GBR, R0		;
00456A 310C     	ADD     	R0,R1			;
00456C 320C     	ADD     	R0,R2			;
00456E 6322     	MOV.L   	@R2,R3		;
004570 2132     	MOV.L   	R3,@R1		;
004572 5321     	MOV.L   	@(#04,R2),R3	;
004574 1131     	MOV.L   	R3,@(#4,R1)		;
004576 8414     	MOV.B   	@(#04,R1),R0	;
004578 6203     	MOV     	R0,R2			;
00457A C614     	MOV.L   	@(#050,GBR),R0	;
00457C 4018     	SHLL8   	R0			;
00457E 4019     	SHLR8   	R0			;
004580 C211     	MOV.L   	R0,@(#044,GBR)	;
004582 1101     	MOV.L   	R0,@(#4,R1)		;
004584 6023     	MOV     	R2,R0			;
004586 8014     	MOV.B   	R0,@(#04,R1)	;
004588 C42E     	MOV.B   	@(#02E,GBR),R0	;
00458A 8010     	MOV.B   	R0,@(#00,R1)	;
00458C E020     	MOV     	#20,R0		;
00458E 000B     	RTS     				;
004590 CE01     	XOR.B   	#01,@(R0,GBR)	;
004592 FFFF     	
004594 D31D     	MOV.L   	@(#074,PC),R3	;
004596 D41E     	MOV.L   	@(#078,PC),R4	;
004598 E000     	MOV     	#00,R0		;
00459A 8133     	MOV.W   	R0,@(#06,R3)	;
00459C 8131     	MOV.W   	R0,@(#02,R3)	;
00459E 8541     	MOV.W   	@(#02,R4),R0	;
0045A0 E1F8     	MOV     	#F8,R1		;
0045A2 2019     	AND     	R1,R0			;
0045A4 8141     	MOV.W   	R0,@(#02,R4)	;
0045A6 D21B     	MOV.L   	@(#06C,PC),R2	;
0045A8 E1F0     	MOV     	#F0,R1		;
0045AA 6021     	MOV.W   	@R2,R0		;
0045AC 2019     	AND     	R1,R0			;
0045AE CB08     	OR      	#08,R0		;
0045B0 2201     	MOV.W   	R0,@R2		;
0045B2 D714     	MOV.L   	@(#050,PC),R7	;
0045B4 E000     	MOV     	#00,R0		;
0045B6 6273     	MOV     	R7,R2			;
0045B8 E30C     	MOV     	#0C,R3		;
0045BA 2202     	MOV.L   	R0,@R2		;
0045BC 73FF     	ADD     	#FF,R3		;
0045BE 7204     	ADD     	#04,R2		;
0045C0 4315     	CMP/PL  	R3			;
0045C2 89FA     	BT      	#1F4			;
0045C4 E0FF     	MOV     	#FF,R0		;
0045C6 1703     	MOV.L   	R0,@(#C,R7)		;
0045C8 8170     	MOV.W   	R0,@(#00,R7)	;
0045CA 8073     	MOV.B   	R0,@(#03,R7)	;
0045CC D00E     	MOV.L   	@(#038,PC),R0	;
0045CE 400B     	JSR     	@R0			;
0045D0 0009     	NOP     				;
0045D2 B2EC     	BRS     	#05D8			;
0045D4 0009     	NOP     				;
0045D6 D00C     	MOV.L   	@(#030,PC),R0	;
0045D8 400B     	JSR     	@R0			;
0045DA 0009     	NOP     				;
0045DC B2E7     	BRS     	#05CE			;
0045DE 0009     	NOP     				;
L0045E0:
0045E0 C323     	TRAPA   	#35			;u32 h = TRAP_35();
L0045E2:
0045E2 D708     	MOV.L   	@(#020,PC),R7	;
0045E4 60B3     	MOV     	R11,R0		;
0045E6 6009     	SWAP.W   	R0,R0			;
0045E8 600E     	EXTS.B   	R0,R0			;
0045EA 8884     	CMP/EQ  	#84,R0		;
0045EC 8914     	BT      	L004618		;if (h[23:16] == 0x84) goto L004618;
0045EE 8880     	CMP/EQ  	#80,R0		;
0045F0 8917     	BT      	L004622		;if (h[23:16] == 0x80) goto L004622;
0045F2 8806     	CMP/EQ  	#06,R0		;
0045F4 8924     	BT      	L004640		;if (h[23:16] == 0x06) goto L004640;
0045F6 8801     	CMP/EQ  	#01,R0		;
0045F8 8918     	BT      	L00462C		;if (h[23:16] == 0x01) goto L00462C;
0045FA 8881     	CMP/EQ  	#81,R0		;
0045FC 891B     	BT      	L004636		;if (h[23:16] == 0x81) goto L004636;
0045FE AFEF     	BRA     	L0045E0		;
004600 0009     	NOP     				;
004602 0009     	NOP     				;
004604 0F000314
004608 0000
00460A 4E98
00460C 0A00
00460E 0004
004610 0A00
004612 0018
004614 05FF
004616 FF86
L004618:
004618 60BC     	EXTU.B   	R11,R0		;
00461A 8810     	CMP/EQ  	#10,R0		;
00461C 8930     	BT      	L004680		;if (h[7:0] == 0x10) goto L004690;
00461E AFDF     	BRA     	L0045E0		;goto L0045E0;
004620 0009     	NOP     				;
L004622:
004622 60BC     	EXTU.B   	R11,R0		;
004624 8812     	CMP/EQ  	#12,R0		;
004626 892D     	BT      	L004684		;if (h[7:0] == 0x12) goto L0049E6;
004628 AFDA     	BRA     	L0045E0		;goto L0045E0;
00462A 0009     	NOP     				;
L00462C:
00462C 60BC     	EXTU.B   	R11,R0		;
00462E 8811     	CMP/EQ  	#11,R0		;
004630 892A     	BT      	L004688		;if (h[7:0] == 0x11) goto L004A08;
004632 AFD5     	BRA     	L0045E0		;goto L0045E0;
004634 0009     	NOP     				;
L004636:
004636 60BC     	EXTU.B   	R11,R0		;
004638 8830     	CMP/EQ  	#30,R0		;
00463A 8927     	BT      	L00468C		;if (h[7:0] == 0x30) goto L004B08;
00463C AFD0     	BRA     	L0045E0		;goto L0045E0;
00463E 0009     	NOP     				;
L004640:
004640 62BC     	EXTU.B   	R11,R2		;
004642 E109     	MOV     	#09,R1		;
004644 3216     	CMP/HI 	R1,R2			;
004646 8904     	BT      	L004652		;
004648 C703     	MOVA    	@(#0C,PC),R0	;
00464A 4208     	SHLL2   	R2			;
00464C 002E     	MOV.L   	@(R0,R2),R0		;
00464E 402B     	JMP     	@R0			;if (h[7:0] <= 0x09) L004658[h[7:0]]();
004650 0009     	NOP     				;
L004652:
004652 AFC5     	BRA     	L0045E0		;goto L0045E0;
004654 0009     	NOP     				;
004656 0009
L004658:
	dc.l	L004924					;0
	dc.l	L004928					;1
	dc.l	L00492C					;2
	dc.l	L004A76					;3
	dc.l	L0045E0					;4
	dc.l	L004ABC					;5
	dc.l	L004930					;6
	dc.l	L004AEA					;7
	dc.l	L004934					;8
	dc.l	L0048D0					;9

L004680:
004680 A006     	BRA     	L004690		;
004682 0009     	NOP     				;
L004684:
004684 A1AF     	BRA     	L0049E6		;
004686 0009     	NOP     				;
L004688:
004688 A1BE     	BRA     	L004A08		;
00468A 0009     	NOP     				;
L00468C:
00468C A23C     	BRA     	L004B08		;
00468E 0009     	NOP     				;
L004690: 
004690 5676     	MOV.L   	@(#18,R7),R6	;u8* block_ptr = cddata_process_block_addr;
004692 760C     	ADD     	#0C,R6		;block_ptr+=12;
004694 5160     	MOV.L   	@(#00,R6),R1	;u32 header = *(u32*)block_ptr;
004696 6013     	MOV     	R1,R0			;
004698 807A     	MOV.B   	R0,@(#0A,R7)	;cddata_mode = ((u8*)header)[3];
00469A B3B7     	BRS     	L004E0C		;u32 fad = msf_to_fad(header);
00469C 0009     	NOP     				;
00469E 1719     	MOV.L   	R1,@(#24,R7)	;cddata_process_block_fad = fad;
0046A0 8474     	MOV.B   	@(#04,R7),R0	;
0046A2 8804     	CMP/EQ  	#04,R0		;
0046A4 8936     	BT      	L004714		;if (cddata_state == 0x04) goto L004714;
0046A6 8802     	CMP/EQ  	#02,R0		;
0046A8 8905     	BT      	L0046B6		;if (cddata_state == 0x02) goto L0046B6;
0046AA 8803     	CMP/EQ  	#03,R0		;
0046AC 8922     	BT      	L0046F4		;if (cddata_state == 0x03) goto L0046F4;
0046AE B245     	BRS     	L004B3C		;L004B3C();
0046B0 0009     	NOP     				;
0046B2 AF95     	BRA     	L0045E0		;goto L0045E0;
0046B4 0009     	NOP     				;
L0046B6:
0046B6 5178     	MOV.L   	@(#20,R7),R1	;
0046B8 5279     	MOV.L   	@(#24,R7),R2	;
0046BA 7101     	ADD     	#01,R1		;
0046BC 3210     	CMP/EQ 	R1,R2			;
0046BE 8B16     	BF      	L0046EE		;
0046C0 8476     	MOV.B   	@(#06,R7),R0	;
0046C2 C840     	TST     	#40,R0		;if (cddata_process_block_fad == (*(u32*)(0x0F000314+0x20) + 1) &&
0046C4 8B13     	BF      	L0046EE		;    *(u8*)(0x0F000314+0x06) & 0x40 == 0x00) {
0046C6 847A     	MOV.B   	@(#0A,R7),R0	;
0046C8 172A     	MOV.L   	R2,@(#28,R7)	;  *(u32*)(0x0F000314+0x28) = cddata_process_block_fad;
0046CA 8077     	MOV.B   	R0,@(#07,R7)	;  *(u8*)(0x0F000314+0x07) = cddata_mode;
0046CC 5477     	MOV.L   	@(#1C,R7),R4	;
0046CE D18F     	MOV.L   	@(#23C,PC),R1	;
0046D0 DB75     	MOV.L   	@(#1D4,PC),R11	;
0046D2 2122     	MOV.L   	R2,@R1		;  *(u32*)0x0F0002B0 = cddata_process_block_fad;
0046D4 C321     	TRAPA   	#33			;  add_task_to_queue(0x06050003);
0046D6 3240     	CMP/EQ 	R4,R2			;
0046D8 8905     	BT      	L0046E6		;
0046DA 3246     	CMP/HI 	R4,R2			;
0046DC 8938     	BT      	L004750		;
0046DE 3428     	SUB     	R2,R4			;
0046E0 E130     	MOV     	#30,R1		;  if (cddata_process_block_fad != *(u32*)(0x0F000314+0x1C) &&
0046E2 3416     	CMP/HI 	R1,R4			;      (cddata_process_block_fad > *(u32*)(0x0F000314+0x1C) ||
0046E4 8933     	BT      	L00474E		;       *(u32*)(0x0F000314+0x1C) - cddata_process_block_fad > 48)) goto L004750;
L0046E6:
0046E6 E003     	MOV     	#03,R0		;
0046E8 8074     	MOV.B   	R0,@(#04,R7)	;  cddata_state = 0x03;
0046EA A003     	BRA     	L0046F4		;
0046EC 0009     	NOP     				;} else {
L0046EE:
0046EE 1728     	MOV.L   	R2,@(#20,R7)	;  *(u32*)(0x0F000314+0x20) = cddata_process_block_fad;
0046F0 A024     	BRA     	L00473C		;  goto L00473C;
0046F2 0009     	NOP     				;}
L0046F4:
0046F4 5477     	MOV.L   	@(#1C,R7),R4	;
0046F6 527A     	MOV.L   	@(#28,R7),R2	;
0046F8 3240     	CMP/EQ 	R4,R2			;
0046FA 8B06     	BF      	L00470A		;if (*(u32*)(0x0F000314+0x28) == *(u32*)(0x0F000314+0x1C)) {
0046FC 5179     	MOV.L   	@(#24,R7),R1	;
0046FE 3140     	CMP/EQ 	R4,R1			;
004700 8B29     	BF      	L004756		;  if (cddata_process_block_fad != *(u32*)(0x0F000314+0x1C)) goto L004756;
004702 E004     	MOV     	#04,R0		;
004704 8074     	MOV.B   	R0,@(#04,R7)	;  cddata_state = 0x04;
004706 A005     	BRA     	L004714		;
004708 0009     	NOP     				;}
L00470A:
00470A 1728     	MOV.L   	R2,@(#20,R7)	;else {
00470C 7201     	ADD     	#01,R2		;  *(u32*)(0x0F000314+0x20) = *(u32*)(0x0F000314+0x28);
00470E 172A     	MOV.L   	R2,@(#28,R7)	;  *(u32*)(0x0F000314+0x28)++;
004710 A014     	BRA     	L00473C		;  goto L00473C;
004712 0009     	NOP     				;}
L004714:
004714 5278     	MOV.L   	@(#20,R7),R2	;
004716 5179     	MOV.L   	@(#24,R7),R1	;
004718 7201     	ADD     	#01,R2		;
00471A 3120     	CMP/EQ 	R2,R1			;
00471C 8B1B     	BF      	L004756		;if (cddata_process_block_fad != *(u32*)(0x0F000314+0x20) + 1) goto L004756;
00471E 1718     	MOV.L   	R1,@(#20,R7)	;*(u32*)(0x0F000314+0x20) = cddata_process_block_fad;
004720 D37A     	MOV.L   	@(#1E8,PC),R3	;
004722 DB61     	MOV.L   	@(#184,PC),R11	;
004724 2312     	MOV.L   	R1,@R3		;*(u32*)0x0F0002B0 = cddata_process_block_fad;
004726 C321     	TRAPA   	#33			;add_task_to_queue(0x06050003);
004728 8476     	MOV.B   	@(#06,R7),R0	;
00472A C840     	TST     	#40,R0		;
00472C 8902     	BT      	L004734		;if (*(u8*)(0x0F000314+0x06) & 0x40 != 0x00) {
00472E 8477     	MOV.B   	@(#07,R7),R0	;
004730 807A     	MOV.B   	R0,@(#0A,R7)	;  cddata_mode = *(u8*)(0x0F000314+0x07);
004732 8063     	MOV.B   	R0,@(#03,R6)	;  block_ptr[3] = *(u8*)(0x0F000314+0x07);
L004734:							;}
004734 847A     	MOV.B   	@(#0A,R7),R0	;
004736 8077     	MOV.B   	R0,@(#07,R7)	;*(u8*)(0x0F000314+0x07) = cddata_mode;
004738 A026     	BRA     	L004788		;goto L004788;
00473A 0009     	NOP     				;

L00473C:
00473C B2DA     	BRS     	L004CF4		;find_next_free_block();
00473E 0009     	NOP     				;
004740 847C     	MOV.B   	@(#0C,R7),R0	;
004742 88FF     	CMP/EQ  	#FF,R0		;
004744 891A     	BT      	L00477C		;if (cddata_free_block_pos == 0xFF) goto L0049C6;
004746 B2C0     	BRS     	L004CCA		;L004CCA();
004748 0009     	NOP     				;
00474A AF49     	BRA     	L0045E0		;goto L0045E0;
00474C 0009     	NOP     				;
00474E 0009     	NOP     				;

L004750:
004750 517A     	MOV.L   	@(#28,R7),R1	;temp = *(u32*)(0x0F000314+0x28);
004752 A001     	BRA     	L004758		;
004754 0009     	NOP     				;
L004756:
004756 5177     	MOV.L   	@(#1C,R7),R1	;temp = *(u32*)(0x0F000314+0x1C);
L004758:
004758 D20A     	MOV.L   	@(#028,PC),R2	;
00475A 6020     	MOV.B   	@R2,R0		;
00475C 70FF     	ADD     	#FF,R0		;
00475E 2200     	MOV.B   	R0,@R2		;(*(u8*)0x0F0002A4)--;
004760 8479     	MOV.B   	@(#09,R7),R0	;
004762 D26A     	MOV.L   	@(#1A8,PC),R2	;
004764 310C     	ADD     	R0,R1			;
004766 2212     	MOV.L   	R1,@R2		;*(u32*)0x0F0002B0 = (temp + *(u8*)(0x0F000314+0x09));
004768 8479     	MOV.B   	@(#09,R7),R0	;
00476A 7001     	ADD     	#01,R0		;
00476C 8079     	MOV.B   	R0,@(#09,R7)	;(*(u8*)(0x0F000314+0x09))++;
00476E E110     	MOV     	#10,R1		;
004770 3016     	CMP/HI 	R1,R0			;
004772 8901     	BT      	L004778		;*(u8*)(0x0F000314+0x09) > 16
004774 A09C     	BRA     	L0048B0		;
004776 0009     	NOP     				;
L004778:
004778 A07B     	BRA     	L004872		;
00477A 0009     	NOP     				;
L00477C:
00477C A123     	BRA     	L0049C6		;
00477E 0009     	NOP     				;
004780 0F00
004782 06DC
004784 0F0002A4

L004788:
004788 E000     	MOV     	#00,R0		;
00478A 8079     	MOV.B   	R0,@(#09,R7)	;*(u8*)(0x0F000314+0x09) = 0x00;
00478C 807B     	MOV.B   	R0,@(#0B,R7)	;*(u8*)(0x0F000314+0x0B) = 0x00;
00478E B2B1     	BRS     	L004CF4		;find_next_free_block();
004790 0009     	NOP     				;
004792 5676     	MOV.L   	@(#18,R7),R6	;u8* block_ptr = cddata_process_block_addr;
004794 760C     	ADD     	#0C,R6		;block_ptr+=12;
004796 847C     	MOV.B   	@(#0C,R7),R0	;
004798 88FF     	CMP/EQ  	#FF,R0		;
00479A 8906     	BT      	L0047AA		;cddata_free_block_pos == 0xFF
00479C 847A     	MOV.B   	@(#0A,R7),R0	;
00479E 8802     	CMP/EQ  	#02,R0		;
0047A0 890C     	BT      	L0047BC		;if (cddata_mode == 0x02) goto L0047BC;
0047A2 8801     	CMP/EQ  	#01,R0		;
0047A4 8906     	BT      	L0047B4		;if (cddata_mode == 0x01) goto L0047B4;
0047A6 A01B     	BRA     	L0047E0		;goto L0047E2;
0047A8 0009     	NOP     				;
L0047AA:
0047AA 8472     	MOV.B   	@(#02,R7),R0	;
0047AC 8802     	CMP/EQ  	#02,R0		;
0047AE 89E5     	BT      	L00477C		;*(u8*)(0x0F000314+0x02) == 0x02
0047B0 A083     	BRA     	L0048BA		;
0047B2 0009     	NOP     				;
L0047B4:
0047B4 E001     	MOV     	#01,R0		;
0047B6 807B     	MOV.B   	R0,@(#0B,R7)	;*(u8*)(0x0F000314+0x0B) = 0x01;
0047B8 A01C     	BRA     	L0047F4		;mask = 0x21;
0047BA E121     	MOV     	#21,R1		;
L0047BC:
0047BC D250     	MOV.L   	@(#140,PC),R2	;
0047BE 6020     	MOV.B   	@R2,R0		;
0047C0 C804     	TST     	#04,R0		;
0047C2 8B0E     	BF      	L0047E2		;init_cd_flags & IFLAG_NO_MODE2_SUBHEADER != 0
0047C4 5161     	MOV.L   	@(#04,R6),R1	;
0047C6 5062     	MOV.L   	@(#08,R6),R0	;
0047C8 3010     	CMP/EQ 	R1,R0			;
0047CA 8B37     	BF      	L00483C		;*(u32*)(block_ptr+8) != *(u32*)(block_ptr+4)
0047CC 4019     	SHLR8   	R0			;
0047CE C820     	TST     	#20,R0		;
0047D0 E001     	MOV     	#01,R0		;
0047D2 8900     	BT      	#000			;
0047D4 E002     	MOV     	#02,R0		;
0047D6 807B     	MOV.B   	R0,@(#0B,R7)	;
0047D8 8802     	CMP/EQ  	#02,R0		;
0047DA 8904     	BT      	L0047E6		;
0047DC A00A     	BRA     	L0047F4		;mask = 0x22;
0047DE E122     	MOV     	#22,R1		;
L0047E0:
0047E0 0009     	NOP     				;
L0047E2:
0047E2 A007     	BRA     	L0047F4		;mask = 0x20;
0047E4 E120     	MOV     	#20,R1		;
L0047E6:
0047E6 D231     	MOV.L   	@(#0C4,PC),R2	;
0047E8 326C     	ADD     	R6,R2			;
0047EA 6022     	MOV.L   	@R2,R0		;
0047EC E120     	MOV     	#20,R1		;mask = 0x20;
0047EE 2008     	TST     	R0,R0			;
0047F0 8900     	BT      	L0047F4		;*(u32*)(block+2336) == 0
0047F2 E124     	MOV     	#24,R1		;mask = 0x24;
L0047F4:
0047F4 8476     	MOV.B   	@(#06,R7),R0	;
0047F6 2018     	TST     	R1,R0			;
0047F8 8B01     	BF      	L0047FE		;
0047FA A043     	BRA     	L004884		;if (*(u8*)(0x0F000314+0x06) & mask == 0) goto L004884;
0047FC 0009     	NOP     				;
L0047FE:
0047FE 847B     	MOV.B   	@(#0B,R7),R0	;
004800 8801     	CMP/EQ  	#01,R0		;
004802 8907     	BT      	L004814		;*(u8*)(0x0F000314+0x0B) == 0x01
004804 8802     	CMP/EQ  	#02,R0		;
004806 8B03     	BF      	L004810		;*(u8*)(0x0F000314+0x0B) != 0x02
004808 D23D     	MOV.L   	@(#0F4,PC),R2	;
00480A 6020     	MOV.B   	@R2,R0		;
00480C C808     	TST     	#08,R0		;
00480E 8938     	BT      	L004882		;init_cd_flags & IFLAG_FORM2_RETRY == 0
L004810:
004810 A014     	BRA     	L00483C		;
004812 0009     	NOP     				;
L004814:
004814 D23C     	MOV.L   	@(#0F0,PC),R2	;
004816 6020     	MOV.B   	@R2,R0		;
004818 8880     	CMP/EQ  	#80,R0		;
00481A 890F     	BT      	L00483C		;init_cd_ecc == ECC_NO_PROCESS
00481C 8475     	MOV.B   	@(#05,R7),R0	;
00481E C808     	TST     	#08,R0		;
004820 8B05     	BF      	L00482E		;*(u8*)(0x0F000314+0x05) & 0x08 != 0x00
004822 CB08     	OR      	#08,R0		;
004824 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05)|=0x08
004826 B1B8     	BRS     	L004B9A		;L004B9A()
004828 0009     	NOP     				;
00482A A005     	BRA     	L004838		;
00482C 0009     	NOP     				;
L00482E:
00482E 847E     	MOV.B   	@(#0E,R7),R0	;u8 mask;
004830 B2D4     	BRS     	L004DDC		;u8 ret = L004DDC(cddata_process_block_pos,&mask);
004832 0009     	NOP     				;
004834 201B     	OR      	R1,R0			;
004836 2200     	MOV.B   	R0,@R2		;init_cd_ecc = mask | ret;
L004838:
004838 A032     	BRA     	L0048A0		;
00483A 0009     	NOP     				;
L00483C:
00483C D231     	MOV.L   	@(#0C4,PC),R2	;
00483E 6020     	MOV.B   	@R2,R0		;
004840 6303     	MOV     	R0,R3			;
004842 8880     	CMP/EQ  	#80,R0		;
004844 890D     	BT      	L004862		;init_cd_retry == RETRY_INFINITE
004846 8800     	CMP/EQ  	#00,R0		;
004848 8913     	BT      	L004872		;init_cd_retry == RETRY_NO
00484A C90F     	AND     	#0F,R0		;
00484C 6103     	MOV     	R0,R1			;
00484E 8478     	MOV.B   	@(#08,R7),R0	;
004850 3012     	CMP/HS 	R1,R0			;
004852 8B04     	BF      	L00485E		;cddata_retry_cnt < (init_cd_retry & 0x0F)
004854 6033     	MOV     	R3,R0			;
004856 C840     	TST     	#40,R0		;
004858 8B13     	BF      	L004882		;init_cd_retry & RETRY_NO != 0
00485A A00A     	BRA     	L004872		;
00485C 0009     	NOP     				;
L00485E:
00485E 7001     	ADD     	#01,R0		;
004860 8078     	MOV.B   	R0,@(#08,R7)	;cddata_retry_cnt++;;
L004862:
004862 B16B     	BRS     	L004B3C		;L004B3C();
004864 0009     	NOP     				;
004866 8475     	MOV.B   	@(#05,R7),R0	;
004868 CB10     	OR      	#10,R0		;
00486A 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05)|=0x10;
00486C DB8F     	MOV.L   	@(#23C,PC),R11	;handle = 0x06050000;
00486E A041     	BRA     	L0048F4		;
004870 0009     	NOP     				;
L004872:
004872 B163     	BRS     	L004B3C		;L004B3C();
004874 0009     	NOP     				;
004876 E000     	MOV     	#00,R0		;
004878 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05) = 0x00;
00487A DB28     	MOV.L   	@(#0A0,PC),R11	;
00487C C321     	TRAPA   	#33			;TRAP_33(0x06050002)
00487E AEAF     	BRA     	L0045E0		;goto L0045E0;
004880 0009     	NOP     				;

L004882:
004882 0009     	NOP     				;
L004884:
004884 8475     	MOV.B   	@(#05,R7),R0	;
004886 C808     	TST     	#08,R0		;
004888 8B0A     	BF      	L0048A0		;*(u8*)(0x0F000314+0x05) & 0x08 != 0
00488A C9EF     	AND     	#EF,R0		;
00488C 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05)&=0xEF;
00488E E000     	MOV     	#00,R0		;
004890 8078     	MOV.B   	R0,@(#08,R7)	;cddata_retry_cnt = 0x00;
004892 B1DE     	BRS     	L004C52		;L004C52();
004894 0009     	NOP     				;
004896 D21F     	MOV.L   	@(#07C,PC),R2	;
004898 507B     	MOV.L   	@(#2C,R7),R0	;
00489A 6122     	MOV.L   	@R2,R1		;
00489C 3012     	CMP/HS 	R1,R0			;
00489E 8901     	BT      	L0048A4		;@(0x0F000314+0x2C) >= @0x0F000284
L0048A0:
0048A0 AE9E     	BRA     	L0045E0		;goto L0045E0;
0048A2 0009     	NOP     				;
L0048A4:
0048A4 A0E7     	BRA     	L004A76		;
0048A6 0009     	NOP     				;
0048A8 06050003
0048AC 00000920

L0048B0:
0048B0 B144     	BRS     	L004B3C		;L004B3C();
0048B2 0009     	NOP     				;
0048B4 DB1A     	MOV.L   	@(#068,PC),R11	;handle = 0x06050004;
0048B6 A01D     	BRA     	L0048F4		;
0048B8 0009     	NOP     				;
L0048BA:
0048BA D217     	MOV.L   	@(#05C,PC),R2	;
0048BC 8527     	MOV.W   	@(#0E,R2),R0	;
0048BE C9FE     	AND     	#FE,R0		;
0048C0 8127     	MOV.W   	R0,@(#0E,R2)	;CHCR0&=0xFFFE;
0048C2 B155     	BRS     	L004B70		;L004B70();
0048C4 0009     	NOP     				;
0048C6 8475     	MOV.B   	@(#05,R7),R0	;
0048C8 CB02     	OR      	#02,R0		;
0048CA 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05)|=0x02;
0048CC AE88     	BRA     	L0045E0		;goto L0045E0;
0048CE 0009     	NOP     				;

0048D0 B134     	BRS     	L004B3C		;L004B3C();
0048D2 0009     	NOP     				;
0048D4 8475     	MOV.B   	@(#05,R7),R0	;
0048D6 C840     	TST     	#40,R0		;
0048D8 8901     	BT      	L0048DE		;*(u8*)(0x0F000314+0x05) & 0x40 == 0
0048DA CB20     	OR      	#20,R0		;
0048DC 8075     	MOV.B   	R0,@(#05,R7)	;*(u8*)(0x0F000314+0x05)|=0x20;
L0048DE:
0048DE DB74     	MOV.L   	@(#1D0,PC),R11	;
0048E0 C321     	TRAPA   	#33			;TRAP_33(0x06050001);
0048E2 D271     	MOV.L   	@(#1C4,PC),R2	;
0048E4 6020     	MOV.B   	@R2,R0		;
0048E6 2008     	TST     	R0,R0			;
0048E8 8B02     	BF      	L0048F0		;*(u8*)0x0F00034B != 0
0048EA DB73     	MOV.L   	@(#1CC,PC),R11	;
0048EC A002     	BRA     	L0048F4		;
0048EE 0009     	NOP     				;
L0048F0:
0048F0 AE76     	BRA     	L0045E0		;goto L0045E0;
0048F2 0009     	NOP     				;
L0048F4:
0048F4 D206     	MOV.L   	@(#018,PC),R2	;
0048F6 507B     	MOV.L   	@(#2C,R7),R0	;
0048F8 2202     	MOV.L   	R0,@R2		;*(u32*)0x0F0002B4 = *(u32*)(0x0F000314+0x2C);
0048FA C321     	TRAPA   	#33			;TRAP_33(handle)
0048FC AE70     	BRA     	L0045E0		;goto L0045E0;
0048FE 0009     	NOP     				;
004900 0F00025C
004904 0F000263
004908 0F000262
00490C 0F0002B0
004910 0F0002B4
004914 0F000284
004918 05FFFF40
00491C 06050002
004920 06050004

004924 A008     	BRA     	#0010			;
004926 0009     	NOP     				;
004928 A006     	BRA     	#000C			;
00492A 0009     	NOP     				;
00492C A010     	BRA     	#0020			;
00492E 0009     	NOP     				;
004930 A009     	BRA     	#0012			;
004932 0009     	NOP     				;
004934 A00E     	BRA     	#001C			;
004936 0009     	NOP     				;
004938 8475     	MOV.B   	@(#05,R7),R0	;
00493A C840     	TST     	#40,R0		;
00493C 8901     	BT      	#002			;
00493E B0FD     	BRS     	#01FA			;
004940 0009     	NOP     				;
004942 E040     	MOV     	#40,R0		;
004944 8075     	MOV.B   	R0,@(#05,R7)	;
004946 8475     	MOV.B   	@(#05,R7),R0	;
004948 C9DF     	AND     	#DF,R0		;
00494A 8075     	MOV.B   	R0,@(#05,R7)	;
00494C E000     	MOV     	#00,R0		;
00494E 8078     	MOV.B   	R0,@(#08,R7)	;
004950 E000     	MOV     	#00,R0		;
004952 8079     	MOV.B   	R0,@(#09,R7)	;
004954 8475     	MOV.B   	@(#05,R7),R0	;
004956 C9FD     	AND     	#FD,R0		;
004958 8075     	MOV.B   	R0,@(#05,R7)	;
00495A D24E     	MOV.L   	@(#138,PC),R2	;
00495C 6122     	MOV.L   	@R2,R1		;
00495E 1717     	MOV.L   	R1,@(#1C,R7)	;
004960 171B     	MOV.L   	R1,@(#2C,R7)	;
004962 D24E     	MOV.L   	@(#138,PC),R2	;
004964 4100     	SHLL    	R1			;
004966 0018     	SETT    				;
004968 4125     	ROTCR   	R1			;
00496A 2212     	MOV.L   	R1,@R2		;
00496C D24E     	MOV.L   	@(#138,PC),R2	;
00496E 6020     	MOV.B   	@R2,R0		;
004970 2008     	TST     	R0,R0			;
004972 8B1F     	BF      	#03E			;
004974 B1BE     	BRS     	#037C			;
004976 0009     	NOP     				;
004978 847C     	MOV.B   	@(#0C,R7),R0	;
00497A 88FF     	CMP/EQ  	#FF,R0		;
00497C 8923     	BT      	#046			;
00497E B1A4     	BRS     	#0348			;
004980 0009     	NOP     				;
004982 E001     	MOV     	#01,R0		;
004984 8074     	MOV.B   	R0,@(#04,R7)	;
004986 D2EF     	MOV.L   	@(#3BC,PC),R2	;
004988 E000     	MOV     	#00,R0		;
00498A 2201     	MOV.W   	R0,@R2		;
00498C D3EE     	MOV.L   	@(#3B8,PC),R3	;
00498E E000     	MOV     	#00,R0		;
004990 8131     	MOV.W   	R0,@(#02,R3)	;
004992 E010     	MOV     	#10,R0		;
004994 8133     	MOV.W   	R0,@(#06,R3)	;
004996 E102     	MOV     	#02,R1		;
004998 E2F8     	MOV     	#F8,R2		;
00499A E9F0     	MOV     	#F0,R9		;
00499C 699C     	EXTU.B   	R9,R9			;
00499E D4EB     	MOV.L   	@(#3AC,PC),R4	;
0049A0 0A02     	STC     	SR, R10		;
0049A2 29AB     	OR      	R10,R9		;
0049A4 490E     	LDC     	R9,SR			;
0049A6 8541     	MOV.W   	@(#02,R4),R0	;
0049A8 2029     	AND     	R2,R0			;
0049AA 201B     	OR      	R1,R0			;
0049AC 8141     	MOV.W   	R0,@(#02,R4)	;
0049AE 4A0E     	LDC     	R10,SR		;
0049B0 AE16     	BRA     	#1C2C			;
0049B2 0009     	NOP     				;
0049B4 B0C2     	BRS     	#0184			;
0049B6 0009     	NOP     				;
0049B8 8475     	MOV.B   	@(#05,R7),R0	;
0049BA CB20     	OR      	#20,R0		;
0049BC 8075     	MOV.B   	R0,@(#05,R7)	;
0049BE DB3D     	MOV.L   	@(#0F4,PC),R11	;
0049C0 C321     	TRAPA   	#21			;
0049C2 AE0D     	BRA     	#1C1A			;
0049C4 0009     	NOP     				;

L0049C6:
0049C6 D238     	MOV.L   	@(#0E0,PC),R2	;
0049C8 6020     	MOV.B   	@R2,R0		;
0049CA 88FF     	CMP/EQ  	#FF,R0		;
0049CC 8904     	BT      	#008			;
0049CE E0FF     	MOV     	#FF,R0		;
0049D0 2200     	MOV.B   	R0,@R2		;
0049D2 D3DE     	MOV.L   	@(#378,PC),R3	;
0049D4 E008     	MOV     	#08,R0		;
0049D6 8133     	MOV.W   	R0,@(#06,R3)	;
0049D8 8475     	MOV.B   	@(#05,R7),R0	;
0049DA C840     	TST     	#40,R0		;
0049DC 8901     	BT      	#002			;
0049DE DB35     	MOV.L   	@(#0D4,PC),R11	;
0049E0 C321     	TRAPA   	#33			;TRAP_33();
0049E2 ADFD     	BRA     	#1BFA			;
0049E4 0009     	NOP     				;

L0049E6:
0049E6 E002     	MOV     	#02,R0		;
0049E8 8074     	MOV.B   	R0,@(#04,R7)	;
0049EA E0FF     	MOV     	#FF,R0		;
0049EC 1708     	MOV.L   	R0,@(#20,R7)	;
0049EE D02C     	MOV.L   	@(#0B0,PC),R0	;
0049F0 400B     	JSR     	@R0			;L005B7C();
0049F2 0009     	NOP     				;
0049F4 D724     	MOV.L   	@(#090,PC),R7	;0F000314
0049F6 B17D     	BRS     	L004CF4		;L004CF4();
0049F8 0009     	NOP     				;
0049FA 847C     	MOV.B   	@(#0C,R7),R0	;
0049FC 88FF     	CMP/EQ  	#FF,R0		;
0049FE 89E2     	BT      	#1C4			;
004A00 B163     	BRS     	#02C6			;
004A02 0009     	NOP     				;
004A04 ADEC     	BRA     	#1BD8			;
004A06 0009     	NOP     				;

L004A08:
004A08 8475     	MOV.B   	@(#05,R7),R0	;
004A0A C9FB     	AND     	#FB,R0		;
004A0C 8075     	MOV.B   	R0,@(#05,R7)	;
004A0E D220     	MOV.L   	@(#080,PC),R2	;
004A10 6020     	MOV.B   	@R2,R0		;
004A12 C840     	TST     	#40,R0		;
004A14 8904     	BT      	#008			;
004A16 C90F     	AND     	#0F,R0		;
004A18 6103     	MOV     	R0,R1			;
004A1A 8478     	MOV.B   	@(#08,R7),R0	;
004A1C 3012     	CMP/HS 	R1,R0			;
004A1E 8909     	BT      	#012			;
004A20 D220     	MOV.L   	@(#080,PC),R2	;
004A22 6021     	MOV.W   	@R2,R0		;
004A24 610C     	EXTU.B   	R0,R1			;
004A26 4019     	SHLR8   	R0			;
004A28 600C     	EXTU.B   	R0,R0			;
004A2A 201B     	OR      	R1,R0			;
004A2C C880     	TST     	#80,R0		;
004A2E 8901     	BT      	#002			;
004A30 AF04     	BRA     	#1E08			;
004A32 0009     	NOP     				;
004A34 B10D     	BRS     	#021A			;
004A36 0009     	NOP     				;
004A38 D217     	MOV.L   	@(#05C,PC),R2	;
004A3A 507B     	MOV.L   	@(#2C,R7),R0	;
004A3C 6122     	MOV.L   	@R2,R1		;
004A3E 3012     	CMP/HS 	R1,R0			;
004A40 8919     	BT      	#032			;
004A42 8472     	MOV.B   	@(#02,R7),R0	;
004A44 600C     	EXTU.B   	R0,R0			;
004A46 E102     	MOV     	#02,R1		;
004A48 3016     	CMP/HI 	R1,R0			;
004A4A 8B0B     	BF      	#016			;
004A4C 8470     	MOV.B   	@(#00,R7),R0	;
004A4E B1C5     	BRS     	#038A			;
004A50 0009     	NOP     				;
004A52 2108     	TST     	R0,R1			;
004A54 89EE     	BT      	#1DC			;
004A56 6007     	NOT     	R0,R0			;
004A58 2019     	AND     	R1,R0			;
004A5A 2200     	MOV.B   	R0,@R2		;
004A5C B09D     	BRS     	#013A			;
004A5E 0009     	NOP     				;
004A60 A005     	BRA     	#000A			;
004A62 0009     	NOP     				;
004A64 8475     	MOV.B   	@(#05,R7),R0	;
004A66 C9F7     	AND     	#F7,R0		;
004A68 8075     	MOV.B   	R0,@(#05,R7)	;
004A6A C802     	TST     	#02,R0		;
004A6C 8B01     	BF      	#002			;
004A6E ADB7     	BRA     	#1B6E			;
004A70 0009     	NOP     				;
004A72 AF1D     	BRA     	#1E3A			;
004A74 0009     	NOP     				;

L004A76:
004A76 B061     	BRS     	#00C2			;
004A78 0009     	NOP     				;
004A7A E000     	MOV     	#00,R0		;
004A7C 8075     	MOV.B   	R0,@(#05,R7)	;
004A7E DB0C     	MOV.L   	@(#030,PC),R11	;
004A80 C321     	TRAPA   	#21			;
004A82 ADAD     	BRA     	#1B5A			;
004A84 0009     	NOP     				;
004A86 0009     	NOP     				;
004A88 0F000314
004A8C 0F00025C
004A90 0F00
004A92 0263
004A94 0F00
004A96 02B8
004A98 0F00
004A9A 0284
004A9C 0F00
004A9E 02AC
004AA0 00005B7C
004AA4 0F00
004AA6 0718
004AA8 0F00034B
004AAC 06050000
004AB0 06050001
004AB4 0604
004AB6 0001
004AB8 0604
004ABA 0000
004ABC D2A1     	MOV.L   	@(#284,PC),R2	;
004ABE E000     	MOV     	#00,R0		;
004AC0 8024     	MOV.B   	R0,@(#04,R2)	;
004AC2 8025     	MOV.B   	R0,@(#05,R2)	;
004AC4 E001     	MOV     	#01,R0		;
004AC6 8021     	MOV.B   	R0,@(#01,R2)	;
004AC8 E0FE     	MOV     	#FE,R0		;
004ACA 8026     	MOV.B   	R0,@(#06,R2)	;
004ACC D20D     	MOV.L   	@(#034,PC),R2	;
004ACE E000     	MOV     	#00,R0		;
004AD0 8020     	MOV.B   	R0,@(#00,R2)	;
004AD2 8021     	MOV.B   	R0,@(#01,R2)	;
004AD4 8022     	MOV.B   	R0,@(#02,R2)	;
004AD6 D39C     	MOV.L   	@(#270,PC),R3	;
004AD8 8531     	MOV.W   	@(#02,R3),R0	;
004ADA C9DF     	AND     	#DF,R0		;
004ADC C9BF     	AND     	#BF,R0		;
004ADE 8131     	MOV.W   	R0,@(#02,R3)	;
004AE0 8533     	MOV.W   	@(#06,R3),R0	;
004AE2 CB20     	OR      	#20,R0		;
004AE4 8133     	MOV.W   	R0,@(#06,R3)	;
004AE6 AD7B     	BRA     	#1AF6			;
004AE8 0009     	NOP     				;
004AEA D397     	MOV.L   	@(#25C,PC),R3	;
004AEC 8531     	MOV.W   	@(#02,R3),R0	;
004AEE C9DF     	AND     	#DF,R0		;
004AF0 8131     	MOV.W   	R0,@(#02,R3)	;
004AF2 8533     	MOV.W   	@(#06,R3),R0	;
004AF4 C9DF     	AND     	#DF,R0		;
004AF6 8133     	MOV.W   	R0,@(#06,R3)	;
004AF8 D292     	MOV.L   	@(#248,PC),R2	;
004AFA E000     	MOV     	#00,R0		;
004AFC 8021     	MOV.B   	R0,@(#01,R2)	;
004AFE AD6F     	BRA     	#1ADE			;
004B00 0009     	NOP     				;
004B02 0009     	NOP     				;
004B04 0F00
004B06 06EC

L004B08:
004B08 4F22     	STS.L   	PR,@-R15		;
004B0A DB94     	MOV.L   	@(#250,PC),R11	;
004B0C C32A     	TRAPA   	#2A			;
004B0E D3AE     	MOV.L   	@(#2B8,PC),R3	;
004B10 E180     	MOV     	#80,R1		;
004B12 6030     	MOV.B   	@R3,R0		;
004B14 88FF     	CMP/EQ  	#FF,R0		;
004B16 8906     	BT      	#00C			;
004B18 CB00     	OR      	#00,R0		;
004B1A 620C     	EXTU.B   	R0,R2			;
004B1C D0AC     	MOV.L   	@(#2B0,PC),R0	;
004B1E 400B     	JSR     	@R0			;
004B20 0009     	NOP     				;
004B22 A003     	BRA     	#0006			;
004B24 0009     	NOP     				;
004B26 D0A9     	MOV.L   	@(#2A4,PC),R0	;
004B28 400B     	JSR     	@R0			;
004B2A 0009     	NOP     				;
004B2C DB8B     	MOV.L   	@(#22C,PC),R11	;
004B2E C327     	TRAPA   	#27			;
004B30 D386     	MOV.L   	@(#218,PC),R3	;
004B32 E040     	MOV     	#40,R0		;
004B34 8133     	MOV.W   	R0,@(#06,R3)	;
004B36 4F26     	LDS.L   	@R15+,PR		;
004B38 AD52     	BRA     	#1AA4			;
004B3A 0009     	NOP     				;

L004B3C:							;
004B3C 4F22     	STS.L   	PR,@-R15		;
004B3E D284     	MOV.L   	@(#210,PC),R2	;
004B40 8527     	MOV.W   	@(#0E,R2),R0	;
004B42 C9FE     	AND     	#FE,R0		;
004B44 8127     	MOV.W   	R0,@(#0E,R2)	;SH1.DMAC.CHCR0&= 0xFFFE;
004B46 B013     	BRS     	L004B70		;L004B70();
004B48 0009     	NOP     				;
004B4A 8475     	MOV.B   	@(#05,R7),R0	;
004B4C C808     	TST     	#08,R0		;
004B4E 8908     	BT      	L004B62		;
004B50 C9F7     	AND     	#F7,R0		;
004B52 8075     	MOV.B   	R0,@(#05,R7)	;
004B54 C804     	TST     	#04,R0		;
004B56 8904     	BT      	L004B62		;
004B58 C9FB     	AND     	#FB,R0		;
004B5A 8075     	MOV.B   	R0,@(#05,R7)	;
004B5C DB81     	MOV.L   	@(#204,PC),R11	;
004B5E C328     	TRAPA   	#40			;TRAP_40();
004B60 D770     	MOV.L   	@(#1C0,PC),R7	;
L004B62:
004B62 B054     	BRS     	L004C0E		;L004C0E();
004B64 0009     	NOP     				;
004B66 E000     	MOV     	#00,R0		;
004B68 8074     	MOV.B   	R0,@(#04,R7)	;
004B6A 4F26     	LDS.L   	@R15+,PR		;
004B6C 000B     	RTS     				;
004B6E 0009     	NOP     				;

L004B70:							;
004B70 D375     	MOV.L   	@(#1D4,PC),R3	;
004B72 D476     	MOV.L   	@(#1D8,PC),R4	;
004B74 8533     	MOV.W   	@(#06,R3),R0	;
004B76 C9EF     	AND     	#EF,R0		;
004B78 8133     	MOV.W   	R0,@(#06,R3)	;YGR.CDMASK&= 0xFFEF;
004B7A E2F8     	MOV     	#F8,R2		;
004B7C E9F0     	MOV     	#F0,R9		;
004B7E 699C     	EXTU.B   	R9,R9			;
004B80 D472     	MOV.L   	@(#1C8,PC),R4	;
004B82 0A02     	STC     	SR, R10		;//save SR
004B84 29AB     	OR      	R10,R9		;
004B86 490E     	LDC     	R9,SR			;SH1.SR|= 0x000000F0;
004B88 8541     	MOV.W   	@(#02,R4),R0	;
004B8A 2029     	AND     	R2,R0			;
004B8C 8141     	MOV.W   	R0,@(#02,R4)	;YGR.REG1A&= 0xFFF8;
004B8E 4A0E     	LDC     	R10,SR		;//restore SR
004B90 D26C     	MOV.L   	@(#1B0,PC),R2	;
004B92 E000     	MOV     	#00,R0		;
004B94 2200     	MOV.B   	R0,@R2		;*(u8*)0x0F0006DC = 0x00;
004B96 000B     	RTS     				;
004B98 0009     	NOP     				;

L004B9A:							;
004B9A 8475     	MOV.B   	@(#05,R7),R0	;
004B9C CB04     	OR      	#04,R0		;
004B9E 8075     	MOV.B   	R0,@(#05,R7)	;
004BA0 D26C     	MOV.L   	@(#1B0,PC),R2	;
004BA2 8470     	MOV.B   	@(#00,R7),R0	;
004BA4 2200     	MOV.B   	R0,@R2		;
004BA6 DB6E     	MOV.L   	@(#1B8,PC),R11	;
004BA8 C321     	TRAPA   	#21			;
004BAA 000B     	RTS     				;
004BAC 0009     	NOP     				;

L004BAE:							;(secnum)	//secnum-R1
004BAE D75D     	MOV.L   	@(#174,PC),R7	;
004BB0 601E     	EXTS.B   	R1,R0			;
004BB2 88FF     	CMP/EQ  	#FF,R0		;
004BB4 890F     	BT      	L004BD6		;if (secnum == 0xFF) return;
004BB6 D85C     	MOV.L   	@(#170,PC),R8	;
004BB8 8472     	MOV.B   	@(#02,R7),R0	;
004BBA 8800     	CMP/EQ  	#00,R0		;
004BBC 8B03     	BF      	L004BC6		;if (*(u8*)(0x0F000314+0x02) == 0x00) {
004BBE 601C     	EXTU.B   	R1,R0			;
004BC0 8070     	MOV.B   	R0,@(#00,R7)	;  secnum->@(0x0F000314+0x00).b
004BC2 A003     	BRA     	L004BCC		;
004BC4 0009     	NOP     				;} else {
L004BC6:
004BC6 8471     	MOV.B   	@(#01,R7),R0	;  u8 n = secnum(0x0F000314+0x01);
004BC8 600C     	EXTU.B   	R0,R0			;
004BCA 0814     	MOV.B   	R1,@(R0,R8)		;  ((u8*)0x0F000354)[n] = secnum;
L004BCC:							;}
004BCC 601C     	EXTU.B   	R1,R0			;
004BCE 8071     	MOV.B   	R0,@(#01,R7)	;*(u8*)(0x0F000314+0x01) = secnum;
004BD0 8472     	MOV.B   	@(#02,R7),R0	;
004BD2 7001     	ADD     	#01,R0		;
004BD4 8072     	MOV.B   	R0,@(#02,R7)	;*(u8*)(0x0F000314+0x02)++;
L004BD6:
004BD6 000B     	RTS     				;
004BD8 0009     	NOP     				;

L004BDA:							;
004BDA D752     	MOV.L   	@(#148,PC),R7	;
004BDC E1FF     	MOV     	#FF,R1		;
004BDE 8472     	MOV.B   	@(#02,R7),R0	;u8 val = *(u8*)(0x0F000314+0x02);
004BE0 8800     	CMP/EQ  	#00,R0		;
004BE2 8912     	BT      	L004C0A		;if (val == 0) return;
004BE4 D850     	MOV.L   	@(#140,PC),R8	;
004BE6 70FF     	ADD     	#FF,R0		;val--;
004BE8 620C     	EXTU.B   	R0,R2			;
004BEA 8072     	MOV.B   	R0,@(#02,R7)	;*(u8*)(0x0F000314+0x02) = val;
004BEC 8470     	MOV.B   	@(#00,R7),R0	;
004BEE 610C     	EXTU.B   	R0,R1			;u8 n = *(u8*)(0x0F000314+0x00);
004BF0 2228     	TST     	R2,R2			;
004BF2 8B04     	BF      	L004BFE		;if (val == 0) {
004BF4 E0FF     	MOV     	#FF,R0		;
004BF6 8070     	MOV.B   	R0,@(#00,R7)	;  *(u8*)(0x0F000314+0x00) = 0xFF;
004BF8 8071     	MOV.B   	R0,@(#01,R7)	;  *(u8*)(0x0F000314+0x01) = 0xFF;
004BFA A003     	BRA     	L004C04		;
004BFC 0009     	NOP     				;}
L004BFE:
004BFE 601C     	EXTU.B   	R1,R0			;
004C00 008C     	MOV.B   	@(R0,R8),R0		;else 
004C02 8070     	MOV.B   	R0,@(#00,R7)	;  *(u8*)(0x0F000314+0x00) = ((u8*)(0x0F000354))[n];
L004C04:
004C04 601C     	EXTU.B   	R1,R0			;
004C06 E3FF     	MOV     	#FF,R3		;
004C08 0834     	MOV.B   	R3,@(R0,R8)		;((u8*)(0x0F000354))[n] = 0xFF;
L004C0A:
004C0A 000B     	RTS     				;
004C0C 0009     	NOP     				;

L004C0E:
004C0E 4F22     	STS.L   	PR,@-R15		;
004C10 8472     	MOV.B   	@(#02,R7),R0	;
004C12 E102     	MOV     	#02,R1		;
004C14 600C     	EXTU.B   	R0,R0			;
004C16 3016     	CMP/HI 	R1,R0			;
004C18 8B0F     	BF      	#01E			;
004C1A DB50     	MOV.L   	@(#140,PC),R11	;
004C1C C32A     	TRAPA   	#2A			;
004C1E D741     	MOV.L   	@(#104,PC),R7	;
004C20 BFDB     	BRS     	#1FB6			;
004C22 0009     	NOP     				;
004C24 D043     	MOV.L   	@(#10C,PC),R0	;
004C26 400B     	JSR     	@R0			;
004C28 0009     	NOP     				;
004C2A D73E     	MOV.L   	@(#0F8,PC),R7	;
004C2C 8472     	MOV.B   	@(#02,R7),R0	;
004C2E E102     	MOV     	#02,R1		;
004C30 600C     	EXTU.B   	R0,R0			;
004C32 3016     	CMP/HI 	R1,R0			;
004C34 89F4     	BT      	#1E8			;
004C36 DB49     	MOV.L   	@(#124,PC),R11	;
004C38 C327     	TRAPA   	#27			;
004C3A D292     	MOV.L   	@(#248,PC),R2	;
004C3C E000     	MOV     	#00,R0		;
004C3E 1200     	MOV.L   	R0,@(#0,R2)		;
004C40 1201     	MOV.L   	R0,@(#4,R2)		;
004C42 1202     	MOV.L   	R0,@(#8,R2)		;
004C44 1203     	MOV.L   	R0,@(#C,R2)		;
004C46 1204     	MOV.L   	R0,@(#10,R2)	;
004C48 1205     	MOV.L   	R0,@(#14,R2)	;
004C4A 812C     	MOV.W   	R0,@(#18,R2)	;
004C4C 4F26     	LDS.L   	@R15+,PR		;
004C4E 000B     	RTS     				;
004C50 0009     	NOP     				;

L004C52:							;
004C52 4F22     	STS.L   	PR,@-R15		;
004C54 8472     	MOV.B   	@(#02,R7),R0	;
004C56 E202     	MOV     	#02,R2		;
004C58 600C     	EXTU.B   	R0,R0			;
004C5A 3026     	CMP/HI 	R2,R0			;
004C5C 8B2D     	BF      	L004CBA		;if (*(u8*)(0x0F000314+0x02) <= 0x02) return;
004C5E DB3F     	MOV.L   	@(#0FC,PC),R11	;
004C60 C32A     	TRAPA   	#42			;TRAP_42();
004C62 D730     	MOV.L   	@(#0C0,PC),R7	;
004C64 D216     	MOV.L   	@(#058,PC),R2	;
004C66 6020     	MOV.B   	@R2,R0		;
004C68 88FF     	CMP/EQ  	#FF,R0		;
004C6A 8903     	BT      	L004C74		;if (*(u8*)0x0F000788 != 0xFF) {
004C6C D015     	MOV.L   	@(#054,PC),R0	;
004C6E E180     	MOV     	#80,R1		;
004C70 400B     	JSR     	@R0			;  L0054F0(0x80):
004C72 0009     	NOP     				;}
L004C74:
004C74 BFB1     	BRS     	L004BDA		;L004BDA();
004C76 0009     	NOP     				;
004C78 8073     	MOV.B   	R0,@(#03,R7)	;
004C7A E280     	MOV     	#80,R2		;
004C7C D02F     	MOV.L   	@(#0BC,PC),R0	;
004C7E 400B     	JSR     	@R0			;L004FA4();
004C80 0009     	NOP     				;
004C82 D728     	MOV.L   	@(#0A0,PC),R7	;
004C84 6013     	MOV     	R1,R0			;
004C86 807F     	MOV.B   	R0,@(#0F,R7)	;
004C88 8473     	MOV.B   	@(#03,R7),R0	;
004C8A 610C     	EXTU.B   	R0,R1			;
004C8C DB32     	MOV.L   	@(#0C8,PC),R11	;
004C8E DC27     	MOV.L   	@(#09C,PC),R12	;
004C90 21BE     	MULU.W  	R11,R1		;
004C92 0B1A     	STS     	MACL, R11		;
004C94 3CBC     	ADD     	R11,R12		;
004C96 7C0C     	ADD     	#0C,R12		;
004C98 50C0     	MOV.L   	@(#00,R12),R0	;
004C9A 6103     	MOV     	R0,R1			;
004C9C B0B6     	BRS     	L004E0C		;u32 fad = msf_to_fad(u32 header);
004C9E 0009     	NOP     				;
004CA0 D227     	MOV.L   	@(#09C,PC),R2	;
004CA2 7101     	ADD     	#01,R1		;fad++;
004CA4 171B     	MOV.L   	R1,@(#2C,R7)	;*(u32*)(0x0F000314+0x2C) = fad;
004CA6 4100     	SHLL    	R1			;
004CA8 0018     	SETT    				;
004CAA 4125     	ROTCR   	R1			;fad |= 0x80000000;
004CAC 2212     	MOV.L   	R1,@R2		;FAD = fad;
004CAE D327     	MOV.L   	@(#09C,PC),R3	;
004CB0 E004     	MOV     	#04,R0		;
004CB2 8133     	MOV.W   	R0,@(#06,R3)	;YGR.HIRQ = HIRQ_CSCT;
004CB4 DB29     	MOV.L   	@(#0A4,PC),R11	;
004CB6 C327     	TRAPA   	#39			;TRAP_39();
004CB8 D71A     	MOV.L   	@(#068,PC),R7	;
L004CBA:
004CBA 4F26     	LDS.L   	@R15+,PR		;
004CBC 000B     	RTS     				;
004CBE 0009     	NOP     				;
004CC0 0F000788
004CC4 000054F0
004CC8 FFFF

L004CCA:							;
004CCA 4F22     	STS.L   	PR,@-R15		;
004CCC D715     	MOV.L   	@(#054,PC),R7	;
004CCE 8472     	MOV.B   	@(#02,R7),R0	;
004CD0 E102     	MOV     	#02,R1		;
004CD2 600C     	EXTU.B   	R0,R0			;
004CD4 3016     	CMP/HI 	R1,R0			;
004CD6 8B0A     	BF      	L004CEE		;if (*(u8*)(0x0F000314+0x02) <= 0x02) return;
004CD8 DB20     	MOV.L   	@(#080,PC),R11	;
004CDA C32A     	TRAPA   	#42			;TRAP_42(0x0B050000);
004CDC D711     	MOV.L   	@(#044,PC),R7	;
004CDE BF7C     	BRS     	L004BDA		;L004BDA();
004CE0 0009     	NOP     				;
004CE2 D014     	MOV.L   	@(#050,PC),R0	;
004CE4 400B     	JSR     	@R0			;L004ED4();
004CE6 0009     	NOP     				;
004CE8 DB1C     	MOV.L   	@(#070,PC),R11	;
004CEA C327     	TRAPA   	#39			;TRAP_39(0x0B050000);
004CEC D70D     	MOV.L   	@(#034,PC),R7	;
L004CEE:
004CEE 4F26     	LDS.L   	@R15+,PR		;
004CF0 000B     	RTS     				;
004CF2 0009     	NOP     				;

L004CF4:							;find_next_free_block()
004CF4 4F22     	STS.L   	PR,@-R15		;
004CF6 DB19     	MOV.L   	@(#064,PC),R11	;
004CF8 C32A     	TRAPA   	#39			;TRAP_39(0x0B050000);
004CFA D00D     	MOV.L   	@(#034,PC),R0	;
004CFC 400B     	JSR     	@R0			;L004E98(&block,&arg2);
004CFE 0009     	NOP     				;
004D00 DB16     	MOV.L   	@(#058,PC),R11	;
004D02 C327     	TRAPA   	#39			;TRAP_39(0x0B050000);
004D04 D707     	MOV.L   	@(#01C,PC),R7	;
004D06 6C1C     	EXTU.B   	R1,R12		;
004D08 DB13     	MOV.L   	@(#04C,PC),R11	;
004D0A 2BCE     	MULU.W  	R12,R11		;
004D0C DD07     	MOV.L   	@(#01C,PC),R13	;
004D0E 0B1A     	STS     	MACL, R11		;
004D10 3DBC     	ADD     	R11,R13		;
004D12 601C     	EXTU.B   	R1,R0			;
004D14 807C     	MOV.B   	R0,@(#0C,R7)	;cddata_free_block_pos = block;
004D16 17D4     	MOV.L   	R13,@(#10,R7)	;cddata_free_block_addr = cddata_dram_buf + (block * 2352);
004D18 BF49     	BRS     	L004BAE		;L004BAE(block);
004D1A 0009     	NOP     				;
004D1C 4F26     	LDS.L   	@R15+,PR		;
004D1E 000B     	RTS     				;
004D20 0009     	NOP     				;
004D22 0009     	NOP     				;
004D24 0F000314
004D28 0F000354
004D2C 09000230
004D30 00004E98
004D34 00004ED4
004D38 0000
004D3A 55AE
004D3C 00004FA4
004D40 0F0002AC
004D44 0F0006DC
004D48 0A000004
004D4C 0A000018
004D50 05FFFF40
004D54 0F00
004D56 071B
004D58 00000930
004D5C 0B050000
004D60 0105
004D62 0010
004D64 0105
004D66 0000

;cdb command 30 "Set CD Device Connection"
L004D68:							;set_cd_dev_connection(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
004D68 6029     	SWAP.W   	R2,R0			;
004D6A 6008     	SWAP.B   	R0,R0			;
004D6C 600E     	EXTS.B   	R0,R0			;
004D6E 88FF     	CMP/EQ  	#FF,R0		;u8 num = cr3>>8;
004D70 8903     	BT      	L004D7A		;
004D72 600C     	EXTU.B   	R0,R0			;
004D74 E318     	MOV     	#18,R3		;
004D76 3032     	CMP/HS 	R3,R0			;
004D78 8906     	BT      	L004D88		;if (num == 0xFF || num < 0x18) {
L004D7A:
004D7A D313     	MOV.L   	@(#04C,PC),R3	;
004D7C 2300     	MOV.B   	R0,@R3		;  filter_num = num;
004D7E DB16     	MOV.L   	@(#058,PC),R11	;
004D80 C321     	TRAPA   	#33			;  TRAP_33(0x05810030);
004D82 D00F     	MOV.L   	@(#03C,PC),R0	;
004D84 A011     	BRA     	L004DAA		;  return make_cd_status_00(rr1,rr2,rr3,rr4);
004D86 0009     	NOP     				;}
L004D88:
004D88 D00E     	MOV.L   	@(#038,PC),R0	;
004D8A A00E     	BRA     	L004DAA		;return make_cd_status_FF(rr1,rr2,rr3,rr4);
004D8C 0009     	NOP     				;

;cdb command 31 "Get CD Device Connection"
L004D8E:							;get_cd_dev_connection(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
004D8E D311     	MOV.L   	@(#044,PC),R3	;
004D90 8430     	MOV.B   	@(#00,R3),R0	;u8 val = *(u8*)0x0F000690;
004D92 A002     	BRA     	L004D9A		;
004D94 0009     	NOP     				;

;cdb command 32 "Get Last Buffer Destination
L004D96:							;get_last_buf_dest(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4) //rr1/rr2-R12,rr3/rr4-R13
004D96 D308     	MOV.L   	@(#020,PC),R3	;
004D98 843F     	MOV.B   	@(#0F,R3),R0	;u8 val = cddata_last_block_pos;
L004D9A:
004D9A 88FF     	CMP/EQ  	#FF,R0		;
004D9C 8900     	BT      	L004DA0		;
004D9E C91F     	AND     	#1F,R0		;if (val != 0xFF) val &= 0x1F;
L004DA0:
004DA0 4028     	SHLL16  	R0			;
004DA2 4018     	SHLL8   	R0			;
004DA4 6D03     	MOV     	R0,R13		;*rr3 = temp << 8; *rr4 = 0x0000;
004DA6 EC00     	MOV     	#00,R12		;*rr1 = 0x0000; *rr2 = 0x0000;
004DA8 D004     	MOV.L   	@(#010,PC),R0	;
L004DAA:
004DAA 4F22     	STS.L   	PR,@-R15		;
004DAC 400B     	JSR     	@R0			;get_rr1_status(rr1);
004DAE 0009     	NOP     				;
004DB0 4F26     	LDS.L   	@R15+,PR		;
004DB2 EB00     	MOV     	#00,R11		;
004DB4 000B     	RTS     				;
004DB6 0009     	NOP     				;
004DB8 0F000314
004DBC 000091A8
004DC0 000091FE
004DC4 000091E8
004DC8 0F000344
004DCC 0000
004DCE 54F0
004DD0 0000
004DD2 5510
004DD4 0F000690
004DD8 05810030

L004DDC:							;(u8 block,u8* arg)	//block-R0,arg-R1
004DDC 2F36     	MOV.L   	R3,@-R15		;
004DDE 610C     	EXTU.B   	R0,R1			;
004DE0 D228     	MOV.L   	@(#0A0,PC),R2	;
004DE2 6013     	MOV     	R1,R0			;
004DE4 C907     	AND     	#07,R0		;
004DE6 6303     	MOV     	R0,R3			;
004DE8 4101     	SHLR    	R1			;
004DEA 4109     	SHLR2   	R1			;
004DEC 321C     	ADD     	R1,R2			;u8* ptr = 0x0F0006A0 + block/8;
004DEE E001     	MOV     	#01,R0		;
004DF0 4301     	SHLR    	R3			;
004DF2 8B00     	BF      	#000			;
004DF4 4000     	SHLL    	R0			;
004DF6 4301     	SHLR    	R3			;
004DF8 8B00     	BF      	#000			;
004DFA 4008     	SHLL2   	R0			;
004DFC 4301     	SHLR    	R3			;
004DFE 8B01     	BF      	#002			;
004E00 4008     	SHLL2   	R0			;ret = pow(2,block&7);
004E02 4008     	SHLL2   	R0			;
004E04 6120     	MOV.B   	@R2,R1		;*arg = *ptr;
004E06 63F6     	MOV.L   	@R15+,R3		;
004E08 000B     	RTS     				;
004E0A 0009     	NOP     				;

L004E0C:							;u32 msf_to_fad(u32 header)	//header-R1, return-R1
004E0C 2F56     	MOV.L   	R5,@-R15		;
004E0E C71F     	MOVA    	@(#7C,PC),R0	;
004E10 4119     	SHLR8   	R1			;
004E12 6403     	MOV     	R0,R4			;
004E14 6013     	MOV     	R1,R0			;
004E16 C90F     	AND     	#0F,R0		;
004E18 6203     	MOV     	R0,R2			;
004E1A E305     	MOV     	#05,R3		;
004E1C 4109     	SHLR2   	R1			;
004E1E 6545     	MOV.W   	@R4+,R5		;
004E20 4109     	SHLR2   	R1			;
004E22 6013     	MOV     	R1,R0			;
004E24 C90F     	AND     	#0F,R0		;
004E26 655D     	EXTU.W   	R5,R5			;
004E28 250E     	MULU.W  	R0,R5			;
004E2A 4109     	SHLR2   	R1			;
004E2C 73FF     	ADD     	#FF,R3		;
004E2E 051A     	STS     	MACL, R5		;
004E30 4315     	CMP/PL  	R3			;
004E32 325C     	ADD     	R5,R2			;
004E34 89F3     	BT      	#1E6			;
004E36 6123     	MOV     	R2,R1			;
004E38 65F6     	MOV.L   	@R15+,R5		;
004E3A 000B     	RTS     				;
004E3C 0009     	NOP     				;

004E3E C715     	MOVA    	@(#54,PC),R0	;
004E40 E200     	MOV     	#00,R2		;
004E42 6403     	MOV     	R0,R4			;
004E44 E306     	MOV     	#06,R3		;
004E46 6041     	MOV.W   	@R4,R0		;
004E48 74FE     	ADD     	#FE,R4		;
004E4A 600D     	EXTU.W   	R0,R0			;
004E4C 4008     	SHLL2   	R0			;
004E4E 4000     	SHLL    	R0			;
004E50 3102     	CMP/HS 	R0,R1			;
004E52 8B00     	BF      	#000			;
004E54 3108     	SUB     	R0,R1			;
004E56 4224     	ROTCL   	R2			;
004E58 4001     	SHLR    	R0			;
004E5A 3102     	CMP/HS 	R0,R1			;
004E5C 8B00     	BF      	#000			;
004E5E 3108     	SUB     	R0,R1			;
004E60 4224     	ROTCL   	R2			;
004E62 4001     	SHLR    	R0			;
004E64 3102     	CMP/HS 	R0,R1			;
004E66 8B00     	BF      	#000			;
004E68 3108     	SUB     	R0,R1			;
004E6A 4224     	ROTCL   	R2			;
004E6C 4001     	SHLR    	R0			;
004E6E 3102     	CMP/HS 	R0,R1			;
004E70 8B00     	BF      	#000			;
004E72 3108     	SUB     	R0,R1			;
004E74 4224     	ROTCL   	R2			;
004E76 73FF     	ADD     	#FF,R3		;
004E78 4315     	CMP/PL  	R3			;
004E7A 89E4     	BT      	#1C8			;
004E7C 6123     	MOV     	R2,R1			;
004E7E 000B     	RTS     				;
004E80 0009     	NOP     				;
004E82 0009     	NOP     				;
004E84 0F0006A0
004E88 0000
004E8A 0001
004E8C 000A
004E8E 004B
004E90 02EE     	MOV.L   	@(R0,R14),R2	;
004E92 1194     	MOV.L   	R9,@(#10,R1)	;
004E94 AFC8     	BRA     	#1F90			;
004E96 FFFF     	

L004E98:							;(u8* secnum,u8* arg2)	//secnum-R1,arg2-R2
004E98 D7F0     	MOV.L   	@(#3C0,PC),R7	;
004E9A D9F1     	MOV.L   	@(#3C4,PC),R9	;
004E9C 8472     	MOV.B   	@(#02,R7),R0	;temp = *(u8*)(0x0F000348+0x02);
004E9E 8800     	CMP/EQ  	#00,R0		;
004EA0 8913     	BT      	L004ECA		;if (temp != 0)
004EA2 70FF     	ADD     	#FF,R0		;  temp--
004EA4 8072     	MOV.B   	R0,@(#02,R7)	;  *(u8*)(0x0F000348+0x02) = temp;
004EA6 620C     	EXTU.B   	R0,R2			;  *arg2 = temp;
004EA8 8470     	MOV.B   	@(#00,R7),R0	;  u8 temp2 = *(u8*)(0x0F000348+0x00);
004EAA 610C     	EXTU.B   	R0,R1			;  *secnum = temp2
004EAC 2228     	TST     	R2,R2			;
004EAE 8B04     	BF      	L004EBA		;  if (*arg2 != 0) {
004EB0 E0FF     	MOV     	#FF,R0		;
004EB2 8070     	MOV.B   	R0,@(#00,R7)	;    *(u8*)(0x0F000348+0x00) = 0xFF;
004EB4 8071     	MOV.B   	R0,@(#01,R7)	;    *(u8*)(0x0F000348+0x01) = 0xFF;
004EB6 A003     	BRA     	L004EC0		;
004EB8 0009     	NOP     				;  }
L004EBA:
004EBA 600C     	EXTU.B   	R0,R0			;  else {
004EBC 009C     	MOV.B   	@(R0,R9),R0		;
004EBE 8070     	MOV.B   	R0,@(#00,R7)	;    *(u8*)(0x0F000348+0x00) = *(u8*)(0x0F000354+temp2);
L004EC0:
004EC0 601C     	EXTU.B   	R1,R0			;  }
004EC2 E3FF     	MOV     	#FF,R3		;
004EC4 0934     	MOV.B   	R3,@(R0,R9)		;  *(u8*)(0x0F000354+temp2) = 0xFF;
004EC6 000B     	RTS     				;  return;
004EC8 0009     	NOP     				;}
L004ECA:
004ECA 620C     	EXTU.B   	R0,R2			;*arg2 = temp;
004ECC E0FF     	MOV     	#FF,R0		;
004ECE 610C     	EXTU.B   	R0,R1			;*secnum = 0xFF;
004ED0 000B     	RTS     				;
004ED2 0009     	NOP     				;

L004ED4:							;
004ED4 D7E1     	MOV.L   	@(#384,PC),R7	;
004ED6 D9E2     	MOV.L   	@(#388,PC),R9	;
004ED8 601E     	EXTS.B   	R1,R0			;
004EDA 88FF     	CMP/EQ  	#FF,R0		;
004EDC 890C     	BT      	#018			;
004EDE 8472     	MOV.B   	@(#02,R7),R0	;
004EE0 600C     	EXTU.B   	R0,R0			;
004EE2 7001     	ADD     	#01,R0		;
004EE4 8072     	MOV.B   	R0,@(#02,R7)	;
004EE6 8801     	CMP/EQ  	#01,R0		;
004EE8 8908     	BT      	#010			;
004EEA 8471     	MOV.B   	@(#01,R7),R0	;
004EEC 600C     	EXTU.B   	R0,R0			;
004EEE 0914     	MOV.B   	R1,@(R0,R9)		;
004EF0 601C     	EXTU.B   	R1,R0			;
004EF2 8071     	MOV.B   	R0,@(#01,R7)	;
004EF4 E2FF     	MOV     	#FF,R2		;
004EF6 0924     	MOV.B   	R2,@(R0,R9)		;
004EF8 000B     	RTS     				;
004EFA 0009     	NOP     				;
004EFC 022A     	STS     	PR, R2		;
004EFE B17C     	BRS     	#02F8			;
004F00 0009     	NOP     				;
004F02 422A     	LDS     	R2,PR			;
004F04 601C     	EXTU.B   	R1,R0			;
004F06 8070     	MOV.B   	R0,@(#00,R7)	;
004F08 AFF3     	BRA     	#1FE6			;
004F0A 0009     	NOP     				;
004F0C D7D3     	MOV.L   	@(#34C,PC),R7	;
004F0E D9D4     	MOV.L   	@(#350,PC),R9	;
004F10 611C     	EXTU.B   	R1,R1			;
004F12 8472     	MOV.B   	@(#02,R7),R0	;
004F14 2118     	TST     	R1,R1			;
004F16 891B     	BT      	#036			;
004F18 600C     	EXTU.B   	R0,R0			;
004F1A 6203     	MOV     	R0,R2			;
004F1C 3106     	CMP/HI 	R0,R1			;
004F1E 8917     	BT      	#02E			;
004F20 8470     	MOV.B   	@(#00,R7),R0	;
004F22 631C     	EXTU.B   	R1,R3			;
004F24 610C     	EXTU.B   	R0,R1			;
004F26 600C     	EXTU.B   	R0,R0			;
004F28 6403     	MOV     	R0,R4			;
004F2A 009C     	MOV.B   	@(R0,R9),R0		;
004F2C 72FF     	ADD     	#FF,R2		;
004F2E 73FF     	ADD     	#FF,R3		;
004F30 4315     	CMP/PL  	R3			;
004F32 89F8     	BT      	#1F0			;
004F34 8070     	MOV.B   	R0,@(#00,R7)	;
004F36 E3FF     	MOV     	#FF,R3		;
004F38 604C     	EXTU.B   	R4,R0			;
004F3A 0934     	MOV.B   	R3,@(R0,R9)		;
004F3C 6023     	MOV     	R2,R0			;
004F3E 8072     	MOV.B   	R0,@(#02,R7)	;
004F40 2228     	TST     	R2,R2			;
004F42 8B02     	BF      	#004			;
004F44 E0FF     	MOV     	#FF,R0		;
004F46 8070     	MOV.B   	R0,@(#00,R7)	;
004F48 8071     	MOV.B   	R0,@(#01,R7)	;
004F4A 6013     	MOV     	R1,R0			;
004F4C 000B     	RTS     				;
004F4E 0009     	NOP     				;
004F50 E0FF     	MOV     	#FF,R0		;
004F52 610C     	EXTU.B   	R0,R1			;
004F54 000B     	RTS     				;
004F56 0009     	NOP     				;
004F58 D7C0     	MOV.L   	@(#300,PC),R7	;
004F5A D9C1     	MOV.L   	@(#304,PC),R9	;
004F5C 601E     	EXTS.B   	R1,R0			;
004F5E 88FF     	CMP/EQ  	#FF,R0		;
004F60 891C     	BT      	#038			;
004F62 8472     	MOV.B   	@(#02,R7),R0	;
004F64 611C     	EXTU.B   	R1,R1			;
004F66 620C     	EXTU.B   	R0,R2			;
004F68 2228     	TST     	R2,R2			;
004F6A 8B03     	BF      	#006			;
004F6C 6013     	MOV     	R1,R0			;
004F6E 8070     	MOV.B   	R0,@(#00,R7)	;
004F70 A004     	BRA     	#0008			;
004F72 0009     	NOP     				;
004F74 8471     	MOV.B   	@(#01,R7),R0	;
004F76 600C     	EXTU.B   	R0,R0			;
004F78 0914     	MOV.B   	R1,@(R0,R9)		;
004F7A 6013     	MOV     	R1,R0			;
004F7C 600C     	EXTU.B   	R0,R0			;
004F7E 6403     	MOV     	R0,R4			;
004F80 009C     	MOV.B   	@(R0,R9),R0		;
004F82 7201     	ADD     	#01,R2		;
004F84 88FF     	CMP/EQ  	#FF,R0		;
004F86 8BF9     	BF      	#1F2			;
004F88 6043     	MOV     	R4,R0			;
004F8A 8071     	MOV.B   	R0,@(#01,R7)	;
004F8C 6023     	MOV     	R2,R0			;
004F8E 8072     	MOV.B   	R0,@(#02,R7)	;
004F90 042A     	STS     	PR, R4		;
004F92 B132     	BRS     	#0264			;
004F94 0009     	NOP     				;
004F96 442A     	LDS     	R4,PR			;
004F98 000B     	RTS     				;
004F9A 0009     	NOP     				;
004F9C E0FF     	MOV     	#FF,R0		;
004F9E 610C     	EXTU.B   	R0,R1			;
004FA0 000B     	RTS     				;
004FA2 0009     	NOP     				;

L004FA4:							;
004FA4 4F22     	STS.L   	PR,@-R15		;
004FA6 D7AD     	MOV.L   	@(#2B4,PC),R7	;0F000348
004FA8 2F16     	MOV.L   	R1,@-R15		;
004FAA B15B     	BRS     	L005264		;L005264();
004FAC 0009     	NOP     				;
004FAE 61F6     	MOV.L   	@R15+,R1		;
004FB0 88FF     	CMP/EQ  	#FF,R0		;
004FB2 8B05     	BF      	L004FC0		;
L004FB4:
004FB4 BF8E     	BRS     	L004ED4		;L004ED4();
004FB6 0009     	NOP     				;
004FB8 E0FF     	MOV     	#FF,R0		;
004FBA 620C     	EXTU.B   	R0,R2			;
004FBC A043     	BRA     	L005046		;
004FBE 0009     	NOP     				;
L004FC0:
004FC0 D9A7     	MOV.L   	@(#29C,PC),R9	;
004FC2 D8E4     	MOV.L   	@(#390,PC),R8	;
004FC4 C91F     	AND     	#1F,R0		;
004FC6 E218     	MOV     	#18,R2		;
004FC8 3022     	CMP/HS 	R2,R0			;
004FCA 89F3     	BT      	L004FB4		;
004FCC 620C     	EXTU.B   	R0,R2			;
004FCE 4000     	SHLL    	R0			;
004FD0 380C     	ADD     	R0,R8			;
004FD2 4000     	SHLL    	R0			;
004FD4 380C     	ADD     	R0,R8			;
004FD6 8482     	MOV.B   	@(#02,R8),R0	;
004FD8 600C     	EXTU.B   	R0,R0			;
004FDA 7001     	ADD     	#01,R0		;
004FDC 8082     	MOV.B   	R0,@(#02,R8)	;
004FDE 8801     	CMP/EQ  	#01,R0		;
004FE0 8B03     	BF      	L004FEA		;
004FE2 601C     	EXTU.B   	R1,R0			;
004FE4 8080     	MOV.B   	R0,@(#00,R8)	;
004FE6 A004     	BRA     	L004FF2		;
004FE8 0009     	NOP     				;
L004FEA:
004FEA 8481     	MOV.B   	@(#01,R8),R0	;
004FEC 600C     	EXTU.B   	R0,R0			;
004FEE 0914     	MOV.B   	R1,@(R0,R9)		;
004FF0 601C     	EXTU.B   	R1,R0			;
L004FF2:
004FF2 8081     	MOV.B   	R0,@(#01,R8)	;
004FF4 E3FF     	MOV     	#FF,R3		;
004FF6 0934     	MOV.B   	R3,@(R0,R9)		;
004FF8 8483     	MOV.B   	@(#03,R8),R0	;
004FFA C803     	TST     	#03,R0		;
004FFC 890F     	BT      	L00501E		;
004FFE 8483     	MOV.B   	@(#03,R8),R0	;
005000 C801     	TST     	#01,R0		;
005002 8901     	BT      	L005008		;
005004 DB16     	MOV.L   	@(#058,PC),R11	;
005006 C321     	TRAPA   	#33			;TRAP_33();
L005008:
005008 8483     	MOV.B   	@(#03,R8),R0	;
00500A C802     	TST     	#02,R0		;
00500C 8907     	BT      	L00501E		;
00500E D311     	MOV.L   	@(#044,PC),R3	;
005010 6032     	MOV.L   	@R3,R0		;
005012 70FF     	ADD     	#FF,R0		;
005014 2302     	MOV.L   	R0,@R3		;
005016 8800     	CMP/EQ  	#00,R0		;
005018 8B01     	BF      	L00501E		;
00501A DB12     	MOV.L   	@(#048,PC),R11	;
00501C C321     	TRAPA   	#33			;TRAP_33();
L00501E:
00501E 8574     	MOV.W   	@(#08,R7),R0	;
005020 E3C8     	MOV     	#C8,R3		;
005022 633C     	EXTU.B   	R3,R3			;
005024 7001     	ADD     	#01,R0		;
005026 8174     	MOV.W   	R0,@(#08,R7)	;
005028 3032     	CMP/HS 	R3,R0			;
00502A 8B0B     	BF      	L005046		;
00502C E008     	MOV     	#08,R0		;
00502E D308     	MOV.L   	@(#020,PC),R3	;
005030 2301     	MOV.W   	R0,@R3		;
005032 E0FF     	MOV     	#FF,R0		;
005034 8073     	MOV.B   	R0,@(#03,R7)	;
005036 D308     	MOV.L   	@(#020,PC),R3	;
005038 6030     	MOV.B   	@R3,R0		;
00503A C840     	TST     	#40,R0		;
00503C 8901     	BT      	L005046		;
00503E DB0A     	MOV.L   	@(#028,PC),R11	;
005040 C321     	TRAPA   	#21			;
005042 0009     	NOP     				;
005044 0009     	NOP     				;
L005046:
005046 4F26     	LDS.L   	@R15+,PR		;
005048 612C     	EXTU.B   	R2,R1			;
00504A 000B     	RTS     				;
00504C 0009     	NOP     				;
00504E 0009     	NOP     				;
005050 0A00
005052 001E
005054 0F00
005056 034C
005058 0F00
00505A 0319
00505C 0F00
00505E 0316
005060 0704
005062 0000
005064 0704
005066 0001
005068 0604
00506A 0001

L00506C:							;(u8 num,u8 arg2,u8* ret)//num-R1,arg2-R2,ret-R1
00506C D8B9     	MOV.L   	@(#2E4,PC),R8	;
00506E D97C     	MOV.L   	@(#1F0,PC),R9	;0F000354
005070 601C     	EXTU.B   	R1,R0			;
005072 E318     	MOV     	#18,R3		;
005074 3032     	CMP/HS 	R3,R0			;
005076 891C     	BT      	L0050B2		;if (num >= 24) {*ret = 0xFF; return;}
005078 4000     	SHLL    	R0			;
00507A 380C     	ADD     	R0,R8			;
00507C 4000     	SHLL    	R0			;
00507E 380C     	ADD     	R0,R8			;u8* ptr = partition_data_array[num];
005080 8482     	MOV.B   	@(#02,R8),R0	;
005082 630C     	EXTU.B   	R0,R3			;
005084 8800     	CMP/EQ  	#00,R0		;
005086 8914     	BT      	L0050B2		;if (ptr[2] == 0) {*ret = 0xFF; return;}
005088 602E     	EXTS.B   	R2,R0			;
00508A 88FF     	CMP/EQ  	#FF,R0		;
00508C 8B01     	BF      	L005092		;
00508E 623C     	EXTU.B   	R3,R2			;
005090 72FF     	ADD     	#FF,R2		;u8 temp = (arg2 != 0xFF) ? arg2 : ptr[2] - 1;
L005092:
005092 2228     	TST     	R2,R2			;
005094 8910     	BT      	L0050B2		;if (temp == 0) {*ret = 0xFF; return;}
005096 7201     	ADD     	#01,R2		;
005098 3230     	CMP/EQ 	R3,R2			;
00509A 8910     	BT      	L0050BE		;if (temp + 1 == ptr[2]) {*ret = ptr[1]; return;}
00509C 3236     	CMP/HI 	R3,R2			;
00509E 8908     	BT      	L0050B2		;if (temp + 1 > ptr[2]) {*ret = 0xFF; return;}
0050A0 72FF     	ADD     	#FF,R2		;
0050A2 6C2C     	EXTU.B   	R2,R12		;
0050A4 4F22     	STS.L   	PR,@-R15		;
0050A6 B2AB     	BRS     	L005600		;L005600();
0050A8 0009     	NOP     				;
0050AA 4F26     	LDS.L   	@R15+,PR		;
L0050AC:
0050AC 610C     	EXTU.B   	R0,R1			;
0050AE 000B     	RTS     				;
0050B0 0009     	NOP     				;
L0050B2:
0050B2 E0FF     	MOV     	#FF,R0		;
0050B4 AFFA     	BRA     	L0050AC		;
0050B6 0009     	NOP     				;

0050B8 8480     	MOV.B   	@(#00,R8),R0	;
0050BA AFF7     	BRA     	L0050AC		;
0050BC 0009     	NOP     				;
L0050BE:
0050BE 8481     	MOV.B   	@(#01,R8),R0	;
0050C0 AFF4     	BRA     	L0050AC		;
0050C2 0009     	NOP     				;

0050C4 8485     	MOV.B   	@(#05,R8),R0	;
0050C6 AFF1     	BRA     	L0050AC		;
0050C8 0009     	NOP     				;

0050CA D8A2     	MOV.L   	@(#288,PC),R8	;
0050CC D964     	MOV.L   	@(#190,PC),R9	;
0050CE 601C     	EXTU.B   	R1,R0			;
0050D0 E418     	MOV     	#18,R4		;
0050D2 3042     	CMP/HS 	R4,R0			;
0050D4 8952     	BT      	#0A4			;
0050D6 4000     	SHLL    	R0			;
0050D8 380C     	ADD     	R0,R8			;
0050DA 4000     	SHLL    	R0			;
0050DC 380C     	ADD     	R0,R8			;
0050DE 8482     	MOV.B   	@(#02,R8),R0	;
0050E0 8800     	CMP/EQ  	#00,R0		;
0050E2 894B     	BT      	#096			;
0050E4 640C     	EXTU.B   	R0,R4			;
0050E6 602E     	EXTS.B   	R2,R0			;
0050E8 88FF     	CMP/EQ  	#FF,R0		;
0050EA 8B01     	BF      	#002			;
0050EC 624C     	EXTU.B   	R4,R2			;
0050EE 72FF     	ADD     	#FF,R2		;
0050F0 603E     	EXTS.B   	R3,R0			;
0050F2 88FF     	CMP/EQ  	#FF,R0		;
0050F4 8B01     	BF      	#002			;
0050F6 634C     	EXTU.B   	R4,R3			;
0050F8 3328     	SUB     	R2,R3			;
0050FA 633C     	EXTU.B   	R3,R3			;
0050FC 622C     	EXTU.B   	R2,R2			;
0050FE 2338     	TST     	R3,R3			;
005100 893C     	BT      	#078			;
005102 6033     	MOV     	R3,R0			;
005104 302C     	ADD     	R2,R0			;
005106 3046     	CMP/HI 	R4,R0			;
005108 8938     	BT      	#070			;
00510A 2228     	TST     	R2,R2			;
00510C 8B14     	BF      	#028			;
00510E 3340     	CMP/EQ 	R4,R3			;
005110 8B12     	BF      	#024			;
005112 DC4B     	MOV.L   	@(#12C,PC),R12	;
005114 633C     	EXTU.B   	R3,R3			;
005116 60C1     	MOV.W   	@R12,R0		;
005118 3038     	SUB     	R3,R0			;
00511A 2C01     	MOV.W   	R0,@R12		;
00511C 8480     	MOV.B   	@(#00,R8),R0	;
00511E 610C     	EXTU.B   	R0,R1			;
005120 8481     	MOV.B   	@(#01,R8),R0	;
005122 620C     	EXTU.B   	R0,R2			;
005124 E0FF     	MOV     	#FF,R0		;
005126 8080     	MOV.B   	R0,@(#00,R8)	;
005128 8081     	MOV.B   	R0,@(#01,R8)	;
00512A 8084     	MOV.B   	R0,@(#04,R8)	;
00512C 8085     	MOV.B   	R0,@(#05,R8)	;
00512E 6403     	MOV     	R0,R4			;
005130 E000     	MOV     	#00,R0		;
005132 8082     	MOV.B   	R0,@(#02,R8)	;
005134 000B     	RTS     				;
005136 0009     	NOP     				;
005138 4F22     	STS.L   	PR,@-R15		;
00513A B023     	BRS     	#0046			;
00513C 0009     	NOP     				;
00513E 4F26     	LDS.L   	@R15+,PR		;
005140 602C     	EXTU.B   	R2,R0			;
005142 059C     	MOV.B   	@(R0,R9),R5		;
005144 604E     	EXTS.B   	R4,R0			;
005146 88FF     	CMP/EQ  	#FF,R0		;
005148 8B03     	BF      	#006			;
00514A 605C     	EXTU.B   	R5,R0			;
00514C 8080     	MOV.B   	R0,@(#00,R8)	;
00514E A002     	BRA     	#0004			;
005150 0009     	NOP     				;
005152 604C     	EXTU.B   	R4,R0			;
005154 0954     	MOV.B   	R5,@(R0,R9)		;
005156 8481     	MOV.B   	@(#01,R8),R0	;
005158 600C     	EXTU.B   	R0,R0			;
00515A 3200     	CMP/EQ 	R0,R2			;
00515C 8B01     	BF      	#002			;
00515E 6043     	MOV     	R4,R0			;
005160 8081     	MOV.B   	R0,@(#01,R8)	;
005162 602C     	EXTU.B   	R2,R0			;
005164 E5FF     	MOV     	#FF,R5		;
005166 0954     	MOV.B   	R5,@(R0,R9)		;
005168 DC35     	MOV.L   	@(#0D4,PC),R12	;
00516A 633C     	EXTU.B   	R3,R3			;
00516C 60C1     	MOV.W   	@R12,R0		;
00516E 3038     	SUB     	R3,R0			;
005170 2C01     	MOV.W   	R0,@R12		;
005172 8482     	MOV.B   	@(#02,R8),R0	;
005174 3038     	SUB     	R3,R0			;
005176 8082     	MOV.B   	R0,@(#02,R8)	;
005178 000B     	RTS     				;
00517A 0009     	NOP     				;
00517C E0FF     	MOV     	#FF,R0		;
00517E 610C     	EXTU.B   	R0,R1			;
005180 000B     	RTS     				;
005182 0009     	NOP     				;
005184 2228     	TST     	R2,R2			;
005186 8B06     	BF      	#00C			;
005188 E4FF     	MOV     	#FF,R4		;
00518A E0FF     	MOV     	#FF,R0		;
00518C 8084     	MOV.B   	R0,@(#04,R8)	;
00518E 8480     	MOV.B   	@(#00,R8),R0	;
005190 610C     	EXTU.B   	R0,R1			;
005192 A00A     	BRA     	#0014			;
005194 0009     	NOP     				;
005196 6C2C     	EXTU.B   	R2,R12		;
005198 7CFF     	ADD     	#FF,R12		;
00519A 4F22     	STS.L   	PR,@-R15		;
00519C B230     	BRS     	#0460			;
00519E 0009     	NOP     				;
0051A0 4F26     	LDS.L   	@R15+,PR		;
0051A2 640C     	EXTU.B   	R0,R4			;
0051A4 009C     	MOV.B   	@(R0,R9),R0		;
0051A6 600C     	EXTU.B   	R0,R0			;
0051A8 6103     	MOV     	R0,R1			;
0051AA 6C3C     	EXTU.B   	R3,R12		;
0051AC 7CFF     	ADD     	#FF,R12		;
0051AE 6013     	MOV     	R1,R0			;
0051B0 4F22     	STS.L   	PR,@-R15		;
0051B2 B24E     	BRS     	#049C			;
0051B4 0009     	NOP     				;
0051B6 4F26     	LDS.L   	@R15+,PR		;
0051B8 6203     	MOV     	R0,R2			;
0051BA 000B     	RTS     				;
0051BC 0009     	NOP     				;
0051BE 4F22     	STS.L   	PR,@-R15		;
0051C0 BF83     	BRS     	#1F06			;
0051C2 0009     	NOP     				;
0051C4 4F26     	LDS.L   	@R15+,PR		;
0051C6 601E     	EXTS.B   	R1,R0			;
0051C8 88FF     	CMP/EQ  	#FF,R0		;
0051CA 8914     	BT      	#028			;
0051CC D723     	MOV.L   	@(#08C,PC),R7	;
0051CE 8472     	MOV.B   	@(#02,R7),R0	;
0051D0 8800     	CMP/EQ  	#00,R0		;
0051D2 8B07     	BF      	#00E			;
0051D4 6013     	MOV     	R1,R0			;
0051D6 8070     	MOV.B   	R0,@(#00,R7)	;
0051D8 4F22     	STS.L   	PR,@-R15		;
0051DA B00E     	BRS     	#001C			;
0051DC 0009     	NOP     				;
0051DE 4F26     	LDS.L   	@R15+,PR		;
0051E0 A003     	BRA     	#0006			;
0051E2 0009     	NOP     				;
0051E4 8471     	MOV.B   	@(#01,R7),R0	;
0051E6 600C     	EXTU.B   	R0,R0			;
0051E8 0914     	MOV.B   	R1,@(R0,R9)		;
0051EA 6023     	MOV     	R2,R0			;
0051EC 8071     	MOV.B   	R0,@(#01,R7)	;
0051EE 8472     	MOV.B   	@(#02,R7),R0	;
0051F0 600C     	EXTU.B   	R0,R0			;
0051F2 303C     	ADD     	R3,R0			;
0051F4 8072     	MOV.B   	R0,@(#02,R7)	;
0051F6 000B     	RTS     				;
0051F8 0009     	NOP     				;
0051FA 8473     	MOV.B   	@(#03,R7),R0	;
0051FC 2008     	TST     	R0,R0			;
0051FE 8910     	BT      	#020			;
005200 E000     	MOV     	#00,R0		;
005202 8073     	MOV.B   	R0,@(#03,R7)	;
005204 DC12     	MOV.L   	@(#048,PC),R12	;
005206 60C0     	MOV.B   	@R12,R0		;
005208 C820     	TST     	#20,R0		;
00520A 8909     	BT      	#012			;
00520C DB0D     	MOV.L   	@(#034,PC),R11	;
00520E DC0E     	MOV.L   	@(#038,PC),R12	;
005210 60B2     	MOV.L   	@R11,R0		;
005212 4000     	SHLL    	R0			;
005214 4001     	SHLR    	R0			;
005216 2C02     	MOV.L   	R0,@R12		;
005218 DB0E     	MOV.L   	@(#038,PC),R11	;
00521A C321     	TRAPA   	#21			;
00521C A00E     	BRA     	#001C			;
00521E 0009     	NOP     				;
005220 0009     	NOP     				;
005222 DC0B     	MOV.L   	@(#02C,PC),R12	;
005224 60C0     	MOV.B   	@R12,R0		;
005226 C802     	TST     	#02,R0		;
005228 8907     	BT      	#00E			;
00522A DB06     	MOV.L   	@(#018,PC),R11	;
00522C DC07     	MOV.L   	@(#01C,PC),R12	;
00522E 60B2     	MOV.L   	@R11,R0		;
005230 4000     	SHLL    	R0			;
005232 4001     	SHLR    	R0			;
005234 2C02     	MOV.L   	R0,@R12		;
005236 DB08     	MOV.L   	@(#020,PC),R11	;
005238 C321     	TRAPA   	#21			;
00523A 0009     	NOP     				;
00523C 000B     	RTS     				;
00523E 0009     	NOP     				;
005240 0F00
005242 0350
005244 0F00
005246 02AC
005248 0F00
00524A 02C0
00524C 0F00
00524E 02B4
005250 0F00
005252 0319
005254 0604
005256 0000
005258 0605
00525A 0004
00525C 0F000348
005260 0F000354

L005264:							;int (u8 arg1,u8* ret)	//arg1-R2
005264 602E     	EXTS.B   	R2,R0			;
005266 88FF     	CMP/EQ  	#FF,R0		;
005268 896F     	BT      	L00534A		;
00526A D33B     	MOV.L   	@(#0EC,PC),R3	;
00526C C91F     	AND     	#1F,R0		;
00526E C810     	TST     	#10,R0		;
005270 8B6B     	BF      	L00534A		;if (arg1 & 0x1F >= 0x10) {*ret = 0xFF; return -1;}
005272 330C     	ADD     	R0,R3			;u8* ptr = 0x0F000690 + (arg1 & 0x0F);
005274 6230     	MOV.B   	@R3,R2		;
005276 622C     	EXTU.B   	R2,R2			;u8 temp = *ptr;
005278 D33A     	MOV.L   	@(#0E8,PC),R3	;
00527A 611C     	EXTU.B   	R1,R1			;
00527C E0CA     	MOV     	#CA,R0		;
00527E 600C     	EXTU.B   	R0,R0			;
005280 3102     	CMP/HS 	R0,R1			;
005282 8962     	BT      	L00534A		;if (*ret >= 202) {*ret = 0xFF; return -1;}
005284 D038     	MOV.L   	@(#0E0,PC),R0	;
005286 201E     	MULU.W  	R1,R0			;
005288 001A     	STS     	MACL, R0		;
00528A 330C     	ADD     	R0,R3			;
00528C 730C     	ADD     	#0C,R3		;u8* ptr = cddata_dram_buf + (*ret * 2352) + 12;
00528E E500     	MOV     	#00,R5		;
005290 8433     	MOV.B   	@(#03,R3),R0	;
005292 8802     	CMP/EQ  	#02,R0		;
005294 8B00     	BF      	L005298		;
005296 5531     	MOV.L   	@(#04,R3),R5	;u32 subheader = (ptr[3] == 0x02) ? *((u32*)ptr[4]) : 0x00000000;
L005298:
005298 6132     	MOV.L   	@R3,R1		;u32 header = *((u32*)ptr[0]);
00529A 6623     	MOV     	R2,R6			;
00529C 4F22     	STS.L   	PR,@-R15		;
00529E D033     	MOV.L   	@(#0CC,PC),R0	;
0052A0 400B     	JSR     	@R0			;u32 fad = msf_to_fad(header);
0052A2 0009     	NOP     				;
0052A4 4F26     	LDS.L   	@R15+,PR		;
0052A6 6263     	MOV     	R6,R2			;
0052A8 6313     	MOV     	R1,R3			;
0052AA 602E     	EXTS.B   	R2,R0			;
L0052AC:
0052AC 88FF     	CMP/EQ  	#FF,R0		;
0052AE 894C     	BT      	L00534A		;
0052B0 C91F     	AND     	#1F,R0		;
0052B2 E618     	MOV     	#18,R6		;
0052B4 3062     	CMP/HS 	R6,R0			;
0052B6 8948     	BT      	L00534A		;if (temp == 0xFF || temp & 0x1F >= 0x18) {*ret = 0xFF; return -1;}
0052B8 DB29     	MOV.L   	@(#0A4,PC),R11	;
0052BA DA28     	MOV.L   	@(#0A0,PC),R10	;
0052BC 4008     	SHLL2   	R0			;
0052BE 3B0C     	ADD     	R0,R11		;0F0005A0 + ((arg1 & 0x1F) * 4)
0052C0 4008     	SHLL2   	R0			;
0052C2 3A0C     	ADD     	R0,R10		;u8* ptr2 = 0F000420 + ((arg1 & 0x1F) * 16)
0052C4 84A0     	MOV.B   	@(#00,R10),R0	;
0052C6 6603     	MOV     	R0,R6			;
0052C8 C840     	TST     	#40,R0		;
0052CA 8906     	BT      	L0052DC		;*ptr2 & 0x40 == 0
0052CC 51A2     	MOV.L   	@(#08,R10),R1	;
0052CE 3136     	CMP/HI 	R3,R1			;
0052D0 8934     	BT      	L00533C		;*(u32*)(ptr2 + 8) > fad
0052D2 50A3     	MOV.L   	@(#0C,R10),R0	;
0052D4 310C     	ADD     	R0,R1			;
0052D6 3312     	CMP/HS 	R1,R3			;
0052D8 8930     	BT      	L00533C		;
0052DA 84A0     	MOV.B   	@(#00,R10),R0	;
L0052DC:
0052DC C80F     	TST     	#0F,R0		;
0052DE 8930     	BT      	L005342		;
0052E0 4601     	SHLR    	R6			;
0052E2 8B06     	BF      	L0052F2		;
0052E4 84A2     	MOV.B   	@(#02,R10),R0	;
0052E6 610C     	EXTU.B   	R0,R1			;
0052E8 6059     	SWAP.W   	R5,R0			;
0052EA 6008     	SWAP.B   	R0,R0			;
0052EC 600C     	EXTU.B   	R0,R0			;
0052EE 3010     	CMP/EQ 	R1,R0			;
0052F0 8B21     	BF      	L005336		;
L0052F2:
0052F2 4601     	SHLR    	R6			;
0052F4 8B05     	BF      	L005302		;
0052F6 84A3     	MOV.B   	@(#03,R10),R0	;
0052F8 610C     	EXTU.B   	R0,R1			;
0052FA 6059     	SWAP.W   	R5,R0			;
0052FC 600C     	EXTU.B   	R0,R0			;
0052FE 3010     	CMP/EQ 	R1,R0			;
005300 8B19     	BF      	L005336		;
L005302:
005302 4601     	SHLR    	R6			;
005304 8B08     	BF      	L005318		;
005306 84A4     	MOV.B   	@(#04,R10),R0	;
005308 610C     	EXTU.B   	R0,R1			;
00530A 6058     	SWAP.B   	R5,R0			;
00530C 600C     	EXTU.B   	R0,R0			;
00530E 2109     	AND     	R0,R1			;
005310 84A6     	MOV.B   	@(#06,R10),R0	;
005312 600C     	EXTU.B   	R0,R0			;
005314 3010     	CMP/EQ 	R1,R0			;
005316 8B0E     	BF      	L005336		;
L005318:
005318 4601     	SHLR    	R6			;
00531A 8B07     	BF      	L00532C		;
00531C 84A5     	MOV.B   	@(#05,R10),R0	;
00531E 610C     	EXTU.B   	R0,R1			;
005320 605C     	EXTU.B   	R5,R0			;
005322 2109     	AND     	R0,R1			;
005324 84A7     	MOV.B   	@(#07,R10),R0	;
005326 600C     	EXTU.B   	R0,R0			;
005328 3010     	CMP/EQ 	R1,R0			;
00532A 8B04     	BF      	L005336		;
L00532C:
00532C 84A0     	MOV.B   	@(#00,R10),R0	;
00532E C810     	TST     	#10,R0		;
005330 8907     	BT      	L005342		;
005332 A003     	BRA     	L00533C		;
005334 0009     	NOP     				;
L005336:
005336 84A0     	MOV.B   	@(#00,R10),R0	;
005338 C810     	TST     	#10,R0		;
00533A 8B02     	BF      	L005342		;
L00533C:
00533C 84B3     	MOV.B   	@(#03,R11),R0	;
00533E AFB5     	BRA     	L0052AC		;
005340 0009     	NOP     				;
L005342:
005342 84B2     	MOV.B   	@(#02,R11),R0	;
005344 610C     	EXTU.B   	R0,R1			;
005346 000B     	RTS     				;
005348 0009     	NOP     				;
L00534A:
00534A E0FF     	MOV     	#FF,R0		;
00534C 610C     	EXTU.B   	R0,R1			;
00534E 000B     	RTS     				;
005350 0009     	NOP     				;
005352 0009     	NOP     				;
005354 0F000600
005358 0F000690
00535C 0F000420
005360 0F0005A0
005364 09000230
005368 00000930
00536C 00004E0C
005370 4F22     	STS.L   	PR,@-R15		;
005372 B005     	BRS     	#000A			;
005374 0009     	NOP     				;
005376 B01B     	BRS     	#0036			;
005378 0009     	NOP     				;
00537A 4F26     	LDS.L   	@R15+,PR		;
00537C 000B     	RTS     				;
00537E 0009     	NOP     				;
005380 D9D8     	MOV.L   	@(#360,PC),R9	;
005382 E000     	MOV     	#00,R0		;
005384 E101     	MOV     	#01,R1		;
005386 E2C9     	MOV     	#C9,R2		;
005388 622C     	EXTU.B   	R2,R2			;
00538A 0914     	MOV.B   	R1,@(R0,R9)		;
00538C 7001     	ADD     	#01,R0		;
00538E 7101     	ADD     	#01,R1		;
005390 3022     	CMP/HS 	R2,R0			;
005392 8BFA     	BF      	#1F4			;
005394 E1FF     	MOV     	#FF,R1		;
005396 0914     	MOV.B   	R1,@(R0,R9)		;
005398 D7D1     	MOV.L   	@(#344,PC),R7	;
00539A E000     	MOV     	#00,R0		;
00539C 8070     	MOV.B   	R0,@(#00,R7)	;
00539E 8073     	MOV.B   	R0,@(#03,R7)	;
0053A0 1701     	MOV.L   	R0,@(#4,R7)		;
0053A2 8174     	MOV.W   	R0,@(#08,R7)	;
0053A4 E0CA     	MOV     	#CA,R0		;
0053A6 8072     	MOV.B   	R0,@(#02,R7)	;
0053A8 70FF     	ADD     	#FF,R0		;
0053AA 8071     	MOV.B   	R0,@(#01,R7)	;
0053AC 000B     	RTS     				;
0053AE 0009     	NOP     				;
0053B0 E000     	MOV     	#00,R0		;
0053B2 D2CF     	MOV.L   	@(#33C,PC),R2	;
0053B4 E318     	MOV     	#18,R3		;
0053B6 1200     	MOV.L   	R0,@(#0,R2)		;
0053B8 1201     	MOV.L   	R0,@(#4,R2)		;
0053BA 1202     	MOV.L   	R0,@(#8,R2)		;
0053BC 1203     	MOV.L   	R0,@(#C,R2)		;
0053BE 7210     	ADD     	#10,R2		;
0053C0 73FF     	ADD     	#FF,R3		;
0053C2 4315     	CMP/PL  	R3			;
0053C4 89F7     	BT      	#1EE			;
0053C6 D8C8     	MOV.L   	@(#320,PC),R8	;
0053C8 E318     	MOV     	#18,R3		;
0053CA E0FF     	MOV     	#FF,R0		;
0053CC 8180     	MOV.W   	R0,@(#00,R8)	;
0053CE 8182     	MOV.W   	R0,@(#04,R8)	;
0053D0 E000     	MOV     	#00,R0		;
0053D2 8181     	MOV.W   	R0,@(#02,R8)	;
0053D4 7806     	ADD     	#06,R8		;
0053D6 73FF     	ADD     	#FF,R3		;
0053D8 4315     	CMP/PL  	R3			;
0053DA 89F6     	BT      	#1EC			;
0053DC D2C3     	MOV.L   	@(#30C,PC),R2	;
0053DE E318     	MOV     	#18,R3		;
0053E0 E0A0     	MOV     	#A0,R0		;
0053E2 E1FF     	MOV     	#FF,R1		;
0053E4 2212     	MOV.L   	R1,@R2		;
0053E6 8022     	MOV.B   	R0,@(#02,R2)	;
0053E8 7001     	ADD     	#01,R0		;
0053EA 7204     	ADD     	#04,R2		;
0053EC 73FF     	ADD     	#FF,R3		;
0053EE 4315     	CMP/PL  	R3			;
0053F0 89F8     	BT      	#1F0			;
0053F2 D2C0     	MOV.L   	@(#300,PC),R2	;
0053F4 E0FF     	MOV     	#FF,R0		;
0053F6 1200     	MOV.L   	R0,@(#0,R2)		;
0053F8 1201     	MOV.L   	R0,@(#4,R2)		;
0053FA 1202     	MOV.L   	R0,@(#8,R2)		;
0053FC 1203     	MOV.L   	R0,@(#C,R2)		;
0053FE 000B     	RTS     				;
005400 0009     	NOP     				;
005402 E500     	MOV     	#00,R5		;
005404 A004     	BRA     	#0008			;
005406 0009     	NOP     				;
005408 E520     	MOV     	#20,R5		;
00540A A001     	BRA     	#0002			;
00540C 0009     	NOP     				;
00540E E560     	MOV     	#60,R5		;
005410 4F22     	STS.L   	PR,@-R15		;
005412 6653     	MOV     	R5,R6			;
005414 7618     	ADD     	#18,R6		;
005416 6153     	MOV     	R5,R1			;
005418 B06A     	BRS     	#00D4			;
00541A 0009     	NOP     				;
00541C 7501     	ADD     	#01,R5		;
00541E 3562     	CMP/HS 	R6,R5			;
005420 8BF9     	BF      	#1F2			;
005422 4F26     	LDS.L   	@R15+,PR		;
005424 000B     	RTS     				;
005426 0009     	NOP     				;
005428 D2B0     	MOV.L   	@(#2C0,PC),R2	;
00542A E0A0     	MOV     	#A0,R0		;
00542C E318     	MOV     	#18,R3		;
00542E 8022     	MOV.B   	R0,@(#02,R2)	;
005430 7204     	ADD     	#04,R2		;
005432 7001     	ADD     	#01,R0		;
005434 73FF     	ADD     	#FF,R3		;
005436 4315     	CMP/PL  	R3			;
005438 89F9     	BT      	#1F2			;
00543A 000B     	RTS     				;
00543C 0009     	NOP     				;
00543E E218     	MOV     	#18,R2		;
005440 611C     	EXTU.B   	R1,R1			;
005442 3122     	CMP/HS 	R2,R1			;
005444 8908     	BT      	#010			;
005446 D2AA     	MOV.L   	@(#2A8,PC),R2	;
005448 4108     	SHLL2   	R1			;
00544A 4108     	SHLL2   	R1			;
00544C 321C     	ADD     	R1,R2			;
00544E E000     	MOV     	#00,R0		;
005450 1200     	MOV.L   	R0,@(#0,R2)		;
005452 1201     	MOV.L   	R0,@(#4,R2)		;
005454 1202     	MOV.L   	R0,@(#8,R2)		;
005456 1203     	MOV.L   	R0,@(#C,R2)		;
005458 000B     	RTS     				;
00545A 0009     	NOP     				;
00545C D2A4     	MOV.L   	@(#290,PC),R2	;
00545E E000     	MOV     	#00,R0		;
005460 E318     	MOV     	#18,R3		;
005462 1200     	MOV.L   	R0,@(#0,R2)		;
005464 1201     	MOV.L   	R0,@(#4,R2)		;
005466 1202     	MOV.L   	R0,@(#8,R2)		;
005468 1203     	MOV.L   	R0,@(#C,R2)		;
00546A 7210     	ADD     	#10,R2		;
00546C 73FF     	ADD     	#FF,R3		;
00546E 4315     	CMP/PL  	R3			;
005470 89F7     	BT      	#1EE			;
005472 000B     	RTS     				;
005474 0009     	NOP     				;
005476 D89C     	MOV.L   	@(#270,PC),R8	;
005478 D99A     	MOV.L   	@(#268,PC),R9	;
00547A D799     	MOV.L   	@(#264,PC),R7	;
00547C 611C     	EXTU.B   	R1,R1			;
00547E E018     	MOV     	#18,R0		;
005480 3102     	CMP/HS 	R0,R1			;
005482 8920     	BT      	#040			;
005484 6013     	MOV     	R1,R0			;
005486 4000     	SHLL    	R0			;
005488 6203     	MOV     	R0,R2			;
00548A 4000     	SHLL    	R0			;
00548C 302C     	ADD     	R2,R0			;
00548E 380C     	ADD     	R0,R8			;
005490 8482     	MOV.B   	@(#02,R8),R0	;
005492 640C     	EXTU.B   	R0,R4			;
005494 8800     	CMP/EQ  	#00,R0		;
005496 8916     	BT      	#02C			;
005498 8472     	MOV.B   	@(#02,R7),R0	;
00549A 650C     	EXTU.B   	R0,R5			;
00549C 8800     	CMP/EQ  	#00,R0		;
00549E 8914     	BT      	#028			;
0054A0 8480     	MOV.B   	@(#00,R8),R0	;
0054A2 660C     	EXTU.B   	R0,R6			;
0054A4 8471     	MOV.B   	@(#01,R7),R0	;
0054A6 600C     	EXTU.B   	R0,R0			;
0054A8 0964     	MOV.B   	R6,@(R0,R9)		;
0054AA 8481     	MOV.B   	@(#01,R8),R0	;
0054AC 8071     	MOV.B   	R0,@(#01,R7)	;
0054AE 6053     	MOV     	R5,R0			;
0054B0 304C     	ADD     	R4,R0			;
0054B2 8072     	MOV.B   	R0,@(#02,R7)	;
0054B4 E000     	MOV     	#00,R0		;
0054B6 8082     	MOV.B   	R0,@(#02,R8)	;
0054B8 8574     	MOV.W   	@(#08,R7),R0	;
0054BA 644C     	EXTU.B   	R4,R4			;
0054BC 3048     	SUB     	R4,R0			;
0054BE 8174     	MOV.W   	R0,@(#08,R7)	;
0054C0 E0FF     	MOV     	#FF,R0		;
0054C2 8180     	MOV.W   	R0,@(#00,R8)	;
0054C4 8182     	MOV.W   	R0,@(#04,R8)	;
0054C6 000B     	RTS     				;
0054C8 0009     	NOP     				;
0054CA 8480     	MOV.B   	@(#00,R8),R0	;
0054CC 8070     	MOV.B   	R0,@(#00,R7)	;
0054CE 4F22     	STS.L   	PR,@-R15		;
0054D0 BE93     	BRS     	#1D26			;
0054D2 0009     	NOP     				;
0054D4 4F26     	LDS.L   	@R15+,PR		;
0054D6 AFE8     	BRA     	#1FD0			;
0054D8 0009     	NOP     				;
0054DA 4F22     	STS.L   	PR,@-R15		;
0054DC E100     	MOV     	#00,R1		;
0054DE E318     	MOV     	#18,R3		;
0054E0 BFC9     	BRS     	#1F92			;
0054E2 0009     	NOP     				;
0054E4 7101     	ADD     	#01,R1		;
0054E6 3130     	CMP/EQ 	R3,R1			;
0054E8 8BFA     	BF      	#1F4			;
0054EA 4F26     	LDS.L   	@R15+,PR		;
0054EC 000B     	RTS     				;
0054EE 0009     	NOP     				;

L0054F0:							;(u8 arg)
0054F0 4F22     	STS.L   	PR,@-R15		;
0054F2 601E     	EXTS.B   	R1,R0			;
0054F4 88FF     	CMP/EQ  	#FF,R0		;
0054F6 8908     	BT      	L00550A		;if (arg == 0xFF) return;
0054F8 6413     	MOV     	R1,R4			;u8 temp;
0054FA B058     	BRS     	L0055AE		;L0055AE(arg,&temp);
0054FC 0009     	NOP     				;
0054FE E2FF     	MOV     	#FF,R2		;
005500 B019     	BRS     	L005536		;L005536(temp,0xFF);
005502 0009     	NOP     				;
005504 6143     	MOV     	R4,R1			;
005506 B016     	BRS     	L005536		;L005536(arg,0xFF);
005508 0009     	NOP     				;
L00550A:
00550A 4F26     	LDS.L   	@R15+,PR		;
00550C 000B     	RTS     				;


00550E 0009     	NOP     				;
005510 4F22     	STS.L   	PR,@-R15		;
005512 6D13     	MOV     	R1,R13		;
005514 6C23     	MOV     	R2,R12		;
005516 BFEB     	BRS     	#1FD6			;
005518 0009     	NOP     				;
00551A 61C3     	MOV     	R12,R1		;
00551C BFE8     	BRS     	#1FD0			;
00551E 0009     	NOP     				;
005520 62D3     	MOV     	R13,R2		;
005522 61C3     	MOV     	R12,R1		;
005524 B007     	BRS     	#000E			;
005526 0009     	NOP     				;
005528 61D3     	MOV     	R13,R1		;
00552A 62C3     	MOV     	R12,R2		;
00552C B003     	BRS     	#0006			;
00552E 0009     	NOP     				;
005530 4F26     	LDS.L   	@R15+,PR		;
005532 000B     	RTS     				;
005534 0009     	NOP     				;

L005536:							;(u8 arg1,u8 arg2)	//arg1-R1,arg2-R2
005536 602E     	EXTS.B   	R2,R0			;
005538 88FF     	CMP/EQ  	#FF,R0		;
00553A 8915     	BT      	L005568		;if (arg2 == 0xFF) goto L005568;
00553C C9E0     	AND     	#E0,R0		;
00553E 600E     	EXTS.B   	R0,R0			;
005540 8880     	CMP/EQ  	#80,R0		;
005542 8906     	BT      	L005552		;if (arg2 & 0xE0 == 0x80) goto L005568;
005544 88A0     	CMP/EQ  	#A0,R0		;
005546 890A     	BT      	L00555E		;
005548 C880     	TST     	#80,R0		;
00554A 8908     	BT      	L00555E		;if (arg2 & 0xE0 == 0xA0 || arg2 & 0x80 == 0x00) goto L00555E;
L00554C:
00554C E2FF     	MOV     	#FF,R2		;arg2 = 0xFF;
L00554E:
00554E A00B     	BRA     	L005568		;goto L005568;
005550 0009     	NOP     				;
L005552:
005552 602C     	EXTU.B   	R2,R0			;
005554 C91F     	AND     	#1F,R0		;
005556 C810     	TST     	#10,R0		;
005558 8BF8     	BF      	L00554E		;
00555A A005     	BRA     	L005568		;
00555C 0009     	NOP     				;
L00555E:
00555E 602C     	EXTU.B   	R2,R0			;
005560 C91F     	AND     	#1F,R0		;
005562 E318     	MOV     	#18,R3		;
005564 3032     	CMP/HS 	R3,R0			;
005566 89F1     	BT      	L00554C		;if (arg2 & 0x1F >= 0x18) arg2 = 0xFF;
L005568:
005568 601E     	EXTS.B   	R1,R0			;
00556A 88FF     	CMP/EQ  	#FF,R0		;
00556C 8914     	BT      	L005598		;if (arg1 == 0xFF) return;
00556E C9E0     	AND     	#E0,R0		;
005570 600E     	EXTS.B   	R0,R0			;
005572 8880     	CMP/EQ  	#80,R0		;
005574 8912     	BT      	L00559C		;if (arg1 & 0xE0 != 0x80) {
005576 C880     	TST     	#80,R0		;
005578 8B0E     	BF      	L005598		;
00557A 6013     	MOV     	R1,R0			;
00557C C91F     	AND     	#1F,R0		;
00557E E318     	MOV     	#18,R3		;
005580 3032     	CMP/HS 	R3,R0			;
005582 8909     	BT      	L005598		;  if (arg1 & 0x80 == 0x00 && arg1 & 0x1F < 0x18) {
005584 D359     	MOV.L   	@(#164,PC),R3	;
005586 4008     	SHLL2   	R0			;
005588 330C     	ADD     	R0,R3			;
00558A 6013     	MOV     	R1,R0			;
00558C C9E0     	AND     	#E0,R0		;
00558E 4009     	SHLR2   	R0			;
005590 4009     	SHLR2   	R0			;
005592 4001     	SHLR    	R0			;
005594 330C     	ADD     	R0,R3			;    u8* ptr = 0x0F0005A0 + ((arg1 & 0x1F) * 4) + (arg1>>5);
005596 2320     	MOV.B   	R2,@R3		;    *ptr = arg2;
L005598:							;
005598 000B     	RTS     				;    return;
00559A 0009     	NOP     				;  }
L00559C:							;} else {
00559C D355     	MOV.L   	@(#154,PC),R3	;
00559E 6013     	MOV     	R1,R0			;
0055A0 C91F     	AND     	#1F,R0		;
0055A2 C810     	TST     	#10,R0		;  if (arg1 & 0x1F < 0x10) {
0055A4 8BF8     	BF      	L005598		;    u8* ptr = 0x0F000690 + (arg & 0x0F);
0055A6 330C     	ADD     	R0,R3			;    *ptr = arg2;
0055A8 2320     	MOV.B   	R2,@R3		;    return;
0055AA 000B     	RTS     				;  }
0055AC 0009     	NOP     				;}

L0055AE:							;int (u8 arg,u8 *ret)	//arg1-R1,ret-R1
0055AE 601E     	EXTS.B   	R1,R0			;*ret = 0xFF;
0055B0 88FF     	CMP/EQ  	#FF,R0		;
0055B2 8921     	BT      	L0055F8		;if (arg == 0xFF) return -1;
0055B4 C9E0     	AND     	#E0,R0		;
0055B6 600E     	EXTS.B   	R0,R0			;
0055B8 8880     	CMP/EQ  	#80,R0		;
0055BA 8913     	BT      	L0055E4		;if (arg & 0xE0 != 0x80) {
0055BC C880     	TST     	#80,R0		;
0055BE 8B1B     	BF      	L0055F8		;  if (arg & 0x80 != 0) return -1;
0055C0 6013     	MOV     	R1,R0			;
0055C2 C91F     	AND     	#1F,R0		;
0055C4 E218     	MOV     	#18,R2		;
0055C6 3022     	CMP/HS 	R2,R0			;
0055C8 8916     	BT      	L0055F8		;  if (arg & 0x1F >= 0x18) return -1;
0055CA D248     	MOV.L   	@(#120,PC),R2	;
0055CC 4008     	SHLL2   	R0			;
0055CE 320C     	ADD     	R0,R2			;
0055D0 6013     	MOV     	R1,R0			;
0055D2 C9E0     	AND     	#E0,R0		;
0055D4 4009     	SHLR2   	R0			;
0055D6 4009     	SHLR2   	R0			;
0055D8 4001     	SHLR    	R0			;
0055DA 320C     	ADD     	R0,R2			;  u8* ptr = 0x0F0005A0 + ((arg & 0x1F) * 4) + (arg>>5);
0055DC 6020     	MOV.B   	@R2,R0		;
0055DE 610C     	EXTU.B   	R0,R1			;  *ret = *ptr;
0055E0 000B     	RTS     				;  return *ptr;
0055E2 0009     	NOP     				;} else {
L0055E4:
0055E4 D243     	MOV.L   	@(#10C,PC),R2	;
0055E6 6013     	MOV     	R1,R0			;
0055E8 C91F     	AND     	#1F,R0		;
0055EA C810     	TST     	#10,R0		;
0055EC 8B04     	BF      	L0055F8		;  if (arg & 0x1F >= 0x10) return -1;
0055EE 320C     	ADD     	R0,R2			;  u8* ptr = 0x0F000690 + (arg & 0x0F);
0055F0 6020     	MOV.B   	@R2,R0		;
0055F2 610C     	EXTU.B   	R0,R1			;  *ret = *ptr;
0055F4 000B     	RTS     				;  return *ptr;
0055F6 0009     	NOP     				;}
L0055F8:
0055F8 E0FF     	MOV     	#FF,R0		;
0055FA 610C     	EXTU.B   	R0,R1			;
0055FC 000B     	RTS     				;
0055FE 0009     	NOP     				;

L005600:							;
005600 D938     	MOV.L   	@(#0E0,PC),R9	;
005602 8484     	MOV.B   	@(#04,R8),R0	;
005604 6D03     	MOV     	R0,R13		;
005606 6CCC     	EXTU.B   	R12,R12		;
005608 60C3     	MOV     	R12,R0		;
00560A 8084     	MOV.B   	R0,@(#04,R8)	;
00560C 60D3     	MOV     	R13,R0		;
00560E 88FF     	CMP/EQ  	#FF,R0		;
005610 8907     	BT      	#00E			;
005612 600C     	EXTU.B   	R0,R0			;
005614 3C00     	CMP/EQ 	R0,R12		;
005616 8918     	BT      	#030			;
005618 7001     	ADD     	#01,R0		;
00561A 3C00     	CMP/EQ 	R0,R12		;
00561C 890E     	BT      	#01C			;
00561E 3C06     	CMP/HI 	R0,R12		;
005620 8902     	BT      	#004			;
005622 8480     	MOV.B   	@(#00,R8),R0	;
005624 A003     	BRA     	#0006			;
005626 0009     	NOP     				;
005628 70FF     	ADD     	#FF,R0		;
00562A 3C08     	SUB     	R0,R12		;
00562C 8485     	MOV.B   	@(#05,R8),R0	;
00562E 600C     	EXTU.B   	R0,R0			;
005630 4F22     	STS.L   	PR,@-R15		;
005632 B00E     	BRS     	#001C			;
005634 0009     	NOP     				;
005636 4F26     	LDS.L   	@R15+,PR		;
005638 A003     	BRA     	#0006			;
00563A 0009     	NOP     				;
00563C 8485     	MOV.B   	@(#05,R8),R0	;
00563E 600C     	EXTU.B   	R0,R0			;
005640 009C     	MOV.B   	@(R0,R9),R0		;
005642 600C     	EXTU.B   	R0,R0			;
005644 8085     	MOV.B   	R0,@(#05,R8)	;
005646 000B     	RTS     				;
005648 0009     	NOP     				;
00564A 8485     	MOV.B   	@(#05,R8),R0	;
00564C 600C     	EXTU.B   	R0,R0			;
00564E 000B     	RTS     				;
005650 0009     	NOP     				;
005652 D924     	MOV.L   	@(#090,PC),R9	;
005654 600C     	EXTU.B   	R0,R0			;
005656 2CC8     	TST     	R12,R12		;
005658 893E     	BT      	#07C			;
00565A ED19     	MOV     	#19,R13		;
00565C 3CD6     	CMP/HI 	R13,R12		;
00565E 8905     	BT      	#00A			;
005660 DD1E     	MOV.L   	@(#078,PC),R13	;
005662 4C08     	SHLL2   	R12			;
005664 3DC8     	SUB     	R12,R13		;
005666 EC00     	MOV     	#00,R12		;
005668 4D2B     	JMP     	@R13			;
00566A 0009     	NOP     				;
00566C 7CE7     	ADD     	#E7,R12		;
00566E 0009     	NOP     				;
005670 009C     	MOV.B   	@(R0,R9),R0		;
005672 600C     	EXTU.B   	R0,R0			;
005674 009C     	MOV.B   	@(R0,R9),R0		;
005676 600C     	EXTU.B   	R0,R0			;
005678 009C     	MOV.B   	@(R0,R9),R0		;
00567A 600C     	EXTU.B   	R0,R0			;
00567C 009C     	MOV.B   	@(R0,R9),R0		;
00567E 600C     	EXTU.B   	R0,R0			;
005680 009C     	MOV.B   	@(R0,R9),R0		;
005682 600C     	EXTU.B   	R0,R0			;
005684 009C     	MOV.B   	@(R0,R9),R0		;
005686 600C     	EXTU.B   	R0,R0			;
005688 009C     	MOV.B   	@(R0,R9),R0		;
00568A 600C     	EXTU.B   	R0,R0			;
00568C 009C     	MOV.B   	@(R0,R9),R0		;
00568E 600C     	EXTU.B   	R0,R0			;
005690 009C     	MOV.B   	@(R0,R9),R0		;
005692 600C     	EXTU.B   	R0,R0			;
005694 009C     	MOV.B   	@(R0,R9),R0		;
005696 600C     	EXTU.B   	R0,R0			;
005698 009C     	MOV.B   	@(R0,R9),R0		;
00569A 600C     	EXTU.B   	R0,R0			;
00569C 009C     	MOV.B   	@(R0,R9),R0		;
00569E 600C     	EXTU.B   	R0,R0			;
0056A0 009C     	MOV.B   	@(R0,R9),R0		;
0056A2 600C     	EXTU.B   	R0,R0			;
0056A4 009C     	MOV.B   	@(R0,R9),R0		;
0056A6 600C     	EXTU.B   	R0,R0			;
0056A8 009C     	MOV.B   	@(R0,R9),R0		;
0056AA 600C     	EXTU.B   	R0,R0			;
0056AC 009C     	MOV.B   	@(R0,R9),R0		;
0056AE 600C     	EXTU.B   	R0,R0			;
0056B0 009C     	MOV.B   	@(R0,R9),R0		;
0056B2 600C     	EXTU.B   	R0,R0			;
0056B4 009C     	MOV.B   	@(R0,R9),R0		;
0056B6 600C     	EXTU.B   	R0,R0			;
0056B8 009C     	MOV.B   	@(R0,R9),R0		;
0056BA 600C     	EXTU.B   	R0,R0			;
0056BC 009C     	MOV.B   	@(R0,R9),R0		;
0056BE 600C     	EXTU.B   	R0,R0			;
0056C0 009C     	MOV.B   	@(R0,R9),R0		;
0056C2 600C     	EXTU.B   	R0,R0			;
0056C4 009C     	MOV.B   	@(R0,R9),R0		;
0056C6 600C     	EXTU.B   	R0,R0			;
0056C8 009C     	MOV.B   	@(R0,R9),R0		;
0056CA 600C     	EXTU.B   	R0,R0			;
0056CC 009C     	MOV.B   	@(R0,R9),R0		;
0056CE 600C     	EXTU.B   	R0,R0			;
0056D0 009C     	MOV.B   	@(R0,R9),R0		;
0056D2 600C     	EXTU.B   	R0,R0			;
0056D4 4C15     	CMP/PL  	R12			;
0056D6 89C0     	BT      	#180			;
0056D8 000B     	RTS     				;
0056DA 0009     	NOP     				;
0056DC 0000
0056DE 56D4
0056E0 0F00
0056E2 0348
0056E4 0F00
0056E6 0354
0056E8 0F00
0056EA 0600
0056EC 0F0005A0
0056F0 0F00
0056F2 0420
0056F4 0F000690
0056F8 D922     	MOV.L   	@(#088,PC),R9	;
0056FA 490B     	JSR     	@R9			;
0056FC 0009     	NOP     				;
0056FE B047     	BRS     	#008E			;
005700 0009     	NOP     				;
005702 C323     	TRAPA   	#23			;
005704 D020     	MOV.L   	@(#080,PC),R0	;
005706 D1FB     	MOV.L   	@(#3EC,PC),R1	;
005708 6206     	MOV.L   	@R0+,R2		;
00570A 2122     	MOV.L   	R2,@R1		;
00570C 7104     	ADD     	#04,R1		;
00570E 6202     	MOV.L   	@R0,R2		;
005710 2122     	MOV.L   	R2,@R1		;
005712 D01E     	MOV.L   	@(#078,PC),R0	;
005714 400B     	JSR     	@R0			;
005716 0009     	NOP     				;
005718 60B3     	MOV     	R11,R0		;
00571A 6009     	SWAP.W   	R0,R0			;
00571C 600C     	EXTU.B   	R0,R0			;
00571E E281     	MOV     	#81,R2		;
005720 622C     	EXTU.B   	R2,R2			;
005722 3020     	CMP/EQ 	R2,R0			;
005724 8903     	BT      	#006			;
005726 8807     	CMP/EQ  	#07,R0		;
005728 8920     	BT      	#040			;
00572A AFEA     	BRA     	#1FD4			;
00572C 0009     	NOP     				;
00572E 60BD     	EXTU.W   	R11,R0		;
005730 8840     	CMP/EQ  	#40,R0		;
005732 890D     	BT      	#01A			;
005734 8842     	CMP/EQ  	#42,R0		;
005736 890D     	BT      	#01A			;
005738 8844     	CMP/EQ  	#44,R0		;
00573A 890D     	BT      	#01A			;
00573C 8846     	CMP/EQ  	#46,R0		;
00573E 890D     	BT      	#01A			;
005740 8848     	CMP/EQ  	#48,R0		;
005742 890D     	BT      	#01A			;
005744 8852     	CMP/EQ  	#52,R0		;
005746 890D     	BT      	#01A			;
005748 8855     	CMP/EQ  	#55,R0		;
00574A 890D     	BT      	#01A			;
00574C AFD9     	BRA     	#1FB2			;
00574E 0009     	NOP     				;
005750 A02C     	BRA     	#0058			;
005752 0009     	NOP     				;
005754 A044     	BRA     	#0088			;
005756 0009     	NOP     				;
005758 A059     	BRA     	#00B2			;
00575A 0009     	NOP     				;
00575C A074     	BRA     	#00E8			;
00575E 0009     	NOP     				;
005760 A0A9     	BRA     	#0152			;
005762 0009     	NOP     				;
005764 A0DB     	BRA     	#01B6			;
005766 0009     	NOP     				;
005768 A156     	BRA     	#02AC			;
00576A 0009     	NOP     				;
00576C 60BD     	EXTU.W   	R11,R0		;
00576E 8840     	CMP/EQ  	#40,R0		;
005770 89EE     	BT      	#1DC			;
005772 8842     	CMP/EQ  	#42,R0		;
005774 89EE     	BT      	#1DC			;
005776 8844     	CMP/EQ  	#44,R0		;
005778 89EE     	BT      	#1DC			;
00577A 8846     	CMP/EQ  	#46,R0		;
00577C 89EE     	BT      	#1DC			;
00577E AFC0     	BRA     	#1F80			;
005780 0009     	NOP     				;
005782 0009     	NOP     				;
005784 0000
005786 5370
005788 0F00
00578A 0738
00578C 0000
00578E 7794     	ADD     	#94,R7		;
005790 200A     	XOR     	R0,R0			;
005792 D1E3     	MOV.L   	@(#38C,PC),R1	;
005794 2102     	MOV.L   	R0,@R1		;
005796 D1D7     	MOV.L   	@(#35C,PC),R1	;
005798 2102     	MOV.L   	R0,@R1		;
00579A 1101     	MOV.L   	R0,@(#4,R1)		;
00579C 1102     	MOV.L   	R0,@(#8,R1)		;
00579E 1103     	MOV.L   	R0,@(#C,R1)		;
0057A0 D1E4     	MOV.L   	@(#390,PC),R1	;
0057A2 2102     	MOV.L   	R0,@R1		;
0057A4 1101     	MOV.L   	R0,@(#4,R1)		;
0057A6 8114     	MOV.W   	R0,@(#08,R1)	;
0057A8 000B     	RTS     				;
0057AA 0009     	NOP     				;
0057AC DBDA     	MOV.L   	@(#368,PC),R11	;
0057AE C32A     	TRAPA   	#2A			;
0057B0 D1D0     	MOV.L   	@(#340,PC),R1	;
0057B2 D224     	MOV.L   	@(#090,PC),R2	;
0057B4 8414     	MOV.B   	@(#04,R1),R0	;
0057B6 600C     	EXTU.B   	R0,R0			;
0057B8 4008     	SHLL2   	R0			;
0057BA 4008     	SHLL2   	R0			;
0057BC 320C     	ADD     	R0,R2			;
0057BE 6012     	MOV.L   	@R1,R0		;
0057C0 4018     	SHLL8   	R0			;
0057C2 4019     	SHLR8   	R0			;
0057C4 1202     	MOV.L   	R0,@(#8,R2)		;
0057C6 5011     	MOV.L   	@(#04,R1),R0	;
0057C8 4018     	SHLL8   	R0			;
0057CA 4019     	SHLR8   	R0			;
0057CC 1203     	MOV.L   	R0,@(#C,R2)		;
0057CE DBD2     	MOV.L   	@(#348,PC),R11	;
0057D0 C327     	TRAPA   	#27			;
0057D2 D1D4     	MOV.L   	@(#350,PC),R1	;
0057D4 D2D4     	MOV.L   	@(#350,PC),R2	;
0057D6 AF94     	BRA     	#1F28			;
0057D8 2121     	MOV.W   	R2,@R1		;
0057DA 0009     	NOP     				;
0057DC 00FF     	MAC.L   	@R15+,@R0+		;
0057DE FFFF     	
0057E0 DBCD     	MOV.L   	@(#334,PC),R11	;
0057E2 C32A     	TRAPA   	#2A			;
0057E4 D1C3     	MOV.L   	@(#30C,PC),R1	;
0057E6 D217     	MOV.L   	@(#05C,PC),R2	;
0057E8 8414     	MOV.B   	@(#04,R1),R0	;
0057EA 600C     	EXTU.B   	R0,R0			;
0057EC 4008     	SHLL2   	R0			;
0057EE 4008     	SHLL2   	R0			;
0057F0 320C     	ADD     	R0,R2			;
0057F2 8415     	MOV.B   	@(#05,R1),R0	;
0057F4 8022     	MOV.B   	R0,@(#02,R2)	;
0057F6 8411     	MOV.B   	@(#01,R1),R0	;
0057F8 8023     	MOV.B   	R0,@(#03,R2)	;
0057FA 8511     	MOV.W   	@(#02,R1),R0	;
0057FC 8122     	MOV.W   	R0,@(#04,R2)	;
0057FE 8513     	MOV.W   	@(#06,R1),R0	;
005800 8123     	MOV.W   	R0,@(#06,R2)	;
005802 DBC5     	MOV.L   	@(#314,PC),R11	;
005804 C327     	TRAPA   	#27			;
005806 D1C7     	MOV.L   	@(#31C,PC),R1	;
005808 D2C7     	MOV.L   	@(#31C,PC),R2	;
00580A AF7A     	BRA     	#1EF4			;
00580C 2121     	MOV.W   	R2,@R1		;
00580E DBC2     	MOV.L   	@(#308,PC),R11	;
005810 C32A     	TRAPA   	#2A			;
005812 D1B8     	MOV.L   	@(#2E0,PC),R1	;
005814 D20B     	MOV.L   	@(#02C,PC),R2	;
005816 8414     	MOV.B   	@(#04,R1),R0	;
005818 600C     	EXTU.B   	R0,R0			;
00581A 4008     	SHLL2   	R0			;
00581C 4008     	SHLL2   	R0			;
00581E 320C     	ADD     	R0,R2			;
005820 8411     	MOV.B   	@(#01,R1),R0	;
005822 600C     	EXTU.B   	R0,R0			;
005824 C880     	TST     	#80,R0		;
005826 8905     	BT      	#00A			;
005828 200A     	XOR     	R0,R0			;
00582A 1202     	MOV.L   	R0,@(#8,R2)		;
00582C 1203     	MOV.L   	R0,@(#C,R2)		;
00582E 8121     	MOV.W   	R0,@(#02,R2)	;
005830 1201     	MOV.L   	R0,@(#4,R2)		;
005832 8021     	MOV.B   	R0,@(#01,R2)	;
005834 8020     	MOV.B   	R0,@(#00,R2)	;
005836 DBB8     	MOV.L   	@(#2E0,PC),R11	;
005838 C327     	TRAPA   	#27			;
00583A D1BA     	MOV.L   	@(#2E8,PC),R1	;
00583C D2BA     	MOV.L   	@(#2E8,PC),R2	;
00583E AF60     	BRA     	#1EC0			;
005840 2121     	MOV.W   	R2,@R1		;
005842 0009     	NOP     				;
005844 0F00
005846 0420
005848 DBB3     	MOV.L   	@(#2CC,PC),R11	;
00584A C32A     	TRAPA   	#2A			;
00584C D6A9     	MOV.L   	@(#2A4,PC),R6	;
00584E 8464     	MOV.B   	@(#04,R6),R0	;
005850 650C     	EXTU.B   	R0,R5			;
005852 8461     	MOV.B   	@(#01,R6),R0	;
005854 C801     	TST     	#01,R0		;
005856 8912     	BT      	#024			;
005858 8462     	MOV.B   	@(#02,R6),R0	;
00585A 600C     	EXTU.B   	R0,R0			;
00585C E3FF     	MOV     	#FF,R3		;
00585E 633C     	EXTU.B   	R3,R3			;
005860 3030     	CMP/EQ 	R3,R0			;
005862 6303     	MOV     	R0,R3			;
005864 E040     	MOV     	#40,R0		;
005866 610C     	EXTU.B   	R0,R1			;
005868 215B     	OR      	R5,R1			;
00586A 8906     	BT      	#00C			;
00586C E0A0     	MOV     	#A0,R0		;
00586E 620C     	EXTU.B   	R0,R2			;
005870 223B     	OR      	R3,R2			;
005872 BE4D     	BRS     	#1C9A			;
005874 0009     	NOP     				;
005876 A002     	BRA     	#0004			;
005878 0009     	NOP     				;
00587A BE39     	BRS     	#1C72			;
00587C 0009     	NOP     				;
00587E 8461     	MOV.B   	@(#01,R6),R0	;
005880 C802     	TST     	#02,R0		;
005882 8912     	BT      	#024			;
005884 8463     	MOV.B   	@(#03,R6),R0	;
005886 600C     	EXTU.B   	R0,R0			;
005888 E3FF     	MOV     	#FF,R3		;
00588A 633C     	EXTU.B   	R3,R3			;
00588C 3030     	CMP/EQ 	R3,R0			;
00588E 6303     	MOV     	R0,R3			;
005890 E060     	MOV     	#60,R0		;
005892 610C     	EXTU.B   	R0,R1			;
005894 215B     	OR      	R5,R1			;
005896 8906     	BT      	#00C			;
005898 E000     	MOV     	#00,R0		;
00589A 620C     	EXTU.B   	R0,R2			;
00589C 223B     	OR      	R3,R2			;
00589E BE37     	BRS     	#1C6E			;
0058A0 0009     	NOP     				;
0058A2 A002     	BRA     	#0004			;
0058A4 0009     	NOP     				;
0058A6 BE23     	BRS     	#1C46			;
0058A8 0009     	NOP     				;
0058AA DB9B     	MOV.L   	@(#26C,PC),R11	;
0058AC C327     	TRAPA   	#27			;
0058AE D19D     	MOV.L   	@(#274,PC),R1	;
0058B0 D29D     	MOV.L   	@(#274,PC),R2	;
0058B2 AF26     	BRA     	#1E4C			;
0058B4 2121     	MOV.W   	R2,@R1		;
0058B6 DB98     	MOV.L   	@(#260,PC),R11	;
0058B8 C32A     	TRAPA   	#2A			;
0058BA D18E     	MOV.L   	@(#238,PC),R1	;
0058BC 8411     	MOV.B   	@(#01,R1),R0	;
0058BE 600C     	EXTU.B   	R0,R0			;
0058C0 C8FF     	TST     	#FF,R0		;
0058C2 8923     	BT      	#046			;
0058C4 C804     	TST     	#04,R0		;
0058C6 8903     	BT      	#006			;
0058C8 BE07     	BRS     	#1C0E			;
0058CA 0009     	NOP     				;
0058CC D189     	MOV.L   	@(#224,PC),R1	;
0058CE 8411     	MOV.B   	@(#01,R1),R0	;
0058D0 C808     	TST     	#08,R0		;
0058D2 8903     	BT      	#006			;
0058D4 BD98     	BRS     	#1B30			;
0058D6 0009     	NOP     				;
0058D8 D186     	MOV.L   	@(#218,PC),R1	;
0058DA 8411     	MOV.B   	@(#01,R1),R0	;
0058DC C810     	TST     	#10,R0		;
0058DE 8903     	BT      	#006			;
0058E0 BDBC     	BRS     	#1B78			;
0058E2 0009     	NOP     				;
0058E4 D183     	MOV.L   	@(#20C,PC),R1	;
0058E6 8411     	MOV.B   	@(#01,R1),R0	;
0058E8 C820     	TST     	#20,R0		;
0058EA 8903     	BT      	#006			;
0058EC BD89     	BRS     	#1B12			;
0058EE 0009     	NOP     				;
0058F0 D180     	MOV.L   	@(#200,PC),R1	;
0058F2 8411     	MOV.B   	@(#01,R1),R0	;
0058F4 C840     	TST     	#40,R0		;
0058F6 8903     	BT      	#006			;
0058F8 BD96     	BRS     	#1B2C			;
0058FA 0009     	NOP     				;
0058FC D17D     	MOV.L   	@(#1F4,PC),R1	;
0058FE 8411     	MOV.B   	@(#01,R1),R0	;
005900 C880     	TST     	#80,R0		;
005902 8906     	BT      	#00C			;
005904 BD83     	BRS     	#1B06			;
005906 0009     	NOP     				;
005908 A003     	BRA     	#0006			;
00590A 0009     	NOP     				;
00590C 8414     	MOV.B   	@(#04,R1),R0	;
00590E BDB2     	BRS     	#1B64			;
005910 610C     	EXTU.B   	R0,R1			;
005912 DB81     	MOV.L   	@(#204,PC),R11	;
005914 C327     	TRAPA   	#27			;
005916 D183     	MOV.L   	@(#20C,PC),R1	;
005918 D283     	MOV.L   	@(#20C,PC),R2	;
00591A AEF2     	BRA     	#1DE4			;
00591C 2121     	MOV.W   	R2,@R1		;
00591E D375     	MOV.L   	@(#1D4,PC),R3	;
005920 8533     	MOV.W   	@(#06,R3),R0	;
005922 600D     	EXTU.W   	R0,R0			;
005924 8800     	CMP/EQ  	#00,R0		;
005926 8969     	BT      	#0D2			;
005928 D173     	MOV.L   	@(#1CC,PC),R1	;
00592A 6010     	MOV.B   	@R1,R0		;
00592C 600C     	EXTU.B   	R0,R0			;
00592E 8800     	CMP/EQ  	#00,R0		;
005930 8B4E     	BF      	#09C			;
005932 DB79     	MOV.L   	@(#1E4,PC),R11	;
005934 C32A     	TRAPA   	#2A			;
005936 D36F     	MOV.L   	@(#1BC,PC),R3	;
005938 8434     	MOV.B   	@(#04,R3),R0	;
00593A 610C     	EXTU.B   	R0,R1			;
00593C 2F16     	MOV.L   	R1,@-R15		;
00593E CB20     	OR      	#20,R0		;
005940 610C     	EXTU.B   	R0,R1			;
005942 8531     	MOV.W   	@(#02,R3),R0	;
005944 620D     	EXTU.W   	R0,R2			;
005946 2F26     	MOV.L   	R2,@-R15		;
005948 BDD2     	BRS     	#1BA4			;
00594A 0009     	NOP     				;
00594C 62F6     	MOV.L   	@R15+,R2		;
00594E 61F6     	MOV.L   	@R15+,R1		;
005950 BB8C     	BRS     	#1718			;
005952 0009     	NOP     				;
005954 E0FF     	MOV     	#FF,R0		;
005956 600C     	EXTU.B   	R0,R0			;
005958 3100     	CMP/EQ 	R0,R1			;
00595A 894F     	BT      	#09E			;
00595C D265     	MOV.L   	@(#194,PC),R2	;
00595E 8523     	MOV.W   	@(#06,R2),R0	;
005960 630D     	EXTU.W   	R0,R3			;
005962 D466     	MOV.L   	@(#198,PC),R4	;
005964 214E     	MULU.W  	R4,R1			;
005966 021A     	STS     	MACL, R2		;
005968 DA65     	MOV.L   	@(#194,PC),R10	;
00596A 32AC     	ADD     	R10,R2		;
00596C D86B     	MOV.L   	@(#1AC,PC),R8	;
00596E 255A     	XOR     	R5,R5			;
005970 D664     	MOV.L   	@(#190,PC),R6	;
005972 D765     	MOV.L   	@(#194,PC),R7	;
005974 842F     	MOV.B   	@(#0F,R2),R0	;
005976 600C     	EXTU.B   	R0,R0			;
005978 8800     	CMP/EQ  	#00,R0		;
00597A 8B02     	BF      	#004			;
00597C 356C     	ADD     	R6,R5			;
00597E A013     	BRA     	#0026			;
005980 0009     	NOP     				;
005982 8801     	CMP/EQ  	#01,R0		;
005984 8B02     	BF      	#004			;
005986 356C     	ADD     	R6,R5			;
005988 A00E     	BRA     	#001C			;
00598A 0009     	NOP     				;
00598C 8802     	CMP/EQ  	#02,R0		;
00598E 8902     	BT      	#004			;
005990 356C     	ADD     	R6,R5			;
005992 A009     	BRA     	#0012			;
005994 0009     	NOP     				;
005996 5024     	MOV.L   	@(#10,R2),R0	;
005998 6008     	SWAP.B   	R0,R0			;
00599A 600C     	EXTU.B   	R0,R0			;
00599C C820     	TST     	#20,R0		;
00599E 8902     	BT      	#004			;
0059A0 357C     	ADD     	R7,R5			;
0059A2 A001     	BRA     	#0002			;
0059A4 0009     	NOP     				;
0059A6 356C     	ADD     	R6,R5			;
0059A8 73FF     	ADD     	#FF,R3		;
0059AA 6033     	MOV     	R3,R0			;
0059AC 8800     	CMP/EQ  	#00,R0		;
0059AE 8B03     	BF      	#006			;
0059B0 DB59     	MOV.L   	@(#164,PC),R11	;
0059B2 C327     	TRAPA   	#27			;
0059B4 A02A     	BRA     	#0054			;
0059B6 0009     	NOP     				;
0059B8 E0FF     	MOV     	#FF,R0		;
0059BA 600C     	EXTU.B   	R0,R0			;
0059BC 3100     	CMP/EQ 	R0,R1			;
0059BE 8916     	BT      	#02C			;
0059C0 6083     	MOV     	R8,R0			;
0059C2 091C     	MOV.B   	@(R0,R1),R9		;
0059C4 619C     	EXTU.B   	R9,R1			;
0059C6 214E     	MULU.W  	R4,R1			;
0059C8 021A     	STS     	MACL, R2		;
0059CA 32AC     	ADD     	R10,R2		;
0059CC AFD2     	BRA     	#1FA4			;
0059CE 0009     	NOP     				;
0059D0 8801     	CMP/EQ  	#01,R0		;
0059D2 8B02     	BF      	#004			;
0059D4 D44D     	MOV.L   	@(#134,PC),R4	;
0059D6 A014     	BRA     	#0028			;
0059D8 0009     	NOP     				;
0059DA 8802     	CMP/EQ  	#02,R0		;
0059DC 8B02     	BF      	#004			;
0059DE D44C     	MOV.L   	@(#130,PC),R4	;
0059E0 A00F     	BRA     	#001E			;
0059E2 0009     	NOP     				;
0059E4 8803     	CMP/EQ  	#03,R0		;
0059E6 8B09     	BF      	#012			;
0059E8 D44A     	MOV.L   	@(#128,PC),R4	;
0059EA A00A     	BRA     	#0014			;
0059EC 0009     	NOP     				;
0059EE DB4A     	MOV.L   	@(#128,PC),R11	;
0059F0 C327     	TRAPA   	#27			;
0059F2 E5FF     	MOV     	#FF,R5		;
0059F4 4518     	SHLL8   	R5			;
0059F6 4519     	SHLR8   	R5			;
0059F8 A008     	BRA     	#0010			;
0059FA 0009     	NOP     				;
0059FC DB46     	MOV.L   	@(#118,PC),R11	;
0059FE C327     	TRAPA   	#27			;
005A00 244A     	XOR     	R4,R4			;
005A02 D13C     	MOV.L   	@(#0F0,PC),R1	;
005A04 8513     	MOV.W   	@(#06,R1),R0	;
005A06 600D     	EXTU.W   	R0,R0			;
005A08 240E     	MULU.W  	R0,R4			;
005A0A 051A     	STS     	MACL, R5		;
005A0C D144     	MOV.L   	@(#110,PC),R1	;
005A0E 2152     	MOV.L   	R5,@R1		;
005A10 D144     	MOV.L   	@(#110,PC),R1	;
005A12 D245     	MOV.L   	@(#114,PC),R2	;
005A14 AE75     	BRA     	#1CEA			;
005A16 2121     	MOV.W   	R2,@R1		;
005A18 DB3F     	MOV.L   	@(#0FC,PC),R11	;
005A1A C32A     	TRAPA   	#2A			;
005A1C D335     	MOV.L   	@(#0D4,PC),R3	;
005A1E D444     	MOV.L   	@(#110,PC),R4	;
005A20 E000     	MOV     	#00,R0		;
005A22 2402     	MOV.L   	R0,@R4		;
005A24 5031     	MOV.L   	@(#04,R3),R0	;
005A26 4018     	SHLL8   	R0			;
005A28 4019     	SHLR8   	R0			;
005A2A BA08     	BRS     	#1410			;
005A2C 6103     	MOV     	R0,R1			;
005A2E 2F16     	MOV.L   	R1,@-R15		;
005A30 D330     	MOV.L   	@(#0C0,PC),R3	;
005A32 D43F     	MOV.L   	@(#0FC,PC),R4	;
005A34 8434     	MOV.B   	@(#04,R3),R0	;
005A36 600C     	EXTU.B   	R0,R0			;
005A38 8143     	MOV.W   	R0,@(#06,R4)	;
005A3A 6103     	MOV     	R0,R1			;
005A3C 2F16     	MOV.L   	R1,@-R15		;
005A3E CB20     	OR      	#20,R0		;
005A40 610C     	EXTU.B   	R0,R1			;
005A42 8531     	MOV.W   	@(#02,R3),R0	;
005A44 600D     	EXTU.W   	R0,R0			;
005A46 8142     	MOV.W   	R0,@(#04,R4)	;
005A48 6203     	MOV     	R0,R2			;
005A4A 2F26     	MOV.L   	R2,@-R15		;
005A4C BD50     	BRS     	#1AA0			;
005A4E 0009     	NOP     				;
005A50 62F6     	MOV.L   	@R15+,R2		;
005A52 61F6     	MOV.L   	@R15+,R1		;
005A54 2F26     	MOV.L   	R2,@-R15		;
005A56 BB09     	BRS     	#1612			;
005A58 0009     	NOP     				;
005A5A 6AF6     	MOV.L   	@R15+,R10		;
005A5C 67F6     	MOV.L   	@R15+,R7		;
005A5E 6913     	MOV     	R1,R9			;
005A60 E0FF     	MOV     	#FF,R0		;
005A62 600C     	EXTU.B   	R0,R0			;
005A64 3100     	CMP/EQ 	R0,R1			;
005A66 D625     	MOV.L   	@(#094,PC),R6	;
005A68 D831     	MOV.L   	@(#0C4,PC),R8	;
005A6A DC25     	MOV.L   	@(#094,PC),R12	;
005A6C DD2B     	MOV.L   	@(#0AC,PC),R13	;
005A6E 8B08     	BF      	#010			;
005A70 E0FF     	MOV     	#FF,R0		;
005A72 8186     	MOV.W   	R0,@(#0C,R8)	;
005A74 4018     	SHLL8   	R0			;
005A76 4019     	SHLR8   	R0			;
005A78 1802     	MOV.L   	R0,@(#8,R8)		;
005A7A 8583     	MOV.W   	@(#06,R8),R0	;
005A7C 8187     	MOV.W   	R0,@(#0E,R8)	;
005A7E A033     	BRA     	#0066			;
005A80 0009     	NOP     				;
005A82 269E     	MULU.W  	R9,R6			;
005A84 001A     	STS     	MACL, R0		;
005A86 30CC     	ADD     	R12,R0		;
005A88 700C     	ADD     	#0C,R0		;
005A8A 6102     	MOV.L   	@R0,R1		;
005A8C 4119     	SHLR8   	R1			;
005A8E 3170     	CMP/EQ 	R7,R1			;
005A90 8B0A     	BF      	#014			;
005A92 4718     	SHLL8   	R7			;
005A94 B9BA     	BRS     	#1374			;
005A96 6173     	MOV     	R7,R1			;
005A98 6013     	MOV     	R1,R0			;
005A9A 1802     	MOV.L   	R0,@(#8,R8)		;
005A9C 60A3     	MOV     	R10,R0		;
005A9E 8186     	MOV.W   	R0,@(#0C,R8)	;
005AA0 8583     	MOV.W   	@(#06,R8),R0	;
005AA2 8187     	MOV.W   	R0,@(#0E,R8)	;
005AA4 A020     	BRA     	#0040			;
005AA6 0009     	NOP     				;
005AA8 6382     	MOV.L   	@R8,R3		;
005AAA 3136     	CMP/HI 	R3,R1			;
005AAC 8B04     	BF      	#008			;
005AAE 3716     	CMP/HI 	R1,R7			;
005AB0 8B02     	BF      	#004			;
005AB2 2812     	MOV.L   	R1,@R8		;
005AB4 60A3     	MOV     	R10,R0		;
005AB6 8182     	MOV.W   	R0,@(#04,R8)	;
005AB8 7A01     	ADD     	#01,R10		;
005ABA 39DC     	ADD     	R13,R9		;
005ABC 6190     	MOV.B   	@R9,R1		;
005ABE 611C     	EXTU.B   	R1,R1			;
005AC0 6913     	MOV     	R1,R9			;
005AC2 E0FF     	MOV     	#FF,R0		;
005AC4 600C     	EXTU.B   	R0,R0			;
005AC6 3100     	CMP/EQ 	R0,R1			;
005AC8 8BDB     	BF      	#1B6			;
005ACA 8583     	MOV.W   	@(#06,R8),R0	;
005ACC 8187     	MOV.W   	R0,@(#0E,R8)	;
005ACE 6182     	MOV.L   	@R8,R1		;
005AD0 B99C     	BRS     	#1338			;
005AD2 4118     	SHLL8   	R1			;
005AD4 6013     	MOV     	R1,R0			;
005AD6 1802     	MOV.L   	R0,@(#8,R8)		;
005AD8 8800     	CMP/EQ  	#00,R0		;
005ADA 8B03     	BF      	#006			;
005ADC E0FF     	MOV     	#FF,R0		;
005ADE 8186     	MOV.W   	R0,@(#0C,R8)	;
005AE0 A002     	BRA     	#0004			;
005AE2 0009     	NOP     				;
005AE4 8582     	MOV.W   	@(#04,R8),R0	;
005AE6 8186     	MOV.W   	R0,@(#0C,R8)	;
005AE8 DB0B     	MOV.L   	@(#02C,PC),R11	;
005AEA C327     	TRAPA   	#27			;
005AEC D10D     	MOV.L   	@(#034,PC),R1	;
005AEE D20E     	MOV.L   	@(#038,PC),R2	;
005AF0 AE07     	BRA     	#1C0E			;
005AF2 2121     	MOV.W   	R2,@R1		;
005AF4 0F00
005AF6 06C0
005AF8 0F00
005AFA 06D8
005AFC 0000
005AFE 0930
005B00 0900
005B02 0230
005B04 0000
005B06 0400
005B08 0000
005B0A 048A
005B0C 0000
005B0E 0490
005B10 0000
005B12 0492
005B14 0000
005B16 0498
005B18 0B04
005B1A 0000
005B1C 0F00
005B1E 0354
005B20 0F00
005B22 06BC
005B24 0A00
005B26 001E
005B28 0000
005B2A 0040
005B2C 0000
005B2E 4E0C
005B30 0F00
005B32 06C8
005B34 0F00
005B36 06D0

DMAC0_DEI0:							;DMAC0 handler
005B38 2F06     	MOV.L   	R0,@-R15		;
005B3A 60F3     	MOV     	R15,R0		;
005B3C DF24     	MOV.L   	@(#090,PC),R15	;SH1.SP = &temp_stack1_end;
005B3E 2F06     	MOV.L   	R0,@-R15		;
005B40 4F22     	STS.L   	PR,@-R15		;
005B42 2FD6     	MOV.L   	R13,@-R15		;
005B44 2FC6     	MOV.L   	R12,@-R15		;
005B46 2FB6     	MOV.L   	R11,@-R15		;
005B48 2FA6     	MOV.L   	R10,@-R15		;
005B4A DB1F     	MOV.L   	@(#07C,PC),R11	;
005B4C DD1C     	MOV.L   	@(#070,PC),R13	;
005B4E 85B2     	MOV.W   	@(#04,R11),R0	;
005B50 DC1C     	MOV.L   	@(#070,PC),R12	;
005B52 80D6     	MOV.B   	R0,@(#06,R13)	;*(u8*)(0x0F000314+0x06) = YGR.REG1C[7:0]; //?? 0x10,0x12,0x16
005B54 84DD     	MOV.B   	@(#0D,R13),R0	;
005B56 5AD5     	MOV.L   	@(#14,R13),R10	;
005B58 80DE     	MOV.B   	R0,@(#0E,R13)	;cddata_process_block_pos = cddata_read_block_pos;
005B5A 1DA6     	MOV.L   	R10,@(#18,R13)	;cddata_process_block_addr = cddata_read_block_addr;
005B5C B012     	BRS     	L005B84		;L005B84();
005B5E 0009     	NOP     				;
005B60 2F96     	MOV.L   	R9,@-R15		;
005B62 DB1A     	MOV.L   	@(#068,PC),R11	;
005B64 C32D     	TRAPA   	#45			;TRAP_45(0x05840010);
005B66 69F6     	MOV.L   	@R15+,R9		;
005B68 6AF6     	MOV.L   	@R15+,R10		;
005B6A 6BF6     	MOV.L   	@R15+,R11		;
005B6C 6CF6     	MOV.L   	@R15+,R12		;
005B6E 6DF6     	MOV.L   	@R15+,R13		;
005B70 4F26     	LDS.L   	@R15+,PR		;
005B72 6FF6     	MOV.L   	@R15+,R15		;
005B74 60F6     	MOV.L   	@R15+,R0		;
005B76 002B     	RTE     				;
005B78 0009     	NOP     				;
005B7A 0009     	NOP     				;

L005B7C:							;
005B7C DC11     	MOV.L   	@(#044,PC),R12	;
005B7E DB12     	MOV.L   	@(#048,PC),R11	;
005B80 DD0F     	MOV.L   	@(#03C,PC),R13	;
005B82 0009     	NOP     				;
L005B84:
005B84 9A26     	MOV.W   	@(#04C,PC),R10	;
005B86 85B1     	MOV.W   	@(#02,R11),R0	;
005B88 20A9     	AND     	R10,R0		;
005B8A 81B1     	MOV.W   	R0,@(#02,R11)	;YGR.REG1A&= 0xFF7F;
005B8C 84DC     	MOV.B   	@(#0C,R13),R0	;
005B8E 5AD4     	MOV.L   	@(#10,R13),R10	;
005B90 88FF     	CMP/EQ  	#FF,R0		;
005B92 890F     	BT      	L005BB4		;if (cddata_free_block_pos != 0xFF) {
005B94 901F     	MOV.W   	@(#03E,PC),R0	;
005B96 7A0C     	ADD     	#0C,R10		;
005B98 1CA1     	MOV.L   	R10,@(#4,R12)	;  SH1.DMAC.DAR0 = cddata_free_block_addr + 12;
005B9A 81C5     	MOV.W   	R0,@(#0A,R12)	;  SH1.DMAC.TCR0 = 2340/2;
005B9C 9A1C     	MOV.W   	@(#038,PC),R10	;
005B9E 85C7     	MOV.W   	@(#0E,R12),R0	;  SH1.DMAC.CHCR0;
005BA0 60A3     	MOV     	R10,R0		;
005BA2 81C7     	MOV.W   	R0,@(#0E,R12)	;  SH1.DMAC.CHCR0 = 0x436D;
005BA4 84DC     	MOV.B   	@(#0C,R13),R0	;
005BA6 5AD4     	MOV.L   	@(#10,R13),R10	;
005BA8 80DD     	MOV.B   	R0,@(#0D,R13)	;  cddata_read_block_pos = cddata_free_block_pos;
005BAA 1DA5     	MOV.L   	R10,@(#14,R13)	;  cddata_read_block_addr = cddata_free_block_addr;
005BAC E0FF     	MOV     	#FF,R0		;
005BAE 80DC     	MOV.B   	R0,@(#0C,R13)	;  cddata_free_block_pos = 0xFF;
005BB0 000B     	RTS     				;}
005BB2 0009     	NOP     				;else {
L005BB4:
005BB4 85C7     	MOV.W   	@(#0E,R12),R0	;  SH1.DMAC.CHCR0;
005BB6 9010     	MOV.W   	@(#020,PC),R0	;
005BB8 81C7     	MOV.W   	R0,@(#0E,R12)	;  SH1.DMAC.CHCR0 = 0x4368;
005BBA 000B     	RTS     				;}
005BBC 0009     	NOP     				;
005BBE 0009     	NOP     				;
005BC0 0F000314
005BC4 05FFFF40
005BC8 0A000018
005BCC 05840010
005BD0 0F0009A8
005BD4 FF7F
005BD6 0492
005BD8 436D
005BDA 4368

IRQH: 							;IRQH handler
005BDC 2F06     	MOV.L   	R0,@-R15		;
005BDE 60F3     	MOV     	R15,R0		;
005BE0 DF8C     	MOV.L   	@(#230,PC),R15	;SH1.SP = &temp_stack0_end;
005BE2 2F06     	MOV.L   	R0,@-R15		;
005BE4 4F22     	STS.L   	PR,@-R15		;
005BE6 2FD6     	MOV.L   	R13,@-R15		;
005BE8 2FC6     	MOV.L   	R12,@-R15		;
005BEA 2FB6     	MOV.L   	R11,@-R15		;
005BEC 2FA6     	MOV.L   	R10,@-R15		;
005BEE 2F96     	MOV.L   	R9,@-R15		;
005BF0 2F36     	MOV.L   	R3,@-R15		;
005BF2 2F26     	MOV.L   	R2,@-R15		;
005BF4 2F16     	MOV.L   	R1,@-R15		;
005BF6 DA89     	MOV.L   	@(#224,PC),R10	;
005BF8 DB89     	MOV.L   	@(#224,PC),R11	;
005BFA DD87     	MOV.L   	@(#21C,PC),R13	;
005BFC 85A1     	MOV.W   	@(#02,R10),R0	;
005BFE 6103     	MOV     	R0,R1			;
005C00 85A3     	MOV.W   	@(#06,R10),R0	;
005C02 2019     	AND     	R1,R0			;temp = YGR.CDIRQ & YGR.CDMASK;
005C04 80D2     	MOV.B   	R0,@(#02,R13)	;*(U8*)(0x0F0006DC+0x02) = temp[7:0];
005C06 C810     	TST     	#10,R0		;
005C08 8901     	BT      	L005C0E		;
005C0A B012     	BRS     	L005C32		;if (temp & 0x10 != 0) L005C32();
005C0C 0009     	NOP     				;
L005C0E:
005C0E 84D2     	MOV.B   	@(#02,R13),R0	;
005C10 C820     	TST     	#20,R0		;
005C12 8901     	BT      	L005C18		;
005C14 B050     	BRS     	L005CB8		;if (temp & 0x20 != 0) L005CB8();
005C16 0009     	NOP     				;
L005C18:
005C18 61F6     	MOV.L   	@R15+,R1		;
005C1A 62F6     	MOV.L   	@R15+,R2		;
005C1C 63F6     	MOV.L   	@R15+,R3		;
005C1E 69F6     	MOV.L   	@R15+,R9		;
005C20 6AF6     	MOV.L   	@R15+,R10		;
005C22 6BF6     	MOV.L   	@R15+,R11		;
005C24 6CF6     	MOV.L   	@R15+,R12		;
005C26 6DF6     	MOV.L   	@R15+,R13		;
005C28 4F26     	LDS.L   	@R15+,PR		;
005C2A 6FF6     	MOV.L   	@R15+,R15		;
005C2C 60F6     	MOV.L   	@R15+,R0		;
005C2E 002B     	RTE     				;
005C30 0009     	NOP     				;

L005C32:							;
005C32 E0EF     	MOV     	#EF,R0		;
005C34 81A1     	MOV.W   	R0,@(#02,R10)	;YGR.CDIRQ = 0xFFEF;
005C36 84D0     	MOV.B   	@(#00,R13),R0	;
005C38 8801     	CMP/EQ  	#01,R0		;
005C3A 8903     	BT      	L005C44		;*(U8*)(0x0F0006DC+0x00) == 01
005C3C 8800     	CMP/EQ  	#00,R0		;
005C3E 8925     	BT      	L005C8C		;*(U8*)(0x0F0006DC+0x00) == 00
005C40 A01A     	BRA     	L005C78		;
005C42 0009     	NOP     				;
L005C44:
005C44 092A     	STS     	PR, R9		;
005C46 B0FB     	BRS     	L005E40		;cnt = get_cd_counter48();
005C48 0009     	NOP     				;
005C4A 492A     	LDS     	R9,PR			;
005C4C 52D3     	MOV.L   	@(#0C,R13),R2	;u32 old = *(U32*)(0F0006DC+0C);
005C4E 1D13     	MOV.L   	R1,@(#C,R13)	;*(U32*)(0x0F0006DC+0x0C) = cnt[31:0];
005C50 3128     	SUB     	R2,R1			;temp = cnt[31:0] - old;
005C52 50D2     	MOV.L   	@(#08,R13),R0	;
005C54 0008     	CLRT    				;
005C56 310A     	SUBC    	R0,R1			;temp-= *(U32*)(0x0F0006DC+0x08);
005C58 8B00     	BF      	L005C5C		;
005C5A 611B     	NEG     	R1,R1			;temp = abs(temp);
L005C5C:
005C5C 84D3     	MOV.B   	@(#03,R13),R0	;
005C5E 3106     	CMP/HI 	R0,R1			;
005C60 890F     	BT      	L005C82		;temp > *(U8*)(0x0F0006DC+0x03)
005C62 E107     	MOV     	#07,R1		;
005C64 85B1     	MOV.W   	@(#02,R11),R0	;
005C66 201B     	OR      	R1,R0			;
005C68 81B1     	MOV.W   	R0,@(#02,R11)	;YGR.REG1A|= 0x0007;
005C6A E002     	MOV     	#02,R0		;
005C6C 80D0     	MOV.B   	R0,@(#00,R13)	;*(U8*)(0x0F0006DC+0x00) = 0x02;
005C6E DB6D     	MOV.L   	@(#1B4,PC),R11	;
005C70 C32D     	TRAPA   	#45			;TRAP_45(0x05800012);
005C72 DA6A     	MOV.L   	@(#1A8,PC),R10	;
005C74 DB6A     	MOV.L   	@(#1A8,PC),R11	;
005C76 DD68     	MOV.L   	@(#1A0,PC),R13	;
L005C78:
005C78 85A3     	MOV.W   	@(#06,R10),R0	;
005C7A C9EF     	AND     	#EF,R0		;
005C7C 81A3     	MOV.W   	R0,@(#06,R10)	;YGR.CDMASK&= 0xFFEF;
005C7E 000B     	RTS     				;
005C80 0009     	NOP     				;
L005C82:
005C82 84D7     	MOV.B   	@(#07,R13),R0	;
005C84 7001     	ADD     	#01,R0		;
005C86 80D7     	MOV.B   	R0,@(#07,R13)	;*(U8*)(0x0F0006DC+0x07)++;
005C88 000B     	RTS     				;
005C8A 0009     	NOP     				;
L005C8C:
005C8C 092A     	STS     	PR, R9		;
005C8E B0D7     	BRS     	L005E40		;cnt = get_cd_counter48();
005C90 0009     	NOP     				;
005C92 492A     	LDS     	R9,PR			;
005C94 1D13     	MOV.L   	R1,@(#C,R13)	;*(U32*)(0x0F0006DC+0x0C) = cnt[31:0];
005C96 D268     	MOV.L   	@(#1A0,PC),R2	;
005C98 D165     	MOV.L   	@(#194,PC),R1	;const1 = 0x00008235;
005C9A 6020     	MOV.B   	@R2,R0		;
005C9C E21C     	MOV     	#1C,R2		;const2 = 1C;
005C9E C810     	TST     	#10,R0		;
005CA0 8B01     	BF      	L005CA6		;if (init_cd_flags & IFLAG_SPEED_1X == 0) {
005CA2 4101     	SHLR    	R1			; const1 /= 2;
005CA4 4201     	SHLR    	R2			; const2 /= 2;
L005CA6:							;}
005CA6 1D12     	MOV.L   	R1,@(#8,R13)	;*(U32*)(0x0F0006DC+0x08) = const1;
005CA8 6023     	MOV     	R2,R0			;
005CAA 80D3     	MOV.B   	R0,@(#03,R13)	;*(U8*)(0x0F0006DC+0x03) = const2;
005CAC E000     	MOV     	#00,R0		;
005CAE 80D7     	MOV.B   	R0,@(#07,R13)	;*(U8*)(0x0F0006DC+0x07) = 0x00;
005CB0 E001     	MOV     	#01,R0		;
005CB2 80D0     	MOV.B   	R0,@(#00,R13)	;*(U8*)(0x0F0006DC+0x00) = 0x01;
005CB4 000B     	RTS     				;
005CB6 0009     	NOP     				;

L005CB8:							;
005CB8 4F12     	STS.L   	MACL,@-R15		;
005CBA 092A     	STS     	PR, R9		;
005CBC 85A1     	MOV.W   	@(#02,R10),R0	;
005CBE 80D2     	MOV.B   	R0,@(#02,R13)	;*(U8*)(0x0F0006DC+0x02) = YGR.CDIRQ[7:0];
005CC0 E09F     	MOV     	#9F,R0		;
005CC2 81A1     	MOV.W   	R0,@(#02,R10)	;YGR.CDIRQ = 0xFF9F;
005CC4 D266     	MOV.L   	@(#198,PC),R2	;
005CC6 6121     	MOV.W   	@R2,R1		;
005CC8 611D     	EXTU.W   	R1,R1			;new_val = TCNT4;
005CCA 84D1     	MOV.B   	@(#01,R13),R0	;
005CCC 8801     	CMP/EQ  	#01,R0		;
005CCE 8903     	BT      	L005CD8		;*(U8*)(0x0F0006DC+0x00).b == 0x01
005CD0 8802     	CMP/EQ  	#02,R0		;
005CD2 8910     	BT      	L005CF6		;*(U8*)(0x0F0006DC+0x00).b == 0x02
L005CD4:
005CD4 A099     	BRA     	L005E0A		;
005CD6 0009     	NOP     				;
L005CD8:
005CD8 1D13     	MOV.L   	R1,@(#C,R13)	;*(u32*)(0x0F0006DC+0x0C) = new_val;
005CDA 84D2     	MOV.B   	@(#02,R13),R0	;
005CDC C840     	TST     	#40,R0		;
005CDE 89F9     	BT      	L005CD4		;*(U8*)(0x0F0006DC+0x02) & 0x40 == 0
005CE0 84D6     	MOV.B   	@(#06,R13),R0	;
005CE2 7001     	ADD     	#01,R0		;
005CE4 80D6     	MOV.B   	R0,@(#06,R13)	;*(U8*)(0x0F0006DC+0x06)++
005CE6 2008     	TST     	R0,R0			;
005CE8 8BF4     	BF      	L005CD4		;*(U8*)(0x0F0006DC+0x06) != 0
005CEA E000     	MOV     	#00,R0		;
005CEC 80D7     	MOV.B   	R0,@(#07,R13)	;*(U8*)(0x0F0006DC+0x07) = 0x00;
005CEE E002     	MOV     	#02,R0		;
005CF0 80D1     	MOV.B   	R0,@(#01,R13)	;*(U8*)(0x0F0006DC+0x01) = 0x02;
005CF2 A063     	BRA     	L005DBC		;
005CF4 0009     	NOP     				;
L005CF6:
005CF6 E000     	MOV     	#00,R0		;
005CF8 80D3     	MOV.B   	R0,@(#03,R13)	;*(U8*)(0x0F0006DC+0x03) = 0x00;
005CFA 52D3     	MOV.L   	@(#0C,R13),R2	;old_val = *(u32*)(0x0F0006DC+0x0C);
005CFC 1D13     	MOV.L   	R1,@(#C,R13)	;*(u32*)(0x0F0006DC+0x0C) = new_val;
005CFE 3128     	SUB     	R2,R1			;
005D00 611D     	EXTU.W   	R1,R1			;new_val-= old_val;
005D02 935A     	MOV.W   	@(#0B4,PC),R3	;
005D04 71AB     	ADD     	#AB,R1		;new_val+= 0xFFAB;
005D06 3136     	CMP/HI 	R3,R1			;
005D08 8902     	BT      	L005D10		;
005D0A E101     	MOV     	#01,R1		;
005D0C A00E     	BRA     	L005D2C		;if (new_val <= 0x0154) goto L005D2C;
005D0E 0009     	NOP     				;
L005D10:
005D10 4308     	SHLL2   	R3			;
005D12 4308     	SHLL2   	R3			;
005D14 3136     	CMP/HI 	R3,R1			;
005D16 8944     	BT      	L005DA2		;new_val > 0x1540
005D18 6013     	MOV     	R1,R0			;
005D1A 0019     	DIV0U   				;
005D1C 3034     	DIV1    	R3,R0			;
005D1E 3034     	DIV1    	R3,R0			;
005D20 3034     	DIV1    	R3,R0			;
005D22 3034     	DIV1    	R3,R0			;
005D24 4024     	ROTCL   	R0			;
005D26 C90F     	AND     	#0F,R0		;
005D28 6103     	MOV     	R0,R1			;
005D2A 7101     	ADD     	#01,R1		;temp = ((new_val % 0x1540)&0xF) + 1;
L005D2C:
005D2C 84D6     	MOV.B   	@(#06,R13),R0	;
005D2E 301C     	ADD     	R1,R0			;temp+= *(U8*)(0x0F0006DC+0x06);
005D30 E262     	MOV     	#62,R2		;
005D32 3022     	CMP/HS 	R2,R0			;
005D34 8B04     	BF      	L005D40		;temp < 0x62
005D36 3028     	SUB     	R2,R0			;temp-= 0x62;
005D38 80D6     	MOV.B   	R0,@(#06,R13)	;*(U8*)(0x0F0006DC+0x06) = temp
005D3A 7018     	ADD     	#18,R0		;temp+= 0x18;
005D3C A007     	BRA     	L005D4E		;
005D3E 0009     	NOP     				;
L005D40:
005D40 80D6     	MOV.B   	R0,@(#06,R13)	;*(U8*)(0x0F0006DC+0x06) = temp 
005D42 E260     	MOV     	#60,R2		;
005D44 3022     	CMP/HS 	R2,R0			;
005D46 8B00     	BF      	L005D4A		;temp < 0x60
005D48 E100     	MOV     	#00,R1		;
L005D4A:
005D4A 84D5     	MOV.B   	@(#05,R13),R0	;
005D4C 301C     	ADD     	R1,R0			;temp = *(U8*)(0x0F0006DC+0x05) + 1;
L005D4E:
005D4E E218     	MOV     	#18,R2		;
005D50 80D5     	MOV.B   	R0,@(#05,R13)	;*(U8*)(0x0F0006DC+0x05) = temp;
005D52 3022     	CMP/HS 	R2,R0			;
005D54 8B07     	BF      	L005D66		;temp < 0x18
005D56 3028     	SUB     	R2,R0			;temp-= 0x18;
005D58 80D5     	MOV.B   	R0,@(#05,R13)	;*(U8*)(0x0F0006DC+0x05) = temp;
005D5A 84D4     	MOV.B   	@(#04,R13),R0	;
005D5C 7001     	ADD     	#01,R0		;
005D5E C91F     	AND     	#1F,R0		;
005D60 80D4     	MOV.B   	R0,@(#04,R13)	;*(U8*)(0x0F0006DC+0x04) = (*(U8*)(0x0F0006DC+0x04).b+1)&0x1F;
005D62 E001     	MOV     	#01,R0		;
005D64 80D3     	MOV.B   	R0,@(#03,R13)	;*(U8*)(0x0F0006DC+0x03) = 0x01;
L005D66:
005D66 84D6     	MOV.B   	@(#06,R13),R0	;
005D68 6103     	MOV     	R0,R1			;
005D6A 2008     	TST     	R0,R0			;
005D6C 890D     	BT      	L005D8A		;*(U8*)(0x0F0006DC+0x06) == 0
005D6E 84D2     	MOV.B   	@(#02,R13),R0	;
005D70 C840     	TST     	#40,R0		;
005D72 8923     	BT      	L005DBC		;*(U8*)(0x0F0006DC+0x02) & 0x40 == 0
005D74 E260     	MOV     	#60,R2		;
005D76 3122     	CMP/HS 	R2,R1			;
005D78 890E     	BT      	L005D98		;*(U8*)(0x0F0006DC+0x06) == 0x60
005D7A E204     	MOV     	#04,R2		;
005D7C 3126     	CMP/HI 	R2,R1			;
005D7E 890B     	BT      	L005D98		;*(U8*)(0x0F0006DC+0x06) == 0x04
005D80 E000     	MOV     	#00,R0		;
005D82 80D6     	MOV.B   	R0,@(#06,R13)	;*(U8*)(0x0F0006DC+0x06) = 0x00;
005D84 80D5     	MOV.B   	R0,@(#05,R13)	;*(U8*)(0x0F0006DC+0x05) = 0x00;
005D86 A019     	BRA     	L005DBC		;
005D88 0009     	NOP     				;
L005D8A:
005D8A 84D2     	MOV.B   	@(#02,R13),R0	;
005D8C C840     	TST     	#40,R0		;
005D8E 8901     	BT      	L005D94		;*(U8*)(0x0F0006DC+0x02) & 0x40 == 0
005D90 E000     	MOV     	#00,R0		;
005D92 80D7     	MOV.B   	R0,@(#07,R13)	;*(U8*)(0x0F0006DC+0x07) = 0x00;
L005D94:
005D94 A012     	BRA     	L005DBC		;
005D96 0009     	NOP     				;
L005D98:
005D98 84D7     	MOV.B   	@(#07,R13),R0	;
005D9A 7001     	ADD     	#01,R0		;
005D9C 80D7     	MOV.B   	R0,@(#07,R13)	;*(U8*)(0x0F0006DC+0x07)++;
005D9E 8803     	CMP/EQ  	#03,R0		;
005DA0 8B0C     	BF      	L005DBC		;*(U8*)(0x0F0006DC+0x07) == 0x03
L005DA2:
005DA2 84D4     	MOV.B   	@(#04,R13),R0	;
005DA4 7004     	ADD     	#04,R0		;
005DA6 C91C     	AND     	#1C,R0		;
005DA8 80D4     	MOV.B   	R0,@(#04,R13)	;*(U8*)(0x0F0006DC+0x04) = (*(U8*)(0x0F0006DC+0x04) + 4) & 0x1C;
005DAA E000     	MOV     	#00,R0		;
005DAC 80D5     	MOV.B   	R0,@(#05,R13)	;*(U8*)(0x0F0006DC+0x05) = 0x00;
005DAE E001     	MOV     	#01,R0		;
005DB0 80D1     	MOV.B   	R0,@(#01,R13)	;*(U8*)(0x0F0006DC+0x01) = 0x01;
005DB2 E0FF     	MOV     	#FF,R0		;
005DB4 80D6     	MOV.B   	R0,@(#06,R13)	;*(U8*)(0x0F0006DC+0x06) = 0xFF;
005DB6 A029     	BRA     	L005E0C		;
005DB8 0009     	NOP     				;
005DBA 0154
L005DBC:
005DBC 85B0     	MOV.W   	@(#00,R11),R0	;
005DBE C93F     	AND     	#3F,R0		;
005DC0 6103     	MOV     	R0,R1			;
005DC2 84D4     	MOV.B   	@(#04,R13),R0	;
005DC4 E318     	MOV     	#18,R3		;
005DC6 6203     	MOV     	R0,R2			;
005DC8 84D5     	MOV.B   	@(#05,R13),R0	;
005DCA 7207     	ADD     	#07,R2		;
005DCC C907     	AND     	#07,R0		;
005DCE 3208     	SUB     	R0,R2			;
005DD0 223E     	MULU.W  	R3,R2			;
005DD2 84D5     	MOV.B   	@(#05,R13),R0	;
005DD4 D217     	MOV.L   	@(#05C,PC),R2	;
005DD6 031A     	STS     	MACL, R3		;u8 temp2 = ((*(U8*)(0x0F0006DC+0x04) + 7) - (*(U8*)(0x0F0006DC+0x05) & 7)) * 24;
005DD8 303C     	ADD     	R3,R0			;temp2 += *(U8*)(0x0F0006DC+0x05);
005DDA D314     	MOV.L   	@(#050,PC),R3	;
005DDC 3022     	CMP/HS 	R2,R0			;
005DDE 8B00     	BF      	L005DE2		;
005DE0 3028     	SUB     	R2,R0			;if (temp2 >= 0x0300) temp2-= 0x0300;
L005DE2:
005DE2 0314     	MOV.B   	R1,@(R0,R3)		;*(U8*)(0x09074E10+temp2) = YGR.REG18 & 0x3F;
005DE4 84D3     	MOV.B   	@(#03,R13),R0	;
005DE6 8801     	CMP/EQ  	#01,R0		;
005DE8 8B10     	BF      	L005E0C		;*(U8*)(0x0F0006DC+0x03) != 0x01
005DEA 84D4     	MOV.B   	@(#04,R13),R0	;
005DEC 7008     	ADD     	#08,R0		;
005DEE C91F     	AND     	#1F,R0		;
005DF0 D212     	MOV.L   	@(#048,PC),R2	;
005DF2 6103     	MOV     	R0,R1			;
005DF4 8421     	MOV.B   	@(#01,R2),R0	;
005DF6 3010     	CMP/EQ 	R1,R0			;
005DF8 8B01     	BF      	L005DFE		;*(U8*)(0x0F0006EC+0x01) != (*(U8*)(0x0F0006DC+0x04) + 8) & 0x1F
005DFA E003     	MOV     	#03,R0		;
005DFC 8022     	MOV.B   	R0,@(#02,R2)	;*(U8*)(0x0F0006EC+0x02) = 0x03;
L005DFE:
005DFE 0009     	NOP     				;
005E00 DB09     	MOV.L   	@(#024,PC),R11	;02800010
005E02 6193     	MOV     	R9,R1			;
005E04 C32D     	TRAPA   	#45			;TRAP_45();
005E06 6913     	MOV     	R1,R9			;
005E08 DD03     	MOV.L   	@(#00C,PC),R13	;0F0006DC
L005E0A:
005E0A 0009     	NOP     				;
L005E0C:
005E0C 492A     	LDS     	R9,PR			;
005E0E 4F16     	LDS.L   	@R15+,MACL		;
005E10 000B     	RTS     				;
005E12 0009     	NOP     				;
005E14 0F000950
005E18 0F0006DC
005E1C 0A000004
005E20 0A000018
005E24 05800012
005E28 02800010
005E2C 09074E10
005E30 00008235
005E34 00000300
005E38 0F00025C
005E3C 0F0006EC

L005E40:							;u64 get_cd_counter48()
005E40 D307     	MOV.L   	@(#01C,PC),R3	;
005E42 D206     	MOV.L   	@(#018,PC),R2	;
005E44 6131     	MOV.W   	@R3,R1		;
005E46 6020     	MOV.B   	@R2,R0		;
005E48 D306     	MOV.L   	@(#018,PC),R3	;
005E4A 4009     	SHLR2   	R0			;
005E4C 6232     	MOV.L   	@R3,R2		;
005E4E C901     	AND     	#01,R0		;
005E50 320C     	ADD     	R0,R2			;u64 temp = timer_high_cnt + SH1.ITU.TSR4.IMFA;
005E52 4128     	SHLL16  	R1			;
005E54 212D     	XTRCT   	R2,R1			;
005E56 4229     	SHLR16  	R2			;return (temp<<16 | SH1.ITU.TCNT4)
005E58 000B     	RTS     				;
005E5A 0009     	NOP     				;
005E5C 05FFFF35
005E60 05FFFF36
005E64 0F00021C

005E68 E000     	MOV     	#00,R0		;
005E6A DA45     	MOV.L   	@(#114,PC),R10	;
005E6C 1A00     	MOV.L   	R0,@(#0,R10)	;
005E6E 1A01     	MOV.L   	R0,@(#4,R10)	;
005E70 1A02     	MOV.L   	R0,@(#8,R10)	;
005E72 C323     	TRAPA   	#23			;
005E74 DA42     	MOV.L   	@(#108,PC),R10	;
005E76 60B9     	SWAP.W   	R11,R0		;
005E78 600E     	EXTS.B   	R0,R0			;
005E7A 8880     	CMP/EQ  	#80,R0		;
005E7C 8933     	BT      	#066			;
005E7E 8881     	CMP/EQ  	#81,R0		;
005E80 890C     	BT      	#018			;
005E82 8803     	CMP/EQ  	#03,R0		;
005E84 8901     	BT      	#002			;
005E86 AFF4     	BRA     	#1FE8			;
005E88 0009     	NOP     				;
005E8A 60BE     	EXTS.B   	R11,R0		;
005E8C 8801     	CMP/EQ  	#01,R0		;
005E8E 8901     	BT      	#002			;
005E90 AFEF     	BRA     	#1FDE			;
005E92 0009     	NOP     				;
005E94 DB41     	MOV.L   	@(#104,PC),R11	;
005E96 C327     	TRAPA   	#27			;
005E98 AFEB     	BRA     	#1FD6			;
005E9A 0009     	NOP     				;
005E9C DB3F     	MOV.L   	@(#0FC,PC),R11	;
005E9E C32A     	TRAPA   	#2A			;
005EA0 DA37     	MOV.L   	@(#0DC,PC),R10	;
005EA2 84A1     	MOV.B   	@(#01,R10),R0	;
005EA4 E118     	MOV     	#18,R1		;
005EA6 201E     	MULU.W  	R1,R0			;
005EA8 D136     	MOV.L   	@(#0D8,PC),R1	;
005EAA D238     	MOV.L   	@(#0E0,PC),R2	;
005EAC 001A     	STS     	MACL, R0		;
005EAE 310C     	ADD     	R0,R1			;
005EB0 2212     	MOV.L   	R1,@R2		;
005EB2 D237     	MOV.L   	@(#0DC,PC),R2	;
005EB4 E00C     	MOV     	#0C,R0		;
005EB6 2201     	MOV.W   	R0,@R2		;
005EB8 84A2     	MOV.B   	@(#02,R10),R0	;
005EBA 8803     	CMP/EQ  	#03,R0		;
005EBC 8907     	BT      	#00E			;
005EBE 8802     	CMP/EQ  	#02,R0		;
005EC0 8B0B     	BF      	#016			;
005EC2 84A1     	MOV.B   	@(#01,R10),R0	;
005EC4 7001     	ADD     	#01,R0		;
005EC6 C91F     	AND     	#1F,R0		;
005EC8 80A1     	MOV.B   	R0,@(#01,R10)	;
005ECA A006     	BRA     	#000C			;
005ECC 0009     	NOP     				;
005ECE 84A0     	MOV.B   	@(#00,R10),R0	;
005ED0 7009     	ADD     	#09,R0		;
005ED2 C91F     	AND     	#1F,R0		;
005ED4 80A1     	MOV.B   	R0,@(#01,R10)	;
005ED6 E002     	MOV     	#02,R0		;
005ED8 80A2     	MOV.B   	R0,@(#02,R10)	;
005EDA DB2E     	MOV.L   	@(#0B8,PC),R11	;
005EDC D02A     	MOV.L   	@(#0A8,PC),R0	;
005EDE 400B     	JSR     	@R0			;
005EE0 0009     	NOP     				;
005EE2 AFC6     	BRA     	#1F8C			;
005EE4 0009     	NOP     				;
005EE6 DA26     	MOV.L   	@(#098,PC),R10	;
005EE8 84A2     	MOV.B   	@(#02,R10),R0	;
005EEA 8802     	CMP/EQ  	#02,R0		;
005EEC 8911     	BT      	#022			;
005EEE 8801     	CMP/EQ  	#01,R0		;
005EF0 8905     	BT      	#00A			;
005EF2 8800     	CMP/EQ  	#00,R0		;
005EF4 8901     	BT      	#002			;
005EF6 A00B     	BRA     	#0016			;
005EF8 0009     	NOP     				;
005EFA E001     	MOV     	#01,R0		;
005EFC 80A2     	MOV.B   	R0,@(#02,R10)	;
005EFE D21F     	MOV.L   	@(#07C,PC),R2	;
005F00 8424     	MOV.B   	@(#04,R2),R0	;
005F02 8809     	CMP/EQ  	#09,R0		;
005F04 8B38     	BF      	#070			;
005F06 E008     	MOV     	#08,R0		;
005F08 80A0     	MOV.B   	R0,@(#00,R10)	;
005F0A 80A1     	MOV.B   	R0,@(#01,R10)	;
005F0C E002     	MOV     	#02,R0		;
005F0E 80A2     	MOV.B   	R0,@(#02,R10)	;
005F10 0009     	NOP     				;
005F12 84A0     	MOV.B   	@(#00,R10),R0	;
005F14 E118     	MOV     	#18,R1		;
005F16 210E     	MULU.W  	R0,R1			;
005F18 D11A     	MOV.L   	@(#068,PC),R1	;
005F1A 001A     	STS     	MACL, R0		;
005F1C 310C     	ADD     	R0,R1			;
005F1E 1A12     	MOV.L   	R1,@(#8,R10)	;
005F20 6312     	MOV.L   	@R1,R3		;
005F22 411E     	LDC     	R1,GBR		;
005F24 C417     	MOV.B   	@(#017,GBR),R0	;
005F26 C003     	MOV.B   	R0,@(#003,GBR)	;
005F28 603C     	EXTU.B   	R3,R0			;
005F2A C017     	MOV.B   	R0,@(#017,GBR)	;
005F2C C405     	MOV.B   	@(#005,GBR),R0	;
005F2E 4319     	SHLR8   	R3			;
005F30 C002     	MOV.B   	R0,@(#002,GBR)	;
005F32 603C     	EXTU.B   	R3,R0			;
005F34 C005     	MOV.B   	R0,@(#005,GBR)	;
005F36 C412     	MOV.B   	@(#012,GBR),R0	;
005F38 4319     	SHLR8   	R3			;
005F3A C001     	MOV.B   	R0,@(#001,GBR)	;
005F3C 603C     	EXTU.B   	R3,R0			;
005F3E C012     	MOV.B   	R0,@(#012,GBR)	;
005F40 B077     	BRS     	#00EE			;
005F42 0009     	NOP     				;
005F44 DA0E     	MOV.L   	@(#038,PC),R10	;
005F46 80A4     	MOV.B   	R0,@(#04,R10)	;
005F48 52A2     	MOV.L   	@(#08,R10),R2	;
005F4A B02B     	BRS     	#0056			;
005F4C 0009     	NOP     				;
005F4E DA0C     	MOV.L   	@(#030,PC),R10	;
005F50 80A5     	MOV.B   	R0,@(#05,R10)	;
005F52 84A5     	MOV.B   	@(#05,R10),R0	;
005F54 6103     	MOV     	R0,R1			;
005F56 84A4     	MOV.B   	@(#04,R10),R0	;
005F58 201B     	OR      	R1,R0			;
005F5A C880     	TST     	#80,R0		;
005F5C 8903     	BT      	#006			;
005F5E 52A2     	MOV.L   	@(#08,R10),R2	;
005F60 6020     	MOV.B   	@R2,R0		;
005F62 CB80     	OR      	#80,R0		;
005F64 2200     	MOV.B   	R0,@R2		;
005F66 84A0     	MOV.B   	@(#00,R10),R0	;
005F68 7001     	ADD     	#01,R0		;
005F6A C91F     	AND     	#1F,R0		;
005F6C 80A0     	MOV.B   	R0,@(#00,R10)	;
005F6E D203     	MOV.L   	@(#00C,PC),R2	;
005F70 6103     	MOV     	R0,R1			;
005F72 8424     	MOV.B   	@(#04,R2),R0	;
005F74 3010     	CMP/EQ 	R1,R0			;
005F76 8BCC     	BF      	#198			;
005F78 AF7B     	BRA     	#1EF6			;
005F7A 0009     	NOP     				;
005F7C 0F00
005F7E 06DC
005F80 0F00
005F82 06EC
005F84 0907
005F86 4E10
005F88 0000
005F8A 23BA
005F8C 0F00
005F8E 0250
005F90 0F00
005F92 0254
005F94 0302
005F96 0000
005F98 0302
005F9A 0002
005F9C 0302
005F9E 0000
005FA0 0A00
005FA2 0004     	MOV.B   	R0,@(R0,R0)		;
005FA4 6122     	MOV.L   	@R2,R1		;
005FA6 6118     	SWAP.B   	R1,R1			;
005FA8 6119     	SWAP.W   	R1,R1			;
005FAA 6118     	SWAP.B   	R1,R1			;
005FAC 6C13     	MOV     	R1,R12		;
005FAE 64CC     	EXTU.B   	R12,R4		;
005FB0 65CC     	EXTU.B   	R12,R5		;
005FB2 4C19     	SHLR8   	R12			;
005FB4 61CC     	EXTU.B   	R12,R1		;
005FB6 241A     	XOR     	R1,R4			;
005FB8 6053     	MOV     	R5,R0			;
005FBA 4000     	SHLL    	R0			;
005FBC C840     	TST     	#40,R0		;
005FBE 8900     	BT      	#000			;
005FC0 CA43     	XOR     	#43,R0		;
005FC2 6503     	MOV     	R0,R5			;
005FC4 251A     	XOR     	R1,R5			;
005FC6 4C19     	SHLR8   	R12			;
005FC8 61CC     	EXTU.B   	R12,R1		;
005FCA 241A     	XOR     	R1,R4			;
005FCC 6053     	MOV     	R5,R0			;
005FCE 4000     	SHLL    	R0			;
005FD0 C840     	TST     	#40,R0		;
005FD2 8900     	BT      	#000			;
005FD4 CA43     	XOR     	#43,R0		;
005FD6 6503     	MOV     	R0,R5			;
005FD8 251A     	XOR     	R1,R5			;
005FDA 4C19     	SHLR8   	R12			;
005FDC 61CC     	EXTU.B   	R12,R1		;
005FDE 241A     	XOR     	R1,R4			;
005FE0 6053     	MOV     	R5,R0			;
005FE2 4000     	SHLL    	R0			;
005FE4 C840     	TST     	#40,R0		;
005FE6 8900     	BT      	#000			;
005FE8 CA43     	XOR     	#43,R0		;
005FEA 6503     	MOV     	R0,R5			;
005FEC 251A     	XOR     	R1,R5			;
005FEE 4C19     	SHLR8   	R12			;
005FF0 6053     	MOV     	R5,R0			;
005FF2 4018     	SHLL8   	R0			;
005FF4 204B     	OR      	R4,R0			;
005FF6 2008     	TST     	R0,R0			;
005FF8 8918     	BT      	#030			;
005FFA 2448     	TST     	R4,R4			;
005FFC 8914     	BT      	#028			;
005FFE 2558     	TST     	R5,R5			;
006000 8912     	BT      	#024			;
006002 6053     	MOV     	R5,R0			;
006004 009C     	MOV.B   	@(R0,R9),R0		;
006006 6103     	MOV     	R0,R1			;
006008 6043     	MOV     	R4,R0			;
00600A 009C     	MOV.B   	@(R0,R9),R0		;
00600C 0008     	CLRT    				;
00600E 310A     	SUBC    	R0,R1			;
006010 8B01     	BF      	#002			;
006012 713F     	ADD     	#3F,R1		;
006014 611C     	EXTU.B   	R1,R1			;
006016 E003     	MOV     	#03,R0		;
006018 3106     	CMP/HI 	R0,R1			;
00601A 8905     	BT      	#00A			;
00601C 3018     	SUB     	R1,R0			;
00601E 012C     	MOV.B   	@(R0,R2),R1		;
006020 214A     	XOR     	R4,R1			;
006022 0214     	MOV.B   	R1,@(R0,R2)		;
006024 A003     	BRA     	#0006			;
006026 E001     	MOV     	#01,R0		;
006028 A001     	BRA     	#0002			;
00602A E080     	MOV     	#80,R0		;
00602C E000     	MOV     	#00,R0		;
00602E 000B     	RTS     				;
006030 0009     	NOP     				;
006032 4F22     	STS.L   	PR,@-R15		;
006034 D892     	MOV.L   	@(#248,PC),R8	;
006036 D993     	MOV.L   	@(#24C,PC),R9	;
006038 DA90     	MOV.L   	@(#240,PC),R10	;
00603A DB95     	MOV.L   	@(#254,PC),R11	;
00603C B008     	BRS     	#0010			;
00603E 0009     	NOP     				;
006040 DA92     	MOV.L   	@(#248,PC),R10	;
006042 B09B     	BRS     	#0136			;
006044 0009     	NOP     				;
006046 B02E     	BRS     	#005C			;
006048 0009     	NOP     				;
00604A 4F26     	LDS.L   	@R15+,PR		;
00604C 000B     	RTS     				;
00604E 0009     	NOP     				;
006050 52A2     	MOV.L   	@(#08,R10),R2	;
006052 E018     	MOV     	#18,R0		;
006054 320C     	ADD     	R0,R2			;
006056 ED3F     	MOV     	#3F,R13		;
006058 E400     	MOV     	#00,R4		;
00605A E500     	MOV     	#00,R5		;
00605C E600     	MOV     	#00,R6		;
00605E E700     	MOV     	#00,R7		;
006060 E300     	MOV     	#00,R3		;
006062 72FF     	ADD     	#FF,R2		;
006064 6120     	MOV.B   	@R2,R1		;
006066 2118     	TST     	R1,R1			;
006068 8917     	BT      	#02E			;
00606A 241A     	XOR     	R1,R4			;
00606C 601C     	EXTU.B   	R1,R0			;
00606E 019C     	MOV.B   	@(R0,R9),R1		;
006070 313C     	ADD     	R3,R1			;
006072 31D2     	CMP/HS 	R13,R1		;
006074 8B00     	BF      	#000			;
006076 31D8     	SUB     	R13,R1		;
006078 601C     	EXTU.B   	R1,R0			;
00607A 008C     	MOV.B   	@(R0,R8),R0		;
00607C 250A     	XOR     	R0,R5			;
00607E 313C     	ADD     	R3,R1			;
006080 31D2     	CMP/HS 	R13,R1		;
006082 8B00     	BF      	#000			;
006084 31D8     	SUB     	R13,R1		;
006086 601C     	EXTU.B   	R1,R0			;
006088 008C     	MOV.B   	@(R0,R8),R0		;
00608A 260A     	XOR     	R0,R6			;
00608C 313C     	ADD     	R3,R1			;
00608E 31D2     	CMP/HS 	R13,R1		;
006090 8B00     	BF      	#000			;
006092 31D8     	SUB     	R13,R1		;
006094 601C     	EXTU.B   	R1,R0			;
006096 008C     	MOV.B   	@(R0,R8),R0		;
006098 270A     	XOR     	R0,R7			;
00609A 7301     	ADD     	#01,R3		;
00609C E018     	MOV     	#18,R0		;
00609E 3302     	CMP/HS 	R0,R3			;
0060A0 8BDF     	BF      	#1BE			;
0060A2 000B     	RTS     				;
0060A4 0009     	NOP     				;
0060A6 4F22     	STS.L   	PR,@-R15		;
0060A8 E1FF     	MOV     	#FF,R1		;
0060AA 84A2     	MOV.B   	@(#02,R10),R0	;
0060AC 2008     	TST     	R0,R0			;
0060AE 4124     	ROTCL   	R1			;
0060B0 84A1     	MOV.B   	@(#01,R10),R0	;
0060B2 2008     	TST     	R0,R0			;
0060B4 4124     	ROTCL   	R1			;
0060B6 84A0     	MOV.B   	@(#00,R10),R0	;
0060B8 2008     	TST     	R0,R0			;
0060BA 4124     	ROTCL   	R1			;
0060BC 6017     	NOT     	R1,R0			;
0060BE 80B6     	MOV.B   	R0,@(#06,R11)	;
0060C0 E1FF     	MOV     	#FF,R1		;
0060C2 2778     	TST     	R7,R7			;
0060C4 4124     	ROTCL   	R1			;
0060C6 2448     	TST     	R4,R4			;
0060C8 4124     	ROTCL   	R1			;
0060CA 6017     	NOT     	R1,R0			;
0060CC 80B7     	MOV.B   	R0,@(#07,R11)	;
0060CE 84B6     	MOV.B   	@(#06,R11),R0	;
0060D0 2008     	TST     	R0,R0			;
0060D2 8903     	BT      	#006			;
0060D4 8807     	CMP/EQ  	#07,R0		;
0060D6 8919     	BT      	#032			;
0060D8 A04A     	BRA     	#0094			;
0060DA 0009     	NOP     				;
0060DC 84B7     	MOV.B   	@(#07,R11),R0	;
0060DE 2008     	TST     	R0,R0			;
0060E0 8948     	BT      	#090			;
0060E2 6D53     	MOV     	R5,R13		;
0060E4 6C43     	MOV     	R4,R12		;
0060E6 B0B4     	BRS     	#0168			;
0060E8 0009     	NOP     				;
0060EA 60D3     	MOV     	R13,R0		;
0060EC 009C     	MOV.B   	@(R0,R9),R0		;
0060EE 6D03     	MOV     	R0,R13		;
0060F0 E018     	MOV     	#18,R0		;
0060F2 3D02     	CMP/HS 	R0,R13		;
0060F4 893C     	BT      	#078			;
0060F6 E017     	MOV     	#17,R0		;
0060F8 30D8     	SUB     	R13,R0		;
0060FA 80B4     	MOV.B   	R0,@(#04,R11)	;
0060FC D15F     	MOV.L   	@(#17C,PC),R1	;
0060FE 5212     	MOV.L   	@(#08,R1),R2	;
006100 320C     	ADD     	R0,R2			;
006102 6120     	MOV.B   	@R2,R1		;
006104 214A     	XOR     	R4,R1			;
006106 2210     	MOV.B   	R1,@R2		;
006108 A035     	BRA     	#006A			;
00610A E001     	MOV     	#01,R0		;
00610C 84AC     	MOV.B   	@(#0C,R10),R0	;
00610E D15E     	MOV.L   	@(#178,PC),R1	;
006110 0D1C     	MOV.B   	@(R0,R1),R13	;
006112 60D3     	MOV     	R13,R0		;
006114 80B3     	MOV.B   	R0,@(#03,R11)	;
006116 2DD8     	TST     	R13,R13		;
006118 892A     	BT      	#054		;
00611A 84AA     	MOV.B   	@(#0A,R10),R0	;
00611C 0C9C     	MOV.B   	@(R0,R9),R12	;
00611E 60C3     	MOV     	R12,R0		;
006120 80B2     	MOV.B   	R0,@(#02,R11)	;
006122 3DCC     	ADD     	R12,R13		;
006124 4D01     	SHLR    	R13			;
006126 E018     	MOV     	#18,R0		;
006128 3D02     	CMP/HS 	R0,R13		;
00612A 8921     	BT      	#042			;
00612C 60D3     	MOV     	R13,R0		;
00612E 018C     	MOV.B   	@(R0,R8),R1		;
006130 3CD8     	SUB     	R13,R12		;
006132 E018     	MOV     	#18,R0		;
006134 3C02     	CMP/HS 	R0,R12		;
006136 891B     	BT      	#036			;
006138 E017     	MOV     	#17,R0		;
00613A 30D8     	SUB     	R13,R0		;
00613C 80B5     	MOV.B   	R0,@(#05,R11)	;
00613E E017     	MOV     	#17,R0		;
006140 30C8     	SUB     	R12,R0		;
006142 80B4     	MOV.B   	R0,@(#04,R11)	;
006144 6C43     	MOV     	R4,R12		;
006146 6D13     	MOV     	R1,R13		;
006148 B06F     	BRS     	#00DE			;
00614A 0009     	NOP     				;
00614C 2D5A     	XOR     	R5,R13		;
00614E 84A9     	MOV.B   	@(#09,R10),R0	;
006150 6C03     	MOV     	R0,R12		;
006152 B07E     	BRS     	#00FC			;
006154 0009     	NOP     				;
006156 D149     	MOV.L   	@(#124,PC),R1	;
006158 5212     	MOV.L   	@(#08,R1),R2	;
00615A 84B4     	MOV.B   	@(#04,R11),R0	;
00615C 012C     	MOV.B   	@(R0,R2),R1		;
00615E 21DA     	XOR     	R13,R1		;
006160 0214     	MOV.B   	R1,@(R0,R2)		;
006162 2D4A     	XOR     	R4,R13		;
006164 84B5     	MOV.B   	@(#05,R11),R0	;
006166 012C     	MOV.B   	@(R0,R2),R1		;
006168 2D1A     	XOR     	R1,R13		;
00616A 02D4     	MOV.B   	R13,@(R0,R2)	;
00616C A003     	BRA     	#0006			;
00616E E002     	MOV     	#02,R0		;
006170 A001     	BRA     	#0002			;
006172 E080     	MOV     	#80,R0		;
006174 E000     	MOV     	#00,R0		;
006176 4F26     	LDS.L   	@R15+,PR		;
006178 000B     	RTS     				;
00617A 0009     	NOP     				;
00617C 4F22     	STS.L   	PR,@-R15		;
00617E 6D43     	MOV     	R4,R13		;
006180 6C63     	MOV     	R6,R12		;
006182 B052     	BRS     	#00A4			;
006184 0009     	NOP     				;
006186 60D3     	MOV     	R13,R0		;
006188 80A3     	MOV.B   	R0,@(#03,R10)	;
00618A 6D53     	MOV     	R5,R13		;
00618C 6C73     	MOV     	R7,R12		;
00618E B04C     	BRS     	#0098			;
006190 0009     	NOP     				;
006192 60D3     	MOV     	R13,R0		;
006194 80A4     	MOV.B   	R0,@(#04,R10)	;
006196 6D53     	MOV     	R5,R13		;
006198 6C63     	MOV     	R6,R12		;
00619A B046     	BRS     	#008C			;
00619C 0009     	NOP     				;
00619E 60D3     	MOV     	R13,R0		;
0061A0 80A5     	MOV.B   	R0,@(#05,R10)	;
0061A2 6D43     	MOV     	R4,R13		;
0061A4 6C73     	MOV     	R7,R12		;
0061A6 B040     	BRS     	#0080			;
0061A8 0009     	NOP     				;
0061AA 60D3     	MOV     	R13,R0		;
0061AC 80A6     	MOV.B   	R0,@(#06,R10)	;
0061AE 6D53     	MOV     	R5,R13		;
0061B0 6C53     	MOV     	R5,R12		;
0061B2 B03A     	BRS     	#0074			;
0061B4 0009     	NOP     				;
0061B6 60D3     	MOV     	R13,R0		;
0061B8 80A7     	MOV.B   	R0,@(#07,R10)	;
0061BA 6D63     	MOV     	R6,R13		;
0061BC 6C63     	MOV     	R6,R12		;
0061BE B034     	BRS     	#0068			;
0061C0 0009     	NOP     				;
0061C2 60D3     	MOV     	R13,R0		;
0061C4 80A8     	MOV.B   	R0,@(#08,R10)	;
0061C6 84A3     	MOV.B   	@(#03,R10),R0	;
0061C8 6103     	MOV     	R0,R1			;
0061CA 84A7     	MOV.B   	@(#07,R10),R0	;
0061CC 201A     	XOR     	R1,R0			;
0061CE 80A0     	MOV.B   	R0,@(#00,R10)	;
0061D0 84A5     	MOV.B   	@(#05,R10),R0	;
0061D2 6103     	MOV     	R0,R1			;
0061D4 84A6     	MOV.B   	@(#06,R10),R0	;
0061D6 201A     	XOR     	R1,R0			;
0061D8 80A1     	MOV.B   	R0,@(#01,R10)	;
0061DA 84A4     	MOV.B   	@(#04,R10),R0	;
0061DC 6103     	MOV     	R0,R1			;
0061DE 84A8     	MOV.B   	@(#08,R10),R0	;
0061E0 201A     	XOR     	R1,R0			;
0061E2 80A2     	MOV.B   	R0,@(#02,R10)	;
0061E4 84A1     	MOV.B   	@(#01,R10),R0	;
0061E6 6D03     	MOV     	R0,R13		;
0061E8 84A0     	MOV.B   	@(#00,R10),R0	;
0061EA 6C03     	MOV     	R0,R12		;
0061EC B031     	BRS     	#0062			;
0061EE 0009     	NOP     				;
0061F0 60D3     	MOV     	R13,R0		;
0061F2 80A9     	MOV.B   	R0,@(#09,R10)	;
0061F4 84A2     	MOV.B   	@(#02,R10),R0	;
0061F6 6D03     	MOV     	R0,R13		;
0061F8 84A0     	MOV.B   	@(#00,R10),R0	;
0061FA 6C03     	MOV     	R0,R12		;
0061FC B029     	BRS     	#0052			;
0061FE 0009     	NOP     				;
006200 60D3     	MOV     	R13,R0		;
006202 80AA     	MOV.B   	R0,@(#0A,R10)	;
006204 84A1     	MOV.B   	@(#01,R10),R0	;
006206 6D03     	MOV     	R0,R13		;
006208 84A2     	MOV.B   	@(#02,R10),R0	;
00620A 6C03     	MOV     	R0,R12		;
00620C B021     	BRS     	#0042			;
00620E 0009     	NOP     				;
006210 60D3     	MOV     	R13,R0		;
006212 80AB     	MOV.B   	R0,@(#0B,R10)	;
006214 84AB     	MOV.B   	@(#0B,R10),R0	;
006216 6D03     	MOV     	R0,R13		;
006218 84A9     	MOV.B   	@(#09,R10),R0	;
00621A 6C03     	MOV     	R0,R12		;
00621C B005     	BRS     	#000A			;
00621E 0009     	NOP     				;
006220 60D3     	MOV     	R13,R0		;
006222 80AC     	MOV.B   	R0,@(#0C,R10)	;
006224 4F26     	LDS.L   	@R15+,PR		;
006226 000B     	RTS     				;
006228 0009     	NOP     				;
00622A 2DD8     	TST     	R13,R13		;
00622C 890E     	BT      	#01C			;
00622E 2CC8     	TST     	R12,R12		;
006230 890C     	BT      	#018			;
006232 60D3     	MOV     	R13,R0		;
006234 0D9C     	MOV.B   	@(R0,R9),R13	;
006236 60C3     	MOV     	R12,R0		;
006238 0C9C     	MOV.B   	@(R0,R9),R12	;
00623A E03F     	MOV     	#3F,R0		;
00623C 3DCC     	ADD     	R12,R13		;
00623E 3D02     	CMP/HS 	R0,R13		;
006240 8B00     	BF      	#000			;
006242 3D08     	SUB     	R0,R13		;
006244 60D3     	MOV     	R13,R0		;
006246 0D8C     	MOV.B   	@(R0,R8),R13	;
006248 000B     	RTS     				;
00624A 0009     	NOP     				;
00624C ED00     	MOV     	#00,R13		;
00624E 000B     	RTS     				;
006250 0009     	NOP     				;
006252 2CC8     	TST     	R12,R12		;
006254 890E     	BT      	#01C			;
006256 2DD8     	TST     	R13,R13		;
006258 890A     	BT      	#014			;
00625A 60D3     	MOV     	R13,R0		;
00625C 0D9C     	MOV.B   	@(R0,R9),R13	;
00625E 60C3     	MOV     	R12,R0		;
006260 0C9C     	MOV.B   	@(R0,R9),R12	;
006262 3DC8     	SUB     	R12,R13		;
006264 4D11     	CMP/PZ  	R13			;
006266 8901     	BT      	#002			;
006268 E03F     	MOV     	#3F,R0		;
00626A 3D0C     	ADD     	R0,R13		;
00626C 60D3     	MOV     	R13,R0		;
00626E 0D8C     	MOV.B   	@(R0,R8),R13	;
006270 000B     	RTS     				;
006272 0009     	NOP     				;
006274 ED80     	MOV     	#80,R13		;
006276 000B     	RTS     				;
006278 0009     	NOP     				;
00627A 0009     	NOP     				;
00627C 0F00
00627E 06EC
006280 0000
006282 6294
006284 0000
006286 62D4
006288 0000
00628A 6314
00628C 0F00
00628E 06F8
006290 0F00
006292 0708
006294 0102
006296 0408
006298 1020
00629A 0306
00629C 0C18
00629E 3023
0062A0 050A
0062A2 1428
0062A4 1326
0062A6 0F1E
0062A8 3C3B
0062AA 3529
0062AC 1122
0062AE 070E
0062B0 1C38
0062B2 3325
0062B4 0912
0062B6 240B
0062B8 162C
0062BA 1B36
0062BC 2F1D
0062BE 3A37
0062C0 2D19
0062C2 3227
0062C4 0D1A
0062C6 342B
0062C8 152A
0062CA 172E
0062CC 1F3E
0062CE 3F3D
0062D0 3931
0062D2 2101
0062D4 3F00
0062D6 0106
0062D8 020C
0062DA 071A
0062DC 0320
0062DE 0D23
0062E0 0830
0062E2 1B12
0062E4 0418
0062E6 2110
0062E8 0E34
0062EA 2436
0062EC 092D
0062EE 3126
0062F0 1C29
0062F2 1338
0062F4 053E
0062F6 190B
0062F8 221F
0062FA 112F
0062FC 0F17
0062FE 3533
006300 252C
006302 3728
006304 0A3D
006306 2E1E
006308 3216
00630A 272B
00630C 1D3C
00630E 2A15
006310 143B
006312 393A
006314 0015
006316 0000
006318 0000
00631A 1700
00631C 0000
00631E 0014
006320 0000
006322 0E09
006324 0000
006326 0000
006328 1100
00632A 1200
00632C 0007
00632E 0A00
006330 0000
006332 0005
006334 0000
006336 0801
006338 000F
00633A 0000
00633C 1600
00633E 0000
006340 0004
006342 0C00
006344 0003
006346 0013
006348 1002
00634A 0B00
00634C 0000
00634E 0000
006350 0006
006352 0D00
006354 0009     	NOP     				;
006356 4F22     	STS.L   	PR,@-R15		;
006358 DA1C     	MOV.L   	@(#070,PC),R10	;
00635A ED00     	MOV     	#00,R13		;
00635C 84A2     	MOV.B   	@(#02,R10),R0	;
00635E 8800     	CMP/EQ  	#00,R0		;
006360 8906     	BT      	#00C			;
006362 8801     	CMP/EQ  	#01,R0		;
006364 8904     	BT      	#008			;
006366 84A1     	MOV.B   	@(#01,R10),R0	;
006368 6103     	MOV     	R0,R1			;
00636A 84A0     	MOV.B   	@(#00,R10),R0	;
00636C 3010     	CMP/EQ 	R1,R0			;
00636E 8B09     	BF      	#012			;
006370 D018     	MOV.L   	@(#060,PC),R0	;
006372 400B     	JSR     	@R0			;
006374 0009     	NOP     				;
006376 CB80     	OR      	#80,R0		;
006378 4028     	SHLL16  	R0			;
00637A 4018     	SHLL8   	R0			;
00637C EC00     	MOV     	#00,R12		;
00637E 2C0B     	OR      	R0,R12		;
006380 A020     	BRA     	#0040			;
006382 0009     	NOP     				;
006384 84A2     	MOV.B   	@(#02,R10),R0	;
006386 8803     	CMP/EQ  	#03,R0		;
006388 8B01     	BF      	#002			;
00638A E002     	MOV     	#02,R0		;
00638C 2D0B     	OR      	R0,R13		;
00638E 84A1     	MOV.B   	@(#01,R10),R0	;
006390 E118     	MOV     	#18,R1		;
006392 201E     	MULU.W  	R1,R0			;
006394 D20E     	MOV.L   	@(#038,PC),R2	;
006396 011A     	STS     	MACL, R1		;
006398 321C     	ADD     	R1,R2			;
00639A 6020     	MOV.B   	@R2,R0		;
00639C C880     	TST     	#80,R0		;
00639E C93F     	AND     	#3F,R0		;
0063A0 2200     	MOV.B   	R0,@R2		;
0063A2 8901     	BT      	#002			;
0063A4 E001     	MOV     	#01,R0		;
0063A6 2D0B     	OR      	R0,R13		;
0063A8 D00A     	MOV.L   	@(#028,PC),R0	;
0063AA 400B     	JSR     	@R0			;
0063AC 0009     	NOP     				;
0063AE CB40     	OR      	#40,R0		;
0063B0 4028     	SHLL16  	R0			;
0063B2 4018     	SHLL8   	R0			;
0063B4 EC0C     	MOV     	#0C,R12		;
0063B6 2C0B     	OR      	R0,R12		;
0063B8 64C3     	MOV     	R12,R4		;
0063BA 65D3     	MOV     	R13,R5		;
0063BC DB06     	MOV.L   	@(#018,PC),R11	;
0063BE C321     	TRAPA   	#21			;
0063C0 6D53     	MOV     	R5,R13		;
0063C2 6C43     	MOV     	R4,R12		;
0063C4 EB00     	MOV     	#00,R11		;
0063C6 4F26     	LDS.L   	@R15+,PR		;
0063C8 000B     	RTS     				;
0063CA 0009     	NOP     				;
0063CC 0F00
0063CE 06EC
0063D0 0907
0063D2 4E10
0063D4 0000
0063D6 9170
0063D8 0281
0063DA 0000

0063DC 0009     	NOP     				;
L0063DE:
0063DE C323     	TRAPA   	#35			;
0063E0 60B9     	SWAP.W   	R11,R0		;
0063E2 600E     	EXTS.B   	R0,R0			;
0063E4 8805     	CMP/EQ  	#05,R0		;
0063E6 8BFA     	BF      	L0063DE		;
0063E8 60BC     	EXTU.B   	R11,R0		;
0063EA 8810     	CMP/EQ  	#10,R0		;
0063EC 8901     	BT      	L0063F2		;
0063EE AFF6     	BRA     	L0063DE		;
0063F0 0009     	NOP     				;
L0063F2:
0063F2 DDD5     	MOV.L   	@(#354,PC),R13	;
0063F4 911C     	MOV.W   	@(#038,PC),R1	;
0063F6 84DB     	MOV.B   	@(#0B,R13),R0	;
0063F8 88FF     	CMP/EQ  	#FF,R0		;
0063FA 8917     	BT      	L00642C		;
0063FC 600C     	EXTU.B   	R0,R0			;
0063FE 201E     	MULU.W  	R1,R0			;
006400 D20C     	MOV.L   	@(#030,PC),R2	;
006402 001A     	STS     	MACL, R0		;
006404 720C     	ADD     	#0C,R2		;
006406 320C     	ADD     	R0,R2			;
006408 1D20     	MOV.L   	R2,@(#0,R13)	;
00640A 6022     	MOV.L   	@R2,R0		;
00640C 1D01     	MOV.L   	R0,@(#4,R13)	;
00640E 600C     	EXTU.B   	R0,R0			;
006410 8802     	CMP/EQ  	#02,R0		;
006412 8B01     	BF      	L006418		;
006414 E000     	MOV     	#00,R0		;
006416 2202     	MOV.L   	R0,@R2		;
L006418:
006418 B00E     	BRS     	L006438		;
00641A 0009     	NOP     				;
00641C 52D0     	MOV.L   	@(#00,R13),R2	;
00641E 6022     	MOV.L   	@R2,R0		;
006420 2008     	TST     	R0,R0			;
006422 8B01     	BF      	L006428		;
006424 51D1     	MOV.L   	@(#04,R13),R1	;
006426 2212     	MOV.L   	R1,@R2		;
L006428:
006428 DBC6     	MOV.L   	@(#318,PC),R11	;
00642A C321     	TRAPA   	#33			;
L00642C:
00642C AFD7     	BRA     	L0063DE		;
00642E 0009     	NOP     				;
006430 0930
006432 0009
006434 0900
006436 0230

L006438:
006438 4F22     	STS.L   	PR,@-R15		;
00643A DAC4     	MOV.L   	@(#310,PC),R10	;
00643C DBC4     	MOV.L   	@(#310,PC),R11	;
00643E B022     	BRS     	#0044			;
006440 0009     	NOP     				;
006442 B02F     	BRS     	#005E			;
006444 0009     	NOP     				;
006446 B01E     	BRS     	#003C			;
006448 0009     	NOP     				;
00644A 84D9     	MOV.B   	@(#09,R13),R0	;
00644C 2008     	TST     	R0,R0			;
00644E 8917     	BT      	#02E			;
006450 D2C0     	MOV.L   	@(#300,PC),R2	;
006452 6020     	MOV.B   	@R2,R0		;
006454 8800     	CMP/EQ  	#00,R0		;
006456 8913     	BT      	#026			;
006458 E105     	MOV     	#05,R1		;
00645A 3016     	CMP/HI 	R1,R0			;
00645C 8B00     	BF      	#000			;
00645E E005     	MOV     	#05,R0		;
006460 80DA     	MOV.B   	R0,@(#0A,R13)	;
006462 B01F     	BRS     	#003E			;
006464 0009     	NOP     				;
006466 84D8     	MOV.B   	@(#08,R13),R0	;
006468 2008     	TST     	R0,R0			;
00646A 8909     	BT      	#012			;
00646C B00B     	BRS     	#0016			;
00646E 0009     	NOP     				;
006470 84D9     	MOV.B   	@(#09,R13),R0	;
006472 2008     	TST     	R0,R0			;
006474 8904     	BT      	#008			;
006476 84DA     	MOV.B   	@(#0A,R13),R0	;
006478 70FF     	ADD     	#FF,R0		;
00647A 80DA     	MOV.B   	R0,@(#0A,R13)	;
00647C 4015     	CMP/PL  	R0			;
00647E 89F0     	BT      	#1E0			;
006480 4F26     	LDS.L   	@R15+,PR		;
006482 000B     	RTS     				;
006484 0009     	NOP     				;

006486 4F22     	STS.L   	PR,@-R15		;
006488 E000     	MOV     	#00,R0		;
00648A 80D9     	MOV.B   	R0,@(#09,R13)	;
00648C E900     	MOV     	#00,R9		;
00648E B03D     	BRS     	#007A			;
006490 0009     	NOP     				;
006492 7901     	ADD     	#01,R9		;
006494 6093     	MOV     	R9,R0			;
006496 8815     	CMP/EQ  	#15,R0		;
006498 8BF9     	BF      	#1F2			;
00649A B010     	BRS     	#0020			;
00649C 0009     	NOP     				;
00649E 4F26     	LDS.L   	@R15+,PR		;
0064A0 000B     	RTS     				;
0064A2 0009     	NOP     				;
0064A4 4F22     	STS.L   	PR,@-R15		;
0064A6 E000     	MOV     	#00,R0		;
0064A8 80D8     	MOV.B   	R0,@(#08,R13)	;
0064AA E900     	MOV     	#00,R9		;
0064AC B085     	BRS     	#010A			;
0064AE 0009     	NOP     				;
0064B0 7901     	ADD     	#01,R9		;
0064B2 6093     	MOV     	R9,R0			;
0064B4 880D     	CMP/EQ  	#0D,R0		;
0064B6 8BF9     	BF      	#1F2			;
0064B8 4F26     	LDS.L   	@R15+,PR		;
0064BA 000B     	RTS     				;
0064BC 0009     	NOP     				;
0064BE 52D0     	MOV.L   	@(#00,R13),R2	;
0064C0 6093     	MOV     	R9,R0			;
0064C2 4008     	SHLL2   	R0			;
0064C4 320C     	ADD     	R0,R2			;
0064C6 6C23     	MOV     	R2,R12		;
0064C8 E001     	MOV     	#01,R0		;
0064CA 6708     	SWAP.B   	R0,R7			;
0064CC 6609     	SWAP.W   	R0,R6			;
0064CE 6579     	SWAP.W   	R7,R5			;
0064D0 E300     	MOV     	#00,R3		;
0064D2 E400     	MOV     	#00,R4		;
0064D4 E81A     	MOV     	#1A,R8		;
0064D6 6121     	MOV.W   	@R2,R1		;
0064D8 611D     	EXTU.W   	R1,R1			;
0064DA 231A     	XOR     	R1,R3			;
0064DC E000     	MOV     	#00,R0		;
0064DE 4400     	SHLL    	R4			;
0064E0 4024     	ROTCL   	R0			;
0064E2 2458     	TST     	R5,R4			;
0064E4 4024     	ROTCL   	R0			;
0064E6 2468     	TST     	R6,R4			;
0064E8 4024     	ROTCL   	R0			;
0064EA 2478     	TST     	R7,R4			;
0064EC 4024     	ROTCL   	R0			;
0064EE 4008     	SHLL2   	R0			;
0064F0 00AE     	MOV.L   	@(R0,R10),R0	;
0064F2 241A     	XOR     	R1,R4			;
0064F4 240A     	XOR     	R0,R4			;
0064F6 7256     	ADD     	#56,R2		;
0064F8 78FF     	ADD     	#FF,R8		;
0064FA 4815     	CMP/PL  	R8			;
0064FC 89EB     	BT      	#1D6			;
0064FE 6033     	MOV     	R3,R0			;
006500 204B     	OR      	R4,R0			;
006502 2008     	TST     	R0,R0			;
006504 8957     	BT      	#0AE			;
006506 E801     	MOV     	#01,R8		;
006508 A028     	BRA     	#0050			;
00650A 0009     	NOP     				;
00650C 52D0     	MOV.L   	@(#00,R13),R2	;
00650E 6093     	MOV     	R9,R0			;
006510 4008     	SHLL2   	R0			;
006512 320C     	ADD     	R0,R2			;
006514 6C23     	MOV     	R2,R12		;
006516 E001     	MOV     	#01,R0		;
006518 6708     	SWAP.B   	R0,R7			;
00651A 6609     	SWAP.W   	R0,R6			;
00651C 6579     	SWAP.W   	R7,R5			;
00651E E300     	MOV     	#00,R3		;
006520 E400     	MOV     	#00,R4		;
006522 E81A     	MOV     	#1A,R8		;
006524 6121     	MOV.W   	@R2,R1		;
006526 8521     	MOV.W   	@(#02,R2),R0	;
006528 4128     	SHLL16  	R1			;
00652A 600D     	EXTU.W   	R0,R0			;
00652C 210B     	OR      	R0,R1			;
00652E 231A     	XOR     	R1,R3			;
006530 E000     	MOV     	#00,R0		;
006532 4400     	SHLL    	R4			;
006534 4024     	ROTCL   	R0			;
006536 2458     	TST     	R5,R4			;
006538 4024     	ROTCL   	R0			;
00653A 2468     	TST     	R6,R4			;
00653C 4024     	ROTCL   	R0			;
00653E 2478     	TST     	R7,R4			;
006540 4024     	ROTCL   	R0			;
006542 4008     	SHLL2   	R0			;
006544 00AE     	MOV.L   	@(R0,R10),R0	;
006546 241A     	XOR     	R1,R4			;
006548 240A     	XOR     	R0,R4			;
00654A 7256     	ADD     	#56,R2		;
00654C 78FF     	ADD     	#FF,R8		;
00654E 4815     	CMP/PL  	R8			;
006550 89E8     	BT      	#1D0			;
006552 6033     	MOV     	R3,R0			;
006554 204B     	OR      	R4,R0			;
006556 2008     	TST     	R0,R0			;
006558 892D     	BT      	#05A			;
00655A E803     	MOV     	#03,R8		;
00655C 653C     	EXTU.B   	R3,R5			;
00655E 664C     	EXTU.B   	R4,R6			;
006560 2558     	TST     	R5,R5			;
006562 8B06     	BF      	#00C			;
006564 2668     	TST     	R6,R6			;
006566 8921     	BT      	#042			;
006568 84D9     	MOV.B   	@(#09,R13),R0	;
00656A CB80     	OR      	#80,R0		;
00656C 80D9     	MOV.B   	R0,@(#09,R13)	;
00656E A01D     	BRA     	#003A			;
006570 0009     	NOP     				;
006572 2668     	TST     	R6,R6			;
006574 89F8     	BT      	#1F0			;
006576 605C     	EXTU.B   	R5,R0			;
006578 01BC     	MOV.B   	@(R0,R11),R1	;
00657A 611C     	EXTU.B   	R1,R1			;
00657C 606C     	EXTU.B   	R6,R0			;
00657E 07BC     	MOV.B   	@(R0,R11),R7	;
006580 677C     	EXTU.B   	R7,R7			;
006582 0008     	CLRT    				;
006584 371A     	SUBC    	R1,R7			;
006586 8B01     	BF      	#002			;
006588 77FF     	ADD     	#FF,R7		;
00658A 677C     	EXTU.B   	R7,R7			;
00658C E019     	MOV     	#19,R0		;
00658E 3706     	CMP/HI 	R0,R7			;
006590 89EA     	BT      	#1D4			;
006592 3078     	SUB     	R7,R0			;
006594 6703     	MOV     	R0,R7			;
006596 E056     	MOV     	#56,R0		;
006598 270E     	MULU.W  	R0,R7			;
00659A 021A     	STS     	MACL, R2		;
00659C 32CC     	ADD     	R12,R2		;
00659E 328C     	ADD     	R8,R2			;
0065A0 6020     	MOV.B   	@R2,R0		;
0065A2 205A     	XOR     	R5,R0			;
0065A4 2200     	MOV.B   	R0,@R2		;
0065A6 84D9     	MOV.B   	@(#09,R13),R0	;
0065A8 7001     	ADD     	#01,R0		;
0065AA 80D9     	MOV.B   	R0,@(#09,R13)	;
0065AC 4319     	SHLR8   	R3			;
0065AE 4419     	SHLR8   	R4			;
0065B0 78FF     	ADD     	#FF,R8		;
0065B2 4811     	CMP/PZ  	R8			;
0065B4 89D2     	BT      	#1A4			;
0065B6 000B     	RTS     				;
0065B8 0009     	NOP     				;
0065BA 2F96     	MOV.L   	R9,@-R15		;
0065BC 6293     	MOV     	R9,R2			;
0065BE 4200     	SHLL    	R2			;
0065C0 E056     	MOV     	#56,R0		;
0065C2 202E     	MULU.W  	R2,R0			;
0065C4 021A     	STS     	MACL, R2		;
0065C6 50D0     	MOV.L   	@(#00,R13),R0	;
0065C8 D963     	MOV.L   	@(#18C,PC),R9	;
0065CA 320C     	ADD     	R0,R2			;
0065CC 390C     	ADD     	R0,R9			;
0065CE 6C23     	MOV     	R2,R12		;
0065D0 E001     	MOV     	#01,R0		;
0065D2 6708     	SWAP.B   	R0,R7			;
0065D4 6609     	SWAP.W   	R0,R6			;
0065D6 6579     	SWAP.W   	R7,R5			;
0065D8 6121     	MOV.W   	@R2,R1		;
0065DA 611D     	EXTU.W   	R1,R1			;
0065DC 6313     	MOV     	R1,R3			;
0065DE 6413     	MOV     	R1,R4			;
0065E0 7256     	ADD     	#56,R2		;
0065E2 E82A     	MOV     	#2A,R8		;
0065E4 6121     	MOV.W   	@R2,R1		;
0065E6 8521     	MOV.W   	@(#02,R2),R0	;
0065E8 4128     	SHLL16  	R1			;
0065EA 600D     	EXTU.W   	R0,R0			;
0065EC 210B     	OR      	R0,R1			;
0065EE 231A     	XOR     	R1,R3			;
0065F0 E000     	MOV     	#00,R0		;
0065F2 4400     	SHLL    	R4			;
0065F4 4024     	ROTCL   	R0			;
0065F6 2458     	TST     	R5,R4			;
0065F8 4024     	ROTCL   	R0			;
0065FA 2468     	TST     	R6,R4			;
0065FC 4024     	ROTCL   	R0			;
0065FE 2478     	TST     	R7,R4			;
006600 4024     	ROTCL   	R0			;
006602 4008     	SHLL2   	R0			;
006604 00AE     	MOV.L   	@(R0,R10),R0	;
006606 241A     	XOR     	R1,R4			;
006608 240A     	XOR     	R0,R4			;
00660A 7258     	ADD     	#58,R2		;
00660C 3292     	CMP/HS 	R9,R2			;
00660E 894D     	BT      	#09A			;
006610 78FF     	ADD     	#FF,R8		;
006612 4815     	CMP/PL  	R8			;
006614 89E6     	BT      	#1CC			;
006616 6121     	MOV.W   	@R2,R1		;
006618 4128     	SHLL16  	R1			;
00661A 231A     	XOR     	R1,R3			;
00661C 604D     	EXTU.W   	R4,R0			;
00661E 4429     	SHLR16  	R4			;
006620 4428     	SHLL16  	R4			;
006622 4400     	SHLL    	R4			;
006624 240B     	OR      	R0,R4			;
006626 E000     	MOV     	#00,R0		;
006628 4024     	ROTCL   	R0			;
00662A 2458     	TST     	R5,R4			;
00662C 4024     	ROTCL   	R0			;
00662E 0018     	SETT    				;
006630 4024     	ROTCL   	R0			;
006632 0018     	SETT    				;
006634 4024     	ROTCL   	R0			;
006636 4008     	SHLL2   	R0			;
006638 00AE     	MOV.L   	@(R0,R10),R0	;
00663A 241A     	XOR     	R1,R4			;
00663C 240A     	XOR     	R0,R4			;
00663E 62F2     	MOV.L   	@R15,R2		;
006640 4208     	SHLL2   	R2			;
006642 50D0     	MOV.L   	@(#00,R13),R0	;
006644 320C     	ADD     	R0,R2			;
006646 D044     	MOV.L   	@(#110,PC),R0	;
006648 320C     	ADD     	R0,R2			;
00664A 6122     	MOV.L   	@R2,R1		;
00664C 6119     	SWAP.W   	R1,R1			;
00664E 231A     	XOR     	R1,R3			;
006650 E000     	MOV     	#00,R0		;
006652 4400     	SHLL    	R4			;
006654 4024     	ROTCL   	R0			;
006656 2458     	TST     	R5,R4			;
006658 4024     	ROTCL   	R0			;
00665A 2468     	TST     	R6,R4			;
00665C 4024     	ROTCL   	R0			;
00665E 2478     	TST     	R7,R4			;
006660 4024     	ROTCL   	R0			;
006662 4008     	SHLL2   	R0			;
006664 00AE     	MOV.L   	@(R0,R10),R0	;
006666 241A     	XOR     	R1,R4			;
006668 240A     	XOR     	R0,R4			;
00666A 7234     	ADD     	#34,R2		;
00666C 6122     	MOV.L   	@R2,R1		;
00666E 6119     	SWAP.W   	R1,R1			;
006670 231A     	XOR     	R1,R3			;
006672 E000     	MOV     	#00,R0		;
006674 4400     	SHLL    	R4			;
006676 4024     	ROTCL   	R0			;
006678 2458     	TST     	R5,R4			;
00667A 4024     	ROTCL   	R0			;
00667C 2468     	TST     	R6,R4			;
00667E 4024     	ROTCL   	R0			;
006680 2478     	TST     	R7,R4			;
006682 4024     	ROTCL   	R0			;
006684 4008     	SHLL2   	R0			;
006686 00AE     	MOV.L   	@(R0,R10),R0	;
006688 241A     	XOR     	R1,R4			;
00668A 240A     	XOR     	R0,R4			;
00668C 6033     	MOV     	R3,R0			;
00668E 204B     	OR      	R4,R0			;
006690 2008     	TST     	R0,R0			;
006692 8944     	BT      	#088			;
006694 E803     	MOV     	#03,R8		;
006696 653C     	EXTU.B   	R3,R5			;
006698 664C     	EXTU.B   	R4,R6			;
00669A 2558     	TST     	R5,R5			;
00669C 8B0A     	BF      	#014			;
00669E 2668     	TST     	R6,R6			;
0066A0 8938     	BT      	#070			;
0066A2 84D8     	MOV.B   	@(#08,R13),R0	;
0066A4 CB80     	OR      	#80,R0		;
0066A6 80D8     	MOV.B   	R0,@(#08,R13)	;
0066A8 A034     	BRA     	#0068			;
0066AA 0009     	NOP     				;
0066AC D02A     	MOV.L   	@(#0A8,PC),R0	;
0066AE 3208     	SUB     	R0,R2			;
0066B0 AFAE     	BRA     	#1F5C			;
0066B2 0009     	NOP     				;
0066B4 2668     	TST     	R6,R6			;
0066B6 89F4     	BT      	#1E8			;
0066B8 605C     	EXTU.B   	R5,R0			;
0066BA 01BC     	MOV.B   	@(R0,R11),R1	;
0066BC 611C     	EXTU.B   	R1,R1			;
0066BE 606C     	EXTU.B   	R6,R0			;
0066C0 07BC     	MOV.B   	@(R0,R11),R7	;
0066C2 677C     	EXTU.B   	R7,R7			;
0066C4 0008     	CLRT    				;
0066C6 371A     	SUBC    	R1,R7			;
0066C8 8B01     	BF      	#002			;
0066CA 77FF     	ADD     	#FF,R7		;
0066CC 677C     	EXTU.B   	R7,R7			;
0066CE E02C     	MOV     	#2C,R0		;
0066D0 3706     	CMP/HI 	R0,R7			;
0066D2 89E6     	BT      	#1CC			;
0066D4 3078     	SUB     	R7,R0			;
0066D6 6703     	MOV     	R0,R7			;
0066D8 E02B     	MOV     	#2B,R0		;
0066DA 3702     	CMP/HS 	R0,R7			;
0066DC 8922     	BT      	#044			;
0066DE E058     	MOV     	#58,R0		;
0066E0 270E     	MULU.W  	R0,R7			;
0066E2 021A     	STS     	MACL, R2		;
0066E4 32CC     	ADD     	R12,R2		;
0066E6 E002     	MOV     	#02,R0		;
0066E8 2808     	TST     	R0,R8			;
0066EA 8B01     	BF      	#002			;
0066EC E056     	MOV     	#56,R0		;
0066EE 320C     	ADD     	R0,R2			;
0066F0 3292     	CMP/HS 	R9,R2			;
0066F2 8B01     	BF      	#002			;
0066F4 D018     	MOV.L   	@(#060,PC),R0	;
0066F6 3208     	SUB     	R0,R2			;
0066F8 3292     	CMP/HS 	R9,R2			;
0066FA 8B01     	BF      	#002			;
0066FC D016     	MOV.L   	@(#058,PC),R0	;
0066FE 3208     	SUB     	R0,R2			;
006700 E001     	MOV     	#01,R0		;
006702 2808     	TST     	R0,R8			;
006704 8900     	BT      	#000			;
006706 7201     	ADD     	#01,R2		;
006708 6020     	MOV.B   	@R2,R0		;
00670A 205A     	XOR     	R5,R0			;
00670C 2200     	MOV.B   	R0,@R2		;
00670E 84D8     	MOV.B   	@(#08,R13),R0	;
006710 7001     	ADD     	#01,R0		;
006712 80D8     	MOV.B   	R0,@(#08,R13)	;
006714 4319     	SHLR8   	R3			;
006716 4419     	SHLR8   	R4			;
006718 78FF     	ADD     	#FF,R8		;
00671A 4811     	CMP/PZ  	R8			;
00671C 89BB     	BT      	#176			;
00671E 69F6     	MOV.L   	@R15+,R9		;
006720 000B     	RTS     				;
006722 0009     	NOP     				;
006724 62F2     	MOV.L   	@R15,R2		;
006726 4208     	SHLL2   	R2			;
006728 3700     	CMP/EQ 	R0,R7			;
00672A 8901     	BT      	#002			;
00672C E034     	MOV     	#34,R0		;
00672E 320C     	ADD     	R0,R2			;
006730 E002     	MOV     	#02,R0		;
006732 2808     	TST     	R0,R8			;
006734 8B00     	BF      	#000			;
006736 7202     	ADD     	#02,R2		;
006738 D007     	MOV.L   	@(#01C,PC),R0	;
00673A 320C     	ADD     	R0,R2			;
00673C 50D0     	MOV.L   	@(#00,R13),R0	;
00673E 320C     	ADD     	R0,R2			;
006740 AFDE     	BRA     	#1FBC			;
006742 0009     	NOP     				;
006744 0501
006746 0011
006748 0F00
00674A 0710
00674C 0000
00674E 685C
006750 0000
006752 675C
006754 0F00
006756 0262
006758 0000
00675A 08BC
00675C 0000
00675E 0119
006760 0232
006762 1AC6
006764 03DF
006766 33EE
006768 1B68
00676A C74B
00676C 0464
00676E E00E
006770 348D
006772 EF81
006774 1CC1
006776 69F8
006778 C808
00677A 4C71
00677C 058A
00677E 652F
006780 E124
006782 0F21
006784 3593
006786 8EDA
006788 F012
00678A 8245
00678C 1DB5
00678E C27D
006790 6A27
006792 F9B9
006794 C99A
006796 0978
006798 4DE4
00679A 72A6
00679C 06BF
00679E 8B62
0067A0 66DD
0067A2 30FD
0067A4 E298
0067A6 25B3
0067A8 1091
0067AA 2288
0067AC 36D0
0067AE 94CE
0067B0 8F96
0067B2 DBBD
0067B4 F1D2
0067B6 135C
0067B8 8338
0067BA 4640
0067BC 1E42
0067BE B6A3
0067C0 C348
0067C2 7E6E
0067C4 6B3A
0067C6 2854
0067C8 FA85
0067CA BA3D
0067CC CA5E
0067CE 9B9F
0067D0 0A15
0067D2 792B
0067D4 4ED4
0067D6 E5AC
0067D8 73F3
0067DA A757
0067DC 0770
0067DE C0F7
0067E0 8C80
0067E2 630D
0067E4 674A
0067E6 DEED
0067E8 31C5
0067EA FE18
0067EC E3A5
0067EE 9977
0067F0 26B8
0067F2 B47C
0067F4 1144
0067F6 92D9
0067F8 2320
0067FA 892E
0067FC 373F
0067FE D15B
006800 95BC
006802 CFCD
006804 9087
006806 97B2
006808 DCFC
00680A BE61
00680C F256
00680E D3AB
006810 142A
006812 5D9E
006814 843C
006816 3953
006818 476D
00681A 41A2
00681C 1F2D
00681E 43D8
006820 B77B     	BRS     	#0EF6			;
006822 A476     	BRA     	#08EC			;
006824 C417     	MOV.B   	@(#017,GBR),R0	;
006826 49EC
006828 7F0C
00682A 6FF6
00682C 6CA1
00682E 3B52
006830 299D
006832 55AA
006834 FB60     	
006836 86B1     	
006838 BBCC     	BRS     	#1798			;
00683A 3E5A     	SUBC    	R5,R14		;
00683C CB59     	OR      	#59,R0		;
00683E 5FB0     	MOV.L   	@(#00,R11),R15	;
006840 9CA9     	MOV.W   	@(#152,PC),R12	;
006842 A051     	BRA     	#00A2			;
006844 0BF5     	MOV.W   	R15,@(R0,R11)	;
006846 16EB     	MOV.L   	R14,@(#2C,R6)	;
006848 7A75     	ADD     	#75,R10		;
00684A 2CD7     	DIV0S   	R13,R12		;
00684C 4FAE     	LDC     	R15,???		;
00684E D5E9     	MOV.L   	@(#3A4,PC),R5	;
006850 E6E7     	MOV     	#E7,R6		;
006852 ADE8     	BRA     	#1BD0			;
006854 74D6     	ADD     	#D6,R4		;
006856 F4EA
006858 A850
00685A 58AF
00685C 011C
00685E 1C1D
006860 011C
006862 1D00
006864 011D
006866 011D
006868 011D
00686A 0000
00686C 0001
00686E 1C1D
006870 0001
006872 1D00
006874 0000
006876 011D
006878 0000
00687A 0000
00687C 1C1C
00687E 1C1D
006880 1C1C
006882 1D00
006884 1C1D
006886 011D
006888 1C1D
00688A 0000
00688C 1D01
00688E 1C1D
006890 1D01
006892 1D00
006894 1D00
006896 011D
006898 1D00
00689A 0000
00689C D93A     	MOV.L   	@(#0E8,PC),R9	;
00689E 6090     	MOV.B   	@R9,R0		;
0068A0 C80E     	TST     	#0E,R0		;
0068A2 8B32     	BF      	#064			;
0068A4 D936     	MOV.L   	@(#0D8,PC),R9	;
0068A6 4F22     	STS.L   	PR,@-R15		;
0068A8 490B     	JSR     	@R9			;
0068AA 0009     	NOP     				;
0068AC 4F26     	LDS.L   	@R15+,PR		;
0068AE 88FF     	CMP/EQ  	#FF,R0		;
0068B0 8926     	BT      	#04C			;
0068B2 8801     	CMP/EQ  	#01,R0		;
0068B4 8929     	BT      	#052			;
0068B6 A03B     	BRA     	#0076			;
0068B8 0009     	NOP     				;
L0068BA:							;cdb command 62 "Delete Sector Data"
0068BA D931     	MOV.L   	@(#0C4,PC),R9	;
0068BC 4F22     	STS.L   	PR,@-R15		;
0068BE 490B     	JSR     	@R9			;
0068C0 0009     	NOP     				;
0068C2 4F26     	LDS.L   	@R15+,PR		;
0068C4 88FF     	CMP/EQ  	#FF,R0		;
0068C6 891B     	BT      	#036			;
0068C8 8801     	CMP/EQ  	#01,R0		;
0068CA 891E     	BT      	#03C			;
0068CC A020     	BRA     	#0040			;
0068CE 0009     	NOP     				;
0068D0 D92D     	MOV.L   	@(#0B4,PC),R9	;
0068D2 6090     	MOV.B   	@R9,R0		;
0068D4 C80E     	TST     	#0E,R0		;
0068D6 8B18     	BF      	#030			;
0068D8 6029     	SWAP.W   	R2,R0			;
0068DA 6008     	SWAP.B   	R0,R0			;
0068DC 600C     	EXTU.B   	R0,R0			;
0068DE E318     	MOV     	#18,R3		;
0068E0 633C     	EXTU.B   	R3,R3			;
0068E2 3032     	CMP/HS 	R3,R0			;
0068E4 8B01     	BF      	#002			;
0068E6 A00B     	BRA     	#0016			;
0068E8 0009     	NOP     				;
0068EA 632D     	EXTU.W   	R2,R3			;
0068EC D927     	MOV.L   	@(#09C,PC),R9	;
0068EE 6090     	MOV.B   	@R9,R0		;
0068F0 600C     	EXTU.B   	R0,R0			;
0068F2 3306     	CMP/HI 	R0,R3			;
0068F4 8909     	BT      	#012			;
0068F6 E000     	MOV     	#00,R0		;
0068F8 3030     	CMP/EQ 	R3,R0			;
0068FA 8906     	BT      	#00C			;
0068FC A018     	BRA     	#0030			;
0068FE 0009     	NOP     				;
006900 D01A     	MOV.L   	@(#068,PC),R0	;
006902 3118     	SUB     	R1,R1			;
006904 3228     	SUB     	R2,R2			;
006906 A026     	BRA     	#004C			;
006908 3BB8     	SUB     	R11,R11		;
00690A D019     	MOV.L   	@(#064,PC),R0	;
00690C A023     	BRA     	#0046			;
00690E 3BB8     	SUB     	R11,R11		;
006910 DB14     	MOV.L   	@(#050,PC),R11	;
006912 4F22     	STS.L   	PR,@-R15		;
006914 4B0B     	JSR     	@R11			;
006916 0009     	NOP     				;
006918 4F26     	LDS.L   	@R15+,PR		;
00691A 8B01     	BF      	#002			;
00691C AFF5     	BRA     	#1FEA			;
00691E 0009     	NOP     				;
006920 DB11     	MOV.L   	@(#044,PC),R11	;
006922 6319     	SWAP.W   	R1,R3			;
006924 6338     	SWAP.B   	R3,R3			;
006926 633C     	EXTU.B   	R3,R3			;
006928 2B3B     	OR      	R3,R11		;
00692A D012     	MOV.L   	@(#048,PC),R0	;
00692C A013     	BRA     	#0026			;
00692E 0009     	NOP     				;
006930 DB0C     	MOV.L   	@(#030,PC),R11	;
006932 4F22     	STS.L   	PR,@-R15		;
006934 4B0B     	JSR     	@R11			;
006936 0009     	NOP     				;
006938 4F26     	LDS.L   	@R15+,PR		;
00693A 8B01     	BF      	#002			;
00693C AFE5     	BRA     	#1FCA			;
00693E 0009     	NOP     				;
006940 DB09     	MOV.L   	@(#024,PC),R11	;
006942 6319     	SWAP.W   	R1,R3			;
006944 6338     	SWAP.B   	R3,R3			;
006946 633C     	EXTU.B   	R3,R3			;
006948 2B3B     	OR      	R3,R11		;
00694A D00A     	MOV.L   	@(#028,PC),R0	;
00694C 4F22     	STS.L   	PR,@-R15		;
00694E 400B     	JSR     	@R0			;
006950 0009     	NOP     				;
006952 4F26     	LDS.L   	@R15+,PR		;
006954 D008     	MOV.L   	@(#020,PC),R0	;
006956 4F22     	STS.L   	PR,@-R15		;
006958 400B     	JSR     	@R0			;
00695A 0009     	NOP     				;
00695C 4F26     	LDS.L   	@R15+,PR		;
00695E 000B     	RTS     				;
006960 0009     	NOP     				;
006962 0009     	NOP     				;
006964 0000
006966 6A40
006968 0C81
00696A 0000
00696C 0000
00696E 91E8
006970 0000
006972 91EC
006974 0000
006976 91FE
006978 0000
00697A 91A4
00697C 0000
00697E 91A8
006980 0000
006982 6DAC
006984 0000
006986 FFFF
006988 0F00
00698A 0724
00698C 0F00
00698E 034A
006990 D922     	MOV.L   	@(#088,PC),R9	;
006992 490B     	JSR     	@R9			;
006994 0009     	NOP     				;
006996 3BB8     	SUB     	R11,R11		;
006998 C323     	TRAPA   	#23			;
00699A 60B9     	SWAP.W   	R11,R0		;
00699C 600C     	EXTU.B   	R0,R0			;
00699E E103     	MOV     	#03,R1		;
0069A0 3100     	CMP/EQ 	R0,R1			;
0069A2 8B01     	BF      	#002			;
0069A4 EB22     	MOV     	#22,R11		;
0069A6 6BBC     	EXTU.B   	R11,R11		;
0069A8 60BD     	EXTU.W   	R11,R0		;
0069AA 8862     	CMP/EQ  	#62,R0		;
0069AC 8B02     	BF      	#004			;
0069AE D91C     	MOV.L   	@(#070,PC),R9	;
0069B0 A02C     	BRA     	#0058			;
0069B2 0009     	NOP     				;
0069B4 8861     	CMP/EQ  	#61,R0		;
0069B6 8B02     	BF      	#004			;
0069B8 D91A     	MOV.L   	@(#068,PC),R9	;
0069BA A008     	BRA     	#0010			;
0069BC 0009     	NOP     				;
0069BE 8863     	CMP/EQ  	#63,R0		;
0069C0 8B02     	BF      	#004			;
0069C2 D919     	MOV.L   	@(#064,PC),R9	;
0069C4 A003     	BRA     	#0006			;
0069C6 0009     	NOP     				;
0069C8 8864     	CMP/EQ  	#64,R0		;
0069CA 8B18     	BF      	#030			;
0069CC D917     	MOV.L   	@(#05C,PC),R9	;
0069CE 490B     	JSR     	@R9			;
0069D0 0009     	NOP     				;
0069D2 886F     	CMP/EQ  	#6F,R0		;
0069D4 8B05     	BF      	#00A			;
0069D6 D919     	MOV.L   	@(#064,PC),R9	;
0069D8 E080     	MOV     	#80,R0		;
0069DA 600C     	EXTU.B   	R0,R0			;
0069DC 2901     	MOV.W   	R0,@R9		;
0069DE A017     	BRA     	#002E			;
0069E0 3008     	SUB     	R0,R0			;
0069E2 2F06     	MOV.L   	R0,@-R15		;
0069E4 DB14     	MOV.L   	@(#050,PC),R11	;
0069E6 C32A     	TRAPA   	#2A			;
0069E8 60F6     	MOV.L   	@R15+,R0		;
0069EA 8821     	CMP/EQ  	#21,R0		;
0069EC 8B02     	BF      	#004			;
0069EE D90A     	MOV.L   	@(#028,PC),R9	;
0069F0 A00C     	BRA     	#0018			;
0069F2 0009     	NOP     				;
0069F4 8820     	CMP/EQ  	#20,R0		;
0069F6 8B02     	BF      	#004			;
0069F8 D906     	MOV.L   	@(#018,PC),R9	;
0069FA A007     	BRA     	#000E			;
0069FC 0009     	NOP     				;
0069FE 8822     	CMP/EQ  	#22,R0		;
006A00 8B02     	BF      	#004			;
006A02 D90B     	MOV.L   	@(#02C,PC),R9	;
006A04 A002     	BRA     	#0004			;
006A06 0009     	NOP     				;
006A08 AFC5     	BRA     	#1F8A			;
006A0A 0009     	NOP     				;
006A0C 490B     	JSR     	@R9			;
006A0E 0009     	NOP     				;
006A10 AFC1     	BRA     	#1F82			;
006A12 0009     	NOP     				;
006A14 0000
006A16 6D78
006A18 0000
006A1A 6D7E
006A1C 0000
006A1E 6B34
006A20 0000
006A22 6B52
006A24 0000
006A26 6BAC
006A28 0000
006A2A 6C16
006A2C 0000
006A2E 6C80
006A30 0000
006A32 6A6E
006A34 0F00
006A36 0724
006A38 030C
006A3A 0000
006A3C 0A00
006A3E 001E     	MOV.L   	@(R0,R1),R0		;
006A40 D3B5     	MOV.L   	@(#2D4,PC),R3	;
006A42 6030     	MOV.B   	@R3,R0		;
006A44 C801     	TST     	#01,R0		;
006A46 8901     	BT      	#002			;
006A48 A006     	BRA     	#000C			;
006A4A 0018     	SETT    				;
006A4C D4B4     	MOV.L   	@(#2D0,PC),R4	;
006A4E 2422     	MOV.L   	R2,@R4		;
006A50 2416     	MOV.L   	R1,@-R4		;
006A52 CB01     	OR      	#01,R0		;
006A54 2300     	MOV.B   	R0,@R3		;
006A56 0008     	CLRT    				;
006A58 000B     	RTS     				;
006A5A 0009     	NOP     				;
006A5C D9AF     	MOV.L   	@(#2BC,PC),R9	;
006A5E 6C96     	MOV.L   	@R9+,R12		;
006A60 6D92     	MOV.L   	@R9,R13		;
006A62 D3AD     	MOV.L   	@(#2B4,PC),R3	;
006A64 6030     	MOV.B   	@R3,R0		;
006A66 C9FE     	AND     	#FE,R0		;
006A68 2300     	MOV.B   	R0,@R3		;
006A6A 000B     	RTS     				;
006A6C 0009     	NOP     				;
006A6E DDAA     	MOV.L   	@(#2A8,PC),R13	;
006A70 60D0     	MOV.B   	@R13,R0		;
006A72 C804     	TST     	#04,R0		;
006A74 891A     	BT      	#034			;
006A76 D0AB     	MOV.L   	@(#2AC,PC),R0	;
006A78 D9AB     	MOV.L   	@(#2AC,PC),R9	;
006A7A 6390     	MOV.B   	@R9,R3		;
006A7C E8FF     	MOV     	#FF,R8		;
006A7E 3380     	CMP/EQ 	R8,R3			;
006A80 8914     	BT      	#028			;
006A82 DBAF     	MOV.L   	@(#2BC,PC),R11	;
006A84 2F36     	MOV.L   	R3,@-R15		;
006A86 4F22     	STS.L   	PR,@-R15		;
006A88 C32A     	TRAPA   	#2A			;
006A8A 4F26     	LDS.L   	@R15+,PR		;
006A8C 63F6     	MOV.L   	@R15+,R3		;
006A8E 6133     	MOV     	R3,R1			;
006A90 DAB6     	MOV.L   	@(#2D8,PC),R10	;
006A92 4F22     	STS.L   	PR,@-R15		;
006A94 4A0B     	JSR     	@R10			;
006A96 0009     	NOP     				;
006A98 4F26     	LDS.L   	@R15+,PR		;
006A9A D9A3     	MOV.L   	@(#28C,PC),R9	;
006A9C E3FF     	MOV     	#FF,R3		;
006A9E 2930     	MOV.B   	R3,@R9		;
006AA0 DBA7     	MOV.L   	@(#29C,PC),R11	;
006AA2 4F22     	STS.L   	PR,@-R15		;
006AA4 C327     	TRAPA   	#27			;
006AA6 4F26     	LDS.L   	@R15+,PR		;
006AA8 A031     	BRA     	#0062			;
006AAA 0009     	NOP     				;
006AAC DD9A     	MOV.L   	@(#268,PC),R13	;
006AAE 60D0     	MOV.B   	@R13,R0		;
006AB0 C808     	TST     	#08,R0		;
006AB2 892C     	BT      	#058			;
006AB4 D29C     	MOV.L   	@(#270,PC),R2	;
006AB6 6020     	MOV.B   	@R2,R0		;
006AB8 88FF     	CMP/EQ  	#FF,R0		;
006ABA 8928     	BT      	#050			;
006ABC 2F06     	MOV.L   	R0,@-R15		;
006ABE DBA0     	MOV.L   	@(#280,PC),R11	;
006AC0 4F22     	STS.L   	PR,@-R15		;
006AC2 C32A     	TRAPA   	#2A			;
006AC4 4F26     	LDS.L   	@R15+,PR		;
006AC6 D1A4     	MOV.L   	@(#290,PC),R1	;
006AC8 D9A7     	MOV.L   	@(#29C,PC),R9	;
006ACA 4F22     	STS.L   	PR,@-R15		;
006ACC 490B     	JSR     	@R9			;
006ACE 0009     	NOP     				;
006AD0 4F26     	LDS.L   	@R15+,PR		;
006AD2 D99D     	MOV.L   	@(#274,PC),R9	;
006AD4 6290     	MOV.B   	@R9,R2		;
006AD6 622C     	EXTU.B   	R2,R2			;
006AD8 3120     	CMP/EQ 	R2,R1			;
006ADA 8905     	BT      	#00A			;
006ADC D19E     	MOV.L   	@(#278,PC),R1	;
006ADE D99F     	MOV.L   	@(#27C,PC),R9	;
006AE0 4F22     	STS.L   	PR,@-R15		;
006AE2 490B     	JSR     	@R9			;
006AE4 0009     	NOP     				;
006AE6 4F26     	LDS.L   	@R15+,PR		;
006AE8 60F6     	MOV.L   	@R15+,R0		;
006AEA D38E     	MOV.L   	@(#238,PC),R3	;
006AEC 610C     	EXTU.B   	R0,R1			;
006AEE 331C     	ADD     	R1,R3			;
006AF0 D28D     	MOV.L   	@(#234,PC),R2	;
006AF2 6030     	MOV.B   	@R3,R0		;
006AF4 2200     	MOV.B   	R0,@R2		;
006AF6 D99E     	MOV.L   	@(#278,PC),R9	;
006AF8 D297     	MOV.L   	@(#25C,PC),R2	;
006AFA 4F22     	STS.L   	PR,@-R15		;
006AFC 490B     	JSR     	@R9			;
006AFE 0009     	NOP     				;
006B00 4F26     	LDS.L   	@R15+,PR		;
006B02 DB8F     	MOV.L   	@(#23C,PC),R11	;
006B04 4F22     	STS.L   	PR,@-R15		;
006B06 C327     	TRAPA   	#27			;
006B08 4F26     	LDS.L   	@R15+,PR		;
006B0A AFD3     	BRA     	#1FA6			;
006B0C 0009     	NOP     				;
006B0E DD82     	MOV.L   	@(#208,PC),R13	;
006B10 60D0     	MOV.B   	@R13,R0		;
006B12 600C     	EXTU.B   	R0,R0			;
006B14 C9F1     	AND     	#F1,R0		;
006B16 2D00     	MOV.B   	R0,@R13		;
006B18 D983     	MOV.L   	@(#20C,PC),R9	;
006B1A E2FF     	MOV     	#FF,R2		;
006B1C 2920     	MOV.B   	R2,@R9		;
006B1E DB86     	MOV.L   	@(#218,PC),R11	;
006B20 4F22     	STS.L   	PR,@-R15		;
006B22 C327     	TRAPA   	#27			;
006B24 4F26     	LDS.L   	@R15+,PR		;
006B26 DD89     	MOV.L   	@(#224,PC),R13	;
006B28 E080     	MOV     	#80,R0		;
006B2A 600C     	EXTU.B   	R0,R0			;
006B2C 2D01     	MOV.W   	R0,@R13		;
006B2E 3008     	SUB     	R0,R0			;
006B30 000B     	RTS     				;
006B32 0009     	NOP     				;
006B34 E300     	MOV     	#00,R3		;
006B36 D978     	MOV.L   	@(#1E0,PC),R9	;
006B38 2930     	MOV.B   	R3,@R9		;
006B3A D979     	MOV.L   	@(#1E4,PC),R9	;
006B3C 2932     	MOV.L   	R3,@R9		;
006B3E 2936     	MOV.L   	R3,@-R9		;
006B40 D980     	MOV.L   	@(#200,PC),R9	;
006B42 2930     	MOV.B   	R3,@R9		;
006B44 E3FF     	MOV     	#FF,R3		;
006B46 D978     	MOV.L   	@(#1E0,PC),R9	;
006B48 2930     	MOV.B   	R3,@R9		;
006B4A D97F     	MOV.L   	@(#1FC,PC),R9	;
006B4C 2930     	MOV.B   	R3,@R9		;
006B4E 000B     	RTS     				;
006B50 0009     	NOP     				;
006B52 D97A     	MOV.L   	@(#1E8,PC),R9	;
006B54 4F22     	STS.L   	PR,@-R15		;
006B56 490B     	JSR     	@R9			;
006B58 0009     	NOP     				;
006B5A 4F26     	LDS.L   	@R15+,PR		;
006B5C 2FC6     	MOV.L   	R12,@-R15		;
006B5E 2FD6     	MOV.L   	R13,@-R15		;
006B60 2FD6     	MOV.L   	R13,@-R15		;
006B62 DB77     	MOV.L   	@(#1DC,PC),R11	;
006B64 4F22     	STS.L   	PR,@-R15		;
006B66 C32A     	TRAPA   	#2A			;
006B68 4F26     	LDS.L   	@R15+,PR		;
006B6A 60F6     	MOV.L   	@R15+,R0		;
006B6C 4029     	SHLR16  	R0			;
006B6E 4019     	SHLR8   	R0			;
006B70 CB20     	OR      	#20,R0		;
006B72 6203     	MOV     	R0,R2			;
006B74 D177     	MOV.L   	@(#1DC,PC),R1	;
006B76 D979     	MOV.L   	@(#1E4,PC),R9	;
006B78 4F22     	STS.L   	PR,@-R15		;
006B7A 490B     	JSR     	@R9			;
006B7C 0009     	NOP     				;
006B7E 4F26     	LDS.L   	@R15+,PR		;
006B80 6DF6     	MOV.L   	@R15+,R13		;
006B82 6CF6     	MOV.L   	@R15+,R12		;
006B84 61D9     	SWAP.W   	R13,R1		;
006B86 6118     	SWAP.B   	R1,R1			;
006B88 611C     	EXTU.B   	R1,R1			;
006B8A 62CD     	EXTU.W   	R12,R2		;
006B8C 63DD     	EXTU.W   	R13,R3		;
006B8E D967     	MOV.L   	@(#19C,PC),R9	;
006B90 4F22     	STS.L   	PR,@-R15		;
006B92 490B     	JSR     	@R9			;
006B94 0009     	NOP     				;
006B96 4F26     	LDS.L   	@R15+,PR		;
006B98 DB69     	MOV.L   	@(#1A4,PC),R11	;
006B9A 4F22     	STS.L   	PR,@-R15		;
006B9C C327     	TRAPA   	#27			;
006B9E 4F26     	LDS.L   	@R15+,PR		;
006BA0 D16A     	MOV.L   	@(#1A8,PC),R1	;
006BA2 E080     	MOV     	#80,R0		;
006BA4 600C     	EXTU.B   	R0,R0			;
006BA6 2101     	MOV.W   	R0,@R1		;
006BA8 000B     	RTS     				;
006BAA 0009     	NOP     				;
006BAC D963     	MOV.L   	@(#18C,PC),R9	;
006BAE 4F22     	STS.L   	PR,@-R15		;
006BB0 490B     	JSR     	@R9			;
006BB2 0009     	NOP     				;
006BB4 4F26     	LDS.L   	@R15+,PR		;
006BB6 2FC6     	MOV.L   	R12,@-R15		;
006BB8 2FD6     	MOV.L   	R13,@-R15		;
006BBA 2FD6     	MOV.L   	R13,@-R15		;
006BBC DB60     	MOV.L   	@(#180,PC),R11	;
006BBE 4F22     	STS.L   	PR,@-R15		;
006BC0 C32A     	TRAPA   	#2A			;
006BC2 4F26     	LDS.L   	@R15+,PR		;
006BC4 6DF6     	MOV.L   	@R15+,R13		;
006BC6 6DD9     	SWAP.W   	R13,R13		;
006BC8 6DD8     	SWAP.B   	R13,R13		;
006BCA 60DC     	EXTU.B   	R13,R0		;
006BCC CB20     	OR      	#20,R0		;
006BCE 6203     	MOV     	R0,R2			;
006BD0 D85D     	MOV.L   	@(#174,PC),R8	;
006BD2 2820     	MOV.B   	R2,@R8		;
006BD4 D15F     	MOV.L   	@(#17C,PC),R1	;
006BD6 D961     	MOV.L   	@(#184,PC),R9	;
006BD8 4F22     	STS.L   	PR,@-R15		;
006BDA 490B     	JSR     	@R9			;
006BDC 0009     	NOP     				;
006BDE 4F26     	LDS.L   	@R15+,PR		;
006BE0 6DF6     	MOV.L   	@R15+,R13		;
006BE2 6CF6     	MOV.L   	@R15+,R12		;
006BE4 62CD     	EXTU.W   	R12,R2		;
006BE6 63DD     	EXTU.W   	R13,R3		;
006BE8 D956     	MOV.L   	@(#158,PC),R9	;
006BEA 2930     	MOV.B   	R3,@R9		;
006BEC 61D9     	SWAP.W   	R13,R1		;
006BEE 6118     	SWAP.B   	R1,R1			;
006BF0 611C     	EXTU.B   	R1,R1			;
006BF2 D95B     	MOV.L   	@(#16C,PC),R9	;
006BF4 4F22     	STS.L   	PR,@-R15		;
006BF6 490B     	JSR     	@R9			;
006BF8 0009     	NOP     				;
006BFA 4F26     	LDS.L   	@R15+,PR		;
006BFC D94A     	MOV.L   	@(#128,PC),R9	;
006BFE 2910     	MOV.B   	R1,@R9		;
006C00 DB4F     	MOV.L   	@(#13C,PC),R11	;
006C02 4F22     	STS.L   	PR,@-R15		;
006C04 C327     	TRAPA   	#27			;
006C06 4F26     	LDS.L   	@R15+,PR		;
006C08 D943     	MOV.L   	@(#10C,PC),R9	;
006C0A 6090     	MOV.B   	@R9,R0		;
006C0C CB02     	OR      	#02,R0		;
006C0E 2900     	MOV.B   	R0,@R9		;
006C10 E021     	MOV     	#21,R0		;
006C12 000B     	RTS     				;
006C14 600C     	EXTU.B   	R0,R0			;
006C16 D949     	MOV.L   	@(#124,PC),R9	;
006C18 4F22     	STS.L   	PR,@-R15		;
006C1A 490B     	JSR     	@R9			;
006C1C 0009     	NOP     				;
006C1E 4F26     	LDS.L   	@R15+,PR		;
006C20 DB47     	MOV.L   	@(#11C,PC),R11	;
006C22 2FC6     	MOV.L   	R12,@-R15		;
006C24 2FD6     	MOV.L   	R13,@-R15		;
006C26 2FD6     	MOV.L   	R13,@-R15		;
006C28 4F22     	STS.L   	PR,@-R15		;
006C2A C32A     	TRAPA   	#2A			;
006C2C 4F26     	LDS.L   	@R15+,PR		;
006C2E 6DF6     	MOV.L   	@R15+,R13		;
006C30 6DD9     	SWAP.W   	R13,R13		;
006C32 6DD8     	SWAP.B   	R13,R13		;
006C34 60DC     	EXTU.B   	R13,R0		;
006C36 CB20     	OR      	#20,R0		;
006C38 6203     	MOV     	R0,R2			;
006C3A D843     	MOV.L   	@(#10C,PC),R8	;
006C3C 2820     	MOV.B   	R2,@R8		;
006C3E D145     	MOV.L   	@(#114,PC),R1	;
006C40 D946     	MOV.L   	@(#118,PC),R9	;
006C42 4F22     	STS.L   	PR,@-R15		;
006C44 490B     	JSR     	@R9			;
006C46 0009     	NOP     				;
006C48 4F26     	LDS.L   	@R15+,PR		;
006C4A 6DF6     	MOV.L   	@R15+,R13		;
006C4C 6CF6     	MOV.L   	@R15+,R12		;
006C4E 62CD     	EXTU.W   	R12,R2		;
006C50 63DD     	EXTU.W   	R13,R3		;
006C52 D93C     	MOV.L   	@(#0F0,PC),R9	;
006C54 2930     	MOV.B   	R3,@R9		;
006C56 61D9     	SWAP.W   	R13,R1		;
006C58 6118     	SWAP.B   	R1,R1			;
006C5A 611C     	EXTU.B   	R1,R1			;
006C5C D934     	MOV.L   	@(#0D0,PC),R9	;
006C5E 4F22     	STS.L   	PR,@-R15		;
006C60 490B     	JSR     	@R9			;
006C62 0009     	NOP     				;
006C64 4F26     	LDS.L   	@R15+,PR		;
006C66 D930     	MOV.L   	@(#0C0,PC),R9	;
006C68 2910     	MOV.B   	R1,@R9		;
006C6A DB35     	MOV.L   	@(#0D4,PC),R11	;
006C6C 4F22     	STS.L   	PR,@-R15		;
006C6E C327     	TRAPA   	#27			;
006C70 4F26     	LDS.L   	@R15+,PR		;
006C72 D929     	MOV.L   	@(#0A4,PC),R9	;
006C74 6090     	MOV.B   	@R9,R0		;
006C76 CB04     	OR      	#04,R0		;
006C78 2900     	MOV.B   	R0,@R9		;
006C7A E021     	MOV     	#21,R0		;
006C7C 000B     	RTS     				;
006C7E 600C     	EXTU.B   	R0,R0			;
006C80 D92E     	MOV.L   	@(#0B8,PC),R9	;
006C82 4F22     	STS.L   	PR,@-R15		;
006C84 490B     	JSR     	@R9			;
006C86 0009     	NOP     				;
006C88 4F26     	LDS.L   	@R15+,PR		;
006C8A DB2D     	MOV.L   	@(#0B4,PC),R11	;
006C8C 2FD6     	MOV.L   	R13,@-R15		;
006C8E 2FD6     	MOV.L   	R13,@-R15		;
006C90 4F22     	STS.L   	PR,@-R15		;
006C92 C32A     	TRAPA   	#2A			;
006C94 4F26     	LDS.L   	@R15+,PR		;
006C96 6DF6     	MOV.L   	@R15+,R13		;
006C98 6DD9     	SWAP.W   	R13,R13		;
006C9A 6DD8     	SWAP.B   	R13,R13		;
006C9C 60DC     	EXTU.B   	R13,R0		;
006C9E CB00     	OR      	#00,R0		;
006CA0 6203     	MOV     	R0,R2			;
006CA2 D829     	MOV.L   	@(#0A4,PC),R8	;
006CA4 2820     	MOV.B   	R2,@R8		;
006CA6 D12C     	MOV.L   	@(#0B0,PC),R1	;
006CA8 D92C     	MOV.L   	@(#0B0,PC),R9	;
006CAA 4F22     	STS.L   	PR,@-R15		;
006CAC 490B     	JSR     	@R9			;
006CAE 0009     	NOP     				;
006CB0 4F26     	LDS.L   	@R15+,PR		;
006CB2 6DF6     	MOV.L   	@R15+,R13		;
006CB4 63DD     	EXTU.W   	R13,R3		;
006CB6 D923     	MOV.L   	@(#08C,PC),R9	;
006CB8 2930     	MOV.B   	R3,@R9		;
006CBA 6133     	MOV     	R3,R1			;
006CBC D91D     	MOV.L   	@(#074,PC),R9	;
006CBE 4F22     	STS.L   	PR,@-R15		;
006CC0 490B     	JSR     	@R9			;
006CC2 0009     	NOP     				;
006CC4 4F26     	LDS.L   	@R15+,PR		;
006CC6 D918     	MOV.L   	@(#060,PC),R9	;
006CC8 2910     	MOV.B   	R1,@R9		;
006CCA DB1D     	MOV.L   	@(#074,PC),R11	;
006CCC 4F22     	STS.L   	PR,@-R15		;
006CCE C327     	TRAPA   	#27			;
006CD0 4F26     	LDS.L   	@R15+,PR		;
006CD2 601E     	EXTS.B   	R1,R0			;
006CD4 88FF     	CMP/EQ  	#FF,R0		;
006CD6 891B     	BT      	#036			;
006CD8 D90F     	MOV.L   	@(#03C,PC),R9	;
006CDA 6090     	MOV.B   	@R9,R0		;
006CDC CB08     	OR      	#08,R0		;
006CDE 2900     	MOV.B   	R0,@R9		;
006CE0 D911     	MOV.L   	@(#044,PC),R9	;
006CE2 6090     	MOV.B   	@R9,R0		;
006CE4 D81A     	MOV.L   	@(#068,PC),R8	;
006CE6 D723     	MOV.L   	@(#08C,PC),R7	;
006CE8 88FF     	CMP/EQ  	#FF,R0		;
006CEA 890F     	BT      	#01E			;
006CEC 6A0C     	EXTU.B   	R0,R10		;
006CEE 28AE     	MULU.W  	R10,R8		;
006CF0 3008     	SUB     	R0,R0			;
006CF2 091A     	STS     	MACL, R9		;
006CF4 397C     	ADD     	R7,R9			;
006CF6 491E     	LDC     	R9,GBR		;
006CF8 C205     	MOV.L   	R0,@(#014,GBR)	;
006CFA C204     	MOV.L   	R0,@(#010,GBR)	;
006CFC C203     	MOV.L   	R0,@(#00C,GBR)	;
006CFE C202     	MOV.L   	R0,@(#008,GBR)	;
006D00 C201     	MOV.L   	R0,@(#004,GBR)	;
006D02 C200     	MOV.L   	R0,@(#000,GBR)	;
006D04 D007     	MOV.L   	@(#01C,PC),R0	;
006D06 00AC     	MOV.B   	@(R0,R10),R0	;
006D08 AFEE     	BRA     	#1FDC			;
006D0A 0009     	NOP     				;
006D0C A001     	BRA     	#0002			;
006D0E E020     	MOV     	#20,R0		;
006D10 E06F     	MOV     	#6F,R0		;
006D12 000B     	RTS     				;
006D14 600C     	EXTU.B   	R0,R0			;
006D16 0009     	NOP     				;
006D18 0F00
006D1A 0724
006D1C 0F00
006D1E 071C
006D20 0F00
006D22 0720
006D24 0F00
006D26 0354
006D28 0F00
006D2A 0725
006D2C 0000
006D2E 51BE
006D30 0000
006D32 50CA
006D34 0000
006D36 4F0C
006D38 030C
006D3A 0000
006D3C 0000
006D3E 6A5C
006D40 0B0C
006D42 0000
006D44 0F00
006D46 0726
006D48 0F00
006D4A 0727
006D4C 0A00
006D4E 001E
006D50 0000
006D52 0930
006D54 0000
006D56 0088
006D58 0000
006D5A 0088
006D5C 0000
006D5E 5510
006D60 0000
006D62 506C
006D64 0000
006D66 4E98
006D68 0000
006D6A 55AE
006D6C 0000
006D6E 4F58
006D70 0000
006D72 4FA4
006D74 0900
006D76 0230
006D78 E903     	MOV     	#03,R9		;
006D7A A001     	BRA     	#0002			;
006D7C 0009     	NOP     				;
006D7E E902     	MOV     	#02,R9		;
006D80 D14D     	MOV.L   	@(#134,PC),R1	;
006D82 D24E     	MOV.L   	@(#138,PC),R2	;
006D84 D44B     	MOV.L   	@(#12C,PC),R4	;
006D86 D84E     	MOV.L   	@(#138,PC),R8	;
006D88 6380     	MOV.B   	@R8,R3		;
006D8A 2130     	MOV.B   	R3,@R1		;
006D8C D84D     	MOV.L   	@(#134,PC),R8	;
006D8E 6380     	MOV.B   	@R8,R3		;
006D90 2430     	MOV.B   	R3,@R4		;
006D92 D84D     	MOV.L   	@(#134,PC),R8	;
006D94 6080     	MOV.B   	@R8,R0		;
006D96 C91F     	AND     	#1F,R0		;
006D98 2200     	MOV.B   	R0,@R2		;
006D9A 699C     	EXTU.B   	R9,R9			;
006D9C DB4D     	MOV.L   	@(#134,PC),R11	;
006D9E 2B9B     	OR      	R9,R11		;
006DA0 D94A     	MOV.L   	@(#128,PC),R9	;
006DA2 4F22     	STS.L   	PR,@-R15		;
006DA4 490B     	JSR     	@R9			;
006DA6 4F26     	LDS.L   	@R15+,PR		;
006DA8 000B     	RTS     				;
006DAA 0009     	NOP     				;

L006DAC:							;int (u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
006DAC 6029     	SWAP.W   	R2,R0			;
006DAE 6008     	SWAP.B   	R0,R0			;
006DB0 600C     	EXTU.B   	R0,R0			;u8 num = cr3>>8;
006DB2 E318     	MOV     	#18,R3		;
006DB4 633C     	EXTU.B   	R3,R3			;
006DB6 3032     	CMP/HS 	R3,R0			;
006DB8 8B01     	BF      	#002			;
006DBA A02B     	BRA     	L006E14		;if (num >= 24) return -1;
006DBC E0FF     	MOV     	#FF,R0		;
006DBE D544     	MOV.L   	@(#110,PC),R5	;
006DC0 E306     	MOV     	#06,R3		;
006DC2 203E     	MULU.W  	R3,R0			;
006DC4 D33A     	MOV.L   	@(#0E8,PC),R3	;
006DC6 001A     	STS     	MACL, R0		;
006DC8 330C     	ADD     	R0,R3			;u8* ptr = partition_data_array[num];
006DCA 8432     	MOV.B   	@(#02,R3),R0	;
006DCC 600C     	EXTU.B   	R0,R0			;u16 temp = ptr[2];
006DCE 8800     	CMP/EQ  	#00,R0		;
006DD0 890A     	BT      	L006DE8		;if (temp == 0) return 1;
006DD2 631D     	EXTU.W   	R1,R3			;u16 sec_offs = cr2;
006DD4 3302     	CMP/HS 	R0,R3			;
006DD6 8B09     	BF      	L006DEC		;if (sec_offs >= temp) {
006DD8 3350     	CMP/EQ 	R5,R3			;
006DDA 8B05     	BF      	L006DE8		;  if (sec_offs != 0xFFFF) return 1;
006DDC 6303     	MOV     	R0,R3			;
006DDE 73FF     	ADD     	#FF,R3		;
006DE0 4129     	SHLR16  	R1			;
006DE2 4128     	SHLL16  	R1			;  cr2 = temp - 1;
006DE4 A002     	BRA     	L006DEC		;
006DE6 213B     	OR      	R3,R1			;
L006DE8:
006DE8 A014     	BRA     	L006E14		;
006DEA E001     	MOV     	#01,R0		;}
L006DEC:
006DEC 642D     	EXTU.W   	R2,R4			;u16 sec_num = cr4;
006DEE E600     	MOV     	#00,R6		;
006DF0 3460     	CMP/EQ 	R6,R4			;
006DF2 89F9     	BT      	L006DE8		;if (sec_num == 0) return 1;
006DF4 3450     	CMP/EQ 	R5,R4			;
006DF6 8B08     	BF      	L006E0A		;if (sec_num == 0xFFFF) {
006DF8 6403     	MOV     	R0,R4			;  sec_num = temp;
006DFA 3438     	SUB     	R3,R4			;  sec_num -= sec_offs;
006DFC 4229     	SHLR16  	R2			;
006DFE 4219     	SHLR8   	R2			;
006E00 4228     	SHLL16  	R2			;
006E02 4218     	SHLL8   	R2			;  cr3 &= 0xFF00; 
006E04 224B     	OR      	R4,R2			;  cr4 = sec_num;
006E06 A005     	BRA     	L006E14		;  return 0;
006E08 E000     	MOV     	#00,R0		;}
L006E0A:
006E0A 343C     	ADD     	R3,R4			;sec_num += sec_offs;
006E0C 3406     	CMP/HI 	R0,R4			;
006E0E E000     	MOV     	#00,R0		;
006E10 8B00     	BF      	#000			;
006E12 E001     	MOV     	#01,R0		;return (sec_num <= temp ? 0 : 1);
L006E14:
006E14 000B     	RTS     				;
006E16 0009     	NOP     				;

006E18 D82F     	MOV.L   	@(#0BC,PC),R8	;
006E1A 289E     	MULU.W  	R9,R8			;
006E1C D72F     	MOV.L   	@(#0BC,PC),R7	;
006E1E 091A     	STS     	MACL, R9		;
006E20 379C     	ADD     	R9,R7			;
006E22 D82F     	MOV.L   	@(#0BC,PC),R8	;
006E24 6080     	MOV.B   	@R8,R0		;
006E26 8800     	CMP/EQ  	#00,R0		;
006E28 8B16     	BF      	#02C			;
006E2A 471E     	LDC     	R7,GBR		;
006E2C C603     	MOV.L   	@(#00C,GBR),R0	;
006E2E 600C     	EXTU.B   	R0,R0			;
006E30 8801     	CMP/EQ  	#01,R0		;
006E32 8B03     	BF      	#006			;
006E34 7710     	ADD     	#10,R7		;
006E36 D82C     	MOV.L   	@(#0B0,PC),R8	;
006E38 A01B     	BRA     	#0036			;
006E3A 0009     	NOP     				;
006E3C 8802     	CMP/EQ  	#02,R0		;
006E3E 7718     	ADD     	#18,R7		;
006E40 8B04     	BF      	#008			;
006E42 C604     	MOV.L   	@(#010,GBR),R0	;
006E44 6008     	SWAP.B   	R0,R0			;
006E46 600C     	EXTU.B   	R0,R0			;
006E48 C820     	TST     	#20,R0		;
006E4A 8B02     	BF      	#004			;
006E4C D826     	MOV.L   	@(#098,PC),R8	;
006E4E A010     	BRA     	#0020			;
006E50 0009     	NOP     				;
006E52 D826     	MOV.L   	@(#098,PC),R8	;
006E54 A00D     	BRA     	#001A			;
006E56 0009     	NOP     				;
006E58 8801     	CMP/EQ  	#01,R0		;
006E5A 8B02     	BF      	#004			;
006E5C D824     	MOV.L   	@(#090,PC),R8	;
006E5E A008     	BRA     	#0010			;
006E60 7710     	ADD     	#10,R7		;
006E62 8802     	CMP/EQ  	#02,R0		;
006E64 8B02     	BF      	#004			;
006E66 D823     	MOV.L   	@(#08C,PC),R8	;
006E68 A003     	BRA     	#0006			;
006E6A 770C     	ADD     	#0C,R7		;
006E6C D822     	MOV.L   	@(#088,PC),R8	;
006E6E A000     	BRA     	#0000			;
006E70 0009     	NOP     				;
006E72 000B     	RTS     				;
006E74 0009     	NOP     				;
006E76 D818     	MOV.L   	@(#060,PC),R8	;
006E78 289E     	MULU.W  	R9,R8			;
006E7A D718     	MOV.L   	@(#060,PC),R7	;
006E7C 091A     	STS     	MACL, R9		;
006E7E 379C     	ADD     	R9,R7			;
006E80 471E     	LDC     	R7,GBR		;
006E82 D818     	MOV.L   	@(#060,PC),R8	;
006E84 6080     	MOV.B   	@R8,R0		;
006E86 8800     	CMP/EQ  	#00,R0		;
006E88 8B02     	BF      	#004			;
006E8A D817     	MOV.L   	@(#05C,PC),R8	;
006E8C A00D     	BRA     	#001A			;
006E8E 7718     	ADD     	#18,R7		;
006E90 8801     	CMP/EQ  	#01,R0		;
006E92 8B02     	BF      	#004			;
006E94 D816     	MOV.L   	@(#058,PC),R8	;
006E96 A008     	BRA     	#0010			;
006E98 7710     	ADD     	#10,R7		;
006E9A 8802     	CMP/EQ  	#02,R0		;
006E9C 8B02     	BF      	#004			;
006E9E D815     	MOV.L   	@(#054,PC),R8	;
006EA0 A003     	BRA     	#0006			;
006EA2 770C     	ADD     	#0C,R7		;
006EA4 D814     	MOV.L   	@(#050,PC),R8	;
006EA6 A000     	BRA     	#0000			;
006EA8 0009     	NOP     				;
006EAA 000B     	RTS     				;
006EAC 0009     	NOP     				;
006EAE 0009     	NOP     				;
006EB0 0F000600
006EB4 0F00
006EB6 0257
006EB8 0F00
006EBA 0258
006EBC 0F00
006EBE 0259
006EC0 0F00
006EC2 0725
006EC4 0F00
006EC6 0726
006EC8 0F00
006ECA 0727
006ECC 0000
006ECE 23BA
006ED0 0000FFFF
006ED4 030C
006ED6 0000
006ED8 0000
006EDA 0930
006EDC 0900
006EDE 0230
006EE0 0F00
006EE2 06D8
006EE4 0F00
006EE6 06D9
006EE8 0000
006EEA 0400
006EEC 0000
006EEE 048A
006EF0 0000
006EF2 0490
006EF4 0000
006EF6 0492
006EF8 0000
006EFA 0498

L006EFC:							;cdb command 65 "Copy Sector Data",66 "Move Sector Data"
006EFC E318     	MOV     	#18,R3		;
006EFE 633C     	EXTU.B   	R3,R3			;
006F00 6419     	SWAP.W   	R1,R4			;
006F02 644C     	EXTU.B   	R4,R4			;
006F04 3432     	CMP/HS 	R3,R4			;
006F06 8936     	BT      	#06C			;
006F08 D92C     	MOV.L   	@(#0B0,PC),R9	;
006F0A 4F22     	STS.L   	PR,@-R15		;
006F0C 490B     	JSR     	@R9			;
006F0E 0009     	NOP     				;
006F10 4F26     	LDS.L   	@R15+,PR		;
006F12 88FF     	CMP/EQ  	#FF,R0		;
006F14 892F     	BT      	#05E			;
006F16 8801     	CMP/EQ  	#01,R0		;
006F18 8932     	BT      	#064			;
006F1A 6019     	SWAP.W   	R1,R0			;
006F1C 6008     	SWAP.B   	R0,R0			;
006F1E 600C     	EXTU.B   	R0,R0			;
006F20 8865     	CMP/EQ  	#65,R0		;
006F22 8B1A     	BF      	#034			;
006F24 D927     	MOV.L   	@(#09C,PC),R9	;
006F26 6790     	MOV.B   	@R9,R7		;
006F28 677C     	EXTU.B   	R7,R7			;
006F2A 6823     	MOV     	R2,R8			;
006F2C 4828     	SHLL16  	R8			;
006F2E 4829     	SHLR16  	R8			;
006F30 3876     	CMP/HI 	R7,R8			;
006F32 8925     	BT      	#04A			;
006F34 A011     	BRA     	#0022			;
006F36 0009     	NOP     				;
L006F38:							;cdb command 67 "Get Copy Error"
006F38 3BB8     	SUB     	R11,R11		;
006F3A ED00     	MOV     	#00,R13		;
006F3C D919     	MOV.L   	@(#064,PC),R9	;
006F3E 6090     	MOV.B   	@R9,R0		;
006F40 C807     	TST     	#07,R0		;
006F42 8903     	BT      	#006			;
006F44 ECFF     	MOV     	#FF,R12		;
006F46 6CCC     	EXTU.B   	R12,R12		;
006F48 A020     	BRA     	#0040			;
006F4A 6CC9     	SWAP.W   	R12,R12		;
006F4C C808     	TST     	#08,R0		;
006F4E EC00     	MOV     	#00,R12		;
006F50 8901     	BT      	#002			;
006F52 EC01     	MOV     	#01,R12		;
006F54 6CC9     	SWAP.W   	R12,R12		;
006F56 A019     	BRA     	#0032			;
006F58 0009     	NOP     				;
006F5A DB10     	MOV.L   	@(#040,PC),R11	;
006F5C 4F22     	STS.L   	PR,@-R15		;
006F5E 4B0B     	JSR     	@R11			;
006F60 0009     	NOP     				;
006F62 4F26     	LDS.L   	@R15+,PR		;
006F64 8B01     	BF      	#002			;
006F66 A00B     	BRA     	#0016			;
006F68 0009     	NOP     				;
006F6A DB0D     	MOV.L   	@(#034,PC),R11	;
006F6C 6319     	SWAP.W   	R1,R3			;
006F6E 6338     	SWAP.B   	R3,R3			;
006F70 633C     	EXTU.B   	R3,R3			;
006F72 A008     	BRA     	#0010			;
006F74 2B3B     	OR      	R3,R11		;
006F76 D00C     	MOV.L   	@(#030,PC),R0	;
006F78 3118     	SUB     	R1,R1			;
006F7A 3228     	SUB     	R2,R2			;
006F7C A007     	BRA     	#000E			;
006F7E 3BB8     	SUB     	R11,R11		;
006F80 D00A     	MOV.L   	@(#028,PC),R0	;
006F82 A004     	BRA     	#0008			;
006F84 3BB8     	SUB     	R11,R11		;
006F86 D00A     	MOV.L   	@(#028,PC),R0	;
006F88 A001     	BRA     	#0002			;
006F8A 0009     	NOP     				;
006F8C D00A     	MOV.L   	@(#028,PC),R0	;
006F8E 4F22     	STS.L   	PR,@-R15		;
006F90 400B     	JSR     	@R0			;
006F92 0009     	NOP     				;
006F94 4F26     	LDS.L   	@R15+,PR		;
006F96 000B     	RTS     				;
006F98 0009     	NOP     				;
006F9A 0009     	NOP     				;
006F9C 0000
006F9E 6FF8
006FA0 0D81
006FA2 0000
006FA4 0F00
006FA6 0730
006FA8 0000
006FAA 91E8
006FAC 0000
006FAE 91EC
006FB0 0000
006FB2 91FE
006FB4 0000
006FB6 91A4
006FB8 0000
006FBA 91A8
006FBC 0000
006FBE 6DAC
006FC0 0000
006FC2 FFFF
006FC4 0F00
006FC6 034A
006FC8 D90A     	MOV.L   	@(#028,PC),R9	;
006FCA 490B     	JSR     	@R9			;
006FCC 0009     	NOP     				;
006FCE 3BB8     	SUB     	R11,R11		;
006FD0 C323     	TRAPA   	#23			;
006FD2 60BC     	EXTU.B   	R11,R0		;
006FD4 8865     	CMP/EQ  	#65,R0		;
006FD6 8B02     	BF      	#004			;
006FD8 D904     	MOV.L   	@(#010,PC),R9	;
006FDA A003     	BRA     	#0006			;
006FDC 0009     	NOP     				;
006FDE 8866     	CMP/EQ  	#66,R0		;
006FE0 8B02     	BF      	#004			;
006FE2 D903     	MOV.L   	@(#00C,PC),R9	;
006FE4 490B     	JSR     	@R9			;
006FE6 0009     	NOP     				;
006FE8 AFF1     	BRA     	#1FE2			;
006FEA 0009     	NOP     				;
006FEC 0000
006FEE 704C
006FF0 0000
006FF2 714E
006FF4 0000
006FF6 7026     	ADD     	#26,R0		;
006FF8 D3DA     	MOV.L   	@(#368,PC),R3	;
006FFA 6030     	MOV.B   	@R3,R0		;
006FFC C801     	TST     	#01,R0		;
006FFE 8901     	BT      	#002			;
007000 A006     	BRA     	#000C			;
007002 0018     	SETT    				;
007004 D4D1     	MOV.L   	@(#344,PC),R4	;
007006 2422     	MOV.L   	R2,@R4		;
007008 2416     	MOV.L   	R1,@-R4		;
00700A CB01     	OR      	#01,R0		;
00700C 2300     	MOV.B   	R0,@R3		;
00700E 0008     	CLRT    				;
007010 000B     	RTS     				;
007012 0009     	NOP     				;
007014 D9CC     	MOV.L   	@(#330,PC),R9	;
007016 6C96     	MOV.L   	@R9+,R12		;
007018 6D92     	MOV.L   	@R9,R13		;
00701A D3D2     	MOV.L   	@(#348,PC),R3	;
00701C 6030     	MOV.B   	@R3,R0		;
00701E C9FE     	AND     	#FE,R0		;
007020 2300     	MOV.B   	R0,@R3		;
007022 000B     	RTS     				;
007024 0009     	NOP     				;
007026 E300     	MOV     	#00,R3		;
007028 D9CE     	MOV.L   	@(#338,PC),R9	;
00702A 2930     	MOV.B   	R3,@R9		;
00702C D9CB     	MOV.L   	@(#32C,PC),R9	;
00702E 2930     	MOV.B   	R3,@R9		;
007030 D9C9     	MOV.L   	@(#324,PC),R9	;
007032 2930     	MOV.B   	R3,@R9		;
007034 D9C7     	MOV.L   	@(#31C,PC),R9	;
007036 2930     	MOV.B   	R3,@R9		;
007038 D9C5     	MOV.L   	@(#314,PC),R9	;
00703A 2930     	MOV.B   	R3,@R9		;
00703C D9C3     	MOV.L   	@(#30C,PC),R9	;
00703E 2932     	MOV.L   	R3,@R9		;
007040 2936     	MOV.L   	R3,@-R9		;
007042 D9C7     	MOV.L   	@(#31C,PC),R9	;
007044 E3FF     	MOV     	#FF,R3		;
007046 2930     	MOV.B   	R3,@R9		;
007048 000B     	RTS     				;
00704A 0009     	NOP     				;
00704C D9C5     	MOV.L   	@(#314,PC),R9	;
00704E 6090     	MOV.B   	@R9,R0		;
007050 CB02     	OR      	#02,R0		;
007052 C9F7     	AND     	#F7,R0		;
007054 2900     	MOV.B   	R0,@R9		;
007056 4F22     	STS.L   	PR,@-R15		;
007058 B0E1     	BRS     	#01C2			;
00705A 0009     	NOP     				;
00705C 4F26     	LDS.L   	@R15+,PR		;
00705E D9BF     	MOV.L   	@(#2FC,PC),R9	;
007060 6290     	MOV.B   	@R9,R2		;
007062 622C     	EXTU.B   	R2,R2			;
007064 D9BB     	MOV.L   	@(#2EC,PC),R9	;
007066 6090     	MOV.B   	@R9,R0		;
007068 C91F     	AND     	#1F,R0		;
00706A 6103     	MOV     	R0,R1			;
00706C D9AD     	MOV.L   	@(#2B4,PC),R9	;
00706E 4F22     	STS.L   	PR,@-R15		;
007070 490B     	JSR     	@R9			;
007072 0009     	NOP     				;
007074 4F26     	LDS.L   	@R15+,PR		;
007076 D9BA     	MOV.L   	@(#2E8,PC),R9	;
007078 2910     	MOV.B   	R1,@R9		;
00707A E289     	MOV     	#89,R2		;
00707C 622C     	EXTU.B   	R2,R2			;
00707E D9B0     	MOV.L   	@(#2C0,PC),R9	;
007080 4F22     	STS.L   	PR,@-R15		;
007082 490B     	JSR     	@R9			;
007084 0009     	NOP     				;
007086 4F26     	LDS.L   	@R15+,PR		;
007088 2F06     	MOV.L   	R0,@-R15		;
00708A DBB7     	MOV.L   	@(#2DC,PC),R11	;
00708C 4F22     	STS.L   	PR,@-R15		;
00708E C327     	TRAPA   	#27			;
007090 4F26     	LDS.L   	@R15+,PR		;
007092 60F6     	MOV.L   	@R15+,R0		;
007094 88FF     	CMP/EQ  	#FF,R0		;
007096 8B1A     	BF      	#034			;
007098 D9B0     	MOV.L   	@(#2C0,PC),R9	;
00709A 6090     	MOV.B   	@R9,R0		;
00709C 600C     	EXTU.B   	R0,R0			;
00709E 7001     	ADD     	#01,R0		;
0070A0 2900     	MOV.B   	R0,@R9		;
0070A2 D9AD     	MOV.L   	@(#2B4,PC),R9	;
0070A4 6090     	MOV.B   	@R9,R0		;
0070A6 600C     	EXTU.B   	R0,R0			;
0070A8 70FF     	ADD     	#FF,R0		;
0070AA 8800     	CMP/EQ  	#00,R0		;
0070AC 2900     	MOV.B   	R0,@R9		;
0070AE 8945     	BT      	#08A			;
0070B0 4F22     	STS.L   	PR,@-R15		;
0070B2 B0E3     	BRS     	#01C6			;
0070B4 0009     	NOP     				;
0070B6 4F26     	LDS.L   	@R15+,PR		;
0070B8 8BD1     	BF      	#1A2			;
0070BA D9AA     	MOV.L   	@(#2A8,PC),R9	;
0070BC 6090     	MOV.B   	@R9,R0		;
0070BE CB08     	OR      	#08,R0		;
0070C0 2900     	MOV.B   	R0,@R9		;
0070C2 DBA9     	MOV.L   	@(#2A4,PC),R11	;
0070C4 4F22     	STS.L   	PR,@-R15		;
0070C6 C327     	TRAPA   	#27			;
0070C8 4F26     	LDS.L   	@R15+,PR		;
0070CA A037     	BRA     	#006E			;
0070CC 0009     	NOP     				;
0070CE 4F22     	STS.L   	PR,@-R15		;
0070D0 B0D4     	BRS     	#01A8			;
0070D2 0009     	NOP     				;
0070D4 4F26     	LDS.L   	@R15+,PR		;
0070D6 89F0     	BT      	#1E0			;
0070D8 D994     	MOV.L   	@(#250,PC),R9	;
0070DA 4F22     	STS.L   	PR,@-R15		;
0070DC 490B     	JSR     	@R9			;
0070DE 0009     	NOP     				;
0070E0 4F26     	LDS.L   	@R15+,PR		;
0070E2 611C     	EXTU.B   	R1,R1			;
0070E4 E2FF     	MOV     	#FF,R2		;
0070E6 622C     	EXTU.B   	R2,R2			;
0070E8 3120     	CMP/EQ 	R2,R1			;
0070EA 89E6     	BT      	#1CC			;
0070EC 2F16     	MOV.L   	R1,@-R15		;
0070EE DB9E     	MOV.L   	@(#278,PC),R11	;
0070F0 4F22     	STS.L   	PR,@-R15		;
0070F2 C327     	TRAPA   	#27			;
0070F4 4F26     	LDS.L   	@R15+,PR		;
0070F6 61F6     	MOV.L   	@R15+,R1		;
0070F8 D999     	MOV.L   	@(#264,PC),R9	;
0070FA 6290     	MOV.B   	@R9,R2		;
0070FC 622C     	EXTU.B   	R2,R2			;
0070FE 4F22     	STS.L   	PR,@-R15		;
007100 B0DE     	BRS     	#01BC			;
007102 0009     	NOP     				;
007104 4F26     	LDS.L   	@R15+,PR		;
007106 2F16     	MOV.L   	R1,@-R15		;
007108 4F22     	STS.L   	PR,@-R15		;
00710A B0B7     	BRS     	#016E			;
00710C 0009     	NOP     				;
00710E 4F26     	LDS.L   	@R15+,PR		;
007110 61F6     	MOV.L   	@R15+,R1		;
007112 8B06     	BF      	#00C			;
007114 D986     	MOV.L   	@(#218,PC),R9	;
007116 4F22     	STS.L   	PR,@-R15		;
007118 490B     	JSR     	@R9			;
00711A 0009     	NOP     				;
00711C 4F26     	LDS.L   	@R15+,PR		;
00711E AFCC     	BRA     	#1F98			;
007120 0009     	NOP     				;
007122 D984     	MOV.L   	@(#210,PC),R9	;
007124 E289     	MOV     	#89,R2		;
007126 622C     	EXTU.B   	R2,R2			;
007128 4F22     	STS.L   	PR,@-R15		;
00712A 490B     	JSR     	@R9			;
00712C 0009     	NOP     				;
00712E 4F26     	LDS.L   	@R15+,PR		;
007130 DB8D     	MOV.L   	@(#234,PC),R11	;
007132 4F22     	STS.L   	PR,@-R15		;
007134 C327     	TRAPA   	#27			;
007136 4F26     	LDS.L   	@R15+,PR		;
007138 AFAE     	BRA     	#1F5C			;
00713A 0009     	NOP     				;
00713C D989     	MOV.L   	@(#224,PC),R9	;
00713E 6090     	MOV.B   	@R9,R0		;
007140 C9FD     	AND     	#FD,R0		;
007142 2900     	MOV.B   	R0,@R9		;
007144 D98A     	MOV.L   	@(#228,PC),R9	;
007146 D18B     	MOV.L   	@(#22C,PC),R1	;
007148 2911     	MOV.W   	R1,@R9		;
00714A 000B     	RTS     				;
00714C 0009     	NOP     				;
00714E D985     	MOV.L   	@(#214,PC),R9	;
007150 6090     	MOV.B   	@R9,R0		;
007152 CB04     	OR      	#04,R0		;
007154 C9F7     	AND     	#F7,R0		;
007156 2900     	MOV.B   	R0,@R9		;
007158 4F22     	STS.L   	PR,@-R15		;
00715A B060     	BRS     	#00C0			;
00715C 0009     	NOP     				;
00715E 4F26     	LDS.L   	@R15+,PR		;
007160 D97E     	MOV.L   	@(#1F8,PC),R9	;
007162 6290     	MOV.B   	@R9,R2		;
007164 D97C     	MOV.L   	@(#1F0,PC),R9	;
007166 6390     	MOV.B   	@R9,R3		;
007168 622C     	EXTU.B   	R2,R2			;
00716A 633C     	EXTU.B   	R3,R3			;
00716C D979     	MOV.L   	@(#1E4,PC),R9	;
00716E 6090     	MOV.B   	@R9,R0		;
007170 C91F     	AND     	#1F,R0		;
007172 6103     	MOV     	R0,R1			;
007174 D96C     	MOV.L   	@(#1B0,PC),R9	;
007176 4F22     	STS.L   	PR,@-R15		;
007178 490B     	JSR     	@R9			;
00717A 0009     	NOP     				;
00717C 4F26     	LDS.L   	@R15+,PR		;
00717E D978     	MOV.L   	@(#1E0,PC),R9	;
007180 2910     	MOV.B   	R1,@R9		;
007182 6013     	MOV     	R1,R0			;
007184 600E     	EXTS.B   	R0,R0			;
007186 88FF     	CMP/EQ  	#FF,R0		;
007188 8924     	BT      	#048			;
00718A DB77     	MOV.L   	@(#1DC,PC),R11	;
00718C 2F16     	MOV.L   	R1,@-R15		;
00718E 4F22     	STS.L   	PR,@-R15		;
007190 C327     	TRAPA   	#27			;
007192 4F26     	LDS.L   	@R15+,PR		;
007194 61F6     	MOV.L   	@R15+,R1		;
007196 2F16     	MOV.L   	R1,@-R15		;
007198 4F22     	STS.L   	PR,@-R15		;
00719A B06F     	BRS     	#00DE			;
00719C 0009     	NOP     				;
00719E 4F26     	LDS.L   	@R15+,PR		;
0071A0 61F6     	MOV.L   	@R15+,R1		;
0071A2 8917     	BT      	#02E			;
0071A4 D96E     	MOV.L   	@(#1B8,PC),R9	;
0071A6 6190     	MOV.B   	@R9,R1		;
0071A8 E0FF     	MOV     	#FF,R0		;
0071AA 3100     	CMP/EQ 	R0,R1			;
0071AC 8927     	BT      	#04E			;
0071AE 611C     	EXTU.B   	R1,R1			;
0071B0 D972     	MOV.L   	@(#1C8,PC),R9	;
0071B2 391C     	ADD     	R1,R9			;
0071B4 6090     	MOV.B   	@R9,R0		;
0071B6 D96A     	MOV.L   	@(#1A8,PC),R9	;
0071B8 2900     	MOV.B   	R0,@R9		;
0071BA E289     	MOV     	#89,R2		;
0071BC 622C     	EXTU.B   	R2,R2			;
0071BE D95D     	MOV.L   	@(#174,PC),R9	;
0071C0 4F22     	STS.L   	PR,@-R15		;
0071C2 490B     	JSR     	@R9			;
0071C4 0009     	NOP     				;
0071C6 4F26     	LDS.L   	@R15+,PR		;
0071C8 DB67     	MOV.L   	@(#19C,PC),R11	;
0071CA 4F22     	STS.L   	PR,@-R15		;
0071CC C327     	TRAPA   	#27			;
0071CE 4F26     	LDS.L   	@R15+,PR		;
0071D0 AFE1     	BRA     	#1FC2			;
0071D2 0009     	NOP     				;
0071D4 D963     	MOV.L   	@(#18C,PC),R9	;
0071D6 6090     	MOV.B   	@R9,R0		;
0071D8 CB08     	OR      	#08,R0		;
0071DA 2900     	MOV.B   	R0,@R9		;
0071DC D960     	MOV.L   	@(#180,PC),R9	;
0071DE 6090     	MOV.B   	@R9,R0		;
0071E0 88FF     	CMP/EQ  	#FF,R0		;
0071E2 890C     	BT      	#018			;
0071E4 610C     	EXTU.B   	R0,R1			;
0071E6 DA65     	MOV.L   	@(#194,PC),R10	;
0071E8 3A1C     	ADD     	R1,R10		;
0071EA 60A0     	MOV.B   	@R10,R0		;
0071EC 2F06     	MOV.L   	R0,@-R15		;
0071EE D950     	MOV.L   	@(#140,PC),R9	;
0071F0 4F22     	STS.L   	PR,@-R15		;
0071F2 490B     	JSR     	@R9			;
0071F4 0009     	NOP     				;
0071F6 4F26     	LDS.L   	@R15+,PR		;
0071F8 60F6     	MOV.L   	@R15+,R0		;
0071FA AFF1     	BRA     	#1FE2			;
0071FC 0009     	NOP     				;
0071FE DB5A     	MOV.L   	@(#168,PC),R11	;
007200 4F22     	STS.L   	PR,@-R15		;
007202 C327     	TRAPA   	#27			;
007204 4F26     	LDS.L   	@R15+,PR		;
007206 E1FF     	MOV     	#FF,R1		;
007208 D955     	MOV.L   	@(#154,PC),R9	;
00720A 2910     	MOV.B   	R1,@R9		;
00720C D955     	MOV.L   	@(#154,PC),R9	;
00720E 6090     	MOV.B   	@R9,R0		;
007210 C9FB     	AND     	#FB,R0		;
007212 2900     	MOV.B   	R0,@R9		;
007214 D956     	MOV.L   	@(#158,PC),R9	;
007216 D157     	MOV.L   	@(#15C,PC),R1	;
007218 2911     	MOV.W   	R1,@R9		;
00721A 000B     	RTS     				;
00721C 0009     	NOP     				;
00721E D949     	MOV.L   	@(#124,PC),R9	;
007220 4F22     	STS.L   	PR,@-R15		;
007222 490B     	JSR     	@R9			;
007224 0009     	NOP     				;
007226 4F26     	LDS.L   	@R15+,PR		;
007228 6ADD     	EXTU.W   	R13,R10		;
00722A D94B     	MOV.L   	@(#12C,PC),R9	;
00722C 29A0     	MOV.B   	R10,@R9		;
00722E 6AD9     	SWAP.W   	R13,R10		;
007230 6AA8     	SWAP.B   	R10,R10		;
007232 60AC     	EXTU.B   	R10,R0		;
007234 CB20     	OR      	#20,R0		;
007236 D947     	MOV.L   	@(#11C,PC),R9	;
007238 2900     	MOV.B   	R0,@R9		;
00723A 6ACD     	EXTU.W   	R12,R10		;
00723C D947     	MOV.L   	@(#11C,PC),R9	;
00723E 29A0     	MOV.B   	R10,@R9		;
007240 60C9     	SWAP.W   	R12,R0		;
007242 600C     	EXTU.B   	R0,R0			;
007244 CB00     	OR      	#00,R0		;
007246 D942     	MOV.L   	@(#108,PC),R9	;
007248 2900     	MOV.B   	R0,@R9		;
00724A DB47     	MOV.L   	@(#11C,PC),R11	;
00724C 4F22     	STS.L   	PR,@-R15		;
00724E C32A     	TRAPA   	#2A			;
007250 4F26     	LDS.L   	@R15+,PR		;
007252 E181     	MOV     	#81,R1		;
007254 611C     	EXTU.B   	R1,R1			;
007256 D93F     	MOV.L   	@(#0FC,PC),R9	;
007258 6290     	MOV.B   	@R9,R2		;
00725A 622C     	EXTU.B   	R2,R2			;
00725C D936     	MOV.L   	@(#0D8,PC),R9	;
00725E 4F22     	STS.L   	PR,@-R15		;
007260 490B     	JSR     	@R9			;
007262 0009     	NOP     				;
007264 4F26     	LDS.L   	@R15+,PR		;
007266 E189     	MOV     	#89,R1		;
007268 611C     	EXTU.B   	R1,R1			;
00726A D939     	MOV.L   	@(#0E4,PC),R9	;
00726C 6290     	MOV.B   	@R9,R2		;
00726E D932     	MOV.L   	@(#0C8,PC),R9	;
007270 4F22     	STS.L   	PR,@-R15		;
007272 490B     	JSR     	@R9			;
007274 0009     	NOP     				;
007276 4F26     	LDS.L   	@R15+,PR		;
007278 000B     	RTS     				;
00727A 0009     	NOP     				;
00727C DB3A     	MOV.L   	@(#0E8,PC),R11	;
00727E 4F22     	STS.L   	PR,@-R15		;
007280 C32A     	TRAPA   	#2A			;
007282 4F26     	LDS.L   	@R15+,PR		;
007284 E181     	MOV     	#81,R1		;
007286 611C     	EXTU.B   	R1,R1			;
007288 D92C     	MOV.L   	@(#0B0,PC),R9	;
00728A 4F22     	STS.L   	PR,@-R15		;
00728C 490B     	JSR     	@R9			;
00728E 0009     	NOP     				;
007290 4F26     	LDS.L   	@R15+,PR		;
007292 D930     	MOV.L   	@(#0C0,PC),R9	;
007294 6290     	MOV.B   	@R9,R2		;
007296 622C     	EXTU.B   	R2,R2			;
007298 3120     	CMP/EQ 	R2,R1			;
00729A 8B0E     	BF      	#01C			;
00729C E189     	MOV     	#89,R1		;
00729E 611C     	EXTU.B   	R1,R1			;
0072A0 D926     	MOV.L   	@(#098,PC),R9	;
0072A2 4F22     	STS.L   	PR,@-R15		;
0072A4 490B     	JSR     	@R9			;
0072A6 0009     	NOP     				;
0072A8 4F26     	LDS.L   	@R15+,PR		;
0072AA D929     	MOV.L   	@(#0A4,PC),R9	;
0072AC 6290     	MOV.B   	@R9,R2		;
0072AE 622C     	EXTU.B   	R2,R2			;
0072B0 3120     	CMP/EQ 	R2,R1			;
0072B2 8B02     	BF      	#004			;
0072B4 0008     	CLRT    				;
0072B6 A001     	BRA     	#0002			;
0072B8 0009     	NOP     				;
0072BA 0018     	SETT    				;
0072BC 000B     	RTS     				;
0072BE 0009     	NOP     				;
0072C0 D92A     	MOV.L   	@(#0A8,PC),R9	;
0072C2 219E     	MULU.W  	R9,R1			;
0072C4 DA2C     	MOV.L   	@(#0B0,PC),R10	;
0072C6 0B1A     	STS     	MACL, R11		;
0072C8 229E     	MULU.W  	R9,R2			;
0072CA 3BAC     	ADD     	R10,R11		;
0072CC 0C1A     	STS     	MACL, R12		;
0072CE 3CAC     	ADD     	R10,R12		;
0072D0 D026     	MOV.L   	@(#098,PC),R0	;
0072D2 70FC     	ADD     	#FC,R0		;
0072D4 0DCE     	MOV.L   	@(R0,R12),R13	;
0072D6 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072D8 70FC     	ADD     	#FC,R0		;
0072DA 0DCE     	MOV.L   	@(R0,R12),R13	;
0072DC 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072DE 70FC     	ADD     	#FC,R0		;
0072E0 0DCE     	MOV.L   	@(R0,R12),R13	;
0072E2 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072E4 70FC     	ADD     	#FC,R0		;
0072E6 0DCE     	MOV.L   	@(R0,R12),R13	;
0072E8 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072EA 70FC     	ADD     	#FC,R0		;
0072EC 0DCE     	MOV.L   	@(R0,R12),R13	;
0072EE 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072F0 70FC     	ADD     	#FC,R0		;
0072F2 0DCE     	MOV.L   	@(R0,R12),R13	;
0072F4 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072F6 70FC     	ADD     	#FC,R0		;
0072F8 0DCE     	MOV.L   	@(R0,R12),R13	;
0072FA 0BD6     	MOV.L   	R13,@(R0,R11)	;
0072FC 70FC     	ADD     	#FC,R0		;
0072FE 0DCE     	MOV.L   	@(R0,R12),R13	;
007300 0BD6     	MOV.L   	R13,@(R0,R11)	;
007302 70FC     	ADD     	#FC,R0		;
007304 0DCE     	MOV.L   	@(R0,R12),R13	;
007306 0BD6     	MOV.L   	R13,@(R0,R11)	;
007308 70FC     	ADD     	#FC,R0		;
00730A 0DCE     	MOV.L   	@(R0,R12),R13	;
00730C 0BD6     	MOV.L   	R13,@(R0,R11)	;
00730E 70FC     	ADD     	#FC,R0		;
007310 0DCE     	MOV.L   	@(R0,R12),R13	;
007312 0BD6     	MOV.L   	R13,@(R0,R11)	;
007314 70FC     	ADD     	#FC,R0		;
007316 0DCE     	MOV.L   	@(R0,R12),R13	;
007318 0BD6     	MOV.L   	R13,@(R0,R11)	;
00731A 8800     	CMP/EQ  	#00,R0		;
00731C 8BD9     	BF      	#1B2			;
00731E 000B     	RTS     				;
007320 0009     	NOP     				;
007322 0009     	NOP     				;
007324 0000
007326 506C
007328 0000
00732A 50CA
00732C 0000
00732E 4E98
007330 0000
007332 4ED4
007334 0000
007336 4FA4
007338 0000
00733A 5510
00733C 0000
00733E 55AE
007340 0000
007342 5264
007344 0000
007346 7014
007348 0F00
00734A 0728
00734C 0F00
00734E 072C
007350 0F00
007352 0735
007354 0F00
007356 0734
007358 0F00
00735A 0733
00735C 0F00
00735E 0732
007360 0F00
007362 0731
007364 0F00
007366 0730
007368 0B0D
00736A 0000
00736C 0000
00736E 0930
007370 0A00
007372 001E
007374 0000
007376 0100
007378 0900
00737A 0230
00737C 0F00
00737E 0354

;cdb command 40 "Set Filter Range"
L007380:							;set_filter_range(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007380 6329     	SWAP.W   	R2,R3			;
007382 6338     	SWAP.B   	R3,R3			;
007384 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
007386 E018     	MOV     	#18,R0		;
007388 600C     	EXTU.B   	R0,R0			;
00738A 3302     	CMP/HS 	R0,R3			;
00738C 8B01     	BF      	L007392		;
00738E A1B1     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007390 0009     	NOP     				;
L007392:
007392 A19F     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007394 0009     	NOP     				;

;cdb command 41 "Get Filter Range"
L007396:							;get_filter_range(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007396 6329     	SWAP.W   	R2,R3			;
007398 6338     	SWAP.B   	R3,R3			;
00739A 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
00739C E018     	MOV     	#18,R0		;
00739E 600C     	EXTU.B   	R0,R0			;
0073A0 3302     	CMP/HS 	R0,R3			;
0073A2 8B01     	BF      	#002			;
0073A4 A1A6     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0073A6 0009     	NOP     				;
0073A8 3CC8     	SUB     	R12,R12		;*rr1 = 0x0000; *rr2 = 0x0000;
0073AA 6D38     	SWAP.B   	R3,R13		;
0073AC 6DD9     	SWAP.W   	R13,R13		;*rr3 = num << 8; *rr4 = 0x0000;
0073AE E410     	MOV     	#10,R4		;
0073B0 644C     	EXTU.B   	R4,R4			;
0073B2 243E     	MULU.W  	R3,R4			;
0073B4 041A     	STS     	MACL, R4		;
0073B6 D3DD     	MOV.L   	@(#374,PC),R3	;
0073B8 343C     	ADD     	R3,R4			;filter_data* filter = filter_data_array[num];
0073BA 5042     	MOV.L   	@(#08,R4),R0	;
0073BC 2C0B     	OR      	R0,R12		;*rr1 |= filter.fad>>16; *rr2 |= filter.fad & 0xFFFF;
0073BE 5043     	MOV.L   	@(#0C,R4),R0	;*rr3 |= filter.range>>16; *rr4 |= filter.range & 0xFFFF;
0073C0 A1A0     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0073C2 2D0B     	OR      	R0,R13		;

;cdb command 42 "Set Filter Subheader Conditions"
L0073C4:							;set_filter_subheader(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0073C4 6329     	SWAP.W   	R2,R3			;
0073C6 6338     	SWAP.B   	R3,R3			;
0073C8 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
0073CA E018     	MOV     	#18,R0		;
0073CC 600C     	EXTU.B   	R0,R0			;
0073CE 3302     	CMP/HS 	R0,R3			;
0073D0 8B01     	BF      	#002			;
0073D2 A18F     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0073D4 0009     	NOP     				;
0073D6 A17D     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0073D8 0009     	NOP     				;

;cdb command 43 "Get Filter Subheader Conditions"
L0073DA:							;get_filter_subheader(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0073DA 6329     	SWAP.W   	R2,R3			;
0073DC 6338     	SWAP.B   	R3,R3			;
0073DE 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
0073E0 E018     	MOV     	#18,R0		;
0073E2 600C     	EXTU.B   	R0,R0			;
0073E4 3302     	CMP/HS 	R0,R3			;
0073E6 8B01     	BF      	#002			;
0073E8 A184     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0073EA 0009     	NOP     				;
0073EC 3CC8     	SUB     	R12,R12		;*rr1 = 0x0000; *rr2 = 0x0000;
0073EE 6D38     	SWAP.B   	R3,R13		;
0073F0 6DD9     	SWAP.W   	R13,R13		;*rr3 = num << 8; *rr4 = 0x0000;
0073F2 E410     	MOV     	#10,R4		;
0073F4 644C     	EXTU.B   	R4,R4			;
0073F6 243E     	MULU.W  	R3,R4			;
0073F8 041A     	STS     	MACL, R4		;
0073FA D3CC     	MOV.L   	@(#330,PC),R3	;
0073FC 343C     	ADD     	R3,R4			;filter_data* filter = filter_data_array[num];
0073FE 5040     	MOV.L   	@(#00,R4),R0	;
007400 620C     	EXTU.B   	R0,R2			;
007402 6229     	SWAP.W   	R2,R2			;
007404 2C2B     	OR      	R2,R12		;*rr1 |= filter.chan;
007406 6208     	SWAP.B   	R0,R2			;
007408 622C     	EXTU.B   	R2,R2			;
00740A 6229     	SWAP.W   	R2,R2			;
00740C 2D2B     	OR      	R2,R13		;*rr3 |= filter.fid;
00740E 5041     	MOV.L   	@(#04,R4),R0	;
007410 620D     	EXTU.W   	R0,R2			;
007412 2D2B     	OR      	R2,R13		;*rr4 |= filter.smv<<8 | filter.civ;
007414 6209     	SWAP.W   	R0,R2			;
007416 622D     	EXTU.W   	R2,R2			;*rr2 |= filter.smm<<8 | filter.cim;
007418 A174     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00741A 2C2B     	OR      	R2,R12		;

;cdb command 44 "Set Filter Mode"
L00741C:							;set_filter_mode(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
00741C 6329     	SWAP.W   	R2,R3			;
00741E 6338     	SWAP.B   	R3,R3			;
007420 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
007422 E018     	MOV     	#18,R0		;
007424 600C     	EXTU.B   	R0,R0			;
007426 3302     	CMP/HS 	R0,R3			;
007428 8B01     	BF      	#002			;
00742A A163     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00742C 0009     	NOP     				;
00742E A151     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007430 0009     	NOP     				;

;cdb command 45 "Get Filter Mode"
L007432:							;get_filter_mode(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007432 6329     	SWAP.W   	R2,R3			;
007434 6338     	SWAP.B   	R3,R3			;
007436 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
007438 E018     	MOV     	#18,R0		;
00743A 600C     	EXTU.B   	R0,R0			;
00743C 3302     	CMP/HS 	R0,R3			;
00743E 8B01     	BF      	#002			;
007440 A158     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007442 0009     	NOP     				;
007444 6D38     	SWAP.B   	R3,R13		;
007446 6DD9     	SWAP.W   	R13,R13		;*rr3 = num << 8; *rr4 = 0x0000;
007448 E410     	MOV     	#10,R4		;
00744A 644C     	EXTU.B   	R4,R4			;
00744C 243E     	MULU.W  	R3,R4			;
00744E 041A     	STS     	MACL, R4		;
007450 D3B6     	MOV.L   	@(#2D8,PC),R3	;
007452 343C     	ADD     	R3,R4			;filter_data* filter = filter_data_array[num];
007454 5040     	MOV.L   	@(#00,R4),R0	;
007456 4029     	SHLR16  	R0			;
007458 4019     	SHLR8   	R0			;*rr1 = (u16)filter.mode; *rr2 = 0x0000;
00745A A153     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00745C 6C09     	SWAP.W   	R0,R12		;

;cdb command 46 "Set Filter Connection"
L00745E:							;set_filter_connection(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
00745E 6329     	SWAP.W   	R2,R3			;
007460 6338     	SWAP.B   	R3,R3			;
007462 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
007464 E018     	MOV     	#18,R0		;
007466 600C     	EXTU.B   	R0,R0			;
007468 3302     	CMP/HS 	R0,R3			;
00746A 8B01     	BF      	#002			;
00746C A142     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00746E 0009     	NOP     				;
007470 6419     	SWAP.W   	R1,R4			;
007472 644C     	EXTU.B   	R4,R4			;
007474 E502     	MOV     	#02,R5		;
007476 2458     	TST     	R5,R4			;
007478 890A     	BT      	L007490		;
00747A 631C     	EXTU.B   	R1,R3			;
00747C E0FF     	MOV     	#FF,R0		;
00747E 600C     	EXTU.B   	R0,R0			;
007480 3300     	CMP/EQ 	R0,R3			;
007482 8905     	BT      	L007490		;
007484 E018     	MOV     	#18,R0		;
007486 600C     	EXTU.B   	R0,R0			;    
007488 3302     	CMP/HS 	R0,R3			;    
00748A 8B01     	BF      	L007490		;if (((u8)cr1 & 0x02) && cr2 & 0xFF != 0xFF && cr2 & 0xFF >= 24))
00748C A132     	BRA     	L0076F4		;  return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00748E 0009     	NOP     				;
L007490:
007490 E501     	MOV     	#01,R5		;
007492 2458     	TST     	R5,R4			;
007494 890B     	BT      	L0074AE		;
007496 6318     	SWAP.B   	R1,R3			;
007498 633C     	EXTU.B   	R3,R3			;
00749A E0FF     	MOV     	#FF,R0		;
00749C 600C     	EXTU.B   	R0,R0			;
00749E 3300     	CMP/EQ 	R0,R3			;
0074A0 8905     	BT      	L0074AE		;
0074A2 E018     	MOV     	#18,R0		;
0074A4 600C     	EXTU.B   	R0,R0			;
0074A6 3302     	CMP/HS 	R0,R3			;
0074A8 8B01     	BF      	L0074AE		;if (((u8)cr1 & 0x01) && cr2>>8 != 0xFF && cr2>>8 >= 24))
0074AA A123     	BRA     	L0076F4		;  return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0074AC 0009     	NOP     				;
L0074AE:
0074AE A111     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0074B0 0009     	NOP     				;

;cdb command 47 "Get Filter Connection"
L0074B2:							;get_filter_connection(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0074B2 6329     	SWAP.W   	R2,R3			;
0074B4 6338     	SWAP.B   	R3,R3			;
0074B6 633C     	EXTU.B   	R3,R3			;u8 num = cr3 >> 8;
0074B8 E018     	MOV     	#18,R0		;
0074BA 600C     	EXTU.B   	R0,R0			;
0074BC 3302     	CMP/HS 	R0,R3			;
0074BE 8B01     	BF      	#002			;
0074C0 A118     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0074C2 0009     	NOP     				;
0074C4 6D38     	SWAP.B   	R3,R13		;
0074C6 6DD9     	SWAP.W   	R13,R13		;*rr3 = num << 8; *rr4 = 0x0000;
0074C8 EC00     	MOV     	#00,R12		;*rr1 = 0x0000;   *rr2 = 0x0000;
0074CA E404     	MOV     	#04,R4		;
0074CC 644C     	EXTU.B   	R4,R4			;
0074CE 243E     	MULU.W  	R3,R4			;
0074D0 041A     	STS     	MACL, R4		;
0074D2 D397     	MOV.L   	@(#25C,PC),R3	;
0074D4 343C     	ADD     	R3,R4			;filter_connection* connection = filter_connection_array[num];
0074D6 8541     	MOV.W   	@(#02,R4),R0	;
0074D8 E400     	MOV     	#00,R4		;
0074DA 6308     	SWAP.B   	R0,R3			;
0074DC 620C     	EXTU.B   	R0,R2			;
0074DE 633C     	EXTU.B   	R3,R3			;
0074E0 6023     	MOV     	R2,R0			;
0074E2 E5E0     	MOV     	#E0,R5		;
0074E4 655C     	EXTU.B   	R5,R5			;
0074E6 2059     	AND     	R5,R0			;
0074E8 3050     	CMP/EQ 	R5,R0			;
0074EA 8902     	BT      	L0074F2		;
0074EC 6023     	MOV     	R2,R0			;
0074EE A002     	BRA     	L0074F6		;
0074F0 C91F     	AND     	#1F,R0		;
L0074F2:
0074F2 E0FF     	MOV     	#FF,R0		;
0074F4 600C     	EXTU.B   	R0,R0			;u8 false_cond = connection.condf & 0xE0 == 0xE0 ? 0xFF : connection.condf & 0x1F;
L0074F6:
0074F6 2C0B     	OR      	R0,R12		;*rr2 |= false_cond;
0074F8 6033     	MOV     	R3,R0			;
0074FA 2059     	AND     	R5,R0			;
0074FC 3050     	CMP/EQ 	R5,R0			;
0074FE 8902     	BT      	L007506		;
007500 6033     	MOV     	R3,R0			;
007502 A002     	BRA     	L00750A		;
007504 C91F     	AND     	#1F,R0		;
L007506:
007506 E0FF     	MOV     	#FF,R0		;
007508 600C     	EXTU.B   	R0,R0			;u8 true_cond = connection.condt & 0xE0 == 0xE0 ? 0xFF : connection.condt & 0x1F;
L00750A:
00750A 6008     	SWAP.B   	R0,R0			;
00750C 2C0B     	OR      	R0,R12		;*rr2 |= true_cond << 8;
00750E A0F9     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007510 0009     	NOP     				;

;cdb command 48 "Reset Selector"
L007512:							;reset_selector(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007512 6319     	SWAP.W   	R1,R3			;
007514 633C     	EXTU.B   	R3,R3			;u8 flags = (u8)cr1;
007516 E000     	MOV     	#00,R0		;
007518 3300     	CMP/EQ 	R0,R3			;
00751A 8B08     	BF      	L00752E		;
00751C 6029     	SWAP.W   	R2,R0			;
00751E 6008     	SWAP.B   	R0,R0			;
007520 600C     	EXTU.B   	R0,R0			;
007522 E318     	MOV     	#18,R3		;
007524 633C     	EXTU.B   	R3,R3			;
007526 3032     	CMP/HS 	R3,R0			;
007528 8B01     	BF      	L00752E		;if (flags == 0x00 && cr3>>8 >= 24)
00752A A0E3     	BRA     	L0076F4		;  return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00752C 0009     	NOP     				;
L00752E:
00752E A0D1     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007530 0009     	NOP     				;

;cdb command 50 "Get Buffer Size"
L007532:							;get_buffer_size(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007532 D381     	MOV.L   	@(#204,PC),R3	;
007534 6C30     	MOV.B   	@R3,R12		;
007536 6CCC     	EXTU.B   	R12,R12		;
007538 EDC8     	MOV     	#C8,R13		;
00753A 6DDC     	EXTU.B   	R13,R13		;
00753C 3CD6     	CMP/HI 	R13,R12		;
00753E 8B00     	BF      	#000			;
007540 6CD3     	MOV     	R13,R12		;*rr1 = 0x0000; *rr2 = *(u8*)0x0F00034A <= 200 : *(u8*)0x0F00034A : 200;
007542 E318     	MOV     	#18,R3		;
007544 633C     	EXTU.B   	R3,R3			;
007546 6338     	SWAP.B   	R3,R3			;
007548 6339     	SWAP.W   	R3,R3			;*rr3 = 24; *rr4 = 200;
00754A A0DB     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
00754C 2D3B     	OR      	R3,R13		;

;cdb command 60 "Set Sector Length"
L00754E:							;set_sector_length(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
00754E 6313     	MOV     	R1,R3			;
007550 4319     	SHLR8   	R3			;
007552 643C     	EXTU.B   	R3,R4			;u8 put_size = cr2 >> 8;
007554 6338     	SWAP.B   	R3,R3			;
007556 633C     	EXTU.B   	R3,R3			;u8 get_size = cr1 & 0xFF;
007558 E5FF     	MOV     	#FF,R5		;
00755A 655C     	EXTU.B   	R5,R5			;
00755C E003     	MOV     	#03,R0		;
00755E 3350     	CMP/EQ 	R5,R3			;
007560 8903     	BT      	L00756A		;
007562 3306     	CMP/HI 	R0,R3			;
007564 8B01     	BF      	L00756A		;if (get_size != 0xFF && get_size > 0x03)
007566 A0C5     	BRA     	L0076F4		;  return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007568 0009     	NOP     				;
L00756A:
00756A 3450     	CMP/EQ 	R5,R4			;
00756C 8903     	BT      	L007576		;
00756E 3406     	CMP/HI 	R0,R4			;
007570 8B01     	BF      	L007576		;if (put_size != 0xFF && put_size > 0x03)
007572 A0BF     	BRA     	L0076F4		;  return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
007574 0009     	NOP     				;
L007576:
007576 3350     	CMP/EQ 	R5,R3			;
007578 8901     	BT      	L00757E		;
00757A D670     	MOV.L   	@(#1C0,PC),R6	;
00757C 2630     	MOV.B   	R3,@R6		;if (get_size != 0xFF) get_sector_size = get_size;
L00757E:
00757E 3450     	CMP/EQ 	R5,R4			;
007580 8901     	BT      	L007586		;
007582 D66F     	MOV.L   	@(#1BC,PC),R6	;
007584 2640     	MOV.B   	R4,@R6		;if (put_size != 0xFF) put_sector_size = put_size;
L007586:
007586 3BB8     	SUB     	R11,R11		;R11 = 0x00000000;
007588 D176     	MOV.L   	@(#1D8,PC),R1	;
00758A D277     	MOV.L   	@(#1DC,PC),R2	;YGR.HIRQ = HIRQ_ESEL;
00758C A0AF     	BRA     	L0076EE		;return make_cd_status_00(rr1,rr2,rr3,rr4);
00758E 2121     	MOV.W   	R2,@R1		;

;cdb command 51 "Get Sector Number"
L007590:							;set_sector_number(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007590 6029     	SWAP.W   	R2,R0			;
007592 6008     	SWAP.B   	R0,R0			;
007594 600C     	EXTU.B   	R0,R0			;u8 num = cr3 >> 8;
007596 E418     	MOV     	#18,R4		;
007598 644C     	EXTU.B   	R4,R4			;
00759A 3042     	CMP/HS 	R4,R0			;
00759C 8B01     	BF      	#002			;
00759E A0A9     	BRA     	L0076F4		;if (num >= 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075A0 0009     	NOP     				;
0075A2 E306     	MOV     	#06,R3		;
0075A4 203E     	MULU.W  	R3,R0			;
0075A6 D363     	MOV.L   	@(#18C,PC),R3	;
0075A8 001A     	STS     	MACL, R0		;
0075AA 330C     	ADD     	R0,R3			;u8* ptr = partition_data_array[num];
0075AC 8432     	MOV.B   	@(#02,R3),R0	;*rr1 = 0x0000; *rr2 = 0x0000;
0075AE 6D0C     	EXTU.B   	R0,R13		;*rr3 = 0x0000; *rr4 = ptr[2];
0075B0 A0A8     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075B2 EC00     	MOV     	#00,R12		;

;cdb command 52 "Calculate Actual Size"
L0075B4:							;calc_actual_size(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0075B4 D968     	MOV.L   	@(#1A0,PC),R9	;
0075B6 4F22     	STS.L   	PR,@-R15		;
0075B8 490B     	JSR     	@R9			;int err = L006DAC();
0075BA 0009     	NOP     				;
0075BC 4F26     	LDS.L   	@R15+,PR		;
0075BE 88FF     	CMP/EQ  	#FF,R0		;
0075C0 8B01     	BF      	#002			;
0075C2 A097     	BRA     	L0076F4		;if (err == -1) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075C4 0009     	NOP     				;
0075C6 8801     	CMP/EQ  	#01,R0		;if (err == 1) {
0075C8 8B01     	BF      	#002			;  R11 = 0x00000000;
0075CA A098     	BRA     	L0076FE		;  return make_cd_status_80(rr1,rr2,rr3,rr4);
0075CC 0009     	NOP     				;}
0075CE EC00     	MOV     	#00,R12		;*rr1 = 0x0000; *rr2 = 0x0000; *rr3 = 0x0000; *rr4 = 0x0000;
0075D0 A080     	BRA     	L0076D4		;return set_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075D2 ED00     	MOV     	#00,R13		;

;cdb command 53 "Get Actual Size"
L0075D4:							;get_actual_size(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0075D4 D962     	MOV.L   	@(#188,PC),R9	;
0075D6 6C92     	MOV.L   	@R9,R12		;
0075D8 ED00     	MOV     	#00,R13		;*rr3 = 0x0000; *rr4 = 0x0000;
0075DA 4C18     	SHLL8   	R12			;*rr1 = actual_size>>16; *rr2 = actual_size & 0xFFFF; 
0075DC A092     	BRA     	L007704		;return get_filter_inner(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075DE 4C19     	SHLR8   	R12			;

;cdb command 54 "Get Sector Info"
L0075E0:							;get_sector_info(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0075E0 6029     	SWAP.W   	R2,R0			;
0075E2 6008     	SWAP.B   	R0,R0			;
0075E4 600C     	EXTU.B   	R0,R0			;u8 num = cr3 >> 8;
0075E6 E418     	MOV     	#18,R4		;
0075E8 644C     	EXTU.B   	R4,R4			;
0075EA 3042     	CMP/HS 	R4,R0			;
0075EC 8B01     	BF      	#002			;
0075EE A081     	BRA     	L0076F4		;if (num > 24) return filter_error(cr1,cr2,cr3,cr4,rr1,rr2,rr3,rr4);
0075F0 0009     	NOP     				;
0075F2 E306     	MOV     	#06,R3		;
0075F4 203E     	MULU.W  	R3,R0			;
0075F6 D34F     	MOV.L   	@(#13C,PC),R3	;
0075F8 001A     	STS     	MACL, R0		;
0075FA 330C     	ADD     	R0,R3			;u8* ptr = partition_data_array[num];
0075FC 8432     	MOV.B   	@(#02,R3),R0	;
0075FE 600C     	EXTU.B   	R0,R0			;
007600 8800     	CMP/EQ  	#00,R0		;
007602 8B01     	BF      	#002			;
007604 A07B     	BRA     	L0076FE		;if (ptr[2] == 0) return make_cd_status_80(rr1,rr2,rr3,rr4);
007606 0009     	NOP     				;
007608 631D     	EXTU.W   	R1,R3			;u16 sec = cr2;
00760A D454     	MOV.L   	@(#150,PC),R4	;
00760C 3430     	CMP/EQ 	R3,R4			;
00760E 8B05     	BF      	L00761C		;if (sec == 0xFFFF) {
007610 6303     	MOV     	R0,R3			;
007612 73FF     	ADD     	#FF,R3		;
007614 4129     	SHLR16  	R1			;
007616 4128     	SHLL16  	R1			;
007618 A004     	BRA     	L007624		;  cr2 = (u16)ptr[2] - 1;
00761A 213B     	OR      	R3,R1			;}
L00761C:
00761C 3302     	CMP/HS 	R0,R3			;else if (sec >= (u16)ptr[2]) {
00761E 8B01     	BF      	#002			;
007620 A06D     	BRA     	L0076FE		;  return make_cd_status_80(rr1,rr2,rr3,rr4);
007622 0009     	NOP     				;}
L007624:
007624 4229     	SHLR16  	R2			;
007626 4219     	SHLR8   	R2			;
007628 6323     	MOV     	R2,R3			;
00762A 621D     	EXTU.W   	R1,R2			;
00762C 6133     	MOV     	R3,R1			;
00762E D93B     	MOV.L   	@(#0EC,PC),R9	;
007630 4F22     	STS.L   	PR,@-R15		;
007632 490B     	JSR     	@R9			;L00506C();
007634 0009     	NOP     				;
007636 4F26     	LDS.L   	@R15+,PR		;
007638 D23A     	MOV.L   	@(#0E8,PC),R2	;
00763A 212E     	MULU.W  	R2,R1			;
00763C D338     	MOV.L   	@(#0E0,PC),R3	;
00763E 041A     	STS     	MACL, R4		;
007640 343C     	ADD     	R3,R4			;
007642 441E     	LDC     	R4,GBR		;
007644 C603     	MOV.L   	@(#00C,GBR),R0	;
007646 6103     	MOV     	R0,R1			;
007648 2F16     	MOV.L   	R1,@-R15		;
00764A D93E     	MOV.L   	@(#0F8,PC),R9	;
00764C 4F22     	STS.L   	PR,@-R15		;
00764E 490B     	JSR     	@R9			;
007650 0009     	NOP     				;
007652 4F26     	LDS.L   	@R15+,PR		;
007654 6C13     	MOV     	R1,R12		;
007656 61F6     	MOV.L   	@R15+,R1		;
007658 A000     	BRA     	#0000			;
00765A 0009     	NOP     				;
00765C 601C     	EXTU.B   	R1,R0			;
00765E 8802     	CMP/EQ  	#02,R0		;
007660 8B02     	BF      	#004			;
007662 C604     	MOV.L   	@(#010,GBR),R0	;
007664 A001     	BRA     	#0002			;
007666 0009     	NOP     				;
007668 E000     	MOV     	#00,R0		;
00766A A04B     	BRA     	#0096			;
00766C 6D03     	MOV     	R0,R13		;

;
L00766E:							;cdb command 55 "Execute FAD Search"
00766E 6029     	SWAP.W   	R2,R0			;
007670 6008     	SWAP.B   	R0,R0			;
007672 600C     	EXTU.B   	R0,R0			;
007674 E418     	MOV     	#18,R4		;
007676 644C     	EXTU.B   	R4,R4			;
007678 3042     	CMP/HS 	R4,R0			;
00767A 8B01     	BF      	#002			;
00767C A03A     	BRA     	#0074			;
00767E 0009     	NOP     				;
007680 E306     	MOV     	#06,R3		;
007682 203E     	MULU.W  	R3,R0			;
007684 D32B     	MOV.L   	@(#0AC,PC),R3	;
007686 001A     	STS     	MACL, R0		;
007688 330C     	ADD     	R0,R3			;
00768A 8432     	MOV.B   	@(#02,R3),R0	;
00768C 600C     	EXTU.B   	R0,R0			;
00768E 8800     	CMP/EQ  	#00,R0		;
007690 8B01     	BF      	#002			;
007692 A034     	BRA     	#0068			;
007694 0009     	NOP     				;
007696 631D     	EXTU.W   	R1,R3			;
007698 D430     	MOV.L   	@(#0C0,PC),R4	;
00769A 3430     	CMP/EQ 	R3,R4			;
00769C 8B05     	BF      	#00A			;
00769E 6303     	MOV     	R0,R3			;
0076A0 73FF     	ADD     	#FF,R3		;
0076A2 4129     	SHLR16  	R1			;
0076A4 4128     	SHLL16  	R1			;
0076A6 A004     	BRA     	#0008			;
0076A8 213B     	OR      	R3,R1			;
0076AA 3302     	CMP/HS 	R0,R3			;
0076AC 8B01     	BF      	#002			;
0076AE A026     	BRA     	#004C			;
0076B0 0009     	NOP     				;
0076B2 EC00     	MOV     	#00,R12		;
0076B4 A00E     	BRA     	#001C			;
0076B6 ED00     	MOV     	#00,R13		;

;
L0076B8:							;cdb command 56 "Get FAD Search Results"
0076B8 DA2C     	MOV.L   	@(#0B0,PC),R10	;
0076BA 6DA2     	MOV.L   	@R10,R13		;
0076BC 4D18     	SHLL8   	R13			;
0076BE 4D19     	SHLR8   	R13			;
0076C0 DA2B     	MOV.L   	@(#0AC,PC),R10	;
0076C2 60A1     	MOV.W   	@R10,R0		;
0076C4 600C     	EXTU.B   	R0,R0			;
0076C6 6008     	SWAP.B   	R0,R0			;
0076C8 6009     	SWAP.W   	R0,R0			;
0076CA 2D0B     	OR      	R0,R13		;
0076CC DA29     	MOV.L   	@(#0A4,PC),R10	;
0076CE 60A1     	MOV.W   	@R10,R0		;
0076D0 A018     	BRA     	#0030			;
0076D2 6C0D     	EXTU.W   	R0,R12		;

L0076D4:							;void set_filter_inner(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0076D4 DB0F     	MOV.L   	@(#03C,PC),R11	;
0076D6 4F22     	STS.L   	PR,@-R15		;
0076D8 4B0B     	JSR     	@R11			;
0076DA 0009     	NOP     				;
0076DC 4F26     	LDS.L   	@R15+,PR		;
0076DE 8B01     	BF      	#002			;if (save_filter_param(cr1,cr2,cr3,cr4)) { 
0076E0 A00D     	BRA     	L0076FE		;  R11 = 0x00000000;
0076E2 0009     	NOP     				;  return make_cd_status_80(rr1,rr2,rr3,rr4);
0076E4 DB0C     	MOV.L   	@(#030,PC),R11	;}
0076E6 6319     	SWAP.W   	R1,R3			;
0076E8 6338     	SWAP.B   	R3,R3			;
0076EA 633C     	EXTU.B   	R3,R3			;
0076EC 2B3B     	OR      	R3,R11		;R11 = 0x04810000 | (cr1 >> 8);
L0076EE:
0076EE D018     	MOV.L   	@(#060,PC),R0	;
0076F0 A00A     	BRA     	L007708		;return make_cd_status_00(rr1,rr2,rr3,rr4);
0076F2 0009     	NOP     				;

L0076F4:							;void filter_error(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
0076F4 D014     	MOV.L   	@(#050,PC),R0	;
0076F6 3118     	SUB     	R1,R1			;cr1 = 0x0000; cr2 = 0x0000;
0076F8 3228     	SUB     	R2,R2			;cr3 = 0x0000; cr4 = 0x0000;
0076FA A005     	BRA     	L007708		;R11 = 0x00000000;
0076FC 3BB8     	SUB     	R11,R11		;return make_cd_status_FF(rr1,rr2,rr3,rr4);

L0076FE:
0076FE D013     	MOV.L   	@(#04C,PC),R0	;
007700 A002     	BRA     	L007708		;
007702 3BB8     	SUB     	R11,R11		;

L007704:							;void get_filter_inner(u16 cr1,cr2,cr3,cr4,u16 *rr1,*rr2,*rr3,*rr4)
007704 D013     	MOV.L   	@(#04C,PC),R0	;
007706 3BB8     	SUB     	R11,R11		;
L007708:
007708 4F22     	STS.L   	PR,@-R15		;
00770A 400B     	JSR     	@R0			;get_rr1_status(rr1);
00770C 0009     	NOP     				;
00770E 4F26     	LDS.L   	@R15+,PR		;
007710 000B     	RTS     				;
007712 0009     	NOP     				;
007714 00007778
007718 04810000
00771C 0000506C
007720 0900
007722 0230
007724 0000
007726 0930
007728 0000
00772A 0002
00772C 0F000420
007730 0F0005A0
007734 0F000600
007738 0F00034A
00773C 0F0006D8
007740 0F0006D9
007744 0000
007746 4E0C
007748 000091E8
00774C 000091EC
007750 000091FE
007754 000091A8
007758 00006DAC
00775C 0000FFFF
007760 0F0006BC
007764 0A00001E
007768 00000040
00776C 0F00
00776E 06D0
007770 0F00
007772 06D6
007774 0F00
007776 06D4

L007778:							;bool save_filter_param(u16 cr1,cr2,cr3,cr4)
007778 D309     	MOV.L   	@(#024,PC),R3	;
00777A 6030     	MOV.B   	@R3,R0		;
00777C C801     	TST     	#01,R0		;
00777E 8901     	BT      	#002			;
007780 A006     	BRA     	L007790		;if (set_filter_flags & 0x01 != 0) return true;
007782 0018     	SETT    				;
007784 D407     	MOV.L   	@(#01C,PC),R4	;
007786 2422     	MOV.L   	R2,@R4		;set_filter_param[1] = (cr3 << 16) | cr4;
007788 2416     	MOV.L   	R1,@-R4		;set_filter_param[0] = (cr1 << 16) | cr2;
00778A CB01     	OR      	#01,R0		;
00778C 2300     	MOV.B   	R0,@R3		;set_filter_flags |= 0x01;
00778E 0008     	CLRT    				;return false;
L007790:
007790 000B     	RTS     				;
007792 0009     	NOP     				;

007794 D302     	MOV.L   	@(#008,PC),R3	;
007796 6030     	MOV.B   	@R3,R0		;
007798 C9FE     	AND     	#FE,R0		;
00779A 000B     	RTS     				;
00779C 2300     	MOV.B   	R0,@R3		;
00779E 0009     	NOP     				;
0077A0 0F000740
0077A4 0F00073C

L0077A8:							;init()
0077A8 200A     	XOR     	R0,R0			;
0077AA D1EC     	MOV.L   	@(#3B0,PC),R1	;
0077AC 2101     	MOV.W   	R0,@R1		;*(u16*)0x0F000786 = 0x0000;
0077AE 000B     	RTS     				;
0077B0 0009     	NOP     				;

0077B2 4F22     	STS.L   	PR,@-R15		;
0077B4 B154     	BRS     	#02A8			;
0077B6 0009     	NOP     				;
0077B8 4F26     	LDS.L   	@R15+,PR		;
0077BA D1EA     	MOV.L   	@(#3A8,PC),R1	;
0077BC E000     	MOV     	#00,R0		;
0077BE 2100     	MOV.B   	R0,@R1		;
0077C0 C323     	TRAPA   	#23			;
0077C2 60B3     	MOV     	R11,R0		;
0077C4 6009     	SWAP.W   	R0,R0			;
0077C6 600C     	EXTU.B   	R0,R0			;
0077C8 8806     	CMP/EQ  	#06,R0		;
0077CA 892A     	BT      	#054			;
0077CC E281     	MOV     	#81,R2		;
0077CE 622C     	EXTU.B   	R2,R2			;
0077D0 3020     	CMP/EQ 	R2,R0			;
0077D2 8947     	BT      	#08E			;
0077D4 8804     	CMP/EQ  	#04,R0		;
0077D6 897D     	BT      	#0FA			;
0077D8 8803     	CMP/EQ  	#03,R0		;
0077DA 8B02     	BF      	#004			;
0077DC D089     	MOV.L   	@(#224,PC),R0	;
0077DE 402B     	JMP     	@R0			;
0077E0 0009     	NOP     				;
0077E2 8807     	CMP/EQ  	#07,R0		;
0077E4 8BEC     	BF      	#1D8			;
0077E6 60BD     	EXTU.W   	R11,R0		;
0077E8 8800     	CMP/EQ  	#00,R0		;
0077EA 8BE9     	BF      	#1D2			;
0077EC D1DA     	MOV.L   	@(#368,PC),R1	;
0077EE 6010     	MOV.B   	@R1,R0		;
0077F0 600C     	EXTU.B   	R0,R0			;
0077F2 8802     	CMP/EQ  	#02,R0		;
0077F4 8B02     	BF      	#004			;
0077F6 E000     	MOV     	#00,R0		;
0077F8 A00B     	BRA     	#0016			;
0077FA 0009     	NOP     				;
0077FC 8807     	CMP/EQ  	#07,R0		;
0077FE 8B02     	BF      	#004			;
007800 D08D     	MOV.L   	@(#234,PC),R0	;
007802 402B     	JMP     	@R0			;
007804 0009     	NOP     				;
007806 8803     	CMP/EQ  	#03,R0		;
007808 8B02     	BF      	#004			;
00780A E000     	MOV     	#00,R0		;
00780C A001     	BRA     	#0002			;
00780E 0009     	NOP     				;
007810 E003     	MOV     	#03,R0		;
007812 D1D2     	MOV.L   	@(#348,PC),R1	;
007814 8011     	MOV.B   	R0,@(#01,R1)	;
007816 D1CE     	MOV.L   	@(#338,PC),R1	;
007818 200A     	XOR     	R0,R0			;
00781A 2100     	MOV.B   	R0,@R1		;
00781C D086     	MOV.L   	@(#218,PC),R0	;
00781E 402B     	JMP     	@R0			;
007820 0009     	NOP     				;
007822 60BD     	EXTU.W   	R11,R0		;
007824 8800     	CMP/EQ  	#00,R0		;
007826 8B0D     	BF      	#01A			;
007828 D1CA     	MOV.L   	@(#328,PC),R1	;
00782A 6010     	MOV.B   	@R1,R0		;
00782C 600C     	EXTU.B   	R0,R0			;
00782E 8800     	CMP/EQ  	#00,R0		;
007830 8902     	BT      	#004			;
007832 D17F     	MOV.L   	@(#1FC,PC),R1	;
007834 412B     	JMP     	@R1			;
007836 0009     	NOP     				;
007838 4F22     	STS.L   	PR,@-R15		;
00783A B13F     	BRS     	#027E			;
00783C 0009     	NOP     				;
00783E 4F26     	LDS.L   	@R15+,PR		;
007840 AFBE     	BRA     	#1F7C			;
007842 0009     	NOP     				;
007844 8801     	CMP/EQ  	#01,R0		;
007846 8B01     	BF      	#002			;
007848 AFBA     	BRA     	#1F74			;
00784A 0009     	NOP     				;
00784C 8802     	CMP/EQ  	#02,R0		;
00784E 8B02     	BF      	#004			;
007850 D178     	MOV.L   	@(#1E0,PC),R1	;
007852 412B     	JMP     	@R1			;
007854 0009     	NOP     				;
007856 8803     	CMP/EQ  	#03,R0		;
007858 8B02     	BF      	#004			;
00785A D175     	MOV.L   	@(#1D4,PC),R1	;
00785C 412B     	JMP     	@R1			;
00785E 0009     	NOP     				;
007860 AFAE     	BRA     	#1F5C			;
007862 0009     	NOP     				;
007864 60BD     	EXTU.W   	R11,R0		;
007866 8800     	CMP/EQ  	#00,R0		;
007868 8B07     	BF      	#00E			;
00786A D16E     	MOV.L   	@(#1B8,PC),R1	;
00786C 6012     	MOV.L   	@R1,R0		;
00786E 8800     	CMP/EQ  	#00,R0		;
007870 8901     	BT      	#002			;
007872 A1C8     	BRA     	#0390			;
007874 0009     	NOP     				;
007876 A179     	BRA     	#02F2			;
007878 0009     	NOP     				;
00787A 8801     	CMP/EQ  	#01,R0		;
00787C 8B01     	BF      	#002			;
00787E A303     	BRA     	#0606			;
007880 0009     	NOP     				;
007882 8804     	CMP/EQ  	#04,R0		;
007884 8B01     	BF      	#002			;
007886 A343     	BRA     	#0686			;
007888 0009     	NOP     				;
00788A 8805     	CMP/EQ  	#05,R0		;
00788C 8B01     	BF      	#002			;
00788E A359     	BRA     	#06B2			;
007890 0009     	NOP     				;
007892 8802     	CMP/EQ  	#02,R0		;
007894 8B01     	BF      	#002			;
007896 A377     	BRA     	#06EE			;
007898 0009     	NOP     				;
00789A 8806     	CMP/EQ  	#06,R0		;
00789C 8B01     	BF      	#002			;
00789E A4C3     	BRA     	#0986			;
0078A0 0009     	NOP     				;
0078A2 8807     	CMP/EQ  	#07,R0		;
0078A4 8B01     	BF      	#002			;
0078A6 A004     	BRA     	#0008			;
0078A8 0009     	NOP     				;
0078AA 8808     	CMP/EQ  	#08,R0		;
0078AC 8B88     	BF      	#110			;
0078AE A62F     	BRA     	#0C5E			;
0078B0 0009     	NOP     				;
0078B2 D164     	MOV.L   	@(#190,PC),R1	;
0078B4 6010     	MOV.B   	@R1,R0		;
0078B6 600C     	EXTU.B   	R0,R0			;
0078B8 8800     	CMP/EQ  	#00,R0		;
0078BA 8B05     	BF      	#00A			;
0078BC 90C8     	MOV.W   	@(#190,PC),R0	;
0078BE 600D     	EXTU.W   	R0,R0			;
0078C0 D397     	MOV.L   	@(#25C,PC),R3	;
0078C2 2301     	MOV.W   	R0,@R3		;
0078C4 AF7C     	BRA     	#1EF8			;
0078C6 0009     	NOP     				;
0078C8 D1A6     	MOV.L   	@(#298,PC),R1	;
0078CA E004     	MOV     	#04,R0		;
0078CC 600C     	EXTU.B   	R0,R0			;
0078CE 2100     	MOV.B   	R0,@R1		;
0078D0 A4F5     	BRA     	#09EA			;
0078D2 0009     	NOP     				;
0078D4 60BD     	EXTU.W   	R11,R0		;
0078D6 8802     	CMP/EQ  	#02,R0		;
0078D8 8B01     	BF      	#002			;
0078DA AF71     	BRA     	#1EE2			;
0078DC 0009     	NOP     				;
0078DE 8800     	CMP/EQ  	#00,R0		;
0078E0 8905     	BT      	#00A			;
0078E2 8801     	CMP/EQ  	#01,R0		;
0078E4 8901     	BT      	#002			;
0078E6 AF6B     	BRA     	#1ED6			;
0078E8 0009     	NOP     				;
0078EA A4E8     	BRA     	#09D0			;
0078EC 0009     	NOP     				;
0078EE D19A     	MOV.L   	@(#268,PC),R1	;
0078F0 6010     	MOV.B   	@R1,R0		;
0078F2 600C     	EXTU.B   	R0,R0			;
0078F4 8801     	CMP/EQ  	#01,R0		;
0078F6 892D     	BT      	#05A			;
0078F8 8803     	CMP/EQ  	#03,R0		;
0078FA 8B01     	BF      	#002			;
0078FC A6E9     	BRA     	#0DD2			;
0078FE 0009     	NOP     				;
007900 8806     	CMP/EQ  	#06,R0		;
007902 8B02     	BF      	#004			;
007904 D04E     	MOV.L   	@(#138,PC),R0	;
007906 402B     	JMP     	@R0			;
007908 0009     	NOP     				;
00790A 8807     	CMP/EQ  	#07,R0		;
00790C 891F     	BT      	#03E			;
00790E 8804     	CMP/EQ  	#04,R0		;
007910 8901     	BT      	#002			;
007912 AF55     	BRA     	#1EAA			;
007914 0009     	NOP     				;
007916 4F22     	STS.L   	PR,@-R15		;
007918 DB3E     	MOV.L   	@(#0F8,PC),R11	;
00791A C32A     	TRAPA   	#2A			;
00791C D07F     	MOV.L   	@(#1FC,PC),R0	;
00791E 6300     	MOV.B   	@R0,R3		;
007920 E006     	MOV     	#06,R0		;
007922 600C     	EXTU.B   	R0,R0			;
007924 230E     	MULU.W  	R0,R3			;
007926 021A     	STS     	MACL, R2		;
007928 D147     	MOV.L   	@(#11C,PC),R1	;
00792A 312C     	ADD     	R2,R1			;
00792C 8412     	MOV.B   	@(#02,R1),R0	;
00792E D147     	MOV.L   	@(#11C,PC),R1	;
007930 6210     	MOV.B   	@R1,R2		;
007932 622C     	EXTU.B   	R2,R2			;
007934 3028     	SUB     	R2,R0			;
007936 8800     	CMP/EQ  	#00,R0		;
007938 8904     	BT      	#008			;
00793A 6133     	MOV     	R3,R1			;
00793C 6303     	MOV     	R0,R3			;
00793E D038     	MOV.L   	@(#0E0,PC),R0	;
007940 400B     	JSR     	@R0			;
007942 0009     	NOP     				;
007944 DB33     	MOV.L   	@(#0CC,PC),R11	;
007946 C327     	TRAPA   	#27			;
007948 4F26     	LDS.L   	@R15+,PR		;
00794A AF39     	BRA     	#1E72			;
00794C 0009     	NOP     				;
00794E D03B     	MOV.L   	@(#0EC,PC),R0	;
007950 402B     	JMP     	@R0			;
007952 0009     	NOP     				;
007954 D283     	MOV.L   	@(#20C,PC),R2	;
007956 6020     	MOV.B   	@R2,R0		;
007958 600C     	EXTU.B   	R0,R0			;
00795A 8802     	CMP/EQ  	#02,R0		;
00795C 8B01     	BF      	#002			;
00795E AF2F     	BRA     	#1E5E			;
007960 0009     	NOP     				;
007962 DB2C     	MOV.L   	@(#0B0,PC),R11	;
007964 C32A     	TRAPA   	#2A			;
007966 D36D     	MOV.L   	@(#1B4,PC),R3	;
007968 6030     	MOV.B   	@R3,R0		;
00796A 610C     	EXTU.B   	R0,R1			;
00796C 222A     	XOR     	R2,R2			;
00796E E301     	MOV     	#01,R3		;
007970 D02A     	MOV.L   	@(#0A8,PC),R0	;
007972 400B     	JSR     	@R0			;
007974 0009     	NOP     				;
007976 DB27     	MOV.L   	@(#09C,PC),R11	;
007978 C327     	TRAPA   	#27			;
00797A D425     	MOV.L   	@(#094,PC),R4	;
00797C 241E     	MULU.W  	R1,R4			;
00797E 011A     	STS     	MACL, R1		;
007980 D222     	MOV.L   	@(#088,PC),R2	;
007982 312C     	ADD     	R2,R1			;
007984 841F     	MOV.B   	@(#0F,R1),R0	;
007986 600C     	EXTU.B   	R0,R0			;
007988 8802     	CMP/EQ  	#02,R0		;
00798A 8B02     	BF      	#004			;
00798C 7118     	ADD     	#18,R1		;
00798E A001     	BRA     	#0002			;
007990 0009     	NOP     				;
007992 7110     	ADD     	#10,R1		;
007994 D22B     	MOV.L   	@(#0AC,PC),R2	;
007996 6020     	MOV.B   	@R2,R0		;
007998 600C     	EXTU.B   	R0,R0			;
00799A 8801     	CMP/EQ  	#01,R0		;
00799C 8B02     	BF      	#004			;
00799E D096     	MOV.L   	@(#258,PC),R0	;
0079A0 402B     	JMP     	@R0			;
0079A2 0009     	NOP     				;
0079A4 8814     	CMP/EQ  	#14,R0		;
0079A6 8B06     	BF      	#00C			;
0079A8 6613     	MOV     	R1,R6			;
0079AA D020     	MOV.L   	@(#080,PC),R0	;
0079AC 6201     	MOV.W   	@R0,R2		;
0079AE 622D     	EXTU.W   	R2,R2			;
0079B0 312C     	ADD     	R2,R1			;
0079B2 A14D     	BRA     	#029A			;
0079B4 0009     	NOP     				;
0079B6 8834     	CMP/EQ  	#34,R0		;
0079B8 8B0B     	BF      	#016			;
0079BA D317     	MOV.L   	@(#05C,PC),R3	;
0079BC 6030     	MOV.B   	@R3,R0		;
0079BE 600C     	EXTU.B   	R0,R0			;
0079C0 8801     	CMP/EQ  	#01,R0		;
0079C2 890B     	BT      	#016			;
0079C4 6613     	MOV     	R1,R6			;
0079C6 D019     	MOV.L   	@(#064,PC),R0	;
0079C8 6201     	MOV.W   	@R0,R2		;
0079CA 622D     	EXTU.W   	R2,R2			;
0079CC 321C     	ADD     	R1,R2			;
0079CE A3BE     	BRA     	#077C			;
0079D0 0009     	NOP     				;
0079D2 8824     	CMP/EQ  	#24,R0		;
0079D4 8902     	BT      	#004			;
0079D6 6613     	MOV     	R1,R6			;
0079D8 A13A     	BRA     	#0274			;
0079DA 0009     	NOP     				;
0079DC 6213     	MOV     	R1,R2			;
0079DE 6613     	MOV     	R1,R6			;
0079E0 A3B5     	BRA     	#076A			;
0079E2 0009     	NOP     				;
0079E4 60BD     	EXTU.W   	R11,R0		;
0079E6 8800     	CMP/EQ  	#00,R0		;
0079E8 8B01     	BF      	#002			;
0079EA AEE9     	BRA     	#1DD2			;
0079EC 0009     	NOP     				;
0079EE 8801     	CMP/EQ  	#01,R0		;
0079F0 8B01     	BF      	#002			;
0079F2 A02E     	BRA     	#005C			;
0079F4 0009     	NOP     				;
0079F6 6103     	MOV     	R0,R1			;
0079F8 9006     	MOV.W   	@(#00C,PC),R0	;
0079FA 620D     	EXTU.W   	R0,R2			;
0079FC 3120     	CMP/EQ 	R2,R1			;
0079FE 8928     	BT      	#050			;
007A00 AEDE     	BRA     	#1DBC			;
007A02 0009     	NOP     				;
007A04 0000
007A06 79E4
007A08 0000
007A0A FFFF
007A0C 0900
007A0E 0230
007A10 0000
007A12 0930
007A14 0B07
007A16 0000
007A18 0F00
007A1A 076A
007A1C 0000
007A1E 506C
007A20 0000
007A22 51BE
007A24 0F00
007A26 0760
007A28 0F00
007A2A 0766
007A2C 0F00
007A2E 0764
007A30 0000
007A32 8494
007A34 0000
007A36 8952
007A38 0000
007A3A 8BD4
007A3C 0000
007A3E 8DA8
007A40 0000
007A42 8A60
007A44 0F00
007A46 076C
007A48 0F00
007A4A 0600
007A4C 0F00
007A4E 078B
007A50 0200
007A52 DB02     	MOV.L   	@(#008,PC),R11	;
007A54 C327     	TRAPA   	#27			;
007A56 AEB3     	BRA     	#1D66			;
007A58 0009     	NOP     				;
007A5A 0009     	NOP     				;
007A5C 0307
007A5E 0000
007A60 255A     	XOR     	R5,R5			;
007A62 D32D     	MOV.L   	@(#0B4,PC),R3	;
007A64 200A     	XOR     	R0,R0			;
007A66 2302     	MOV.L   	R0,@R3		;
007A68 1301     	MOV.L   	R0,@(#4,R3)		;
007A6A 1302     	MOV.L   	R0,@(#8,R3)		;
007A6C 1303     	MOV.L   	R0,@(#C,R3)		;
007A6E 1304     	MOV.L   	R0,@(#10,R3)	;
007A70 D3E6     	MOV.L   	@(#398,PC),R3	;
007A72 2302     	MOV.L   	R0,@R3		;
007A74 1302     	MOV.L   	R0,@(#8,R3)		;
007A76 1303     	MOV.L   	R0,@(#C,R3)		;
007A78 1304     	MOV.L   	R0,@(#10,R3)	;
007A7A 813A     	MOV.W   	R0,@(#14,R3)	;
007A7C D327     	MOV.L   	@(#09C,PC),R3	;
007A7E 2300     	MOV.B   	R0,@R3		;
007A80 D128     	MOV.L   	@(#0A0,PC),R1	;
007A82 2102     	MOV.L   	R0,@R1		;
007A84 1101     	MOV.L   	R0,@(#4,R1)		;
007A86 D128     	MOV.L   	@(#0A0,PC),R1	;
007A88 2102     	MOV.L   	R0,@R1		;
007A8A 1101     	MOV.L   	R0,@(#4,R1)		;
007A8C 1102     	MOV.L   	R0,@(#8,R1)		;
007A8E D127     	MOV.L   	@(#09C,PC),R1	;
007A90 2102     	MOV.L   	R0,@R1		;
007A92 1101     	MOV.L   	R0,@(#4,R1)		;
007A94 D126     	MOV.L   	@(#098,PC),R1	;
007A96 2102     	MOV.L   	R0,@R1		;
007A98 1101     	MOV.L   	R0,@(#4,R1)		;
007A9A 8114     	MOV.W   	R0,@(#08,R1)	;
007A9C D125     	MOV.L   	@(#094,PC),R1	;
007A9E 2101     	MOV.W   	R0,@R1		;
007AA0 D125     	MOV.L   	@(#094,PC),R1	;
007AA2 2100     	MOV.B   	R0,@R1		;
007AA4 D125     	MOV.L   	@(#094,PC),R1	;
007AA6 2100     	MOV.B   	R0,@R1		;
007AA8 D125     	MOV.L   	@(#094,PC),R1	;
007AAA 2100     	MOV.B   	R0,@R1		;
007AAC D125     	MOV.L   	@(#094,PC),R1	;
007AAE 2100     	MOV.B   	R0,@R1		;
007AB0 D125     	MOV.L   	@(#094,PC),R1	;
007AB2 2100     	MOV.B   	R0,@R1		;
007AB4 D125     	MOV.L   	@(#094,PC),R1	;
007AB6 2100     	MOV.B   	R0,@R1		;
007AB8 A006     	BRA     	#000C			;
007ABA 0009     	NOP     				;
007ABC E000     	MOV     	#00,R0		;
007ABE D127     	MOV.L   	@(#09C,PC),R1	;
007AC0 8011     	MOV.B   	R0,@(#01,R1)	;
007AC2 D123     	MOV.L   	@(#08C,PC),R1	;
007AC4 2100     	MOV.B   	R0,@R1		;
007AC6 E501     	MOV     	#01,R5		;
007AC8 D3D3     	MOV.L   	@(#34C,PC),R3	;
007ACA 904D     	MOV.W   	@(#09A,PC),R0	;
007ACC 600D     	EXTU.W   	R0,R0			;
007ACE 222A     	XOR     	R2,R2			
007AD0 2322     	MOV.L   	R2,@R3		;
007AD2 70FC     	ADD     	#FC,R0		;
007AD4 8800     	CMP/EQ  	#00,R0		;
007AD6 8902     	BT      	#004			;
007AD8 7304     	ADD     	#04,R3		;
007ADA AFF9     	BRA     	#1FF2			;
007ADC 0009     	NOP     				;
007ADE D3D3     	MOV.L   	@(#34C,PC),R3	;
007AE0 200A     	XOR     	R0,R0			;
007AE2 2302     	MOV.L   	R0,@R3		;
007AE4 1302     	MOV.L   	R0,@(#8,R3)		;
007AE6 8137     	MOV.W   	R0,@(#0E,R3)	;
007AE8 D31E     	MOV.L   	@(#078,PC),R3	;
007AEA 2300     	MOV.B   	R0,@R3		;
007AEC D11C     	MOV.L   	@(#070,PC),R1	;
007AEE 2100     	MOV.B   	R0,@R1		;
007AF0 D119     	MOV.L   	@(#064,PC),R1	;
007AF2 6010     	MOV.B   	@R1,R0		;
007AF4 600C     	EXTU.B   	R0,R0			;
007AF6 8800     	CMP/EQ  	#00,R0		;
007AF8 8902     	BT      	#004			;
007AFA 200A     	XOR     	R0,R0			;
007AFC D115     	MOV.L   	@(#054,PC),R1	;
007AFE 2100     	MOV.B   	R0,@R1		;
007B00 200A     	XOR     	R0,R0			;
007B02 D115     	MOV.L   	@(#054,PC),R1	;
007B04 2100     	MOV.B   	R0,@R1		;
007B06 6053     	MOV     	R5,R0			;
007B08 8800     	CMP/EQ  	#00,R0		;
007B0A 8903     	BT      	#006			;
007B0C 902D     	MOV.W   	@(#05A,PC),R0	;
007B0E 600D     	EXTU.W   	R0,R0			;
007B10 D303     	MOV.L   	@(#00C,PC),R3	;
007B12 2301     	MOV.W   	R0,@R3		;
007B14 000B     	RTS     				;
007B16 0009     	NOP     				;
007B18 0F00
007B1A 0744
007B1C 0F00
007B1E 0772
007B20 0A00
007B22 001E
007B24 0907
007B26 ADB0
007B28 0907
007B2A ADB8
007B2C 0F00
007B2E 0774
007B30 0F00
007B32 077C
007B34 0907
007B36 ADC8
007B38 0907
007B3A ADCE
007B3C 0907
007B3E ADCD
007B40 0907
007B42 ADCF
007B44 0907
007B46 ADCA
007B48 0907
007B4A ADCC
007B4C 0F00
007B4E 0789
007B50 0F00
007B52 0788
007B54 0F00
007B56 07B0
007B58 0907
007B5A ADCB
007B5C 0F000786
007B60 0F00
007B62 078A
007B64 0F00
007B66 076B
007B68 0C00
007B6A 0200
007B6C 211A     	XOR     	R1,R1			;
007B6E D037     	MOV.L   	@(#0DC,PC),R0	;
007B70 2012     	MOV.L   	R1,@R0		;
007B72 D1A8     	MOV.L   	@(#2A0,PC),R1	;
007B74 E000     	MOV     	#00,R0		;
007B76 2102     	MOV.L   	R0,@R1		;
007B78 D133     	MOV.L   	@(#0CC,PC),R1	;
007B7A E000     	MOV     	#00,R0		;
007B7C 600C     	EXTU.B   	R0,R0			;
007B7E 2100     	MOV.B   	R0,@R1		;
007B80 E201     	MOV     	#01,R2		;
007B82 622C     	EXTU.B   	R2,R2			;
007B84 D0AA     	MOV.L   	@(#2A8,PC),R0	;
007B86 2020     	MOV.B   	R2,@R0		;
007B88 A3EB     	BRA     	#07D6			;
007B8A 0009     	NOP     				;
007B8C 6312     	MOV.L   	@R1,R3		;
007B8E 8512     	MOV.W   	@(#04,R1),R0	;
007B90 600D     	EXTU.W   	R0,R0			;
007B92 D41A     	MOV.L   	@(#068,PC),R4	;
007B94 9536     	MOV.W   	@(#06C,PC),R5	;
007B96 3430     	CMP/EQ 	R3,R4			;
007B98 8B01     	BF      	#002			;
007B9A 3500     	CMP/EQ 	R0,R5			;
007B9C 8902     	BT      	#004			;
007B9E E200     	MOV     	#00,R2		;
007BA0 A01A     	BRA     	#0034			;
007BA2 0009     	NOP     				;
007BA4 E29C     	MOV     	#9C,R2		;
007BA6 622C     	EXTU.B   	R2,R2			;
007BA8 312C     	ADD     	R2,R1			;
007BAA 7106     	ADD     	#06,R1		;
007BAC 6211     	MOV.W   	@R1,R2		;
007BAE 4228     	SHLL16  	R2			;
007BB0 8511     	MOV.W   	@(#02,R1),R0	;
007BB2 630D     	EXTU.W   	R0,R3			;
007BB4 232B     	OR      	R2,R3			;
007BB6 E096     	MOV     	#96,R0		;
007BB8 600C     	EXTU.B   	R0,R0			;
007BBA 330C     	ADD     	R0,R3			;
007BBC D48E     	MOV.L   	@(#238,PC),R4	;
007BBE 2432     	MOV.L   	R3,@R4		;
007BC0 7108     	ADD     	#08,R1		;
007BC2 6211     	MOV.W   	@R1,R2		;
007BC4 4228     	SHLL16  	R2			;
007BC6 8511     	MOV.W   	@(#02,R1),R0	;
007BC8 600D     	EXTU.W   	R0,R0			;
007BCA 202B     	OR      	R2,R0			;
007BCC 4019     	SHLR8   	R0			;
007BCE 4009     	SHLR2   	R0			;
007BD0 4001     	SHLR    	R0			;
007BD2 D18A     	MOV.L   	@(#228,PC),R1	;
007BD4 2101     	MOV.W   	R0,@R1		;
007BD6 E201     	MOV     	#01,R2		;
007BD8 211A     	XOR     	R1,R1			;
007BDA D095     	MOV.L   	@(#254,PC),R0	;
007BDC 2010     	MOV.B   	R1,@R0		;
007BDE 6023     	MOV     	R2,R0			;
007BE0 8800     	CMP/EQ  	#00,R0		;
007BE2 8B01     	BF      	#002			;
007BE4 A36B     	BRA     	#06D6			;
007BE6 0009     	NOP     				;
007BE8 A00D     	BRA     	#001A			;
007BEA 0009     	NOP     				;
007BEC 0900
007BEE 0000
007BF0 0900
007BF2 0068
007BF4 0F00
007BF6 02A6
007BF8 0000
007BFA 7B8C
007BFC 0143
007BFE 4430
007C00 0F00
007C02 076F
007C04 3031
007C06 D07C     	MOV.L   	@(#1F0,PC),R0	;
007C08 6102     	MOV.L   	@R0,R1		;
007C0A 6313     	MOV     	R1,R3			;
007C0C D00F     	MOV.L   	@(#03C,PC),R0	;
007C0E 2012     	MOV.L   	R1,@R0		;
007C10 E102     	MOV     	#02,R1		;
007C12 611C     	EXTU.B   	R1,R1			;
007C14 D086     	MOV.L   	@(#218,PC),R0	;
007C16 2010     	MOV.B   	R1,@R0		;
007C18 D078     	MOV.L   	@(#1E0,PC),R0	;
007C1A 6101     	MOV.W   	@R0,R1		;
007C1C 611D     	EXTU.W   	R1,R1			;
007C1E 222A     	XOR     	R2,R2			;
007C20 D077     	MOV.L   	@(#1DC,PC),R0	;
007C22 2021     	MOV.W   	R2,@R0		;
007C24 D07B     	MOV.L   	@(#1EC,PC),R0	;
007C26 2012     	MOV.L   	R1,@R0		;
007C28 D076     	MOV.L   	@(#1D8,PC),R0	;
007C2A 2020     	MOV.B   	R2,@R0		;
007C2C D106     	MOV.L   	@(#018,PC),R1	;
007C2E E040     	MOV     	#40,R0		;
007C30 600C     	EXTU.B   	R0,R0			;
007C32 2100     	MOV.B   	R0,@R1		;
007C34 D07D     	MOV.L   	@(#1F4,PC),R0	;
007C36 E202     	MOV     	#02,R2		;
007C38 4218     	SHLL8   	R2			;
007C3A 2022     	MOV.L   	R2,@R0		;
007C3C D2AD     	MOV.L   	@(#2B4,PC),R2	;
007C3E E001     	MOV     	#01,R0		;
007C40 600C     	EXTU.B   	R0,R0			;
007C42 2200     	MOV.B   	R0,@R2		;
007C44 A38D     	BRA     	#071A			;
007C46 0009     	NOP     				;
007C48 0F00
007C4A 0771
007C4C 0F00
007C4E 02BC
007C50 D06B     	MOV.L   	@(#1AC,PC),R0	;
007C52 6201     	MOV.W   	@R0,R2		;
007C54 622D     	EXTU.W   	R2,R2			;
007C56 D070     	MOV.L   	@(#1C0,PC),R0	;
007C58 320C     	ADD     	R0,R2			;
007C5A D06A     	MOV.L   	@(#1A8,PC),R0	;
007C5C 6800     	MOV.B   	@R0,R8		;
007C5E 688C     	EXTU.B   	R8,R8			;
007C60 D06C     	MOV.L   	@(#1B0,PC),R0	;
007C62 6902     	MOV.L   	@R0,R9		;
007C64 6510     	MOV.B   	@R1,R5		;
007C66 655C     	EXTU.B   	R5,R5			;
007C68 6053     	MOV     	R5,R0			;
007C6A 8800     	CMP/EQ  	#00,R0		;
007C6C 8942     	BT      	#084			;
007C6E 6313     	MOV     	R1,R3			;
007C70 315C     	ADD     	R5,R1			;
007C72 7306     	ADD     	#06,R3		;
007C74 6731     	MOV.W   	@R3,R7		;
007C76 4728     	SHLL16  	R7			;
007C78 8531     	MOV.W   	@(#02,R3),R0	;
007C7A 600D     	EXTU.W   	R0,R0			;
007C7C 270B     	OR      	R0,R7			;
007C7E E096     	MOV     	#96,R0		;
007C80 600C     	EXTU.B   	R0,R0			;
007C82 307C     	ADD     	R7,R0			;
007C84 2202     	MOV.L   	R0,@R2		;
007C86 7308     	ADD     	#08,R3		;
007C88 6731     	MOV.W   	@R3,R7		;
007C8A 4728     	SHLL16  	R7			;
007C8C 8531     	MOV.W   	@(#02,R3),R0	;
007C8E 600D     	EXTU.W   	R0,R0			;
007C90 207B     	OR      	R7,R0			;
007C92 1201     	MOV.L   	R0,@(#4,R2)		;
007C94 730B     	ADD     	#0B,R3		;
007C96 6530     	MOV.B   	@R3,R5		;
007C98 605C     	EXTU.B   	R5,R0			;
007C9A C902     	AND     	#02,R0		;
007C9C 6503     	MOV     	R0,R5			;
007C9E 7301     	ADD     	#01,R3		;
007CA0 6031     	MOV.W   	@R3,R0		;
007CA2 600D     	EXTU.W   	R0,R0			;
007CA4 8124     	MOV.W   	R0,@(#08,R2)	;
007CA6 7306     	ADD     	#06,R3		;
007CA8 6030     	MOV.B   	@R3,R0		;
007CAA 600C     	EXTU.B   	R0,R0			;
007CAC 330C     	ADD     	R0,R3			;
007CAE 7301     	ADD     	#01,R3		;
007CB0 C801     	TST     	#01,R0		;
007CB2 8B00     	BF      	#000			;
007CB4 7301     	ADD     	#01,R3		;
007CB6 3130     	CMP/EQ 	R3,R1			;
007CB8 8B05     	BF      	#00A			;
007CBA 200A     	XOR     	R0,R0			;
007CBC 802A     	MOV.B   	R0,@(#0A,R2)	;
007CBE 6053     	MOV     	R5,R0			;
007CC0 802B     	MOV.B   	R0,@(#0B,R2)	;
007CC2 A00B     	BRA     	#0016			;
007CC4 0009     	NOP     				;
007CC6 7304     	ADD     	#04,R3		;
007CC8 6030     	MOV.B   	@R3,R0		;
007CCA 600C     	EXTU.B   	R0,R0			;
007CCC C9F8     	AND     	#F8,R0		;
007CCE 205B     	OR      	R5,R0			;
007CD0 7304     	ADD     	#04,R3		;
007CD2 6530     	MOV.B   	@R3,R5		;
007CD4 655C     	EXTU.B   	R5,R5			;
007CD6 4518     	SHLL8   	R5			;
007CD8 205B     	OR      	R5,R0			;
007CDA 8125     	MOV.W   	R0,@(#0A,R2)	;
007CDC E0FF     	MOV     	#FF,R0		;
007CDE 600C     	EXTU.B   	R0,R0			;
007CE0 3800     	CMP/EQ 	R0,R8			;
007CE2 894E     	BT      	#09C			;
007CE4 7801     	ADD     	#01,R8		;
007CE6 720C     	ADD     	#0C,R2		;
007CE8 6513     	MOV     	R1,R5			;
007CEA 3568     	SUB     	R6,R5			;
007CEC 90A2     	MOV.W   	@(#144,PC),R0	;
007CEE 600D     	EXTU.W   	R0,R0			;
007CF0 3506     	CMP/HI 	R0,R5			;
007CF2 8BB7     	BF      	#16E			;
007CF4 79FF     	ADD     	#FF,R9		;
007CF6 6093     	MOV     	R9,R0			;
007CF8 8800     	CMP/EQ  	#00,R0		;
007CFA 8B17     	BF      	#02E			;
007CFC 200A     	XOR     	R0,R0			;
007CFE D143     	MOV.L   	@(#10C,PC),R1	;
007D00 2102     	MOV.L   	R0,@R1		;
007D02 D141     	MOV.L   	@(#104,PC),R1	;
007D04 2101     	MOV.W   	R0,@R1		;
007D06 211A     	XOR     	R1,R1			;
007D08 233A     	XOR     	R3,R3			;
007D0A E0FF     	MOV     	#FF,R0		;
007D0C 600C     	EXTU.B   	R0,R0			;
007D0E 3088     	SUB     	R8,R0			;
007D10 7001     	ADD     	#01,R0		;
007D12 6403     	MOV     	R0,R4			;
007D14 E003     	MOV     	#03,R0		;
007D16 240E     	MULU.W  	R0,R4			;
007D18 041A     	STS     	MACL, R4		;
007D1A 6023     	MOV     	R2,R0			;
007D1C 2212     	MOV.L   	R1,@R2		;
007D1E 7204     	ADD     	#04,R2		;
007D20 74FF     	ADD     	#FF,R4		;
007D22 4415     	CMP/PL  	R4			;
007D24 89FA     	BT      	#1F4			;
007D26 78FE     	ADD     	#FE,R8		;
007D28 A051     	BRA     	#00A2			;
007D2A 0009     	NOP     				;
007D2C D440     	MOV.L   	@(#100,PC),R4	;
007D2E E004     	MOV     	#04,R0		;
007D30 2400     	MOV.B   	R0,@R4		;
007D32 D139     	MOV.L   	@(#0E4,PC),R1	;
007D34 3218     	SUB     	R1,R2			;
007D36 D032     	MOV.L   	@(#0C8,PC),R0	;
007D38 2021     	MOV.W   	R2,@R0		;
007D3A D036     	MOV.L   	@(#0D8,PC),R0	;
007D3C 2092     	MOV.L   	R9,@R0		;
007D3E D031     	MOV.L   	@(#0C4,PC),R0	;
007D40 2080     	MOV.B   	R8,@R0		;
007D42 4F22     	STS.L   	PR,@-R15		;
007D44 DB32     	MOV.L   	@(#0C8,PC),R11	;
007D46 C32A     	TRAPA   	#2A			;
007D48 D034     	MOV.L   	@(#0D0,PC),R0	;
007D4A 6100     	MOV.B   	@R0,R1		;
007D4C 222A     	XOR     	R2,R2			;
007D4E E301     	MOV     	#01,R3		;
007D50 D033     	MOV.L   	@(#0CC,PC),R0	;
007D52 400B     	JSR     	@R0			;
007D54 0009     	NOP     				;
007D56 D031     	MOV.L   	@(#0C4,PC),R0	;
007D58 6100     	MOV.B   	@R0,R1		;
007D5A E406     	MOV     	#06,R4		;
007D5C 644C     	EXTU.B   	R4,R4			;
007D5E 214E     	MULU.W  	R4,R1			;
007D60 041A     	STS     	MACL, R4		;
007D62 D031     	MOV.L   	@(#0C4,PC),R0	;
007D64 340C     	ADD     	R0,R4			;
007D66 8442     	MOV.B   	@(#02,R4),R0	;
007D68 610C     	EXTU.B   	R0,R1			;
007D6A DB29     	MOV.L   	@(#0A4,PC),R11	;
007D6C C327     	TRAPA   	#27			;
007D6E 4F26     	LDS.L   	@R15+,PR		;
007D70 D42C     	MOV.L   	@(#0B0,PC),R4	;
007D72 6240     	MOV.B   	@R4,R2		;
007D74 622C     	EXTU.B   	R2,R2			;
007D76 3210     	CMP/EQ 	R1,R2			;
007D78 8901     	BT      	#002			;
007D7A ADEB     	BRA     	#1BD6			;
007D7C 0009     	NOP     				;
007D7E AD1F     	BRA     	#1A3E			;
007D80 0009     	NOP     				;
007D82 78FF     	ADD     	#FF,R8		;
007D84 6010     	MOV.B   	@R1,R0		;
007D86 600C     	EXTU.B   	R0,R0			;
007D88 8800     	CMP/EQ  	#00,R0		;
007D8A 8905     	BT      	#00A			;
007D8C 3168     	SUB     	R6,R1			;
007D8E 621D     	EXTU.W   	R1,R2			;
007D90 9050     	MOV.W   	@(#0A0,PC),R0	;
007D92 600D     	EXTU.W   	R0,R0			;
007D94 3206     	CMP/HI 	R0,R2			;
007D96 8B0A     	BF      	#014			;
007D98 211A     	XOR     	R1,R1			;
007D9A D31B     	MOV.L   	@(#06C,PC),R3	;
007D9C 2311     	MOV.W   	R1,@R3		;
007D9E 79FF     	ADD     	#FF,R9		;
007DA0 6093     	MOV     	R9,R0			;
007DA2 8800     	CMP/EQ  	#00,R0		;
007DA4 8B05     	BF      	#00A			;
007DA6 D319     	MOV.L   	@(#064,PC),R3	;
007DA8 2312     	MOV.L   	R1,@R3		;
007DAA A010     	BRA     	#0020			;
007DAC 0009     	NOP     				;
007DAE D116     	MOV.L   	@(#058,PC),R1	;
007DB0 2121     	MOV.W   	R2,@R1		;
007DB2 D319     	MOV.L   	@(#064,PC),R3	;
007DB4 6232     	MOV.L   	@R3,R2		;
007DB6 4218     	SHLL8   	R2			;
007DB8 4219     	SHLR8   	R2			;
007DBA 5031     	MOV.L   	@(#04,R3),R0	;
007DBC 4019     	SHLR8   	R0			;
007DBE 4009     	SHLR2   	R0			;
007DC0 4001     	SHLR    	R0			;
007DC2 70FF     	ADD     	#FF,R0		;
007DC4 3098     	SUB     	R9,R0			;
007DC6 302C     	ADD     	R2,R0			;
007DC8 7001     	ADD     	#01,R0		;
007DCA D3D8     	MOV.L   	@(#360,PC),R3	;
007DCC 2302     	MOV.L   	R0,@R3		;
007DCE D117     	MOV.L   	@(#05C,PC),R1	;
007DD0 6A12     	MOV.L   	@R1,R10		;
007DD2 4A19     	SHLR8   	R10			;
007DD4 4A18     	SHLL8   	R10			;
007DD6 6083     	MOV     	R8,R0			;
007DD8 8800     	CMP/EQ  	#00,R0		;
007DDA 8B02     	BF      	#004			;
007DDC 2AAA     	XOR     	R10,R10		;
007DDE A001     	BRA     	#0002			;
007DE0 0009     	NOP     				;
007DE2 2A8B     	OR      	R8,R10		;
007DE4 21A2     	MOV.L   	R10,@R1		;
007DE6 D143     	MOV.L   	@(#10C,PC),R1	;
007DE8 E002     	MOV     	#02,R0		;
007DEA 600C     	EXTU.B   	R0,R0			;
007DEC 2100     	MOV.B   	R0,@R1		;
007DEE A266     	BRA     	#04CC			;
007DF0 0009     	NOP     				;
007DF2 0009     	NOP     				;
007DF4 0000
007DF6 7C50
007DF8 0F00
007DFA 0760
007DFC 0F00
007DFE 0766
007E00 0F00
007E02 0768
007E04 0F00
007E06 076D
007E08 0F00
007E0A 0764
007E0C 0F00
007E0E 075C
007E10 0B07
007E12 0000
007E14 0F00
007E16 074C
007E18 0907
007E1A 4210
007E1C 0F00
007E1E 0772
007E20 0000
007E22 51BE
007E24 0F00
007E26 078B
007E28 0F00
007E2A 0600
007E2C 0F00
007E2E 0758
007E30 0F00
007E32 076C     	MOV.B   	@(R0,R6),R7		;
007E34 07FF     	MAC.L   	@R15+,@R7+		;
007E36 D213     	MOV.L   	@(#04C,PC),R2	;
007E38 5021     	MOV.L   	@(#04,R2),R0	;
007E3A 4018     	SHLL8   	R0			;
007E3C 4019     	SHLR8   	R0			;
007E3E D1F6     	MOV.L   	@(#3D8,PC),R1	;
007E40 2102     	MOV.L   	R0,@R1		;
007E42 E102     	MOV     	#02,R1		;
007E44 3106     	CMP/HI 	R0,R1			;
007E46 8B03     	BF      	#006			;
007E48 E100     	MOV     	#00,R1		;
007E4A 6203     	MOV     	R0,R2			;
007E4C A018     	BRA     	#0030			;
007E4E 0009     	NOP     				;
007E50 D1EF     	MOV.L   	@(#3BC,PC),R1	;
007E52 6212     	MOV.L   	@R1,R2		;
007E54 6323     	MOV     	R2,R3			;
007E56 4219     	SHLR8   	R2			;
007E58 3206     	CMP/HI 	R0,R2			;
007E5A 8B03     	BF      	#006			;
007E5C E101     	MOV     	#01,R1		;
007E5E 3208     	SUB     	R0,R2			;
007E60 A00E     	BRA     	#001C			;
007E62 0009     	NOP     				;
007E64 633C     	EXTU.B   	R3,R3			;
007E66 332C     	ADD     	R2,R3			;
007E68 3032     	CMP/HS 	R3,R0			;
007E6A 8B05     	BF      	#00A			;
007E6C E102     	MOV     	#02,R1		;
007E6E 3308     	SUB     	R0,R3			;
007E70 7301     	ADD     	#01,R3		;
007E72 6233     	MOV     	R3,R2			;
007E74 A004     	BRA     	#0008			;
007E76 0009     	NOP     				;
007E78 3028     	SUB     	R2,R0			;
007E7A 6203     	MOV     	R0,R2			;
007E7C 7202     	ADD     	#02,R2		;
007E7E E100     	MOV     	#00,R1		;
007E80 000B     	RTS     				;
007E82 0009     	NOP     				;
007E84 0F00
007E86 0744
007E88 D1E3     	MOV.L   	@(#38C,PC),R1	;
007E8A 6012     	MOV.L   	@R1,R0		;
007E8C 8800     	CMP/EQ  	#00,R0		;
007E8E 8B05     	BF      	#00A			;
007E90 9034     	MOV.W   	@(#068,PC),R0	;
007E92 600D     	EXTU.W   	R0,R0			;
007E94 D318     	MOV.L   	@(#060,PC),R3	;
007E96 2301     	MOV.W   	R0,@R3		;
007E98 AC92     	BRA     	#1924			;
007E9A 0009     	NOP     				;
007E9C D028     	MOV.L   	@(#0A0,PC),R0	;
007E9E 6200     	MOV.B   	@R0,R2		;
007EA0 622C     	EXTU.B   	R2,R2			;
007EA2 E10C     	MOV     	#0C,R1		;
007EA4 212E     	MULU.W  	R2,R1			;
007EA6 021A     	STS     	MACL, R2		;
007EA8 D0A7     	MOV.L   	@(#29C,PC),R0	;
007EAA 320C     	ADD     	R0,R2			;
007EAC 6122     	MOV.L   	@R2,R1		;
007EAE D3A5     	MOV.L   	@(#294,PC),R3	;
007EB0 2312     	MOV.L   	R1,@R3		;
007EB2 5021     	MOV.L   	@(#04,R2),R0	;
007EB4 6903     	MOV     	R0,R9			;
007EB6 4919     	SHLR8   	R9			;
007EB8 4909     	SHLR2   	R9			;
007EBA 4901     	SHLR    	R9			;
007EBC D1A0     	MOV.L   	@(#280,PC),R1	;
007EBE E003     	MOV     	#03,R0		;
007EC0 600C     	EXTU.B   	R0,R0			;
007EC2 2100     	MOV.B   	R0,@R1		;
007EC4 D0D2     	MOV.L   	@(#348,PC),R0	;
007EC6 E202     	MOV     	#02,R2		;
007EC8 4218     	SHLL8   	R2			;
007ECA 2022     	MOV.L   	R2,@R0		;
007ECC 222A     	XOR     	R2,R2			;
007ECE D0D4     	MOV.L   	@(#350,PC),R0	;
007ED0 2021     	MOV.W   	R2,@R0		;
007ED2 D099     	MOV.L   	@(#264,PC),R0	;
007ED4 2092     	MOV.L   	R9,@R0		;
007ED6 D0D1     	MOV.L   	@(#344,PC),R0	;
007ED8 2020     	MOV.B   	R2,@R0		;
007EDA D196     	MOV.L   	@(#258,PC),R1	;
007EDC E040     	MOV     	#40,R0		;
007EDE 600C     	EXTU.B   	R0,R0			;
007EE0 2100     	MOV.B   	R0,@R1		;
007EE2 D204     	MOV.L   	@(#010,PC),R2	;
007EE4 E001     	MOV     	#01,R0		;
007EE6 600C     	EXTU.B   	R0,R0			;
007EE8 2200     	MOV.B   	R0,@R2		;
007EEA A23A     	BRA     	#0474			;
007EEC 0009     	NOP     				;
007EEE 0009     	NOP     				;
007EF0 0000
007EF2 7EFE
007EF4 0F00
007EF6 076B
007EF8 0A00
007EFA 001E
007EFC 0200
007EFE EB00     	MOV     	#00,R11		;
007F00 D002     	MOV.L   	@(#008,PC),R0	;
007F02 2B0B     	OR      	R0,R11		;
007F04 C321     	TRAPA   	#21			;
007F06 AC5B     	BRA     	#18B6			;
007F08 0009     	NOP     				;
007F0A 0009     	NOP     				;
007F0C 0607
007F0E 0000     	
007F10 DB19     	MOV.L   	@(#064,PC),R11	;
007F12 C32A     	TRAPA   	#2A			;
007F14 D00A     	MOV.L   	@(#028,PC),R0	;
007F16 6200     	MOV.B   	@R0,R2		;
007F18 622C     	EXTU.B   	R2,R2			;
007F1A D08B     	MOV.L   	@(#22C,PC),R0	;
007F1C E10C     	MOV     	#0C,R1		;
007F1E 212E     	MULU.W  	R2,R1			;
007F20 021A     	STS     	MACL, R2		;
007F22 320C     	ADD     	R0,R2			;
007F24 D015     	MOV.L   	@(#054,PC),R0	;
007F26 2022     	MOV.L   	R2,@R0		;
007F28 E106     	MOV     	#06,R1		;
007F2A D015     	MOV.L   	@(#054,PC),R0	;
007F2C 2011     	MOV.W   	R1,@R0		;
007F2E DB12     	MOV.L   	@(#048,PC),R11	;
007F30 E100     	MOV     	#00,R1		;
007F32 2B1B     	OR      	R1,R11		;
007F34 D013     	MOV.L   	@(#04C,PC),R0	;
007F36 400B     	JSR     	@R0			;
007F38 0009     	NOP     				;
007F3A AC41     	BRA     	#1882			;
007F3C 0009     	NOP     				;
007F3E 0009     	NOP     				;
007F40 0F00
007F42 076E
007F44 DB0C     	MOV.L   	@(#030,PC),R11	;
007F46 C32A     	TRAPA   	#2A			;
007F48 D17F     	MOV.L   	@(#1FC,PC),R1	;
007F4A E018     	MOV     	#18,R0		;
007F4C 310C     	ADD     	R0,R1			;
007F4E D00B     	MOV.L   	@(#02C,PC),R0	;
007F50 2012     	MOV.L   	R1,@R0		;
007F52 D1AF     	MOV.L   	@(#2BC,PC),R1	;
007F54 6012     	MOV.L   	@R1,R0		;
007F56 600C     	EXTU.B   	R0,R0			;
007F58 E106     	MOV     	#06,R1		;
007F5A 611C     	EXTU.B   	R1,R1			;
007F5C 210E     	MULU.W  	R0,R1			;
007F5E 021A     	STS     	MACL, R2		;
007F60 622D     	EXTU.W   	R2,R2			;
007F62 D007     	MOV.L   	@(#01C,PC),R0	;
007F64 2021     	MOV.W   	R2,@R0		;
007F66 DB04     	MOV.L   	@(#010,PC),R11	;
007F68 E100     	MOV     	#00,R1		;
007F6A 2B1B     	OR      	R1,R11		;
007F6C D005     	MOV.L   	@(#014,PC),R0	;
007F6E 400B     	JSR     	@R0			;
007F70 0009     	NOP     				;
007F72 AC25     	BRA     	#184A			;
007F74 0009     	NOP     				;
007F76 0009     	NOP     				;
007F78 0307
007F7A 0000
007F7C 0F00
007F7E 0250
007F80 0F00
007F82 0254
007F84 0000
007F86 23BA     	XOR     	R11,R3		;
007F88 4F22     	STS.L   	PR,@-R15		;
007F8A BF54     	BRS     	#1EA8			;
007F8C 0009     	NOP     				;
007F8E 4F26     	LDS.L   	@R15+,PR		;
007F90 D06A     	MOV.L   	@(#1A8,PC),R0	;
007F92 2010     	MOV.B   	R1,@R0		;
007F94 6013     	MOV     	R1,R0			;
007F96 8800     	CMP/EQ  	#00,R0		;
007F98 894F     	BT      	#09E			;
007F9A 8801     	CMP/EQ  	#01,R0		;
007F9C 8B22     	BF      	#044			;
007F9E 211A     	XOR     	R1,R1			;
007FA0 D09C     	MOV.L   	@(#270,PC),R0	;
007FA2 2012     	MOV.L   	R1,@R0		;
007FA4 D068     	MOV.L   	@(#1A0,PC),R0	;
007FA6 6502     	MOV.L   	@R0,R5		;
007FA8 4518     	SHLL8   	R5			;
007FAA 4519     	SHLR8   	R5			;
007FAC D365     	MOV.L   	@(#194,PC),R3	;
007FAE 2352     	MOV.L   	R5,@R3		;
007FB0 5501     	MOV.L   	@(#04,R0),R5	;
007FB2 4519     	SHLR8   	R5			;
007FB4 4509     	SHLR2   	R5			;
007FB6 4501     	SHLR    	R5			;
007FB8 D35F     	MOV.L   	@(#17C,PC),R3	;
007FBA 2352     	MOV.L   	R5,@R3		;
007FBC E002     	MOV     	#02,R0		;
007FBE D397     	MOV.L   	@(#25C,PC),R3	;
007FC0 2300     	MOV.B   	R0,@R3		;
007FC2 D397     	MOV.L   	@(#25C,PC),R3	;
007FC4 E018     	MOV     	#18,R0		;
007FC6 2301     	MOV.W   	R0,@R3		;
007FC8 D15A     	MOV.L   	@(#168,PC),R1	;
007FCA E040     	MOV     	#40,R0		;
007FCC 600C     	EXTU.B   	R0,R0			;
007FCE 2100     	MOV.B   	R0,@R1		;
007FD0 D2E1     	MOV.L   	@(#384,PC),R2	;
007FD2 E001     	MOV     	#01,R0		;
007FD4 600C     	EXTU.B   	R0,R0			;
007FD6 2200     	MOV.B   	R0,@R2		;
007FD8 D359     	MOV.L   	@(#164,PC),R3	;
007FDA E534     	MOV     	#34,R5		;
007FDC 655C     	EXTU.B   	R5,R5			;
007FDE 2350     	MOV.B   	R5,@R3		;
007FE0 A1BF     	BRA     	#037E			;
007FE2 0009     	NOP     				;
007FE4 D151     	MOV.L   	@(#144,PC),R1	;
007FE6 6012     	MOV.L   	@R1,R0		;
007FE8 8800     	CMP/EQ  	#00,R0		;
007FEA 892A     	BT      	#054			;
007FEC D156     	MOV.L   	@(#158,PC),R1	;
007FEE 6612     	MOV.L   	@R1,R6		;
007FF0 4618     	SHLL8   	R6			;
007FF2 4619     	SHLR8   	R6			;
007FF4 6503     	MOV     	R0,R5			;
007FF6 3568     	SUB     	R6,R5			;
007FF8 5311     	MOV.L   	@(#04,R1),R3	;
007FFA 4319     	SHLR8   	R3			;
007FFC 4309     	SHLR2   	R3			;
007FFE 4301     	SHLR    	R3			;
008000 3358     	SUB     	R5,R3			;
008002 D14D     	MOV.L   	@(#134,PC),R1	;
008004 2132     	MOV.L   	R3,@R1		;
008006 D64F     	MOV.L   	@(#13C,PC),R6	;
008008 2602     	MOV.L   	R0,@R6		;
00800A D081     	MOV.L   	@(#204,PC),R0	;
00800C 6102     	MOV.L   	@R0,R1		;
00800E 6013     	MOV     	R1,R0			;
008010 4119     	SHLR8   	R1			;
008012 C9FF     	AND     	#FF,R0		;
008014 310C     	ADD     	R0,R1			;
008016 D07F     	MOV.L   	@(#1FC,PC),R0	;
008018 2012     	MOV.L   	R1,@R0		;
00801A E002     	MOV     	#02,R0		;
00801C D37F     	MOV.L   	@(#1FC,PC),R3	;
00801E 2300     	MOV.B   	R0,@R3		;
008020 D37F     	MOV.L   	@(#1FC,PC),R3	;
008022 E018     	MOV     	#18,R0		;
008024 2301     	MOV.W   	R0,@R3		;
008026 D2CC     	MOV.L   	@(#330,PC),R2	;
008028 E001     	MOV     	#01,R0		;
00802A 600C     	EXTU.B   	R0,R0			;
00802C 2200     	MOV.B   	R0,@R2		;
00802E D344     	MOV.L   	@(#110,PC),R3	;
008030 E534     	MOV     	#34,R5		;
008032 655C     	EXTU.B   	R5,R5			;
008034 2350     	MOV.B   	R5,@R3		;
008036 A194     	BRA     	#0328			;
008038 0009     	NOP     				;
00803A 6023     	MOV     	R2,R0			;
00803C E002     	MOV     	#02,R0		;
00803E 3022     	CMP/HS 	R2,R0			;
008040 8B0A     	BF      	#014			;
008042 D33F     	MOV.L   	@(#0FC,PC),R3	;
008044 E500     	MOV     	#00,R5		;
008046 655C     	EXTU.B   	R5,R5			;
008048 2350     	MOV.B   	R5,@R3		;
00804A 907F     	MOV.W   	@(#0FE,PC),R0	;
00804C 600D     	EXTU.W   	R0,R0			;
00804E D3C3     	MOV.L   	@(#30C,PC),R3	;
008050 2301     	MOV.W   	R0,@R3		;
008052 D037     	MOV.L   	@(#0DC,PC),R0	;
008054 402B     	JMP     	@R0			;
008056 0009     	NOP     				;
008058 D36F     	MOV.L   	@(#1BC,PC),R3	;
00805A 6132     	MOV.L   	@R3,R1		;
00805C 4118     	SHLL8   	R1			;
00805E D36C     	MOV.L   	@(#1B0,PC),R3	;
008060 6432     	MOV.L   	@R3,R4		;
008062 644C     	EXTU.B   	R4,R4			;
008064 214B     	OR      	R4,R1			;
008066 2312     	MOV.L   	R1,@R3		;
008068 D02F     	MOV.L   	@(#0BC,PC),R0	;
00806A 6100     	MOV.B   	@R0,R1		;
00806C 611C     	EXTU.B   	R1,R1			;
00806E 6513     	MOV     	R1,R5			;
008070 6023     	MOV     	R2,R0			;
008072 70FE     	ADD     	#FE,R0		;
008074 3108     	SUB     	R0,R1			;
008076 611C     	EXTU.B   	R1,R1			;
008078 6713     	MOV     	R1,R7			;
00807A E40C     	MOV     	#0C,R4		;
00807C 241E     	MULU.W  	R1,R4			;
00807E 011A     	STS     	MACL, R1		;
008080 D031     	MOV.L   	@(#0C4,PC),R0	;
008082 6303     	MOV     	R0,R3			;
008084 7018     	ADD     	#18,R0		;
008086 242E     	MULU.W  	R2,R4			;
008088 041A     	STS     	MACL, R4		;
00808A 334C     	ADD     	R4,R3			;
00808C 6236     	MOV.L   	@R3+,R2		;
00808E 2022     	MOV.L   	R2,@R0		;
008090 7004     	ADD     	#04,R0		;
008092 71FC     	ADD     	#FC,R1		;
008094 4115     	CMP/PL  	R1			;
008096 89F9     	BT      	#1F2			;
008098 6203     	MOV     	R0,R2			;
00809A D12B     	MOV.L   	@(#0AC,PC),R1	;
00809C 3218     	SUB     	R1,R2			;
00809E 622D     	EXTU.W   	R2,R2			;
0080A0 D15F     	MOV.L   	@(#17C,PC),R1	;
0080A2 2121     	MOV.W   	R2,@R1		;
0080A4 D121     	MOV.L   	@(#084,PC),R1	;
0080A6 6212     	MOV.L   	@R1,R2		;
0080A8 211A     	XOR     	R1,R1			;
0080AA 3210     	CMP/EQ 	R1,R2			;
0080AC 8B1B     	BF      	#036			;
0080AE D21E     	MOV.L   	@(#078,PC),R2	;
0080B0 2270     	MOV.B   	R7,@R2		;
0080B2 7702     	ADD     	#02,R7		;
0080B4 E1FF     	MOV     	#FF,R1		;
0080B6 611C     	EXTU.B   	R1,R1			;
0080B8 3178     	SUB     	R7,R1			;
0080BA 7101     	ADD     	#01,R1		;
0080BC 6413     	MOV     	R1,R4			;
0080BE E103     	MOV     	#03,R1		;
0080C0 241E     	MULU.W  	R1,R4			;
0080C2 041A     	STS     	MACL, R4		;
0080C4 222A     	XOR     	R2,R2			;
0080C6 2022     	MOV.L   	R2,@R0		;
0080C8 7004     	ADD     	#04,R0		;
0080CA 74FF     	ADD     	#FF,R4		;
0080CC 4415     	CMP/PL  	R4			;
0080CE 89FA     	BT      	#1F4			;
0080D0 D31B     	MOV.L   	@(#06C,PC),R3	;
0080D2 E500     	MOV     	#00,R5		;
0080D4 655C     	EXTU.B   	R5,R5			;
0080D6 2350     	MOV.B   	R5,@R3		;
0080D8 9038     	MOV.W   	@(#070,PC),R0	;
0080DA 600D     	EXTU.W   	R0,R0			;
0080DC D39F     	MOV.L   	@(#27C,PC),R3	;
0080DE 2301     	MOV.W   	R0,@R3		;
0080E0 D013     	MOV.L   	@(#04C,PC),R0	;
0080E2 402B     	JMP     	@R0			;
0080E4 0009     	NOP     				;
0080E6 7702     	ADD     	#02,R7		;
0080E8 D04C     	MOV.L   	@(#130,PC),R0	;
0080EA 2070     	MOV.B   	R7,@R0		;
0080EC D116     	MOV.L   	@(#058,PC),R1	;
0080EE 6612     	MOV.L   	@R1,R6		;
0080F0 4618     	SHLL8   	R6			;
0080F2 4619     	SHLR8   	R6			;
0080F4 6523     	MOV     	R2,R5			;
0080F6 3568     	SUB     	R6,R5			;
0080F8 5311     	MOV.L   	@(#04,R1),R3	;
0080FA 4319     	SHLR8   	R3			;
0080FC 4309     	SHLR2   	R3			;
0080FE 4301     	SHLR    	R3			;
008100 3358     	SUB     	R5,R3			;
008102 D10D     	MOV.L   	@(#034,PC),R1	;
008104 2132     	MOV.L   	R3,@R1		;
008106 D60F     	MOV.L   	@(#03C,PC),R6	;
008108 2622     	MOV.L   	R2,@R6		;
00810A D10A     	MOV.L   	@(#028,PC),R1	;
00810C E040     	MOV     	#40,R0		;
00810E 600C     	EXTU.B   	R0,R0			;
008110 2100     	MOV.B   	R0,@R1		;
008112 D291     	MOV.L   	@(#244,PC),R2	;
008114 E001     	MOV     	#01,R0		;
008116 600C     	EXTU.B   	R0,R0			;
008118 2200     	MOV.B   	R0,@R2		;
00811A D309     	MOV.L   	@(#024,PC),R3	;
00811C E514     	MOV     	#14,R5		;
00811E 655C     	EXTU.B   	R5,R5			;
008120 2350     	MOV.B   	R5,@R3		;
008122 A11E     	BRA     	#023C			;
008124 0009     	NOP     				;
008126 0009     	NOP     				;
008128 0F00
00812A 075B
00812C 0F00
00812E 075C
008130 0000
008132 77C0
008134 0F00
008136 0771
008138 0F00
00813A 074C
00813C 0F00
00813E 076A
008140 0F00
008142 076C
008144 0F00
008146 02BC
008148 0907
00814A 4210
00814C 0200
00814E D032     	MOV.L   	@(#0C8,PC),R0	;
008150 6402     	MOV.L   	@R0,R4		;
008152 D030     	MOV.L   	@(#0C0,PC),R0	;
008154 6102     	MOV.L   	@R0,R1		;
008156 D0CA     	MOV.L   	@(#328,PC),R0	;
008158 6902     	MOV.L   	@R0,R9		;
00815A 6520     	MOV.B   	@R2,R5		;
00815C 655C     	EXTU.B   	R5,R5			;
00815E 6053     	MOV     	R5,R0			;
008160 8800     	CMP/EQ  	#00,R0		;
008162 890B     	BT      	#016			;
008164 6723     	MOV     	R2,R7			;
008166 3768     	SUB     	R6,R7			;
008168 90A8     	MOV.W   	@(#150,PC),R0	;
00816A 600D     	EXTU.W   	R0,R0			;
00816C 3706     	CMP/HI 	R0,R7			;
00816E 8905     	BT      	#00A			;
008170 3410     	CMP/EQ 	R1,R4			;
008172 8938     	BT      	#070			;
008174 7101     	ADD     	#01,R1		;
008176 325C     	ADD     	R5,R2			;
008178 AFEF     	BRA     	#1FDE			;
00817A 0009     	NOP     				;
00817C 79FF     	ADD     	#FF,R9		;
00817E 6093     	MOV     	R9,R0			;
008180 8800     	CMP/EQ  	#00,R0		;
008182 8B09     	BF      	#012			;
008184 D3BF     	MOV.L   	@(#2FC,PC),R3	;
008186 E000     	MOV     	#00,R0		;
008188 600C     	EXTU.B   	R0,R0			;
00818A 2300     	MOV.B   	R0,@R3		;
00818C D372     	MOV.L   	@(#1C8,PC),R3	;
00818E E002     	MOV     	#02,R0		;
008190 600C     	EXTU.B   	R0,R0			;
008192 2300     	MOV.B   	R0,@R3		;
008194 A093     	BRA     	#0126			;
008196 0009     	NOP     				;
008198 D01E     	MOV.L   	@(#078,PC),R0	;
00819A 2012     	MOV.L   	R1,@R0		;
00819C D0B8     	MOV.L   	@(#2E0,PC),R0	;
00819E 2092     	MOV.L   	R9,@R0		;
0081A0 D3B8     	MOV.L   	@(#2E0,PC),R3	;
0081A2 E024     	MOV     	#24,R0		;
0081A4 2300     	MOV.B   	R0,@R3		;
0081A6 4F22     	STS.L   	PR,@-R15		;
0081A8 DBB4     	MOV.L   	@(#2D0,PC),R11	;
0081AA C32A     	TRAPA   	#2A			;
0081AC D0AC     	MOV.L   	@(#2B0,PC),R0	;
0081AE 6100     	MOV.B   	@R0,R1		;
0081B0 222A     	XOR     	R2,R2			;
0081B2 E301     	MOV     	#01,R3		;
0081B4 D01B     	MOV.L   	@(#06C,PC),R0	;
0081B6 400B     	JSR     	@R0			;
0081B8 0009     	NOP     				;
0081BA D0A9     	MOV.L   	@(#2A4,PC),R0	;
0081BC 6100     	MOV.B   	@R0,R1		;
0081BE E406     	MOV     	#06,R4		;
0081C0 644C     	EXTU.B   	R4,R4			;
0081C2 214E     	MULU.W  	R4,R1			;
0081C4 041A     	STS     	MACL, R4		;
0081C6 D0AC     	MOV.L   	@(#2B0,PC),R0	;
0081C8 340C     	ADD     	R0,R4			;
0081CA 8442     	MOV.B   	@(#02,R4),R0	;
0081CC 610C     	EXTU.B   	R0,R1			;
0081CE DBAB     	MOV.L   	@(#2AC,PC),R11	;
0081D0 C327     	TRAPA   	#27			;
0081D2 4F26     	LDS.L   	@R15+,PR		;
0081D4 D4AE     	MOV.L   	@(#2B8,PC),R4	;
0081D6 6240     	MOV.B   	@R4,R2		;
0081D8 622C     	EXTU.B   	R2,R2			;
0081DA 3210     	CMP/EQ 	R1,R2			;
0081DC 8901     	BT      	#002			;
0081DE ABB9     	BRA     	#1772			;
0081E0 0009     	NOP     				;
0081E2 AAED     	BRA     	#15DA			;
0081E4 0009     	NOP     				;
0081E6 D3A7     	MOV.L   	@(#29C,PC),R3	;
0081E8 E014     	MOV     	#14,R0		;
0081EA 600C     	EXTU.B   	R0,R0			;
0081EC 2300     	MOV.B   	R0,@R3		;
0081EE 6123     	MOV     	R2,R1			;
0081F0 D00B     	MOV.L   	@(#02C,PC),R0	;
0081F2 E218     	MOV     	#18,R2		;
0081F4 622D     	EXTU.W   	R2,R2			;
0081F6 2021     	MOV.W   	R2,@R0		;
0081F8 E802     	MOV     	#02,R8		;
0081FA 688C     	EXTU.B   	R8,R8			;
0081FC D007     	MOV.L   	@(#01C,PC),R0	;
0081FE 2080     	MOV.B   	R8,@R0		;
008200 D09F     	MOV.L   	@(#27C,PC),R0	;
008202 2092     	MOV.L   	R9,@R0		;
008204 D002     	MOV.L   	@(#008,PC),R0	;
008206 4418     	SHLL8   	R4			;
008208 2042     	MOV.L   	R4,@R0		;
00820A AD21     	BRA     	#1A42			;
00820C 0009     	NOP     				;
00820E 0009     	NOP     				;
008210 0F00
008212 0758
008214 0F00
008216 0750
008218 0F00
00821A 0754
00821C 0F00
00821E 076D
008220 0F00
008222 0768
008224 0000
008226 51BE     	MOV.L   	@(#38,R11),R1	;
008228 D089     	MOV.L   	@(#224,PC),R0	;
00822A 6200     	MOV.B   	@R0,R2		;
00822C 622C     	EXTU.B   	R2,R2			;
00822E D387     	MOV.L   	@(#21C,PC),R3	;
008230 6432     	MOV.L   	@R3,R4		;
008232 4418     	SHLL8   	R4			;
008234 4419     	SHLR8   	R4			;
008236 6843     	MOV     	R4,R8			;
008238 E00C     	MOV     	#0C,R0		;
00823A 220E     	MULU.W  	R0,R2			;
00823C 021A     	STS     	MACL, R2		;
00823E D382     	MOV.L   	@(#208,PC),R3	;
008240 332C     	ADD     	R2,R3			;
008242 6632     	MOV.L   	@R3,R6		;
008244 8534     	MOV.W   	@(#08,R3),R0	;
008246 600D     	EXTU.W   	R0,R0			;
008248 8800     	CMP/EQ  	#00,R0		;
00824A 8921     	BT      	#042			;
00824C 6103     	MOV     	R0,R1			;
00824E 4119     	SHLR8   	R1			;
008250 650C     	EXTU.B   	R0,R5			;
008252 6043     	MOV     	R4,R0			;
008254 6213     	MOV     	R1,R2			;
008256 6703     	MOV     	R0,R7			;
008258 4128     	SHLL16  	R1			;
00825A 0019     	DIV0U   				;
00825C 3014     	DIV1    	R1,R0			;
00825E 3014     	DIV1    	R1,R0			;
008260 3014     	DIV1    	R1,R0			;
008262 3014     	DIV1    	R1,R0			;
008264 3014     	DIV1    	R1,R0			;
008266 3014     	DIV1    	R1,R0			;
008268 3014     	DIV1    	R1,R0			;
00826A 3014     	DIV1    	R1,R0			;
00826C 3014     	DIV1    	R1,R0			;
00826E 3014     	DIV1    	R1,R0			;
008270 3014     	DIV1    	R1,R0			;
008272 3014     	DIV1    	R1,R0			;
008274 3014     	DIV1    	R1,R0			;
008276 3014     	DIV1    	R1,R0			;
008278 3014     	DIV1    	R1,R0			;
00827A 3014     	DIV1    	R1,R0			;
00827C 4024     	ROTCL   	R0			;
00827E 600D     	EXTU.W   	R0,R0			;
008280 6123     	MOV     	R2,R1			;
008282 220E     	MULU.W  	R0,R2			;
008284 021A     	STS     	MACL, R2		;
008286 3728     	SUB     	R2,R7			;
008288 351C     	ADD     	R1,R5			;
00828A 250E     	MULU.W  	R0,R5			;
00828C 081A     	STS     	MACL, R8		;
00828E 387C     	ADD     	R7,R8			;
008290 368C     	ADD     	R8,R6			;
008292 D271     	MOV.L   	@(#1C4,PC),R2	;
008294 2262     	MOV.L   	R6,@R2		;
008296 D17A     	MOV.L   	@(#1E8,PC),R1	;
008298 6212     	MOV.L   	@R1,R2		;
00829A 3248     	SUB     	R4,R2			;
00829C 2122     	MOV.L   	R2,@R1		;
00829E 843A     	MOV.B   	@(#0A,R3),R0	;
0082A0 600C     	EXTU.B   	R0,R0		;
0082A2 D170     	MOV.L   	@(#1C0,PC),R1	;
0082A4 2100     	MOV.B   	R0,@R1		;
0082A6 D170     	MOV.L   	@(#1C0,PC),R1	;
0082A8 E041     	MOV     	#41,R0		;
0082AA 600C     	EXTU.B   	R0,R0			;
0082AC 2100     	MOV.B   	R0,@R1		;
0082AE D175     	MOV.L   	@(#1D4,PC),R1	;
0082B0 E005     	MOV     	#05,R0		;
0082B2 600C     	EXTU.B   	R0,R0			;
0082B4 2100     	MOV.B   	R0,@R1		;
0082B6 A054     	BRA     	#00A8			;
0082B8 0009     	NOP     				;
0082BA 0009     	NOP     				;
0082BC 07FF     	MAC.L   	@R15+,@R7+		;
0082BE 4F22     	STS.L   	PR,@-R15		;
0082C0 DB6E     	MOV.L   	@(#1B8,PC),R11	;
0082C2 C32A     	TRAPA   	#2A			;
0082C4 D16F     	MOV.L   	@(#1BC,PC),R1	;
0082C6 6010     	MOV.B   	@R1,R0		;
0082C8 600C     	EXTU.B   	R0,R0			;
0082CA 8805     	CMP/EQ  	#05,R0		;
0082CC 890B     	BT      	#016			;
0082CE E080     	MOV     	#80,R0		;
0082D0 600C     	EXTU.B   	R0,R0			;
0082D2 CB0F     	OR      	#0F,R0		;
0082D4 610C     	EXTU.B   	R0,R1			;
0082D6 D066     	MOV.L   	@(#198,PC),R0	;
0082D8 400B     	JSR     	@R0			;
0082DA 0009     	NOP     				;
0082DC D060     	MOV.L   	@(#180,PC),R0	;
0082DE 6100     	MOV.B   	@R0,R1		;
0082E0 D06A     	MOV.L   	@(#1A8,PC),R0	;
0082E2 400B     	JSR     	@R0			;
0082E4 0009     	NOP     				;
0082E6 D05E     	MOV.L   	@(#178,PC),R0	;
0082E8 6100     	MOV.B   	@R0,R1		;
0082EA E006     	MOV     	#06,R0		;
0082EC 600C     	EXTU.B   	R0,R0			;
0082EE 210E     	MULU.W  	R0,R1			;
0082F0 021A     	STS     	MACL, R2		;
0082F2 D161     	MOV.L   	@(#184,PC),R1	;
0082F4 312C     	ADD     	R2,R1			;
0082F6 200A     	XOR     	R0,R0			;
0082F8 8013     	MOV.B   	R0,@(#03,R1)	;
0082FA DB60     	MOV.L   	@(#180,PC),R11	;
0082FC C327     	TRAPA   	#27			;
0082FE 4F26     	LDS.L   	@R15+,PR		;
008300 D113     	MOV.L   	@(#04C,PC),R1	;
008302 E000     	MOV     	#00,R0		;
008304 2100     	MOV.B   	R0,@R1		;
008306 EB01     	MOV     	#01,R11		;
008308 D010     	MOV.L   	@(#040,PC),R0	;
00830A 2B0B     	OR      	R0,R11		;
00830C C321     	TRAPA   	#21			;
00830E D112     	MOV.L   	@(#048,PC),R1	;
008310 6010     	MOV.B   	@R1,R0		;
008312 600C     	EXTU.B   	R0,R0			;
008314 8804     	CMP/EQ  	#04,R0		;
008316 8B0E     	BF      	#01C			;
008318 D25A     	MOV.L   	@(#168,PC),R2	;
00831A 6020     	MOV.B   	@R2,R0		;
00831C C90F     	AND     	#0F,R0		;
00831E 6303     	MOV     	R0,R3			;
008320 E004     	MOV     	#04,R0		;
008322 3306     	CMP/HI 	R0,R3			;
008324 8904     	BT      	#008			;
008326 E000     	MOV     	#00,R0		;
008328 600C     	EXTU.B   	R0,R0			;
00832A 2100     	MOV.B   	R0,@R1		;
00832C A003     	BRA     	#0006			;
00832E 0009     	NOP     				;
008330 E002     	MOV     	#02,R0		;
008332 600C     	EXTU.B   	R0,R0			;
008334 2100     	MOV.B   	R0,@R1		;
008336 D153     	MOV.L   	@(#14C,PC),R1	;
008338 E000     	MOV     	#00,R0		;
00833A 600C     	EXTU.B   	R0,R0			;
00833C 2100     	MOV.B   	R0,@R1		;
00833E 900F     	MOV.W   	@(#01E,PC),R0	;
008340 600D     	EXTU.W   	R0,R0			;
008342 D306     	MOV.L   	@(#018,PC),R3	;
008344 2301     	MOV.W   	R0,@R3		;
008346 AA3B     	BRA     	#1476			;
008348 0009     	NOP     				;
00834A 0009     	NOP     				;
00834C 0607
00834E 0000
008350 0907
008352 ADCB
008354 0000
008356 543E
008358 0F00
00835A 076B
00835C 0A00 
00835E 001E
008360 0200
008362 4F22     	STS.L   	PR,@-R15		;
008364 DB45     	MOV.L   	@(#114,PC),R11	;
008366 C32A     	TRAPA   	#2A			;
008368 D13D     	MOV.L   	@(#0F4,PC),R1	;
00836A 6010     	MOV.B   	@R1,R0		;
00836C 600C     	EXTU.B   	R0,R0			;
00836E D13C     	MOV.L   	@(#0F0,PC),R1	;
008370 6010     	MOV.B   	@R1,R0		;
008372 CB00     	OR      	#00,R0		;
008374 620C     	EXTU.B   	R0,R2			;
008376 E000     	MOV     	#00,R0		;
008378 CB80     	OR      	#80,R0		;
00837A 610C     	EXTU.B   	R0,R1			;
00837C D03B     	MOV.L   	@(#0EC,PC),R0	;
00837E 400B     	JSR     	@R0			;
008380 0009     	NOP     				;
008382 D437     	MOV.L   	@(#0DC,PC),R4	;
008384 6040     	MOV.B   	@R4,R0		;
008386 6203     	MOV     	R0,R2			;
008388 CB40     	OR      	#40,R0		;
00838A 610C     	EXTU.B   	R0,R1			;
00838C 6023     	MOV     	R2,R0			;
00838E CBA0     	OR      	#A0,R0		;
008390 620C     	EXTU.B   	R0,R2			;
008392 D036     	MOV.L   	@(#0D8,PC),R0	;
008394 400B     	JSR     	@R0			;
008396 0009     	NOP     				;
008398 D431     	MOV.L   	@(#0C4,PC),R4	;
00839A 6040     	MOV.B   	@R4,R0		;
00839C 6203     	MOV     	R0,R2			;
00839E CB60     	OR      	#60,R0		;
0083A0 610C     	EXTU.B   	R0,R1			;
0083A2 D033     	MOV.L   	@(#0CC,PC),R0	;
0083A4 400B     	JSR     	@R0			;
0083A6 0009     	NOP     				;
0083A8 D42D     	MOV.L   	@(#0B4,PC),R4	;
0083AA 6040     	MOV.B   	@R4,R0		;
0083AC 6203     	MOV     	R0,R2			;
0083AE CB20     	OR      	#20,R0		;
0083B0 610C     	EXTU.B   	R0,R1			;
0083B2 E00F     	MOV     	#0F,R0		;
0083B4 CB80     	OR      	#80,R0		;
0083B6 620C     	EXTU.B   	R0,R2			;
0083B8 D02C     	MOV.L   	@(#0B0,PC),R0	;
0083BA 400B     	JSR     	@R0			;
0083BC 0009     	NOP     				;
0083BE D428     	MOV.L   	@(#0A0,PC),R4	;
0083C0 6140     	MOV.B   	@R4,R1		;
0083C2 D032     	MOV.L   	@(#0C8,PC),R0	;
0083C4 400B     	JSR     	@R0			;
0083C6 0009     	NOP     				;
0083C8 D425     	MOV.L   	@(#094,PC),R4	;
0083CA 6040     	MOV.B   	@R4,R0		;
0083CC 600C     	EXTU.B   	R0,R0			;
0083CE 4008     	SHLL2   	R0			;
0083D0 4008     	SHLL2   	R0			;
0083D2 D422     	MOV.L   	@(#088,PC),R4	;
0083D4 340C     	ADD     	R0,R4			;
0083D6 D120     	MOV.L   	@(#080,PC),R1	;
0083D8 6012     	MOV.L   	@R1,R0		;
0083DA 1402     	MOV.L   	R0,@(#8,R4)		;
0083DC D128     	MOV.L   	@(#0A0,PC),R1	;
0083DE 6012     	MOV.L   	@R1,R0		;
0083E0 1403     	MOV.L   	R0,@(#C,R4)		;
0083E2 D120     	MOV.L   	@(#080,PC),R1	;
0083E4 6010     	MOV.B   	@R1,R0		;
0083E6 8042     	MOV.B   	R0,@(#02,R4)	;
0083E8 D11F     	MOV.L   	@(#07C,PC),R1	;
0083EA 6010     	MOV.B   	@R1,R0		;
0083EC 8040     	MOV.B   	R0,@(#00,R4)	;
0083EE 200A     	XOR     	R0,R0			;
0083F0 1401     	MOV.L   	R0,@(#4,R4)		;
0083F2 8041     	MOV.B   	R0,@(#01,R4)	;
0083F4 8043     	MOV.B   	R0,@(#03,R4)	;
0083F6 D11A     	MOV.L   	@(#068,PC),R1	;
0083F8 6210     	MOV.B   	@R1,R2		;
0083FA E006     	MOV     	#06,R0		;
0083FC 600C     	EXTU.B   	R0,R0			;
0083FE 220E     	MULU.W  	R0,R2			;
008400 021A     	STS     	MACL, R2		;
008402 D11D     	MOV.L   	@(#074,PC),R1	;
008404 312C     	ADD     	R2,R1			;
008406 D31F     	MOV.L   	@(#07C,PC),R3	;
008408 6030     	MOV.B   	@R3,R0		;
00840A 600C     	EXTU.B   	R0,R0			;
00840C 8805     	CMP/EQ  	#05,R0		;
00840E 8902     	BT      	#004			;
008410 E001     	MOV     	#01,R0		;
008412 A005     	BRA     	#000A			;
008414 0009     	NOP     				;
008416 D21A     	MOV.L   	@(#068,PC),R2	;
008418 6022     	MOV.L   	@R2,R0		;
00841A D21B     	MOV.L   	@(#06C,PC),R2	;
00841C 2202     	MOV.L   	R0,@R2		;
00841E E002     	MOV     	#02,R0		;
008420 600C     	EXTU.B   	R0,R0			;
008422 8013     	MOV.B   	R0,@(#03,R1)	;
008424 D30E     	MOV.L   	@(#038,PC),R3	;
008426 6030     	MOV.B   	@R3,R0		;
008428 600C     	EXTU.B   	R0,R0			;
00842A E406     	MOV     	#06,R4		;
00842C 644C     	EXTU.B   	R4,R4			;
00842E 204E     	MULU.W  	R4,R0			;
008430 041A     	STS     	MACL, R4		;
008432 D111     	MOV.L   	@(#044,PC),R1	;
008434 341C     	ADD     	R1,R4			;
008436 8442     	MOV.B   	@(#02,R4),R0	;
008438 600C     	EXTU.B   	R0,R0			;
00843A D115     	MOV.L   	@(#054,PC),R1	;
00843C 2100     	MOV.B   	R0,@R1		;
00843E DB0F     	MOV.L   	@(#03C,PC),R11	;
008440 C327     	TRAPA   	#27			;
008442 4F26     	LDS.L   	@R15+,PR		;
008444 AD5B     	BRA     	#1AB6			;
008446 0009     	NOP     				;
008448 0907
00844A 4210
00844C 0F00
00844E 0744
008450 0F00
008452 076E
008454 0F00
008456 076A
008458 0F00
00845A 02BC
00845C 0F00
00845E 0420
008460 0F00
008462 0772
008464 0F00
008466 0770
008468 0F00
00846A 0771
00846C 0000
00846E 5510
008470 0000
008472 54F0
008474 0000
008476 55AE
008478 0F00
00847A 0600
00847C 0B07
00847E 0000
008480 0F00
008482 074C
008484 0F00
008486 076C
008488 0F00
00848A 034C
00848C 0000
00848E 5476
008490 0F00
008492 078B
008494 D17F     	MOV.L   	@(#1FC,PC),R1	;
008496 6010     	MOV.B   	@R1,R0		;
008498 8806     	CMP/EQ  	#06,R0		;
00849A 8B02     	BF      	#004			;
00849C E011     	MOV     	#11,R0		;
00849E A397     	BRA     	#072E			;
0084A0 0009     	NOP     				;
0084A2 D119     	MOV.L   	@(#064,PC),R1	;
0084A4 6010     	MOV.B   	@R1,R0		;
0084A6 8803     	CMP/EQ  	#03,R0		;
0084A8 890F     	BT      	#01E			;
0084AA 8807     	CMP/EQ  	#07,R0		;
0084AC 8B01     	BF      	#002			;
0084AE A391     	BRA     	#0722			;
0084B0 0009     	NOP     				;
0084B2 D17B     	MOV.L   	@(#1EC,PC),R1	;
0084B4 222A     	XOR     	R2,R2			;
0084B6 2120     	MOV.B   	R2,@R1		;
0084B8 E204     	MOV     	#04,R2		;
0084BA 3022     	CMP/HS 	R2,R0			;
0084BC 8B02     	BF      	#004			;
0084BE E003     	MOV     	#03,R0		;
0084C0 A386     	BRA     	#070C			;
0084C2 0009     	NOP     				;
0084C4 E000     	MOV     	#00,R0		;
0084C6 A383     	BRA     	#0706			;
0084C8 0009     	NOP     				;
0084CA D10E     	MOV.L   	@(#038,PC),R1	;
0084CC 6010     	MOV.B   	@R1,R0		;
0084CE 600C     	EXTU.B   	R0,R0			;
0084D0 C808     	TST     	#08,R0		;
0084D2 8B05     	BF      	#00A			;
0084D4 D172     	MOV.L   	@(#1C8,PC),R1	;
0084D6 200A     	XOR     	R0,R0			;
0084D8 2100     	MOV.B   	R0,@R1		;
0084DA E000     	MOV     	#00,R0		;
0084DC A378     	BRA     	#06F0			;
0084DE 0009     	NOP     				;
0084E0 D1DF     	MOV.L   	@(#37C,PC),R1	;
0084E2 6010     	MOV.B   	@R1,R0		;
0084E4 600C     	EXTU.B   	R0,R0			;
0084E6 70FF     	ADD     	#FF,R0		;
0084E8 2100     	MOV.B   	R0,@R1		;
0084EA 8800     	CMP/EQ  	#00,R0		;
0084EC 8B01     	BF      	#002			;
0084EE A147     	BRA     	#028E			;
0084F0 0009     	NOP     				;
0084F2 E10E     	MOV     	#0E,R1		;
0084F4 3108     	SUB     	R0,R1			;
0084F6 7101     	ADD     	#01,R1		;
0084F8 D274     	MOV.L   	@(#1D0,PC),R2	;
0084FA 321C     	ADD     	R1,R2			;
0084FC D103     	MOV.L   	@(#00C,PC),R1	;
0084FE 2122     	MOV.L   	R2,@R1		;
008500 A44B     	BRA     	#0896			;
008502 0009     	NOP     				;
008504 0F00
008506 02A7
008508 0907
00850A ADCB
00850C 0F00
00850E 02BC
008510 D131     	MOV.L   	@(#0C4,PC),R1	;
008512 D232     	MOV.L   	@(#0C8,PC),R2	;0F00025C
008514 6020     	MOV.B   	@R2,R0		;
008516 2100     	MOV.B   	R0,@R1		;
008518 E000     	MOV     	#00,R0		;
00851A 2200     	MOV.B   	R0,@R2		;
00851C D230     	MOV.L   	@(#0C0,PC),R2	;
00851E 6020     	MOV.B   	@R2,R0		;
008520 8011     	MOV.B   	R0,@(#01,R1)	;
008522 E005     	MOV     	#05,R0		;
008524 2200     	MOV.B   	R0,@R2		;
008526 D22F     	MOV.L   	@(#0BC,PC),R2	;
008528 6020     	MOV.B   	@R2,R0		;
00852A 8012     	MOV.B   	R0,@(#02,R1)	;
00852C E00F     	MOV     	#0F,R0		;
00852E 2200     	MOV.B   	R0,@R2		;
008530 D158     	MOV.L   	@(#160,PC),R1	;
008532 6010     	MOV.B   	@R1,R0		;
008534 600C     	EXTU.B   	R0,R0			;
008536 8800     	CMP/EQ  	#00,R0		;
008538 8B02     	BF      	#004			;
00853A E000     	MOV     	#00,R0		;
00853C A348     	BRA     	#0690			;
00853E 0009     	NOP     				;
008540 8806     	CMP/EQ  	#06,R0		;
008542 8B02     	BF      	#004			;
008544 E000     	MOV     	#00,R0		;
008546 A343     	BRA     	#0686			;
008548 0009     	NOP     				;
00854A 8807     	CMP/EQ  	#07,R0		;
00854C 8B02     	BF      	#004			;
00854E E000     	MOV     	#00,R0		;
008550 A33E     	BRA     	#067C			;
008552 0009     	NOP     				;
008554 D157     	MOV.L   	@(#15C,PC),R1	;
008556 6010     	MOV.B   	@R1,R0		;
008558 600C     	EXTU.B   	R0,R0			;
00855A 8800     	CMP/EQ  	#00,R0		;
00855C 8902     	BT      	#004			;
00855E E000     	MOV     	#00,R0		;
008560 A336     	BRA     	#066C			;
008562 0009     	NOP     				;
008564 200A     	XOR     	R0,R0			;
008566 D14F     	MOV.L   	@(#13C,PC),R1	;
008568 2100     	MOV.B   	R0,@R1		;
00856A D14F     	MOV.L   	@(#13C,PC),R1	;
00856C 2100     	MOV.B   	R0,@R1		;
00856E D14F     	MOV.L   	@(#13C,PC),R1	;
008570 2100     	MOV.B   	R0,@R1		;
008572 D11E     	MOV.L   	@(#078,PC),R1	;
008574 2100     	MOV.B   	R0,@R1		;
008576 D14A     	MOV.L   	@(#128,PC),R1	;
008578 E0FF     	MOV     	#FF,R0		;
00857A 2100     	MOV.B   	R0,@R1		;
00857C D04C     	MOV.L   	@(#130,PC),R0	;
00857E 6106     	MOV.L   	@R0+,R1		;
008580 6206     	MOV.L   	@R0+,R2		;
008582 6302     	MOV.L   	@R0,R3		;
008584 4109     	SHLR2   	R1			;
008586 3212     	CMP/HS 	R1,R2			;
008588 8B12     	BF      	#024			;
00858A 3312     	CMP/HS 	R1,R3			;
00858C 8B10     	BF      	#020			;
00858E D116     	MOV.L   	@(#058,PC),R1	;
008590 E263     	MOV     	#63,R2		;
008592 4208     	SHLL2   	R2			;
008594 312C     	ADD     	R2,R1			;
008596 6216     	MOV.L   	@R1+,R2		;
008598 6012     	MOV.L   	@R1,R0		;
00859A 6229     	SWAP.W   	R2,R2			;
00859C 622C     	EXTU.B   	R2,R2			;
00859E 6009     	SWAP.W   	R0,R0			;
0085A0 600C     	EXTU.B   	R0,R0			;
0085A2 3028     	SUB     	R2,R0			;
0085A4 7001     	ADD     	#01,R0		;
0085A6 881E     	CMP/EQ  	#1E,R0		;
0085A8 8B02     	BF      	#004			;
0085AA D13C     	MOV.L   	@(#0F0,PC),R1	;
0085AC E001     	MOV     	#01,R0		;
0085AE 2100     	MOV.B   	R0,@R1		;
0085B0 D10D     	MOV.L   	@(#034,PC),R1	;
0085B2 6313     	MOV     	R1,R3			;
0085B4 E263     	MOV     	#63,R2		;
0085B6 4208     	SHLL2   	R2			;
0085B8 312C     	ADD     	R2,R1			;
0085BA 6012     	MOV.L   	@R1,R0		;
0085BC 4029     	SHLR16  	R0			;
0085BE 600C     	EXTU.B   	R0,R0			;
0085C0 70FF     	ADD     	#FF,R0		;
0085C2 4008     	SHLL2   	R0			;
0085C4 330C     	ADD     	R0,R3			;
0085C6 6032     	MOV.L   	@R3,R0		;
0085C8 4029     	SHLR16  	R0			;
0085CA 4019     	SHLR8   	R0			;
0085CC C840     	TST     	#40,R0		;
0085CE 8B0F     	BF      	#01E			;
0085D0 E001     	MOV     	#01,R0		;
0085D2 A2FD     	BRA     	#05FA			;
0085D4 0009     	NOP     				;
0085D6 0009     	NOP     				;
0085D8 0907
0085DA ADD0
0085DC 0F00025C
0085E0 0F00
0085E2 0262
0085E4 0F00
0085E6 0263
0085E8 0900
0085EA 0068
0085EC 0F00
0085EE 0789
0085F0 E000     	MOV     	#00,R0		;
0085F2 DB27     	MOV.L   	@(#09C,PC),R11	;
0085F4 2B0B     	OR      	R0,R11		;
0085F6 DA34     	MOV.L   	@(#0D0,PC),R10	;
0085F8 C324     	TRAPA   	#24			;
0085FA D1FA     	MOV.L   	@(#3E8,PC),R1	;
0085FC 8414     	MOV.B   	@(#04,R1),R0	;
0085FE 600C     	EXTU.B   	R0,R0			;
008600 D1FB     	MOV.L   	@(#3EC,PC),R1	;
008602 2100     	MOV.B   	R0,@R1		;
008604 4F22     	STS.L   	PR,@-R15		;
008606 DBF8     	MOV.L   	@(#3E0,PC),R11	;
008608 C32A     	TRAPA   	#2A			;
00860A D4F9     	MOV.L   	@(#3E4,PC),R4	;
00860C 6040     	MOV.B   	@R4,R0		;
00860E 6203     	MOV     	R0,R2			;
008610 CB40     	OR      	#40,R0		;
008612 610C     	EXTU.B   	R0,R1			;
008614 6023     	MOV     	R2,R0			;
008616 CBA0     	OR      	#A0,R0		;
008618 620C     	EXTU.B   	R0,R2			;
00861A D028     	MOV.L   	@(#0A0,PC),R0	;
00861C 400B     	JSR     	@R0			;
00861E 0009     	NOP     				;
008620 D4F3     	MOV.L   	@(#3CC,PC),R4	;
008622 6040     	MOV.B   	@R4,R0		;
008624 6203     	MOV     	R0,R2			;
008626 CB60     	OR      	#60,R0		;
008628 610C     	EXTU.B   	R0,R1			;
00862A D090     	MOV.L   	@(#240,PC),R0	;
00862C 400B     	JSR     	@R0			;
00862E 0009     	NOP     				;
008630 D3EF     	MOV.L   	@(#3BC,PC),R3	;
008632 6030     	MOV.B   	@R3,R0		;
008634 600C     	EXTU.B   	R0,R0			;
008636 E406     	MOV     	#06,R4		;
008638 644C     	EXTU.B   	R4,R4			;
00863A 204E     	MULU.W  	R4,R0			;
00863C 041A     	STS     	MACL, R4		;
00863E D1ED     	MOV.L   	@(#3B4,PC),R1	;
008640 341C     	ADD     	R1,R4			;
008642 8442     	MOV.B   	@(#02,R4),R0	;
008644 600C     	EXTU.B   	R0,R0			;
008646 D184     	MOV.L   	@(#210,PC),R1	;
008648 2100     	MOV.B   	R0,@R1		;
00864A D1E7     	MOV.L   	@(#39C,PC),R1	;
00864C C327     	TRAPA   	#27			;
00864E 4F26     	LDS.L   	@R15+,PR		;
008650 D111     	MOV.L   	@(#044,PC),R1	;
008652 6010     	MOV.B   	@R1,R0		;
008654 600C     	EXTU.B   	R0,R0			;
008656 C880     	TST     	#80,R0		;
008658 8B02     	BF      	#004			;
00865A D21C     	MOV.L   	@(#070,PC),R2	;
00865C A00C     	BRA     	#0018			;
00865E 0009     	NOP     				;
008660 D0E5     	MOV.L   	@(#394,PC),R0	;
008662 6200     	MOV.B   	@R0,R2		;
008664 622C     	EXTU.B   	R2,R2			;
008666 032C     	MOV.B   	@(R0,R2),R3		;
008668 633C     	EXTU.B   	R3,R3			;
00866A 73FF     	ADD     	#FF,R3		;
00866C 4308     	SHLL2   	R3			;
00866E D1E3     	MOV.L   	@(#38C,PC),R1	;
008670 331C     	ADD     	R1,R3			;
008672 6232     	MOV.L   	@R3,R2		;
008674 4218     	SHLL8   	R2			;
008676 4219     	SHLR8   	R2			;
008678 D1E2     	MOV.L   	@(#388,PC),R1	;
00867A 2122     	MOV.L   	R2,@R1		;
00867C D378     	MOV.L   	@(#1E0,PC),R3	;
00867E E40F     	MOV     	#0F,R4		;
008680 2340     	MOV.B   	R4,@R3		;
008682 D1E1     	MOV.L   	@(#384,PC),R1	;
008684 E003     	MOV     	#03,R0		;
008686 600C     	EXTU.B   	R0,R0			;
008688 2100     	MOV.B   	R0,@R1		;
00868A A34B     	BRA     	#0696			;
00868C 0009     	NOP     				;
00868E 0009     	NOP     				;
008690 0707
008692 0000
008694 0F00
008696 028A
008698 0F00 
00869A 025F
00869C 0F00
00869E 078A
0086A0 0F00
0086A2 0788
0086A4 0907
0086A6 ADCF
0086A8 0907
0086AA ADCA
0086AC 0907
0086AE ADCC
0086B0 0F00
0086B2 02E0
0086B4 0F00
0086B6 034B
0086B8 0000
0086BA 5476
0086BC 0000
0086BE 5510
0086C0 0A00
0086C2 001E
0086C4 0F00
0086C6 07B0
0086C8 0003
0086CA 0D40
0086CC 0000
0086CE 0096
0086D0 0200
0086D2 DBC5     	MOV.L   	@(#314,PC),R11	;
0086D4 C32A     	TRAPA   	#2A			;
0086D6 D3C6     	MOV.L   	@(#318,PC),R3	;
0086D8 6130     	MOV.B   	@R3,R1		;
0086DA 611C     	EXTU.B   	R1,R1			;
0086DC D45E     	MOV.L   	@(#178,PC),R4	;
0086DE 6240     	MOV.B   	@R4,R2		;
0086E0 622C     	EXTU.B   	R2,R2			;
0086E2 E301     	MOV     	#01,R3		;
0086E4 D05F     	MOV.L   	@(#17C,PC),R0	;
0086E6 400B     	JSR     	@R0			;
0086E8 0009     	NOP     				;
0086EA DBBF     	MOV.L   	@(#2FC,PC),R11	;
0086EC C327     	TRAPA   	#27			;
0086EE D4E7     	MOV.L   	@(#39C,PC),R4	;
0086F0 241E     	MULU.W  	R1,R4			;
0086F2 061A     	STS     	MACL, R6		;
0086F4 D2E6     	MOV.L   	@(#398,PC),R2	;
0086F6 362C     	ADD     	R2,R6			;
0086F8 846F     	MOV.B   	@(#0F,R6),R0	;
0086FA 600C     	EXTU.B   	R0,R0			;
0086FC 8801     	CMP/EQ  	#01,R0		;
0086FE 8904     	BT      	#008			;
008700 D157     	MOV.L   	@(#15C,PC),R1	;
008702 E001     	MOV     	#01,R0		;
008704 2100     	MOV.B   	R0,@R1		;
008706 A012     	BRA     	#0024			;
008708 0009     	NOP     				;
00870A E210     	MOV     	#10,R2		;
00870C 362C     	ADD     	R2,R6			;
00870E D1C7     	MOV.L   	@(#31C,PC),R1	;
008710 D2C7     	MOV.L   	@(#31C,PC),R2	;
008712 D3C8     	MOV.L   	@(#320,PC),R3	;
008714 D4C8     	MOV.L   	@(#320,PC),R4	;
008716 6066     	MOV.L   	@R6+,R0		;
008718 3100     	CMP/EQ 	R0,R1			;
00871A 8B08     	BF      	#010			;
00871C 6066     	MOV.L   	@R6+,R0		;
00871E 3200     	CMP/EQ 	R0,R2			;
008720 8B05     	BF      	#00A			;
008722 6066     	MOV.L   	@R6+,R0		;
008724 3300     	CMP/EQ 	R0,R3			;
008726 8B02     	BF      	#004			;
008728 6066     	MOV.L   	@R6+,R0		;
00872A 3400     	CMP/EQ 	R0,R4			;
00872C 892B     	BT      	#056			;
00872E 4F22     	STS.L   	PR,@-R15		;
008730 DBAD     	MOV.L   	@(#2B4,PC),R11	;
008732 C32A     	TRAPA   	#2A			;
008734 D0AE     	MOV.L   	@(#2B8,PC),R0	;
008736 6100     	MOV.B   	@R0,R1		;
008738 D447     	MOV.L   	@(#11C,PC),R4	;
00873A 6240     	MOV.B   	@R4,R2		;
00873C 622C     	EXTU.B   	R2,R2			;
00873E E301     	MOV     	#01,R3		;
008740 D03F     	MOV.L   	@(#0FC,PC),R0	;
008742 400B     	JSR     	@R0			;
008744 0009     	NOP     				;
008746 D0AA     	MOV.L   	@(#2A8,PC),R0	;
008748 6100     	MOV.B   	@R0,R1		;
00874A E406     	MOV     	#06,R4		;
00874C 644C     	EXTU.B   	R4,R4			;
00874E 214E     	MULU.W  	R4,R1			;
008750 041A     	STS     	MACL, R4		;
008752 D0A8     	MOV.L   	@(#2A0,PC),R0	;
008754 340C     	ADD     	R0,R4			;
008756 8442     	MOV.B   	@(#02,R4),R0	;
008758 600C     	EXTU.B   	R0,R0			;
00875A 6103     	MOV     	R0,R1			;
00875C DBA2     	MOV.L   	@(#288,PC),R11	;
00875E C327     	TRAPA   	#27			;
008760 4F26     	LDS.L   	@R15+,PR		;
008762 D33F     	MOV.L   	@(#0FC,PC),R3	;
008764 6030     	MOV.B   	@R3,R0		;
008766 70FF     	ADD     	#FF,R0		;
008768 8800     	CMP/EQ  	#00,R0		;
00876A 8909     	BT      	#012			;
00876C 2300     	MOV.B   	R0,@R3		;
00876E D43A     	MOV.L   	@(#0E8,PC),R4	;
008770 6240     	MOV.B   	@R4,R2		;
008772 622C     	EXTU.B   	R2,R2			;
008774 3210     	CMP/EQ 	R1,R2			;
008776 8901     	BT      	#002			;
008778 AFAB     	BRA     	#1F56			;
00877A 0009     	NOP     				;
00877C A820     	BRA     	#1040			;
00877E 0009     	NOP     				;
008780 E002     	MOV     	#02,R0		;
008782 A225     	BRA     	#044A			;
008784 0009     	NOP     				;
008786 D1A0     	MOV.L   	@(#280,PC),R1	;
008788 E004     	MOV     	#04,R0		;
00878A 600C     	EXTU.B   	R0,R0			;
00878C 2100     	MOV.B   	R0,@R1		;
00878E 6166     	MOV.L   	@R6+,R1		;
008790 6266     	MOV.L   	@R6+,R2		;
008792 D02C     	MOV.L   	@(#0B0,PC),R0	;
008794 2012     	MOV.L   	R1,@R0		;
008796 1021     	MOV.L   	R2,@(#4,R0)		;
008798 7608     	ADD     	#08,R6		;
00879A D32B     	MOV.L   	@(#0AC,PC),R3	;
00879C 6066     	MOV.L   	@R6+,R0		;
00879E 2302     	MOV.L   	R0,@R3		;
0087A0 6066     	MOV.L   	@R6+,R0		;
0087A2 1301     	MOV.L   	R0,@(#4,R3)		;
0087A4 6065     	MOV.W   	@R6+,R0		;
0087A6 8134     	MOV.W   	R0,@(#08,R3)	;
0087A8 D32C     	MOV.L   	@(#0B0,PC),R3	;
0087AA E0CE     	MOV     	#CE,R0		;
0087AC 600C     	EXTU.B   	R0,R0			;
0087AE 360C     	ADD     	R0,R6			;
0087B0 6066     	MOV.L   	@R6+,R0		;
0087B2 2302     	MOV.L   	R0,@R3		;
0087B4 6062     	MOV.L   	@R6,R0		;
0087B6 1301     	MOV.L   	R0,@(#4,R3)		;
0087B8 EB01     	MOV     	#01,R11		;
0087BA D08C     	MOV.L   	@(#230,PC),R0	;
0087BC 2B0B     	OR      	R0,R11		;
0087BE C321     	TRAPA   	#21			;
0087C0 4F22     	STS.L   	PR,@-R15		;
0087C2 DB89     	MOV.L   	@(#224,PC),R11	;
0087C4 C32A     	TRAPA   	#2A			;
0087C6 E000     	MOV     	#00,R0		;
0087C8 CB80     	OR      	#80,R0		;
0087CA 610C     	EXTU.B   	R0,R1			;
0087CC D027     	MOV.L   	@(#09C,PC),R0	;
0087CE 400B     	JSR     	@R0			;
0087D0 0009     	NOP     				;
0087D2 D087     	MOV.L   	@(#21C,PC),R0	;
0087D4 6100     	MOV.B   	@R0,R1		;
0087D6 D420     	MOV.L   	@(#080,PC),R4	;
0087D8 6240     	MOV.B   	@R4,R2		;
0087DA 622C     	EXTU.B   	R2,R2			;
0087DC E406     	MOV     	#06,R4		;
0087DE 644C     	EXTU.B   	R4,R4			;
0087E0 214E     	MULU.W  	R4,R1			;
0087E2 041A     	STS     	MACL, R4		;
0087E4 D083     	MOV.L   	@(#20C,PC),R0	;
0087E6 340C     	ADD     	R0,R4			;
0087E8 8442     	MOV.B   	@(#02,R4),R0	;
0087EA 600C     	EXTU.B   	R0,R0			;
0087EC 3028     	SUB     	R2,R0			;
0087EE 8800     	CMP/EQ  	#00,R0		;
0087F0 8903     	BT      	#006			;
0087F2 6303     	MOV     	R0,R3			;
0087F4 D012     	MOV.L   	@(#048,PC),R0	;
0087F6 400B     	JSR     	@R0			;
0087F8 0009     	NOP     				;
0087FA DB7B     	MOV.L   	@(#1EC,PC),R11	;
0087FC C327     	TRAPA   	#27			;
0087FE 4F26     	LDS.L   	@R15+,PR		;
008800 D112     	MOV.L   	@(#048,PC),R1	;
008802 6010     	MOV.B   	@R1,R0		;
008804 8801     	CMP/EQ  	#01,R0		;
008806 8B35     	BF      	#06A			;
008808 D111     	MOV.L   	@(#044,PC),R1	;
00880A 6010     	MOV.B   	@R1,R0		;
00880C 8801     	CMP/EQ  	#01,R0		;
00880E 8B04     	BF      	#008			;
008810 E004     	MOV     	#04,R0		;
008812 D110     	MOV.L   	@(#040,PC),R1	;
008814 8011     	MOV.B   	R0,@(#01,R1)	;
008816 A00D     	BRA     	#001A			;
008818 0009     	NOP     				;
00881A D30A     	MOV.L   	@(#028,PC),R3	;
00881C 6136     	MOV.L   	@R3+,R1		;
00881E 6232     	MOV.L   	@R3,R2		;
008820 D311     	MOV.L   	@(#044,PC),R3	;
008822 6036     	MOV.L   	@R3+,R0		;
008824 3100     	CMP/EQ 	R0,R1			;
008826 8B25     	BF      	#04A			;
008828 6032     	MOV.L   	@R3,R0		;
00882A 3200     	CMP/EQ 	R0,R2			;
00882C 8B22     	BF      	#044			;
00882E E004     	MOV     	#04,R0		;
008830 D108     	MOV.L   	@(#020,PC),R1	;
008832 8011     	MOV.B   	R0,@(#01,R1)	;
008834 D00E     	MOV.L   	@(#038,PC),R0	;
008836 70FF     	ADD     	#FF,R0		;
008838 8800     	CMP/EQ  	#00,R0		;
00883A 8BFC     	BF      	#1F8			;
00883C A260     	BRA     	#04C0			;
00883E 0009     	NOP     				;
008840 0000
008842 51BE
008844 0F00
008846 0774
008848 0F00
00884A 077C
00884C 0F00
00884E 02F9
008850 0F00
008852 02F8
008854 0F00
008856 0786
008858 0F00
00885A 078B
00885C 0F00
00885E 020C
008860 0907
008862 ADCE
008864 0000
008866 506C
008868 0F00
00886A 02F0
00886C 0000
00886E 54F0     	MOV.L   	@(#00,R15),R4	;
008870 00D5     	MOV.W   	R13,@(R0,R0)	;
008872 9F80     	MOV.W   	@(#100,PC),R15	;
008874 D164     	MOV.L   	@(#190,PC),R1	;
008876 E005     	MOV     	#05,R0		;
008878 600C     	EXTU.B   	R0,R0			;
00887A 2100     	MOV.B   	R0,@R1		;
00887C D268     	MOV.L   	@(#1A0,PC),R2	;
00887E D377     	MOV.L   	@(#1DC,PC),R3	;
008880 6131     	MOV.W   	@R3,R1		;
008882 611D     	EXTU.W   	R1,R1			;
008884 6313     	MOV     	R1,R3			;
008886 E01F     	MOV     	#1F,R0		;
008888 2109     	AND     	R0,R1			;
00888A E00C     	MOV     	#0C,R0		;
00888C 3106     	CMP/HI 	R0,R1			;
00888E 8B04     	BF      	#008			;
008890 7001     	ADD     	#01,R0		;
008892 3108     	SUB     	R0,R1			;
008894 4111     	CMP/PZ  	R1			;
008896 89FC     	BT      	#1F8			;
008898 310C     	ADD     	R0,R1			;
00889A 6613     	MOV     	R1,R6			;
00889C D05E     	MOV.L   	@(#178,PC),R0	;
00889E 2060     	MOV.B   	R6,@R0		;
0088A0 D05E     	MOV.L   	@(#178,PC),R0	;
0088A2 260E     	MULU.W  	R0,R6			;
0088A4 011A     	STS     	MACL, R1		;
0088A6 312C     	ADD     	R2,R1			;
0088A8 6413     	MOV     	R1,R4			;
0088AA 340C     	ADD     	R0,R4			;
0088AC 6543     	MOV     	R4,R5			;
0088AE 350C     	ADD     	R0,R5			;
0088B0 4309     	SHLR2   	R3			;
0088B2 4309     	SHLR2   	R3			;
0088B4 E07F     	MOV     	#7F,R0		;
0088B6 2309     	AND     	R0,R3			;
0088B8 E046     	MOV     	#46,R0		;
0088BA 3302     	CMP/HS 	R0,R3			;
0088BC 8B00     	BF      	#000			;
0088BE 3308     	SUB     	R0,R3			;
0088C0 6063     	MOV     	R6,R0			;
0088C2 8800     	CMP/EQ  	#00,R0		;
0088C4 8B0B     	BF      	#016			;
0088C6 E002     	MOV     	#02,R0		;
0088C8 3036     	CMP/HI 	R3,R0			;
0088CA 8B1D     	BF      	#03A			;
0088CC E015     	MOV     	#15,R0		;
0088CE 230E     	MULU.W  	R0,R3			;
0088D0 061A     	STS     	MACL, R6		;
0088D2 6763     	MOV     	R6,R7			;
0088D4 E302     	MOV     	#02,R3		;
0088D6 230E     	MULU.W  	R0,R3			;
0088D8 031A     	STS     	MACL, R3		;
0088DA A01A     	BRA     	#0034			;
0088DC 0009     	NOP     				;
0088DE 880C     	CMP/EQ  	#0C,R0		;
0088E0 8B12     	BF      	#024			;
0088E2 E013     	MOV     	#13,R0		;
0088E4 6733     	MOV     	R3,R7			;
0088E6 3708     	SUB     	R0,R7			;
0088E8 4711     	CMP/PZ  	R7			;
0088EA 89FC     	BT      	#1F8			;
0088EC 370C     	ADD     	R0,R7			;
0088EE E027     	MOV     	#27,R0		;
0088F0 3308     	SUB     	R0,R3			;
0088F2 4311     	CMP/PZ  	R3			;
0088F4 89FC     	BT      	#1F8			;
0088F6 330C     	ADD     	R0,R3			;
0088F8 E015     	MOV     	#15,R0		;
0088FA 230E     	MULU.W  	R0,R3			;
0088FC 031A     	STS     	MACL, R3		;
0088FE 6633     	MOV     	R3,R6			;
008900 270E     	MULU.W  	R0,R7			;
008902 071A     	STS     	MACL, R7		;
008904 A005     	BRA     	#000A			;
008906 0009     	NOP     				;
008908 E015     	MOV     	#15,R0		;
00890A 230E     	MULU.W  	R0,R3			;
00890C 031A     	STS     	MACL, R3		;
00890E 6633     	MOV     	R3,R6			;
008910 6733     	MOV     	R3,R7			;
008912 313C     	ADD     	R3,R1			;
008914 346C     	ADD     	R6,R4			;
008916 357C     	ADD     	R7,R5			;
008918 D0ED     	MOV.L   	@(#3B4,PC),R0	;
00891A 2012     	MOV.L   	R1,@R0		;
00891C 1041     	MOV.L   	R4,@(#4,R0)		;
00891E 1052     	MOV.L   	R5,@(#8,R0)		;
008920 D13A     	MOV.L   	@(#0E8,PC),R1	;
008922 6010     	MOV.B   	@R1,R0		;
008924 E302     	MOV     	#02,R3		;
008926 3306     	CMP/HI 	R0,R3			;
008928 8907     	BT      	#00E			;
00892A D1E9     	MOV.L   	@(#3A4,PC),R1	;
00892C 6212     	MOV.L   	@R1,R2		;
00892E 8802     	CMP/EQ  	#02,R0		;
008930 8B06     	BF      	#00C			;
008932 9183     	MOV.W   	@(#106,PC),R1	;
008934 321C     	ADD     	R1,R2			;
008936 A003     	BRA     	#0006			;
008938 0009     	NOP     				;
00893A 4008     	SHLL2   	R0			;
00893C D135     	MOV.L   	@(#0D4,PC),R1	;
00893E 021E     	MOV.L   	@(R0,R1),R2		;
008940 D130     	MOV.L   	@(#0C0,PC),R1	;
008942 2122     	MOV.L   	R2,@R1		;
008944 EB04     	MOV     	#04,R11		;
008946 D029     	MOV.L   	@(#0A4,PC),R0	;
008948 2B0B     	OR      	R0,R11		;
00894A C321     	TRAPA   	#21			;
00894C D0E8     	MOV.L   	@(#3A0,PC),R0	;
00894E 402B     	JMP     	@R0			;
008950 0009     	NOP     				;
008952 D12E     	MOV.L   	@(#0B8,PC),R1	;
008954 6010     	MOV.B   	@R1,R0		;
008956 E302     	MOV     	#02,R3		;
008958 3306     	CMP/HI 	R0,R3			;
00895A 8916     	BT      	#02C			;
00895C D220     	MOV.L   	@(#080,PC),R2	;
00895E 6324     	MOV.B   	@R2+,R3		;
008960 633C     	EXTU.B   	R3,R3			;
008962 6424     	MOV.B   	@R2+,R4		;
008964 644C     	EXTU.B   	R4,R4			;
008966 6524     	MOV.B   	@R2+,R5		;
008968 655C     	EXTU.B   	R5,R5			;
00896A 6620     	MOV.B   	@R2,R6		;
00896C 666C     	EXTU.B   	R6,R6			;
00896E 4301     	SHLR    	R3			;
008970 4501     	SHLR    	R5			;
008972 3432     	CMP/HS 	R3,R4			;
008974 8B03     	BF      	#006			;
008976 3652     	CMP/HS 	R5,R6			;
008978 8B01     	BF      	#002			;
00897A A006     	BRA     	#000C			;
00897C 0009     	NOP     				;
00897E D1CC     	MOV.L   	@(#330,PC),R1	;
008980 200A     	XOR     	R0,R0			;
008982 2100     	MOV.B   	R0,@R1		;
008984 E003     	MOV     	#03,R0		;
008986 A123     	BRA     	#0246			;
008988 0009     	NOP     				;
00898A D31D     	MOV.L   	@(#074,PC),R3	;
00898C 6231     	MOV.W   	@R3,R2		;
00898E 622D     	EXTU.W   	R2,R2			;
008990 C801     	TST     	#01,R0		;
008992 8B05     	BF      	#00A			;
008994 D31E     	MOV.L   	@(#078,PC),R3	;
008996 2321     	MOV.W   	R2,@R3		;
008998 7001     	ADD     	#01,R0		;
00899A 2100     	MOV.B   	R0,@R1		;
00899C AFC0     	BRA     	#1F80			;
00899E 0009     	NOP     				;
0089A0 D31B     	MOV.L   	@(#06C,PC),R3	;
0089A2 6131     	MOV.W   	@R3,R1		;
0089A4 3212     	CMP/HS 	R1,R2			;
0089A6 8B03     	BF      	#006			;
0089A8 3218     	SUB     	R1,R2			;
0089AA 6123     	MOV     	R2,R1			;
0089AC A001     	BRA     	#0002			;
0089AE 0009     	NOP     				;
0089B0 3128     	SUB     	R2,R1			;
0089B2 8803     	CMP/EQ  	#03,R0		;
0089B4 8902     	BT      	#004			;
0089B6 9242     	MOV.W   	@(#084,PC),R2	;
0089B8 A001     	BRA     	#0002			;
0089BA 0009     	NOP     				;
0089BC 9240     	MOV.W   	@(#080,PC),R2	;
0089BE 3126     	CMP/HI 	R2,R1			;
0089C0 8B05     	BF      	#00A			;
0089C2 D1BB     	MOV.L   	@(#2EC,PC),R1	;
0089C4 200A     	XOR     	R0,R0			;
0089C6 2100     	MOV.B   	R0,@R1		;
0089C8 E003     	MOV     	#03,R0		;
0089CA A101     	BRA     	#0202			;
0089CC 0009     	NOP     				;
0089CE D10F     	MOV.L   	@(#03C,PC),R1	;
0089D0 6010     	MOV.B   	@R1,R0		;
0089D2 8803     	CMP/EQ  	#03,R0		;
0089D4 8935     	BT      	#06A			;
0089D6 7001     	ADD     	#01,R0		;
0089D8 2100     	MOV.B   	R0,@R1		;
0089DA AFA1     	BRA     	#1F42			;
0089DC 0009     	NOP     				;
0089DE 0009     	NOP     				;
0089E0 0F00
0089E2 02EC
0089E4 0907
0089E6 ADB0
0089E8 0B07
0089EA 0000
0089EC 0607
0089EE 0000
0089F0 0F00
0089F2 0772
0089F4 0F00
0089F6 0600
0089F8 0900
0089FA 0000
0089FC 0900
0089FE 0068
008A00 0F00
008A02 027E
008A04 0F00
008A06 02BC
008A08 0907
008A0A ADCB
008A0C 0907
008A0E ADCF
008A10 0907
008A12 ADC8
008A14 0000
008A16 8A24
008A18 0907
008A1A ADCD
008A1C 0000
008A1E 05BE
008A20 0004
008A22 9124
008A24 0003
008A26 F435
008A28 0003
008A2A FE51
008A2C 5345
008A2E 4741
008A30 2053
008A32 4547
008A34 4153
008A36 4154
008A38 5552
008A3A 4E20
008A3C 0DEA
008A3E 0012
008A40 0014
008A42 D0A3     	MOV.L   	@(#28C,PC),R0	;
008A44 6102     	MOV.L   	@R0,R1		;
008A46 D2FD     	MOV.L   	@(#3F4,PC),R2	;
008A48 2212     	MOV.L   	R1,@R2		;
008A4A D1FA     	MOV.L   	@(#3E8,PC),R1	;
008A4C E006     	MOV     	#06,R0		;
008A4E 600C     	EXTU.B   	R0,R0			;
008A50 2100     	MOV.B   	R0,@R1		;
008A52 A167     	BRA     	#02CE			;
008A54 0009     	NOP     				;
008A56 0009     	NOP     				;
008A58 0004
008A5A E8D6
008A5C 05FF
008A5E FF36
008A60 DBF7     	MOV.L   	@(#3DC,PC),R11	;
008A62 C32A     	TRAPA   	#2A			;
008A64 D3F9     	MOV.L   	@(#3E4,PC),R3	;
008A66 6030     	MOV.B   	@R3,R0		;
008A68 610C     	EXTU.B   	R0,R1			;
008A6A D4FE     	MOV.L   	@(#3F8,PC),R4	;
008A6C 6240     	MOV.B   	@R4,R2		;
008A6E 622C     	EXTU.B   	R2,R2			;
008A70 E301     	MOV     	#01,R3		;
008A72 D0FB     	MOV.L   	@(#3EC,PC),R0	;
008A74 400B     	JSR     	@R0			;
008A76 0009     	NOP     				;
008A78 DBF1     	MOV.L   	@(#3C4,PC),R11	;
008A7A C327     	TRAPA   	#27			;
008A7C D403     	MOV.L   	@(#00C,PC),R4	;
008A7E 241E     	MULU.W  	R1,R4			;
008A80 061A     	STS     	MACL, R6		;
008A82 D203     	MOV.L   	@(#00C,PC),R2	;
008A84 362C     	ADD     	R2,R6			;
008A86 A005     	BRA     	#000A			;
008A88 0009     	NOP     				;
008A8A 0009     	NOP     				;
008A8C 0000
008A8E 0930
008A90 0900
008A92 0230
008A94 760C     	ADD     	#0C,R6		;
008A96 D78F     	MOV.L   	@(#23C,PC),R7	;
008A98 770C     	ADD     	#0C,R7		;
008A9A B23F     	BRS     	#047E			;
008A9C 0009     	NOP     				;
008A9E 4F22     	STS.L   	PR,@-R15		;
008AA0 DBE7     	MOV.L   	@(#39C,PC),R11	;
008AA2 C32A     	TRAPA   	#2A			;
008AA4 D0E9     	MOV.L   	@(#3A4,PC),R0	;
008AA6 6100     	MOV.B   	@R0,R1		;
008AA8 D4EE     	MOV.L   	@(#3B8,PC),R4	;
008AAA 6240     	MOV.B   	@R4,R2		;
008AAC 622C     	EXTU.B   	R2,R2			;
008AAE E301     	MOV     	#01,R3		;
008AB0 D0E5     	MOV.L   	@(#394,PC),R0	;
008AB2 400B     	JSR     	@R0			;
008AB4 0009     	NOP     				;
008AB6 DBE2     	MOV.L   	@(#388,PC),R11	;
008AB8 C327     	TRAPA   	#27			;
008ABA 4F26     	LDS.L   	@R15+,PR		;
008ABC D174     	MOV.L   	@(#1D0,PC),R1	;
008ABE 6010     	MOV.B   	@R1,R0		;
008AC0 8800     	CMP/EQ  	#00,R0		;
008AC2 8B0A     	BF      	#014			;
008AC4 D583     	MOV.L   	@(#20C,PC),R5	;
008AC6 E000     	MOV     	#00,R0		;
008AC8 600C     	EXTU.B   	R0,R0			;
008ACA 350C     	ADD     	R0,R5			;
008ACC E662     	MOV     	#62,R6		;
008ACE E400     	MOV     	#00,R4		;
008AD0 D97A     	MOV.L   	@(#1E8,PC),R9	;
008AD2 B24D     	BRS     	#049A			;
008AD4 0009     	NOP     				;
008AD6 A008     	BRA     	#0010			;
008AD8 0009     	NOP     				;
008ADA 8801     	CMP/EQ  	#01,R0		;
008ADC 8B1D     	BF      	#03A			;
008ADE D57D     	MOV.L   	@(#1F4,PC),R5	;
008AE0 E662     	MOV     	#62,R6		;
008AE2 E462     	MOV     	#62,R4		;
008AE4 D975     	MOV.L   	@(#1D4,PC),R9	;
008AE6 B243     	BRS     	#0486			;
008AE8 0009     	NOP     				;
008AEA D169     	MOV.L   	@(#1A4,PC),R1	;
008AEC 6010     	MOV.B   	@R1,R0		;
008AEE 7001     	ADD     	#01,R0		;
008AF0 2100     	MOV.B   	R0,@R1		;
008AF2 D0D6     	MOV.L   	@(#358,PC),R0	;
008AF4 6100     	MOV.B   	@R0,R1		;
008AF6 E406     	MOV     	#06,R4		;
008AF8 644C     	EXTU.B   	R4,R4			;
008AFA 214E     	MULU.W  	R4,R1			;
008AFC 041A     	STS     	MACL, R4		;
008AFE D0D7     	MOV.L   	@(#35C,PC),R0	;
008B00 340C     	ADD     	R0,R4			;
008B02 8442     	MOV.B   	@(#02,R4),R0	;
008B04 600C     	EXTU.B   	R0,R0			;
008B06 D4D7     	MOV.L   	@(#35C,PC),R4	;
008B08 6240     	MOV.B   	@R4,R2		;
008B0A 622C     	EXTU.B   	R2,R2			;
008B0C 3200     	CMP/EQ 	R0,R2			;
008B0E 8901     	BT      	#002			;
008B10 AFA6     	BRA     	#1F4C			;
008B12 0009     	NOP     				;
008B14 D076     	MOV.L   	@(#1D8,PC),R0	;
008B16 402B     	JMP     	@R0			;
008B18 0009     	NOP     				;
008B1A D56E     	MOV.L   	@(#1B8,PC),R5	;
008B1C E662     	MOV     	#62,R6		;
008B1E E458     	MOV     	#58,R4		;
008B20 D967     	MOV.L   	@(#19C,PC),R9	;
008B22 B225     	BRS     	#044A			;
008B24 0009     	NOP     				;
008B26 E000     	MOV     	#00,R0		;
008B28 D159     	MOV.L   	@(#164,PC),R1	;
008B2A 2100     	MOV.B   	R0,@R1		;
008B2C D166     	MOV.L   	@(#198,PC),R1	;
008B2E 6010     	MOV.B   	@R1,R0		;
008B30 D2F5     	MOV.L   	@(#3D4,PC),R2	;
008B32 4008     	SHLL2   	R0			;
008B34 4008     	SHLL2   	R0			;
008B36 320C     	ADD     	R0,R2			;
008B38 D164     	MOV.L   	@(#190,PC),R1	;
008B3A B198     	BRS     	#0330			;
008B3C 0009     	NOP     				;
008B3E D266     	MOV.L   	@(#198,PC),R2	;
008B40 6020     	MOV.B   	@R2,R0		;
008B42 600C     	EXTU.B   	R0,R0			;
008B44 8802     	CMP/EQ  	#02,R0		;
008B46 890C     	BT      	#018			;
008B48 D361     	MOV.L   	@(#184,PC),R3	;
008B4A 6403     	MOV     	R0,R4			;
008B4C 7001     	ADD     	#01,R0		;
008B4E 4008     	SHLL2   	R0			;
008B50 013E     	MOV.L   	@(R0,R3),R1		;
008B52 7401     	ADD     	#01,R4		;
008B54 2240     	MOV.B   	R4,@R2		;
008B56 D25C     	MOV.L   	@(#170,PC),R2	;
008B58 6020     	MOV.B   	@R2,R0		;
008B5A 7001     	ADD     	#01,R0		;
008B5C 2200     	MOV.B   	R0,@R2		;
008B5E AF72     	BRA     	#1EE4			;
008B60 0009     	NOP     				;
008B62 D1EC     	MOV.L   	@(#3B0,PC),R1	;
008B64 6010     	MOV.B   	@R1,R0		;
008B66 E102     	MOV     	#02,R1		;
008B68 3012     	CMP/HS 	R1,R0			;
008B6A 8905     	BT      	#00A			;
008B6C D150     	MOV.L   	@(#140,PC),R1	;
008B6E 200A     	XOR     	R0,R0			;
008B70 2100     	MOV.B   	R0,@R1		;
008B72 E003     	MOV     	#03,R0		;
008B74 A02C     	BRA     	#0058			;
008B76 0009     	NOP     				;
008B78 D24A     	MOV.L   	@(#128,PC),R2	;
008B7A D05E     	MOV.L   	@(#178,PC),R0	;
008B7C 6126     	MOV.L   	@R2+,R1		;
008B7E 3100     	CMP/EQ 	R0,R1			;
008B80 8901     	BT      	#002			;
008B82 A00A     	BRA     	#0014			;
008B84 0009     	NOP     				;
008B86 6126     	MOV.L   	@R2+,R1		;
008B88 D05B     	MOV.L   	@(#16C,PC),R0	;
008B8A 3100     	CMP/EQ 	R0,R1			;
008B8C 8901     	BT      	#002			;
008B8E A004     	BRA     	#0008			;
008B90 0009     	NOP     				;
008B92 6121     	MOV.W   	@R2,R1		;
008B94 90B2     	MOV.W   	@(#164,PC),R0	;
008B96 3100     	CMP/EQ 	R0,R1			;
008B98 8904     	BT      	#008			;
008B9A D146     	MOV.L   	@(#118,PC),R1	;
008B9C E004     	MOV     	#04,R0		;
008B9E 8011     	MOV.B   	R0,@(#01,R1)	;
008BA0 A0AE     	BRA     	#015C			;
008BA2 0009     	NOP     				;
008BA4 E201     	MOV     	#01,R2		;
008BA6 D13B     	MOV.L   	@(#0EC,PC),R1	;
008BA8 6010     	MOV.B   	@R1,R0		;
008BAA 8801     	CMP/EQ  	#01,R0		;
008BAC 8B01     	BF      	#002			;
008BAE D13A     	MOV.L   	@(#0E8,PC),R1	;
008BB0 2120     	MOV.B   	R2,@R1		;
008BB2 D13E     	MOV.L   	@(#0F8,PC),R1	;
008BB4 2120     	MOV.B   	R2,@R1		;
008BB6 D039     	MOV.L   	@(#0E4,PC),R0	;
008BB8 6102     	MOV.L   	@R0,R1		;
008BBA 5201     	MOV.L   	@(#04,R0),R2	;
008BBC D038     	MOV.L   	@(#0E0,PC),R0	;
008BBE 2012     	MOV.L   	R1,@R0		;
008BC0 1021     	MOV.L   	R2,@(#4,R0)		;
008BC2 D13C     	MOV.L   	@(#0F0,PC),R1	;
008BC4 E001     	MOV     	#01,R0		;
008BC6 2100     	MOV.B   	R0,@R1		;
008BC8 E004     	MOV     	#04,R0		;
008BCA 8011     	MOV.B   	R0,@(#01,R1)	;
008BCC A098     	BRA     	#0130			;
008BCE 0009     	NOP     				;
008BD0 D138     	MOV.L   	@(#0E0,PC),R1	;
008BD2 8011     	MOV.B   	R0,@(#01,R1)	;
008BD4 E000     	MOV     	#00,R0		;
008BD6 DB2B     	MOV.L   	@(#0AC,PC),R11	;
008BD8 2B0B     	OR      	R0,R11		;
008BDA C325     	TRAPA   	#25			;
008BDC D195     	MOV.L   	@(#254,PC),R1	;
008BDE 6010     	MOV.B   	@R1,R0		;
008BE0 600C     	EXTU.B   	R0,R0			;
008BE2 8802     	CMP/EQ  	#02,R0		;
008BE4 892B     	BT      	#056			;
008BE6 4F22     	STS.L   	PR,@-R15		;
008BE8 DB95     	MOV.L   	@(#254,PC),R11	;
008BEA C32A     	TRAPA   	#2A			;
008BEC E000     	MOV     	#00,R0		;
008BEE CB80     	OR      	#80,R0		;
008BF0 610C     	EXTU.B   	R0,R1			;
008BF2 D02D     	MOV.L   	@(#0B4,PC),R0	;
008BF4 400B     	JSR     	@R0			;
008BF6 0009     	NOP     				;
008BF8 D094     	MOV.L   	@(#250,PC),R0	;
008BFA 6300     	MOV.B   	@R0,R3		;
008BFC E006     	MOV     	#06,R0		;
008BFE 600C     	EXTU.B   	R0,R0			;
008C00 230E     	MULU.W  	R0,R3			;
008C02 021A     	STS     	MACL, R2		;
008C04 D195     	MOV.L   	@(#254,PC),R1	;
008C06 312C     	ADD     	R2,R1			;
008C08 200A     	XOR     	R0,R0			;
008C0A 8013     	MOV.B   	R0,@(#03,R1)	;
008C0C 8412     	MOV.B   	@(#02,R1),R0	;
008C0E D195     	MOV.L   	@(#254,PC),R1	;
008C10 6210     	MOV.B   	@R1,R2		;
008C12 622C     	EXTU.B   	R2,R2			;
008C14 3028     	SUB     	R2,R0			;
008C16 8800     	CMP/EQ  	#00,R0		;
008C18 8904     	BT      	#008			;
008C1A 6133     	MOV     	R3,R1			;
008C1C 6303     	MOV     	R0,R3			;
008C1E D08A     	MOV.L   	@(#228,PC),R0	;
008C20 400B     	JSR     	@R0			;
008C22 0009     	NOP     				;
008C24 D089     	MOV.L   	@(#224,PC),R0	;
008C26 6300     	MOV.B   	@R0,R3		;
008C28 4308     	SHLL2   	R3			;
008C2A 4308     	SHLL2   	R3			;
008C2C D182     	MOV.L   	@(#208,PC),R1	;
008C2E 313C     	ADD     	R3,R1			;
008C30 200A     	XOR     	R0,R0			;
008C32 1102     	MOV.L   	R0,@(#8,R1)		;
008C34 1103     	MOV.L   	R0,@(#C,R1)		;
008C36 8010     	MOV.B   	R0,@(#00,R1)	;
008C38 DB81     	MOV.L   	@(#204,PC),R11	;
008C3A C327     	TRAPA   	#27			;
008C3C 4F26     	LDS.L   	@R15+,PR		;
008C3E EB03     	MOV     	#03,R11		;
008C40 D080     	MOV.L   	@(#200,PC),R0	;
008C42 2B0B     	OR      	R0,R11		;
008C44 C321     	TRAPA   	#21			;
008C46 D126     	MOV.L   	@(#098,PC),R1	;
008C48 D226     	MOV.L   	@(#098,PC),R2	;0F00025C
008C4A 6010     	MOV.B   	@R1,R0		;
008C4C 2200     	MOV.B   	R0,@R2		;
008C4E D226     	MOV.L   	@(#098,PC),R2	;
008C50 8411     	MOV.B   	@(#01,R1),R0	;
008C52 2200     	MOV.B   	R0,@R2		;
008C54 D225     	MOV.L   	@(#094,PC),R2	;
008C56 8412     	MOV.B   	@(#02,R1),R0	;
008C58 2200     	MOV.B   	R0,@R2		;
008C5A D116     	MOV.L   	@(#058,PC),R1	;
008C5C 8411     	MOV.B   	@(#01,R1),R0	;
008C5E 600C     	EXTU.B   	R0,R0			;
008C60 8811     	CMP/EQ  	#11,R0		;
008C62 8B02     	BF      	#004			;
008C64 D014     	MOV.L   	@(#050,PC),R0	;
008C66 402B     	JMP     	@R0			;
008C68 0009     	NOP     				;
008C6A D172     	MOV.L   	@(#1C8,PC),R1	;
008C6C E000     	MOV     	#00,R0		;
008C6E 2100     	MOV.B   	R0,@R1		;
008C70 D105     	MOV.L   	@(#014,PC),R1	;
008C72 200A     	XOR     	R0,R0			;
008C74 2100     	MOV.B   	R0,@R1		;
008C76 9042     	MOV.W   	@(#084,PC),R0	;
008C78 600D     	EXTU.W   	R0,R0			;
008C7A D304     	MOV.L   	@(#010,PC),R3	;
008C7C 2301     	MOV.W   	R0,@R3		;
008C7E D01C     	MOV.L   	@(#070,PC),R0	;
008C80 402B     	JMP     	@R0			;
008C82 0009     	NOP     				;
008C84 0707
008C86 0000
008C88 0F00
008C8A 07B0
008C8C 0A00
008C8E 001E
008C90 0907
008C92 ADCA
008C94 0F00
008C96 078A
008C98 0F00
008C9A 02F8
008C9C 0F00
008C9E 0774
008CA0 0F00
008CA2 02F0
008CA4 0F00
008CA6 077C
008CA8 0000
008CAA 54F0
008CAC 0F00
008CAE 02F9
008CB0 0F00
008CB2 0788
008CB4 0F00
008CB6 0786
008CB8 0000
008CBA 7838
008CBC 0907
008CBE 8530
008CC0 0907
008CC2 8F50
008CC4 0907
008CC6 9970
008CC8 0907
008CCA ADCD
008CCC 0907
008CCE 9790
008CD0 0907
008CD2 ADB8
008CD4 0907
008CD6 7C00
008CD8 0907
008CDA ADCC
008CDC 0000
008CDE 5476
008CE0 0907
008CE2 ADD0
008CE4 0F00025C
008CE8 0F00
008CEA 0262
008CEC 0F00
008CEE 0263
008CF0 0000
008CF2 77C0

008CF4 5345
008CF6 4741
008CF8 5359
008CFA 5354
008CFC 454D
008CFE 0200
008D00 D04B     	MOV.L   	@(#12C,PC),R0	;
008D02 400B     	JSR     	@R0			;
008D04 0009     	NOP     				;
008D06 D048     	MOV.L   	@(#120,PC),R0	;
008D08 400B     	JSR     	@R0			;
008D0A 0009     	NOP     				;
008D0C 8800     	CMP/EQ  	#00,R0		;
008D0E 8B01     	BF      	#002			;
008D10 AF60     	BRA     	#1EC0			;
008D12 0009     	NOP     				;
008D14 D142     	MOV.L   	@(#108,PC),R1	;
008D16 6012     	MOV.L   	@R1,R0		;
008D18 D148     	MOV.L   	@(#120,PC),R1	;
008D1A 2102     	MOV.L   	R0,@R1		;
008D1C D145     	MOV.L   	@(#114,PC),R1	;
008D1E E007     	MOV     	#07,R0		;
008D20 600C     	EXTU.B   	R0,R0			;
008D22 2100     	MOV.B   	R0,@R1		;
008D24 4F22     	STS.L   	PR,@-R15		;
008D26 DB46     	MOV.L   	@(#118,PC),R11	;
008D28 C32A     	TRAPA   	#2A			;
008D2A D148     	MOV.L   	@(#120,PC),R1	;
008D2C 6010     	MOV.B   	@R1,R0		;
008D2E 600C     	EXTU.B   	R0,R0			;
008D30 6303     	MOV     	R0,R3			;
008D32 4008     	SHLL2   	R0			;
008D34 4008     	SHLL2   	R0			;
008D36 D140     	MOV.L   	@(#100,PC),R1	;
008D38 310C     	ADD     	R0,R1			;
008D3A D540     	MOV.L   	@(#100,PC),R5	;
008D3C 6052     	MOV.L   	@R5,R0		;
008D3E 1102     	MOV.L   	R0,@(#8,R1)		;
008D40 D23C     	MOV.L   	@(#0F0,PC),R2	;
008D42 6020     	MOV.B   	@R2,R0		;
008D44 600C     	EXTU.B   	R0,R0			;
008D46 6503     	MOV     	R0,R5			;
008D48 8803     	CMP/EQ  	#03,R0		;
008D4A 8B04     	BF      	#008			;
008D4C D241     	MOV.L   	@(#104,PC),R2	;
008D4E 6020     	MOV.B   	@R2,R0		;
008D50 600C     	EXTU.B   	R0,R0			;
008D52 A008     	BRA     	#0010			;
008D54 0009     	NOP     				;
008D56 8806     	CMP/EQ  	#06,R0		;
008D58 8B02     	BF      	#004			;
008D5A E003     	MOV     	#03,R0		;
008D5C A003     	BRA     	#0006			;
008D5E 0009     	NOP     				;
008D60 D230     	MOV.L   	@(#0C0,PC),R2	;
008D62 6020     	MOV.B   	@R2,R0		;
008D64 600C     	EXTU.B   	R0,R0			;
008D66 1103     	MOV.L   	R0,@(#C,R1)		;
008D68 E040     	MOV     	#40,R0		;
008D6A 600C     	EXTU.B   	R0,R0			;
008D6C 8010     	MOV.B   	R0,@(#00,R1)	;
008D6E E406     	MOV     	#06,R4		;
008D70 644C     	EXTU.B   	R4,R4			;
008D72 234E     	MULU.W  	R4,R3			;
008D74 041A     	STS     	MACL, R4		;
008D76 D139     	MOV.L   	@(#0E4,PC),R1	;
008D78 341C     	ADD     	R1,R4			;
008D7A E001     	MOV     	#01,R0		;
008D7C 600C     	EXTU.B   	R0,R0			;
008D7E 8043     	MOV.B   	R0,@(#03,R4)	;
008D80 D132     	MOV.L   	@(#0C8,PC),R1	;
008D82 6010     	MOV.B   	@R1,R0		;
008D84 CB00     	OR      	#00,R0		;
008D86 620C     	EXTU.B   	R0,R2			;
008D88 E000     	MOV     	#00,R0		;
008D8A CB80     	OR      	#80,R0		;
008D8C 610C     	EXTU.B   	R0,R1			;
008D8E D030     	MOV.L   	@(#0C0,PC),R0	;
008D90 400B     	JSR     	@R0			;
008D92 0009     	NOP     				;
008D94 D12A     	MOV.L   	@(#0A8,PC),R1	;
008D96 C327     	TRAPA   	#27			;
008D98 4F26     	LDS.L   	@R15+,PR		;
008D9A EB02     	MOV     	#02,R11		;
008D9C D029     	MOV.L   	@(#0A4,PC),R0	;
008D9E 2B0B     	OR      	R0,R11		;
008DA0 C321     	TRAPA   	#21			;
008DA2 D031     	MOV.L   	@(#0C4,PC),R0	;
008DA4 402B     	JMP     	@R0			;
008DA6 0009     	NOP     				;
008DA8 DB25     	MOV.L   	@(#094,PC),R11	;
008DAA C32A     	TRAPA   	#2A			;
008DAC D327     	MOV.L   	@(#09C,PC),R3	;
008DAE 6030     	MOV.B   	@R3,R0		;
008DB0 610C     	EXTU.B   	R0,R1			;
008DB2 D42C     	MOV.L   	@(#0B0,PC),R4	;
008DB4 6240     	MOV.B   	@R4,R2		;
008DB6 622C     	EXTU.B   	R2,R2			;
008DB8 E301     	MOV     	#01,R3		;
008DBA D029     	MOV.L   	@(#0A4,PC),R0	;
008DBC 400B     	JSR     	@R0			;
008DBE 0009     	NOP     				;
008DC0 DB1F     	MOV.L   	@(#07C,PC),R11	;
008DC2 C327     	TRAPA   	#27			;
008DC4 6013     	MOV     	R1,R0			;
008DC6 D119     	MOV.L   	@(#064,PC),R1	;
008DC8 410B     	JSR     	@R1			;
008DCA 0009     	NOP     				;
008DCC D122     	MOV.L   	@(#088,PC),R1	;
008DCE 2102     	MOV.L   	R0,@R1		;
008DD0 DB1B     	MOV.L   	@(#06C,PC),R11	;
008DD2 C32A     	TRAPA   	#2A			;
008DD4 D01D     	MOV.L   	@(#074,PC),R0	;
008DD6 6100     	MOV.B   	@R0,R1		;
008DD8 D422     	MOV.L   	@(#088,PC),R4	;
008DDA 6240     	MOV.B   	@R4,R2		;
008DDC 622C     	EXTU.B   	R2,R2			;
008DDE E301     	MOV     	#01,R3		;
008DE0 D019     	MOV.L   	@(#064,PC),R0	;
008DE2 400B     	JSR     	@R0			;
008DE4 0009     	NOP     				;
008DE6 D019     	MOV.L   	@(#064,PC),R0	;
008DE8 6100     	MOV.B   	@R0,R1		;
008DEA E406     	MOV     	#06,R4		;
008DEC 644C     	EXTU.B   	R4,R4			;
008DEE 214E     	MULU.W  	R4,R1			;
008DF0 041A     	STS     	MACL, R4		;
008DF2 D01A     	MOV.L   	@(#068,PC),R0	;
008DF4 340C     	ADD     	R0,R4			;
008DF6 8442     	MOV.B   	@(#02,R4),R0	;
008DF8 600C     	EXTU.B   	R0,R0			;
008DFA 6103     	MOV     	R0,R1			;
008DFC DB10     	MOV.L   	@(#040,PC),R11	;
008DFE C327     	TRAPA   	#27			;
008E00 D315     	MOV.L   	@(#054,PC),R3	;
008E02 6032     	MOV.L   	@R3,R0		;
008E04 8800     	CMP/EQ  	#00,R0		;
008E06 8909     	BT      	#012			;
008E08 D416     	MOV.L   	@(#058,PC),R4	;
008E0A 6240     	MOV.B   	@R4,R2		;
008E0C 622C     	EXTU.B   	R2,R2			;
008E0E 3210     	CMP/EQ 	R1,R2			;
008E10 8901     	BT      	#002			;
008E12 AFC9     	BRA     	#1F92			;
008E14 0009     	NOP     				;
008E16 D014     	MOV.L   	@(#050,PC),R0	;
008E18 402B     	JMP     	@R0			;
008E1A 0009     	NOP     				;
008E1C AEDA     	BRA     	#1DB4			;
008E1E 0009     	NOP     				;
008E20 0F00
008E22 020C
008E24 0F00
008E26 0208
008E28 000019EC
008E2C 0000
008E2E 1A38
008E30 0000
008E32 1B5E
008E34 0907
008E36 ADCB
008E38 0F00
008E3A 0420
008E3C 0F00
008E3E 02BC
008E40 0B07
008E42 0000
008E44 0607
008E46 0000
008E48 0000
008E4A 51BE
008E4C 0F00
008E4E 0772
008E50 0000
008E52 5510
008E54 0907
008E56 ADCE
008E58 0907
008E5A ADC4
008E5C 0F00
008E5E 0600
008E60 0000
008E62 506C
008E64 0F00
008E66 078B
008E68 0000
008E6A 77C0     	ADD     	#C0,R7		;
008E6C 07FF     	MAC.L   	@R15+,@R7+		;
008E6E 2BBA     	XOR     	R11,R11		;
008E70 255A     	XOR     	R5,R5			;
008E72 DC27     	MOV.L   	@(#09C,PC),R12	;
008E74 6DC6     	MOV.L   	@R12+,R13		;
008E76 E96A     	MOV     	#6A,R9		;
008E78 DA24     	MOV.L   	@(#090,PC),R10	;
008E7A 6426     	MOV.L   	@R2+,R4		;
008E7C D026     	MOV.L   	@(#098,PC),R0	;
008E7E E720     	MOV     	#20,R7		;
008E80 2070     	MOV.B   	R7,@R0		;
008E82 288A     	XOR     	R8,R8			;
008E84 63A4     	MOV.B   	@R10+,R3		;
008E86 633C     	EXTU.B   	R3,R3			;
008E88 6633     	MOV     	R3,R6			;
008E8A 4D00     	SHLL    	R13			;
008E8C 8B04     	BF      	#008			;
008E8E E062     	MOV     	#62,R0		;
008E90 3900     	CMP/EQ 	R0,R9			;
008E92 8B00     	BF      	#000			;
008E94 76FF     	ADD     	#FF,R6		;
008E96 76FF     	ADD     	#FF,R6		;
008E98 4601     	SHLR    	R6			;
008E9A 4400     	SHLL    	R4			;
008E9C 8903     	BT      	#006			;
008E9E E759     	MOV     	#59,R7		;
008EA0 677C     	EXTU.B   	R7,R7			;
008EA2 A002     	BRA     	#0004			;
008EA4 0009     	NOP     				;
008EA6 E7A8     	MOV     	#A8,R7		;
008EA8 677C     	EXTU.B   	R7,R7			;
008EAA 6014     	MOV.B   	@R1+,R0		;
008EAC 600C     	EXTU.B   	R0,R0			;
008EAE 3070     	CMP/EQ 	R7,R0			;
008EB0 8B02     	BF      	#004			;
008EB2 7801     	ADD     	#01,R8		;
008EB4 A000     	BRA     	#0000			;
008EB6 0009     	NOP     				;
008EB8 73FF     	ADD     	#FF,R3		;
008EBA 6033     	MOV     	R3,R0			;
008EBC 8800     	CMP/EQ  	#00,R0		;
008EBE 8BF4     	BF      	#1E8			;
008EC0 3862     	CMP/HS 	R6,R8			;
008EC2 8905     	BT      	#00A			;
008EC4 7501     	ADD     	#01,R5		;
008EC6 E00A     	MOV     	#0A,R0		;
008EC8 3506     	CMP/HI 	R0,R5			;
008ECA 8B03     	BF      	#006			;
008ECC A013     	BRA     	#0026			;
008ECE 0009     	NOP     				;
008ED0 255A     	XOR     	R5,R5			;
008ED2 7B01     	ADD     	#01,R11		;
008ED4 79FF     	ADD     	#FF,R9		;
008ED6 4915     	CMP/PL  	R9			;
008ED8 8B0D     	BF      	#01A			;
008EDA D70F     	MOV.L   	@(#03C,PC),R7	;
008EDC 6070     	MOV.B   	@R7,R0		;
008EDE 70FF     	ADD     	#FF,R0		;
008EE0 8800     	CMP/EQ  	#00,R0		;
008EE2 8902     	BT      	#004			;
008EE4 2700     	MOV.B   	R0,@R7		;
008EE6 AFCC     	BRA     	#1F98			;
008EE8 0009     	NOP     				;
008EEA E020     	MOV     	#20,R0		;
008EEC 2700     	MOV.B   	R0,@R7		;
008EEE 6426     	MOV.L   	@R2+,R4		;
008EF0 6DC6     	MOV.L   	@R12+,R13		;
008EF2 AFC6     	BRA     	#1F8C			;
008EF4 0009     	NOP     				;
008EF6 E055     	MOV     	#55,R0		;
008EF8 30B6     	CMP/HI 	R11,R0		;
008EFA 8903     	BT      	#006			;
008EFC D105     	MOV.L   	@(#014,PC),R1	;
008EFE 6010     	MOV.B   	@R1,R0		;
008F00 7001     	ADD     	#01,R0		;
008F02 2100     	MOV.B   	R0,@R1		;
008F04 000B     	RTS     				;
008F06 0009     	NOP     				;
008F08 0000
008F0A 8FB4
008F0C 0000
008F0E 9104
008F10 0000
008F12 90C4
008F14 0F00
008F16 0789
008F18 0907
008F1A ADD3     	BRA     	#1BA6			;
008F1C D411     	MOV.L   	@(#044,PC),R4	;
008F1E D112     	MOV.L   	@(#048,PC),R1	;
008F20 D312     	MOV.L   	@(#048,PC),R3	;
008F22 6213     	MOV     	R1,R2			;
008F24 4119     	SHLR8   	R1			;
008F26 4208     	SHLL2   	R2			;
008F28 4208     	SHLL2   	R2			;
008F2A 4208     	SHLL2   	R2			;
008F2C 6023     	MOV     	R2,R0			;
008F2E 2039     	AND     	R3,R0			;
008F30 210B     	OR      	R0,R1			;
008F32 4200     	SHLL    	R2			;
008F34 2239     	AND     	R3,R2			;
008F36 212A     	XOR     	R2,R1			;
008F38 6213     	MOV     	R1,R2			;
008F3A 4119     	SHLR8   	R1			;
008F3C 4208     	SHLL2   	R2			;
008F3E 4208     	SHLL2   	R2			;
008F40 4208     	SHLL2   	R2			;
008F42 6023     	MOV     	R2,R0			;
008F44 2039     	AND     	R3,R0			;
008F46 210B     	OR      	R0,R1			;
008F48 4200     	SHLL    	R2			;
008F4A 2239     	AND     	R3,R2			;
008F4C 212A     	XOR     	R2,R1			;
008F4E 6065     	MOV.W   	@R6+,R0		;
008F50 6008     	SWAP.B   	R0,R0			;
008F52 201A     	XOR     	R1,R0			;
008F54 2701     	MOV.W   	R0,@R7		;
008F56 7702     	ADD     	#02,R7		;
008F58 74FF     	ADD     	#FF,R4		;
008F5A 4415     	CMP/PL  	R4			;
008F5C 89E1     	BT      	#1C2			;
008F5E 000B     	RTS     				;
008F60 0009     	NOP     				;
008F62 0009     	NOP     				;
008F64 0000
008F66 0492
008F68 8001
008F6A 0000
008F6C FF00
008F6E 0000
008F70 E318     	MOV     	#18,R3		;
008F72 234E     	MULU.W  	R4,R3			;
008F74 6293     	MOV     	R9,R2			;
008F76 031A     	STS     	MACL, R3		;
008F78 323C     	ADD     	R3,R2			;
008F7A D40D     	MOV.L   	@(#034,PC),R4	;
008F7C E306     	MOV     	#06,R3		;
008F7E 6156     	MOV.L   	@R5+,R1		;
008F80 6118     	SWAP.B   	R1,R1			;
008F82 6119     	SWAP.W   	R1,R1			;
008F84 6118     	SWAP.B   	R1,R1			;
008F86 6045     	MOV.W   	@R4+,R0		;
008F88 0214     	MOV.B   	R1,@(R0,R2)		;
008F8A 6045     	MOV.W   	@R4+,R0		;
008F8C 4119     	SHLR8   	R1			;
008F8E 0214     	MOV.B   	R1,@(R0,R2)		;
008F90 6045     	MOV.W   	@R4+,R0		;
008F92 4119     	SHLR8   	R1			;
008F94 0214     	MOV.B   	R1,@(R0,R2)		;
008F96 6045     	MOV.W   	@R4+,R0		;
008F98 4119     	SHLR8   	R1			;
008F9A 0214     	MOV.B   	R1,@(R0,R2)		;
008F9C 73FF     	ADD     	#FF,R3		;
008F9E 4315     	CMP/PL  	R3			;
008FA0 89ED     	BT      	#1DA			;
008FA2 7218     	ADD     	#18,R2		;
008FA4 76FF     	ADD     	#FF,R6		;
008FA6 4615     	CMP/PL  	R6			;
008FA8 89E7     	BT      	#1CE			;
008FAA 000B     	RTS     				;
008FAC 0009     	NOP     				;
008FAE 0009     	NOP     				;
008FB0 0000
008FB2 90D4
008FB4 FFFF
008FB6 8000
008FB8 FFFF
008FBA 807F
008FBC FFFE
008FBE 78FF
008FC0 FF00
008FC2 0000
008FC4 FFFF
008FC6 F007
008FC8 FFFF
008FCA 83FF
008FCC FFFE
008FCE 3CFF
008FD0 FF00
008FD2 0000
008FD4 0000
008FD6 FC1F
008FD8 C000
008FDA 07E0
008FDC 01EF
008FDE 3C00
008FE0 1E00
008FE2 0000
008FE4 FFFE
008FE6 3E3E
008FE8 1FFF
008FEA 8F87
008FEC F9EF
008FEE 1EFF
008FF0 1E00
008FF2 0000
008FF4 FFFF
008FF6 1E3C 
008FF8 7FFF
008FFA 8F1F
008FFC F9E7
008FFE 9EFF
009000 3C00
009002 0000
009004 0007
009006 9E3C
009008 F800
00900A 0F3C
00900C 79E7
00900E 8F1E
009010 3C00
009012 0000
009014 03FF
009016 1E3C
009018 FFFC
00901A 0F3C
00901C F9E3
00901E CF1E
009020 7800
009022 0000
009024 1FFE
009026 3E3C
009028 FFFC
00902A 0F3C
00902C F9E3
00902E C7BC
009030 7800
009032 0000
009034 7E00
009036 FC3C
009038 0000
00903A 0F3C
00903C 01E1
00903E E7BC
009040 F000
009042 0000
009044 F8FF
009046 F03C
009048 FFFC
00904A 0F3C
00904C FFE1
00904E E3F8
009050 F000
009052 0000
009054 F1FF
009056 803C
009058 FFFC
00905A 0F3C
00905C FFE0
00905E F3F9
009060 E000
009062 0000
009064 F3C0
009066 003C
009068 F800
00906A 0F3C
00906C 0000
00906E F1F1
009070 E000
009072 0000
009074 F1FF
009076 FC3C
009078 7FFF
00907A 8F1F
00907C FFE0
00907E 78E3
009080 C000
009082 0000
009084 F8FF
009086 FC3E
009088 1FFF
00908A 8F87
00908C FFE0
00908E 3C07
009090 8000
009092 0000
009094 7E00
009096 001F
009098 C000
00909A 07E0
00909C 0000
00909E 3E0F
0090A0 8000
0090A2 0000
0090A4 1FFF
0090A6 FC07
0090A8 FFFF
0090AA 83FF
0090AC FFE0
0090AE 1FFF
0090B0 0000
0090B2 0000
0090B4 03FF
0090B6 FC00
0090B8 FFFF
0090BA 807F
0090BC FFE0
0090BE 07FC
0090C0 0000
0090C2 0000
0090C4 0080
0090C6 5209
0090C8 8080
0090CA 0100
0090CC 8002
0090CE 0100
0090D0 0400
0090D2 0000
0090D4 0048
0090D6 0091
0090D8 028E
0090DA 02D7
0090DC 0624
0090DE 066D
0090E0 086A
0090E2 08B3
0090E4 010A
0090E6 0153
0090E8 0350
0090EA 0399
0090EC 06E6
0090EE 072F
0090F0 092C
0090F2 0975
0090F4 01CC
0090F6 0215
0090F8 0412
0090FA 045B
0090FC 07A8
0090FE 07F1
009100 09EE
009102 0A37
009104 0A08
009106 060B
009108 0805
00910A 0C08
00910C 060A
00910E 0A05
009110 090B
009112 0608
009114 0B06
009116 080A
009118 0708
00911A 0909
00911C 0807
00911E 0A08
009120 060C
009122 0805
009124 0B09
009126 050A
009128 0A06
00912A 080C
00912C 0508
00912E 0B07
009130 0809
009132 0808
009134 080A
009136 0806
009138 0B08
00913A 050C
00913C 0806
00913E 0A0A
009140 0509
009142 0B06
009144 080B
009146 0608
009148 0A07
00914A 0809 
00914C 0908
00914E 070A
009150 0806
009152 0C08
009154 050B
009156 0905
009158 0A0A
00915A 0608
00915C 0C05
00915E 080B
009160 0708
009162 0908
009164 0808
009166 0A08
009168 060B
00916A 0805
00916C 0C08
00916E FFFF
009170 D00A     	MOV.L   	@(#028,PC),R0	;
009172 6000     	MOV.B   	@R0,R0		;
009174 C828     	TST     	#28,R0		;
009176 8901     	BT      	#002			;
009178 000B     	RTS     				;
00917A E000     	MOV     	#00,R0		;
00917C D008     	MOV.L   	@(#020,PC),R0	;
00917E 6000     	MOV.B   	@R0,R0		;
009180 C808     	TST     	#08,R0		;
009182 8901     	BT      	#002			;
009184 000B     	RTS     				;
009186 E009     	MOV     	#09,R0		;
009188 D0B5     	MOV.L   	@(#2D4,PC),R0	;
00918A 6000     	MOV.B   	@R0,R0		;
00918C 8800     	CMP/EQ  	#00,R0		;
00918E 8902     	BT      	#004			;
009190 D0B5     	MOV.L   	@(#2D4,PC),R0	;
009192 A001     	BRA     	#0002			;
009194 0009     	NOP     				;
009196 D0B3     	MOV.L   	@(#2CC,PC),R0	;
009198 000B     	RTS     				;
00919A 6000     	MOV.B   	@R0,R0		;
00919C 0F00
00919E 02A6
0091A0 0F00
0091A2 02A7

L0091A4:							;get_rr1_trns_status(u16* rr1)	//rr1-R12
0091A4 A001     	BRA     	L0091AA		;
0091A6 E240     	MOV     	#40,R2		;return get_rr1_status_ext(0x40,rr1);

L0091A8:							;get_rr1_status(u16* rr1)	//rr1-R12
0091A8 E200     	MOV     	#00,R2		;return get_rr1_status_ext(0x00,rr1);

L0091AA:							;get_rr1_status_ext(u8 stat,u16* rr1)	//stat-R2,rr1-R12
0091AA D00D     	MOV.L   	@(#034,PC),R0	;
0091AC 6000     	MOV.B   	@R0,R0		;
0091AE C828     	TST     	#28,R0		;
0091B0 8901     	BT      	L0091B6		;*(u8*)0x0F0002A6 & 0x28 == 00
0091B2 A00D     	BRA     	L0091D0		;
0091B4 E000     	MOV     	#00,R0		;u8 temp = 0x00;
L0091B6:
0091B6 D00B     	MOV.L   	@(#02C,PC),R0	;
0091B8 6000     	MOV.B   	@R0,R0		;
0091BA C808     	TST     	#08,R0		;
0091BC 8901     	BT      	L0091C2		;@0F0002A7.b & 0x08 == 00
0091BE A007     	BRA     	L0091D0		;
0091C0 E009     	MOV     	#09,R0		;temp = 0x09;
L0091C2:
0091C2 D1A7     	MOV.L   	@(#29C,PC),R1	;
0091C4 6010     	MOV.B   	@R1,R0		;
0091C6 D1A7     	MOV.L   	@(#29C,PC),R1	;
0091C8 8800     	CMP/EQ  	#00,R0		;
0091CA 8900     	BT      	L0091CE		;
0091CC D1A6     	MOV.L   	@(#298,PC),R1	;
L0091CE:
0091CE 6010     	MOV.B   	@R1,R0		;temp = cd_status_buf_sel == 0x00 ? cd_status_buf2[0] : cd_status_buf1[0];
L0091D0:
0091D0 202B     	OR      	R2,R0			;
0091D2 4028     	SHLL16  	R0			;
0091D4 4018     	SHLL8   	R0			;
0091D6 4C18     	SHLL8   	R12			;
0091D8 4C19     	SHLR8   	R12			;*rr1 = ((temp | stat)<<8) | (*rr1 & 0x00FF);
0091DA 000B     	RTS     				;
0091DC 2C0B     	OR      	R0,R12		;
0091DE 0009
0091E0 0F0002A6
0091E4 0F0002A7

L0091E8:							;make_cd_status_FF(u16*rr1,u16*rr2,u16*rr3,u16*rr4)	//rr1,rr2-R12,rr3,rr4-R13
0091E8 A00A     	BRA     	L009200		;
0091EA E2FF     	MOV     	#FF,R2		;return make_cd_status_ext(0xFF,rr1,rr2,rr3,rr4);

L0091EC:							;make_cd_status_80(u16*rr1,u16*rr2,u16*rr3,u16*rr4)	//rr1,rr2-R12,rr3,rr4-R13
0091EC A008     	BRA     	L009200		;
0091EE E280     	MOV     	#80,R2		;return make_cd_status_ext(0x80,rr1,rr2,rr3,rr4);

;cdb command 00 "Get Status"
L0091F0:							;cmd_get_status(u16 cr1,cr2,cr3,*rr4,u16 *rr1,*rr2,*rr3,*rr4)//rr1,rr2-R12,rr3,rr4-R13
0091F0 3BB8     	SUB     	R11,R11		;
0091F2 A004     	BRA     	L0091FE		;return make_cd_status_00(rr1,rr2,rr3,rr4);
0091F4 0009     	NOP     				;

L0091F6:
0091F6 D099     	MOV.L   	@(#264,PC),R0	;
0091F8 401E     	LDC     	R0,GBR		;
0091FA E04A     	MOV     	#4A,R0		;
0091FC CF08     	OR .B   	#08,@(R0,GBR)	;cd_flags|= 0x08;
L0091FE:							;make_cd_status_00(u16 *rr1,*rr2,*rr3,*rr4)	//rr1,rr2-R12,rr3,rr4-R13
0091FE E200     	MOV     	#00,R2		;return make_cd_status_ext(0x00,rr1,rr2,rr3,rr4);

L009200:							;void make_cd_status_ext(u8 stat,u16 *rr1,*rr2,*rr3,*rr4) //stat-R2,rr1,rr2-R12,rr3,rr4-R13
009200 D018     	MOV.L   	@(#060,PC),R0	;
009202 6000     	MOV.B   	@R0,R0		;
009204 C801     	TST     	#01,R0		;
009206 8B29     	BF      	L00925C		;*(u8*)0x0F0007B0 & 0x01 != 0
009208 D195     	MOV.L   	@(#254,PC),R1	;
00920A 6010     	MOV.B   	@R1,R0		;
00920C D195     	MOV.L   	@(#254,PC),R1	;
00920E 8800     	CMP/EQ  	#00,R0		;
009210 8900     	BT      	L009214		;u8* ptr = *(u8*)0x0F00027C == 00 ? cd_status_buf2 : 
009212 D195     	MOV.L   	@(#254,PC),R1	;                                   cd_status_buf;
L009214:
009214 6C16     	MOV.L   	@R1+,R12		;*rr1 = ((u16*)ptr)[0]; *rr2 = ((u16*)ptr)[1];
009216 6D12     	MOV.L   	@R1,R13		;*rr3 = ((u16*)ptr)[2]; *rr4 = ((u16*)ptr)[3];
009218 D090     	MOV.L   	@(#240,PC),R0	;
00921A 401E     	LDC     	R0,GBR		;
00921C E04B     	MOV     	#4B,R0		;
00921E CC40     	TST.B   	#40,@(R0,GBR)	;
009220 8B02     	BF      	L009228		;*(u8*)(0x0F00025C+0x4B) & 0x40 != 0
009222 C449     	MOV.B   	@(#049,GBR),R0	;
009224 880A     	CMP/EQ  	#0A,R0		;
009226 8B07     	BF      	L009238		;cd_state != 0x0A
L009228:
009228 C614     	MOV.L   	@(#050,GBR),R0	;
00922A 4D29     	SHLR16  	R13			;
00922C 4018     	SHLL8   	R0			;
00922E 4D19     	SHLR8   	R13			;
009230 4019     	SHLR8   	R0			;
009232 4D18     	SHLL8   	R13			;
009234 4D28     	SHLL16  	R13			;*rr3 = (*rr3 & 0xFF00) | ((FAD>>16) & 0x00FF);
009236 2D0B     	OR      	R0,R13		;*rr4 = FAD & 0xFFFF;
L009238:
009238 E04A     	MOV     	#4A,R0		;
00923A CC28     	TST.B   	#28,@(R0,GBR)	;
00923C 8902     	BT      	L009244		;cd_flags & 0x28 == 0x00
00923E 4C18     	SHLL8   	R12			;*rr1 &= 0x00FF;
009240 A008     	BRA     	L009254		;
009242 4C19     	SHLR8   	R12			;
L009244:
009244 E04B     	MOV     	#4B,R0		;
009246 CC08     	TST.B   	#08,@(R0,GBR)	;
009248 8904     	BT      	L009254		;@(0x0F00025C+0x4B).b & 0x08 == 0x00
00924A D007     	MOV.L   	@(#01C,PC),R0	;
00924C 2C09     	AND     	R0,R12		;*rr1 &= 0xF000; *rr2 &= 0x0000;
00924E D008     	MOV.L   	@(#020,PC),R0	;
009250 2C0B     	OR      	R0,R12		;*rr1 |= 0x09FF; *rr2 |= 0xFFFF;
009252 EDFF     	MOV     	#FF,R13		;*rr3 = 0xFFFF; *rr4 = 0xFFFF;
L009254:
009254 4211     	CMP/PZ  	R2			;
009256 8BA8     	BF      	L0091AA		;if (stat & 0x80 == 0x80) return get_rr1_status_ext(stat,rr1);
009258 000B     	RTS     				;
00925A 0009     	NOP     				;
L00925C:
00925C DC03     	MOV.L   	@(#00C,PC),R12	;
00925E AFF9     	BRA     	L009254		;*rr3 = 0xFFFF; *rr4 = 0xFFFF;
009260 EDFF     	MOV     	#FF,R13		;
009262 0009     	NOP     				;
009264 0F0007B0
009268 F0000000
00926C 00FF
00926E FFFF
009270 09FFFFFF

;cdb command 01 "Get Hardware Info"
L009274:							;cmd_get_hw_info(u16*rr1,u16*rr2,u16*rr3,u16*rr4) 
009274 DC04     	MOV.L   	@(#010,PC),R12	;
009276 6CC0     	MOV.B   	@R12,R12		;
009278 6CCC     	EXTU.B   	R12,R12		;
00927A 4C18     	SHLL8   	R12			;
00927C 9108     	MOV.W   	@(#010,PC),R1	;
00927E 2C1B     	OR      	R1,R12		;*rr1 = 0x0000; *rr2 = hw_flags<<8 | 0x0001;
009280 DD02     	MOV.L   	@(#008,PC),R13	;
009282 6DD2     	MOV.L   	@R13,R13		;*rr3 = *(u16*)0x0F0002FC; R11 = 0x00000000;
009284 AF90     	BRA     	L0091A8		;*rr4 = *(u16*)0x0F0002FE;
009286 EB00     	MOV     	#00,R11		;get_rr1_status(rr1);
009288 0F00027D
00928C 0F0002FC
009290 0001

L009292:							;cdb command 02 "Get TOC" (continue)
009292 D072     	MOV.L   	@(#1C8,PC),R0	;
009294 401E     	LDC     	R0,GBR		;
009296 C42E     	MOV.B   	@(#02E,GBR),R0	;
009298 8800     	CMP/EQ  	#00,R0		;
00929A EB00     	MOV     	#00,R11		;R11 = 0x00000000;
00929C 89A6     	BT      	L0091EC		;if (cd_status == 0) return make_cd_status_80(rr1,rr2,rr3,rr4);
00929E ECCC     	MOV     	#CC,R12		;
0092A0 6CCC     	EXTU.B   	R12,R12		;*rr1 = 0x00CC; *rr2 = 0x0000;
0092A2 ED00     	MOV     	#00,R13		;*rr3 = 0x0000; *rr4 = 0x0000;
0092A4 E00D     	MOV     	#0D,R0		;
0092A6 DB6A     	MOV.L   	@(#1A8,PC),R11	;R11 = 0x0681000D;
0092A8 AF7C     	BRA     	L0091A4		;return get_rr1_trns_status(rr1);
0092AA 2B0B     	OR      	R0,R11		;

L0092AC:							;cdb command 03 "Get Session Info"
0092AC D06B     	MOV.L   	@(#1AC,PC),R0	;
0092AE 401E     	LDC     	R0,GBR		;
0092B0 C42E     	MOV.B   	@(#02E,GBR),R0	;
0092B2 8800     	CMP/EQ  	#00,R0		;
0092B4 EB00     	MOV     	#00,R11		;R11 = 0x00000000;
0092B6 8999     	BT      	L0091EC		;if (cd_status == 0) return make_cd_status_80(rr1,rr2,rr3,rr4);
0092B8 4129     	SHLR16  	R1			;
0092BA 611C     	EXTU.B   	R1,R1			;
0092BC E0FF     	MOV     	#FF,R0		;
0092BE 6D03     	MOV     	R0,R13		;
0092C0 D06B     	MOV.L   	@(#1AC,PC),R0	;
0092C2 401E     	LDC     	R0,GBR		;
0092C4 C400     	MOV.B   	@(#000,GBR),R0	;
0092C6 88FF     	CMP/EQ  	#FF,R0		;
0092C8 891D     	BT      	L009306		;
0092CA 3106     	CMP/HI 	R0,R1			;
0092CC 891B     	BT      	#036			;
0092CE 2118     	TST     	R1,R1			;
0092D0 8B02     	BF      	L009306		;
0092D2 C619     	MOV.L   	@(#064,GBR),R0	;
0092D4 A017     	BRA     	L009306		;
0092D6 6D03     	MOV     	R0,R13		;
0092D8 D065     	MOV.L   	@(#194,PC),R0	;
0092DA 011C     	MOV.B   	@(R0,R1),R1		;
0092DC 611C     	EXTU.B   	R1,R1			;
0092DE 6C13     	MOV     	R1,R12		;
0092E0 7CFF     	ADD     	#FF,R12		;
0092E2 4C08     	SHLL2   	R12			;
0092E4 D061     	MOV.L   	@(#184,PC),R0	;
0092E6 0DCE     	MOV.L   	@(R0,R12),R13	;
0092E8 60D3     	MOV     	R13,R0		;
0092EA 88FF     	CMP/EQ  	#FF,R0		;
0092EC 8B04     	BF      	L0092F8		;
0092EE D207     	MOV.L   	@(#01C,PC),R2	;
0092F0 6D22     	MOV.L   	@R2,R13		;
0092F2 4D18     	SHLL8   	R13			;
0092F4 A004     	BRA     	L009300		;
0092F6 4D19     	SHLR8   	R13			;
L0092F8:
0092F8 4D18     	SHLL8   	R13			;
0092FA 4D19     	SHLR8   	R13			;
0092FC 7DB5     	ADD     	#B5,R13		;
0092FE 7DB5     	ADD     	#B5,R13		;
L009300:
009300 4128     	SHLL16  	R1			;
009302 4118     	SHLL8   	R1			;
009304 2D1B     	OR      	R1,R13		;
L009306:
009306 EC00     	MOV     	#00,R12		;
009308 AF4E     	BRA     	L0091A8		;
00930A 6BC3     	MOV     	R12,R11		;
00930C 0900
00930E 0214

;cdb command 04 "Initialize CD System"
L009310:							;init_cd_system(*cr1,*cr2,*cr3,*cr4,*rr1,*rr2,*rr3,*rr4)//cr1:cr2-R1,cr3:cr4-R2,rr1:rr2-R12,rr3:rr4-R13
009310 D052     	MOV.L   	@(#148,PC),R0	;
009312 401E     	LDC     	R0,GBR		;
009314 6023     	MOV     	R2,R0			;
009316 4019     	SHLR8   	R0			;
009318 600E     	EXTS.B   	R0,R0			;
00931A 88FF     	CMP/EQ  	#FF,R0		;
00931C 8900     	BT      	L009320		;*cr4[15:8] == 0xFF
00931E C006     	MOV.B   	R0,@(#006,GBR)	;init_cd_ecc = *cr4[15:8];
L009320:
009320 602E     	EXTS.B   	R2,R0			;
009322 88FF     	CMP/EQ  	#FF,R0		;
009324 8900     	BT      	L009328		;*cr4[7:0] == 0xFF
009326 C007     	MOV.B   	R0,@(#007,GBR)	;init_cd_retry = *cr4[7:0];
L009328:
009328 601F     	EXTS.W   	R1,R0			;
00932A 88FF     	CMP/EQ  	#FF,R0		;
00932C 8900     	BT      	L009330		;*cr2 == 0xFFFF
00932E C102     	MOV.W   	R0,@(#004,GBR)	;init_cd_stby = *cr2;
L009330:
009330 4129     	SHLR16  	R1			;
009332 601E     	EXTS.B   	R1,R0			;
009334 C880     	TST     	#80,R0		;
009336 8B05     	BF      	L009344		;*cr1[7:0] & 0x80 != 0
009338 C000     	MOV.B   	R0,@(#000,GBR)	;init_cd_flags = *cr1[7:0];
00933A 4005     	ROTR    	R0			;
00933C 8B02     	BF      	L009344		;*cr1[7:0] & 0x01 == 0
00933E DB44     	MOV.L   	@(#110,PC),R11	;R11 = 0x06810000;
L009340:
009340 AF59     	BRA     	L0091F6		;
009342 0009     	NOP     				;
L009344:
009344 DB42     	MOV.L   	@(#108,PC),R11	;R11 = 0x06810008;
009346 AFFB     	BRA     	L009340		;
009348 7B08     	ADD     	#08,R11		;

								;cdb command 05 "Open Tray"
L00934A:							;(*cr1,*cr2,*cr3,*cr4,*rr1,*rr2,*rr3,*rr4) //
00934A DB41     	MOV.L   	@(#104,PC),R11	;R11 = 0x06810002;
00934C AF53     	BRA     	L0091F6		;
00934E 7B02     	ADD     	#02,R11		;

L009350:							;cdb command 10 "Play Disc"
009350 D042     	MOV.L   	@(#108,PC),R0	;
009352 401E     	LDC     	R0,GBR		;
009354 6023     	MOV     	R2,R0			;
009356 4029     	SHLR16  	R0			;
009358 4019     	SHLR8   	R0			;
00935A C001     	MOV.B   	R0,@(#001,GBR)	;
00935C D03D     	MOV.L   	@(#0F4,PC),R0	;
00935E 2109     	AND     	R0,R1			;
009360 2209     	AND     	R0,R2			;
009362 3210     	CMP/EQ 	R1,R2			;
009364 8B04     	BF      	#008			;
009366 3100     	CMP/EQ 	R0,R1			;
009368 8B02     	BF      	#004			;
00936A DB39     	MOV.L   	@(#0E4,PC),R11	;
00936C AF43     	BRA     	#1E86			;
00936E 7B05     	ADD     	#05,R11		;
009370 6303     	MOV     	R0,R3			;
009372 3310     	CMP/EQ 	R1,R3			;
009374 8B0B     	BF      	#016			;
009376 C43C     	MOV.B   	@(#03C,GBR),R0	;
009378 2008     	TST     	R0,R0			;
00937A C60F     	MOV.L   	@(#03C,GBR),R0	;
00937C 4018     	SHLL8   	R0			;
00937E 8B04     	BF      	#008			;
009380 2008     	TST     	R0,R0			;
009382 8902     	BT      	#004			;
009384 4000     	SHLL    	R0			;
009386 0018     	SETT    				;
009388 4025     	ROTCR   	R0			;
00938A 4019     	SHLR8   	R0			;
00938C 6103     	MOV     	R0,R1			;
00938E 3320     	CMP/EQ 	R2,R3			;
009390 8B09     	BF      	#012			;
009392 C43C     	MOV.B   	@(#03C,GBR),R0	;
009394 2008     	TST     	R0,R0			;
009396 C610     	MOV.L   	@(#040,GBR),R0	;
009398 4018     	SHLL8   	R0			;
00939A 8B02     	BF      	#004			;
00939C 2008     	TST     	R0,R0			;
00939E 8900     	BT      	#000			;
0093A0 E0FF     	MOV     	#FF,R0		;
0093A2 4019     	SHLR8   	R0			;
0093A4 6203     	MOV     	R0,R2			;
0093A6 2118     	TST     	R1,R1			;
0093A8 8B05     	BF      	#00A			;
0093AA 2228     	TST     	R2,R2			;
0093AC 8B0C     	BF      	#018			;
0093AE DB28     	MOV.L   	@(#0A0,PC),R11	;
0093B0 7B04     	ADD     	#04,R11		;
0093B2 6023     	MOV     	R2,R0			;
0093B4 8915     	BT      	#02A			;
0093B6 2228     	TST     	R2,R2			;
0093B8 8906     	BT      	#00C			;
0093BA 6013     	MOV     	R1,R0			;
0093BC 202A     	XOR     	R2,R0			;
0093BE 4018     	SHLL8   	R0			;
0093C0 4004     	ROTL    	R0			;
0093C2 8B01     	BF      	#002			;
0093C4 AF10     	BRA     	#1E20			;
0093C6 EB00     	MOV     	#00,R11		;
0093C8 DB21     	MOV.L   	@(#084,PC),R11	;
0093CA D023     	MOV.L   	@(#08C,PC),R0	;
0093CC 7B03     	ADD     	#03,R11		;
0093CE 2018     	TST     	R1,R0			;
0093D0 8B05     	BF      	#00A			;
0093D2 2028     	TST     	R2,R0			;
0093D4 8B03     	BF      	#006			;
0093D6 D005     	MOV.L   	@(#014,PC),R0	;
0093D8 2109     	AND     	R0,R1			;
0093DA A001     	BRA     	#0002			;
0093DC 2209     	AND     	R0,R2			;
0093DE 7B01     	ADD     	#01,R11		;
0093E0 6023     	MOV     	R2,R0			;
0093E2 C203     	MOV.L   	R0,@(#00C,GBR)	;
0093E4 6013     	MOV     	R1,R0			;
0093E6 AF06     	BRA     	#1E0C			;
0093E8 C202     	MOV.L   	R0,@(#008,GBR)	;
0093EA 0009     	NOP     				;
0093EC FF00     	
0093EE FFFF     	

L0093F0:							;cdb command 11 "Seek Disc"
0093F0 D01A     	MOV.L   	@(#068,PC),R0	;
0093F2 401E     	LDC     	R0,GBR		;
0093F4 DB16     	MOV.L   	@(#058,PC),R11	;
0093F6 D017     	MOV.L   	@(#05C,PC),R0	;
0093F8 2109     	AND     	R0,R1			;
0093FA 3100     	CMP/EQ 	R0,R1			;
0093FC 7B08     	ADD     	#08,R11		;
0093FE 890A     	BT      	#014			;
009400 2118     	TST     	R1,R1			;
009402 7B01     	ADD     	#01,R11		;
009404 8907     	BT      	#00E			;
009406 D014     	MOV.L   	@(#050,PC),R0	;
009408 7BFD     	ADD     	#FD,R11		;
00940A 2018     	TST     	R1,R0			;
00940C 8900     	BT      	#000			;
00940E 7B01     	ADD     	#01,R11		;
009410 6007     	NOT     	R0,R0			;
009412 2019     	AND     	R1,R0			;
009414 C202     	MOV.L   	R0,@(#008,GBR)	;
009416 AEEE     	BRA     	#1DDC			;
009418 0009     	NOP     				;
L00941A:							;cdb command 12 "Scan Disc"
00941A 4129     	SHLR16  	R1			;
00941C 611C     	EXTU.B   	R1,R1			;
00941E DB0C     	MOV.L   	@(#030,PC),R11	;
009420 E001     	MOV     	#01,R0		;
009422 3106     	CMP/HI 	R0,R1			;
009424 8B01     	BF      	#002			;
009426 AEDF     	BRA     	#1DBE			;
009428 EB00     	MOV     	#00,R11		;
00942A 710A     	ADD     	#0A,R1		;
00942C AEE3     	BRA     	#1DC6			;
00942E 3B1C     	ADD     	R1,R11		;
009430 6013     	MOV     	R1,R0			;
009432 4029     	SHLR16  	R0			;
009434 600C     	EXTU.B   	R0,R0			;
009436 8800     	CMP/EQ  	#00,R0		;
009438 8906     	BT      	#00C			;
L00934A:							;cdb command 05 "Open Tray"
00943A 8801     	CMP/EQ  	#01,R0		;
00943C 8B02     	BF      	#004			;
00943E D00D     	MOV.L   	@(#034,PC),R0	;
009440 402B     	JMP     	@R0			;
009442 0009     	NOP     				;
009444 AED0     	BRA     	#1DA0			;
009446 EB00     	MOV     	#00,R11		;
009448 EC05     	MOV     	#05,R12		;
00944A ED00     	MOV     	#00,R13		;
00944C AF2B     	BRA     	#1E56			;
00944E E00C     	MOV     	#0C,R0		;
009450 06810000
009454 00FF
009456 FFFF
009458 0080
00945A 0000
00945C 0F00025C
009460 0F00027C
009464 0F00026C
009468 0F000274
00946C 0900
00946E 0068
009470 0900
009472 0000
009474 0000
009476 6354

L009478:							;cdb command 70 "Change Directory"
009478 D08A     	MOV.L   	@(#228,PC),R0	;
00947A 2012     	MOV.L   	R1,@R0		;
00947C 1021     	MOV.L   	R2,@(#4,R0)		;
00947E 6323     	MOV     	R2,R3			;
009480 4229     	SHLR16  	R2			;
009482 4219     	SHLR8   	R2			;
009484 E018     	MOV     	#18,R0		;
009486 600C     	EXTU.B   	R0,R0			;
009488 3202     	CMP/HS 	R0,R2			;
00948A 8B01     	BF      	#002			;
00948C A133     	BRA     	#0266			;
00948E 0009     	NOP     				;
009490 D192     	MOV.L   	@(#248,PC),R1	;
009492 6010     	MOV.B   	@R1,R0		;
009494 600C     	EXTU.B   	R0,R0			;
009496 6403     	MOV     	R0,R4			;
009498 8804     	CMP/EQ  	#04,R0		;
00949A 8B01     	BF      	#002			;
00949C A12F     	BRA     	#025E			;
00949E 0009     	NOP     				;
0094A0 4318     	SHLL8   	R3			;
0094A2 4319     	SHLR8   	R3			;
0094A4 D01D     	MOV.L   	@(#074,PC),R0	;
0094A6 3030     	CMP/EQ 	R3,R0			;
0094A8 8B0A     	BF      	#014			;
0094AA D37E     	MOV.L   	@(#1F8,PC),R3	;
0094AC 8434     	MOV.B   	@(#04,R3),R0	;
0094AE 600C     	EXTU.B   	R0,R0			;
0094B0 D181     	MOV.L   	@(#204,PC),R1	;
0094B2 2100     	MOV.B   	R0,@R1		;
0094B4 D181     	MOV.L   	@(#204,PC),R1	;
0094B6 E001     	MOV     	#01,R0		;
0094B8 2100     	MOV.B   	R0,@R1		;
0094BA E000     	MOV     	#00,R0		;
0094BC A116     	BRA     	#022C			;
0094BE 0009     	NOP     				;
0094C0 6043     	MOV     	R4,R0			;
0094C2 8802     	CMP/EQ  	#02,R0		;
0094C4 8901     	BT      	#002			;
0094C6 A10D     	BRA     	#021A			;
0094C8 0009     	NOP     				;
0094CA 4F22     	STS.L   	PR,@-R15		;
0094CC D076     	MOV.L   	@(#1D8,PC),R0	;
0094CE 400B     	JSR     	@R0			;
0094D0 0009     	NOP     				;
0094D2 4F26     	LDS.L   	@R15+,PR		;
0094D4 6013     	MOV     	R1,R0			;
0094D6 8800     	CMP/EQ  	#00,R0		;
0094D8 8901     	BT      	#002			;
0094DA A10C     	BRA     	#0218			;
0094DC 0009     	NOP     				;
0094DE E10C     	MOV     	#0C,R1		;
0094E0 212E     	MULU.W  	R2,R1			;
0094E2 011A     	STS     	MACL, R1		;
0094E4 D072     	MOV.L   	@(#1C8,PC),R0	;
0094E6 310C     	ADD     	R0,R1			;
0094E8 841B     	MOV.B   	@(#0B,R1),R0	;
0094EA 600C     	EXTU.B   	R0,R0			;
0094EC 6103     	MOV     	R0,R1			;
0094EE C8F8     	TST     	#F8,R0		;
0094F0 8B03     	BF      	#006			;
0094F2 C802     	TST     	#02,R0		;
0094F4 8B05     	BF      	#00A			;
0094F6 A0FE     	BRA     	#01FC			;
0094F8 0009     	NOP     				;
0094FA C880     	TST     	#80,R0		;
0094FC 8B01     	BF      	#002			;
0094FE A0FA     	BRA     	#01F4			;
009500 0009     	NOP     				;
009502 D06A     	MOV.L   	@(#1A8,PC),R0	;
009504 2020     	MOV.B   	R2,@R0		;
009506 D367     	MOV.L   	@(#19C,PC),R3	;
009508 8434     	MOV.B   	@(#04,R3),R0	;
00950A 600C     	EXTU.B   	R0,R0			;
00950C D16A     	MOV.L   	@(#1A8,PC),R1	;
00950E 2100     	MOV.B   	R0,@R1		;
009510 D16A     	MOV.L   	@(#1A8,PC),R1	;
009512 E001     	MOV     	#01,R0		;
009514 2100     	MOV.B   	R0,@R1		;
009516 E001     	MOV     	#01,R0		;
009518 A0E8     	BRA     	#01D0			;
00951A 0009     	NOP     				;
00951C 00FF
00951E FFFF
009520 0F00
009522 076F

L009524:							;cdb command 71 "Read Directory"
009524 D05F     	MOV.L   	@(#17C,PC),R0	;
009526 2012     	MOV.L   	R1,@R0		;
009528 1021     	MOV.L   	R2,@(#4,R0)		;
00952A 4229     	SHLR16  	R2			;
00952C 4219     	SHLR8   	R2			;
00952E E018     	MOV     	#18,R0		;
009530 600C     	EXTU.B   	R0,R0			;
009532 3202     	CMP/HS 	R0,R2			;
009534 8B01     	BF      	#002			;
009536 A0DE     	BRA     	#01BC			;
009538 0009     	NOP     				;
00953A D168     	MOV.L   	@(#1A0,PC),R1	;
00953C 6010     	MOV.B   	@R1,R0		;
00953E 600C     	EXTU.B   	R0,R0			;
009540 8804     	CMP/EQ  	#04,R0		;
009542 8B01     	BF      	#002			;
009544 A0DB     	BRA     	#01B6			;
009546 0009     	NOP     				;
009548 8802     	CMP/EQ  	#02,R0		;
00954A 8901     	BT      	#002			;
00954C A0CA     	BRA     	#0194			;
00954E 0009     	NOP     				;
009550 D354     	MOV.L   	@(#150,PC),R3	;
009552 8434     	MOV.B   	@(#04,R3),R0	;
009554 600C     	EXTU.B   	R0,R0		;
009556 D158     	MOV.L   	@(#160,PC),R1	;
009558 2100     	MOV.B   	R0,@R1		;
00955A D158     	MOV.L   	@(#160,PC),R1	;
00955C E001     	MOV     	#01,R0		;
00955E 2100     	MOV.B   	R0,@R1		;
009560 E002     	MOV     	#02,R0		;
009562 A0C3     	BRA     	#0186			;
009564 0009     	NOP     				;
L009566:							;cdb command 72 "Get File System Scope"
009566 D04F     	MOV.L   	@(#13C,PC),R0	;
009568 2012     	MOV.L   	R1,@R0		;
00956A 1021     	MOV.L   	R2,@(#4,R0)		;
00956C D15B     	MOV.L   	@(#16C,PC),R1	;
00956E 6010     	MOV.B   	@R1,R0		;
009570 600C     	EXTU.B   	R0,R0			;
009572 8804     	CMP/EQ  	#04,R0		;
009574 8B01     	BF      	#002			;
009576 A0C2     	BRA     	#0184			;
009578 0009     	NOP     				;
00957A 8802     	CMP/EQ  	#02,R0		;
00957C 8901     	BT      	#002			;
00957E A0B1     	BRA     	#0162			;
009580 0009     	NOP     				;
009582 222A     	XOR     	R2,R2			;
009584 D10A     	MOV.L   	@(#028,PC),R1	;
009586 6012     	MOV.L   	@R1,R0		;
009588 8800     	CMP/EQ  	#00,R0		;
00958A 8B07     	BF      	#00E			;
00958C D109     	MOV.L   	@(#024,PC),R1	;
00958E 6011     	MOV.W   	@R1,R0		;
009590 600D     	EXTU.W   	R0,R0			;
009592 8800     	CMP/EQ  	#00,R0		;
009594 8B02     	BF      	#004			;
009596 E201     	MOV     	#01,R2		;
009598 4228     	SHLL16  	R2			;
00959A 4218     	SHLL8   	R2			;
00959C D165     	MOV.L   	@(#194,PC),R1	;
00959E 6D12     	MOV.L   	@R1,R13		;
0095A0 4D19     	SHLR8   	R13			;
0095A2 2D2B     	OR      	R2,R13		;
0095A4 8413     	MOV.B   	@(#03,R1),R0	;
0095A6 6C0C     	EXTU.B   	R0,R12		;
0095A8 D05F     	MOV.L   	@(#17C,PC),R0	;
0095AA 2BBA     	XOR     	R11,R11		;
0095AC A0B2     	BRA     	#0164			;
0095AE 0009     	NOP     				;
0095B0 0F00
0095B2 075C
0095B4 0F00
0095B6 0764
0095B8 D03A     	MOV.L   	@(#0E8,PC),R0	;
0095BA 2012     	MOV.L   	R1,@R0		;
0095BC 1021     	MOV.L   	R2,@(#4,R0)		;
0095BE 4218     	SHLL8   	R2			;
0095C0 4219     	SHLR8   	R2			;
0095C2 D146     	MOV.L   	@(#118,PC),R1	;
0095C4 6010     	MOV.B   	@R1,R0		;
0095C6 600C     	EXTU.B   	R0,R0			;
0095C8 8804     	CMP/EQ  	#04,R0		;
0095CA 8B01     	BF      	#002			;
0095CC A097     	BRA     	#012E			;
0095CE 0009     	NOP     				;
0095D0 8802     	CMP/EQ  	#02,R0		;
0095D2 8901     	BT      	#002			;
0095D4 A086     	BRA     	#010C			;
0095D6 0009     	NOP     				;
0095D8 D00E     	MOV.L   	@(#038,PC),R0	;
0095DA 3020     	CMP/EQ 	R2,R0			;
0095DC 890F     	BT      	#01E			;
0095DE 4F22     	STS.L   	PR,@-R15		;
0095E0 D031     	MOV.L   	@(#0C4,PC),R0	;
0095E2 400B     	JSR     	@R0			;
0095E4 0009     	NOP     				;
0095E6 4F26     	LDS.L   	@R15+,PR		;
0095E8 6013     	MOV     	R1,R0			;
0095EA 8800     	CMP/EQ  	#00,R0		;
0095EC 8901     	BT      	#002			;
0095EE A082     	BRA     	#0104			;
0095F0 0009     	NOP     				;
0095F2 D02E     	MOV.L   	@(#0B8,PC),R0	;
0095F4 2020     	MOV.B   	R2,@R0		;
0095F6 E201     	MOV     	#01,R2		;
0095F8 E004     	MOV     	#04,R0		;
0095FA A084     	BRA     	#0108			;
0095FC 0009     	NOP     				;
0095FE D14D     	MOV.L   	@(#134,PC),R1	;
009600 8413     	MOV.B   	@(#03,R1),R0	;
009602 600C     	EXTU.B   	R0,R0			;
009604 8800     	CMP/EQ  	#00,R0		;
009606 8B01     	BF      	#002			;
009608 A075     	BRA     	#00EA			;
00960A 0009     	NOP     				;
00960C 6203     	MOV     	R0,R2			;
00960E E005     	MOV     	#05,R0		;
009610 A079     	BRA     	#00F2			;
009612 0009     	NOP     				;
009614 00FF
009616 FFFF

L009618:							;cdb command 74 "Read File"
009618 D022     	MOV.L   	@(#088,PC),R0	;
00961A 2012     	MOV.L   	R1,@R0		;
00961C 1021     	MOV.L   	R2,@(#4,R0)		;
00961E 4229     	SHLR16  	R2			;
009620 4219     	SHLR8   	R2			;
009622 E018     	MOV     	#18,R0		;
009624 600C     	EXTU.B   	R0,R0			;
009626 3202     	CMP/HS 	R0,R2			;
009628 8965     	BT      	#0CA			;
00962A D12C     	MOV.L   	@(#0B0,PC),R1	;
00962C 6010     	MOV.B   	@R1,R0		;
00962E 600C     	EXTU.B   	R0,R0			;
009630 8804     	CMP/EQ  	#04,R0		;
009632 8B01     	BF      	#002			;
009634 A063     	BRA     	#00C6			;
009636 0009     	NOP     				;
009638 8802     	CMP/EQ  	#02,R0		;
00963A 8901     	BT      	#002			;
00963C A052     	BRA     	#00A4			;
00963E 0009     	NOP     				;
009640 4F22     	STS.L   	PR,@-R15		;
009642 D019     	MOV.L   	@(#064,PC),R0	;
009644 400B     	JSR     	@R0			;
009646 0009     	NOP     				;
009648 4F26     	LDS.L   	@R15+,PR		;
00964A D018     	MOV.L   	@(#060,PC),R0	;
00964C 2020     	MOV.B   	R2,@R0		;
00964E 6013     	MOV     	R1,R0			;
009650 8800     	CMP/EQ  	#00,R0		;
009652 8B50     	BF      	#0A0			;
009654 6323     	MOV     	R2,R3			;
009656 E10C     	MOV     	#0C,R1		;
009658 213E     	MULU.W  	R3,R1			;
00965A 011A     	STS     	MACL, R1		;
00965C D014     	MOV.L   	@(#050,PC),R0	;
00965E 310C     	ADD     	R0,R1			;
009660 5011     	MOV.L   	@(#04,R1),R0	;
009662 6203     	MOV     	R0,R2			;
009664 4019     	SHLR8   	R0			;
009666 4009     	SHLR2   	R0			;
009668 4001     	SHLR    	R0			;
00966A 6303     	MOV     	R0,R3			;
00966C 9028     	MOV.W   	@(#050,PC),R0	;
00966E 600D     	EXTU.W   	R0,R0			;
009670 2029     	AND     	R2,R0			;
009672 8800     	CMP/EQ  	#00,R0		;
009674 8900     	BT      	#000			;
009676 7301     	ADD     	#01,R3		;
009678 D00E     	MOV.L   	@(#038,PC),R0	;
00967A 2032     	MOV.L   	R3,@R0		;
00967C D209     	MOV.L   	@(#024,PC),R2	;
00967E 6422     	MOV.L   	@R2,R4		;
009680 4418     	SHLL8   	R4			;
009682 4419     	SHLR8   	R4			;
009684 3346     	CMP/HI 	R4,R3			;
009686 8901     	BT      	#002			;
009688 A035     	BRA     	#006A			;
00968A 0009     	NOP     				;
00968C D305     	MOV.L   	@(#014,PC),R3	;
00968E 8434     	MOV.B   	@(#04,R3),R0	;
009690 600C     	EXTU.B   	R0,R0			;
009692 D109     	MOV.L   	@(#024,PC),R1	;
009694 2100     	MOV.B   	R0,@R1		;
009696 D109     	MOV.L   	@(#024,PC),R1	;
009698 E001     	MOV     	#01,R0		;
00969A 2100     	MOV.B   	R0,@R1		;
00969C E006     	MOV     	#06,R0		;
00969E A025     	BRA     	#004A			;
0096A0 0009     	NOP     				;
0096A2 0009     	NOP     				;
0096A4 0F00
0096A6 0744
0096A8 0000
0096AA 7E36
0096AC 0F00
0096AE 076E
0096B0 0907
0096B2 4210
0096B4 0F00
0096B6 074C
0096B8 0F00
0096BA 0772
0096BC 0907
0096BE ADCB
0096C0 07FF

;cdb command 75 "Abort File"
L0096C2:							;cmd_abort_file()
0096C2 D106     	MOV.L   	@(#018,PC),R1	;
0096C4 6010     	MOV.B   	@R1,R0		;
0096C6 600C     	EXTU.B   	R0,R0			;
0096C8 8804     	CMP/EQ  	#04,R0		;
0096CA 8B03     	BF      	L0096D4		;*(u8*)0x0F00076B != 0x04
0096CC 2BBA     	XOR     	R11,R11		;temp = 0x00000000;
0096CE D015     	MOV.L   	@(#054,PC),R0	;return make_cd_status_00(rr1,rr2,rr3,rr4);
0096D0 A020     	BRA     	L009714		;
0096D2 0009     	NOP     				;
L0096D4:
0096D4 E007     	MOV     	#07,R0		;temp2 = 0x00000007;
0096D6 A009     	BRA     	L0096EC		;
0096D8 0009     	NOP     				;
0096DA 0009     	NOP     				;
0096DC 0F00076B
0096E0 0F00
0096E2 076C
0096E4 8801     	CMP/EQ  	#01,R0		;
0096E6 8B06     	BF      	#00C			;
0096E8 A009     	BRA     	#0012			;
0096EA 0009     	NOP     				;
L0096EC:
0096EC DB12     	MOV.L   	@(#048,PC),R11	;temp = 0x07810000;
0096EE 2B0B     	OR      	R0,R11		;temp|= temp2;
0096F0 D00C     	MOV.L   	@(#030,PC),R0	;
0096F2 A00F     	BRA     	L009714		;return make_cd_status_00(rr1,rr2,rr3,rr4);
0096F4 0009     	NOP     				;

0096F6 D00A     	MOV.L   	@(#028,PC),R0	;
0096F8 2BBA     	XOR     	R11,R11		;temp = 0x00000000;
0096FA A00B     	BRA     	L009714		;return make_cd_status_FF(rr1,rr2,rr3,rr4);
0096FC 0009     	NOP     				;

0096FE D00B     	MOV.L   	@(#02C,PC),R0	;
009700 2BBA     	XOR     	R11,R11		;temp = 0x00000000;
009702 A007     	BRA     	L009714		;return make_cd_status_80(rr1,rr2,rr3,rr4);
009704 0009     	NOP     				;

009706 E106     	MOV     	#06,R1		;
009708 212E     	MULU.W  	R2,R1			;
00970A 0C1A     	STS     	MACL, R12		;
00970C 2DDA     	XOR     	R13,R13		;
00970E DB0A     	MOV.L   	@(#028,PC),R11	;temp = 0x07810000;
009710 2B0B     	OR      	R0,R11		;temp|=temp2
009712 D007     	MOV.L   	@(#01C,PC),R0	;void* func = L0091A4;
L009714:
009714 4F22     	STS.L   	PR,@-R15		;
009716 400B     	JSR     	@R0			;func();
009718 0009     	NOP     				;
00971A 4F26     	LDS.L   	@R15+,PR		;
00971C 000B     	RTS     				;
00971E 0009     	NOP     				;
009720 000091E8
009724 000091FE
009728 0000
00972A 91A8
00972C 000091EC
009730 000091A4
009734 0F00
009736 0758
009738 07810000

comreq_int:							;COMREQ handler (ITU3 IMIB3 vector)
00973C 2F06     	MOV.L   	R0,@-R15		;
00973E 2F16     	MOV.L   	R1,@-R15		;
009740 2F26     	MOV.L   	R2,@-R15		;
009742 2F36     	MOV.L   	R3,@-R15		;
009744 4F13     	STC.L   	GBR,@-R15		;
009746 D16B     	MOV.L   	@(#1AC,PC),R1	;
009748 411E     	LDC     	R1,GBR		;
00974A E025     	MOV     	#25,R0		;
00974C CDFD     	AND.B   	#FD,@(R0,GBR)	;SH1.ITU.TSR3 &= 0xFD;	//clear IMFB
00974E D367     	MOV.L   	@(#19C,PC),R3	;
009750 E000     	MOV     	#00,R0		;
009752 803E     	MOV.B   	R0,@(#0E,R3)	;cdd_ret = 0x00;
009754 843D     	MOV.B   	@(#0D,R3),R0	;u8 n = cdd_nb;
009756 6103     	MOV     	R0,R1			;
009758 C97F     	AND     	#7F,R0		;
00975A 8800     	CMP/EQ  	#00,R0		;
00975C 8937     	BT      	L0097CE		;if (n & 0x7f == 0x00) goto L0097CE;
00975E D266     	MOV.L   	@(#198,PC),R2	;
009760 421E     	LDC     	R2,GBR		;
009762 C443     	MOV.B   	@(#043,GBR),R0	;
009764 C804     	TST     	#04,R0		;
009766 8930     	BT      	L0097CA		;if (PBDR[2] == 0) goto L0097CA; // /COMSYNC
L009768:
009768 7101     	ADD     	#01,R1		;n++;
00976A 6013     	MOV     	R1,R0			;
00976C 803D     	MOV.B   	R0,@(#0D,R3)	;cdd_nb = n;
00976E D260     	MOV.L   	@(#180,PC),R2	;
009770 421E     	LDC     	R2,GBR		;
009772 880D     	CMP/EQ  	#0D,R0		;
009774 891A     	BT      	L0097AC		;if (n == 13) goto L0097AC;
009776 6233     	MOV     	R3,R2			;
009778 72FF     	ADD     	#FF,R2		;
00977A 002C     	MOV.B   	@(R0,R2),R0		;
00977C C003     	MOV.B   	R0,@(#003,GBR)	;SH1.SCI.TDR0 = cdd_tx_data[n-1];
00977E 6013     	MOV     	R1,R0			;
009780 8801     	CMP/EQ  	#01,R0		;
009782 8907     	BT      	L009794		;if (n != 1) {
009784 C405     	MOV.B   	@(#005,GBR),R0	;  u8 rec_data = SH1.SCI.RDR0;
009786 D257     	MOV.L   	@(#15C,PC),R2	;
009788 321C     	ADD     	R1,R2			;
00978A 2200     	MOV.B   	R0,@R2		;  cdd_rx_data[n-2] = rec_data;
00978C 6203     	MOV     	R0,R2			;
00978E 843C     	MOV.B   	@(#0C,R3),R0	;
009790 302C     	ADD     	R2,R0			;
009792 803C     	MOV.B   	R0,@(#0C,R3)	;  cdd_csum += rec_data; //calc checksum
L009794:							;}
009794 E004     	MOV     	#04,R0		;
009796 CD00     	AND.B   	#00,@(R0,GBR)	;SH1.SCI.SSR0 &= 0x00;
009798 843E     	MOV.B   	@(#0E,R3),R0	;
00979A 8800     	CMP/EQ  	#00,R0		;
00979C 8B6B     	BF      	L009876		;if (cdd_ret != 0x00) goto L009876;
00979E 4F17     	LDC.L   	@R15+,GBR		;
0097A0 63F6     	MOV.L   	@R15+,R3		;
0097A2 62F6     	MOV.L   	@R15+,R2		;
0097A4 61F6     	MOV.L   	@R15+,R1		;
0097A6 60F6     	MOV.L   	@R15+,R0		;
0097A8 002B     	RTE     				;
0097AA 0009     	NOP     				;
L0097AC:
0097AC C405     	MOV.B   	@(#005,GBR),R0	;
0097AE 6207     	NOT     	R0,R2			;
0097B0 843C     	MOV.B   	@(#0C,R3),R0	;
0097B2 3020     	CMP/EQ 	R2,R0			;
0097B4 8B07     	BF      	L0097C6		;if (cdd_csum == ~RDR0) {
0097B6 E001     	MOV     	#01,R0		;
0097B8 D249     	MOV.L   	@(#124,PC),R2	;
0097BA 802B     	MOV.B   	R0,@(#0B,R2)	;  cdd_rx_data.done = 0x01;
0097BC E000     	MOV     	#00,R0		;
L0097BE:
0097BE C003     	MOV.B   	R0,@(#003,GBR)	;  SH1.SCI.TDR0 = 0x00;
0097C0 E002     	MOV     	#02,R0		;  SH1.SCI.SCR0 |= 0x40;	//set RIE
0097C2 AFE7     	BRA     	L009794		;  goto L009794;
0097C4 CF40     	OR .B   	#40,@(R0,GBR)	;  
L0097C6:							;}
0097C6 AFFA     	BRA     	L0097BE		;SH1.SCI.TDR0 = 0x01;
0097C8 E001     	MOV     	#01,R0		;
L0097CA:
0097CA AFCD     	BRA     	L009768		;
0097CC E100     	MOV     	#00,R1		;n = 0;
L0097CE:
0097CE 4F17     	LDC.L   	@R15+,GBR		;
0097D0 2F46     	MOV.L   	R4,@-R15		;
0097D2 2F56     	MOV.L   	R5,@-R15		;
0097D4 2F66     	MOV.L   	R6,@-R15		;
0097D6 2F76     	MOV.L   	R7,@-R15		;
0097D8 2F86     	MOV.L   	R8,@-R15		;
0097DA 2F96     	MOV.L   	R9,@-R15		;
0097DC 2FA6     	MOV.L   	R10,@-R15		;
0097DE 2FB6     	MOV.L   	R11,@-R15		;
0097E0 2FC6     	MOV.L   	R12,@-R15		;
0097E2 2FD6     	MOV.L   	R13,@-R15		;
0097E4 4F22     	STS.L   	PR,@-R15		;
0097E6 4F13     	STC.L   	GBR,@-R15		;
0097E8 4F02     	STS.L   	MACH,@-R15		;
0097EA 4F12     	STS.L   	MACL,@-R15		;
0097EC DD39     	MOV.L   	@(#0E4,PC),R13	;
0097EE 6CD2     	MOV.L   	@R13,R12		;u32* entry = *(u32*)0x0F0001D4;
0097F0 1CF2     	MOV.L   	R15,@(#8,R12)	;entry.stack = SH1.SP;
0097F2 DF39     	MOV.L   	@(#0E4,PC),R15	;SH1.SP = &temp_stack3_end;
0097F4 E001     	MOV     	#01,R0		;
0097F6 803E     	MOV.B   	R0,@(#0E,R3)	;cdd_ret = 0x01;
0097F8 D23F     	MOV.L   	@(#0FC,PC),R2	;
0097FA 421E     	LDC     	R2,GBR		;
0097FC C443     	MOV.B   	@(#043,GBR),R0	;
0097FE C804     	TST     	#04,R0		;
009800 8B12     	BF      	L009828		;PBDR[2] == 1 // /COMSYNC
009802 843D     	MOV.B   	@(#0D,R3),R0	;
009804 6103     	MOV     	R0,R1			;
009806 4111     	CMP/PZ  	R1			;
009808 8B09     	BF      	L00981E		;cdd_nb == 0
00980A 6233     	MOV     	R3,R2			;
00980C 7200     	ADD     	#00,R2		;
00980E D436     	MOV.L   	@(#0D8,PC),R4	;
009810 844B     	MOV.B   	@(#0B,R4),R0	;
009812 8800     	CMP/EQ  	#00,R0		;
009814 8B0D     	BF      	L009832		;cdd_comm[11] != 0
009816 2202     	MOV.L   	R0,@R2		;(u32*)cdd_tx_data[0] = 0x00000000;
009818 1201     	MOV.L   	R0,@(#4,R2)		;(u32*)cdd_tx_data[4] = 0x00000000;
00981A D039     	MOV.L   	@(#0E4,PC),R0	;(u32*)cdd_tx_data[8] = 0x000000FF;
00981C 1202     	MOV.L   	R0,@(#8,R2)		;
L00981E:
00981E D230     	MOV.L   	@(#0C0,PC),R2	;
009820 E000     	MOV     	#00,R0		;
009822 802B     	MOV.B   	R0,@(#0B,R2)	;cdd_tx_data[11] = 0x00;
009824 AFD1     	BRA     	L0097CA		;cdd_csum = 0x00;
009826 803C     	MOV.B   	R0,@(#0C,R3)	;
L009828:
009828 D031     	MOV.L   	@(#0C4,PC),R0	;
00982A 401E     	LDC     	R0,GBR		;
00982C E080     	MOV     	#80,R0		;cdd_nb = 0x80;
00982E AFB1     	BRA     	L009794		;
009830 803D     	MOV.B   	R0,@(#0D,R3)	;
L009832:
009832 D32D     	MOV.L   	@(#0B4,PC),R3	;
009834 6036     	MOV.L   	@R3+,R0		;
009836 2202     	MOV.L   	R0,@R2		;*((u32*)cdd_tx_data[0]) = *((u32*)cdd_comm[0]);
009838 6103     	MOV     	R0,R1			;
00983A 4019     	SHLR8   	R0			;
00983C 310C     	ADD     	R0,R1			;
00983E 4019     	SHLR8   	R0			;
009840 310C     	ADD     	R0,R1			;
009842 4019     	SHLR8   	R0			;
009844 310C     	ADD     	R0,R1			;u8 crc = cdd_comm[0]+cdd_comm[1]+cdd_comm[2]+cdd_comm[3];
009846 6036     	MOV.L   	@R3+,R0		;
009848 1201     	MOV.L   	R0,@(#4,R2)		;*((u32*)cdd_tx_data[4]) = *((u32*)cdd_comm[4]);
00984A 310C     	ADD     	R0,R1			;
00984C 4019     	SHLR8   	R0			;
00984E 310C     	ADD     	R0,R1			;
009850 4019     	SHLR8   	R0			;
009852 310C     	ADD     	R0,R1			;
009854 4019     	SHLR8   	R0			;
009856 310C     	ADD     	R0,R1			;crc += cdd_comm[4]+cdd_comm[5]+cdd_comm[6]+cdd_comm[7];
009858 6032     	MOV.L   	@R3,R0		;
00985A 1202     	MOV.L   	R0,@(#8,R2)		;*((u32*)cdd_tx_data[8]) = *((u32*)cdd_comm[8]);
00985C 4019     	SHLR8   	R0			;
00985E 310C     	ADD     	R0,R1			;
009860 4019     	SHLR8   	R0			;
009862 310C     	ADD     	R0,R1			;
009864 4019     	SHLR8   	R0			;
009866 301C     	ADD     	R1,R0			;crc += cdd_comm[8]+cdd_comm[9]+cdd_comm[10];
009868 6007     	NOT     	R0,R0			;
00986A 802B     	MOV.B   	R0,@(#0B,R2)	;cdd_tx_data[11] = ~crc;
00986C E000     	MOV     	#00,R0		;
00986E 8033     	MOV.B   	R0,@(#03,R3)	;cdd_comm[11] = 0x00;
009870 D31E     	MOV.L   	@(#078,PC),R3	;
009872 AFD4     	BRA     	L00981E		;
009874 0009     	NOP     				;
L009876:
009876 D119     	MOV.L   	@(#064,PC),R1	;
009878 412B     	JMP     	@R1			;return L00102E();
00987A 0009     	NOP     				;

sci_rx_int:							;SCI0 RXI0 handler
00987C 2F06     	MOV.L   	R0,@-R15		;
00987E 2F16     	MOV.L   	R1,@-R15		;
009880 2F26     	MOV.L   	R2,@-R15		;
009882 2F36     	MOV.L   	R3,@-R15		;
009884 2F46     	MOV.L   	R4,@-R15		;
009886 2F56     	MOV.L   	R5,@-R15		;
009888 2F66     	MOV.L   	R6,@-R15		;
00988A 2F76     	MOV.L   	R7,@-R15		;
00988C 2F86     	MOV.L   	R8,@-R15		;
00988E 2F96     	MOV.L   	R9,@-R15		;
009890 2FA6     	MOV.L   	R10,@-R15		;
009892 2FB6     	MOV.L   	R11,@-R15		;
009894 2FC6     	MOV.L   	R12,@-R15		;
009896 2FD6     	MOV.L   	R13,@-R15		;
009898 4F22     	STS.L   	PR,@-R15		;
00989A 4F13     	STC.L   	GBR,@-R15		;
00989C 4F02     	STS.L   	MACH,@-R15		;
00989E 4F12     	STS.L   	MACL,@-R15		;
0098A0 DD0C     	MOV.L   	@(#030,PC),R13	;
0098A2 6CD2     	MOV.L   	@R13,R12		;u32* entry = *(u32*)0x0F0001D4;
0098A4 1CF2     	MOV.L   	R15,@(#8,R12)	;entry.stack = SH1.SP;
0098A6 DF0C     	MOV.L   	@(#030,PC),R15	;SH1.SP = &temp_stack3_end;
0098A8 D310     	MOV.L   	@(#040,PC),R3	;
0098AA E001     	MOV     	#01,R0		;
0098AC 803E     	MOV.B   	R0,@(#0E,R3)	;cdd_ret = 0x01;
0098AE D210     	MOV.L   	@(#040,PC),R2	;
0098B0 421E     	LDC     	R2,GBR		;
0098B2 C405     	MOV.B   	@(#005,GBR),R0	;rd = RDR0;
0098B4 8800     	CMP/EQ  	#00,R0		;
0098B6 8B0A     	BF      	L0098CE		;rd != 0x00
0098B8 803D     	MOV.B   	R0,@(#0D,R3)	;cdd_nb = rd;
L0098BA:
0098BA E002     	MOV     	#02,R0		;
0098BC CDBF     	AND.B   	#BF,@(R0,GBR)	;SH1.SCI.SCR0 &= 0xBF;	//clear RIE
0098BE EA00     	MOV     	#00,R10		;
0098C0 DB0E     	MOV.L   	@(#038,PC),R11	;
0098C2 6CA3     	MOV     	R10,R12		;R12 = 0x00000000;
0098C4 6DA3     	MOV     	R10,R13		;R13 = 0x00000000;
0098C6 C321     	TRAPA   	#33			;add_task_to_queue(0x06830000);
0098C8 D104     	MOV.L   	@(#010,PC),R1	;
0098CA 412B     	JMP     	@R1			;add_task13_to_queue(); //L00102E
0098CC 0009     	NOP     				;
L0098CE:
0098CE E080     	MOV     	#80,R0		;cdd_nb = 0x80;
0098D0 AFF3     	BRA     	L0098BA		;
0098D2 803D     	MOV.B   	R0,@(#0D,R3)	;
0098D4 0F0001D4
0098D8 0F0008F8
0098DC 0000102E
0098E0 0F0002D0
0098E4 0F0002CE
0098E8 0F0002C4
0098EC 0F000304
0098F0 05FFFEC0
0098F4 05FFFF00
0098F8 05FFFF80
0098FC 06830000
009900 000000FF

L009904:							;(R1-arg1,R2-arg2,R3-arg3)
009904 4F22     	STS.L   	PR,@-R15		;
009906 6B13     	MOV     	R1,R11		;
009908 6A23     	MOV     	R2,R10		;
00990A 6C33     	MOV     	R3,R12		;
00990C 4A09     	SHLR2   	R10			;
00990E 4A08     	SHLL2   	R10			;temp1 = arg1&0xFFFFFFFC;
009910 4B09     	SHLR2   	R11			;
009912 4B08     	SHLL2   	R11			;temp2 = arg2&0xFFFFFFFC;
009914 4C09     	SHLR2   	R12			;
009916 4C01     	SHLR    	R12			;temp3 = arg3>>3;
009918 E0FF     	MOV     	#FF,R0		;
00991A 2CC8     	TST     	R12,R12		;
00991C 8922     	BT      	L009964		;temp3 == 0
00991E 7CFF     	ADD     	#FF,R12		;temp3--;
009920 2CC8     	TST     	R12,R12		;
009922 891F     	BT      	L009964		;temp3 == 0
009924 DD11     	MOV.L   	@(#044,PC),R13	;
009926 E000     	MOV     	#00,R0		;
009928 1D04     	MOV.L   	R0,@(#10,R13)	;*(u32*)(0x0F00078C+0x10) = 0X00000000;
00992A 1D05     	MOV.L   	R0,@(#14,R13)	;*(u32*)(0x0F00078C+0x14) = 0X00000000;
L00992C:
00992C 54B0     	MOV.L   	@(#00,R11),R4	;R4 = *(u32*)(temp2+0x00);
00992E 55B1     	MOV.L   	@(#04,R11),R5	;R5 = *(u32*)(temp2+0x04);
009930 7B08     	ADD     	#08,R11		;temp2+=8;
009932 1DB0     	MOV.L   	R11,@(#0,R13)	;*(u32*)(0x0F00078C+0x00) = temp2;
009934 1DA1     	MOV.L   	R10,@(#4,R13)	;*(u32*)(0x0F00078C+0x04) = temp1;
009936 1DC2     	MOV.L   	R12,@(#8,R13)	;*(u32*)(0x0F00078C+0x08) = temp3;
009938 B122     	BRS     	L009B80		;L009B80();
00993A 0009     	NOP     				;
00993C 5BD0     	MOV.L   	@(#00,R13),R11	;temp2 = *(u32*)(0x0F00078C+0x00);
00993E 5AD1     	MOV.L   	@(#04,R13),R10	;temp1 = *(u32*)(0x0F00078C+0x04);
009940 5CD2     	MOV.L   	@(#08,R13),R12	;temp3 = *(u32*)(0x0F00078C+0x08);
009942 1A40     	MOV.L   	R4,@(#0,R10)	;*(u32*)(temp1+0x00) = R4;
009944 1A51     	MOV.L   	R5,@(#4,R10)	;*(u32*)(temp1+0x04) = R5;
009946 7A08     	ADD     	#08,R10		;temp1+=8;
009948 7CFF     	ADD     	#FF,R12		;temp3--;
00994A 4C15     	CMP/PL  	R12			;
00994C 89EE     	BT      	L00992C		;temp3 >= 0
00994E 58D4     	MOV.L   	@(#10,R13),R8	;R8 = *(u32*)(0x0F00078C+0x10);
009950 59D5     	MOV.L   	@(#14,R13),R9	;R9 = *(u32*)(0x0F00078C+0x14);
009952 54B0     	MOV.L   	@(#00,R11),R4	;R4 = *(u32*)(temp2+0x00);
009954 55B1     	MOV.L   	@(#04,R11),R5	;R5 = *(u32*)(temp2+0x04);
009956 284A     	XOR     	R4,R8			;
009958 295A     	XOR     	R5,R9			;
00995A 289B     	OR      	R9,R8			;
00995C E0FF     	MOV     	#FF,R0		;
00995E 2888     	TST     	R8,R8			;
009960 8B00     	BF      	L009964		;
009962 E000     	MOV     	#00,R0		;return (R4 == R8 && R5 == R9 ? 0 : -1);
L009964:
009964 4F26     	LDS.L   	@R15+,PR		;
009966 000B     	RTS     				;
009968 0009     	NOP     				;
00996A 0009     	NOP     				;
00996C 0F00078C

L009970:							;
009970 4F22     	STS.L   	PR,@-R15		;
009972 DC1A     	MOV.L   	@(#068,PC),R12	;000099EC
009974 52F1     	MOV.L   	@(#04,R15),R2	;
009976 D01A     	MOV.L   	@(#068,PC),R0	;000099E4
009978 32C8     	SUB     	R12,R2		;
00997A 5A00     	MOV.L   	@(#00,R0),R10	;
00997C 6629     	SWAP.W   	R2,R6			;
00997E 5B01     	MOV.L   	@(#04,R0),R11	;
009980 53D2     	MOV.L   	@(#08,R13),R3	;
009982 1D26     	MOV.L   	R2,@(#18,R13)	;
009984 3B3C     	ADD     	R3,R11		;
009986 363C     	ADD     	R3,R6			;
009988 61A3     	MOV     	R10,R1		;
00998A 6763     	MOV     	R6,R7			;
00998C 56C0     	MOV.L   	@(#00,R12),R6	;
00998E 6043     	MOV     	R4,R0			;
009990 71FF     	ADD     	#FF,R1		;
009992 6803     	MOV     	R0,R8			;
009994 4704     	ROTL    	R7			;
009996 4104     	ROTL    	R1			;
009998 6973     	MOV     	R7,R9			;
00999A 6203     	MOV     	R0,R2			;
00999C C717     	MOVA    	@(#5C,PC),R0	;
00999E 6303     	MOV     	R0,R3			;
0099A0 4104     	ROTL    	R1			;
0099A2 216A     	XOR     	R6,R1			;
0099A4 296A     	XOR     	R6,R9			;
0099A6 6118     	SWAP.B   	R1,R1			;
0099A8 6023     	MOV     	R2,R0			;
0099AA 4004     	ROTL    	R0			;
0099AC 5231     	MOV.L   	@(#04,R3),R2	;
0099AE 7310     	ADD     	#10,R3		;
0099B0 1D27     	MOV.L   	R2,@(#1C,R13)	;
0099B2 7102     	ADD     	#02,R1		;
0099B4 6119     	SWAP.W   	R1,R1			;
0099B6 308C     	ADD     	R8,R0			;
0099B8 58D6     	MOV.L   	@(#18,R13),R8	;
0099BA 6699     	SWAP.W   	R9,R6			;
0099BC 7001     	ADD     	#01,R0		;
0099BE 6732     	MOV.L   	@R3,R7		;
0099C0 59C1     	MOV.L   	@(#04,R12),R9	;
0099C2 250A     	XOR     	R0,R5			;
0099C4 317C     	ADD     	R7,R1			;
0099C6 389C     	ADD     	R9,R8			;
0099C8 6053     	MOV     	R5,R0			;
0099CA 6983     	MOV     	R8,R9			;
0099CC 6763     	MOV     	R6,R7			;
0099CE 2B1A     	XOR     	R1,R11		;
0099D0 61B3     	MOV     	R11,R1		;
0099D2 301C     	ADD     	R1,R0			;
0099D4 6103     	MOV     	R0,R1			;
0099D6 4F26     	LDS.L   	@R15+,PR		;
0099D8 000B     	RTS     				;
0099DA 0009     	NOP     				;
0099DC 000099EC
0099E0 000099E4
0099E4 4869
0099E6 7461
0099E8 6368
0099EA 692E
0099EC 5075
0099EE 626C
0099F0 6963
0099F2 4B65
0099F4 7943     	ADD     	#43,R9		;
0099F6 6970     	MOV.B   	@R7,R9		;
0099F8 6865     	MOV.W   	@R6+,R8		;
0099FA 722E     	ADD     	#2E,R2		;
0099FC 4F22     	STS.L   	PR,@-R15		;
0099FE 61A3     	MOV     	R10,R1		;
009A00 63A3     	MOV     	R10,R3		;
009A02 7301     	ADD     	#01,R3		;
009A04 67F2     	MOV.L   	@R15,R7		;
009A06 301C     	ADD     	R1,R0			;
009A08 6103     	MOV     	R0,R1			;
009A0A 6672     	MOV.L   	@R7,R6		;
009A0C 6009     	SWAP.W   	R0,R0			;
009A0E 301C     	ADD     	R1,R0			;
009A10 6103     	MOV     	R0,R1			;
009A12 57D4     	MOV.L   	@(#10,R13),R7	;
009A14 4004     	ROTL    	R0			;
009A16 4304     	ROTL    	R3			;
009A18 4004     	ROTL    	R0			;
009A1A 397C     	ADD     	R7,R9			;
009A1C 236A     	XOR     	R6,R3			;
009A1E 6633     	MOV     	R3,R6			;
009A20 6339     	SWAP.W   	R3,R3			;
009A22 336C     	ADD     	R6,R3			;
009A24 67F3     	MOV     	R15,R7		;
009A26 290A     	XOR     	R0,R9			;
009A28 2F76     	MOV.L   	R7,@-R15		;
009A2A 6293     	MOV     	R9,R2			;
009A2C 6976     	MOV.L   	@R7+,R9		;
009A2E 68F2     	MOV.L   	@R15,R8		;
009A30 224A     	XOR     	R4,R2			;
009A32 2F92     	MOV.L   	R9,@R15		;
009A34 6976     	MOV.L   	@R7+,R9		;
009A36 265A     	XOR     	R5,R6			;
009A38 2892     	MOV.L   	R9,@R8		;
009A3A 6903     	MOV     	R0,R9			;
009A3C C73F     	MOVA    	@(#FC,PC),R0	;
009A3E 6229     	SWAP.W   	R2,R2			;
009A40 1801     	MOV.L   	R0,@(#4,R8)		;
009A42 6669     	SWAP.W   	R6,R6			;
009A44 6093     	MOV     	R9,R0			;
009A46 2B3A     	XOR     	R3,R11		;
009A48 201A     	XOR     	R1,R0			;
009A4A 53D7     	MOV.L   	@(#1C,R13),R3	;
009A4C 61B3     	MOV     	R11,R1		;
009A4E 323C     	ADD     	R3,R2			;
009A50 1D23     	MOV.L   	R2,@(#C,R13)	;
009A52 68B3     	MOV     	R11,R8		;
009A54 59C2     	MOV.L   	@(#08,R12),R9	;
009A56 301C     	ADD     	R1,R0			;
009A58 6263     	MOV     	R6,R2			;
009A5A 6103     	MOV     	R0,R1			;
009A5C 239A     	XOR     	R9,R3			;
009A5E 7839     	ADD     	#39,R8		;
009A60 6683     	MOV     	R8,R6			;
009A62 4804     	ROTL    	R8			;
009A64 4004     	ROTL    	R0			;
009A66 4804     	ROTL    	R8			;
009A68 3018     	SUB     	R1,R0			;
009A6A 6933     	MOV     	R3,R9			;
009A6C 4F26     	LDS.L   	@R15+,PR		;
009A6E 000B     	RTS     				;
009A70 0009     	NOP     				;
009A72 4F22     	STS.L   	PR,@-R15		;
009A74 6713     	MOV     	R1,R7			;
009A76 6119     	SWAP.W   	R1,R1			;
009A78 56C3     	MOV.L   	@(#0C,R12),R6	;
009A7A 6118     	SWAP.B   	R1,R1			;
009A7C 6119     	SWAP.W   	R1,R1			;
009A7E 336C     	ADD     	R6,R3			;
009A80 52D6     	MOV.L   	@(#18,R13),R2	;
009A82 317C     	ADD     	R7,R1			;
009A84 57D3     	MOV.L   	@(#0C,R13),R7	;
009A86 2A1A     	XOR     	R1,R10		;
009A88 207A     	XOR     	R7,R0			;
009A8A 223A     	XOR     	R3,R2			;
009A8C 1D03     	MOV.L   	R0,@(#C,R13)	;
009A8E 60A3     	MOV     	R10,R0		;
009A90 1D26     	MOV.L   	R2,@(#18,R13)	;
009A92 20BD     	XTRCT   	R11,R0		;
009A94 2BAD     	XTRCT   	R10,R11		;
009A96 6123     	MOV     	R2,R1			;
009A98 6AB3     	MOV     	R11,R10		;
009A9A 6B03     	MOV     	R0,R11		;
009A9C 56F2     	MOV.L   	@(#08,R15),R6	;
009A9E 36C8     	SUB     	R12,R6		;
009AA0 60A3     	MOV     	R10,R0		;
009AA2 58D6     	MOV.L   	@(#18,R13),R8	;
009AA4 6703     	MOV     	R0,R7			;
009AA6 308C     	ADD     	R8,R0			;
009AA8 53D3     	MOV.L   	@(#0C,R13),R3	;
009AAA 4604     	ROTL    	R6			;
009AAC 4604     	ROTL    	R6			;
009AAE 273A     	XOR     	R3,R7			;
009AB0 6203     	MOV     	R0,R2			;
009AB2 6803     	MOV     	R0,R8			;
009AB4 54D4     	MOV.L   	@(#10,R13),R4	;
009AB6 4018     	SHLL8   	R0			;
009AB8 316C     	ADD     	R6,R1			;
009ABA 55D5     	MOV.L   	@(#14,R13),R5	;
009ABC 6613     	MOV     	R1,R6			;
009ABE 4819     	SHLR8   	R8			;
009AC0 4829     	SHLR16  	R8			;
009AC2 234A     	XOR     	R4,R3			;
009AC4 235A     	XOR     	R5,R3			;
009AC6 1D33     	MOV.L   	R3,@(#C,R13)	;
009AC8 208B     	OR      	R8,R0			;
009ACA 4104     	ROTL    	R1			;
009ACC 4404     	ROTL    	R4			;
009ACE 4104     	ROTL    	R1			;
009AD0 4504     	ROTL    	R5			;
009AD2 4104     	ROTL    	R1			;
009AD4 4004     	ROTL    	R0			;
009AD6 216A     	XOR     	R6,R1			;
009AD8 274A     	XOR     	R4,R7			;
009ADA 235A     	XOR     	R5,R3			;
009ADC 202A     	XOR     	R2,R0			;
009ADE 6803     	MOV     	R0,R8			;
009AE0 4004     	ROTL    	R0			;
009AE2 4004     	ROTL    	R0			;
009AE4 6613     	MOV     	R1,R6			;
009AE6 237A     	XOR     	R7,R3			;
009AE8 6119     	SWAP.W   	R1,R1			;
009AEA 316C     	ADD     	R6,R1			;
009AEC 57D7     	MOV.L   	@(#1C,R13),R7	;
009AEE 3088     	SUB     	R8,R0			;
009AF0 58D3     	MOV.L   	@(#0C,R13),R8	;
009AF2 271A     	XOR     	R1,R7			;
009AF4 238B     	OR      	R8,R3			;
009AF6 1D77     	MOV.L   	R7,@(#1C,R13)	;
009AF8 6373     	MOV     	R7,R3			;
009AFA 70FF     	ADD     	#FF,R0		;
009AFC 6873     	MOV     	R7,R8			;
009AFE 57D6     	MOV.L   	@(#18,R13),R7	;
009B00 7303     	ADD     	#03,R3		;
009B02 308C     	ADD     	R8,R0			;
009B04 6633     	MOV     	R3,R6			;
009B06 6803     	MOV     	R0,R8			;
009B08 6009     	SWAP.W   	R0,R0			;
009B0A 28AB     	OR      	R10,R8		;
009B0C 4304     	ROTL    	R3			;
009B0E 308C     	ADD     	R8,R0			;
009B10 236A     	XOR     	R6,R3			;
009B12 2B0A     	XOR     	R0,R11		;
009B14 273A     	XOR     	R3,R7			;
009B16 60B3     	MOV     	R11,R0		;
009B18 6173     	MOV     	R7,R1			;
009B1A 4004     	ROTL    	R0			;
009B1C 301C     	ADD     	R1,R0			;
009B1E 610D     	EXTU.W   	R0,R1			;
009B20 4029     	SHLR16  	R0			;
009B22 201E     	MULU.W  	R1,R0			;
009B24 001A     	STS     	MACL, R0		;
009B26 4004     	ROTL    	R0			;
009B28 4004     	ROTL    	R0			;
009B2A 4004     	ROTL    	R0			;
009B2C 20BA     	XOR     	R11,R0		;
009B2E 2A0A     	XOR     	R0,R10		;
009B30 64A3     	MOV     	R10,R4		;
009B32 65B3     	MOV     	R11,R5		;
009B34 4F26     	LDS.L   	@R15+,PR		;
009B36 000B     	RTS     				;
009B38 0009     	NOP     				;
009B3A 0009     	NOP     				;
009B3C 61A3     	MOV     	R10,R1		;
009B3E 59D5     	MOV.L   	@(#14,R13),R9	;
009B40 4604     	ROTL    	R6			;
009B42 6008     	SWAP.B   	R0,R0			;
009B44 361C     	ADD     	R1,R6			;
009B46 301C     	ADD     	R1,R0			;
009B48 6203     	MOV     	R0,R2			;
009B4A 6763     	MOV     	R6,R7			;
009B4C 4004     	ROTL    	R0			;
009B4E 4004     	ROTL    	R0			;
009B50 1D73     	MOV.L   	R7,@(#C,R13)	;
009B52 63A3     	MOV     	R10,R3		;
009B54 56C2     	MOV.L   	@(#08,R12),R6	;
009B56 336C     	ADD     	R6,R3			;
009B58 2259     	AND     	R5,R2			;
009B5A 270A     	XOR     	R0,R7			;
009B5C 202A     	XOR     	R2,R0			;
009B5E 240A     	XOR     	R0,R4			;
009B60 284A     	XOR     	R4,R8			;
009B62 295A     	XOR     	R5,R9			;
009B64 6273     	MOV     	R7,R2			;
009B66 6073     	MOV     	R7,R0			;
009B68 6733     	MOV     	R3,R7			;
009B6A 1D23     	MOV.L   	R2,@(#C,R13)	;
009B6C 6633     	MOV     	R3,R6			;
009B6E 1D84     	MOV.L   	R8,@(#10,R13)	;
009B70 B097     	BRS     	#012E			;
009B72 0009     	NOP     				;
009B74 B041     	BRS     	#0082			;
009B76 0009     	NOP     				;
009B78 4F26     	LDS.L   	@R15+,PR		;
009B7A 000B     	RTS     				;
009B7C 0009     	NOP     				;
009B7E 0009     	NOP     				;

L009B80:							;
009B80 4F22     	STS.L   	PR,@-R15		;
009B82 BEF5     	BRS     	L009970		;L009970();
009B84 0009     	NOP     				;
009B86 63B3     	MOV     	R11,R3		;
009B88 4004     	ROTL    	R0			;
009B8A 4804     	ROTL    	R8			;
009B8C 4304     	ROTL    	R3			;
009B8E 4004     	ROTL    	R0			;
009B90 4804     	ROTL    	R8			;
009B92 4304     	ROTL    	R3			;
009B94 389C     	ADD     	R9,R8			;
009B96 201A     	XOR     	R1,R0			;
009B98 276A     	XOR     	R6,R7			;
009B9A 6103     	MOV     	R0,R1			;
009B9C 4304     	ROTL    	R3			;
009B9E 4004     	ROTL    	R0			;
009BA0 4804     	ROTL    	R8			;
009BA2 4004     	ROTL    	R0			;
009BA4 4804     	ROTL    	R8			;
009BA6 4004     	ROTL    	R0			;
009BA8 4804     	ROTL    	R8			;
009BAA 4004     	ROTL    	R0			;
009BAC 4704     	ROTL    	R7			;
009BAE 7317     	ADD     	#17,R3		;
009BB0 289B     	OR      	R9,R8			;
009BB2 387C     	ADD     	R7,R8			;
009BB4 52D7     	MOV.L   	@(#1C,R13),R2	;
009BB6 6973     	MOV     	R7,R9			;
009BB8 3018     	SUB     	R1,R0			;
009BBA 6733     	MOV     	R3,R7			;
009BBC 6999     	SWAP.W   	R9,R9			;
009BBE 6639     	SWAP.W   	R3,R6			;
009BC0 633D     	EXTU.W   	R3,R3			;
009BC2 666D     	EXTU.W   	R6,R6			;
009BC4 240A     	XOR     	R0,R4			;
009BC6 6143     	MOV     	R4,R1			;
009BC8 236E     	MULU.W  	R6,R3			;
009BCA 56C1     	MOV.L   	@(#04,R12),R6	;
009BCC 4100     	SHLL    	R1			;
009BCE 4524     	ROTCL   	R5			;
009BD0 4424     	ROTCL   	R4			;
009BD2 4924     	ROTCL   	R9			;
009BD4 031A     	STS     	MACL, R3		;
009BD6 228A     	XOR     	R8,R2			;
009BD8 1D27     	MOV.L   	R2,@(#1C,R13)	;
009BDA 336C     	ADD     	R6,R3			;
009BDC 6633     	MOV     	R3,R6			;
009BDE 4318     	SHLL8   	R3			;
009BE0 4619     	SHLR8   	R6			;
009BE2 4919     	SHLR8   	R9			;
009BE4 4629     	SHLR16  	R6			;
009BE6 236B     	OR      	R6,R3			;
009BE8 237A     	XOR     	R7,R3			;
009BEA 2A3A     	XOR     	R3,R10		;
009BEC 6043     	MOV     	R4,R0			;
009BEE 8901     	BT      	#002			;
009BF0 B036     	BRS     	#006C			;
009BF2 0009     	NOP     				;
009BF4 4F26     	LDS.L   	@R15+,PR		;
009BF6 000B     	RTS     				;
009BF8 0009     	NOP     				;
009BFA 4F22     	STS.L   	PR,@-R15		;
009BFC 6123     	MOV     	R2,R1			;
009BFE 6A43     	MOV     	R4,R10		;
009C00 6338     	SWAP.B   	R3,R3			;
009C02 336C     	ADD     	R6,R3			;
009C04 250A     	XOR     	R0,R5			;
009C06 237A     	XOR     	R7,R3			;
009C08 50D3     	MOV.L   	@(#0C,R13),R0	;
009C0A 6B53     	MOV     	R5,R11		;
009C0C 6133     	MOV     	R3,R1			;
009C0E 7111     	ADD     	#11,R1		;
009C10 201B     	OR      	R1,R0			;
009C12 68B3     	MOV     	R11,R8		;
009C14 6619     	SWAP.W   	R1,R6			;
009C16 611D     	EXTU.W   	R1,R1			;
009C18 666D     	EXTU.W   	R6,R6			;
009C1A 216E     	MULU.W  	R6,R1			;
009C1C 072A     	STS     	PR, R7		;
009C1E 4804     	ROTL    	R8			;
009C20 4004     	ROTL    	R0			;
009C22 4804     	ROTL    	R8			;
009C24 4004     	ROTL    	R0			;
009C26 4804     	ROTL    	R8			;
009C28 53D7     	MOV.L   	@(#1C,R13),R3	;
009C2A 6603     	MOV     	R0,R6			;
009C2C 011A     	STS     	MACL, R1		;
009C2E 7101     	ADD     	#01,R1		;
009C30 1D63     	MOV.L   	R6,@(#C,R13)	;
009C32 6119     	SWAP.W   	R1,R1			;
009C34 5674     	MOV.L   	@(#10,R7),R6	;
009C36 6118     	SWAP.B   	R1,R1			;
009C38 6119     	SWAP.W   	R1,R1			;
009C3A 3168     	SUB     	R6,R1			;
009C3C 201A     	XOR     	R1,R0			;
009C3E 231A     	XOR     	R1,R3			;
009C40 1D37     	MOV.L   	R3,@(#1C,R13)	;
009C42 4300     	SHLL    	R3			;
009C44 6183     	MOV     	R8,R1			;
009C46 57D7     	MOV.L   	@(#1C,R13),R7	;
009C48 7301     	ADD     	#01,R3		;
009C4A 6633     	MOV     	R3,R6			;
009C4C 6338     	SWAP.B   	R3,R3			;
009C4E 203A     	XOR     	R3,R0			;
009C50 217A     	XOR     	R7,R1			;
009C52 236A     	XOR     	R6,R3			;
009C54 BF0D     	BRS     	#1E1A			;
009C56 0009     	NOP     				;
009C58 4F26     	LDS.L   	@R15+,PR		;
009C5A 000B     	RTS     				;
009C5C 0009     	NOP     				;
009C5E 0009     	NOP     				;
009C60 4F22     	STS.L   	PR,@-R15		;
009C62 200B     	OR      	R0,R0			;
009C64 BECA     	BRS     	#1D94			;
009C66 0009     	NOP     				;
009C68 E77F     	MOV     	#7F,R7		;
009C6A 6203     	MOV     	R0,R2			;
009C6C 6103     	MOV     	R0,R1			;
009C6E 6339     	SWAP.W   	R3,R3			;
009C70 339C     	ADD     	R9,R3			;
009C72 4018     	SHLL8   	R0			;
009C74 6733     	MOV     	R3,R7			;
009C76 4119     	SHLR8   	R1			;
009C78 6338     	SWAP.B   	R3,R3			;
009C7A 3378     	SUB     	R7,R3			;
009C7C 4129     	SHLR16  	R1			;
009C7E 201B     	OR      	R1,R0			;
009C80 224B     	OR      	R4,R2			;
009C82 4304     	ROTL    	R3			;
009C84 4904     	ROTL    	R9			;
009C86 202A     	XOR     	R2,R0			;
009C88 286A     	XOR     	R6,R8			;
009C8A 250A     	XOR     	R0,R5			;
009C8C 50D3     	MOV.L   	@(#0C,R13),R0	;
009C8E 239A     	XOR     	R9,R3			;
009C90 57D6     	MOV.L   	@(#18,R13),R7	;
009C92 2A8A     	XOR     	R8,R10		;
009C94 273A     	XOR     	R3,R7			;
009C96 6603     	MOV     	R0,R6			;
009C98 6053     	MOV     	R5,R0			;
009C9A 58D4     	MOV.L   	@(#10,R13),R8	;
009C9C 4F26     	LDS.L   	@R15+,PR		;
009C9E 000B     	RTS     				;
009CA0 0009     	NOP     				;
009CA2 4F22     	STS.L   	PR,@-R15		;
009CA4 51D3     	MOV.L   	@(#0C,R13),R1	;
009CA6 221A     	XOR     	R1,R2			;
009CA8 51C3     	MOV.L   	@(#0C,R12),R1	;
009CAA 301C     	ADD     	R1,R0			;
009CAC 302C     	ADD     	R2,R0			;
009CAE 1D95     	MOV.L   	R9,@(#14,R13)	;
009CB0 4318     	SHLL8   	R3			;
009CB2 4619     	SHLR8   	R6			;
009CB4 6103     	MOV     	R0,R1			;
009CB6 52D7     	MOV.L   	@(#1C,R13),R2	;
009CB8 4629     	SHLR16  	R6			;
009CBA 1DA6     	MOV.L   	R10,@(#18,R13)	;
009CBC 4504     	ROTL    	R5			;
009CBE 4004     	ROTL    	R0			;
009CC0 4004     	ROTL    	R0			;
009CC2 4004     	ROTL    	R0			;
009CC4 236B     	OR      	R6,R3			;
009CC6 56D3     	MOV.L   	@(#0C,R13),R6	;
009CC8 301C     	ADD     	R1,R0			;
009CCA 3378     	SUB     	R7,R3			;
009CCC 6009     	SWAP.W   	R0,R0			;
009CCE 301C     	ADD     	R1,R0			;
009CD0 361C     	ADD     	R1,R6			;
009CD2 1DB7     	MOV.L   	R11,@(#1C,R13)	;
009CD4 4404     	ROTL    	R4			;
009CD6 220A     	XOR     	R0,R2			;
009CD8 1D63     	MOV.L   	R6,@(#C,R13)	;
009CDA 6043     	MOV     	R4,R0			;
009CDC 6633     	MOV     	R3,R6			;
009CDE 4F26     	LDS.L   	@R15+,PR		;
009CE0 000B     	RTS     				;
009CE2 0009     	NOP     				;

DMAC2:							;DMAC2 handler
009CE4 2F06     	MOV.L   	R0,@-R15		;
009CE6 2F16     	MOV.L   	R1,@-R15		;
009CE8 2F26     	MOV.L   	R2,@-R15		;
009CEA 2F36     	MOV.L   	R3,@-R15		;
009CEC 2F46     	MOV.L   	R4,@-R15		;
009CEE 2F56     	MOV.L   	R5,@-R15		;
009CF0 2F66     	MOV.L   	R6,@-R15		;
009CF2 2F76     	MOV.L   	R7,@-R15		;
009CF4 2F86     	MOV.L   	R8,@-R15		;
009CF6 2F96     	MOV.L   	R9,@-R15		;
009CF8 2FA6     	MOV.L   	R10,@-R15		;
009CFA 2FB6     	MOV.L   	R11,@-R15		;
009CFC 2FC6     	MOV.L   	R12,@-R15		;
009CFE 2FD6     	MOV.L   	R13,@-R15		;
009D00 4F22     	STS.L   	PR,@-R15		;
009D02 4F13     	STC.L   	GBR,@-R15		;
009D04 4F02     	STS.L   	MACH,@-R15		;
009D06 4F12     	STS.L   	MACL,@-R15		;
009D08 DD0A     	MOV.L   	@(#028,PC),R13	;
009D0A 6CD2     	MOV.L   	@R13,R12		;
009D0C 1CF2     	MOV.L   	R15,@(#8,R12)	;
009D0E DF0A     	MOV.L   	@(#028,PC),R15	;SH1.SP = &temp_stack3_end;
009D10 D306     	MOV.L   	@(#018,PC),R3	;
009D12 431E     	LDC     	R3,GBR		;
009D14 E06F     	MOV     	#6F,R0		;
009D16 CDFB     	AND.B   	#FB,@(R0,GBR)	;
009D18 DB05     	MOV.L   	@(#014,PC),R11	;
009D1A C321     	TRAPA   	#21			;
009D1C 0009     	NOP     				;
009D1E D308     	MOV.L   	@(#020,PC),R3	;
009D20 8432     	MOV.B   	@(#02,R3),R0	;
009D22 CB02     	OR      	#02,R0		;
009D24 8032     	MOV.B   	R0,@(#02,R3)	;
009D26 D005     	MOV.L   	@(#014,PC),R0	;
009D28 402B     	JMP     	@R0			;L00102E();
009D2A 0009     	NOP     				;
009D2C 05FF
009D2E FF00
009D30 0889
009D32 0008
009D34 0F00
009D36 01D4
009D38 0F0008F8
009D3C 0000102E
009D40 0F00
009D42 0890
009D44 D33F     	MOV.L   	@(#0FC,PC),R3	;
009D46 2312     	MOV.L   	R1,@R3		;
009D48 D0B0     	MOV.L   	@(#2C0,PC),R0	;
009D4A 4F22     	STS.L   	PR,@-R15		;
009D4C 400B     	JSR     	@R0			;
009D4E 0009     	NOP     				;
009D50 4F26     	LDS.L   	@R15+,PR		;
009D52 6BC3     	MOV     	R12,R11		;
009D54 D33B     	MOV.L   	@(#0EC,PC),R3	;
009D56 6132     	MOV.L   	@R3,R1		;
009D58 D33B     	MOV.L   	@(#0EC,PC),R3	;
009D5A 853A     	MOV.W   	@(#14,R3),R0	;
009D5C C840     	TST     	#40,R0		;
009D5E 8B2C     	BF      	#058			;
009D60 D33D     	MOV.L   	@(#0F4,PC),R3	;
009D62 6030     	MOV.B   	@R3,R0		;
009D64 C808     	TST     	#08,R0		;
009D66 8906     	BT      	#00C			;
009D68 D0A6     	MOV.L   	@(#298,PC),R0	;
009D6A 4F22     	STS.L   	PR,@-R15		;
009D6C 400B     	JSR     	@R0			;
009D6E 0009     	NOP     				;
009D70 4F26     	LDS.L   	@R15+,PR		;
009D72 000B     	RTS     				;
009D74 0009     	NOP     				;
009D76 D335     	MOV.L   	@(#0D4,PC),R3	;
009D78 431E     	LDC     	R3,GBR		;
009D7A E006     	MOV     	#06,R0		;
009D7C C111     	MOV.W   	R0,@(#022,GBR)	;
009D7E 0009     	NOP     				;
009D80 0009     	NOP     				;
009D82 0009     	NOP     				;
009D84 0009     	NOP     				;
009D86 0009     	NOP     				;
009D88 C511     	MOV.W   	@(#022,GBR),R0	;
009D8A 6C03     	MOV     	R0,R12		;
009D8C E004     	MOV     	#04,R0		;
009D8E C111     	MOV.W   	R0,@(#022,GBR)	;
009D90 0009     	NOP     				;
009D92 0009     	NOP     				;
009D94 0009     	NOP     				;
009D96 0009     	NOP     				;
009D98 0009     	NOP     				;
009D9A C511     	MOV.W   	@(#022,GBR),R0	;
009D9C 600C     	EXTU.B   	R0,R0			;
009D9E 6D03     	MOV     	R0,R13		;
009DA0 4D28     	SHLL16  	R13			;
009DA2 E005     	MOV     	#05,R0		;
009DA4 C111     	MOV.W   	R0,@(#022,GBR)	;
009DA6 0009     	NOP     				;
009DA8 0009     	NOP     				;
009DAA 0009     	NOP     				;
009DAC 0009     	NOP     				;
009DAE 0009     	NOP     				;
009DB0 C511     	MOV.W   	@(#022,GBR),R0	;
009DB2 600D     	EXTU.W   	R0,R0			;
009DB4 2D0B     	OR      	R0,R13		;
009DB6 A01C     	BRA     	#0038			;
009DB8 222A     	XOR     	R2,R2			;
009DBA C808     	TST     	#08,R0		;
009DBC 8B0E     	BF      	#01C			;
009DBE 6013     	MOV     	R1,R0			;
009DC0 C801     	TST     	#01,R0		;
009DC2 8B0B     	BF      	#016			;
009DC4 D322     	MOV.L   	@(#088,PC),R3	;
009DC6 431E     	LDC     	R3,GBR		;
009DC8 C42E     	MOV.B   	@(#02E,GBR),R0	;
009DCA 4008     	SHLL2   	R0			;
009DCC 4019     	SHLR8   	R0			;
009DCE C903     	AND     	#03,R0		;
009DD0 6203     	MOV     	R0,R2			;
009DD2 C514     	MOV.W   	@(#028,GBR),R0	;
009DD4 6C03     	MOV     	R0,R12		;
009DD6 C608     	MOV.L   	@(#020,GBR),R0	;
009DD8 A00B     	BRA     	#0016			;
009DDA 6D03     	MOV     	R0,R13		;
009DDC D31B     	MOV.L   	@(#06C,PC),R3	;
009DDE 8533     	MOV.W   	@(#06,R3),R0	;
009DE0 C9C0     	AND     	#C0,R0		;
009DE2 4009     	SHLR2   	R0			;
009DE4 4009     	SHLR2   	R0			;
009DE6 6203     	MOV     	R0,R2			;
009DE8 4209     	SHLR2   	R2			;
009DEA D319     	MOV.L   	@(#064,PC),R3	;
009DEC 0C3E     	MOV.L   	@(R0,R3),R12	;
009DEE 7310     	ADD     	#10,R3		;
009DF0 0D3E     	MOV.L   	@(R0,R3),R13	;
009DF2 60C3     	MOV     	R12,R0		;
009DF4 61C3     	MOV     	R12,R1		;
009DF6 C93F     	AND     	#3F,R0		;
009DF8 6C03     	MOV     	R0,R12		;
009DFA 4100     	SHLL    	R1			;
009DFC 4100     	SHLL    	R1			;
009DFE 4100     	SHLL    	R1			;
009E00 6019     	SWAP.W   	R1,R0			;
009E02 C903     	AND     	#03,R0		;
009E04 4018     	SHLL8   	R0			;
009E06 2C0B     	OR      	R0,R12		;
009E08 4228     	SHLL16  	R2			;
009E0A 2C2B     	OR      	R2,R12		;
009E0C 61D3     	MOV     	R13,R1		;
009E0E 6013     	MOV     	R1,R0			;
009E10 C93F     	AND     	#3F,R0		;
009E12 4100     	SHLL    	R1			;
009E14 6D03     	MOV     	R0,R13		;
009E16 4100     	SHLL    	R1			;
009E18 6018     	SWAP.B   	R1,R0			;
009E1A 4100     	SHLL    	R1			;
009E1C C93F     	AND     	#3F,R0		;
009E1E 4129     	SHLR16  	R1			;
009E20 4018     	SHLL8   	R0			;
009E22 2D0B     	OR      	R0,R13		;
009E24 6013     	MOV     	R1,R0			;
009E26 4100     	SHLL    	R1			;
009E28 C93F     	AND     	#3F,R0		;
009E2A 4100     	SHLL    	R1			;
009E2C 4028     	SHLL16  	R0			;
009E2E 4119     	SHLR8   	R1			;
009E30 2D0B     	OR      	R0,R13		;
009E32 4128     	SHLL16  	R1			;
009E34 4118     	SHLL8   	R1			;
009E36 2D1B     	OR      	R1,R13		;
009E38 D070     	MOV.L   	@(#1C0,PC),R0	;
009E3A 2B09     	AND     	R0,R11		;
009E3C 2CBB     	OR      	R11,R12		;
009E3E 000B     	RTS     				;
009E40 2BBA     	XOR     	R11,R11		;
009E42 0009     	NOP     				;
009E44 0907
009E46 5380
009E48 0F00
009E4A 0854
009E4C 0A10
009E4E 0000
009E50 0907
009E52 52E4
009E54 0F00
009E56 0890
009E58 0F00
009E5A 0897
009E5C D06B     	MOV.L   	@(#1AC,PC),R0	;
009E5E 4F22     	STS.L   	PR,@-R15		;
009E60 400B     	JSR     	@R0			;
009E62 0009     	NOP     				;
009E64 4F26     	LDS.L   	@R15+,PR		;
009E66 D302     	MOV.L   	@(#008,PC),R3	;
009E68 5031     	MOV.L   	@(#04,R3),R0	;
009E6A 6D03     	MOV     	R0,R13		;
009E6C 000B     	RTS     				;
009E6E 2BBA     	XOR     	R11,R11		;
009E70 0907     	MUL.L   	R0,R9			;
009E72 52A0     	MOV.L   	@(#00,R10),R2	;
009E74 D316     	MOV.L   	@(#058,PC),R3	;
009E76 6030     	MOV.B   	@R3,R0		;
009E78 C808     	TST     	#08,R0		;
009E7A 8906     	BT      	#00C			;
009E7C D061     	MOV.L   	@(#184,PC),R0	;
009E7E 4F22     	STS.L   	PR,@-R15		;
009E80 400B     	JSR     	@R0			;
009E82 0009     	NOP     				;
009E84 4F26     	LDS.L   	@R15+,PR		;
009E86 000B     	RTS     				;
009E88 0009     	NOP     				;
009E8A D060     	MOV.L   	@(#180,PC),R0	;
009E8C 4F22     	STS.L   	PR,@-R15		;
009E8E 400B     	JSR     	@R0			;
009E90 0009     	NOP     				;
009E92 4F26     	LDS.L   	@R15+,PR		;
009E94 D30C     	MOV.L   	@(#030,PC),R3	;
009E96 431E     	LDC     	R3,GBR		;
009E98 200A     	XOR     	R0,R0			;
009E9A C111     	MOV.W   	R0,@(#022,GBR)	;
009E9C 0009     	NOP     				;
009E9E 0009     	NOP     				;
009EA0 0009     	NOP     				;
009EA2 0009     	NOP     				;
009EA4 0009     	NOP     				;
009EA6 C511     	MOV.W   	@(#022,GBR),R0	;
009EA8 9B14     	MOV.W   	@(#028,PC),R11	;
009EAA 2B09     	AND     	R0,R11		;
009EAC 4B28     	SHLL16  	R11			;
009EAE E001     	MOV     	#01,R0		;
009EB0 C111     	MOV.W   	R0,@(#022,GBR)	;
009EB2 0009     	NOP     				;
009EB4 0009     	NOP     				;
009EB6 0009     	NOP     				;
009EB8 0009     	NOP     				;
009EBA 0009     	NOP     				;
009EBC C511     	MOV.W   	@(#022,GBR),R0	;
009EBE 9D09     	MOV.W   	@(#012,PC),R13	;
009EC0 2D09     	AND     	R0,R13		;
009EC2 2DBB     	OR      	R11,R13		;
009EC4 000B     	RTS     				;
009EC6 2BBA     	XOR     	R11,R11		;
009EC8 0A10
009ECA 0000
009ECC 0F00
009ECE 0890
009ED0 0F00
009ED2 0897
009ED4 0FFF
009ED6 0009     	NOP     				;
009ED8 6019     	SWAP.W   	R1,R0			;
009EDA 611E     	EXTS.B   	R1,R1			;
009EDC 600E     	EXTS.B   	R0,R0			;
009EDE D345     	MOV.L   	@(#114,PC),R3	;
009EE0 431E     	LDC     	R3,GBR		;
009EE2 8801     	CMP/EQ  	#01,R0		;
009EE4 8B0B     	BF      	#016			;
009EE6 6028     	SWAP.B   	R2,R0			;
009EE8 C840     	TST     	#40,R0		;
009EEA 8B01     	BF      	#002			;
009EEC 6023     	MOV     	R2,R0			;
009EEE C108     	MOV.W   	R0,@(#010,GBR)	;
009EF0 4229     	SHLR16  	R2			;
009EF2 6028     	SWAP.B   	R2,R0			;
009EF4 C840     	TST     	#40,R0		;
009EF6 8B60     	BF      	#0C0			;
009EF8 6023     	MOV     	R2,R0			;
009EFA A05E     	BRA     	#00BC			;
009EFC C107     	MOV.W   	R0,@(#00E,GBR)	;
009EFE 8804     	CMP/EQ  	#04,R0		;
009F00 8B12     	BF      	#024			;
009F02 D33B     	MOV.L   	@(#0EC,PC),R3	;
009F04 6028     	SWAP.B   	R2,R0			;
009F06 C880     	TST     	#80,R0		;
009F08 8B01     	BF      	#002			;
009F0A 6023     	MOV     	R2,R0			;
009F0C 8133     	MOV.W   	R0,@(#06,R3)	;
009F0E 4229     	SHLR16  	R2			;
009F10 6028     	SWAP.B   	R2,R0			;
009F12 C880     	TST     	#80,R0		;
009F14 8B01     	BF      	#002			;
009F16 6023     	MOV     	R2,R0			;
009F18 8132     	MOV.W   	R0,@(#04,R3)	;
009F1A 5231     	MOV.L   	@(#04,R3),R2	;
009F1C 6032     	MOV.L   	@R3,R0		;
009F1E 302C     	ADD     	R2,R0			;
009F20 C102     	MOV.W   	R0,@(#004,GBR)	;
009F22 4029     	SHLR16  	R0			;
009F24 A049     	BRA     	#0092			;
009F26 C101     	MOV.W   	R0,@(#002,GBR)	;
009F28 6303     	MOV     	R0,R3			;
009F2A C500     	MOV.W   	@(#000,GBR),R0	;
009F2C C808     	TST     	#08,R0		;
009F2E 890C     	BT      	#018			;
009F30 4200     	SHLL    	R2			;
009F32 4024     	ROTCL   	R0			;
009F34 4201     	SHLR    	R2			;
009F36 6229     	SWAP.W   	R2,R2			;
009F38 4200     	SHLL    	R2			;
009F3A 4024     	ROTCL   	R0			;
009F3C 4200     	SHLL    	R2			;
009F3E 4001     	SHLR    	R0			;
009F40 4225     	ROTCR   	R2			;
009F42 6229     	SWAP.W   	R2,R2			;
009F44 4200     	SHLL    	R2			;
009F46 4001     	SHLR    	R0			;
009F48 4225     	ROTCR   	R2			;
009F4A 6033     	MOV     	R3,R0			;
009F4C 8800     	CMP/EQ  	#00,R0		;
009F4E 8B0B     	BF      	#016			;
009F50 6028     	SWAP.B   	R2,R0			;
009F52 C880     	TST     	#80,R0		;
009F54 8B01     	BF      	#002			;
009F56 6023     	MOV     	R2,R0			;
009F58 C106     	MOV.W   	R0,@(#00C,GBR)	;
009F5A 4229     	SHLR16  	R2			;
009F5C 6028     	SWAP.B   	R2,R0			;
009F5E C880     	TST     	#80,R0		;
009F60 8B2B     	BF      	#056			;
009F62 6023     	MOV     	R2,R0			;
009F64 A029     	BRA     	#0052			;
009F66 C105     	MOV.W   	R0,@(#00A,GBR)	;
009F68 8802     	CMP/EQ  	#02,R0		;
009F6A 8B11     	BF      	#022			;
009F6C D320     	MOV.L   	@(#080,PC),R3	;
009F6E 6028     	SWAP.B   	R2,R0			;
009F70 C880     	TST     	#80,R0		;
009F72 8B01     	BF      	#002			;
009F74 6023     	MOV     	R2,R0			;
009F76 8131     	MOV.W   	R0,@(#02,R3)	;
009F78 4229     	SHLR16  	R2			;
009F7A 6028     	SWAP.B   	R2,R0			;
009F7C C880     	TST     	#80,R0		;
009F7E 8B00     	BF      	#000			;
009F80 2321     	MOV.W   	R2,@R3		;
009F82 6232     	MOV.L   	@R3,R2		;
009F84 5031     	MOV.L   	@(#04,R3),R0	;
009F86 302C     	ADD     	R2,R0			;
009F88 C102     	MOV.W   	R0,@(#004,GBR)	;
009F8A 4029     	SHLR16  	R0			;
009F8C A015     	BRA     	#002A			;
009F8E C101     	MOV.W   	R0,@(#002,GBR)	;
009F90 8803     	CMP/EQ  	#03,R0		;
009F92 8B0B     	BF      	#016			;
009F94 6028     	SWAP.B   	R2,R0			;
009F96 C880     	TST     	#80,R0		;
009F98 8B01     	BF      	#002			;
009F9A 6023     	MOV     	R2,R0			;
009F9C C104     	MOV.W   	R0,@(#008,GBR)	;
009F9E 4229     	SHLR16  	R2			;
009FA0 6028     	SWAP.B   	R2,R0			;
009FA2 C880     	TST     	#80,R0		;
009FA4 8B09     	BF      	#012			;
009FA6 6023     	MOV     	R2,R0			;
009FA8 A007     	BRA     	#000E			;
009FAA C103     	MOV.W   	R0,@(#006,GBR)	;
009FAC D014     	MOV.L   	@(#050,PC),R0	;
009FAE 4F22     	STS.L   	PR,@-R15		;
009FB0 400B     	JSR     	@R0			;
009FB2 0009     	NOP     				;
009FB4 4F26     	LDS.L   	@R15+,PR		;
009FB6 000B     	RTS     				;
009FB8 2BBA     	XOR     	R11,R11		;
009FBA 4101     	SHLR    	R1			;
009FBC 8B11     	BF      	#022			;
009FBE D30E     	MOV.L   	@(#038,PC),R3	;
009FC0 7302     	ADD     	#02,R3		;
009FC2 C501     	MOV.W   	@(#002,GBR),R0	;
009FC4 2301     	MOV.W   	R0,@R3		;
009FC6 C502     	MOV.W   	@(#004,GBR),R0	;
009FC8 8131     	MOV.W   	R0,@(#02,R3)	;
009FCA C503     	MOV.W   	@(#006,GBR),R0	;
009FCC 8132     	MOV.W   	R0,@(#04,R3)	;
009FCE C504     	MOV.W   	@(#008,GBR),R0	;
009FD0 8133     	MOV.W   	R0,@(#06,R3)	;
009FD2 C505     	MOV.W   	@(#00A,GBR),R0	;
009FD4 8134     	MOV.W   	R0,@(#08,R3)	;
009FD6 C506     	MOV.W   	@(#00C,GBR),R0	;
009FD8 8135     	MOV.W   	R0,@(#0A,R3)	;
009FDA C507     	MOV.W   	@(#00E,GBR),R0	;
009FDC 8136     	MOV.W   	R0,@(#0C,R3)	;
009FDE C508     	MOV.W   	@(#010,GBR),R0	;
009FE0 8137     	MOV.W   	R0,@(#0E,R3)	;
009FE2 D009     	MOV.L   	@(#024,PC),R0	;
009FE4 4F22     	STS.L   	PR,@-R15		;
009FE6 400B     	JSR     	@R0			;
009FE8 0009     	NOP     				;
009FEA 4F26     	LDS.L   	@R15+,PR		;
009FEC 000B     	RTS     				;
009FEE 2BBA     	XOR     	R11,R11		;
009FF0 0907
009FF2 531C
009FF4 0F00
009FF6 0854
009FF8 0A10
009FFA 0000
009FFC FF00
009FFE 0000
00A000 0000
00A002 F892
00A004 0000
00A006 F896
00A008 0000
00A00A F89A
00A00C 0000
00A00E F8EE
00A010 D20E     	MOV.L   	@(#038,PC),R2	;
00A012 E080     	MOV     	#80,R0		;
00A014 4018     	SHLL8   	R0			;
00A016 6007     	NOT     	R0,R0			;
00A018 812D     	MOV.W   	R0,@(#1A,R2)	;
00A01A 4F22     	STS.L   	PR,@-R15		;
00A01C B258     	BRS     	#04B0			;
00A01E 0009     	NOP     				;
00A020 4F26     	LDS.L   	@R15+,PR		;
00A022 C323     	TRAPA   	#23			;
00A024 D102     	MOV.L   	@(#008,PC),R1	;
00A026 60BC     	EXTU.B   	R11,R0		;
00A028 021E     	MOV.L   	@(R0,R1),R2		;
00A02A 422B     	JMP     	@R2			;
00A02C 0009     	NOP     				;
00A02E 0009     	NOP     				;
00A030 0000
00A032 A034
00A034 0000
00A036 F80A
00A038 0000
00A03A A41C
00A03C 0000
00A03E F856
00A040 0000
00A042 F8AA
00A044 0000
00A046 F816
00A048 0000
00A04A F88A
00A04C 0A10
00A04E 0000

L00A050:							;cdb command 93 "MPEG Init"
00A050 D421     	MOV.L   	@(#084,PC),R4	;
00A052 6040     	MOV.B   	@R4,R0		;
00A054 2008     	TST     	R0,R0			;
00A056 8B06     	BF      	#00C			;
00A058 ECFF     	MOV     	#FF,R12		;
00A05A 6CCC     	EXTU.B   	R12,R12		;
00A05C 6CC8     	SWAP.B   	R12,R12		;
00A05E 6CC9     	SWAP.W   	R12,R12		;
00A060 ED00     	MOV     	#00,R13		;
00A062 A02B     	BRA     	#0056			;
00A064 2BBA     	XOR     	R11,R11		;
00A066 D316     	MOV.L   	@(#058,PC),R3	;
00A068 6030     	MOV.B   	@R3,R0		;
00A06A 4101     	SHLR    	R1			;
00A06C 8B04     	BF      	#008			;
00A06E C880     	TST     	#80,R0		;
00A070 8B04     	BF      	#008			;
00A072 DB14     	MOV.L   	@(#050,PC),R11	;
00A074 A01B     	BRA     	#0036			;
00A076 0009     	NOP     				;
00A078 C97F     	AND     	#7F,R0		;
00A07A 2300     	MOV.B   	R0,@R3		;
00A07C D218     	MOV.L   	@(#060,PC),R2	;
00A07E 4F22     	STS.L   	PR,@-R15		;
00A080 420B     	JSR     	@R2			;
00A082 0009     	NOP     				;
00A084 4F26     	LDS.L   	@R15+,PR		;
00A086 D213     	MOV.L   	@(#04C,PC),R2	;
00A088 7203     	ADD     	#03,R2		;
00A08A 200A     	XOR     	R0,R0			;
00A08C 2204     	MOV.B   	R0,@-R2		;
00A08E 2204     	MOV.B   	R0,@-R2		;
00A090 2204     	MOV.B   	R0,@-R2		;
00A092 9B27     	MOV.W   	@(#04E,PC),R11	;
00A094 6BB9     	SWAP.W   	R11,R11		;
00A096 C321     	TRAPA   	#21			;
00A098 9B25     	MOV.W   	@(#04A,PC),R11	;
00A09A 6BB9     	SWAP.W   	R11,R11		;
00A09C C321     	TRAPA   	#21			;
00A09E 9B23     	MOV.W   	@(#046,PC),R11	;
00A0A0 6BB9     	SWAP.W   	R11,R11		;
00A0A2 C321     	TRAPA   	#21			;
00A0A4 9B22     	MOV.W   	@(#044,PC),R11	;
00A0A6 6BB9     	SWAP.W   	R11,R11		;
00A0A8 C321     	TRAPA   	#21			;
00A0AA 9B1E     	MOV.W   	@(#03C,PC),R11	;
00A0AC 6BB9     	SWAP.W   	R11,R11		;
00A0AE D208     	MOV.L   	@(#020,PC),R2	;
00A0B0 2FB6     	MOV.L   	R11,@-R15		;
00A0B2 4F22     	STS.L   	PR,@-R15		;
00A0B4 420B     	JSR     	@R2			;
00A0B6 0009     	NOP     				;
00A0B8 4F26     	LDS.L   	@R15+,PR		;
00A0BA 6BF6     	MOV.L   	@R15+,R11		;
00A0BC 000B     	RTS     				;
00A0BE 0009     	NOP     				;
00A0C0 0F00
00A0C2 0892
00A0C4 0881
00A0C6 0004
00A0C8 0A10
00A0CA 0000
00A0CC 05FF
00A0CE FF00
00A0D0 0000
00A0D2 F89A
00A0D4 0907
00A0D6 5388
00A0D8 0907
00A0DA B000
00A0DC 0000
00A0DE F892
00A0E0 0000
00A0E2 A490
00A0E4 0889
00A0E6 088A
00A0E8 088C
00A0EA 0881
00A0EC 0981
00A0EE 0009

L00A0F0:							;cdb command AF "MPEG Set LSI"
00A0F0 2CCA     	XOR     	R12,R12		;
00A0F2 2DDA     	XOR     	R13,R13		;
00A0F4 D310     	MOV.L   	@(#040,PC),R3	;
00A0F6 2F16     	MOV.L   	R1,@-R15		;
00A0F8 2F26     	MOV.L   	R2,@-R15		;
00A0FA 4F22     	STS.L   	PR,@-R15		;
00A0FC 430B     	JSR     	@R3			;
00A0FE 0009     	NOP     				;
00A100 4F26     	LDS.L   	@R15+,PR		;
00A102 62F6     	MOV.L   	@R15+,R2		;
00A104 61F6     	MOV.L   	@R15+,R1		;
00A106 631C     	EXTU.B   	R1,R3			;
00A108 4301     	SHLR    	R3			;
00A10A 4300     	SHLL    	R3			;
00A10C 6019     	SWAP.W   	R1,R0			;
00A10E C802     	TST     	#02,R0		;
00A110 8B02     	BF      	#004			;
00A112 D40B     	MOV.L   	@(#02C,PC),R4	;
00A114 A001     	BRA     	#0002			;
00A116 0009     	NOP     				;
00A118 D408     	MOV.L   	@(#020,PC),R4	;
00A11A 343C     	ADD     	R3,R4			;
00A11C 4001     	SHLR    	R0			;
00A11E 8907     	BT      	#00E			;
00A120 2421     	MOV.W   	R2,@R4		;
00A122 D308     	MOV.L   	@(#020,PC),R3	;
00A124 4F22     	STS.L   	PR,@-R15		;
00A126 430B     	JSR     	@R3			;
00A128 0009     	NOP     				;
00A12A 4F26     	LDS.L   	@R15+,PR		;
00A12C A001     	BRA     	#0002			;
00A12E 0009     	NOP     				;
00A130 6D41     	MOV.W   	@R4,R13		;
00A132 000B     	RTS     				;
00A134 2BBA     	XOR     	R11,R11		;
00A136 0009     	NOP     				;
00A138 0000
00A13A 91A8
00A13C 0A18
00A13E 0000
00A140 0A10
00A142 0000
00A144 0000
00A146 F89A

L00A148:							;cdb command AE "MPEG Get LSI"
00A148 2CCA     	XOR     	R12,R12		;
00A14A 2DDA     	XOR     	R13,R13		;
00A14C D30D     	MOV.L   	@(#034,PC),R3	;
00A14E 2F16     	MOV.L   	R1,@-R15		;
00A150 4F22     	STS.L   	PR,@-R15		;
00A152 430B     	JSR     	@R3			;
00A154 0009     	NOP     				;
00A156 4F26     	LDS.L   	@R15+,PR		;
00A158 61F6     	MOV.L   	@R15+,R1		;
00A15A 631C     	EXTU.B   	R1,R3			;
00A15C 6019     	SWAP.W   	R1,R0			;
00A15E C802     	TST     	#02,R0		;
00A160 8B0C     	BF      	#018			;
00A162 D40A     	MOV.L   	@(#028,PC),R4	;
00A164 4301     	SHLR    	R3			;
00A166 4300     	SHLL    	R3			;
00A168 E016     	MOV     	#16,R0		;
00A16A 3036     	CMP/HI 	R3,R0			;
00A16C 8904     	BT      	#008			;
00A16E 73FC     	ADD     	#FC,R3		;
00A170 E01A     	MOV     	#1A,R0		;
00A172 3036     	CMP/HI 	R3,R0			;
00A174 8900     	BT      	#000			;
00A176 73FE     	ADD     	#FE,R3		;
00A178 A001     	BRA     	#0002			;
00A17A 343C     	ADD     	R3,R4			;
00A17C D402     	MOV.L   	@(#008,PC),R4	;
00A17E 6D41     	MOV.W   	@R4,R13		;
00A180 000B     	RTS     				;
00A182 2BBA     	XOR     	R11,R11		;
00A184 0000
00A186 91A8
00A188 0F00
00A18A 0884
00A18C 0F00
00A18E 0854

mpegv_int:							;ITU2 IMIB2 handler
00A190 2F06     	MOV.L   	R0,@-R15		;
00A192 2F16     	MOV.L   	R1,@-R15		;
00A194 2F26     	MOV.L   	R2,@-R15		;
00A196 2F36     	MOV.L   	R3,@-R15		;
00A198 2F46     	MOV.L   	R4,@-R15		;
00A19A 2F56     	MOV.L   	R5,@-R15		;
00A19C 2F66     	MOV.L   	R6,@-R15		;
00A19E 2F76     	MOV.L   	R7,@-R15		;
00A1A0 2F86     	MOV.L   	R8,@-R15		;
00A1A2 2F96     	MOV.L   	R9,@-R15		;
00A1A4 2FA6     	MOV.L   	R10,@-R15		;
00A1A6 2FB6     	MOV.L   	R11,@-R15		;
00A1A8 2FC6     	MOV.L   	R12,@-R15		;
00A1AA 2FD6     	MOV.L   	R13,@-R15		;
00A1AC 4F22     	STS.L   	PR,@-R15		;
00A1AE 4F13     	STC.L   	GBR,@-R15		;
00A1B0 4F02     	STS.L   	MACH,@-R15		;
00A1B2 4F12     	STS.L   	MACL,@-R15		;
00A1B4 DD51     	MOV.L   	@(#144,PC),R13	;
00A1B6 6CD2     	MOV.L   	@R13,R12		;
00A1B8 1CF2     	MOV.L   	R15,@(#8,R12)	;
00A1BA DF51     	MOV.L   	@(#144,PC),R15	;
00A1BC D351     	MOV.L   	@(#144,PC),R3	;
00A1BE 431E     	LDC     	R3,GBR		;
00A1C0 E01B     	MOV     	#1B,R0		;
00A1C2 CDFD     	AND.B   	#FD,@(R0,GBR)	;
00A1C4 D251     	MOV.L   	@(#144,PC),R2	;
00A1C6 6021     	MOV.W   	@R2,R0		;
00A1C8 0009     	NOP     				;
00A1CA 0009     	NOP     				;
00A1CC 0009     	NOP     				;
00A1CE 0009     	NOP     				;
00A1D0 0009     	NOP     				;
00A1D2 6121     	MOV.W   	@R2,R1		;
00A1D4 2019     	AND     	R1,R0			;
00A1D6 0009     	NOP     				;
00A1D8 0009     	NOP     				;
00A1DA 0009     	NOP     				;
00A1DC 0009     	NOP     				;
00A1DE 0009     	NOP     				;
00A1E0 6121     	MOV.W   	@R2,R1		;
00A1E2 2109     	AND     	R0,R1			;
00A1E4 D34E     	MOV.L   	@(#138,PC),R3	;
00A1E6 8432     	MOV.B   	@(#02,R3),R0	;
00A1E8 C880     	TST     	#80,R0		;
00A1EA 8B01     	BF      	#002			;
00A1EC A0A8     	BRA     	#0150			;
00A1EE 0009     	NOP     				;
00A1F0 D345     	MOV.L   	@(#114,PC),R3	;
00A1F2 8531     	MOV.W   	@(#02,R3),R0	;
00A1F4 6503     	MOV     	R0,R5			;
00A1F6 949F     	MOV.W   	@(#13E,PC),R4	;
00A1F8 E0FF     	MOV     	#FF,R0		;
00A1FA 8131     	MOV.W   	R0,@(#02,R3)	;
00A1FC 254B     	OR      	R4,R5			;
00A1FE 2159     	AND     	R5,R1			;
00A200 2311     	MOV.W   	R1,@R3		;
00A202 929C     	MOV.W   	@(#138,PC),R2	;
00A204 6017     	NOT     	R1,R0			;
00A206 2029     	AND     	R2,R0			;
00A208 D647     	MOV.L   	@(#11C,PC),R6	;
00A20A 6761     	MOV.W   	@R6,R7		;
00A20C E310     	MOV     	#10,R3		;
00A20E 2138     	TST     	R3,R1			;
00A210 8B01     	BF      	#002			;
00A212 6227     	NOT     	R2,R2			;
00A214 2729     	AND     	R2,R7			;
00A216 270B     	OR      	R0,R7			;
00A218 2671     	MOV.W   	R7,@R6		;
00A21A 244A     	XOR     	R4,R4			;
00A21C E502     	MOV     	#02,R5		;
00A21E E040     	MOV     	#40,R0		;
00A220 2108     	TST     	R0,R1			;
00A222 8B0B     	BF      	#016			;
00A224 245B     	OR      	R5,R4			;
00A226 DD3E     	MOV.L   	@(#0F8,PC),R13	;
00A228 84D3     	MOV.B   	@(#03,R13),R0	;
00A22A C844     	TST     	#44,R0		;
00A22C 8906     	BT      	#00C			;
00A22E D632     	MOV.L   	@(#0C8,PC),R6	;
00A230 4F22     	STS.L   	PR,@-R15		;
00A232 2F06     	MOV.L   	R0,@-R15		;
00A234 460B     	JSR     	@R6			;
00A236 0009     	NOP     				;
00A238 60F6     	MOV.L   	@R15+,R0		;
00A23A 4F26     	LDS.L   	@R15+,PR		;
00A23C E620     	MOV     	#20,R6		;
00A23E 6668     	SWAP.B   	R6,R6			;
00A240 2168     	TST     	R6,R1			;
00A242 8B0D     	BF      	#01A			;
00A244 D336     	MOV.L   	@(#0D8,PC),R3	;
00A246 8431     	MOV.B   	@(#01,R3),R0	;
00A248 CB01     	OR      	#01,R0		;
00A24A 8031     	MOV.B   	R0,@(#01,R3)	;
00A24C D235     	MOV.L   	@(#0D4,PC),R2	;
00A24E 8422     	MOV.B   	@(#02,R2),R0	;
00A250 CB04     	OR      	#04,R0		;
00A252 8022     	MOV.B   	R0,@(#02,R2)	;
00A254 8426     	MOV.B   	@(#06,R2),R0	;
00A256 C804     	TST     	#04,R0		;
00A258 8902     	BT      	#004			;
00A25A D32D     	MOV.L   	@(#0B4,PC),R3	;
00A25C 906E     	MOV.W   	@(#0DC,PC),R0	;
00A25E 2301     	MOV.W   	R0,@R3		;
00A260 4601     	SHLR    	R6			;
00A262 2168     	TST     	R6,R1			;
00A264 8B03     	BF      	#006			;
00A266 D32E     	MOV.L   	@(#0B8,PC),R3	;
00A268 8431     	MOV.B   	@(#01,R3),R0	;
00A26A CB04     	OR      	#04,R0		;
00A26C 8031     	MOV.B   	R0,@(#01,R3)	;
00A26E 4501     	SHLR    	R5			;
00A270 4601     	SHLR    	R6			;
00A272 2168     	TST     	R6,R1			;
00A274 8B00     	BF      	#000			;
00A276 245B     	OR      	R5,R4			;
00A278 4608     	SHLL2   	R6			;
00A27A 4608     	SHLL2   	R6			;
00A27C 2168     	TST     	R6,R1			;
00A27E 8B09     	BF      	#012			;
00A280 D228     	MOV.L   	@(#0A0,PC),R2	;
00A282 8423     	MOV.B   	@(#03,R2),R0	;
00A284 CB10     	OR      	#10,R0		;
00A286 8023     	MOV.B   	R0,@(#03,R2)	;
00A288 8427     	MOV.B   	@(#07,R2),R0	;
00A28A C810     	TST     	#10,R0		;
00A28C 8902     	BT      	#004			;
00A28E D320     	MOV.L   	@(#080,PC),R3	;
00A290 9054     	MOV.W   	@(#0A8,PC),R0	;
00A292 2301     	MOV.W   	R0,@R3		;
00A294 4508     	SHLL2   	R5			;
00A296 E610     	MOV     	#10,R6		;
00A298 2168     	TST     	R6,R1			;
00A29A 8B21     	BF      	#042			;
00A29C 245B     	OR      	R5,R4			;
00A29E D220     	MOV.L   	@(#080,PC),R2	;
00A2A0 8423     	MOV.B   	@(#03,R2),R0	;
00A2A2 C811     	TST     	#11,R0		;
00A2A4 8919     	BT      	#032			;
00A2A6 6503     	MOV     	R0,R5			;
00A2A8 D320     	MOV.L   	@(#080,PC),R3	;
00A2AA 853A     	MOV.W   	@(#14,R3),R0	;
00A2AC C941     	AND     	#41,R0		;
00A2AE 8841     	CMP/EQ  	#41,R0		;
00A2B0 8B13     	BF      	#026			;
00A2B2 D31A     	MOV.L   	@(#068,PC),R3	;
00A2B4 6030     	MOV.B   	@R3,R0		;
00A2B6 8804     	CMP/EQ  	#04,R0		;
00A2B8 8901     	BT      	#002			;
00A2BA 8805     	CMP/EQ  	#05,R0		;
00A2BC 8B0D     	BF      	#01A			;
00A2BE 4F22     	STS.L   	PR,@-R15		;
00A2C0 6053     	MOV     	R5,R0			;
00A2C2 C801     	TST     	#01,R0		;
00A2C4 8902     	BT      	#004			;
00A2C6 D21A     	MOV.L   	@(#068,PC),R2	;
00A2C8 420B     	JSR     	@R2			;
00A2CA 0009     	NOP     				;
00A2CC 6053     	MOV     	R5,R0			;
00A2CE C810     	TST     	#10,R0		;
00A2D0 8902     	BT      	#004			;
00A2D2 D218     	MOV.L   	@(#060,PC),R2	;
00A2D4 420B     	JSR     	@R2			;
00A2D6 0009     	NOP     				;
00A2D8 4F26     	LDS.L   	@R15+,PR		;
00A2DA D20D     	MOV.L   	@(#034,PC),R2	;
00A2DC 932D     	MOV.W   	@(#05A,PC),R3	;
00A2DE 2231     	MOV.W   	R3,@R2		;
00A2E0 2448     	TST     	R4,R4			;
00A2E2 8905     	BT      	#00A			;
00A2E4 D50E     	MOV.L   	@(#038,PC),R5	;
00A2E6 8456     	MOV.B   	@(#06,R5),R0	;
00A2E8 204B     	OR      	R4,R0			;
00A2EA 8056     	MOV.B   	R0,@(#06,R5)	;
00A2EC DB09     	MOV.L   	@(#024,PC),R11	;
00A2EE C321     	TRAPA   	#21			;
00A2F0 D009     	MOV.L   	@(#024,PC),R0	;
00A2F2 402B     	JMP     	@R0			;L00102E
00A2F4 0009     	NOP     				;
00A2F6 0009     	NOP     				;
00A2F8 0000     	
00A2FA F82A     	
00A2FC 0F00
00A2FE 01D4
00A300 0F00
00A302 08F8
00A304 05FF
00A306 FF00
00A308 0F00
00A30A 0850
00A30C 0A10
00A30E 0000
00A310 0A00
00A312 001E
00A314 088C
00A316 0010
00A318 0000102E
00A31C 0F00
00A31E 089C
00A320 0F00
00A322 0890
00A324 0F00
00A326 0848
00A328 0F00
00A32A 0846
00A32C 0F00
00A32E 0854
00A330 0000
00A332 F822
00A334 0000
00A336 F826
00A338 030F     	MAC.L   	@R0+,@R3+		;
00A33A 1000     	MOV.L   	R0,@(#0,R0)		;
00A33C 2000     	MOV.B   	R0,@R0		;
00A33E 016F     	MAC.L   	@R6+,@R1+		;
00A340 D207     	MOV.L   	@(#01C,PC),R2	;
00A342 233A     	XOR     	R3,R3			;
00A344 6013     	MOV     	R1,R0			;
00A346 C810     	TST     	#10,R0		;
00A348 8B01     	BF      	#002			;
00A34A 7301     	ADD     	#01,R3		;
00A34C 6338     	SWAP.B   	R3,R3			;
00A34E C820     	TST     	#20,R0		;
00A350 8B00     	BF      	#000			;
00A352 7301     	ADD     	#01,R3		;
00A354 6021     	MOV.W   	@R2,R0		;
00A356 303C     	ADD     	R3,R0			;
00A358 2201     	MOV.W   	R0,@R2		;
00A35A AFC9     	BRA     	#1F92			;
00A35C 0009     	NOP     				;
00A35E 0009
00A360 0F00
00A362 089E

L00A364:							;mpeg_init()
00A364 DA25     	MOV.L   	@(#094,PC),R10	;
00A366 D926     	MOV.L   	@(#098,PC),R9	;
00A368 D826     	MOV.L   	@(#098,PC),R8	;
00A36A E080     	MOV     	#80,R0		;
00A36C 4018     	SHLL8   	R0			;
00A36E 6007     	NOT     	R0,R0			;
00A370 81AD     	MOV.W   	R0,@(#1A,R10)	;MPEG.REG1A = 0x7FFF;
00A372 200A     	XOR     	R0,R0			;
00A374 2802     	MOV.L   	R0,@R8		;*(u32*)0x0F000840 = 0x00000000;
00A376 D226     	MOV.L   	@(#098,PC),R2	;
00A378 4F22     	STS.L   	PR,@-R15		;
00A37A 420B     	JSR     	@R2			;mpeg_sh_init(); //L00A460
00A37C 0009     	NOP     				;
00A37E 4F26     	LDS.L   	@R15+,PR		;
00A380 E06C     	MOV     	#6C,R0		;
00A382 81A1     	MOV.W   	R0,@(#02,R10)	;MPEG.REG02 = 0x006C;
00A384 200A     	XOR     	R0,R0			;
00A386 7A1E     	ADD     	#1E,R10		;
00A388 2A01     	MOV.W   	R0,@R10		;MPEG.REG1E = 0x0000;
00A38A 2901     	MOV.W   	R0,@R9		;MPEG.DATA = 0x0000;
00A38C 6083     	MOV     	R8,R0			;
00A38E C218     	MOV.L   	R0,@(#060,GBR)	;SH1.DMAC.SAR2 = 0x0F000840;
00A390 C21C     	MOV.L   	R0,@(#070,GBR)	;SH1.DMAC.SAR3 = 0x0F000840;
00A392 60A3     	MOV     	R10,R0		;
00A394 C219     	MOV.L   	R0,@(#064,GBR)	;SH1.DMAC.DAR2 = 0x0A10001E;
00A396 6093     	MOV     	R9,R0			;
00A398 C21D     	MOV.L   	R0,@(#074,GBR)	;SH1.DMAC.DAR3 = &MPEG.DATA;
00A39A E002     	MOV     	#02,R0		;
00A39C C135     	MOV.W   	R0,@(#06A,GBR)	;SH1.DMAC.TCR2 = 0x0002;
00A39E C13D     	MOV.W   	R0,@(#07A,GBR)	;SH1.DMAC.TCR3 = 0x0002;
00A3A0 903A     	MOV.W   	@(#074,PC),R0	;
00A3A2 C137     	MOV.W   	R0,@(#06E,GBR)	;SH1.DMAC.CHCR2 = 0x090D;
00A3A4 9039     	MOV.W   	@(#072,PC),R0	;
00A3A6 C13F     	MOV.W   	R0,@(#07E,GBR)	;SH1.DMAC.CHCR2 = 0x080D;
00A3A8 7A02     	ADD     	#02,R10		;
00A3AA E1EF     	MOV     	#EF,R1		;
00A3AC 2A11     	MOV.W   	R1,@R10		;MPEG.REG20 = 0xFFEF;
00A3AE E01B     	MOV     	#1B,R0		;
00A3B0 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR2 &= 0xF8;
00A3B2 000B     	RTS     				;
00A3B4 0009     	NOP     				;
00A3B6 0009

L00A3B8:							;read_mpeg_input()
00A3B8 DA10     	MOV.L   	@(#040,PC),R10	;
00A3BA E901     	MOV     	#01,R9		;
00A3BC 288A     	XOR     	R8,R8			;temp = 0x00000000;
00A3BE 85A1     	MOV.W   	@(#02,R10),R0	;
00A3C0 886C     	CMP/EQ  	#6C,R0		;
00A3C2 8900     	BT      	L00A3C6		;MPEG.REG02 == 0x006C
00A3C4 289B     	OR      	R9,R8			;temp |= 0x00000001;
L00A3C6:
00A3C6 4900     	SHLL    	R9			;
00A3C8 D20F     	MOV.L   	@(#03C,PC),R2	;
00A3CA 421E     	LDC     	R2,GBR		;
00A3CC C411     	MOV.B   	@(#011,GBR),R0	;
00A3CE 4001     	SHLR    	R0			;
00A3D0 8900     	BT      	L00A3D4		;SH1.ITU.TSR1[0] == 1
00A3D2 289B     	OR      	R9,R8			;temp |= 0x00000002;
L00A3D4:
00A3D4 4900     	SHLL    	R9			;
00A3D6 C41B     	MOV.B   	@(#01B,GBR),R0	;
00A3D8 4001     	SHLR    	R0			;
00A3DA 4001     	SHLR    	R0			;
00A3DC 8900     	BT      	L00A3E0		;SH1.ITU.TSR2[1] == 1
00A3DE 289B     	OR      	R9,R8			;temp |= 0x00000004;
L00A3E0:
00A3E0 4900     	SHLL    	R9			;
00A3E2 C407     	MOV.B   	@(#007,GBR),R0	;
00A3E4 4001     	SHLR    	R0			;
00A3E6 8900     	BT      	L00A3EA		;SH1.ITU.TSR0[0] == 1
00A3E8 289B     	OR      	R9,R8			;temp |= 0x00000008;
L00A3EA:
00A3EA D20A     	MOV.L   	@(#028,PC),R2	;
00A3EC 4F22     	STS.L   	PR,@-R15		;
00A3EE 420B     	JSR     	@R2			;mpeg_sh_init2(); //L00A490
00A3F0 0009     	NOP     				;
00A3F2 4F26     	LDS.L   	@R15+,PR		;
00A3F4 6183     	MOV     	R8,R1			;R1 = temp;
00A3F6 000B     	RTS     				;
00A3F8 6083     	MOV     	R8,R0			;return temp;
00A3FA 0009
00A3FC 0A100000
00A400 0A180000
00A404 0F000840
00A408 05FFFF00
00A40C 05FF
00A40E FF00
00A410 0000A460
00A414 0000A490
00A418 090D
00A41A 080D
00A41C D32A     	MOV.L   	@(#0A8,PC),R3	;
00A41E E080     	MOV     	#80,R0		;
00A420 4018     	SHLL8   	R0			;
00A422 6007     	NOT     	R0,R0			;
00A424 813D     	MOV.W   	R0,@(#1A,R3)	;
00A426 D50A     	MOV.L   	@(#028,PC),R5	;
00A428 4F22     	STS.L   	PR,@-R15		;
00A42A 450B     	JSR     	@R5			;
00A42C 0009     	NOP     				;
00A42E B04F     	BRS     	#009E			;
00A430 0009     	NOP     				;
00A432 D508     	MOV.L   	@(#020,PC),R5	;
00A434 450B     	JSR     	@R5			;
00A436 0009     	NOP     				;
00A438 4F26     	LDS.L   	@R15+,PR		;
00A43A D207     	MOV.L   	@(#01C,PC),R2	;
00A43C D503     	MOV.L   	@(#00C,PC),R5	;
00A43E 900D     	MOV.W   	@(#01A,PC),R0	;
00A440 2501     	MOV.W   	R0,@R5		;
00A442 422B     	JMP     	@R2			;
00A444 0009     	NOP     				;
00A446 0009     	NOP     				;
00A448 0F00
00A44A 0892
00A44C 0A00
00A44E 001E
00A450 0000
00A452 A460
00A454 0000
00A456 F812
00A458 0000
00A45A F80A
00A45C 0800
00A45E 0009

L00A460:							;mpeg_sh_init()
00A460 D11A     	MOV.L   	@(#068,PC),R1	;
00A462 411E     	LDC     	R1,GBR		;
00A464 E06F     	MOV     	#6F,R0		;
00A466 CDFC     	AND.B   	#FC,@(R0,GBR)	;SH1.DMAC.CHCR2[7:0] &= 0xFC;
00A468 E07F     	MOV     	#7F,R0		;
00A46A CDFC     	AND.B   	#FC,@(R0,GBR)	;SH1.DMAC.CHCR3[7:0] &= 0xFC;
00A46C E00D     	MOV     	#0D,R0		;
00A46E C005     	MOV.B   	R0,@(#005,GBR)	;SH1.ITU.TIOR0 = 0x0D;
00A470 C00F     	MOV.B   	R0,@(#00F,GBR)	;SH1.ITU.TIOR1 = 0x0D;
00A472 E0DD     	MOV     	#DD,R0		;
00A474 C019     	MOV.B   	R0,@(#019,GBR)	;SH1.ITU.TIOR2 = 0xDD;
00A476 E007     	MOV     	#07,R0		;
00A478 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR0 &= 0xF8;
00A47A E011     	MOV     	#11,R0		;
00A47C CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR1 &= 0xF8;
00A47E E01B     	MOV     	#1B,R0		;
00A480 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR2 &= 0xF8;
00A482 E001     	MOV     	#01,R0		;
00A484 C006     	MOV.B   	R0,@(#006,GBR)	;SH1.ITU.TIER0 = 0x01;
00A486 C010     	MOV.B   	R0,@(#010,GBR)	;SH1.ITU.TIER1 = 0x01;
00A488 E003     	MOV     	#03,R0		;
00A48A C01A     	MOV.B   	R0,@(#01A,GBR)	;SH1.ITU.TIER = 0x03;
00A48C 000B     	RTS     				;
00A48E 0009     	NOP     				;

L00A490:							;mpeg_sh_init2()
00A490 D20D     	MOV.L   	@(#034,PC),R2	;
00A492 421E     	LDC     	R2,GBR		;
00A494 200A     	XOR     	R0,R0			;
00A496 C10D     	MOV.W   	R0,@(#01A,GBR)	;MPEG.REG1A = 0x0000;
00A498 D30C     	MOV.L   	@(#030,PC),R3	;
00A49A 431E     	LDC     	R3,GBR		;
00A49C E06F     	MOV     	#6F,R0		;
00A49E CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.DMAC.CHCR2[7:0] &= 0xF8;
00A4A0 E07F     	MOV     	#7F,R0		;
00A4A2 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.DMAC.CHCR3[7:0] &= 0xF8;
00A4A4 E006     	MOV     	#06,R0		;
00A4A6 CDFC     	AND.B   	#FC,@(R0,GBR)	;SH1.ITU.TIER0 &= 0xFC;
00A4A8 E010     	MOV     	#10,R0		;
00A4AA CDFC     	AND.B   	#FC,@(R0,GBR)	;SH1.ITU.TIER1 &= 0xFC;
00A4AC E01A     	MOV     	#1A,R0		;
00A4AE CDFC     	AND.B   	#FC,@(R0,GBR)	;SH1.ITU.TIER2 &= 0xFC;
00A4B0 E007     	MOV     	#07,R0		;
00A4B2 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR0 &= 0xF8;
00A4B4 E011     	MOV     	#11,R0		;
00A4B6 CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR1 &= 0xF8;
00A4B8 E01B     	MOV     	#1B,R0		;
00A4BA CDF8     	AND.B   	#F8,@(R0,GBR)	;SH1.ITU.TSR2 &= 0xF8;
00A4BC 200A     	XOR     	R0,R0			;
00A4BE C005     	MOV.B   	R0,@(#005,GBR)	;SH1.ITU.TIOR0 = 0x00;
00A4C0 C00F     	MOV.B   	R0,@(#00F,GBR)	;SH1.ITU.TIOR1 = 0x00;
00A4C2 C019     	MOV.B   	R0,@(#019,GBR)	;SH1.ITU.TIOR2 = 0x00;
00A4C4 000B     	RTS     				;
00A4C6 0009     	NOP     				;
00A4C8 0A100000
00A4CC 05FFFF00
00A4D0 DB2E     	MOV.L   	@(#0B8,PC),R11	;
00A4D2 DC2D     	MOV.L   	@(#0B4,PC),R12	;
00A4D4 200A     	XOR     	R0,R0			;
00A4D6 7B04     	ADD     	#04,R11		;
00A4D8 2B06     	MOV.L   	R0,@-R11		;
00A4DA 3CB0     	CMP/EQ 	R11,R12		;
00A4DC 8BFC     	BF      	#1F8			;
00A4DE DB2D     	MOV.L   	@(#0B4,PC),R11	;
00A4E0 DC2B     	MOV.L   	@(#0AC,PC),R12	;
00A4E2 200A     	XOR     	R0,R0			;
00A4E4 7B04     	ADD     	#04,R11		;
00A4E6 2B06     	MOV.L   	R0,@-R11		;
00A4E8 3CB0     	CMP/EQ 	R11,R12		;
00A4EA 8BFC     	BF      	#1F8			;
00A4EC 000B     	RTS     				;
00A4EE 0009     	NOP     				;

00A4F0 DC23     	MOV.L   	@(#08C,PC),R12	;
00A4F2 4F22     	STS.L   	PR,@-R15		;
00A4F4 4C0B     	JSR     	@R12			;
00A4F6 0009     	NOP     				;
00A4F8 4F26     	LDS.L   	@R15+,PR		;
00A4FA DB22     	MOV.L   	@(#088,PC),R11	;
00A4FC 85B4     	MOV.W   	@(#08,R11),R0	;
00A4FE DC27     	MOV.L   	@(#09C,PC),R12	;
00A500 9069     	MOV.W   	@(#0D2,PC),R0	;
00A502 2C01     	MOV.W   	R0,@R12		;
00A504 81B4     	MOV.W   	R0,@(#08,R11)	;
00A506 200A     	XOR     	R0,R0			;
00A508 2B01     	MOV.W   	R0,@R11		;
00A50A DB25     	MOV.L   	@(#094,PC),R11	;
00A50C D02C     	MOV.L   	@(#0B0,PC),R0	;
00A50E 2B02     	MOV.L   	R0,@R11		;
00A510 DB28     	MOV.L   	@(#0A0,PC),R11	;
00A512 E0FF     	MOV     	#FF,R0		;
00A514 2B02     	MOV.L   	R0,@R11		;
00A516 DC28     	MOV.L   	@(#0A0,PC),R12	;
00A518 905E     	MOV.W   	@(#0BC,PC),R0	;
00A51A 2C01     	MOV.W   	R0,@R12		;
00A51C 81C1     	MOV.W   	R0,@(#02,R12)	;
00A51E 81C2     	MOV.W   	R0,@(#04,R12)	;
00A520 DB28     	MOV.L   	@(#0A0,PC),R11	;
00A522 E014     	MOV     	#14,R0		;
00A524 2B01     	MOV.W   	R0,@R11		;
00A526 000B     	RTS     				;
00A528 0009     	NOP     				;
00A52A 0009     	NOP     				;
00A52C DC1A     	MOV.L   	@(#068,PC),R12	;
00A52E 4C1E     	LDC     	R12,GBR		;
00A530 D01C     	MOV.L   	@(#070,PC),R0	;
00A532 C200     	MOV.L   	R0,@(#000,GBR)	;
00A534 D01C     	MOV.L   	@(#070,PC),R0	;
00A536 C201     	MOV.L   	R0,@(#004,GBR)	;
00A538 904C     	MOV.W   	@(#098,PC),R0	;
00A53A C104     	MOV.W   	R0,@(#008,GBR)	;
00A53C E001     	MOV     	#01,R0		;
00A53E C107     	MOV.W   	R0,@(#00E,GBR)	;
00A540 C108     	MOV.W   	R0,@(#010,GBR)	;
00A542 D01A     	MOV.L   	@(#068,PC),R0	;
00A544 6B03     	MOV     	R0,R11		;
00A546 C205     	MOV.L   	R0,@(#014,GBR)	;
00A548 D019     	MOV.L   	@(#064,PC),R0	;
00A54A C206     	MOV.L   	R0,@(#018,GBR)	;
00A54C DC1E     	MOV.L   	@(#078,PC),R12	;
00A54E 4C1E     	LDC     	R12,GBR		;
00A550 C110     	MOV.W   	R0,@(#020,GBR)	;
00A552 60B3     	MOV     	R11,R0		;
00A554 C10D     	MOV.W   	R0,@(#01A,GBR)	;
00A556 6009     	SWAP.W   	R0,R0			;
00A558 C10A     	MOV.W   	R0,@(#014,GBR)	;
00A55A D012     	MOV.L   	@(#048,PC),R0	;
00A55C C101     	MOV.W   	R0,@(#002,GBR)	;
00A55E 6009     	SWAP.W   	R0,R0			;
00A560 C100     	MOV.W   	R0,@(#000,GBR)	;
00A562 DB16     	MOV.L   	@(#058,PC),R11	;
00A564 DC0C     	MOV.L   	@(#030,PC),R12	;
00A566 85C1     	MOV.W   	@(#02,R12),R0	;
00A568 2B01     	MOV.W   	R0,@R11		;
00A56A 85C2     	MOV.W   	@(#04,R12),R0	;
00A56C 81B1     	MOV.W   	R0,@(#02,R11)	;
00A56E DC0C     	MOV.L   	@(#030,PC),R12	;
00A570 60C2     	MOV.L   	@R12,R0		;
00A572 DB16     	MOV.L   	@(#058,PC),R11	;
00A574 20B9     	AND     	R11,R0		;
00A576 DB16     	MOV.L   	@(#058,PC),R11	;
00A578 20BB     	OR      	R11,R0		;
00A57A 2C02     	MOV.L   	R0,@R12		;
00A57C 000B     	RTS     				;
00A57E 0009     	NOP     				;
00A580 0000
00A582 F80E
00A584 0A18
00A586 0000
00A588 0F00
00A58A 0840
00A58C 0F00
00A58E 089C
00A590 0907
00A592 52A0
00A594 0907
00A596 53E8
00A598 0F00
00A59A 0854
00A59C 0F00
00A59E 0884
00A5A0 0F00
00A5A2 0890
00A5A4 88FE
00A5A6 0096
00A5A8 0026
00A5AA 02C0
00A5AC FFF3
00A5AE FF7E
00A5B0 FFFF
00A5B2 47AF
00A5B4 0F00
00A5B6 0850
00A5B8 0F00
00A5BA 0898
00A5BC 0907
00A5BE 5320
00A5C0 6781
00A5C2 8022
00A5C4 0907
00A5C6 52E0
00A5C8 0A10
00A5CA 0000
00A5CC D800
00A5CE 0400
00A5D0 2781
00A5D2 8000
00A5D4 01E0
00A5D6 8209
00A5D8 0101
00A5DA 0009     	NOP     				;
00A5DC D309     	MOV.L   	@(#024,PC),R3	;
00A5DE 6229     	SWAP.W   	R2,R2			;
00A5E0 6228     	SWAP.B   	R2,R2			;
00A5E2 6023     	MOV     	R2,R0			;
00A5E4 C880     	TST     	#80,R0		;
00A5E6 8B05     	BF      	#00A			;
00A5E8 4001     	SHLR    	R0			;
00A5EA 4001     	SHLR    	R0			;
00A5EC 8B02     	BF      	#004			;
00A5EE D257     	MOV.L   	@(#15C,PC),R2	;
00A5F0 A09F     	BRA     	#013E			;
00A5F2 0009     	NOP     				;
00A5F4 D404     	MOV.L   	@(#010,PC),R4	;
00A5F6 441E     	LDC     	R4,GBR		;
00A5F8 8437     	MOV.B   	@(#07,R3),R0	;
00A5FA C802     	TST     	#02,R0		;
00A5FC 8906     	BT      	#00C			;
00A5FE D250     	MOV.L   	@(#140,PC),R2	;
00A600 A097     	BRA     	#012E			;
00A602 0009     	NOP     				;
00A604 0F00
00A606 0890
00A608 0F00
00A60A 0854
00A60C C50A     	MOV.W   	@(#014,GBR),R0	;
00A60E 6603     	MOV     	R0,R6			;
00A610 6763     	MOV     	R6,R7			;
00A612 D94C     	MOV.L   	@(#130,PC),R9	;
00A614 6019     	SWAP.W   	R1,R0			;
00A616 C880     	TST     	#80,R0		;
00A618 8B53     	BF      	#0A6			;
00A61A C804     	TST     	#04,R0		;
00A61C 6803     	MOV     	R0,R8			;
00A61E 8432     	MOV.B   	@(#02,R3),R0	;
00A620 8905     	BT      	#00A			;
00A622 CB40     	OR      	#40,R0		;
00A624 8032     	MOV.B   	R0,@(#02,R3)	;
00A626 6077     	NOT     	R7,R0			;
00A628 CB80     	OR      	#80,R0		;
00A62A A04A     	BRA     	#0094			;
00A62C 6707     	NOT     	R0,R7			;
00A62E 6503     	MOV     	R0,R5			;
00A630 6063     	MOV     	R6,R0			;
00A632 C840     	TST     	#40,R0		;
00A634 8B0A     	BF      	#014			;
00A636 8437     	MOV.B   	@(#07,R3),R0	;
00A638 C804     	TST     	#04,R0		;
00A63A 8902     	BT      	#004			;
00A63C D240     	MOV.L   	@(#100,PC),R2	;
00A63E A078     	BRA     	#00F0			;
00A640 0009     	NOP     				;
00A642 C50B     	MOV.W   	@(#016,GBR),R0	;
00A644 EABF     	MOV     	#BF,R10		;
00A646 6AA8     	SWAP.B   	R10,R10		;
00A648 20A9     	AND     	R10,R0		;
00A64A 819D     	MOV.W   	R0,@(#1A,R9)	;
00A64C 6083     	MOV     	R8,R0			;
00A64E C903     	AND     	#03,R0		;
00A650 8802     	CMP/EQ  	#02,R0		;
00A652 6053     	MOV     	R5,R0			;
00A654 8B02     	BF      	#004			;
00A656 D23D     	MOV.L   	@(#0F4,PC),R2	;
00A658 A06B     	BRA     	#00D6			;
00A65A 0009     	NOP     				;
00A65C C840     	TST     	#40,R0		;
00A65E 890D     	BT      	#01A			;
00A660 C9BF     	AND     	#BF,R0		;
00A662 8032     	MOV.B   	R0,@(#02,R3)	;
00A664 200A     	XOR     	R0,R0			;
00A666 819D     	MOV.W   	R0,@(#1A,R9)	;
00A668 6073     	MOV     	R7,R0			;
00A66A CB80     	OR      	#80,R0		;
00A66C 6703     	MOV     	R0,R7			;
00A66E D007     	MOV.L   	@(#01C,PC),R0	;
00A670 4F13     	STC.L   	GBR,@-R15		;
00A672 4F22     	STS.L   	PR,@-R15		;
00A674 400B     	JSR     	@R0			;
00A676 0009     	NOP     				;
00A678 4F26     	LDS.L   	@R15+,PR		;
00A67A 4F17     	LDC.L   	@R15+,GBR		;
00A67C 6083     	MOV     	R8,R0			;
00A67E C802     	TST     	#02,R0		;
00A680 C500     	MOV.W   	@(#000,GBR),R0	;
00A682 8905     	BT      	#00A			;
00A684 6007     	NOT     	R0,R0			;
00A686 CB08     	OR      	#08,R0		;
00A688 A003     	BRA     	#0006			;
00A68A 6007     	NOT     	R0,R0			;
00A68C 0000
00A68E F80E
00A690 CB08     	OR      	#08,R0		;
00A692 C100     	MOV.W   	R0,@(#000,GBR)	;
00A694 2901     	MOV.W   	R0,@R9		;
00A696 6083     	MOV     	R8,R0			;
00A698 C801     	TST     	#01,R0		;
00A69A 8905     	BT      	#00A			;
00A69C 6077     	NOT     	R7,R0			;
00A69E CB40     	OR      	#40,R0		;
00A6A0 6707     	NOT     	R0,R7			;
00A6A2 C500     	MOV.W   	@(#000,GBR),R0	;
00A6A4 A00B     	BRA     	#0016			;
00A6A6 CB01     	OR      	#01,R0		;
00A6A8 6073     	MOV     	R7,R0			;
00A6AA CBC0     	OR      	#C0,R0		;
00A6AC 6703     	MOV     	R0,R7			;
00A6AE 6030     	MOV.B   	@R3,R0		;
00A6B0 C820     	TST     	#20,R0		;
00A6B2 C500     	MOV.W   	@(#000,GBR),R0	;
00A6B4 8B01     	BF      	#002			;
00A6B6 A002     	BRA     	#0004			;
00A6B8 CB01     	OR      	#01,R0		;
00A6BA 4001     	SHLR    	R0			;
00A6BC 4000     	SHLL    	R0			;
00A6BE C100     	MOV.W   	R0,@(#000,GBR)	;
00A6C0 2901     	MOV.W   	R0,@R9		;
00A6C2 6013     	MOV     	R1,R0			;
00A6C4 C880     	TST     	#80,R0		;
00A6C6 8B09     	BF      	#012			;
00A6C8 6073     	MOV     	R7,R0			;
00A6CA 4101     	SHLR    	R1			;
00A6CC 8901     	BT      	#002			;
00A6CE A003     	BRA     	#0006			;
00A6D0 CB02     	OR      	#02,R0		;
00A6D2 6007     	NOT     	R0,R0			;
00A6D4 CB02     	OR      	#02,R0		;
00A6D6 6007     	NOT     	R0,R0			;
00A6D8 6703     	MOV     	R0,R7			;
00A6DA 4100     	SHLL    	R1			;
00A6DC 6118     	SWAP.B   	R1,R1			;
00A6DE 6013     	MOV     	R1,R0			;
00A6E0 C880     	TST     	#80,R0		;
00A6E2 8B08     	BF      	#010			;
00A6E4 6073     	MOV     	R7,R0			;
00A6E6 4101     	SHLR    	R1			;
00A6E8 8901     	BT      	#002			;
00A6EA A003     	BRA     	#0006			;
00A6EC CB01     	OR      	#01,R0		;
00A6EE 6007     	NOT     	R0,R0			;
00A6F0 CB01     	OR      	#01,R0		;
00A6F2 6007     	NOT     	R0,R0			;
00A6F4 6703     	MOV     	R0,R7			;
00A6F6 267A     	XOR     	R7,R6			;
00A6F8 2668     	TST     	R6,R6			;
00A6FA 8902     	BT      	#004			;
00A6FC 6073     	MOV     	R7,R0			;
00A6FE C10A     	MOV.W   	R0,@(#014,GBR)	;
00A700 819A     	MOV.W   	R0,@(#14,R9)	;
00A702 6023     	MOV     	R2,R0			;
00A704 C880     	TST     	#80,R0		;
00A706 8B06     	BF      	#00C			;
00A708 8431     	MOV.B   	@(#01,R3),R0	;
00A70A 4201     	SHLR    	R2			;
00A70C 8B01     	BF      	#002			;
00A70E A001     	BRA     	#0002			;
00A710 C97F     	AND     	#7F,R0		;
00A712 CB80     	OR      	#80,R0		;
00A714 8031     	MOV.B   	R0,@(#01,R3)	;
00A716 6030     	MOV.B   	@R3,R0		;
00A718 C801     	TST     	#01,R0		;
00A71A 8909     	BT      	#012			;
00A71C 6103     	MOV     	R0,R1			;
00A71E C50A     	MOV.W   	@(#014,GBR),R0	;
00A720 C941     	AND     	#41,R0		;
00A722 8841     	CMP/EQ  	#41,R0		;
00A724 8904     	BT      	#008			;
00A726 6013     	MOV     	R1,R0			;
00A728 C9FE     	AND     	#FE,R0		;
00A72A C9FD     	AND     	#FD,R0		;
00A72C C9EF     	AND     	#EF,R0		;
00A72E 2300     	MOV.B   	R0,@R3		;
00A730 D205     	MOV.L   	@(#014,PC),R2	;
00A732 4F22     	STS.L   	PR,@-R15		;
00A734 420B     	JSR     	@R2			;
00A736 0009     	NOP     				;
00A738 4F26     	LDS.L   	@R15+,PR		;
00A73A 000B     	RTS     				;
00A73C 2BBA     	XOR     	R11,R11		;
00A73E 0009     	NOP     				;
00A740 0000
00A742 F896
00A744 0A10
00A746 0000
00A748 0000
00A74A F89A
00A74C 0000
00A74E F892
00A750 D32F     	MOV.L   	@(#0BC,PC),R3	;
00A752 8432     	MOV.B   	@(#02,R3),R0	;
00A754 C808     	TST     	#08,R0		;
00A756 8902     	BT      	#004			;
00A758 D22E     	MOV.L   	@(#0B8,PC),R2	;
00A75A A052     	BRA     	#00A4			;
00A75C 0009     	NOP     				;
00A75E 6030     	MOV.B   	@R3,R0		;
00A760 C9EF     	AND     	#EF,R0		;
00A762 6403     	MOV     	R0,R4			;
00A764 6013     	MOV     	R1,R0			;
00A766 C880     	TST     	#80,R0		;
00A768 8B06     	BF      	#00C			;
00A76A 4001     	SHLR    	R0			;
00A76C 6043     	MOV     	R4,R0			;
00A76E 8901     	BT      	#002			;
00A770 A001     	BRA     	#0002			;
00A772 CB04     	OR      	#04,R0		;
00A774 C9FB     	AND     	#FB,R0		;
00A776 6403     	MOV     	R0,R4			;
00A778 6018     	SWAP.B   	R1,R0			;
00A77A C880     	TST     	#80,R0		;
00A77C 8B06     	BF      	#00C			;
00A77E 4001     	SHLR    	R0			;
00A780 6043     	MOV     	R4,R0			;
00A782 8901     	BT      	#002			;
00A784 A001     	BRA     	#0002			;
00A786 CB40     	OR      	#40,R0		;
00A788 C9BF     	AND     	#BF,R0		;
00A78A 6403     	MOV     	R0,R4			;
00A78C 6019     	SWAP.W   	R1,R0			;
00A78E C880     	TST     	#80,R0		;
00A790 8B0F     	BF      	#01E			;
00A792 4001     	SHLR    	R0			;
00A794 8908     	BT      	#010			;
00A796 D120     	MOV.L   	@(#080,PC),R1	;
00A798 851A     	MOV.W   	@(#14,R1),R0	;
00A79A C941     	AND     	#41,R0		;
00A79C 8841     	CMP/EQ  	#41,R0		;
00A79E 8B08     	BF      	#010			;
00A7A0 6043     	MOV     	R4,R0			;
00A7A2 CB01     	OR      	#01,R0		;
00A7A4 A004     	BRA     	#0008			;
00A7A6 CB02     	OR      	#02,R0		;
00A7A8 6043     	MOV     	R4,R0			;
00A7AA C9FE     	AND     	#FE,R0		;
00A7AC C9FD     	AND     	#FD,R0		;
00A7AE C9EF     	AND     	#EF,R0		;
00A7B0 6403     	MOV     	R0,R4			;
00A7B2 6043     	MOV     	R4,R0			;
00A7B4 C801     	TST     	#01,R0		;
00A7B6 8907     	BT      	#00E			;
00A7B8 E5CC     	MOV     	#CC,R5		;
00A7BA 655C     	EXTU.B   	R5,R5			;
00A7BC 2059     	AND     	R5,R0			;
00A7BE 3050     	CMP/EQ 	R5,R0			;
00A7C0 8B02     	BF      	#004			;
00A7C2 6043     	MOV     	R4,R0			;
00A7C4 CB10     	OR      	#10,R0		;
00A7C6 6403     	MOV     	R0,R4			;
00A7C8 6023     	MOV     	R2,R0			;
00A7CA C880     	TST     	#80,R0		;
00A7CC 8B17     	BF      	#02E			;
00A7CE 6043     	MOV     	R4,R0			;
00A7D0 C808     	TST     	#08,R0		;
00A7D2 8B02     	BF      	#004			;
00A7D4 8437     	MOV.B   	@(#07,R3),R0	;
00A7D6 C802     	TST     	#02,R0		;
00A7D8 8902     	BT      	#004			;
00A7DA D20E     	MOV.L   	@(#038,PC),R2	;
00A7DC A011     	BRA     	#0022			;
00A7DE 2340     	MOV.B   	R4,@R3		;
00A7E0 D10D     	MOV.L   	@(#034,PC),R1	;
00A7E2 D50E     	MOV.L   	@(#038,PC),R5	;
00A7E4 6011     	MOV.W   	@R1,R0		;
00A7E6 4201     	SHLR    	R2			;
00A7E8 8B04     	BF      	#008			;
00A7EA E620     	MOV     	#20,R6		;
00A7EC 4001     	SHLR    	R0			;
00A7EE 246B     	OR      	R6,R4			;
00A7F0 A003     	BRA     	#0006			;
00A7F2 4000     	SHLL    	R0			;
00A7F4 E6DF     	MOV     	#DF,R6		;
00A7F6 CB01     	OR      	#01,R0		;
00A7F8 2469     	AND     	R6,R4			;
00A7FA 2101     	MOV.W   	R0,@R1		;
00A7FC 2501     	MOV.W   	R0,@R5		;
00A7FE 2340     	MOV.B   	R4,@R3		;
00A800 D207     	MOV.L   	@(#01C,PC),R2	;
00A802 4F22     	STS.L   	PR,@-R15		;
00A804 420B     	JSR     	@R2			;
00A806 0009     	NOP     				;
00A808 4F26     	LDS.L   	@R15+,PR		;
00A80A 000B     	RTS     				;
00A80C 2BBA     	XOR     	R11,R11		;
00A80E 0009     	NOP     				;
00A810 0F00
00A812 0890
00A814 0000
00A816 F896
00A818 0F00
00A81A 0854
00A81C 0A10
00A81E 0000
00A820 0000
00A822 F89A
00A824 D74D     	MOV.L   	@(#134,PC),R7	;
00A826 8472     	MOV.B   	@(#02,R7),R0	;
00A828 C808     	TST     	#08,R0		;
00A82A 8B36     	BF      	#06C			;
00A82C D94C     	MOV.L   	@(#130,PC),R9	;
00A82E 6019     	SWAP.W   	R1,R0			;
00A830 C880     	TST     	#80,R0		;
00A832 8B12     	BF      	#024			;
00A834 5371     	MOV.L   	@(#04,R7),R3	;
00A836 4301     	SHLR    	R3			;
00A838 892F     	BT      	#05E			;
00A83A E300     	MOV     	#00,R3		;
00A83C 4025     	ROTCR   	R0			;
00A83E 4324     	ROTCL   	R3			;
00A840 4025     	ROTCR   	R0			;
00A842 4324     	ROTCL   	R3			;
00A844 4300     	SHLL    	R3			;
00A846 4025     	ROTCR   	R0			;
00A848 4324     	ROTCL   	R3			;
00A84A 6338     	SWAP.B   	R3,R3			;
00A84C 6A91     	MOV.W   	@R9,R10		;
00A84E 909B     	MOV.W   	@(#136,PC),R0	;
00A850 20A9     	AND     	R10,R0		;
00A852 203B     	OR      	R3,R0			;
00A854 D643     	MOV.L   	@(#10C,PC),R6	;
00A856 2901     	MOV.W   	R0,@R9		;
00A858 8164     	MOV.W   	R0,@(#08,R6)	;
00A85A D448     	MOV.L   	@(#120,PC),R4	;
00A85C 8444     	MOV.B   	@(#04,R4),R0	;
00A85E 8806     	CMP/EQ  	#06,R0		;
00A860 8938     	BT      	#070			;
00A862 611F     	EXTS.W   	R1,R1			;
00A864 6317     	NOT     	R1,R3			;
00A866 2338     	TST     	R3,R3			;
00A868 8934     	BT      	#068			;
00A86A D441     	MOV.L   	@(#104,PC),R4	;
00A86C D53F     	MOV.L   	@(#0FC,PC),R5	;
00A86E 8473     	MOV.B   	@(#03,R7),R0	;
00A870 6303     	MOV     	R0,R3			;
00A872 854A     	MOV.W   	@(#14,R4),R0	;
00A874 6603     	MOV     	R0,R6			;
00A876 2118     	TST     	R1,R1			;
00A878 8912     	BT      	#024			;
00A87A 6013     	MOV     	R1,R0			;
00A87C 8801     	CMP/EQ  	#01,R0		;
00A87E 8922     	BT      	#044			;
00A880 D839     	MOV.L   	@(#0E4,PC),R8	;
00A882 6013     	MOV     	R1,R0			;
00A884 8182     	MOV.W   	R0,@(#04,R8)	;
00A886 8183     	MOV.W   	R0,@(#06,R8)	;
00A888 6033     	MOV     	R3,R0			;
00A88A C9F8     	AND     	#F8,R0		;
00A88C CB05     	OR      	#05,R0		;
00A88E 8073     	MOV.B   	R0,@(#03,R7)	;
00A890 6063     	MOV     	R6,R0			;
00A892 CB04     	OR      	#04,R0		;
00A894 814A     	MOV.W   	R0,@(#14,R4)	;
00A896 A01D     	BRA     	#003A			;
00A898 815A     	MOV.W   	R0,@(#14,R5)	;
00A89A D237     	MOV.L   	@(#0DC,PC),R2	;
00A89C A057     	BRA     	#00AE			;
00A89E 0009     	NOP     				;
00A8A0 6033     	MOV     	R3,R0			;
00A8A2 C802     	TST     	#02,R0		;
00A8A4 8B08     	BF      	#010			;
00A8A6 C9F8     	AND     	#F8,R0		;
00A8A8 CB02     	OR      	#02,R0		;
00A8AA 8073     	MOV.B   	R0,@(#03,R7)	;
00A8AC 6067     	NOT     	R6,R0			;
00A8AE CB04     	OR      	#04,R0		;
00A8B0 6007     	NOT     	R0,R0			;
00A8B2 815A     	MOV.W   	R0,@(#14,R5)	;
00A8B4 A00E     	BRA     	#001C			;
00A8B6 814A     	MOV.W   	R0,@(#14,R4)	;
00A8B8 CB04     	OR      	#04,R0		;
00A8BA 8073     	MOV.B   	R0,@(#03,R7)	;
00A8BC 6063     	MOV     	R6,R0			;
00A8BE CB04     	OR      	#04,R0		;
00A8C0 814A     	MOV.W   	R0,@(#14,R4)	;
00A8C2 A007     	BRA     	#000E			;
00A8C4 815A     	MOV.W   	R0,@(#14,R5)	;
00A8C6 6033     	MOV     	R3,R0			;
00A8C8 C9F8     	AND     	#F8,R0		;
00A8CA 8073     	MOV.B   	R0,@(#03,R7)	;
00A8CC 6063     	MOV     	R6,R0			;
00A8CE CB04     	OR      	#04,R0		;
00A8D0 814A     	MOV.W   	R0,@(#14,R4)	;
00A8D2 815A     	MOV.W   	R0,@(#14,R5)	;
00A8D4 612F     	EXTS.W   	R2,R1			;
00A8D6 6317     	NOT     	R1,R3			;
00A8D8 2338     	TST     	R3,R3			;
00A8DA 8937     	BT      	#06E			;
00A8DC D424     	MOV.L   	@(#090,PC),R4	;
00A8DE D523     	MOV.L   	@(#08C,PC),R5	;
00A8E0 8473     	MOV.B   	@(#03,R7),R0	;
00A8E2 6303     	MOV     	R0,R3			;
00A8E4 854A     	MOV.W   	@(#14,R4),R0	;
00A8E6 6603     	MOV     	R0,R6			;
00A8E8 2118     	TST     	R1,R1			;
00A8EA 890F     	BT      	#01E			;
00A8EC 6013     	MOV     	R1,R0			;
00A8EE 8801     	CMP/EQ  	#01,R0		;
00A8F0 8925     	BT      	#04A			;
00A8F2 D81D     	MOV.L   	@(#074,PC),R8	;
00A8F4 6013     	MOV     	R1,R0			;
00A8F6 2801     	MOV.W   	R0,@R8		;
00A8F8 8181     	MOV.W   	R0,@(#02,R8)	;
00A8FA 6033     	MOV     	R3,R0			;
00A8FC C98F     	AND     	#8F,R0		;
00A8FE CB50     	OR      	#50,R0		;
00A900 8073     	MOV.B   	R0,@(#03,R7)	;
00A902 6063     	MOV     	R6,R0			;
00A904 CB08     	OR      	#08,R0		;
00A906 814A     	MOV.W   	R0,@(#14,R4)	;
00A908 A020     	BRA     	#0040			;
00A90A 815A     	MOV.W   	R0,@(#14,R5)	;
00A90C 6033     	MOV     	R3,R0			;
00A90E C820     	TST     	#20,R0		;
00A910 8B0E     	BF      	#01C			;
00A912 C98F     	AND     	#8F,R0		;
00A914 CB20     	OR      	#20,R0		;
00A916 8073     	MOV.B   	R0,@(#03,R7)	;
00A918 6067     	NOT     	R6,R0			;
00A91A CB08     	OR      	#08,R0		;
00A91C 6007     	NOT     	R0,R0			;
00A91E 815A     	MOV.W   	R0,@(#14,R5)	;
00A920 814A     	MOV.W   	R0,@(#14,R4)	;
00A922 D417     	MOV.L   	@(#05C,PC),R4	;
00A924 4F22     	STS.L   	PR,@-R15		;
00A926 440B     	JSR     	@R4			;
00A928 0009     	NOP     				;
00A92A 4F26     	LDS.L   	@R15+,PR		;
00A92C A00E     	BRA     	#001C			;
00A92E 0009     	NOP     				;
00A930 CB40     	OR      	#40,R0		;
00A932 8073     	MOV.B   	R0,@(#03,R7)	;
00A934 6063     	MOV     	R6,R0			;
00A936 CB08     	OR      	#08,R0		;
00A938 814A     	MOV.W   	R0,@(#14,R4)	;
00A93A A007     	BRA     	#000E			;
00A93C 815A     	MOV.W   	R0,@(#14,R5)	;
00A93E 6033     	MOV     	R3,R0			;
00A940 C98F     	AND     	#8F,R0		;
00A942 8073     	MOV.B   	R0,@(#03,R7)	;
00A944 6063     	MOV     	R6,R0			;
00A946 CB08     	OR      	#08,R0		;
00A948 814A     	MOV.W   	R0,@(#14,R4)	;
00A94A 815A     	MOV.W   	R0,@(#14,R5)	;
00A94C D209     	MOV.L   	@(#024,PC),R2	;
00A94E 4F22     	STS.L   	PR,@-R15		;
00A950 420B     	JSR     	@R2			;
00A952 0009     	NOP     				;
00A954 4F26     	LDS.L   	@R15+,PR		;
00A956 000B     	RTS     				;
00A958 2BBA     	XOR     	R11,R11		;
00A95A 0009     	NOP     				;
00A95C 0F00
00A95E 0890
00A960 0F00
00A962 0884
00A964 0A18
00A966 0000
00A968 0F00
00A96A 0888
00A96C 0A10
00A96E 0000
00A970 0F00
00A972 0854
00A974 0000
00A976 F89A
00A978 0000
00A97A F896
00A97C 0F00
00A97E 0898
00A980 0000
00A982 F81E
00A984 088A
00A986 000C
00A988 F2FF
00A98A 0009     	NOP     				;
00A98C D32B     	MOV.L   	@(#0AC,PC),R3	;
00A98E D62C     	MOV.L   	@(#0B0,PC),R6	;
00A990 D42C     	MOV.L   	@(#0B0,PC),R4	;
00A992 854A     	MOV.W   	@(#14,R4),R0	;
00A994 C840     	TST     	#40,R0		;
00A996 8903     	BT      	#006			;
00A998 C801     	TST     	#01,R0		;
00A99A 890C     	BT      	#018			;
00A99C A046     	BRA     	#008C			;
00A99E 0009     	NOP     				;
00A9A0 E503     	MOV     	#03,R5		;
00A9A2 2159     	AND     	R5,R1			;
00A9A4 4108     	SHLL2   	R1			;
00A9A6 4108     	SHLL2   	R1			;
00A9A8 E5CF     	MOV     	#CF,R5		;
00A9AA 2059     	AND     	R5,R0			;
00A9AC 201B     	OR      	R1,R0			;
00A9AE 814A     	MOV.W   	R0,@(#14,R4)	;
00A9B0 816A     	MOV.W   	R0,@(#14,R6)	;
00A9B2 E0FB     	MOV     	#FB,R0		;
00A9B4 816B     	MOV.W   	R0,@(#16,R6)	;
00A9B6 D528     	MOV.L   	@(#0A0,PC),R5	;
00A9B8 6050     	MOV.B   	@R5,R0		;
00A9BA 8804     	CMP/EQ  	#04,R0		;
00A9BC 8903     	BT      	#006			;
00A9BE 8805     	CMP/EQ  	#05,R0		;
00A9C0 8901     	BT      	#002			;
00A9C2 A02B     	BRA     	#0056			;
00A9C4 0009     	NOP     				;
00A9C6 8433     	MOV.B   	@(#03,R3),R0	;
00A9C8 C802     	TST     	#02,R0		;
00A9CA 8B27     	BF      	#04E			;
00A9CC C801     	TST     	#01,R0		;
00A9CE 8904     	BT      	#008			;
00A9D0 D022     	MOV.L   	@(#088,PC),R0	;
00A9D2 4F22     	STS.L   	PR,@-R15		;
00A9D4 400B     	JSR     	@R0			;
00A9D6 0009     	NOP     				;
00A9D8 4F26     	LDS.L   	@R15+,PR		;
00A9DA 8433     	MOV.B   	@(#03,R3),R0	;
00A9DC C810     	TST     	#10,R0		;
00A9DE 8904     	BT      	#008			;
00A9E0 D01F     	MOV.L   	@(#07C,PC),R0	;
00A9E2 4F22     	STS.L   	PR,@-R15		;
00A9E4 400B     	JSR     	@R0			;
00A9E6 0009     	NOP     				;
00A9E8 4F26     	LDS.L   	@R15+,PR		;
00A9EA 854A     	MOV.W   	@(#14,R4),R0	;
00A9EC C840     	TST     	#40,R0		;
00A9EE 8903     	BT      	#006			;
00A9F0 E0FD     	MOV     	#FD,R0		;
00A9F2 816B     	MOV.W   	R0,@(#16,R6)	;
00A9F4 A012     	BRA     	#0024			;
00A9F6 0009     	NOP     				;
00A9F8 8437     	MOV.B   	@(#07,R3),R0	;
00A9FA C802     	TST     	#02,R0		;
00A9FC 8902     	BT      	#004			;
00A9FE D232     	MOV.L   	@(#0C8,PC),R2	;
00AA00 A015     	BRA     	#002A			;
00AA02 0009     	NOP     				;
00AA04 6041     	MOV.W   	@R4,R0		;
00AA06 4001     	SHLR    	R0			;
00AA08 4000     	SHLL    	R0			;
00AA0A 2601     	MOV.W   	R0,@R6		;
00AA0C 0009     	NOP     				;
00AA0E 0009     	NOP     				;
00AA10 0009     	NOP     				;
00AA12 0009     	NOP     				;
00AA14 0009     	NOP     				;
00AA16 CB01     	OR      	#01,R0		;
00AA18 2401     	MOV.W   	R0,@R4		;
00AA1A 2601     	MOV.W   	R0,@R6		;
00AA1C D50C     	MOV.L   	@(#030,PC),R5	;
00AA1E 6051     	MOV.W   	@R5,R0		;
00AA20 7002     	ADD     	#02,R0		;
00AA22 2501     	MOV.W   	R0,@R5		;
00AA24 D20B     	MOV.L   	@(#02C,PC),R2	;
00AA26 E010     	MOV     	#10,R0		;
00AA28 6008     	SWAP.B   	R0,R0			;
00AA2A 2201     	MOV.W   	R0,@R2		;
00AA2C D207     	MOV.L   	@(#01C,PC),R2	;
00AA2E 4F22     	STS.L   	PR,@-R15		;
00AA30 420B     	JSR     	@R2			;
00AA32 0009     	NOP     				;
00AA34 4F26     	LDS.L   	@R15+,PR		;
00AA36 000B     	RTS     				;
00AA38 2BBA     	XOR     	R11,R11		;
00AA3A 0009     	NOP     				;
00AA3C 0F00
00AA3E 0890
00AA40 0A10
00AA42 0000
00AA44 0F00
00AA46 0854
00AA48 0F00
00AA4A 0888
00AA4C 0000
00AA4E F89A
00AA50 0F00
00AA52 0842
00AA54 0A00
00AA56 001E
00AA58 0F00
00AA5A 089C
00AA5C 0000
00AA5E F822
00AA60 0000
00AA62 F826
00AA64 6618     	SWAP.B   	R1,R6			;
00AA66 D317     	MOV.L   	@(#05C,PC),R3	;
00AA68 D515     	MOV.L   	@(#054,PC),R5	;
00AA6A 853A     	MOV.W   	@(#14,R3),R0	;
00AA6C C840     	TST     	#40,R0		;
00AA6E 8B0A     	BF      	#014			;
00AA70 E403     	MOV     	#03,R4		;
00AA72 2149     	AND     	R4,R1			;
00AA74 4108     	SHLL2   	R1			;
00AA76 4108     	SHLL2   	R1			;
00AA78 E2CF     	MOV     	#CF,R2		;
00AA7A 2029     	AND     	R2,R0			;
00AA7C 201B     	OR      	R1,R0			;
00AA7E 813A     	MOV.W   	R0,@(#14,R3)	;
00AA80 815A     	MOV.W   	R0,@(#14,R5)	;
00AA82 E0F7     	MOV     	#F7,R0		;
00AA84 815B     	MOV.W   	R0,@(#16,R5)	;
00AA86 D80C     	MOV.L   	@(#030,PC),R8	;
00AA88 8487     	MOV.B   	@(#07,R8),R0	;
00AA8A C802     	TST     	#02,R0		;
00AA8C 8902     	BT      	#004			;
00AA8E D20E     	MOV.L   	@(#038,PC),R2	;
00AA90 A00B     	BRA     	#0016			;
00AA92 0009     	NOP     				;
00AA94 6431     	MOV.W   	@R3,R4		;
00AA96 E702     	MOV     	#02,R7		;
00AA98 4601     	SHLR    	R6			;
00AA9A 8B02     	BF      	#004			;
00AA9C 6777     	NOT     	R7,R7			;
00AA9E A001     	BRA     	#0002			;
00AAA0 2479     	AND     	R7,R4			;
00AAA2 247B     	OR      	R7,R4			;
00AAA4 2341     	MOV.W   	R4,@R3		;
00AAA6 2541     	MOV.W   	R4,@R5		;
00AAA8 D204     	MOV.L   	@(#010,PC),R2	;
00AAAA 4F22     	STS.L   	PR,@-R15		;
00AAAC 420B     	JSR     	@R2			;
00AAAE 0009     	NOP     				;
00AAB0 4F26     	LDS.L   	@R15+,PR		;
00AAB2 000B     	RTS     				;
00AAB4 2BBA     	XOR     	R11,R11		;
00AAB6 0009     	NOP     				;
00AAB8 0F00
00AABA 0890
00AABC 0000
00AABE F89A
00AAC0 0A10
00AAC2 0000
00AAC4 0F00
00AAC6 0854
00AAC8 0000
00AACA F896
00AACC DD15     	MOV.L   	@(#054,PC),R13	;
00AACE 85D2     	MOV.W   	@(#04,R13),R0	;
00AAD0 8801     	CMP/EQ  	#01,R0		;
00AAD2 8902     	BT      	#004			;
00AAD4 70FF     	ADD     	#FF,R0		;
00AAD6 A00C     	BRA     	#0018			;
00AAD8 81D2     	MOV.W   	R0,@(#04,R13)	;
00AADA 85D3     	MOV.W   	@(#06,R13),R0	;
00AADC 81D2     	MOV.W   	R0,@(#04,R13)	;
00AADE DC12     	MOV.L   	@(#048,PC),R12	;
00AAE0 60C0     	MOV.B   	@R12,R0		;
00AAE2 CB04     	OR      	#04,R0		;
00AAE4 2C00     	MOV.B   	R0,@R12		;
00AAE6 DD11     	MOV.L   	@(#044,PC),R13	;
00AAE8 DC11     	MOV.L   	@(#044,PC),R12	;
00AAEA 85DA     	MOV.W   	@(#14,R13),R0	;
00AAEC CB04     	OR      	#04,R0		;
00AAEE 81DA     	MOV.W   	R0,@(#14,R13)	;
00AAF0 81CA     	MOV.W   	R0,@(#14,R12)	;
00AAF2 000B     	RTS     				;
00AAF4 0009     	NOP     				;
00AAF6 0009     	NOP     				;
00AAF8 DD0A     	MOV.L   	@(#028,PC),R13	;
00AAFA 60D1     	MOV.W   	@R13,R0		;
00AAFC 8801     	CMP/EQ  	#01,R0		;
00AAFE 8902     	BT      	#004			;
00AB00 70FF     	ADD     	#FF,R0		;
00AB02 A00C     	BRA     	#0018			;
00AB04 2D01     	MOV.W   	R0,@R13		;
00AB06 85D1     	MOV.W   	@(#02,R13),R0	;
00AB08 2D01     	MOV.W   	R0,@R13		;
00AB0A DC07     	MOV.L   	@(#01C,PC),R12	;
00AB0C 60C0     	MOV.B   	@R12,R0		;
00AB0E CB40     	OR      	#40,R0		;
00AB10 2C00     	MOV.B   	R0,@R12		;
00AB12 DD06     	MOV.L   	@(#018,PC),R13	;
00AB14 DC06     	MOV.L   	@(#018,PC),R12	;
00AB16 85DA     	MOV.W   	@(#14,R13),R0	;
00AB18 CB08     	OR      	#08,R0		;
00AB1A 81DA     	MOV.W   	R0,@(#14,R13)	;
00AB1C 81CA     	MOV.W   	R0,@(#14,R12)	;
00AB1E 000B     	RTS     				;
00AB20 0009     	NOP     				;
00AB22 0009     	NOP     				;
00AB24 0F00
00AB26 0888
00AB28 0F00
00AB2A 0893
00AB2C 0F00
00AB2E 0854
00AB30 0A10
00AB32 0000
00AB34 84D3     	MOV.B   	@(#03,R13),R0	;
00AB36 DC0E     	MOV.L   	@(#038,PC),R12	;
00AB38 DB0C     	MOV.L   	@(#030,PC),R11	;
00AB3A C804     	TST     	#04,R0		;
00AB3C 6903     	MOV     	R0,R9			;
00AB3E 85BA     	MOV.W   	@(#14,R11),R0	;
00AB40 8901     	BT      	#002			;
00AB42 EAFB     	MOV     	#FB,R10		;
00AB44 20A9     	AND     	R10,R0		;
00AB46 EA40     	MOV     	#40,R10		;
00AB48 29A8     	TST     	R10,R9		;
00AB4A 8907     	BT      	#00E			;
00AB4C EAF7     	MOV     	#F7,R10		;
00AB4E 2A09     	AND     	R0,R10		;
00AB50 D008     	MOV.L   	@(#020,PC),R0	;
00AB52 4F22     	STS.L   	PR,@-R15		;
00AB54 400B     	JSR     	@R0			;
00AB56 0009     	NOP     				;
00AB58 4F26     	LDS.L   	@R15+,PR		;
00AB5A 60A3     	MOV     	R10,R0		;
00AB5C 81BA     	MOV.W   	R0,@(#14,R11)	;
00AB5E 81CA     	MOV.W   	R0,@(#14,R12)	;
00AB60 6093     	MOV     	R9,R0			;
00AB62 C9BB     	AND     	#BB,R0		;
00AB64 80D3     	MOV.B   	R0,@(#03,R13)	;
00AB66 000B     	RTS     				;
00AB68 0009     	NOP     				;
00AB6A 0009     	NOP     				;
00AB6C 0F00
00AB6E 0854
00AB70 0A10
00AB72 0000
00AB74 0000
00AB76 F81E
00AB78 D45C     	MOV.L   	@(#170,PC),R4	;
00AB7A 8442     	MOV.B   	@(#02,R4),R0	;
00AB7C CB08     	OR      	#08,R0		;
00AB7E 8042     	MOV.B   	R0,@(#02,R4)	;
00AB80 8446     	MOV.B   	@(#06,R4),R0	;
00AB82 C801     	TST     	#01,R0		;
00AB84 891B     	BT      	#036			;
00AB86 C9FE     	AND     	#FE,R0		;
00AB88 8046     	MOV.B   	R0,@(#06,R4)	;
00AB8A 8441     	MOV.B   	@(#01,R4),R0	;
00AB8C CB20     	OR      	#20,R0		;
00AB8E 8041     	MOV.B   	R0,@(#01,R4)	;
00AB90 D258     	MOV.L   	@(#160,PC),R2	;
00AB92 4F22     	STS.L   	PR,@-R15		;
00AB94 420B     	JSR     	@R2			;
00AB96 0009     	NOP     				;
00AB98 4F26     	LDS.L   	@R15+,PR		;
00AB9A D255     	MOV.L   	@(#154,PC),R2	;
00AB9C 6020     	MOV.B   	@R2,R0		;
00AB9E 8804     	CMP/EQ  	#04,R0		;
00ABA0 8B02     	BF      	#004			;
00ABA2 D255     	MOV.L   	@(#154,PC),R2	;
00ABA4 A003     	BRA     	#0006			;
00ABA6 0009     	NOP     				;
00ABA8 8805     	CMP/EQ  	#05,R0		;
00ABAA 8B04     	BF      	#008			;
00ABAC D253     	MOV.L   	@(#14C,PC),R2	;
00ABAE 4F22     	STS.L   	PR,@-R15		;
00ABB0 420B     	JSR     	@R2			;
00ABB2 0009     	NOP     				;
00ABB4 4F26     	LDS.L   	@R15+,PR		;
00ABB6 D44D     	MOV.L   	@(#134,PC),R4	;
00ABB8 8441     	MOV.B   	@(#01,R4),R0	;
00ABBA C9DF     	AND     	#DF,R0		;
00ABBC 8041     	MOV.B   	R0,@(#01,R4)	;
00ABBE D14B     	MOV.L   	@(#12C,PC),R1	;
00ABC0 8416     	MOV.B   	@(#06,R1),R0	;
00ABC2 C802     	TST     	#02,R0		;
00ABC4 892B     	BT      	#056			;
00ABC6 C9FD     	AND     	#FD,R0		;
00ABC8 8016     	MOV.B   	R0,@(#06,R1)	;
00ABCA 8411     	MOV.B   	@(#01,R1),R0	;
00ABCC CB10     	OR      	#10,R0		;
00ABCE 8011     	MOV.B   	R0,@(#01,R1)	;
00ABD0 D24B     	MOV.L   	@(#12C,PC),R2	;
00ABD2 4F22     	STS.L   	PR,@-R15		;
00ABD4 420B     	JSR     	@R2			;
00ABD6 0009     	NOP     				;
00ABD8 4F26     	LDS.L   	@R15+,PR		;
00ABDA D245     	MOV.L   	@(#114,PC),R2	;
00ABDC 6020     	MOV.B   	@R2,R0		;
00ABDE 8804     	CMP/EQ  	#04,R0		;
00ABE0 8B02     	BF      	#004			;
00ABE2 D248     	MOV.L   	@(#120,PC),R2	;
00ABE4 A003     	BRA     	#0006			;
00ABE6 0009     	NOP     				;
00ABE8 8805     	CMP/EQ  	#05,R0		;
00ABEA 8B04     	BF      	#008			;
00ABEC D246     	MOV.L   	@(#118,PC),R2	;
00ABEE 4F22     	STS.L   	PR,@-R15		;
00ABF0 420B     	JSR     	@R2			;
00ABF2 0009     	NOP     				;
00ABF4 4F26     	LDS.L   	@R15+,PR		;
00ABF6 D13D     	MOV.L   	@(#0F4,PC),R1	;
00ABF8 6010     	MOV.B   	@R1,R0		;
00ABFA C880     	TST     	#80,R0		;
00ABFC 890B     	BT      	#016			;
00ABFE D24C     	MOV.L   	@(#130,PC),R2	;
00AC00 6020     	MOV.B   	@R2,R0		;
00AC02 C840     	TST     	#40,R0		;
00AC04 8907     	BT      	#00E			;
00AC06 D110     	MOV.L   	@(#040,PC),R1	;
00AC08 4F22     	STS.L   	PR,@-R15		;
00AC0A 410B     	JSR     	@R1			;
00AC0C 0009     	NOP     				;
00AC0E 4F26     	LDS.L   	@R15+,PR		;
00AC10 2BB8     	TST     	R11,R11		;
00AC12 8900     	BT      	#000			;
00AC14 C321     	TRAPA   	#21			;
00AC16 D135     	MOV.L   	@(#0D4,PC),R1	;
00AC18 8411     	MOV.B   	@(#01,R1),R0	;
00AC1A C9EF     	AND     	#EF,R0		;
00AC1C 8011     	MOV.B   	R0,@(#01,R1)	;
00AC1E D133     	MOV.L   	@(#0CC,PC),R1	;
00AC20 8416     	MOV.B   	@(#06,R1),R0	;
00AC22 C804     	TST     	#04,R0		;
00AC24 895B     	BT      	#0B6			;
00AC26 C9FB     	AND     	#FB,R0		;
00AC28 8016     	MOV.B   	R0,@(#06,R1)	;
00AC2A 8411     	MOV.B   	@(#01,R1),R0	;
00AC2C CB02     	OR      	#02,R0		;
00AC2E 8011     	MOV.B   	R0,@(#01,R1)	;
00AC30 D236     	MOV.L   	@(#0D8,PC),R2	;
00AC32 4F22     	STS.L   	PR,@-R15		;
00AC34 420B     	JSR     	@R2			;
00AC36 0009     	NOP     				;
00AC38 4F26     	LDS.L   	@R15+,PR		;
00AC3A D22D     	MOV.L   	@(#0B4,PC),R2	;
00AC3C 6020     	MOV.B   	@R2,R0		;
00AC3E 8803     	CMP/EQ  	#03,R0		;
00AC40 8B04     	BF      	#008			;
00AC42 D233     	MOV.L   	@(#0CC,PC),R2	;
00AC44 A00A     	BRA     	#0014			;
00AC46 0009     	NOP     				;
00AC48 0000
00AC4A F81A
00AC4C 8805     	CMP/EQ  	#05,R0		;
00AC4E 8B02     	BF      	#004			;
00AC50 D230     	MOV.L   	@(#0C0,PC),R2	;
00AC52 A003     	BRA     	#0006			;
00AC54 0009     	NOP     				;
00AC56 8806     	CMP/EQ  	#06,R0		;
00AC58 8B04     	BF      	#008			;
00AC5A D22F     	MOV.L   	@(#0BC,PC),R2	;
00AC5C 4F22     	STS.L   	PR,@-R15		;
00AC5E 420B     	JSR     	@R2			;
00AC60 0009     	NOP     				;
00AC62 4F26     	LDS.L   	@R15+,PR		;
00AC64 D222     	MOV.L   	@(#088,PC),R2	;
00AC66 8421     	MOV.B   	@(#01,R2),R0	;
00AC68 8803     	CMP/EQ  	#03,R0		;
00AC6A 8B02     	BF      	#004			;
00AC6C D22B     	MOV.L   	@(#0AC,PC),R2	;
00AC6E A008     	BRA     	#0010			;
00AC70 0009     	NOP     				;
00AC72 8805     	CMP/EQ  	#05,R0		;
00AC74 8B02     	BF      	#004			;
00AC76 D22A     	MOV.L   	@(#0A8,PC),R2	;
00AC78 A003     	BRA     	#0006			;
00AC7A 0009     	NOP     				;
00AC7C 8806     	CMP/EQ  	#06,R0		;
00AC7E 8B04     	BF      	#008			;
00AC80 D228     	MOV.L   	@(#0A0,PC),R2	;
00AC82 4F22     	STS.L   	PR,@-R15		;
00AC84 420B     	JSR     	@R2			;
00AC86 0009     	NOP     				;
00AC88 4F26     	LDS.L   	@R15+,PR		;
00AC8A D228     	MOV.L   	@(#0A0,PC),R2	;
00AC8C 852A     	MOV.W   	@(#14,R2),R0	;
00AC8E C941     	AND     	#41,R0		;
00AC90 8841     	CMP/EQ  	#41,R0		;
00AC92 8B03     	BF      	#006			;
00AC94 D324     	MOV.L   	@(#090,PC),R3	;
00AC96 6031     	MOV.W   	@R3,R0		;
00AC98 7001     	ADD     	#01,R0		;
00AC9A 2301     	MOV.W   	R0,@R3		;
00AC9C D113     	MOV.L   	@(#04C,PC),R1	;
00AC9E D414     	MOV.L   	@(#050,PC),R4	;
00ACA0 924C     	MOV.W   	@(#098,PC),R2	;
00ACA2 6041     	MOV.W   	@R4,R0		;
00ACA4 3200     	CMP/EQ 	R0,R2			;
00ACA6 8B0B     	BF      	#016			;
00ACA8 D110     	MOV.L   	@(#040,PC),R1	;
00ACAA 6010     	MOV.B   	@R1,R0		;
00ACAC C903     	AND     	#03,R0		;
00ACAE 8803     	CMP/EQ  	#03,R0		;
00ACB0 8B06     	BF      	#00C			;
00ACB2 8413     	MOV.B   	@(#03,R1),R0	;
00ACB4 C803     	TST     	#03,R0		;
00ACB6 8903     	BT      	#006			;
00ACB8 6010     	MOV.B   	@R1,R0		;
00ACBA CB80     	OR      	#80,R0		;
00ACBC A00B     	BRA     	#0016			;
00ACBE 2100     	MOV.B   	R0,@R1		;
00ACC0 6010     	MOV.B   	@R1,R0		;
00ACC2 C97F     	AND     	#7F,R0		;
00ACC4 2100     	MOV.B   	R0,@R1		;
00ACC6 D41A     	MOV.L   	@(#068,PC),R4	;
00ACC8 6040     	MOV.B   	@R4,R0		;
00ACCA C840     	TST     	#40,R0		;
00ACCC 8903     	BT      	#006			;
00ACCE C9BF     	AND     	#BF,R0		;
00ACD0 2400     	MOV.B   	R0,@R4		;
00ACD2 DB18     	MOV.L   	@(#060,PC),R11	;
00ACD4 C321     	TRAPA   	#21			;
00ACD6 D105     	MOV.L   	@(#014,PC),R1	;
00ACD8 8411     	MOV.B   	@(#01,R1),R0	;
00ACDA C9FD     	AND     	#FD,R0		;
00ACDC 8011     	MOV.B   	R0,@(#01,R1)	;
00ACDE D116     	MOV.L   	@(#058,PC),R1	;
00ACE0 D402     	MOV.L   	@(#008,PC),R4	;
00ACE2 8442     	MOV.B   	@(#02,R4),R0	;
00ACE4 C9F7     	AND     	#F7,R0		;
00ACE6 8042     	MOV.B   	R0,@(#02,R4)	;
00ACE8 412B     	JMP     	@R1			;
00ACEA 0009     	NOP     				;
00ACEC 0F00
00ACEE 0890
00ACF0 0F00
00ACF2 089C
00ACF4 0000
00ACF6 F836
00ACF8 0000
00ACFA F83A
00ACFC 0000
00ACFE F83E
00AD00 0000
00AD02 F846
00AD04 0000
00AD06 F84A
00AD08 0000
00AD0A F84E
00AD0C 0000
00AD0E F8B6
00AD10 0000
00AD12 F8B2
00AD14 0000
00AD16 F842
00AD18 0000
00AD1A F82E
00AD1C 0000
00AD1E F8AE
00AD20 0000
00AD22 F8DE
00AD24 0000
00AD26 F832
00AD28 0F00
00AD2A 0842
00AD2C 0F00
00AD2E 0854
00AD30 0907
00AD32 5370
00AD34 088A
00AD36 000C
00AD38 0000
00AD3A F80A
00AD3C 0404     	MOV.B   	R0,@(R0,R4)		;
00AD3E 0009     	NOP     				;
00AD40 D337     	MOV.L   	@(#0DC,PC),R3	;
00AD42 853A     	MOV.W   	@(#14,R3),R0	;
00AD44 E2F3     	MOV     	#F3,R2		;
00AD46 2029     	AND     	R2,R0			;
00AD48 D236     	MOV.L   	@(#0D8,PC),R2	;
00AD4A 812A     	MOV.W   	R0,@(#14,R2)	;
00AD4C D32A     	MOV.L   	@(#0A8,PC),R3	;
00AD4E 6030     	MOV.B   	@R3,R0		;
00AD50 C804     	TST     	#04,R0		;
00AD52 E101     	MOV     	#01,R1		;
00AD54 8901     	BT      	#002			;
00AD56 D32B     	MOV.L   	@(#0AC,PC),R3	;
00AD58 6131     	MOV.W   	@R3,R1		;
00AD5A D22B     	MOV.L   	@(#0AC,PC),R2	;
00AD5C D428     	MOV.L   	@(#0A0,PC),R4	;
00AD5E 6540     	MOV.B   	@R4,R5		;
00AD60 6653     	MOV     	R5,R6			;
00AD62 4508     	SHLL2   	R5			;
00AD64 4600     	SHLL    	R6			;
00AD66 356C     	ADD     	R6,R5			;
00AD68 325C     	ADD     	R5,R2			;
00AD6A 7202     	ADD     	#02,R2		;
00AD6C 6A20     	MOV.B   	@R2,R10		;
00AD6E 2AA8     	TST     	R10,R10		;
00AD70 8920     	BT      	#040			;
00AD72 D92D     	MOV.L   	@(#0B4,PC),R9	;
00AD74 491E     	LDC     	R9,GBR		;
00AD76 E001     	MOV     	#01,R0		;
00AD78 CDEF     	AND.B   	#EF,@(R0,GBR)	;
00AD7A 60AC     	EXTU.B   	R10,R0		;
00AD7C 3012     	CMP/HS 	R1,R0			;
00AD7E 8B19     	BF      	#032			;
00AD80 DB22     	MOV.L   	@(#088,PC),R11	;
00AD82 C321     	TRAPA   	#21			;
00AD84 D223     	MOV.L   	@(#08C,PC),R2	;
00AD86 6020     	MOV.B   	@R2,R0		;
00AD88 8024     	MOV.B   	R0,@(#04,R2)	;
00AD8A D323     	MOV.L   	@(#08C,PC),R3	;
00AD8C 6030     	MOV.B   	@R3,R0		;
00AD8E CB04     	OR      	#04,R0		;
00AD90 2300     	MOV.B   	R0,@R3		;
00AD92 D119     	MOV.L   	@(#064,PC),R1	;
00AD94 D222     	MOV.L   	@(#088,PC),R2	;
00AD96 D323     	MOV.L   	@(#08C,PC),R3	;
00AD98 411E     	LDC     	R1,GBR		;
00AD9A E007     	MOV     	#07,R0		;
00AD9C CF02     	OR .B   	#02,@(R0,GBR)	;
00AD9E E000     	MOV     	#00,R0		;
00ADA0 CF20     	OR .B   	#20,@(R0,GBR)	;
00ADA2 6021     	MOV.W   	@R2,R0		;
00ADA4 E9FE     	MOV     	#FE,R9		;
00ADA6 2099     	AND     	R9,R0			;
00ADA8 2301     	MOV.W   	R0,@R3		;
00ADAA 2201     	MOV.W   	R0,@R2		;
00ADAC E007     	MOV     	#07,R0		;
00ADAE CDFD     	AND.B   	#FD,@(R0,GBR)	;
00ADB0 852A     	MOV.W   	@(#14,R2),R0	;
00ADB2 813A     	MOV.W   	R0,@(#14,R3)	;
00ADB4 000B     	RTS     				;
00ADB6 0009     	NOP     				;
00ADB8 D213     	MOV.L   	@(#04C,PC),R2	;
00ADBA D410     	MOV.L   	@(#040,PC),R4	;
00ADBC E104     	MOV     	#04,R1		;
00ADBE 6540     	MOV.B   	@R4,R5		;
00ADC0 6653     	MOV     	R5,R6			;
00ADC2 4508     	SHLL2   	R5			;
00ADC4 4600     	SHLL    	R6			;
00ADC6 356C     	ADD     	R6,R5			;
00ADC8 325C     	ADD     	R5,R2			;
00ADCA 7202     	ADD     	#02,R2		;
00ADCC 6A20     	MOV.B   	@R2,R10		;
00ADCE 2AA8     	TST     	R10,R10		;
00ADD0 890F     	BT      	#01E			;
00ADD2 D915     	MOV.L   	@(#054,PC),R9	;
00ADD4 491E     	LDC     	R9,GBR		;
00ADD6 E000     	MOV     	#00,R0		;
00ADD8 CDEF     	AND.B   	#EF,@(R0,GBR)	;
00ADDA 60AC     	EXTU.B   	R10,R0		;
00ADDC 3012     	CMP/HS 	R1,R0			;
00ADDE 8B08     	BF      	#010			;
00ADE0 DB0B     	MOV.L   	@(#02C,PC),R11	;
00ADE2 C321     	TRAPA   	#21			;
00ADE4 D20B     	MOV.L   	@(#02C,PC),R2	;
00ADE6 8421     	MOV.B   	@(#01,R2),R0	;
00ADE8 8025     	MOV.B   	R0,@(#05,R2)	;
00ADEA D30C     	MOV.L   	@(#030,PC),R3	;
00ADEC 6030     	MOV.B   	@R3,R0		;
00ADEE CB80     	OR      	#80,R0		;
00ADF0 2300     	MOV.B   	R0,@R3		;
00ADF2 000B     	RTS     				;
00ADF4 0009     	NOP     				;
00ADF6 0009     	NOP     				;
00ADF8 0F00
00ADFA 0890
00ADFC 0907
00ADFE 532F
00AE00 0907
00AE02 532B
00AE04 0907
00AE06 52E0
00AE08 0F00
00AE0A 0600
00AE0C 0889
00AE0E 0008
00AE10 088A
00AE12 000C
00AE14 0F00
00AE16 0898
00AE18 0907
00AE1A 535C
00AE1C 0F00
00AE1E 0895
00AE20 0F00
00AE22 0854
00AE24 0A10
00AE26 0000
00AE28 0F00
00AE2A 0845     	MOV.W   	R4,@(R0,R8)		;
00AE2C D80C     	MOV.L   	@(#030,PC),R8	;
00AE2E D20D     	MOV.L   	@(#034,PC),R2	;
00AE30 8583     	MOV.W   	@(#06,R8),R0	;
00AE32 6303     	MOV     	R0,R3			;
00AE34 E02E     	MOV     	#2E,R0		;
00AE36 0234     	MOV.B   	R3,@(R0,R2)		;
00AE38 E03F     	MOV     	#3F,R0		;
00AE3A 2309     	AND     	R0,R3			;
00AE3C E003     	MOV     	#03,R0		;
00AE3E E73F     	MOV     	#3F,R7		;
00AE40 062C     	MOV.B   	@(R0,R2),R6		;
00AE42 2679     	AND     	R7,R6			;
00AE44 3630     	CMP/EQ 	R3,R6			;
00AE46 8903     	BT      	#006			;
00AE48 7004     	ADD     	#04,R0		;
00AE4A 8813     	CMP/EQ  	#13,R0		;
00AE4C 8BF8     	BF      	#1F0			;
00AE4E E6FF     	MOV     	#FF,R6		;
00AE50 700D     	ADD     	#0D,R0		;
00AE52 072E     	MOV.L   	@(R0,R2),R7		;
00AE54 E020     	MOV     	#20,R0		;
00AE56 0276     	MOV.L   	R7,@(R0,R2)		;
00AE58 E028     	MOV     	#28,R0		;
00AE5A 0265     	MOV.W   	R6,@(R0,R2)		;
00AE5C 000B     	RTS     				;
00AE5E 0009     	NOP     				;
00AE60 0A10
00AE62 0000
00AE64 0907
00AE66 52E4     	MOV.L   	@(#10,R14),R2	;
00AE68 D306     	MOV.L   	@(#018,PC),R3	;
00AE6A 2BBA     	XOR     	R11,R11		;
00AE6C 6436     	MOV.L   	@R3+,R4		;
00AE6E 6536     	MOV.L   	@R3+,R5		;
00AE70 7301     	ADD     	#01,R3		;
00AE72 6634     	MOV.B   	@R3+,R6		;
00AE74 6734     	MOV.B   	@R3+,R7		;
00AE76 256D     	XTRCT   	R6,R5			;
00AE78 247D     	XTRCT   	R7,R4			;
00AE7A 3546     	CMP/HI 	R4,R5			;
00AE7C 8B00     	BF      	#000			;
00AE7E DB02     	MOV.L   	@(#008,PC),R11	;
00AE80 000B     	RTS     				;
00AE82 0009     	NOP     				;
00AE84 0907     	MUL.L   	R0,R9			;
00AE86 52A4     	MOV.L   	@(#10,R10),R2	;
00AE88 088A     	
00AE8A 000C     	MOV.B   	@(R0,R0),R0		;
00AE8C DC2F     	MOV.L   	@(#0BC,PC),R12	;
00AE8E A00F     	BRA     	#001E			;
00AE90 0009     	NOP     				;
00AE92 D033     	MOV.L   	@(#0CC,PC),R0	;
00AE94 4F22     	STS.L   	PR,@-R15		;
00AE96 400B     	JSR     	@R0			;
00AE98 0009     	NOP     				;
00AE9A 4F26     	LDS.L   	@R15+,PR		;
00AE9C D02B     	MOV.L   	@(#0AC,PC),R0	;
00AE9E 2C09     	AND     	R0,R12		;
00AEA0 A006     	BRA     	#000C			;
00AEA2 0009     	NOP     				;
00AEA4 2CCA     	XOR     	R12,R12		;
00AEA6 D027     	MOV.L   	@(#09C,PC),R0	;
00AEA8 4F22     	STS.L   	PR,@-R15		;
00AEAA 400B     	JSR     	@R0			;
00AEAC 0009     	NOP     				;
00AEAE 4F26     	LDS.L   	@R15+,PR		;
00AEB0 D129     	MOV.L   	@(#0A4,PC),R1	;
00AEB2 6011     	MOV.W   	@R1,R0		;
00AEB4 6208     	SWAP.B   	R0,R2			;
00AEB6 4019     	SHLR8   	R0			;
00AEB8 4209     	SHLR2   	R2			;
00AEBA 4209     	SHLR2   	R2			;
00AEBC 202B     	OR      	R2,R0			;
00AEBE D11E     	MOV.L   	@(#078,PC),R1	;
00AEC0 6310     	MOV.B   	@R1,R3		;
00AEC2 4301     	SHLR    	R3			;
00AEC4 8B00     	BF      	#000			;
00AEC6 CB08     	OR      	#08,R0		;
00AEC8 6009     	SWAP.W   	R0,R0			;
00AECA 2C0B     	OR      	R0,R12		;
00AECC D123     	MOV.L   	@(#08C,PC),R1	;
00AECE 8511     	MOV.W   	@(#02,R1),R0	;
00AED0 600D     	EXTU.W   	R0,R0			;
00AED2 2C0B     	OR      	R0,R12		;
00AED4 5D11     	MOV.L   	@(#04,R1),R13	;
00AED6 000B     	RTS     				;
00AED8 0009     	NOP     				;
00AEDA D01B     	MOV.L   	@(#06C,PC),R0	;
00AEDC 4F22     	STS.L   	PR,@-R15		;
00AEDE 400B     	JSR     	@R0			;
00AEE0 0009     	NOP     				;
00AEE2 4F26     	LDS.L   	@R15+,PR		;
00AEE4 2BBA     	XOR     	R11,R11		;
00AEE6 000B     	RTS     				;
00AEE8 0009     	NOP     				;
00AEEA D016     	MOV.L   	@(#058,PC),R0	;
00AEEC 4F22     	STS.L   	PR,@-R15		;
00AEEE 400B     	JSR     	@R0			;
00AEF0 0009     	NOP     				;
00AEF2 4F26     	LDS.L   	@R15+,PR		;
00AEF4 D116     	MOV.L   	@(#058,PC),R1	;
00AEF6 D015     	MOV.L   	@(#054,PC),R0	;
00AEF8 2C09     	AND     	R0,R12		;
00AEFA 6007     	NOT     	R0,R0			;
00AEFC 6212     	MOV.L   	@R1,R2		;
00AEFE 2209     	AND     	R0,R2			;
00AF00 2C2B     	OR      	R2,R12		;
00AF02 2DDA     	XOR     	R13,R13		;
00AF04 21D2     	MOV.L   	R13,@R1		;
00AF06 D10E     	MOV.L   	@(#038,PC),R1	;
00AF08 8411     	MOV.B   	@(#01,R1),R0	;
00AF0A C9DF     	AND     	#DF,R0		;
00AF0C 8011     	MOV.B   	R0,@(#01,R1)	;
00AF0E 8413     	MOV.B   	@(#03,R1),R0	;
00AF10 C97F     	AND     	#7F,R0		;
00AF12 8013     	MOV.B   	R0,@(#03,R1)	;
00AF14 2BBA     	XOR     	R11,R11		;
00AF16 000B     	RTS     				;
00AF18 0009     	NOP     				;
00AF1A D30E     	MOV.L   	@(#038,PC),R3	;
00AF1C D00B     	MOV.L   	@(#02C,PC),R0	;
00AF1E 6007     	NOT     	R0,R0			;
00AF20 2109     	AND     	R0,R1			;
00AF22 2312     	MOV.L   	R1,@R3		;
00AF24 D008     	MOV.L   	@(#020,PC),R0	;
00AF26 4F22     	STS.L   	PR,@-R15		;
00AF28 400B     	JSR     	@R0			;
00AF2A 0009     	NOP     				;
00AF2C 4F26     	LDS.L   	@R15+,PR		;
00AF2E 2BBA     	XOR     	R11,R11		;
00AF30 000B     	RTS     				;
00AF32 0009     	NOP     				;
00AF34 0F00
00AF36 0898
00AF38 0F00
00AF3A 0891
00AF3C 0F00
00AF3E 0842
00AF40 0F00
00AF42 0844
00AF44 0000
00AF46 F8EE
00AF48 0000
00AF4A F89A
00AF4C FF00
00AF4E 0000
00AF50 0F00
00AF52 0848
00AF54 0F00
00AF56 084C
00AF58 0F00
00AF5A 089C
00AF5C 0F00
00AF5E 0840
00AF60 0000
00AF62 F8F2
00AF64 288A     	XOR     	R8,R8			;
00AF66 299A     	XOR     	R9,R9			;
00AF68 6323     	MOV     	R2,R3			;
00AF6A 4319     	SHLR8   	R3			;
00AF6C 4329     	SHLR16  	R3			;
00AF6E E001     	MOV     	#01,R0		;
00AF70 2309     	AND     	R0,R3			;
00AF72 6013     	MOV     	R1,R0			;
00AF74 4029     	SHLR16  	R0			;
00AF76 C880     	TST     	#80,R0		;
00AF78 8B07     	BF      	#00E			;
00AF7A 601E     	EXTS.B   	R1,R0			;
00AF7C 88FF     	CMP/EQ  	#FF,R0		;
00AF7E 8904     	BT      	#008			;
00AF80 E417     	MOV     	#17,R4		;
00AF82 3046     	CMP/HI 	R4,R0			;
00AF84 8B01     	BF      	#002			;
00AF86 A062     	BRA     	#00C4			;
00AF88 0009     	NOP     				;
00AF8A 6023     	MOV     	R2,R0			;
00AF8C 4029     	SHLR16  	R0			;
00AF8E C880     	TST     	#80,R0		;
00AF90 8B07     	BF      	#00E			;
00AF92 602E     	EXTS.B   	R2,R0			;
00AF94 88FF     	CMP/EQ  	#FF,R0		;
00AF96 8904     	BT      	#008			;
00AF98 E417     	MOV     	#17,R4		;
00AF9A 3046     	CMP/HI 	R4,R0			;
00AF9C 8B01     	BF      	#002			;
00AF9E A056     	BRA     	#00AC			;
00AFA0 0009     	NOP     				;
00AFA2 D433     	MOV.L   	@(#0CC,PC),R4	;
00AFA4 6040     	MOV.B   	@R4,R0		;
00AFA6 C808     	TST     	#08,R0		;
00AFA8 8B59     	BF      	#0B2			;
00AFAA 6013     	MOV     	R1,R0			;
00AFAC 4029     	SHLR16  	R0			;
00AFAE C880     	TST     	#80,R0		;
00AFB0 8B20     	BF      	#040			;
00AFB2 601E     	EXTS.B   	R1,R0			;
00AFB4 88FF     	CMP/EQ  	#FF,R0		;
00AFB6 890D     	BT      	#01A			;
00AFB8 2338     	TST     	R3,R3			;
00AFBA 8B05     	BF      	#00A			;
00AFBC D4AE     	MOV.L   	@(#2B8,PC),R4	;
00AFBE 6040     	MOV.B   	@R4,R0		;
00AFC0 8801     	CMP/EQ  	#01,R0		;
00AFC2 8B4C     	BF      	#098			;
00AFC4 A016     	BRA     	#002C			;
00AFC6 0009     	NOP     				;
00AFC8 D4B2     	MOV.L   	@(#2C8,PC),R4	;
00AFCA 6040     	MOV.B   	@R4,R0		;
00AFCC C820     	TST     	#20,R0		;
00AFCE 8B46     	BF      	#08C			;
00AFD0 A010     	BRA     	#0020			;
00AFD2 0009     	NOP     				;
00AFD4 2338     	TST     	R3,R3			;
00AFD6 8B09     	BF      	#012			;
00AFD8 D4A7     	MOV.L   	@(#29C,PC),R4	;
00AFDA 6040     	MOV.B   	@R4,R0		;
00AFDC 8801     	CMP/EQ  	#01,R0		;
00AFDE 8909     	BT      	#012			;
00AFE0 8802     	CMP/EQ  	#02,R0		;
00AFE2 8907     	BT      	#00E			;
00AFE4 8803     	CMP/EQ  	#03,R0		;
00AFE6 8905     	BT      	#00A			;
00AFE8 A039     	BRA     	#0072			;
00AFEA 0009     	NOP     				;
00AFEC D4A2     	MOV.L   	@(#288,PC),R4	;
00AFEE 6040     	MOV.B   	@R4,R0		;
00AFF0 8805     	CMP/EQ  	#05,R0		;
00AFF2 8934     	BT      	#068			;
00AFF4 6023     	MOV     	R2,R0			;
00AFF6 4029     	SHLR16  	R0			;
00AFF8 C880     	TST     	#80,R0		;
00AFFA 8B43     	BF      	#086			;
00AFFC D41C     	MOV.L   	@(#070,PC),R4	;
00AFFE 6040     	MOV.B   	@R4,R0		;
00B000 C840     	TST     	#40,R0		;
00B002 8901     	BT      	#002			;
00B004 A02B     	BRA     	#0056			;
00B006 0009     	NOP     				;
00B008 602E     	EXTS.B   	R2,R0			;
00B00A 88FF     	CMP/EQ  	#FF,R0		;
00B00C 890D     	BT      	#01A			;
00B00E 2338     	TST     	R3,R3			;
00B010 8B05     	BF      	#00A			;
00B012 D49A     	MOV.L   	@(#268,PC),R4	;
00B014 6040     	MOV.B   	@R4,R0		;
00B016 8801     	CMP/EQ  	#01,R0		;
00B018 8B21     	BF      	#042			;
00B01A A033     	BRA     	#0066			;
00B01C 0009     	NOP     				;
00B01E D49D     	MOV.L   	@(#274,PC),R4	;
00B020 6040     	MOV.B   	@R4,R0		;
00B022 C802     	TST     	#02,R0		;
00B024 8B1B     	BF      	#036			;
00B026 A02D     	BRA     	#005A			;
00B028 0009     	NOP     				;
00B02A 2338     	TST     	R3,R3			;
00B02C 8B09     	BF      	#012			;
00B02E D493     	MOV.L   	@(#24C,PC),R4	;
00B030 6040     	MOV.B   	@R4,R0		;
00B032 8801     	CMP/EQ  	#01,R0		;
00B034 8926     	BT      	#04C			;
00B036 8802     	CMP/EQ  	#02,R0		;
00B038 8924     	BT      	#048			;
00B03A 8803     	CMP/EQ  	#03,R0		;
00B03C 8922     	BT      	#044			;
00B03E A00E     	BRA     	#001C			;
00B040 0009     	NOP     				;
00B042 D48E     	MOV.L   	@(#238,PC),R4	;
00B044 6040     	MOV.B   	@R4,R0		;
00B046 8805     	CMP/EQ  	#05,R0		;
00B048 8909     	BT      	#012			;
00B04A A01B     	BRA     	#0036			;
00B04C 0009     	NOP     				;
00B04E D00C     	MOV.L   	@(#030,PC),R0	;
00B050 4F22     	STS.L   	PR,@-R15		;
00B052 400B     	JSR     	@R0			;
00B054 0009     	NOP     				;
00B056 4F26     	LDS.L   	@R15+,PR		;
00B058 2BBA     	XOR     	R11,R11		;
00B05A 000B     	RTS     				;
00B05C 0009     	NOP     				;
00B05E D007     	MOV.L   	@(#01C,PC),R0	;
00B060 4F22     	STS.L   	PR,@-R15		;
00B062 400B     	JSR     	@R0			;
00B064 0009     	NOP     				;
00B066 4F26     	LDS.L   	@R15+,PR		;
00B068 2BBA     	XOR     	R11,R11		;
00B06A 000B     	RTS     				;
00B06C 0009     	NOP     				;
00B06E 0009     	NOP     				;
00B070 0F00
00B072 0892
00B074 0F00
00B076 0891
00B078 0000
00B07A F89A
00B07C 0000
00B07E F896
00B080 0000
00B082 F892
00B084 6019     	SWAP.W   	R1,R0			;
00B086 C880     	TST     	#80,R0		;
00B088 8901     	BT      	#002			;
00B08A A058     	BRA     	#00B0			;
00B08C 0009     	NOP     				;
00B08E 601E     	EXTS.B   	R1,R0			;
00B090 88FF     	CMP/EQ  	#FF,R0		;
00B092 892C     	BT      	#058			;
00B094 2338     	TST     	R3,R3			;
00B096 8B1B     	BF      	#036			;
00B098 E001     	MOV     	#01,R0		;
00B09A 680C     	EXTU.B   	R0,R8			;
00B09C D47A     	MOV.L   	@(#1E8,PC),R4	;
00B09E 2412     	MOV.L   	R1,@R4		;
00B0A0 D471     	MOV.L   	@(#1C4,PC),R4	;
00B0A2 200A     	XOR     	R0,R0			;
00B0A4 2401     	MOV.W   	R0,@R4		;
00B0A6 D486     	MOV.L   	@(#218,PC),R4	;
00B0A8 441E     	LDC     	R4,GBR		;
00B0AA 200A     	XOR     	R0,R0			;
00B0AC CF80     	OR .B   	#80,@(R0,GBR)	;
00B0AE D474     	MOV.L   	@(#1D0,PC),R4	;
00B0B0 441E     	LDC     	R4,GBR		;
00B0B2 200A     	XOR     	R0,R0			;
00B0B4 CDEF     	AND.B   	#EF,@(R0,GBR)	;
00B0B6 D478     	MOV.L   	@(#1E0,PC),R4	;
00B0B8 6040     	MOV.B   	@R4,R0		;
00B0BA C90F     	AND     	#0F,R0		;
00B0BC 2400     	MOV.B   	R0,@R4		;
00B0BE D46E     	MOV.L   	@(#1B8,PC),R4	;
00B0C0 E002     	MOV     	#02,R0		;
00B0C2 2400     	MOV.B   	R0,@R4		;
00B0C4 D472     	MOV.L   	@(#1C8,PC),R4	;
00B0C6 6040     	MOV.B   	@R4,R0		;
00B0C8 CB04     	OR      	#04,R0		;
00B0CA 2400     	MOV.B   	R0,@R4		;
00B0CC A037     	BRA     	#006E			;
00B0CE 0009     	NOP     				;
00B0D0 D475     	MOV.L   	@(#1D4,PC),R4	;
00B0D2 2412     	MOV.L   	R1,@R4		;
00B0D4 D466     	MOV.L   	@(#198,PC),R4	;
00B0D6 200A     	XOR     	R0,R0			;
00B0D8 2401     	MOV.W   	R0,@R4		;
00B0DA D46E     	MOV.L   	@(#1B8,PC),R4	;
00B0DC 6040     	MOV.B   	@R4,R0		;
00B0DE CB20     	OR      	#20,R0		;
00B0E0 2400     	MOV.B   	R0,@R4		;
00B0E2 D46B     	MOV.L   	@(#1AC,PC),R4	;
00B0E4 6040     	MOV.B   	@R4,R0		;
00B0E6 CB08     	OR      	#08,R0		;
00B0E8 2400     	MOV.B   	R0,@R4		;
00B0EA A028     	BRA     	#0050			;
00B0EC 0009     	NOP     				;
00B0EE 2338     	TST     	R3,R3			;
00B0F0 8B0F     	BF      	#01E			;
00B0F2 D461     	MOV.L   	@(#184,PC),R4	;
00B0F4 6040     	MOV.B   	@R4,R0		;
00B0F6 8802     	CMP/EQ  	#02,R0		;
00B0F8 8903     	BT      	#006			;
00B0FA 8803     	CMP/EQ  	#03,R0		;
00B0FC 8901     	BT      	#002			;
00B0FE A01E     	BRA     	#003C			;
00B100 0009     	NOP     				;
00B102 D467     	MOV.L   	@(#19C,PC),R4	;
00B104 6040     	MOV.B   	@R4,R0		;
00B106 CB04     	OR      	#04,R0		;
00B108 2400     	MOV.B   	R0,@R4		;
00B10A E001     	MOV     	#01,R0		;
00B10C 290B     	OR      	R0,R9			;
00B10E A016     	BRA     	#002C			;
00B110 0009     	NOP     				;
00B112 D460     	MOV.L   	@(#180,PC),R4	;
00B114 6040     	MOV.B   	@R4,R0		;
00B116 C820     	TST     	#20,R0		;
00B118 8911     	BT      	#022			;
00B11A D462     	MOV.L   	@(#188,PC),R4	;
00B11C 6040     	MOV.B   	@R4,R0		;
00B11E C880     	TST     	#80,R0		;
00B120 8B05     	BF      	#00A			;
00B122 D45F     	MOV.L   	@(#17C,PC),R4	;
00B124 6040     	MOV.B   	@R4,R0		;
00B126 CB08     	OR      	#08,R0		;
00B128 2400     	MOV.B   	R0,@R4		;
00B12A A008     	BRA     	#0010			;
00B12C 0009     	NOP     				;
00B12E D459     	MOV.L   	@(#164,PC),R4	;
00B130 6040     	MOV.B   	@R4,R0		;
00B132 C9DF     	AND     	#DF,R0		;
00B134 2400     	MOV.B   	R0,@R4		;
00B136 D45B     	MOV.L   	@(#16C,PC),R4	;
00B138 6040     	MOV.B   	@R4,R0		;
00B13A C97F     	AND     	#7F,R0		;
00B13C 2400     	MOV.B   	R0,@R4		;
00B13E 6029     	SWAP.W   	R2,R0			;
00B140 C880     	TST     	#80,R0		;
00B142 8901     	BT      	#002			;
00B144 A054     	BRA     	#00A8			;
00B146 0009     	NOP     				;
00B148 602E     	EXTS.B   	R2,R0			;
00B14A 88FF     	CMP/EQ  	#FF,R0		;
00B14C 8928     	BT      	#050			;
00B14E 2338     	TST     	R3,R3			;
00B150 8B17     	BF      	#02E			;
00B152 E002     	MOV     	#02,R0		;
00B154 280B     	OR      	R0,R8			;
00B156 D44D     	MOV.L   	@(#134,PC),R4	;
00B158 2422     	MOV.L   	R2,@R4		;
00B15A D444     	MOV.L   	@(#110,PC),R4	;
00B15C 200A     	XOR     	R0,R0			;
00B15E 2401     	MOV.W   	R0,@R4		;
00B160 D44E     	MOV.L   	@(#138,PC),R4	;
00B162 441E     	LDC     	R4,GBR		;
00B164 200A     	XOR     	R0,R0			;
00B166 CF08     	OR .B   	#08,@(R0,GBR)	;
00B168 D446     	MOV.L   	@(#118,PC),R4	;
00B16A 441E     	LDC     	R4,GBR		;
00B16C 200A     	XOR     	R0,R0			;
00B16E CDEF     	AND.B   	#EF,@(R0,GBR)	;
00B170 D442     	MOV.L   	@(#108,PC),R4	;
00B172 E002     	MOV     	#02,R0		;
00B174 2400     	MOV.B   	R0,@R4		;
00B176 D446     	MOV.L   	@(#118,PC),R4	;
00B178 6040     	MOV.B   	@R4,R0		;
00B17A CB01     	OR      	#01,R0		;
00B17C 2400     	MOV.B   	R0,@R4		;
00B17E A037     	BRA     	#006E			;
00B180 0009     	NOP     				;
00B182 D44A     	MOV.L   	@(#128,PC),R4	;
00B184 2422     	MOV.L   	R2,@R4		;
00B186 D43B     	MOV.L   	@(#0EC,PC),R4	;
00B188 200A     	XOR     	R0,R0			;
00B18A 2401     	MOV.W   	R0,@R4		;
00B18C D441     	MOV.L   	@(#104,PC),R4	;
00B18E 6040     	MOV.B   	@R4,R0		;
00B190 CB02     	OR      	#02,R0		;
00B192 2400     	MOV.B   	R0,@R4		;
00B194 D43E     	MOV.L   	@(#0F8,PC),R4	;
00B196 6040     	MOV.B   	@R4,R0		;
00B198 CB02     	OR      	#02,R0		;
00B19A 2400     	MOV.B   	R0,@R4		;
00B19C A028     	BRA     	#0050			;
00B19E 0009     	NOP     				;
00B1A0 2338     	TST     	R3,R3			;
00B1A2 8B0F     	BF      	#01E			;
00B1A4 D435     	MOV.L   	@(#0D4,PC),R4	;
00B1A6 6040     	MOV.B   	@R4,R0		;
00B1A8 8802     	CMP/EQ  	#02,R0		;
00B1AA 8903     	BT      	#006			;
00B1AC 8803     	CMP/EQ  	#03,R0		;
00B1AE 8901     	BT      	#002			;
00B1B0 A01E     	BRA     	#003C			;
00B1B2 0009     	NOP     				;
00B1B4 D43A     	MOV.L   	@(#0E8,PC),R4	;
00B1B6 6040     	MOV.B   	@R4,R0		;
00B1B8 CB01     	OR      	#01,R0		;
00B1BA 2400     	MOV.B   	R0,@R4		;
00B1BC E002     	MOV     	#02,R0		;
00B1BE 290B     	OR      	R0,R9			;
00B1C0 A016     	BRA     	#002C			;
00B1C2 0009     	NOP     				;
00B1C4 D433     	MOV.L   	@(#0CC,PC),R4	;
00B1C6 6040     	MOV.B   	@R4,R0		;
00B1C8 C802     	TST     	#02,R0		;
00B1CA 8911     	BT      	#022			;
00B1CC D435     	MOV.L   	@(#0D4,PC),R4	;
00B1CE 6040     	MOV.B   	@R4,R0		;
00B1D0 C820     	TST     	#20,R0		;
00B1D2 8B05     	BF      	#00A			;
00B1D4 D432     	MOV.L   	@(#0C8,PC),R4	;
00B1D6 6040     	MOV.B   	@R4,R0		;
00B1D8 CB02     	OR      	#02,R0		;
00B1DA 2400     	MOV.B   	R0,@R4		;
00B1DC A008     	BRA     	#0010			;
00B1DE 0009     	NOP     				;
00B1E0 D42C     	MOV.L   	@(#0B0,PC),R4	;
00B1E2 6040     	MOV.B   	@R4,R0		;
00B1E4 C9FD     	AND     	#FD,R0		;
00B1E6 2400     	MOV.B   	R0,@R4		;
00B1E8 D42E     	MOV.L   	@(#0B8,PC),R4	;
00B1EA 6040     	MOV.B   	@R4,R0		;
00B1EC C9DF     	AND     	#DF,R0		;
00B1EE 2400     	MOV.B   	R0,@R4		;
00B1F0 6093     	MOV     	R9,R0			;
00B1F2 C803     	TST     	#03,R0		;
00B1F4 8B0E     	BF      	#01C			;
00B1F6 E003     	MOV     	#03,R0		;
00B1F8 3800     	CMP/EQ 	R0,R8			;
00B1FA 8B05     	BF      	#00A			;
00B1FC 6018     	SWAP.B   	R1,R0			;
00B1FE C801     	TST     	#01,R0		;
00B200 8B02     	BF      	#004			;
00B202 6028     	SWAP.B   	R2,R0			;
00B204 C801     	TST     	#01,R0		;
00B206 8905     	BT      	#00A			;
00B208 D520     	MOV.L   	@(#080,PC),R5	;
00B20A 8452     	MOV.B   	@(#02,R5),R0	;
00B20C C9BF     	AND     	#BF,R0		;
00B20E 8052     	MOV.B   	R0,@(#02,R5)	;
00B210 A013     	BRA     	#0026			;
00B212 0009     	NOP     				;
00B214 D51D     	MOV.L   	@(#074,PC),R5	;
00B216 8452     	MOV.B   	@(#02,R5),R0	;
00B218 C840     	TST     	#40,R0		;
00B21A 890E     	BT      	#01C			;
00B21C D51C     	MOV.L   	@(#070,PC),R5	;
00B21E 6050     	MOV.B   	@R5,R0		;
00B220 C9FB     	AND     	#FB,R0		;
00B222 2500     	MOV.B   	R0,@R5		;
00B224 6093     	MOV     	R9,R0			;
00B226 C802     	TST     	#02,R0		;
00B228 8907     	BT      	#00E			;
00B22A D413     	MOV.L   	@(#04C,PC),R4	;
00B22C 6040     	MOV.B   	@R4,R0		;
00B22E 8802     	CMP/EQ  	#02,R0		;
00B230 8B03     	BF      	#006			;
00B232 D41B     	MOV.L   	@(#06C,PC),R4	;
00B234 6040     	MOV.B   	@R4,R0		;
00B236 CB04     	OR      	#04,R0		;
00B238 2400     	MOV.B   	R0,@R4		;
00B23A D418     	MOV.L   	@(#060,PC),R4	;
00B23C 6040     	MOV.B   	@R4,R0		;
00B23E C801     	TST     	#01,R0		;
00B240 8907     	BT      	#00E			;
00B242 C804     	TST     	#04,R0		;
00B244 8905     	BT      	#00A			;
00B246 E003     	MOV     	#03,R0		;
00B248 3800     	CMP/EQ 	R0,R8			;
00B24A 8B02     	BF      	#004			;
00B24C 6040     	MOV.B   	@R4,R0		;
00B24E CB10     	OR      	#10,R0		;
00B250 2400     	MOV.B   	R0,@R4		;
00B252 D018     	MOV.L   	@(#060,PC),R0	;
00B254 4F22     	STS.L   	PR,@-R15		;
00B256 400B     	JSR     	@R0			;
00B258 0009     	NOP     				;
00B25A 4F26     	LDS.L   	@R15+,PR		;
00B25C DB16     	MOV.L   	@(#058,PC),R11	;
00B25E 000B     	RTS     				;
00B260 0009     	NOP     				;
00B262 0009     	NOP     				;
00B264 0F00
00B266 0854
00B268 0907
00B26A 5326
00B26C 0907
00B26E 5324
00B270 0907
00B272 534A
00B274 0907
00B276 5348
00B278 0F00
00B27A 089D
00B27C 0F00
00B27E 089C
00B280 0F00
00B282 0845
00B284 0F00
00B286 0846
00B288 0907
00B28A 532C
00B28C 0907
00B28E 5328
00B290 0907
00B292 5388
00B294 0F00
00B296 0894
00B298 0907
00B29A 5370
00B29C 0F00
00B29E 0890
00B2A0 0907
00B2A2 534D
00B2A4 0907
00B2A6 534C
00B2A8 0907
00B2AA 5334
00B2AC 0907
00B2AE 5330
00B2B0 0000
00B2B2 F8EE
00B2B4 0000
00B2B6 F89A
00B2B8 0981
00B2BA 0001
00B2BC 0A10
00B2BE 0000
00B2C0 0907     	MUL.L   	R0,R9			;
00B2C2 5371     	MOV.L   	@(#04,R7),R3	;
00B2C4 6019     	SWAP.W   	R1,R0			;
00B2C6 C801     	TST     	#01,R0		;
00B2C8 8906     	BT      	#00C			;
00B2CA 6318     	SWAP.B   	R1,R3			;
00B2CC 633C     	EXTU.B   	R3,R3			;
00B2CE E01F     	MOV     	#1F,R0		;
00B2D0 3306     	CMP/HI 	R0,R3			;
00B2D2 8B01     	BF      	#002			;
00B2D4 A04C     	BRA     	#0098			;
00B2D6 0009     	NOP     				;
00B2D8 6029     	SWAP.W   	R2,R0			;
00B2DA C801     	TST     	#01,R0		;
00B2DC 8906     	BT      	#00C			;
00B2DE 6328     	SWAP.B   	R2,R3			;
00B2E0 633C     	EXTU.B   	R3,R3			;
00B2E2 E00F     	MOV     	#0F,R0		;
00B2E4 3306     	CMP/HI 	R0,R3			;
00B2E6 8B01     	BF      	#002			;
00B2E8 A042     	BRA     	#0084			;
00B2EA 0009     	NOP     				;
00B2EC 6029     	SWAP.W   	R2,R0			;
00B2EE 4019     	SHLR8   	R0			;
00B2F0 C801     	TST     	#01,R0		;
00B2F2 8B1D     	BF      	#03A			;
00B2F4 D428     	MOV.L   	@(#0A0,PC),R4	;
00B2F6 6040     	MOV.B   	@R4,R0		;
00B2F8 C806     	TST     	#06,R0		;
00B2FA 8907     	BT      	#00E			;
00B2FC D021     	MOV.L   	@(#084,PC),R0	;
00B2FE 4F22     	STS.L   	PR,@-R15		;
00B300 400B     	JSR     	@R0			;
00B302 0009     	NOP     				;
00B304 4F26     	LDS.L   	@R15+,PR		;
00B306 2BBA     	XOR     	R11,R11		;
00B308 000B     	RTS     				;
00B30A 0009     	NOP     				;
00B30C 6019     	SWAP.W   	R1,R0			;
00B30E C811     	TST     	#11,R0		;
00B310 8903     	BT      	#006			;
00B312 D323     	MOV.L   	@(#08C,PC),R3	;
00B314 6030     	MOV.B   	@R3,R0		;
00B316 CB02     	OR      	#02,R0		;
00B318 2300     	MOV.B   	R0,@R3		;
00B31A 6029     	SWAP.W   	R2,R0			;
00B31C C811     	TST     	#11,R0		;
00B31E 8903     	BT      	#006			;
00B320 D320     	MOV.L   	@(#080,PC),R3	;
00B322 6030     	MOV.B   	@R3,R0		;
00B324 CB08     	OR      	#08,R0		;
00B326 2300     	MOV.B   	R0,@R3		;
00B328 D317     	MOV.L   	@(#05C,PC),R3	;
00B32A D418     	MOV.L   	@(#060,PC),R4	;
00B32C A002     	BRA     	#0004			;
00B32E 0009     	NOP     				;
00B330 D317     	MOV.L   	@(#05C,PC),R3	;
00B332 D418     	MOV.L   	@(#060,PC),R4	;
00B334 6019     	SWAP.W   	R1,R0			;
00B336 8031     	MOV.B   	R0,@(#01,R3)	;
00B338 C801     	TST     	#01,R0		;
00B33A 8901     	BT      	#002			;
00B33C 6018     	SWAP.B   	R1,R0			;
00B33E 8032     	MOV.B   	R0,@(#02,R3)	;
00B340 6019     	SWAP.W   	R1,R0			;
00B342 C810     	TST     	#10,R0		;
00B344 8901     	BT      	#002			;
00B346 6013     	MOV     	R1,R0			;
00B348 8033     	MOV.B   	R0,@(#03,R3)	;
00B34A 6029     	SWAP.W   	R2,R0			;
00B34C 8041     	MOV.B   	R0,@(#01,R4)	;
00B34E C801     	TST     	#01,R0		;
00B350 8901     	BT      	#002			;
00B352 6028     	SWAP.B   	R2,R0			;
00B354 8042     	MOV.B   	R0,@(#02,R4)	;
00B356 6029     	SWAP.W   	R2,R0			;
00B358 C810     	TST     	#10,R0		;
00B35A 8901     	BT      	#002			;
00B35C 6023     	MOV     	R2,R0			;
00B35E 8043     	MOV.B   	R0,@(#03,R4)	;
00B360 D007     	MOV.L   	@(#01C,PC),R0	;
00B362 4F22     	STS.L   	PR,@-R15		;
00B364 400B     	JSR     	@R0			;
00B366 0009     	NOP     				;
00B368 4F26     	LDS.L   	@R15+,PR		;
00B36A 2BBA     	XOR     	R11,R11		;
00B36C 000B     	RTS     				;
00B36E 0009     	NOP     				;
00B370 D00A     	MOV.L   	@(#028,PC),R0	;
00B372 4F22     	STS.L   	PR,@-R15		;
00B374 400B     	JSR     	@R0			;
00B376 0009     	NOP     				;
00B378 4F26     	LDS.L   	@R15+,PR		;
00B37A 2BBA     	XOR     	R11,R11		;
00B37C 000B     	RTS     				;
00B37E 0009     	NOP     				;
00B380 0000
00B382 F89A
00B384 0000
00B386 F896
00B388 0907
00B38A 533C
00B38C 0907
00B38E 5338
00B390 0907
00B392 5344
00B394 0907
00B396 5340
00B398 0F00
00B39A 0892
00B39C 0000
00B39E F892
00B3A0 0907
00B3A2 5371
00B3A4 0907
00B3A6 535C
00B3A8 D320     	MOV.L   	@(#080,PC),R3	;
00B3AA 6029     	SWAP.W   	R2,R0			;
00B3AC 4019     	SHLR8   	R0			;
00B3AE 2300     	MOV.B   	R0,@R3		;
00B3B0 D01C     	MOV.L   	@(#070,PC),R0	;
00B3B2 4F22     	STS.L   	PR,@-R15		;
00B3B4 400B     	JSR     	@R0			;
00B3B6 0009     	NOP     				;
00B3B8 4F26     	LDS.L   	@R15+,PR		;
00B3BA D31B     	MOV.L   	@(#06C,PC),R3	;
00B3BC 2C39     	AND     	R3,R12		;
00B3BE D21B     	MOV.L   	@(#06C,PC),R2	;
00B3C0 6D22     	MOV.L   	@R2,R13		;
00B3C2 2D39     	AND     	R3,R13		;
00B3C4 60D9     	SWAP.W   	R13,R0		;
00B3C6 4019     	SHLR8   	R0			;
00B3C8 C801     	TST     	#01,R0		;
00B3CA 8B0E     	BF      	#01C			;
00B3CC D317     	MOV.L   	@(#05C,PC),R3	;
00B3CE D418     	MOV.L   	@(#060,PC),R4	;
00B3D0 D51A     	MOV.L   	@(#068,PC),R5	;
00B3D2 8455     	MOV.B   	@(#05,R5),R0	;
00B3D4 8801     	CMP/EQ  	#01,R0		;
00B3D6 8B01     	BF      	#002			;
00B3D8 E0FF     	MOV     	#FF,R0		;
00B3DA 8033     	MOV.B   	R0,@(#03,R3)	;
00B3DC 8454     	MOV.B   	@(#04,R5),R0	;
00B3DE 8801     	CMP/EQ  	#01,R0		;
00B3E0 8B10     	BF      	#020			;
00B3E2 E0FF     	MOV     	#FF,R0		;
00B3E4 8043     	MOV.B   	R0,@(#03,R4)	;
00B3E6 A00D     	BRA     	#001A			;
00B3E8 0009     	NOP     				;
00B3EA D312     	MOV.L   	@(#048,PC),R3	;
00B3EC D412     	MOV.L   	@(#048,PC),R4	;
00B3EE D514     	MOV.L   	@(#050,PC),R5	;
00B3F0 6050     	MOV.B   	@R5,R0		;
00B3F2 C820     	TST     	#20,R0		;
00B3F4 8B01     	BF      	#002			;
00B3F6 E0FF     	MOV     	#FF,R0		;
00B3F8 8033     	MOV.B   	R0,@(#03,R3)	;
00B3FA 6050     	MOV.B   	@R5,R0		;
00B3FC C802     	TST     	#02,R0		;
00B3FE 8B01     	BF      	#002			;
00B400 E0FF     	MOV     	#FF,R0		;
00B402 8043     	MOV.B   	R0,@(#03,R4)	;
00B404 D508     	MOV.L   	@(#020,PC),R5	;
00B406 6557     	NOT     	R5,R5			;
00B408 6632     	MOV.L   	@R3,R6		;
00B40A 2659     	AND     	R5,R6			;
00B40C 2C6B     	OR      	R6,R12		;
00B40E D70D     	MOV.L   	@(#034,PC),R7	;
00B410 2C79     	AND     	R7,R12		;
00B412 6642     	MOV.L   	@R4,R6		;
00B414 2659     	AND     	R5,R6			;
00B416 2D6B     	OR      	R6,R13		;
00B418 D70B     	MOV.L   	@(#02C,PC),R7	;
00B41A 2D79     	AND     	R7,R13		;
00B41C 2BBA     	XOR     	R11,R11		;
00B41E 000B     	RTS     				;
00B420 0009     	NOP     				;
00B422 0009     	NOP     				;
00B424 0000
00B426 F8EE
00B428 FF00
00B42A 0000
00B42C 0907
00B42E 532C
00B430 0907
00B432 5328
00B434 0907
00B436 5334
00B438 0907
00B43A 5330
00B43C 0F00
00B43E 0898
00B440 0F00
00B442 0894
00B444 FF07
00B446 01FF
00B448 0137
00B44A C1FF     	MOV.W   	R0,@(#1FE,GBR)	;
00B44C D315     	MOV.L   	@(#054,PC),R3	;
00B44E 6029     	SWAP.W   	R2,R0			;
00B450 4019     	SHLR8   	R0			;
00B452 2300     	MOV.B   	R0,@R3		;
00B454 D011     	MOV.L   	@(#044,PC),R0	;
00B456 4F22     	STS.L   	PR,@-R15		;
00B458 400B     	JSR     	@R0			;
00B45A 0009     	NOP     				;
00B45C 4F26     	LDS.L   	@R15+,PR		;
00B45E D310     	MOV.L   	@(#040,PC),R3	;
00B460 2C39     	AND     	R3,R12		;
00B462 D210     	MOV.L   	@(#040,PC),R2	;
00B464 6D22     	MOV.L   	@R2,R13		;
00B466 2D39     	AND     	R3,R13		;
00B468 60D9     	SWAP.W   	R13,R0		;
00B46A 4019     	SHLR8   	R0			;
00B46C C801     	TST     	#01,R0		;
00B46E 8B03     	BF      	#006			;
00B470 D30C     	MOV.L   	@(#030,PC),R3	;
00B472 D40D     	MOV.L   	@(#034,PC),R4	;
00B474 A002     	BRA     	#0004			;
00B476 0009     	NOP     				;
00B478 D30C     	MOV.L   	@(#030,PC),R3	;
00B47A D40D     	MOV.L   	@(#034,PC),R4	;
00B47C D508     	MOV.L   	@(#020,PC),R5	;
00B47E 6557     	NOT     	R5,R5			;
00B480 6632     	MOV.L   	@R3,R6		;
00B482 2659     	AND     	R5,R6			;
00B484 2C6B     	OR      	R6,R12		;
00B486 D70B     	MOV.L   	@(#02C,PC),R7	;
00B488 2C79     	AND     	R7,R12		;
00B48A 6642     	MOV.L   	@R4,R6		;
00B48C 2659     	AND     	R5,R6			;
00B48E 2D6B     	OR      	R6,R13		;
00B490 D709     	MOV.L   	@(#024,PC),R7	;
00B492 2D79     	AND     	R7,R13		;
00B494 2BBA     	XOR     	R11,R11		;
00B496 000B     	RTS     				;
00B498 0009     	NOP     				;
00B49A 0009     	NOP     				;
00B49C 0000
00B49E F8EE
00B4A0 FF00
00B4A2 0000
00B4A4 0907
00B4A6 533C
00B4A8 0907
00B4AA 5338
00B4AC 0907
00B4AE 5344
00B4B0 0907
00B4B2 5340
00B4B4 FF22
00B4B6 FFFF
00B4B8 0122
00B4BA FFFF

DMAC3:							;DMAC3 handler
00B4BC 2F06     	MOV.L   	R0,@-R15		;
00B4BE 2F16     	MOV.L   	R1,@-R15		;
00B4C0 2F26     	MOV.L   	R2,@-R15		;
00B4C2 2F36     	MOV.L   	R3,@-R15		;
00B4C4 2F46     	MOV.L   	R4,@-R15		;
00B4C6 2F56     	MOV.L   	R5,@-R15		;
00B4C8 2F66     	MOV.L   	R6,@-R15		;
00B4CA 2F76     	MOV.L   	R7,@-R15		;
00B4CC 2F86     	MOV.L   	R8,@-R15		;
00B4CE 2F96     	MOV.L   	R9,@-R15		;
00B4D0 2FA6     	MOV.L   	R10,@-R15		;
00B4D2 2FB6     	MOV.L   	R11,@-R15		;
00B4D4 2FC6     	MOV.L   	R12,@-R15		;
00B4D6 2FD6     	MOV.L   	R13,@-R15		;
00B4D8 4F22     	STS.L   	PR,@-R15		;
00B4DA 4F13     	STC.L   	GBR,@-R15		;
00B4DC 4F02     	STS.L   	MACH,@-R15		;
00B4DE 4F12     	STS.L   	MACL,@-R15		;
00B4E0 DD08     	MOV.L   	@(#020,PC),R13	;
00B4E2 6CD2     	MOV.L   	@R13,R12		;
00B4E4 1CF2     	MOV.L   	R15,@(#8,R12)	;
00B4E6 DF08     	MOV.L   	@(#020,PC),R15	;SH1.SP = &temp_stack3_end;
00B4E8 D30B     	MOV.L   	@(#02C,PC),R3	;
00B4EA 6030     	MOV.B   	@R3,R0		;
00B4EC CB04     	OR      	#04,R0		;
00B4EE 2300     	MOV.B   	R0,@R3		;
00B4F0 D308     	MOV.L   	@(#020,PC),R3	;
00B4F2 431E     	LDC     	R3,GBR		;
00B4F4 E07F     	MOV     	#7F,R0		;
00B4F6 CDFB     	AND.B   	#FB,@(R0,GBR)	;
00B4F8 DB09     	MOV.L   	@(#024,PC),R11	;
00B4FA C321     	TRAPA   	#21			;
00B4FC 0009     	NOP     				;
00B4FE D003     	MOV.L   	@(#00C,PC),R0	;
00B500 402B     	JMP     	@R0			;L00102E();
00B502 0009     	NOP     				;
00B504 0F00
00B506 01D4
00B508 0F0008F8
00B50C 0000102E
00B510 0F00
00B512 0884
00B514 05FF
00B516 FF00
00B518 0F00
00B51A 0892
00B51C 0F00
00B51E 0897
00B520 088A
00B522 000C
00B524 0A18
00B526 0000
00B528 2AAA     	XOR     	R10,R10		;
00B52A D347     	MOV.L   	@(#11C,PC),R3	;
00B52C 6030     	MOV.B   	@R3,R0		;
00B52E C80E     	TST     	#0E,R0		;
00B530 8901     	BT      	#002			;
00B532 A17F     	BRA     	#02FE			;
00B534 0009     	NOP     				;
00B536 D34B     	MOV.L   	@(#12C,PC),R3	;
00B538 6030     	MOV.B   	@R3,R0		;
00B53A C801     	TST     	#01,R0		;
00B53C 8901     	BT      	#002			;
00B53E A179     	BRA     	#02F2			;
00B540 0009     	NOP     				;
00B542 D345     	MOV.L   	@(#114,PC),R3	;
00B544 2311     	MOV.W   	R1,@R3		;
00B546 7302     	ADD     	#02,R3		;
00B548 6229     	SWAP.W   	R2,R2			;
00B54A 2321     	MOV.W   	R2,@R3		;
00B54C D342     	MOV.L   	@(#108,PC),R3	;
00B54E D43F     	MOV.L   	@(#0FC,PC),R4	;
00B550 601C     	EXTU.B   	R1,R0			;
00B552 C880     	TST     	#80,R0		;
00B554 8901     	BT      	#002			;
00B556 A010     	BRA     	#0020			;
00B558 0009     	NOP     				;
00B55A C801     	TST     	#01,R0		;
00B55C 8B01     	BF      	#002			;
00B55E A005     	BRA     	#000A			;
00B560 0009     	NOP     				;
00B562 6040     	MOV.B   	@R4,R0		;
00B564 C802     	TST     	#02,R0		;
00B566 8B01     	BF      	#002			;
00B568 A164     	BRA     	#02C8			;
00B56A 0009     	NOP     				;
00B56C D538     	MOV.L   	@(#0E0,PC),R5	;
00B56E 6050     	MOV.B   	@R5,R0		;
00B570 8804     	CMP/EQ  	#04,R0		;
00B572 8901     	BT      	#002			;
00B574 A15E     	BRA     	#02BC			;
00B576 0009     	NOP     				;
00B578 EA01     	MOV     	#01,R10		;
00B57A 4119     	SHLR8   	R1			;
00B57C 601C     	EXTU.B   	R1,R0			;
00B57E C880     	TST     	#80,R0		;
00B580 8901     	BT      	#002			;
00B582 A011     	BRA     	#0022			;
00B584 0009     	NOP     				;
00B586 C801     	TST     	#01,R0		;
00B588 8B01     	BF      	#002			;
00B58A A005     	BRA     	#000A			;
00B58C 0009     	NOP     				;
00B58E 6040     	MOV.B   	@R4,R0		;
00B590 C820     	TST     	#20,R0		;
00B592 8B01     	BF      	#002			;
00B594 A14E     	BRA     	#029C			;
00B596 0009     	NOP     				;
00B598 D62E     	MOV.L   	@(#0B8,PC),R6	;
00B59A 6060     	MOV.B   	@R6,R0		;
00B59C 8804     	CMP/EQ  	#04,R0		;
00B59E 8901     	BT      	#002			;
00B5A0 A148     	BRA     	#0290			;
00B5A2 0009     	NOP     				;
00B5A4 E002     	MOV     	#02,R0		;
00B5A6 2A0B     	OR      	R0,R10		;
00B5A8 4A01     	SHLR    	R10			;
00B5AA 8B02     	BF      	#004			;
00B5AC E505     	MOV     	#05,R5		;
00B5AE D628     	MOV.L   	@(#0A0,PC),R6	;
00B5B0 2650     	MOV.B   	R5,@R6		;
00B5B2 4A01     	SHLR    	R10			;
00B5B4 8B02     	BF      	#004			;
00B5B6 E505     	MOV     	#05,R5		;
00B5B8 D626     	MOV.L   	@(#098,PC),R6	;
00B5BA 2650     	MOV.B   	R5,@R6		;
00B5BC 4F22     	STS.L   	PR,@-R15		;
00B5BE D02A     	MOV.L   	@(#0A8,PC),R0	;
00B5C0 400B     	JSR     	@R0			;
00B5C2 0009     	NOP     				;
00B5C4 D025     	MOV.L   	@(#094,PC),R0	;
00B5C6 400B     	JSR     	@R0			;
00B5C8 0009     	NOP     				;
00B5CA 4F26     	LDS.L   	@R15+,PR		;
00B5CC DB24     	MOV.L   	@(#090,PC),R11	;
00B5CE 000B     	RTS     				;
00B5D0 0009     	NOP     				;
00B5D2 D321     	MOV.L   	@(#084,PC),R3	;
00B5D4 8431     	MOV.B   	@(#01,R3),R0	;
00B5D6 C880     	TST     	#80,R0		;
00B5D8 8901     	BT      	#002			;
00B5DA A015     	BRA     	#002A			;
00B5DC 0009     	NOP     				;
00B5DE C801     	TST     	#01,R0		;
00B5E0 8901     	BT      	#002			;
00B5E2 A011     	BRA     	#0022			;
00B5E4 0009     	NOP     				;
00B5E6 4F22     	STS.L   	PR,@-R15		;
00B5E8 D020     	MOV.L   	@(#080,PC),R0	;
00B5EA 400B     	JSR     	@R0			;
00B5EC 0009     	NOP     				;
00B5EE 4F26     	LDS.L   	@R15+,PR		;
00B5F0 D416     	MOV.L   	@(#058,PC),R4	;
00B5F2 6040     	MOV.B   	@R4,R0		;
00B5F4 C9FE     	AND     	#FE,R0		;
00B5F6 2400     	MOV.B   	R0,@R4		;
00B5F8 D415     	MOV.L   	@(#054,PC),R4	;
00B5FA E001     	MOV     	#01,R0		;
00B5FC 2400     	MOV.B   	R0,@R4		;
00B5FE 4F22     	STS.L   	PR,@-R15		;
00B600 D01C     	MOV.L   	@(#070,PC),R0	;
00B602 400B     	JSR     	@R0			;
00B604 0009     	NOP     				;
00B606 4F26     	LDS.L   	@R15+,PR		;
00B608 6030     	MOV.B   	@R3,R0		;
00B60A C880     	TST     	#80,R0		;
00B60C 8901     	BT      	#002			;
00B60E A015     	BRA     	#002A			;
00B610 0009     	NOP     				;
00B612 C801     	TST     	#01,R0		;
00B614 8901     	BT      	#002			;
00B616 A011     	BRA     	#0022			;
00B618 0009     	NOP     				;
00B61A 4F22     	STS.L   	PR,@-R15		;
00B61C D014     	MOV.L   	@(#050,PC),R0	;
00B61E 400B     	JSR     	@R0			;
00B620 0009     	NOP     				;
00B622 4F26     	LDS.L   	@R15+,PR		;
00B624 D409     	MOV.L   	@(#024,PC),R4	;
00B626 6040     	MOV.B   	@R4,R0		;
00B628 C9EF     	AND     	#EF,R0		;
00B62A 2400     	MOV.B   	R0,@R4		;
00B62C D409     	MOV.L   	@(#024,PC),R4	;
00B62E E001     	MOV     	#01,R0		;
00B630 2400     	MOV.B   	R0,@R4		;
00B632 4F22     	STS.L   	PR,@-R15		;
00B634 D00F     	MOV.L   	@(#03C,PC),R0	;
00B636 400B     	JSR     	@R0			;
00B638 0009     	NOP     				;
00B63A 4F26     	LDS.L   	@R15+,PR		;
00B63C D409     	MOV.L   	@(#024,PC),R4	;
00B63E E001     	MOV     	#01,R0		;
00B640 2400     	MOV.B   	R0,@R4		;
00B642 000B     	RTS     				;
00B644 0009     	NOP     				;
00B646 0009     	NOP     				;
00B648 0F00
00B64A 0892
00B64C 0F00
00B64E 0894
00B650 0F00
00B652 089C
00B654 0F00
00B656 089D
00B658 0907
00B65A 5374
00B65C 0000
00B65E F89A
00B660 0881
00B662 0014
00B664 0907
00B666 537B
00B668 0000
00B66A F8EA
00B66C 0000
00B66E F872
00B670 0000
00B672 F876
00B674 0000
00B676 F87A
00B678 D3B2     	MOV.L   	@(#2C8,PC),R3	;
00B67A 7312     	ADD     	#12,R3		;
00B67C 2311     	MOV.W   	R1,@R3		;
00B67E D4A9     	MOV.L   	@(#2A4,PC),R4	;
00B680 7412     	ADD     	#12,R4		;
00B682 A0D0     	BRA     	#01A0			;
00B684 2411     	MOV.W   	R1,@R4		;
00B686 D3A6     	MOV.L   	@(#298,PC),R3	;
00B688 6030     	MOV.B   	@R3,R0		;
00B68A C802     	TST     	#02,R0		;
00B68C 8901     	BT      	#002			;
00B68E A0D1     	BRA     	#01A2			;
00B690 0009     	NOP     				;
00B692 631E     	EXTS.B   	R1,R3			;
00B694 7308     	ADD     	#08,R3		;
00B696 4311     	CMP/PZ  	R3			;
00B698 8901     	BT      	#002			;
00B69A A0D2     	BRA     	#01A4			;
00B69C 0009     	NOP     				;
00B69E E00F     	MOV     	#0F,R0		;
00B6A0 3307     	CMP/GT 	R0,R3			;
00B6A2 8B01     	BF      	#002			;
00B6A4 A0CD     	BRA     	#019A			;
00B6A6 0009     	NOP     				;
00B6A8 6418     	SWAP.B   	R1,R4			;
00B6AA 644E     	EXTS.B   	R4,R4			;
00B6AC 7408     	ADD     	#08,R4		;
00B6AE 4411     	CMP/PZ  	R4			;
00B6B0 8901     	BT      	#002			;
00B6B2 A0C6     	BRA     	#018C			;
00B6B4 0009     	NOP     				;
00B6B6 3407     	CMP/GT 	R0,R4			;
00B6B8 8B01     	BF      	#002			;
00B6BA A0C2     	BRA     	#0184			;
00B6BC 0009     	NOP     				;
00B6BE 4308     	SHLL2   	R3			;
00B6C0 4308     	SHLL2   	R3			;
00B6C2 234B     	OR      	R4,R3			;
00B6C4 D597     	MOV.L   	@(#25C,PC),R5	;
00B6C6 6651     	MOV.W   	@R5,R6		;
00B6C8 666C     	EXTU.B   	R6,R6			;
00B6CA 4318     	SHLL8   	R3			;
00B6CC 263B     	OR      	R3,R6			;
00B6CE 2561     	MOV.W   	R6,@R5		;
00B6D0 D59C     	MOV.L   	@(#270,PC),R5	;
00B6D2 A0A8     	BRA     	#0150			;
00B6D4 2561     	MOV.W   	R6,@R5		;
00B6D6 D392     	MOV.L   	@(#248,PC),R3	;
00B6D8 6030     	MOV.B   	@R3,R0		;
00B6DA C802     	TST     	#02,R0		;
00B6DC 8901     	BT      	#002			;
00B6DE A0A9     	BRA     	#0152			;
00B6E0 0009     	NOP     				;
00B6E2 D690     	MOV.L   	@(#240,PC),R6	;
00B6E4 7618     	ADD     	#18,R6		;
00B6E6 6461     	MOV.W   	@R6,R4		;
00B6E8 6348     	SWAP.B   	R4,R3			;
00B6EA 644C     	EXTU.B   	R4,R4			;
00B6EC 633C     	EXTU.B   	R3,R3			;
00B6EE 602C     	EXTU.B   	R2,R0			;
00B6F0 C880     	TST     	#80,R0		;
00B6F2 8901     	BT      	#002			;
00B6F4 A00A     	BRA     	#0014			;
00B6F6 0009     	NOP     				;
00B6F8 C801     	TST     	#01,R0		;
00B6FA 8904     	BT      	#008			;
00B6FC E0DF     	MOV     	#DF,R0		;
00B6FE 600C     	EXTU.B   	R0,R0			;
00B700 2409     	AND     	R0,R4			;
00B702 A003     	BRA     	#0006			;
00B704 0009     	NOP     				;
00B706 E020     	MOV     	#20,R0		;
00B708 600C     	EXTU.B   	R0,R0			;
00B70A 240B     	OR      	R0,R4			;
00B70C 4219     	SHLR8   	R2			;
00B70E 602C     	EXTU.B   	R2,R0			;
00B710 C880     	TST     	#80,R0		;
00B712 8901     	BT      	#002			;
00B714 A00A     	BRA     	#0014			;
00B716 0009     	NOP     				;
00B718 C801     	TST     	#01,R0		;
00B71A 8904     	BT      	#008			;
00B71C E0EF     	MOV     	#EF,R0		;
00B71E 600C     	EXTU.B   	R0,R0			;
00B720 2409     	AND     	R0,R4			;
00B722 A003     	BRA     	#0006			;
00B724 0009     	NOP     				;
00B726 E010     	MOV     	#10,R0		;
00B728 600C     	EXTU.B   	R0,R0			;
00B72A 240B     	OR      	R0,R4			;
00B72C 4219     	SHLR8   	R2			;
00B72E 602E     	EXTS.B   	R2,R0			;
00B730 88FF     	CMP/EQ  	#FF,R0		;
00B732 8B01     	BF      	#002			;
00B734 A00F     	BRA     	#001E			;
00B736 0009     	NOP     				;
00B738 E50A     	MOV     	#0A,R5		;
00B73A 600C     	EXTU.B   	R0,R0			;
00B73C 3052     	CMP/HS 	R5,R0			;
00B73E 8903     	BT      	#006			;
00B740 70FF     	ADD     	#FF,R0		;
00B742 650C     	EXTU.B   	R0,R5			;
00B744 A001     	BRA     	#0002			;
00B746 0009     	NOP     				;
00B748 E509     	MOV     	#09,R5		;
00B74A E00F     	MOV     	#0F,R0		;
00B74C 600C     	EXTU.B   	R0,R0			;
00B74E 2309     	AND     	R0,R3			;
00B750 4508     	SHLL2   	R5			;
00B752 4508     	SHLL2   	R5			;
00B754 235B     	OR      	R5,R3			;
00B756 4219     	SHLR8   	R2			;
00B758 602E     	EXTS.B   	R2,R0			;
00B75A 88FF     	CMP/EQ  	#FF,R0		;
00B75C 8B01     	BF      	#002			;
00B75E A00F     	BRA     	#001E			;
00B760 0009     	NOP     				;
00B762 E50A     	MOV     	#0A,R5		;
00B764 600C     	EXTU.B   	R0,R0			;
00B766 3052     	CMP/HS 	R5,R0			;
00B768 8903     	BT      	#006			;
00B76A 70FF     	ADD     	#FF,R0		;
00B76C 650C     	EXTU.B   	R0,R5			;
00B76E A001     	BRA     	#0002			;
00B770 0009     	NOP     				;
00B772 E509     	MOV     	#09,R5		;
00B774 E0F0     	MOV     	#F0,R0		;
00B776 600C     	EXTU.B   	R0,R0			;
00B778 2309     	AND     	R0,R3			;
00B77A E00F     	MOV     	#0F,R0		;
00B77C 2509     	AND     	R0,R5			;
00B77E 235B     	OR      	R5,R3			;
00B780 601C     	EXTU.B   	R1,R0			;
00B782 C880     	TST     	#80,R0		;
00B784 8901     	BT      	#002			;
00B786 A006     	BRA     	#000C			;
00B788 0009     	NOP     				;
00B78A E5F8     	MOV     	#F8,R5		;
00B78C 655C     	EXTU.B   	R5,R5			;
00B78E 2459     	AND     	R5,R4			;
00B790 6007     	NOT     	R0,R0			;
00B792 C907     	AND     	#07,R0		;
00B794 240B     	OR      	R0,R4			;
00B796 4318     	SHLL8   	R3			;
00B798 243B     	OR      	R3,R4			;
00B79A 2641     	MOV.W   	R4,@R6		;
00B79C D869     	MOV.L   	@(#1A4,PC),R8	;
00B79E 781C     	ADD     	#1C,R8		;
00B7A0 2841     	MOV.W   	R4,@R8		;
00B7A2 4119     	SHLR8   	R1			;
00B7A4 601C     	EXTU.B   	R1,R0			;
00B7A6 C880     	TST     	#80,R0		;
00B7A8 8901     	BT      	#002			;
00B7AA A03C     	BRA     	#0078			;
00B7AC 0009     	NOP     				;
00B7AE D65D     	MOV.L   	@(#174,PC),R6	;
00B7B0 6761     	MOV.W   	@R6,R7		;
00B7B2 9809     	MOV.W   	@(#012,PC),R8	;
00B7B4 2789     	AND     	R8,R7			;
00B7B6 6007     	NOT     	R0,R0			;
00B7B8 C90F     	AND     	#0F,R0		;
00B7BA 4008     	SHLL2   	R0			;
00B7BC 4008     	SHLL2   	R0			;
00B7BE 270B     	OR      	R0,R7			;
00B7C0 2671     	MOV.W   	R7,@R6		;
00B7C2 D660     	MOV.L   	@(#180,PC),R6	;
00B7C4 A02F     	BRA     	#005E			;
00B7C6 2671     	MOV.W   	R7,@R6		;
00B7C8 FF0F     	
00B7CA D356     	MOV.L   	@(#158,PC),R3	;
00B7CC 7314     	ADD     	#14,R3		;
00B7CE 6031     	MOV.W   	@R3,R0		;
00B7D0 C802     	TST     	#02,R0		;
00B7D2 8901     	BT      	#002			;
00B7D4 A035     	BRA     	#006A			;
00B7D6 0009     	NOP     				;
00B7D8 D35A     	MOV.L   	@(#168,PC),R3	;
00B7DA 6031     	MOV.W   	@R3,R0		;
00B7DC D453     	MOV.L   	@(#14C,PC),R4	;
00B7DE 2401     	MOV.W   	R0,@R4		;
00B7E0 4019     	SHLR8   	R0			;
00B7E2 C801     	TST     	#01,R0		;
00B7E4 8901     	BT      	#002			;
00B7E6 A025     	BRA     	#004A			;
00B7E8 0009     	NOP     				;
00B7EA 7316     	ADD     	#16,R3		;
00B7EC E0FE     	MOV     	#FE,R0		;
00B7EE 600C     	EXTU.B   	R0,R0			;
00B7F0 2301     	MOV.W   	R0,@R3		;
00B7F2 4F22     	STS.L   	PR,@-R15		;
00B7F4 D044     	MOV.L   	@(#110,PC),R0	;
00B7F6 400B     	JSR     	@R0			;
00B7F8 0009     	NOP     				;
00B7FA 4F26     	LDS.L   	@R15+,PR		;
00B7FC D349     	MOV.L   	@(#124,PC),R3	;
00B7FE 7306     	ADD     	#06,R3		;
00B800 6531     	MOV.W   	@R3,R5		;
00B802 7302     	ADD     	#02,R3		;
00B804 6631     	MOV.W   	@R3,R6		;
00B806 D347     	MOV.L   	@(#11C,PC),R3	;
00B808 6031     	MOV.W   	@R3,R0		;
00B80A C808     	TST     	#08,R0		;
00B80C 8900     	BT      	#000			;
00B80E 4601     	SHLR    	R6			;
00B810 265E     	MULU.W  	R5,R6			;
00B812 001A     	STS     	MACL, R0		;
00B814 4018     	SHLL8   	R0			;
00B816 4019     	SHLR8   	R0			;
00B818 4C29     	SHLR16  	R12			;
00B81A 4C19     	SHLR8   	R12			;
00B81C 4C28     	SHLL16  	R12			;
00B81E 4C18     	SHLL8   	R12			;
00B820 2C0B     	OR      	R0,R12		;
00B822 A014     	BRA     	#0028			;
00B824 2BBA     	XOR     	R11,R11		;
00B826 4F22     	STS.L   	PR,@-R15		;
00B828 D03A     	MOV.L   	@(#0E8,PC),R0	;
00B82A 400B     	JSR     	@R0			;
00B82C 0009     	NOP     				;
00B82E 4F26     	LDS.L   	@R15+,PR		;
00B830 A00D     	BRA     	#001A			;
00B832 2BBA     	XOR     	R11,R11		;
00B834 4F22     	STS.L   	PR,@-R15		;
00B836 D035     	MOV.L   	@(#0D4,PC),R0	;
00B838 400B     	JSR     	@R0			;
00B83A 0009     	NOP     				;
00B83C 4F26     	LDS.L   	@R15+,PR		;
00B83E A006     	BRA     	#000C			;
00B840 2BBA     	XOR     	R11,R11		;
00B842 4F22     	STS.L   	PR,@-R15		;
00B844 D032     	MOV.L   	@(#0C8,PC),R0	;
00B846 400B     	JSR     	@R0			;
00B848 0009     	NOP     				;
00B84A 4F26     	LDS.L   	@R15+,PR		;
00B84C 2BBA     	XOR     	R11,R11		;
00B84E 000B     	RTS     				;
00B850 0009     	NOP     				;

mpega_int:							;ITU2 IMIA2 handler
00B852 2F06     	MOV.L   	R0,@-R15		;
00B854 2F16     	MOV.L   	R1,@-R15		;
00B856 2F26     	MOV.L   	R2,@-R15		;
00B858 2F36     	MOV.L   	R3,@-R15		;
00B85A 2F46     	MOV.L   	R4,@-R15		;
00B85C 2F56     	MOV.L   	R5,@-R15		;
00B85E 2F66     	MOV.L   	R6,@-R15		;
00B860 2F76     	MOV.L   	R7,@-R15		;
00B862 2F86     	MOV.L   	R8,@-R15		;
00B864 2F96     	MOV.L   	R9,@-R15		;
00B866 2FA6     	MOV.L   	R10,@-R15		;
00B868 2FB6     	MOV.L   	R11,@-R15		;
00B86A 2FC6     	MOV.L   	R12,@-R15		;
00B86C 2FD6     	MOV.L   	R13,@-R15		;
00B86E 4F22     	STS.L   	PR,@-R15		;
00B870 4F13     	STC.L   	GBR,@-R15		;
00B872 4F02     	STS.L   	MACH,@-R15		;
00B874 4F12     	STS.L   	MACL,@-R15		;
00B876 DD30     	MOV.L   	@(#0C0,PC),R13	;
00B878 6CD2     	MOV.L   	@R13,R12		;
00B87A 1CF2     	MOV.L   	R15,@(#8,R12)	;
00B87C DF2F     	MOV.L   	@(#0BC,PC),R15	;
00B87E 4F22     	STS.L   	PR,@-R15		;
00B880 D026     	MOV.L   	@(#098,PC),R0	;
00B882 400B     	JSR     	@R0			;
00B884 0009     	NOP     				;
00B886 4F26     	LDS.L   	@R15+,PR		;
00B888 D02A     	MOV.L   	@(#0A8,PC),R0	;
00B88A 402B     	JMP     	@R0			;
00B88C 0009     	NOP     				;

00B88E D728     	MOV.L   	@(#0A0,PC),R7	;
00B890 471E     	LDC     	R7,GBR		;
00B892 C41B     	MOV.B   	@(#01B,GBR),R0	;
00B894 C9FE     	AND     	#FE,R0		;
00B896 C01B     	MOV.B   	R0,@(#01B,GBR)	;
00B898 D125     	MOV.L   	@(#094,PC),R1	;
00B89A 411E     	LDC     	R1,GBR		;
00B89C E07F     	MOV     	#7F,R0		;
00B89E CC01     	TST.B   	#01,@(R0,GBR)	;
00B8A0 8B06     	BF      	#00C			;
00B8A2 4F22     	STS.L   	PR,@-R15		;
00B8A4 D01C     	MOV.L   	@(#070,PC),R0	;
00B8A6 400B     	JSR     	@R0			;
00B8A8 0009     	NOP     				;
00B8AA 4F26     	LDS.L   	@R15+,PR		;
00B8AC A008     	BRA     	#0010			;
00B8AE 0009     	NOP     				;
00B8B0 CDFE     	AND.B   	#FE,@(R0,GBR)	;
00B8B2 4F22     	STS.L   	PR,@-R15		;
00B8B4 D018     	MOV.L   	@(#060,PC),R0	;
00B8B6 400B     	JSR     	@R0			;
00B8B8 0009     	NOP     				;
00B8BA 4F26     	LDS.L   	@R15+,PR		;
00B8BC E07F     	MOV     	#7F,R0		;
00B8BE CF01     	OR .B   	#01,@(R0,GBR)	;
00B8C0 D421     	MOV.L   	@(#084,PC),R4	;
00B8C2 6040     	MOV.B   	@R4,R0		;
00B8C4 CB20     	OR      	#20,R0		;
00B8C6 2400     	MOV.B   	R0,@R4		;
00B8C8 D420     	MOV.L   	@(#080,PC),R4	;
00B8CA 8441     	MOV.B   	@(#01,R4),R0	;
00B8CC CB10     	OR      	#10,R0		;
00B8CE 8041     	MOV.B   	R0,@(#01,R4)	;
00B8D0 8445     	MOV.B   	@(#05,R4),R0	;
00B8D2 C810     	TST     	#10,R0		;
00B8D4 8902     	BT      	#004			;
00B8D6 D41E     	MOV.L   	@(#078,PC),R4	;
00B8D8 903C     	MOV.W   	@(#078,PC),R0	;
00B8DA 2401     	MOV.W   	R0,@R4		;
00B8DC 000B     	RTS     				;
00B8DE 0009     	NOP     				;
00B8E0 D117     	MOV.L   	@(#05C,PC),R1	;
00B8E2 8514     	MOV.W   	@(#08,R1),R0	;
00B8E4 D210     	MOV.L   	@(#040,PC),R2	;
00B8E6 6021     	MOV.W   	@R2,R0		;
00B8E8 9236     	MOV.W   	@(#06C,PC),R2	;
00B8EA 202B     	OR      	R2,R0			;
00B8EC 8114     	MOV.W   	R0,@(#08,R1)	;
00B8EE 200A     	XOR     	R0,R0			;
00B8F0 8808     	CMP/EQ  	#08,R0		;
00B8F2 8902     	BT      	#004			;
00B8F4 7001     	ADD     	#01,R0		;
00B8F6 AFFB     	BRA     	#1FF6			;
00B8F8 0009     	NOP     				;
00B8FA D20B     	MOV.L   	@(#02C,PC),R2	;
00B8FC 6021     	MOV.W   	@R2,R0		;
00B8FE 922A     	MOV.W   	@(#054,PC),R2	;
00B900 2029     	AND     	R2,R0			;
00B902 8114     	MOV.W   	R0,@(#08,R1)	;
00B904 000B     	RTS     				;
00B906 0009     	NOP     				;
00B908 0000
00B90A F8EE
00B90C 0000
00B90E F896
00B910 0000
00B912 F892
00B914 0000
00B916 F89A
00B918 0000
00B91A F86E
00B91C 0000
00B91E F86A
00B920 0F00
00B922 0897
00B924 0F00
00B926 0854
00B928 0F00
00B92A 0884
00B92C 0F00
00B92E 0852
00B930 05FF
00B932 FF00
00B934 0000
00B936 102E
00B938 0F00
00B93A 01D4
00B93C 0F00
00B93E 08F8
00B940 0A18
00B942 0000
00B944 0A10
00B946 0000
00B948 0F00
00B94A 0845
00B94C 0F00
00B94E 0848
00B950 0A00
00B952 001E     	MOV.L   	@(R0,R1),R0		;
00B954 2000     	MOV.B   	R0,@R0		;
00B956 BFFF     	BRS     	#1FFE			;
00B958 4000     	SHLL    	R0			;
00B95A 0009     	NOP     				;
00B95C D02C     	MOV.L   	@(#0B0,PC),R0	;
00B95E 401E     	LDC     	R0,GBR		;
00B960 E06F     	MOV     	#6F,R0		;
00B962 CDFE     	AND.B   	#FE,@(R0,GBR)	;
00B964 CDFD     	AND.B   	#FD,@(R0,GBR)	;
00B966 CF04     	OR .B   	#04,@(R0,GBR)	;
00B968 D430     	MOV.L   	@(#0C0,PC),R4	;
00B96A E000     	MOV     	#00,R0		;
00B96C 2400     	MOV.B   	R0,@R4		;
00B96E D42E     	MOV.L   	@(#0B8,PC),R4	;
00B970 E000     	MOV     	#00,R0		;
00B972 2402     	MOV.L   	R0,@R4		;
00B974 D428     	MOV.L   	@(#0A0,PC),R4	;
00B976 6040     	MOV.B   	@R4,R0		;
00B978 C9FD     	AND     	#FD,R0		;
00B97A 2400     	MOV.B   	R0,@R4		;
00B97C D429     	MOV.L   	@(#0A4,PC),R4	;
00B97E E000     	MOV     	#00,R0		;
00B980 2400     	MOV.B   	R0,@R4		;
00B982 D427     	MOV.L   	@(#09C,PC),R4	;
00B984 6040     	MOV.B   	@R4,R0		;
00B986 C9E7     	AND     	#E7,R0		;
00B988 2400     	MOV.B   	R0,@R4		;
00B98A D41F     	MOV.L   	@(#07C,PC),R4	;
00B98C E003     	MOV     	#03,R0		;
00B98E 2401     	MOV.W   	R0,@R4		;
00B990 000B     	RTS     				;
00B992 0009     	NOP     				;
00B994 D01E     	MOV.L   	@(#078,PC),R0	;
00B996 401E     	LDC     	R0,GBR		;
00B998 E07F     	MOV     	#7F,R0		;
00B99A CDFE     	AND.B   	#FE,@(R0,GBR)	;
00B99C CDFD     	AND.B   	#FD,@(R0,GBR)	;
00B99E CF04     	OR .B   	#04,@(R0,GBR)	;
00B9A0 D41D     	MOV.L   	@(#074,PC),R4	;
00B9A2 6040     	MOV.B   	@R4,R0		;
00B9A4 C9FB     	AND     	#FB,R0		;
00B9A6 2400     	MOV.B   	R0,@R4		;
00B9A8 D421     	MOV.L   	@(#084,PC),R4	;
00B9AA E000     	MOV     	#00,R0		;
00B9AC 2400     	MOV.B   	R0,@R4		;
00B9AE 000B     	RTS     				;
00B9B0 0009     	NOP     				;
00B9B2 D91A     	MOV.L   	@(#068,PC),R9	;
00B9B4 6090     	MOV.B   	@R9,R0		;
00B9B6 CB02     	OR      	#02,R0		;
00B9B8 2900     	MOV.B   	R0,@R9		;
00B9BA D616     	MOV.L   	@(#058,PC),R6	;
00B9BC D413     	MOV.L   	@(#04C,PC),R4	;
00B9BE 6761     	MOV.W   	@R6,R7		;
00B9C0 9820     	MOV.W   	@(#040,PC),R8	;
00B9C2 2789     	AND     	R8,R7			;
00B9C4 2671     	MOV.W   	R7,@R6		;
00B9C6 2471     	MOV.W   	R7,@R4		;
00B9C8 200A     	XOR     	R0,R0			;
00B9CA 8808     	CMP/EQ  	#08,R0		;
00B9CC 8902     	BT      	#004			;
00B9CE 7001     	ADD     	#01,R0		;
00B9D0 AFFB     	BRA     	#1FF6			;
00B9D2 0009     	NOP     				;
00B9D4 D60F     	MOV.L   	@(#03C,PC),R6	;
00B9D6 D40D     	MOV.L   	@(#034,PC),R4	;
00B9D8 6761     	MOV.W   	@R6,R7		;
00B9DA 9814     	MOV.W   	@(#028,PC),R8	;
00B9DC 278B     	OR      	R8,R7			;
00B9DE 2671     	MOV.W   	R7,@R6		;
00B9E0 2471     	MOV.W   	R7,@R4		;
00B9E2 6090     	MOV.B   	@R9,R0		;
00B9E4 C9FD     	AND     	#FD,R0		;
00B9E6 2900     	MOV.B   	R0,@R9		;
00B9E8 000B     	RTS     				;
00B9EA 0009     	NOP     				;
00B9EC D40C     	MOV.L   	@(#030,PC),R4	;
00B9EE 6040     	MOV.B   	@R4,R0		;
00B9F0 C802     	TST     	#02,R0		;
00B9F2 8902     	BT      	#004			;
00B9F4 C9FD     	AND     	#FD,R0		;
00B9F6 A001     	BRA     	#0002			;
00B9F8 0009     	NOP     				;
00B9FA CB02     	OR      	#02,R0		;
00B9FC 2400     	MOV.B   	R0,@R4		;
00B9FE 000B     	RTS     				;
00BA00 0009     	NOP     				;
00BA02 0009     	NOP     				;
00BA04 FFFE
00BA06 0001
00BA08 0A00
00BA0A 000C
00BA0C 0A10
00BA0E 0000
00BA10 05FF
00BA12 FF00
00BA14 0F00
00BA16 0854
00BA18 0F00
00BA1A 0892
00BA1C 0F00
00BA1E 0897
00BA20 0F00
00BA22 0890
00BA24 0907
00BA26 5351
00BA28 0907
00BA2A 5314
00BA2C 0907
00BA2E 535C
00BA30 0907
00BA32 5371

L00BA34:							;init()
00BA34 200A     	XOR     	R0,R0			;
00BA36 D186     	MOV.L   	@(#218,PC),R1	;
00BA38 2101     	MOV.W   	R0,@R1		;*(u16*)0x0F000786 = 0x0000;
00BA3A D186     	MOV.L   	@(#218,PC),R1	;
00BA3C 2102     	MOV.L   	R0,@R1		;*(u16*)0x0F0007AC = 0x0000;
00BA3E 7104     	ADD     	#04,R1		;
00BA40 2101     	MOV.W   	R0,@R1		;*(u16*)0x0F0007B0 = 0x0000;
00BA42 000B     	RTS     				;
00BA44 0009     	NOP     				;

00BA46 C323     	TRAPA   	#23			;
00BA48 60BC     	EXTU.B   	R11,R0		;
00BA4A 8800     	CMP/EQ  	#00,R0		;
00BA4C 8B01     	BF      	#002			;
00BA4E A0BA     	BRA     	#0174			;
00BA50 0009     	NOP     				;
00BA52 D169     	MOV.L   	@(#1A4,PC),R1	;
00BA54 6010     	MOV.B   	@R1,R0		;
00BA56 C880     	TST     	#80,R0		;
00BA58 8B01     	BF      	#002			;
00BA5A A045     	BRA     	#008A			;
00BA5C 0009     	NOP     				;
00BA5E D178     	MOV.L   	@(#1E0,PC),R1	;
00BA60 6010     	MOV.B   	@R1,R0		;
00BA62 C801     	TST     	#01,R0		;
00BA64 8906     	BT      	#00C			;
00BA66 D266     	MOV.L   	@(#198,PC),R2	;
00BA68 4F22     	STS.L   	PR,@-R15		;
00BA6A 420B     	JSR     	@R2			;
00BA6C 0009     	NOP     				;
00BA6E 4F26     	LDS.L   	@R15+,PR		;
00BA70 D173     	MOV.L   	@(#1CC,PC),R1	;
00BA72 6010     	MOV.B   	@R1,R0		;
00BA74 C802     	TST     	#02,R0		;
00BA76 8906     	BT      	#00C			;
00BA78 D262     	MOV.L   	@(#188,PC),R2	;
00BA7A 4F22     	STS.L   	PR,@-R15		;
00BA7C 420B     	JSR     	@R2			;
00BA7E 0009     	NOP     				;
00BA80 4F26     	LDS.L   	@R15+,PR		;
00BA82 D16F     	MOV.L   	@(#1BC,PC),R1	;
00BA84 6010     	MOV.B   	@R1,R0		;
00BA86 C804     	TST     	#04,R0		;
00BA88 8906     	BT      	#00C			;
00BA8A D25F     	MOV.L   	@(#17C,PC),R2	;
00BA8C 4F22     	STS.L   	PR,@-R15		;
00BA8E 420B     	JSR     	@R2			;
00BA90 0009     	NOP     				;
00BA92 4F26     	LDS.L   	@R15+,PR		;
00BA94 D16A     	MOV.L   	@(#1A8,PC),R1	;
00BA96 6010     	MOV.B   	@R1,R0		;
00BA98 C808     	TST     	#08,R0		;
00BA9A 8904     	BT      	#008			;
00BA9C D25B     	MOV.L   	@(#16C,PC),R2	;
00BA9E 4F22     	STS.L   	PR,@-R15		;
00BAA0 420B     	JSR     	@R2			;
00BAA2 0009     	NOP     				;
00BAA4 4F26     	LDS.L   	@R15+,PR		;
00BAA6 D267     	MOV.L   	@(#19C,PC),R2	;
00BAA8 6020     	MOV.B   	@R2,R0		;
00BAAA 8800     	CMP/EQ  	#00,R0		;
00BAAC 8913     	BT      	#026			;
00BAAE 4005     	ROTR    	R0			;
00BAB0 8B02     	BF      	#004			;
00BAB2 D058     	MOV.L   	@(#160,PC),R0	;
00BAB4 402B     	JMP     	@R0			;
00BAB6 0009     	NOP     				;
00BAB8 4005     	ROTR    	R0			;
00BABA 8B02     	BF      	#004			;
00BABC D056     	MOV.L   	@(#158,PC),R0	;
00BABE 402B     	JMP     	@R0			;
00BAC0 0009     	NOP     				;
00BAC2 4005     	ROTR    	R0			;
00BAC4 8B02     	BF      	#004			;
00BAC6 D055     	MOV.L   	@(#154,PC),R0	;
00BAC8 402B     	JMP     	@R0			;
00BACA 0009     	NOP     				;
00BACC 4005     	ROTR    	R0			;
00BACE 8B02     	BF      	#004			;
00BAD0 D053     	MOV.L   	@(#14C,PC),R0	;
00BAD2 402B     	JMP     	@R0			;
00BAD4 0009     	NOP     				;
00BAD6 D15A     	MOV.L   	@(#168,PC),R1	;
00BAD8 D25A     	MOV.L   	@(#168,PC),R2	;
00BADA 6010     	MOV.B   	@R1,R0		;
00BADC 6620     	MOV.B   	@R2,R6		;
00BADE 206B     	OR      	R6,R0			;
00BAE0 C80F     	TST     	#0F,R0		;
00BAE2 8BBC     	BF      	#178			;
00BAE4 AFAF     	BRA     	#1F5E			;
00BAE6 0009     	NOP     				;
00BAE8 60BC     	EXTU.B   	R11,R0		;
00BAEA E102     	MOV     	#02,R1		;
00BAEC 3012     	CMP/HS 	R1,R0			;
00BAEE 8901     	BT      	#002			;
00BAF0 AFA9     	BRA     	#1F52			;
00BAF2 0009     	NOP     				;
00BAF4 211A     	XOR     	R1,R1			;
00BAF6 E201     	MOV     	#01,R2		;
00BAF8 D34A     	MOV.L   	@(#128,PC),R3	;
00BAFA D457     	MOV.L   	@(#15C,PC),R4	;
00BAFC 2410     	MOV.B   	R1,@R4		;
00BAFE 6013     	MOV     	R1,R0			;
00BB00 053E     	MOV.L   	@(R0,R3),R5		;
00BB02 4F22     	STS.L   	PR,@-R15		;
00BB04 450B     	JSR     	@R5			;
00BB06 E001     	MOV     	#01,R0		;
00BB08 4F26     	LDS.L   	@R15+,PR		;
00BB0A 2008     	TST     	R0,R0			;
00BB0C 8902     	BT      	#004			;
00BB0E 6040     	MOV.B   	@R4,R0		;
00BB10 202B     	OR      	R2,R0			;
00BB12 2400     	MOV.B   	R0,@R4		;
00BB14 7104     	ADD     	#04,R1		;
00BB16 4200     	SHLL    	R2			;
00BB18 E510     	MOV     	#10,R5		;
00BB1A 3156     	CMP/HI 	R5,R1			;
00BB1C 8BEF     	BF      	#1DE			;
00BB1E 6040     	MOV.B   	@R4,R0		;
00BB20 2008     	TST     	R0,R0			;
00BB22 8901     	BT      	#002			;
00BB24 A023     	BRA     	#0046			;
00BB26 0009     	NOP     				;
00BB28 D147     	MOV.L   	@(#11C,PC),R1	;
00BB2A 6010     	MOV.B   	@R1,R0		;
00BB2C 4005     	ROTR    	R0			;
00BB2E 8903     	BT      	#006			;
00BB30 4005     	ROTR    	R0			;
00BB32 890F     	BT      	#01E			;
00BB34 AF87     	BRA     	#1F0E			;
00BB36 0009     	NOP     				;
00BB38 D04A     	MOV.L   	@(#128,PC),R0	;
00BB3A 4F22     	STS.L   	PR,@-R15		;
00BB3C 400B     	JSR     	@R0			;
00BB3E 0009     	NOP     				;
00BB40 4F26     	LDS.L   	@R15+,PR		;
00BB42 E102     	MOV     	#02,R1		;
00BB44 2008     	TST     	R0,R0			;
00BB46 8B00     	BF      	#000			;
00BB48 E102     	MOV     	#02,R1		;
00BB4A D042     	MOV.L   	@(#108,PC),R0	;
00BB4C 6201     	MOV.W   	@R0,R2		;
00BB4E 4219     	SHLR8   	R2			;
00BB50 A028     	BRA     	#0050			;
00BB52 0009     	NOP     				;
00BB54 DD39     	MOV.L   	@(#0E4,PC),R13	;
00BB56 4F22     	STS.L   	PR,@-R15		;
00BB58 4D0B     	JSR     	@R13			;
00BB5A 0009     	NOP     				;
00BB5C 4F26     	LDS.L   	@R15+,PR		;
00BB5E E202     	MOV     	#02,R2		;
00BB60 2DD8     	TST     	R13,R13		;
00BB62 8B00     	BF      	#000			;
00BB64 E203     	MOV     	#03,R2		;
00BB66 D03B     	MOV.L   	@(#0EC,PC),R0	;
00BB68 6101     	MOV.W   	@R0,R1		;
00BB6A A01B     	BRA     	#0036			;
00BB6C 0009     	NOP     				;
00BB6E D136     	MOV.L   	@(#0D8,PC),R1	;
00BB70 6010     	MOV.B   	@R1,R0		;
00BB72 4005     	ROTR    	R0			;
00BB74 8903     	BT      	#006			;
00BB76 4005     	ROTR    	R0			;
00BB78 890A     	BT      	#014			;
00BB7A A000     	BRA     	#0000			;
00BB7C 0009     	NOP     				;
00BB7E D03A     	MOV.L   	@(#0E8,PC),R0	;
00BB80 4F22     	STS.L   	PR,@-R15		;
00BB82 400B     	JSR     	@R0			;
00BB84 0009     	NOP     				;
00BB86 4F26     	LDS.L   	@R15+,PR		;
00BB88 E101     	MOV     	#01,R1		;
00BB8A 222A     	XOR     	R2,R2			;
00BB8C A005     	BRA     	#000A			;
00BB8E 0009     	NOP     				;
00BB90 D030     	MOV.L   	@(#0C0,PC),R0	;
00BB92 6101     	MOV.W   	@R0,R1		;
00BB94 E201     	MOV     	#01,R2		;
00BB96 A000     	BRA     	#0000			;
00BB98 0009     	NOP     				;
00BB9A D334     	MOV.L   	@(#0D0,PC),R3	;
00BB9C 200A     	XOR     	R0,R0			;
00BB9E 2301     	MOV.W   	R0,@R3		;
00BBA0 A000     	BRA     	#0000			;
00BBA2 0009     	NOP     				;
00BBA4 4128     	SHLL16  	R1			;
00BBA6 4118     	SHLL8   	R1			;
00BBA8 212D     	XTRCT   	R2,R1			;
00BBAA 4119     	SHLR8   	R1			;
00BBAC D029     	MOV.L   	@(#0A4,PC),R0	;
00BBAE 2011     	MOV.W   	R1,@R0		;
00BBB0 D225     	MOV.L   	@(#094,PC),R2	;
00BBB2 D326     	MOV.L   	@(#098,PC),R3	;
00BBB4 D42A     	MOV.L   	@(#0A8,PC),R4	;
00BBB6 211A     	XOR     	R1,R1			;
00BBB8 E008     	MOV     	#08,R0		;
00BBBA 4018     	SHLL8   	R0			;
00BBBC 2210     	MOV.B   	R1,@R2		;
00BBBE 2310     	MOV.B   	R1,@R3		;
00BBC0 2401     	MOV.W   	R0,@R4		;
00BBC2 AF40     	BRA     	#1E80			;
00BBC4 0009     	NOP     				;
00BBC6 D22C     	MOV.L   	@(#0B0,PC),R2	;
00BBC8 E003     	MOV     	#03,R0		;
00BBCA 2201     	MOV.W   	R0,@R2		;
00BBCC D229     	MOV.L   	@(#0A4,PC),R2	;
00BBCE 200A     	XOR     	R0,R0			;
00BBD0 812D     	MOV.W   	R0,@(#1A,R2)	;
00BBD2 D109     	MOV.L   	@(#024,PC),R1	;
00BBD4 6010     	MOV.B   	@R1,R0		;
00BBD6 C880     	TST     	#80,R0		;
00BBD8 8903     	BT      	#006			;
00BBDA DB20     	MOV.L   	@(#080,PC),R11	;
00BBDC C321     	TRAPA   	#21			;
00BBDE AF32     	BRA     	#1E64			;
00BBE0 0009     	NOP     				;
00BBE2 D023     	MOV.L   	@(#08C,PC),R0	;
00BBE4 4F22     	STS.L   	PR,@-R15		;
00BBE6 400B     	JSR     	@R0			;
00BBE8 0009     	NOP     				;
00BBEA 4F26     	LDS.L   	@R15+,PR		;
00BBEC D31C     	MOV.L   	@(#070,PC),R3	;
00BBEE E008     	MOV     	#08,R0		;
00BBF0 4018     	SHLL8   	R0			;
00BBF2 2301     	MOV.W   	R0,@R3		;
00BBF4 AF27     	BRA     	#1E4E			;
00BBF6 0009     	NOP     				;
00BBF8 0F00
00BBFA 0892
00BBFC 0000
00BBFE BC00
00BC00 0000
00BC02 F862
00BC04 0000
00BC06 F85E
00BC08 0000
00BC0A F89E
00BC0C 0000
00BC0E F8A2
00BC10 0000
00BC12 BC14
00BC14 0000
00BC16 F8C2
00BC18 0000
00BC1A F8BE
00BC1C 0000
00BC1E F8CA
00BC20 0000
00BC22 F8C6
00BC24 0000
00BC26 BC28
00BC28 0000
00BC2A BC7C
00BC2C 0000
00BC2E BCC4
00BC30 0000
00BC32 BC7C
00BC34 0000
00BC36 BE7C
00BC38 0000
00BC3A BF04
00BC3C 0000
00BC3E F8E2
00BC40 0907
00BC42 5388
00BC44 0907
00BC46 5389
00BC48 0907
00BC4A 538A
00BC4C 0F00
00BC4E 07B0
00BC50 0F000786
00BC54 0F0007AC
00BC58 0F00
00BC5A 07B1
00BC5C 0809
00BC5E 0004
00BC60 0A00
00BC62 001E
00BC64 00001B06
00BC68 0000
00BC6A 1B5E
00BC6C 0F00
00BC6E 07AE
00BC70 0000
00BC72 A4D0
00BC74 0A10
00BC76 0000
00BC78 0A00
00BC7A 000C     	MOV.B   	@(R0,R0),R0		;
00BC7C 000B     	RTS     				;
00BC7E 200A     	XOR     	R0,R0			;
00BC80 000B     	RTS     				;
00BC82 E0FF     	MOV     	#FF,R0		;
00BC84 D0BF     	MOV.L   	@(#2FC,PC),R0	;
00BC86 401E     	LDC     	R0,GBR		;
00BC88 2DDA     	XOR     	R13,R13		;
00BC8A 2CCA     	XOR     	R12,R12		;
00BC8C DB0B     	MOV.L   	@(#02C,PC),R11	;
00BC8E A003     	BRA     	#0006			;
00BC90 E0FF     	MOV     	#FF,R0		;
00BC92 7C01     	ADD     	#01,R12		;
00BC94 DB0A     	MOV.L   	@(#028,PC),R11	;
00BC96 E0FE     	MOV     	#FE,R0		;
00BC98 C10D     	MOV.W   	R0,@(#01A,GBR)	;
00BC9A C505     	MOV.W   	@(#00A,GBR),R0	;
00BC9C C504     	MOV.W   	@(#008,GBR),R0	;
00BC9E C505     	MOV.W   	@(#00A,GBR),R0	;
00BCA0 6A03     	MOV     	R0,R10		;
00BCA2 4A28     	SHLL16  	R10			;
00BCA4 C504     	MOV.W   	@(#008,GBR),R0	;
00BCA6 2A0D     	XTRCT   	R0,R10		;
00BCA8 3BA0     	CMP/EQ 	R10,R11		;
00BCAA 8900     	BT      	#000			;
00BCAC EDFF     	MOV     	#FF,R13		;
00BCAE 2CC8     	TST     	R12,R12		;
00BCB0 89EF     	BT      	#1DE			;
00BCB2 E0FF     	MOV     	#FF,R0		;
00BCB4 C10D     	MOV.W   	R0,@(#01A,GBR)	;
00BCB6 000B     	RTS     				;
00BCB8 60D3     	MOV     	R13,R0		;
00BCBA 0009     	NOP     				;
00BCBC FFFF     	
00BCBE FFFF     	
00BCC0 5345     	MOV.L   	@(#14,R4),R3	;
00BCC2 4741     	
00BCC4 DDB0     	MOV.L   	@(#2C0,PC),R13	;
00BCC6 4D1E     	LDC     	R13,GBR		;
00BCC8 9C55     	MOV.W   	@(#0AA,PC),R12	;
00BCCA E06E     	MOV     	#6E,R0		;
00BCCC 0DC5     	MOV.W   	R12,@(R0,R13)	;
00BCCE E00D     	MOV     	#0D,R0		;
00BCD0 C00F     	MOV.B   	R0,@(#00F,GBR)	;
00BCD2 E001     	MOV     	#01,R0		;
00BCD4 C010     	MOV.B   	R0,@(#010,GBR)	;
00BCD6 DCAB     	MOV.L   	@(#2AC,PC),R12	;
00BCD8 7C1A     	ADD     	#1A,R12		;
00BCDA 904B     	MOV.W   	@(#096,PC),R0	;
00BCDC 2C01     	MOV.W   	R0,@R12		;
00BCDE E720     	MOV     	#20,R7		;
00BCE0 E800     	MOV     	#00,R8		;
00BCE2 D9AA     	MOV.L   	@(#2A8,PC),R9	;
00BCE4 4F22     	STS.L   	PR,@-R15		;
00BCE6 B155     	BRS     	#02AA			;
00BCE8 0009     	NOP     				;
00BCEA 4F26     	LDS.L   	@R15+,PR		;
00BCEC 6A03     	MOV     	R0,R10		;
00BCEE 6083     	MOV     	R8,R0			;
00BCF0 09A5     	MOV.W   	R10,@(R0,R9)	;
00BCF2 7802     	ADD     	#02,R8		;
00BCF4 3872     	CMP/HS 	R7,R8			;
00BCF6 8BF5     	BF      	#1EA			;
00BCF8 D01A     	MOV.L   	@(#068,PC),R0	;
00BCFA 2902     	MOV.L   	R0,@R9		;
00BCFC D01A     	MOV.L   	@(#068,PC),R0	;
00BCFE 1903     	MOV.L   	R0,@(#C,R9)		;
00BD00 D01A     	MOV.L   	@(#068,PC),R0	;
00BD02 1904     	MOV.L   	R0,@(#10,R9)	;
00BD04 D01A     	MOV.L   	@(#068,PC),R0	;
00BD06 1905     	MOV.L   	R0,@(#14,R9)	;
00BD08 D017     	MOV.L   	@(#05C,PC),R0	;
00BD0A 1907     	MOV.L   	R0,@(#1C,R9)	;
00BD0C 5092     	MOV.L   	@(#08,R9),R0	;
00BD0E EC20     	MOV     	#20,R12		;
00BD10 4C18     	SHLL8   	R12			;
00BD12 20CB     	OR      	R12,R0		;
00BD14 ECFC     	MOV     	#FC,R12		;
00BD16 20C9     	AND     	R12,R0		;
00BD18 1902     	MOV.L   	R0,@(#8,R9)		;
00BD1A C46F     	MOV.B   	@(#06F,GBR),R0	;
00BD1C C802     	TST     	#02,R0		;
00BD1E 8901     	BT      	#002			;
00BD20 A01B     	BRA     	#0036			;
00BD22 0009     	NOP     				;
00BD24 D099     	MOV.L   	@(#264,PC),R0	;
00BD26 C218     	MOV.L   	R0,@(#060,GBR)	;
00BD28 D096     	MOV.L   	@(#258,PC),R0	;
00BD2A 701E     	ADD     	#1E,R0		;
00BD2C C219     	MOV.L   	R0,@(#064,GBR)	;
00BD2E E012     	MOV     	#12,R0		;
00BD30 C135     	MOV.W   	R0,@(#06A,GBR)	;
00BD32 E06F     	MOV     	#6F,R0		;
00BD34 CDF9     	AND.B   	#F9,@(R0,GBR)	;
00BD36 CF01     	OR .B   	#01,@(R0,GBR)	;
00BD38 EC05     	MOV     	#05,R12		;
00BD3A 4C18     	SHLL8   	R12			;
00BD3C 7CFF     	ADD     	#FF,R12		;
00BD3E 4C11     	CMP/PZ  	R12			;
00BD40 89FC     	BT      	#1F8			;
00BD42 C537     	MOV.W   	@(#06E,GBR),R0	;
00BD44 6C03     	MOV     	R0,R12		;
00BD46 E010     	MOV     	#10,R0		;
00BD48 CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BD4A E011     	MOV     	#11,R0		;
00BD4C CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BD4E E06F     	MOV     	#6F,R0		;
00BD50 CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BD52 200A     	XOR     	R0,R0			;
00BD54 EB02     	MOV     	#02,R11		;
00BD56 2CB8     	TST     	R11,R12		;
00BD58 8B01     	BF      	#002			;
00BD5A A000     	BRA     	#0000			;
00BD5C E0FF     	MOV     	#FF,R0		;
00BD5E 000B     	RTS     				;
00BD60 0009     	NOP     				;
00BD62 0009     	NOP     				;
00BD64 0000
00BD66 01B3
00BD68 0000
00BD6A 01B5
00BD6C 0000
00BD6E 01B2
00BD70 0000
00BD72 01B8
00BD74 0FFF
00BD76 1908     	MOV.L   	R0,@(#20,R9)	;
00BD78 6803     	MOV     	R0,R8			;
00BD7A DD84     	MOV.L   	@(#210,PC),R13	;
00BD7C E004     	MOV     	#04,R0		;
00BD7E 0BDE     	MOV.L   	@(R0,R13),R11	;
00BD80 E008     	MOV     	#08,R0		;
00BD82 0CDE     	MOV.L   	@(R0,R13),R12	;
00BD84 69B3     	MOV     	R11,R9		;
00BD86 6AB3     	MOV     	R11,R10		;
00BD88 4909     	SHLR2   	R9			;
00BD8A 4909     	SHLR2   	R9			;
00BD8C 2A9D     	XTRCT   	R9,R10		;
00BD8E 4A09     	SHLR2   	R10			;
00BD90 4A09     	SHLR2   	R10			;
00BD92 200A     	XOR     	R0,R0			;
00BD94 0DA5     	MOV.W   	R10,@(R0,R13)	;
00BD96 69B3     	MOV     	R11,R9		;
00BD98 6AB3     	MOV     	R11,R10		;
00BD9A 4A18     	SHLL8   	R10			;
00BD9C 4A08     	SHLL2   	R10			;
00BD9E 4A08     	SHLL2   	R10			;
00BDA0 2A9D     	XTRCT   	R9,R10		;
00BDA2 4A09     	SHLR2   	R10			;
00BDA4 4A09     	SHLR2   	R10			;
00BDA6 E002     	MOV     	#02,R0		;
00BDA8 0DA5     	MOV.W   	R10,@(R0,R13)	;
00BDAA 6AC3     	MOV     	R12,R10		;
00BDAC 4A29     	SHLR16  	R10			;
00BDAE E004     	MOV     	#04,R0		;
00BDB0 0DA5     	MOV.W   	R10,@(R0,R13)	;
00BDB2 69C3     	MOV     	R12,R9		;
00BDB4 6AC3     	MOV     	R12,R10		;
00BDB6 4A08     	SHLL2   	R10			;
00BDB8 4A00     	SHLL    	R10			;
00BDBA 6AA9     	SWAP.W   	R10,R10		;
00BDBC 69A3     	MOV     	R10,R9		;
00BDBE 2ACD     	XTRCT   	R12,R10		;
00BDC0 4A09     	SHLR2   	R10			;
00BDC2 4A01     	SHLR    	R10			;
00BDC4 4A28     	SHLL16  	R10			;
00BDC6 2A9D     	XTRCT   	R9,R10		;
00BDC8 4A09     	SHLR2   	R10			;
00BDCA 4A01     	SHLR    	R10			;
00BDCC E006     	MOV     	#06,R0		;
00BDCE 0DA5     	MOV.W   	R10,@(R0,R13)	;
00BDD0 4F22     	STS.L   	PR,@-R15		;
00BDD2 B0DF     	BRS     	#01BE			;
00BDD4 0009     	NOP     				;
00BDD6 4F26     	LDS.L   	@R15+,PR		;
00BDD8 6C03     	MOV     	R0,R12		;
00BDDA DD6C     	MOV.L   	@(#1B0,PC),R13	;
00BDDC E0FF     	MOV     	#FF,R0		;
00BDDE 2888     	TST     	R8,R8			;
00BDE0 891F     	BT      	#03E			;
00BDE2 E008     	MOV     	#08,R0		;
00BDE4 6AC3     	MOV     	R12,R10		;
00BDE6 6BA3     	MOV     	R10,R11		;
00BDE8 4B00     	SHLL    	R11			;
00BDEA 9946     	MOV.W   	@(#08C,PC),R9	;
00BDEC 2A99     	AND     	R9,R10		;
00BDEE E980     	MOV     	#80,R9		;
00BDF0 4918     	SHLL8   	R9			;
00BDF2 699D     	EXTU.W   	R9,R9			;
00BDF4 2B99     	AND     	R9,R11		;
00BDF6 2ABB     	OR      	R11,R10		;
00BDF8 0DA5     	MOV.W   	R10,@(R0,R13)	;
00BDFA 6BA3     	MOV     	R10,R11		;
00BDFC 4B01     	SHLR    	R11			;
00BDFE 2BAA     	XOR     	R10,R11		;
00BE00 E901     	MOV     	#01,R9		;
00BE02 2B99     	AND     	R9,R11		;
00BE04 4B05     	ROTR    	R11			;
00BE06 4B29     	SHLR16  	R11			;
00BE08 9937     	MOV.W   	@(#06E,PC),R9	;
00BE0A 2A99     	AND     	R9,R10		;
00BE0C 2ABB     	OR      	R11,R10		;
00BE0E 4A01     	SHLR    	R10			;
00BE10 7002     	ADD     	#02,R0		;
00BE12 E918     	MOV     	#18,R9		;
00BE14 3092     	CMP/HS 	R9,R0			;
00BE16 8BE6     	BF      	#1CC			;
00BE18 DB5A     	MOV.L   	@(#168,PC),R11	;
00BE1A 4B1E     	LDC     	R11,GBR		;
00BE1C 60C3     	MOV     	R12,R0		;
00BE1E C112     	MOV.W   	R0,@(#024,GBR)	;
00BE20 E0FE     	MOV     	#FE,R0		;
00BE22 DB58     	MOV.L   	@(#160,PC),R11	;
00BE24 4B1E     	LDC     	R11,GBR		;
00BE26 C10D     	MOV.W   	R0,@(#01A,GBR)	;
00BE28 6CD3     	MOV     	R13,R12		;
00BE2A 7C08     	ADD     	#08,R12		;
00BE2C E903     	MOV     	#03,R9		;
00BE2E 266A     	XOR     	R6,R6			;
00BE30 277A     	XOR     	R7,R7			;
00BE32 6093     	MOV     	R9,R0			;
00BE34 C111     	MOV.W   	R0,@(#022,GBR)	;
00BE36 6073     	MOV     	R7,R0			;
00BE38 0ACD     	MOV.W   	@(R0,R12),R10	;
00BE3A 6093     	MOV     	R9,R0			;
00BE3C 4000     	SHLL    	R0			;
00BE3E 30DC     	ADD     	R13,R0		;
00BE40 6B01     	MOV.W   	@R0,R11		;
00BE42 2888     	TST     	R8,R8			;
00BE44 8900     	BT      	#000			;
00BE46 2BAA     	XOR     	R10,R11		;
00BE48 7702     	ADD     	#02,R7		;
00BE4A 0009     	NOP     				;
00BE4C 0009     	NOP     				;
00BE4E C511     	MOV.W   	@(#022,GBR),R0	;
00BE50 6A03     	MOV     	R0,R10		;
00BE52 E003     	MOV     	#03,R0		;
00BE54 3900     	CMP/EQ 	R0,R9			;
00BE56 8B02     	BF      	#004			;
00BE58 900E     	MOV.W   	@(#01C,PC),R0	;
00BE5A 2A09     	AND     	R0,R10		;
00BE5C 2B09     	AND     	R0,R11		;
00BE5E 3BA0     	CMP/EQ 	R10,R11		;
00BE60 8900     	BT      	#000			;
00BE62 E6FF     	MOV     	#FF,R6		;
00BE64 79FF     	ADD     	#FF,R9		;
00BE66 4911     	CMP/PZ  	R9			;
00BE68 89E3     	BT      	#1C6			;
00BE6A E0FF     	MOV     	#FF,R0		;
00BE6C C10D     	MOV.W   	R0,@(#01A,GBR)	;
00BE6E 000B     	RTS     				;
00BE70 6063     	MOV     	R6,R0			;
00BE72 0009     	NOP     				;
00BE74 0009     	NOP     				;
00BE76 0009     	NOP     				;
00BE78 C3FF     	TRAPA   	#FF			;
00BE7A 7FFF     	ADD     	#FF,R15		;
00BE7C DD1F     	MOV.L   	@(#07C,PC),R13	;
00BE7E 6CD3     	MOV     	R13,R12		;
00BE80 7D08     	ADD     	#08,R13		;
00BE82 60D1     	MOV.W   	@R13,R0		;
00BE84 60C1     	MOV.W   	@R12,R0		;
00BE86 903C     	MOV.W   	@(#078,PC),R0	;
00BE88 2D01     	MOV.W   	R0,@R13		;
00BE8A 200A     	XOR     	R0,R0			;
00BE8C 2C01     	MOV.W   	R0,@R12		;
00BE8E DD3E     	MOV.L   	@(#0F8,PC),R13	;
00BE90 4D1E     	LDC     	R13,GBR		;
00BE92 9C35     	MOV.W   	@(#06A,PC),R12	;
00BE94 E07E     	MOV     	#7E,R0		;
00BE96 0DC5     	MOV.W   	R12,@(R0,R13)	;
00BE98 E00D     	MOV     	#0D,R0		;
00BE9A C005     	MOV.B   	R0,@(#005,GBR)	;
00BE9C E001     	MOV     	#01,R0		;
00BE9E C006     	MOV.B   	R0,@(#006,GBR)	;
00BEA0 DD3A     	MOV.L   	@(#0E8,PC),R13	;
00BEA2 200A     	XOR     	R0,R0			;
00BEA4 2CCA     	XOR     	R12,R12		;
00BEA6 EB24     	MOV     	#24,R11		;
00BEA8 0DC5     	MOV.W   	R12,@(R0,R13)	;
00BEAA 7002     	ADD     	#02,R0		;
00BEAC 30B2     	CMP/HS 	R11,R0		;
00BEAE 8BFB     	BF      	#1F6			;
00BEB0 C47F     	MOV.B   	@(#07F,GBR),R0	;
00BEB2 C802     	TST     	#02,R0		;
00BEB4 8901     	BT      	#002			;
00BEB6 A01A     	BRA     	#0034			;
00BEB8 0009     	NOP     				;
00BEBA D034     	MOV.L   	@(#0D0,PC),R0	;
00BEBC C21C     	MOV.L   	R0,@(#070,GBR)	;
00BEBE D030     	MOV.L   	@(#0C0,PC),R0	;
00BEC0 C21D     	MOV.L   	R0,@(#074,GBR)	;
00BEC2 E004     	MOV     	#04,R0		;
00BEC4 C13D     	MOV.W   	R0,@(#07A,GBR)	;
00BEC6 E07F     	MOV     	#7F,R0		;
00BEC8 CDF9     	AND.B   	#F9,@(R0,GBR)	;
00BECA CF01     	OR .B   	#01,@(R0,GBR)	;
00BECC EC05     	MOV     	#05,R12		;
00BECE 4C18     	SHLL8   	R12			;
00BED0 7CFF     	ADD     	#FF,R12		;
00BED2 4C11     	CMP/PZ  	R12			;
00BED4 89FC     	BT      	#1F8			;
00BED6 C53F     	MOV.W   	@(#07E,GBR),R0	;
00BED8 6C03     	MOV     	R0,R12		;
00BEDA E006     	MOV     	#06,R0		;
00BEDC CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BEDE E007     	MOV     	#07,R0		;
00BEE0 CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BEE2 E07F     	MOV     	#7F,R0		;
00BEE4 CDFC     	AND.B   	#FC,@(R0,GBR)	;
00BEE6 200A     	XOR     	R0,R0			;
00BEE8 EB02     	MOV     	#02,R11		;
00BEEA 2CB8     	TST     	R11,R12		;
00BEEC 8B01     	BF      	#002			;
00BEEE A000     	BRA     	#0000			;
00BEF0 E0FF     	MOV     	#FF,R0		;
00BEF2 000B     	RTS     				;
00BEF4 0009     	NOP     				;
00BEF6 0009     	NOP     				;
00BEF8 0009     	NOP     				;
00BEFA 0009     	NOP     				;
00BEFC 0A18     	SETT    				;
00BEFE 0000     	
00BF00 1808     	MOV.L   	R0,@(#20,R8)	;
00BF02 8209     	
00BF04 4F22     	STS.L   	PR,@-R15		;
00BF06 B060     	BRS     	#00C0			;
00BF08 0009     	NOP     				;
00BF0A 4F26     	LDS.L   	@R15+,PR		;
00BF0C 2008     	TST     	R0,R0			;
00BF0E 8901     	BT      	#002			;
00BF10 A032     	BRA     	#0064			;
00BF12 0009     	NOP     				;
00BF14 4F22     	STS.L   	PR,@-R15		;
00BF16 B03D     	BRS     	#007A			;
00BF18 0009     	NOP     				;
00BF1A 4F26     	LDS.L   	@R15+,PR		;
00BF1C 6603     	MOV     	R0,R6			;
00BF1E 4F22     	STS.L   	PR,@-R15		;
00BF20 B078     	BRS     	#00F0			;
00BF22 0009     	NOP     				;
00BF24 4F26     	LDS.L   	@R15+,PR		;
00BF26 2008     	TST     	R0,R0			;
00BF28 8901     	BT      	#002			;
00BF2A A025     	BRA     	#004A			;
00BF2C 0009     	NOP     				;
00BF2E 277A     	XOR     	R7,R7			;
00BF30 4F22     	STS.L   	PR,@-R15		;
00BF32 B02F     	BRS     	#005E			;
00BF34 0009     	NOP     				;
00BF36 4F26     	LDS.L   	@R15+,PR		;
00BF38 6B73     	MOV     	R7,R11		;
00BF3A 4B28     	SHLL16  	R11			;
00BF3C 4B09     	SHLR2   	R11			;
00BF3E 9A28     	MOV.W   	@(#050,PC),R10	;
00BF40 20A9     	AND     	R10,R0		;
00BF42 20BB     	OR      	R11,R0		;
00BF44 6803     	MOV     	R0,R8			;
00BF46 4F22     	STS.L   	PR,@-R15		;
00BF48 B09B     	BRS     	#0136			;
00BF4A 6063     	MOV     	R6,R0			;
00BF4C 4F26     	LDS.L   	@R15+,PR		;
00BF4E 2008     	TST     	R0,R0			;
00BF50 8B12     	BF      	#024			;
00BF52 7701     	ADD     	#01,R7		;
00BF54 E004     	MOV     	#04,R0		;
00BF56 3702     	CMP/HS 	R0,R7			;
00BF58 8BEA     	BF      	#1D4			;
00BF5A 277A     	XOR     	R7,R7			;
00BF5C 4F22     	STS.L   	PR,@-R15		;
00BF5E B034     	BRS     	#0068			;
00BF60 0009     	NOP     				;
00BF62 4F26     	LDS.L   	@R15+,PR		;
00BF64 4F22     	STS.L   	PR,@-R15		;
00BF66 B0C5     	BRS     	#018A			;
00BF68 200A     	XOR     	R0,R0			;
00BF6A 4F26     	LDS.L   	@R15+,PR		;
00BF6C DC05     	MOV.L   	@(#014,PC),R12	;
00BF6E 7C1A     	ADD     	#1A,R12		;
00BF70 900E     	MOV.W   	@(#01C,PC),R0	;
00BF72 2C01     	MOV.W   	R0,@R12		;
00BF74 000B     	RTS     				;
00BF76 6073     	MOV     	R7,R0			;
00BF78 AFFC     	BRA     	#1FF8			;
00BF7A E7FF     	MOV     	#FF,R7		;
00BF7C 0009     	NOP     				;
00BF7E 0009     	NOP     				;
00BF80 0A18
00BF82 0000
00BF84 0A10
00BF86 0000
00BF88 05FF
00BF8A FF00
00BF8C 0907
00BF8E 539C
00BF90 0FFF
00BF92 3FFF
00BF94 DD07     	MOV.L   	@(#01C,PC),R13	;
00BF96 60D2     	MOV.L   	@R13,R0		;
00BF98 9D0E     	MOV.W   	@(#01C,PC),R13	;
00BF9A 20DF     	MULS.W  	R13,R0		;
00BF9C 0D1A     	STS     	MACL, R13		;
00BF9E 4D19     	SHLR8   	R13			;
00BFA0 DC70     	MOV.L   	@(#1C0,PC),R12	;
00BFA2 7C36     	ADD     	#36,R12		;
00BFA4 60C1     	MOV.W   	@R12,R0		;
00BFA6 30DC     	ADD     	R13,R0		;
00BFA8 ED59     	MOV     	#59,R13		;
00BFAA 30DC     	ADD     	R13,R0		;
00BFAC DD01     	MOV.L   	@(#004,PC),R13	;
00BFAE 2D02     	MOV.L   	R0,@R13		;
00BFB0 000B     	RTS     				;
00BFB2 0009     	NOP     				;
00BFB4 0907     	MUL.L   	R0,R9			;
00BFB6 53E8     	MOV.L   	@(#20,R14),R3	;
00BFB8 93A5     	MOV.W   	@(#14A,PC),R3	;
00BFBA DD15     	MOV.L   	@(#054,PC),R13	;
00BFBC 7D14     	ADD     	#14,R13		;
00BFBE 6CD1     	MOV.W   	@R13,R12		;
00BFC0 9BD5     	MOV.W   	@(#1AA,PC),R11	;
00BFC2 2BC9     	AND     	R12,R11		;
00BFC4 2DB1     	MOV.W   	R11,@R13		;
00BFC6 A003     	BRA     	#0006			;
00BFC8 0009     	NOP     				;
00BFCA 9BD0     	MOV.W   	@(#1A0,PC),R11	;
00BFCC A000     	BRA     	#0000			;
00BFCE 0009     	NOP     				;
00BFD0 DD63     	MOV.L   	@(#18C,PC),R13	;
00BFD2 4D1E     	LDC     	R13,GBR		;
00BFD4 ED20     	MOV     	#20,R13		;
00BFD6 60B3     	MOV     	R11,R0		;
00BFD8 C10A     	MOV.W   	R0,@(#014,GBR)	;
00BFDA C51A     	MOV.W   	@(#034,GBR),R0	;
00BFDC C801     	TST     	#01,R0		;
00BFDE 8B09     	BF      	#012			;
00BFE0 E0FF     	MOV     	#FF,R0		;
00BFE2 C11A     	MOV.W   	R0,@(#034,GBR)	;
00BFE4 C51B     	MOV.W   	@(#036,GBR),R0	;
00BFE6 200A     	XOR     	R0,R0			;
00BFE8 C11B     	MOV.W   	R0,@(#036,GBR)	;
00BFEA 7DFF     	ADD     	#FF,R13		;
00BFEC 4D11     	CMP/PZ  	R13			;
00BFEE 89F2     	BT      	#1E4			;
00BFF0 000B     	RTS     				;
00BFF2 E0FF     	MOV     	#FF,R0		;
00BFF4 000B     	RTS     				;
00BFF6 200A     	XOR     	R0,R0			;
00BFF8 DD05     	MOV.L   	@(#014,PC),R13	;
00BFFA 7D14     	ADD     	#14,R13		;
00BFFC 6CD1     	MOV.W   	@R13,R12		;
00BFFE EB80     	MOV     	#80,R11		;
00C000 6BBC     	EXTU.B   	R11,R11		;
00C002 2BCB     	OR      	R12,R11		;
00C004 2DB1     	MOV.W   	R11,@R13		;
00C006 DD56     	MOV.L   	@(#158,PC),R13	;
00C008 7D14     	ADD     	#14,R13		;
00C00A 2DB2     	MOV.L   	R11,@R13		;
00C00C 000B     	RTS     				;
00C00E 0009     	NOP     				;
00C010 0F00
00C012 0854
00C014 680D     	EXTU.W   	R0,R8			;
00C016 D052     	MOV.L   	@(#148,PC),R0	;
00C018 401E     	LDC     	R0,GBR		;
00C01A 2CCA     	XOR     	R12,R12		;
00C01C ED20     	MOV     	#20,R13		;
00C01E C51A     	MOV.W   	@(#034,GBR),R0	;
00C020 C801     	TST     	#01,R0		;
00C022 8B09     	BF      	#012			;
00C024 E0FF     	MOV     	#FF,R0		;
00C026 C11A     	MOV.W   	R0,@(#034,GBR)	;
00C028 C51B     	MOV.W   	@(#036,GBR),R0	;
00C02A 200A     	XOR     	R0,R0			;
00C02C C11B     	MOV.W   	R0,@(#036,GBR)	;
00C02E 7DFF     	ADD     	#FF,R13		;
00C030 4D11     	CMP/PZ  	R13			;
00C032 89F4     	BT      	#1E8			;
00C034 A023     	BRA     	#0046			;
00C036 0009     	NOP     				;
00C038 60C3     	MOV     	R12,R0		;
00C03A 4018     	SHLL8   	R0			;
00C03C 4001     	SHLR    	R0			;
00C03E C118     	MOV.W   	R0,@(#030,GBR)	;
00C040 9092     	MOV.W   	@(#124,PC),R0	;
00C042 C119     	MOV.W   	R0,@(#032,GBR)	;
00C044 9091     	MOV.W   	@(#122,PC),R0	;
00C046 C11A     	MOV.W   	R0,@(#034,GBR)	;
00C048 2BBA     	XOR     	R11,R11		;
00C04A ED50     	MOV     	#50,R13		;
00C04C C51A     	MOV.W   	@(#034,GBR),R0	;
00C04E C804     	TST     	#04,R0		;
00C050 8904     	BT      	#008			;
00C052 7DFF     	ADD     	#FF,R13		;
00C054 4D11     	CMP/PZ  	R13			;
00C056 89F9     	BT      	#1F2			;
00C058 A011     	BRA     	#0022			;
00C05A 0009     	NOP     				;
00C05C 60C3     	MOV     	R12,R0		;
00C05E 30BC     	ADD     	R11,R0		;
00C060 308C     	ADD     	R8,R0			;
00C062 C11B     	MOV.W   	R0,@(#036,GBR)	;
00C064 7B02     	ADD     	#02,R11		;
00C066 EA04     	MOV     	#04,R10		;
00C068 4A18     	SHLL8   	R10			;
00C06A 3BA2     	CMP/HS 	R10,R11		;
00C06C 8BED     	BF      	#1DA			;
00C06E 7C01     	ADD     	#01,R12		;
00C070 EA02     	MOV     	#02,R10		;
00C072 4A18     	SHLL8   	R10			;
00C074 3CA2     	CMP/HS 	R10,R12		;
00C076 8BD1     	BF      	#1A2			;
00C078 200A     	XOR     	R0,R0			;
00C07A 000B     	RTS     				;
00C07C 0009     	NOP     				;
00C07E AFFC     	BRA     	#1FF8			;
00C080 E0FF     	MOV     	#FF,R0		;
00C082 6C0D     	EXTU.W   	R0,R12		;
00C084 DD36     	MOV.L   	@(#0D8,PC),R13	;
00C086 4D1E     	LDC     	R13,GBR		;
00C088 299A     	XOR     	R9,R9			;
00C08A 6B8D     	EXTU.W   	R8,R11		;
00C08C 4B00     	SHLL    	R11			;
00C08E 6ABC     	EXTU.B   	R11,R10		;
00C090 4B19     	SHLR8   	R11			;
00C092 4A08     	SHLL2   	R10			;
00C094 3BAC     	ADD     	R10,R11		;
00C096 3BCC     	ADD     	R12,R11		;
00C098 ED20     	MOV     	#20,R13		;
00C09A C51A     	MOV.W   	@(#034,GBR),R0	;
00C09C C801     	TST     	#01,R0		;
00C09E 8B09     	BF      	#012			;
00C0A0 E0FF     	MOV     	#FF,R0		;
00C0A2 C11A     	MOV.W   	R0,@(#034,GBR)	;
00C0A4 C51B     	MOV.W   	@(#036,GBR),R0	;
00C0A6 200A     	XOR     	R0,R0			;
00C0A8 C11B     	MOV.W   	R0,@(#036,GBR)	;
00C0AA 7DFF     	ADD     	#FF,R13		;
00C0AC 4D11     	CMP/PZ  	R13			;
00C0AE 89F4     	BT      	#1E8			;
00C0B0 A01E     	BRA     	#003C			;
00C0B2 0009     	NOP     				;
00C0B4 6083     	MOV     	R8,R0			;
00C0B6 C118     	MOV.W   	R0,@(#030,GBR)	;
00C0B8 9058     	MOV.W   	@(#0B0,PC),R0	;
00C0BA C119     	MOV.W   	R0,@(#032,GBR)	;
00C0BC 9055     	MOV.W   	@(#0AA,PC),R0	;
00C0BE C11A     	MOV.W   	R0,@(#034,GBR)	;
00C0C0 2CCA     	XOR     	R12,R12		;
00C0C2 ED50     	MOV     	#50,R13		;
00C0C4 C51A     	MOV.W   	@(#034,GBR),R0	;
00C0C6 C804     	TST     	#04,R0		;
00C0C8 8904     	BT      	#008			;
00C0CA 7DFF     	ADD     	#FF,R13		;
00C0CC 4D11     	CMP/PZ  	R13			;
00C0CE 89F9     	BT      	#1F2			;
00C0D0 A00E     	BRA     	#001C			;
00C0D2 0009     	NOP     				;
00C0D4 C51B     	MOV.W   	@(#036,GBR),R0	;
00C0D6 6AB3     	MOV     	R11,R10		;
00C0D8 3ACC     	ADD     	R12,R10		;
00C0DA 6AAF     	EXTS.W   	R10,R10		;
00C0DC 600F     	EXTS.W   	R0,R0			;
00C0DE 30A0     	CMP/EQ 	R10,R0		;
00C0E0 8900     	BT      	#000			;
00C0E2 E9FF     	MOV     	#FF,R9		;
00C0E4 7C02     	ADD     	#02,R12		;
00C0E6 EA08     	MOV     	#08,R10		;
00C0E8 3CA2     	CMP/HS 	R10,R12		;
00C0EA 8BEA     	BF      	#1D4			;
00C0EC 000B     	RTS     				;
00C0EE 6093     	MOV     	R9,R0			;
00C0F0 AFFC     	BRA     	#1FF8			;
00C0F2 E9FF     	MOV     	#FF,R9		;
00C0F4 6803     	MOV     	R0,R8			;
00C0F6 D01A     	MOV.L   	@(#068,PC),R0	;
00C0F8 401E     	LDC     	R0,GBR		;
00C0FA 2CCA     	XOR     	R12,R12		;
00C0FC ED20     	MOV     	#20,R13		;
00C0FE C51A     	MOV.W   	@(#034,GBR),R0	;
00C100 C801     	TST     	#01,R0		;
00C102 8B09     	BF      	#012			;
00C104 E0FF     	MOV     	#FF,R0		;
00C106 C11A     	MOV.W   	R0,@(#034,GBR)	;
00C108 C51B     	MOV.W   	@(#036,GBR),R0	;
00C10A 200A     	XOR     	R0,R0			;
00C10C C11B     	MOV.W   	R0,@(#036,GBR)	;
00C10E 7DFF     	ADD     	#FF,R13		;
00C110 4D11     	CMP/PZ  	R13			;
00C112 89F4     	BT      	#1E8			;
00C114 A021     	BRA     	#0042			;
00C116 0009     	NOP     				;
00C118 60C3     	MOV     	R12,R0		;
00C11A 4018     	SHLL8   	R0			;
00C11C 4001     	SHLR    	R0			;
00C11E C118     	MOV.W   	R0,@(#030,GBR)	;
00C120 9022     	MOV.W   	@(#044,PC),R0	;
00C122 C119     	MOV.W   	R0,@(#032,GBR)	;
00C124 9021     	MOV.W   	@(#042,PC),R0	;
00C126 C11A     	MOV.W   	R0,@(#034,GBR)	;
00C128 2BBA     	XOR     	R11,R11		;
00C12A ED50     	MOV     	#50,R13		;
00C12C C51A     	MOV.W   	@(#034,GBR),R0	;
00C12E C804     	TST     	#04,R0		;
00C130 8904     	BT      	#008			;
00C132 7DFF     	ADD     	#FF,R13		;
00C134 4D11     	CMP/PZ  	R13			;
00C136 89F9     	BT      	#1F2			;
00C138 A00F     	BRA     	#001E			;
00C13A 0009     	NOP     				;
00C13C 6083     	MOV     	R8,R0			;
00C13E C11B     	MOV.W   	R0,@(#036,GBR)	;
00C140 7B02     	ADD     	#02,R11		;
00C142 EA04     	MOV     	#04,R10		;
00C144 4A18     	SHLL8   	R10			;
00C146 3BA2     	CMP/HS 	R10,R11		;
00C148 8BEF     	BF      	#1DE			;
00C14A 7C01     	ADD     	#01,R12		;
00C14C EA02     	MOV     	#02,R10		;
00C14E 4A18     	SHLL8   	R10			;
00C150 3CA2     	CMP/HS 	R10,R12		;
00C152 8BD3     	BF      	#1A6			;
00C154 200A     	XOR     	R0,R0			;
00C156 000B     	RTS     				;
00C158 0009     	NOP     				;
00C15A AFFC     	BRA     	#1FF8			;
00C15C E0FF     	MOV     	#FF,R0		;
00C15E 0009     	NOP     				;
00C160 0A10
00C162 0000
00C164 05FF
00C166 FF00
00C168 FE00
00C16A FFFC
00C16C FA04
00C16E FF7F
00C170 D41E     	MOV.L   	@(#078,PC),R4	;
00C172 200A     	XOR     	R0,R0			;
00C174 2401     	MOV.W   	R0,@R4		;
00C176 D14A     	MOV.L   	@(#128,PC),R1	;
00C178 D24A     	MOV.L   	@(#128,PC),R2	;
00C17A 841C     	MOV.B   	@(#0C,R1),R0	;
00C17C 2200     	MOV.B   	R0,@R2		;
00C17E 6A12     	MOV.L   	@R1,R10		;
00C180 5011     	MOV.L   	@(#04,R1),R0	;
00C182 6903     	MOV     	R0,R9			;
00C184 3A92     	CMP/HS 	R9,R10		;
00C186 892D     	BT      	#05A			;
00C188 4F22     	STS.L   	PR,@-R15		;
00C18A B031     	BRS     	#0062			;
00C18C 0009     	NOP     				;
00C18E 4F26     	LDS.L   	@R15+,PR		;
00C190 601E     	EXTS.B   	R1,R0			;
00C192 88FF     	CMP/EQ  	#FF,R0		;
00C194 8928     	BT      	#050			;
00C196 D344     	MOV.L   	@(#110,PC),R3	;
00C198 2311     	MOV.W   	R1,@R3		;
00C19A D341     	MOV.L   	@(#104,PC),R3	;
00C19C 6232     	MOV.L   	@R3,R2		;
00C19E 4F22     	STS.L   	PR,@-R15		;
00C1A0 B033     	BRS     	#0066			;
00C1A2 0009     	NOP     				;
00C1A4 4F26     	LDS.L   	@R15+,PR		;
00C1A6 D041     	MOV.L   	@(#104,PC),R0	;
00C1A8 320C     	ADD     	R0,R2			;
00C1AA D041     	MOV.L   	@(#104,PC),R0	;
00C1AC 320C     	ADD     	R0,R2			;
00C1AE 4F22     	STS.L   	PR,@-R15		;
00C1B0 B035     	BRS     	#006A			;
00C1B2 E500     	MOV     	#00,R5		;
00C1B4 4F26     	LDS.L   	@R15+,PR		;
00C1B6 4F22     	STS.L   	PR,@-R15		;
00C1B8 B040     	BRS     	#0080			;
00C1BA 0009     	NOP     				;
00C1BC 4F26     	LDS.L   	@R15+,PR		;
00C1BE 4F22     	STS.L   	PR,@-R15		;
00C1C0 B02D     	BRS     	#005A			;
00C1C2 E501     	MOV     	#01,R5		;
00C1C4 4F26     	LDS.L   	@R15+,PR		;
00C1C6 4F22     	STS.L   	PR,@-R15		;
00C1C8 B045     	BRS     	#008A			;
00C1CA 0009     	NOP     				;
00C1CC 4F26     	LDS.L   	@R15+,PR		;
00C1CE D334     	MOV.L   	@(#0D0,PC),R3	;
00C1D0 6A32     	MOV.L   	@R3,R10		;
00C1D2 7A01     	ADD     	#01,R10		;
00C1D4 23A2     	MOV.L   	R10,@R3		;
00C1D6 D405     	MOV.L   	@(#014,PC),R4	;
00C1D8 6041     	MOV.W   	@R4,R0		;
00C1DA 7001     	ADD     	#01,R0		;
00C1DC 2401     	MOV.W   	R0,@R4		;
00C1DE 5931     	MOV.L   	@(#04,R3),R9	;
00C1E0 AFD0     	BRA     	#1FA0			;
00C1E2 0009     	NOP     				;
00C1E4 000B     	RTS     				;
00C1E6 2DDA     	XOR     	R13,R13		;
00C1E8 000B     	RTS     				;
00C1EA EDFF     	MOV     	#FF,R13		;
00C1EC 0F00
00C1EE 07AE
00C1F0 DB29     	MOV.L   	@(#0A4,PC),R11	;
00C1F2 C32A     	TRAPA   	#2A			;
00C1F4 D025     	MOV.L   	@(#094,PC),R0	;
00C1F6 4F22     	STS.L   	PR,@-R15		;
00C1F8 400B     	JSR     	@R0			;
00C1FA 0009     	NOP     				;
00C1FC 4F26     	LDS.L   	@R15+,PR		;
00C1FE DB26     	MOV.L   	@(#098,PC),R11	;
00C200 C327     	TRAPA   	#27			;
00C202 D329     	MOV.L   	@(#0A4,PC),R3	;
00C204 2311     	MOV.W   	R1,@R3		;
00C206 000B     	RTS     				;
00C208 601E     	EXTS.B   	R1,R0			;
00C20A 9353     	MOV.W   	@(#0A6,PC),R3	;
00C20C 633D     	EXTU.W   	R3,R3			;
00C20E 213E     	MULU.W  	R3,R1			;
00C210 011A     	STS     	MACL, R1		;
00C212 D322     	MOV.L   	@(#088,PC),R3	;
00C214 313C     	ADD     	R3,R1			;
00C216 4218     	SHLL8   	R2			;
00C218 4208     	SHLL2   	R2			;
00C21A 000B     	RTS     				;
00C21C 4200     	SHLL    	R2			;
00C21E 200A     	XOR     	R0,R0			;
00C220 233A     	XOR     	R3,R3			;
00C222 E406     	MOV     	#06,R4		;
00C224 4505     	ROTR    	R5			;
00C226 8B00     	BF      	#000			;
00C228 E446     	MOV     	#46,R4		;
00C22A 644C     	EXTU.B   	R4,R4			;
00C22C 4408     	SHLL2   	R4			;
00C22E 3042     	CMP/HS 	R4,R0			;
00C230 8902     	BT      	#004			;
00C232 0136     	MOV.L   	R3,@(R0,R1)		;
00C234 AFFB     	BRA     	#1FF6			;
00C236 7004     	ADD     	#04,R0		;
00C238 000B     	RTS     				;
00C23A 310C     	ADD     	R0,R1			;
00C23C 200A     	XOR     	R0,R0			;
00C23E E408     	MOV     	#08,R4		;
00C240 644C     	EXTU.B   	R4,R4			;
00C242 4418     	SHLL8   	R4			;
00C244 3042     	CMP/HS 	R4,R0			;
00C246 8903     	BT      	#006			;
00C248 032E     	MOV.L   	@(R0,R2),R3		;
00C24A 0136     	MOV.L   	R3,@(R0,R1)		;
00C24C AFFA     	BRA     	#1FF4			;
00C24E 7004     	ADD     	#04,R0		;
00C250 310C     	ADD     	R0,R1			;
00C252 000B     	RTS     				;
00C254 320C     	ADD     	R0,R2			;
00C256 DB10     	MOV.L   	@(#040,PC),R11	;
00C258 C32A     	TRAPA   	#2A			;
00C25A D312     	MOV.L   	@(#048,PC),R3	;
00C25C 6130     	MOV.B   	@R3,R1		;
00C25E E283     	MOV     	#83,R2		;
00C260 622C     	EXTU.B   	R2,R2			;
00C262 D00B     	MOV.L   	@(#02C,PC),R0	;
00C264 4F22     	STS.L   	PR,@-R15		;
00C266 400B     	JSR     	@R0			;
00C268 0009     	NOP     				;
00C26A 4F26     	LDS.L   	@R15+,PR		;
00C26C D30E     	MOV.L   	@(#038,PC),R3	;
00C26E 6131     	MOV.W   	@R3,R1		;
00C270 E283     	MOV     	#83,R2		;
00C272 622C     	EXTU.B   	R2,R2			;
00C274 D007     	MOV.L   	@(#01C,PC),R0	;
00C276 4F22     	STS.L   	PR,@-R15		;
00C278 400B     	JSR     	@R0			;
00C27A 0009     	NOP     				;
00C27C 4F26     	LDS.L   	@R15+,PR		;
00C27E DB06     	MOV.L   	@(#018,PC),R11	;
00C280 C327     	TRAPA   	#27			;
00C282 000B     	RTS     				;
00C284 0009     	NOP     				;
00C286 0009     	NOP     				;
00C288 0009     	NOP     				;
00C28A 0009     	NOP     				;
00C28C 0000
00C28E 4E98
00C290 0000
00C292 5510
00C294 0000
00C296 4FA4
00C298 0B09
00C29A 0000
00C29C 0900
00C29E 0230
00C2A0 0907
00C2A2 538C
00C2A4 0907
00C2A6 5399
00C2A8 0907
00C2AA 539A
00C2AC 0E00
00C2AE 0000
00C2B0 0000
00C2B2 5000
00C2B4 0930

;cdb command E0 "Authenticate Device"
L00C2B6:							;cmd_authenticate_device(arg1)//arg1-R1
00C2B6 D057     	MOV.L   	@(#15C,PC),R0	;
00C2B8 6300     	MOV.B   	@R0,R3		;
00C2BA 4305     	ROTR    	R3			;
00C2BC 8933     	BT      	L00C326		;*(u8*)0x0F0007B0.b & 0x01 != 0
00C2BE D358     	MOV.L   	@(#160,PC),R3	;
00C2C0 6030     	MOV.B   	@R3,R0		;
00C2C2 C880     	TST     	#80,R0		;
00C2C4 8B2F     	BF      	L00C326		;*(u8*)0x0F000892 & 0x80 != 0
00C2C6 601C     	EXTU.B   	R1,R0			;
00C2C8 8800     	CMP/EQ  	#00,R0		;
00C2CA 8903     	BT      	L00C2D4		;arg1 == 0x00
00C2CC 8801     	CMP/EQ  	#01,R0		;
00C2CE 8912     	BT      	L00C2F6		;arg1 == 0x01
00C2D0 A029     	BRA     	L00C326		;
00C2D2 0009     	NOP     				;
L00C2D4:
00C2D4 D04D     	MOV.L   	@(#134,PC),R0	;
00C2D6 2012     	MOV.L   	R1,@R0		;
00C2D8 1021     	MOV.L   	R2,@(#4,R0)		;
00C2DA 4229     	SHLR16  	R2			;
00C2DC 4219     	SHLR8   	R2			;
00C2DE E317     	MOV     	#17,R3		;
00C2E0 633C     	EXTU.B   	R3,R3			;
00C2E2 3236     	CMP/HI 	R3,R2			;
00C2E4 891F     	BT      	#03E			;
00C2E6 D34A     	MOV.L   	@(#128,PC),R3	;
00C2E8 E002     	MOV     	#02,R0		;
00C2EA 2300     	MOV.B   	R0,@R3		;
00C2EC DB50     	MOV.L   	@(#140,PC),R11	;
00C2EE D045     	MOV.L   	@(#114,PC),R0	;
00C2F0 20B2     	MOV.L   	R11,@R0		;
00C2F2 A00C     	BRA     	#0018			;
00C2F4 0009     	NOP     				;
L00C2F6:
00C2F6 D342     	MOV.L   	@(#108,PC),R3	;
00C2F8 6030     	MOV.B   	@R3,R0		;
00C2FA C802     	TST     	#02,R0		;
00C2FC 8913     	BT      	L00C326		;hw_flags & 0x02 == 0
00C2FE E101     	MOV     	#01,R1		;
00C300 D348     	MOV.L   	@(#120,PC),R3	;
00C302 2310     	MOV.B   	R1,@R3		;*(u8*)0x0907538A = 0x01;
00C304 DB4B     	MOV.L   	@(#12C,PC),R11	;
00C306 D03F     	MOV.L   	@(#0FC,PC),R0	;
00C308 20B2     	MOV.L   	R11,@R0		;*(u32*)0x09075384 = 0x09810002;
00C30A A000     	BRA     	#0000			;
00C30C 0009     	NOP     				;
00C30E D03A     	MOV.L   	@(#0E8,PC),R0	;
00C310 4F22     	STS.L   	PR,@-R15		;
00C312 400B     	JSR     	@R0			;make_cd_status_00(rr1,rr2,rr3,rr4);
00C314 0009     	NOP     				;
00C316 4F26     	LDS.L   	@R15+,PR		;
00C318 D03A     	MOV.L   	@(#0E8,PC),R0	;
00C31A 6B02     	MOV.L   	@R0,R11		;
00C31C D13D     	MOV.L   	@(#0F4,PC),R1	;
00C31E E001     	MOV     	#01,R0		;
00C320 2100     	MOV.B   	R0,@R1		;
00C322 000B     	RTS     				;
00C324 0009     	NOP     				;
L00C326:
00C326 D035     	MOV.L   	@(#0D4,PC),R0	;
00C328 4F22     	STS.L   	PR,@-R15		;
00C32A 400B     	JSR     	@R0			;make_cd_status_FF(rr1,rr2,rr3,rr4);
00C32C 0009     	NOP     				;
00C32E 4F26     	LDS.L   	@R15+,PR		;
00C330 000B     	RTS     				;
00C332 2BBA     	XOR     	R11,R11		;

L00C334:							;cdb command E2 "Get MPEG ROM"
00C334 D037     	MOV.L   	@(#0DC,PC),R0	;
00C336 6300     	MOV.B   	@R0,R3		;
00C338 4305     	ROTR    	R3			;
00C33A 892C     	BT      	#058			;
00C33C D330     	MOV.L   	@(#0C0,PC),R3	;
00C33E 6030     	MOV.B   	@R3,R0		;
00C340 C802     	TST     	#02,R0		;
00C342 8928     	BT      	#050			;
00C344 D334     	MOV.L   	@(#0D0,PC),R3	;
00C346 6030     	MOV.B   	@R3,R0		;
00C348 2008     	TST     	R0,R0			;
00C34A 8924     	BT      	#048			;
00C34C D334     	MOV.L   	@(#0D0,PC),R3	;
00C34E 6030     	MOV.B   	@R3,R0		;
00C350 C880     	TST     	#80,R0		;
00C352 8B20     	BF      	#040			;
00C354 6523     	MOV     	R2,R5			;
00C356 4529     	SHLR16  	R5			;
00C358 4519     	SHLR8   	R5			;
00C35A E317     	MOV     	#17,R3		;
00C35C 3536     	CMP/HI 	R3,R5			;
00C35E 891A     	BT      	#034			;
00C360 6313     	MOV     	R1,R3			;
00C362 4318     	SHLL8   	R3			;
00C364 4319     	SHLR8   	R3			;
00C366 9769     	MOV.W   	@(#0D2,PC),R7	;
00C368 677D     	EXTU.W   	R7,R7			;
00C36A 3376     	CMP/HI 	R7,R3			;
00C36C 8913     	BT      	#026			;
00C36E 642D     	EXTU.W   	R2,R4			;
00C370 6633     	MOV     	R3,R6			;
00C372 364C     	ADD     	R4,R6			;
00C374 7701     	ADD     	#01,R7		;
00C376 3676     	CMP/HI 	R7,R6			;
00C378 890D     	BT      	#01A			;
00C37A D723     	MOV.L   	@(#08C,PC),R7	;
00C37C 2732     	MOV.L   	R3,@R7		;
00C37E 6063     	MOV     	R6,R0			;
00C380 1701     	MOV.L   	R0,@(#4,R7)		;
00C382 6053     	MOV     	R5,R0			;
00C384 807C     	MOV.B   	R0,@(#0C,R7)	;
00C386 E102     	MOV     	#02,R1		;
00C388 D326     	MOV.L   	@(#098,PC),R3	;
00C38A 2310     	MOV.B   	R1,@R3		;
00C38C DB2A     	MOV.L   	@(#0A8,PC),R11	;
00C38E D01D     	MOV.L   	@(#074,PC),R0	;
00C390 20B2     	MOV.L   	R11,@R0		;
00C392 AFBC     	BRA     	#1F78			;
00C394 0009     	NOP     				;
00C396 AFC6     	BRA     	#1F8C			;
00C398 0009     	NOP     				;

L00C39A:							;cdb command E1 "Is Device Authenticated"
00C39A D01E     	MOV.L   	@(#078,PC),R0	;
00C39C 6300     	MOV.B   	@R0,R3		;
00C39E 4305     	ROTR    	R3			;
00C3A0 8926     	BT      	L00C3F0		;*(u8*)0x0F0007B0 & 0x01 != 0
00C3A2 601C     	EXTU.B   	R1,R0			;
00C3A4 8800     	CMP/EQ  	#00,R0		;
00C3A6 8903     	BT      	#006			;
00C3A8 8801     	CMP/EQ  	#01,R0		;
00C3AA 8905     	BT      	#00A			;
00C3AC A020     	BRA     	#0040			;
00C3AE 0009     	NOP     				;
00C3B0 D41D     	MOV.L   	@(#074,PC),R4	;
00C3B2 6341     	MOV.W   	@R4,R3		;
00C3B4 A00D     	BRA     	#001A			;
00C3B6 4328     	SHLL16  	R3			;
00C3B8 D319     	MOV.L   	@(#064,PC),R3	;
00C3BA 6030     	MOV.B   	@R3,R0		;
00C3BC C880     	TST     	#80,R0		;
00C3BE 8B17     	BF      	#02E			;
00C3C0 D416     	MOV.L   	@(#058,PC),R4	;
00C3C2 6041     	MOV.W   	@R4,R0		;
00C3C4 4028     	SHLL16  	R0			;
00C3C6 D419     	MOV.L   	@(#064,PC),R4	;
00C3C8 6341     	MOV.W   	@R4,R3		;
00C3CA 633D     	EXTU.W   	R3,R3			;
00C3CC 203D     	XTRCT   	R3,R0			;
00C3CE A000     	BRA     	#0000			;
00C3D0 6303     	MOV     	R0,R3			;
00C3D2 2F36     	MOV.L   	R3,@-R15		;
00C3D4 D007     	MOV.L   	@(#01C,PC),R0	;
00C3D6 4F22     	STS.L   	PR,@-R15		;
00C3D8 400B     	JSR     	@R0			;
00C3DA 0009     	NOP     				;
00C3DC 4F26     	LDS.L   	@R15+,PR		;
00C3DE 63F6     	MOV.L   	@R15+,R3		;
00C3E0 6D3D     	EXTU.W   	R3,R13		;
00C3E2 4C29     	SHLR16  	R12			;
00C3E4 4C19     	SHLR8   	R12			;
00C3E6 4C18     	SHLL8   	R12			;
00C3E8 23CD     	XTRCT   	R12,R3		;
00C3EA 6C33     	MOV     	R3,R12		;
00C3EC 000B     	RTS     				;
00C3EE 2BBA     	XOR     	R11,R11		;
L00C3F0:
00C3F0 AF99     	BRA     	L00C326		;
00C3F2 0009     	NOP     				;
00C3F4 0000
00C3F6 91A8
00C3F8 000091FE
00C3FC 000091E8
00C400 0F00027D
00C404 09075384
00C408 0907
00C40A 538C
00C40C 0907
00C40E ADB0
00C410 0907
00C412 ADCB
00C414 0F0007B0
00C418 0F00
00C41A 02FD
00C41C 0F00
00C41E 07AE
00C420 0F000892
00C424 0907538A
00C428 0F00
00C42A 0786
00C42C 0F00
00C42E 07AC
00C430 0781
00C432 0008
00C434 09810002
00C438 0981
00C43A 0004     	MOV.B   	R0,@(R0,R0)		;
00C43C 07FF     	MAC.L   	@R15+,@R7+		;
00C43E 6A2D     	EXTU.W   	R2,R10		;
00C440 6923     	MOV     	R2,R9			;
00C442 4929     	SHLR16  	R9			;
00C444 681C     	EXTU.B   	R1,R8			;
00C446 4129     	SHLR16  	R1			;
00C448 671C     	EXTU.B   	R1,R7			;
00C44A E301     	MOV     	#01,R3		;
00C44C 3736     	CMP/HI 	R3,R7			;
00C44E 891D     	BT      	#03A			;
00C450 E303     	MOV     	#03,R3		;
00C452 3836     	CMP/HI 	R3,R8			;
00C454 891A     	BT      	#034			;
00C456 4A01     	SHLR    	R10			;
00C458 4A00     	SHLL    	R10			;
00C45A 4901     	SHLR    	R9			;
00C45C 4900     	SHLL    	R9			;
00C45E D306     	MOV.L   	@(#018,PC),R3	;
00C460 4708     	SHLL2   	R7			;
00C462 6083     	MOV     	R8,R0			;
00C464 4008     	SHLL2   	R0			;
00C466 4000     	SHLL    	R0			;
00C468 307C     	ADD     	R7,R0			;
00C46A 0395     	MOV.W   	R9,@(R0,R3)		;
00C46C 7002     	ADD     	#02,R0		;
00C46E 03A5     	MOV.W   	R10,@(R0,R3)	;
00C470 D30D     	MOV.L   	@(#034,PC),R3	;
00C472 2BBA     	XOR     	R11,R11		;
00C474 A002     	BRA     	#0004			;
00C476 23B2     	MOV.L   	R11,@R3		;
00C478 0907     	MUL.L   	R0,R9			;
00C47A 539C     	MOV.L   	@(#30,R9),R3	;
00C47C D008     	MOV.L   	@(#020,PC),R0	;
00C47E 4F22     	STS.L   	PR,@-R15		;
00C480 400B     	JSR     	@R0			;
00C482 0009     	NOP     				;
00C484 4F26     	LDS.L   	@R15+,PR		;
00C486 D008     	MOV.L   	@(#020,PC),R0	;
00C488 000B     	RTS     				;
00C48A 6B02     	MOV.L   	@R0,R11		;
00C48C D005     	MOV.L   	@(#014,PC),R0	;
00C48E 4F22     	STS.L   	PR,@-R15		;
00C490 400B     	JSR     	@R0			;
00C492 0009     	NOP     				;
00C494 4F26     	LDS.L   	@R15+,PR		;
00C496 000B     	RTS     				;
00C498 2BBA     	XOR     	R11,R11		;
00C49A 0009     	NOP     				;
00C49C 0000
00C49E 91A8
00C4A0 0000
00C4A2 F89A
00C4A4 0000
00C4A6 F892
00C4A8 0907
00C4AA 5384
00C4AC FFFF
...
00F7FE FFFF

								;cdb command 90 "MPEG Get Status"
								;cdb command 91 "MPEG Get Interrupt"
								;cdb command 92 "MPEG Set Interrupt Mask"
								;cdb command 93 "MPEG Init"
								;cdb command 94 "MPEG Set Mode"
								;cdb command 95 "MPEG Play"
								;cdb command 96 "MPEG Set Decoding Method"
								;cdb command 97 "MPEG Out Decoding Sync"
								;cdb command 98 "MPEG Get Timecode"
								;cdb command 99 "MPEG Get PTS"
								;cdb command 9A "MPEG Set Connection"
								;cdb command 9B "MPEG Get Connection"
								;cdb command 9C "MPEG Change Connection"
								;cdb command 9D "MPEG Set Stream"
								;cdb command 9E "MPEG Get Stream"
								;cdb command 9F "MPEG Get Picture Size"
								;cdb command A0 "MPEG Display"
								;cdb command A1 "MPEG Set Window"
								;cdb command A2 "MPEG Set Border Color"
								;cdb command A3 "MPEG Set Fade"
								;cdb command A4 "MPEG Set Video Effects"
								;cdb command A5 "MPEG Get Image"
								;cdb command A6 "MPEG Set Image"
								;cdb command A7 "MPEG Read Image"
								;cdb command A8 "MPEG Write Image"
								;cdb command A9 "MPEG Read Sector"
								;cdb command AA "MPEG Write Sector"
								;cdb command AB ""
								;cdb command AC ""
L00F800:							;cdb command AD ""
00F800 6019     	SWAP.W   	R1,R0			;
00F802 6008     	SWAP.B   	R0,R0			;
00F804 C93F     	AND     	#3F,R0		;
00F806 A084     	BRA     	#0108			;
00F808 70F0     	ADD     	#F0,R0		;
00F80A A082     	BRA     	#0104			;
00F80C E020     	MOV     	#20,R0		;
00F80E A080     	BRA     	#0100			;
00F810 E021     	MOV     	#21,R0		;
00F812 A07E     	BRA     	#00FC			;
00F814 E022     	MOV     	#22,R0		;
00F816 A07C     	BRA     	#00F8			;
00F818 E023     	MOV     	#23,R0		;
00F81A A07A     	BRA     	#00F4			;
00F81C E024     	MOV     	#24,R0		;
00F81E A078     	BRA     	#00F0			;
00F820 E025     	MOV     	#25,R0		;
00F822 A076     	BRA     	#00EC			;
00F824 E026     	MOV     	#26,R0		;
00F826 A074     	BRA     	#00E8			;
00F828 E027     	MOV     	#27,R0		;
00F82A A072     	BRA     	#00E4			;
00F82C E028     	MOV     	#28,R0		;
00F82E A070     	BRA     	#00E0			;
00F830 E029     	MOV     	#29,R0		;
00F832 A06E     	BRA     	#00DC			;
00F834 E02A     	MOV     	#2A,R0		;
00F836 A06C     	BRA     	#00D8			;
00F838 E02B     	MOV     	#2B,R0		;
00F83A A06A     	BRA     	#00D4			;
00F83C E02C     	MOV     	#2C,R0		;
00F83E A068     	BRA     	#00D0			;
00F840 E02D     	MOV     	#2D,R0		;
00F842 A066     	BRA     	#00CC			;
00F844 E02E     	MOV     	#2E,R0		;
00F846 A064     	BRA     	#00C8			;
00F848 E02F     	MOV     	#2F,R0		;
00F84A A062     	BRA     	#00C4			;
00F84C E030     	MOV     	#30,R0		;
00F84E A060     	BRA     	#00C0			;
00F850 E031     	MOV     	#31,R0		;
00F852 A05E     	BRA     	#00BC			;
00F854 E032     	MOV     	#32,R0		;
00F856 A05C     	BRA     	#00B8			;
00F858 E033     	MOV     	#33,R0		;
00F85A A05A     	BRA     	#00B4			;
00F85C E034     	MOV     	#34,R0		;
00F85E A058     	BRA     	#00B0			;
00F860 E035     	MOV     	#35,R0		;
00F862 A056     	BRA     	#00AC			;
00F864 E036     	MOV     	#36,R0		;
00F866 A054     	BRA     	#00A8			;
00F868 E037     	MOV     	#37,R0		;
00F86A A052     	BRA     	#00A4			;
00F86C E038     	MOV     	#38,R0		;
00F86E A050     	BRA     	#00A0			;
00F870 E039     	MOV     	#39,R0		;
00F872 A04E     	BRA     	#009C			;
00F874 E03A     	MOV     	#3A,R0		;
00F876 A04C     	BRA     	#0098			;
00F878 E03B     	MOV     	#3B,R0		;
00F87A A04A     	BRA     	#0094			;
00F87C E03C     	MOV     	#3C,R0		;
00F87E A048     	BRA     	#0090			;
00F880 E03D     	MOV     	#3D,R0		;
00F882 A046     	BRA     	#008C			;
00F884 E03E     	MOV     	#3E,R0		;
00F886 A044     	BRA     	#0088			;
00F888 E03F     	MOV     	#3F,R0		;
00F88A A042     	BRA     	#0084			;
00F88C E040     	MOV     	#40,R0		;
00F88E A040     	BRA     	#0080			;
00F890 E041     	MOV     	#41,R0		;
00F892 A03E     	BRA     	#007C			;
00F894 E042     	MOV     	#42,R0		;
00F896 A03C     	BRA     	#0078			;
00F898 E043     	MOV     	#43,R0		;
00F89A A03A     	BRA     	#0074			;
00F89C E044     	MOV     	#44,R0		;
00F89E A038     	BRA     	#0070			;
00F8A0 E045     	MOV     	#45,R0		;
00F8A2 A036     	BRA     	#006C			;
00F8A4 E046     	MOV     	#46,R0		;
00F8A6 A034     	BRA     	#0068			;
00F8A8 E047     	MOV     	#47,R0		;
00F8AA A032     	BRA     	#0064			;
00F8AC E048     	MOV     	#48,R0		;
00F8AE A030     	BRA     	#0060			;
00F8B0 E049     	MOV     	#49,R0		;
00F8B2 A02E     	BRA     	#005C			;
00F8B4 E04A     	MOV     	#4A,R0		;
00F8B6 A02C     	BRA     	#0058			;
00F8B8 E04B     	MOV     	#4B,R0		;
00F8BA A02A     	BRA     	#0054			;
00F8BC E04C     	MOV     	#4C,R0		;
00F8BE A028     	BRA     	#0050			;
00F8C0 E04D     	MOV     	#4D,R0		;
00F8C2 A026     	BRA     	#004C			;
00F8C4 E04E     	MOV     	#4E,R0		;
00F8C6 A024     	BRA     	#0048			;
00F8C8 E04F     	MOV     	#4F,R0		;
00F8CA A022     	BRA     	#0044			;
00F8CC E050     	MOV     	#50,R0		;
00F8CE A020     	BRA     	#0040			;
00F8D0 E051     	MOV     	#51,R0		;
00F8D2 A01E     	BRA     	#003C			;
00F8D4 E052     	MOV     	#52,R0		;
00F8D6 A01C     	BRA     	#0038			;
00F8D8 E053     	MOV     	#53,R0		;
00F8DA A01A     	BRA     	#0034			;
00F8DC E054     	MOV     	#54,R0		;
00F8DE A018     	BRA     	#0030			;
00F8E0 E055     	MOV     	#55,R0		;
00F8E2 A016     	BRA     	#002C			;
00F8E4 E056     	MOV     	#56,R0		;
00F8E6 A014     	BRA     	#0028			;
00F8E8 E057     	MOV     	#57,R0		;
00F8EA A012     	BRA     	#0024			;
00F8EC E058     	MOV     	#58,R0		;
00F8EE A014     	BRA     	#0028			;
00F8F0 E059     	MOV     	#59,R0		;
00F8F2 A012     	BRA     	#0024			;
00F8F4 E05A     	MOV     	#5A,R0		;
00F8F6 A010     	BRA     	#0020			;
00F8F8 E05B     	MOV     	#5B,R0		;
00F8FA A00E     	BRA     	#001C			;
00F8FC E05C     	MOV     	#5C,R0		;
00F8FE A00C     	BRA     	#0018			;
00F900 E05D     	MOV     	#5D,R0		;
00F902 A00A     	BRA     	#0014			;
00F904 E05E     	MOV     	#5E,R0		;
00F906 A008     	BRA     	#0010			;
00F908 E05F     	MOV     	#5F,R0		;
00F90A A006     	BRA     	#000C			;
00F90C E060     	MOV     	#60,R0		;
00F90E A004     	BRA     	#0008			;
00F910 E061     	MOV     	#61,R0		;
00F912 2FE6     	MOV.L   	R14,@-R15		;
00F914 DE05     	MOV.L   	@(#014,PC),R14	;
00F916 A002     	BRA     	#0004			;
00F918 0009     	NOP     				;
00F91A 2FE6     	MOV.L   	R14,@-R15		;
00F91C DE04     	MOV.L   	@(#010,PC),R14	;
00F91E 4008     	SHLL2   	R0			;
00F920 3E0C     	ADD     	R0,R14		;
00F922 60E2     	MOV.L   	@R14,R0		;
00F924 6EF6     	MOV.L   	@R15+,R14		;
00F926 402B     	JMP     	@R0			;
00F928 0009     	NOP     				;
00F92A 0009     	NOP     				;
00F92C 0907
00F92E B008
00F930 0000
00F932 F938
00F934 0000
00F936 0000
00F938 0000
00F93A AEDA
00F93C 0000
00F93E AEEA
00F940 0000
00F942 AF1A
00F944 0000
00F946 0000
00F948 0000
00F94A A5DC
00F94C 0000
00F94E A750
00F950 0000
00F952 A824
00F954 0000
00F956 A98C
00F958 0000
00F95A 9D44
00F95C 0000
00F95E 9E5C
00F960 0000
00F962 AF64
00F964 0000
00F966 B3A8
00F968 0000
00F96A B528
00F96C 0000
00F96E B2C4
00F970 0000
00F972 B44C
00F974 0000
00F976 9E74
00F978 0000
00F97A AA64
00F97C 0000
00F97E 9ED8
00F980 0000
00F982 B678
00F984 0000
00F986 B686
00F988 0000
00F98A B6D6
00F98C 0000
00F98E B7CA
00F990 0000
00F992 C43E
00F994 0000
00F996 0000
00F998 0000
00F99A 0000
00F99C 0000
00F99E 0000
00F9A0 0000
00F9A2 0000
00F9A4 0000
00F9A6 0000
00F9A8 0000
00F9AA 0000
00F9AC 0000
00F9AE 0000 
00F9B0 0000
00F9B2 0000
00F9B4 0000
00F9B6 0000
00F9B8 0000
00F9BA A022
00F9BC 0000
00F9BE A52C
00F9C0 0000
00F9C2 A4F0
00F9C4 0000
00F9C6 AB78
00F9C8 0000
00F9CA AE68
00F9CC 0000
00F9CE AE2C
00F9D0 0000
00F9D2 AACC
00F9D4 0000
00F9D6 AAF8
00F9D8 0000
00F9DA AB34
00F9DC 0000
00F9DE AD40
00F9E0 0000
00F9E2 ADB8
00F9E4 0000     	
00F9E6 0000     	
00F9E8 0000     	
00F9EA 0000     	
00F9EC 0000     	
00F9EE 0000     	
00F9F0 0000     	
00F9F2 0000     	
00F9F4 0000     	
00F9F6 0000     	
00F9F8 0000     	
00F9FA 0000     	
00F9FC 0000     	
00F9FE 0000     	
00FA00 0000     	
00FA02 0000     	
00FA04 0000     	
00FA06 0000     	
00FA08 0000     	
00FA0A 0000     	
00FA0C 0000     	
00FA0E 0000     	
00FA10 0000     	
00FA12 0000     	
00FA14 0000     	
00FA16 0000     	
00FA18 0000     	
00FA1A B88E
00FA1C 0000
00FA1E B8E0
00FA20 0000
00FA22 B95C
00FA24 0000
00FA26 B994
00FA28 0000
00FA2A B9EC
00FA2C 0000
00FA2E B9B2
00FA30 0000
00FA32 0000
00FA34 0000
00FA36 0000
00FA38 0000
00FA3A 0000
00FA3C 0000
00FA3E 0000
00FA40 0000
00FA42 AE8C
00FA44 0000
00FA46 AE92
00FA48 0000
00FA4A AEA4
00FA4C 0000     	
00FA4E 0000     	
00FA50 0000     	
00FA52 0000     	
00FA54 0000     	
00FA56 0000     	
00FA58 0000     	
00FA5A 0000     	
00FA5C 0000     	
00FA5E 0000     	
00FA60 0000     	
00FA62 0000     	
00FA64 0000     	
00FA66 0000     	
00FA68 0000     	
00FA6A BAD6
00FA6C 0000     	
00FA6E 0000     	
00FA70 0000     	
00FA72 0000     	
00FA74 0000     	
00FA76 0000     	
00FA78 0000     	
00FA7A 0000     	
00FA7C 0000     	
00FA7E C1F0
00FA80 0000     	
00FA82 C21E
00FA84 0000     	
00FA86 C23C
00FA88 0000     	
00FA8A C20A
00FA8C 0000     	
00FA8E 0000     	
00FA90 0000     	
00FA92 C170
00FA94 0000     	
00FA96 C256
00FA98 0000     	
00FA9A B5D2
00FA9C 0000     	
00FA9E 91A8
00FAA0 0000     	
00FAA2 91EC
00FAA4 0000     	
00FAA6 55AE
00FAA8 0000     	
00FAAA 5510
00FAAC 0000     	
00FAAE 51BE
00FAB0 0000     	
00FAB2 506C
00FAB4 0000     	
00FAB6 4E98
00FAB8 0000     	
00FABA 50CA
00FABC 0000     	
00FABE 4ED4
00FAC0 0900
00FAC2 0230
00FAC4 0F00
00FAC6 0600
00FAC8 0F00
00FACA 034A
00FACC FFFF
...    
00FFFE FFFF
