	.org 0
	dc.l		reset					;Power-on reset PC
	dc.l		0x06002000				;Power-on reset SP
	dc.l		reset					;Manual reset PC
	dc.l		0x06002000				;Manual reset SP
	dc.l		gen_illegal_inst			;General illegal instruction
	dc.l		reserved				;Reserved
	dc.l		illegal_slot_inst			;Illegal slot instruction
	dc.l		reserved				;Reserved
	dc.l		reserved				;Reserved
	dc.l		cpu_addr_error			;CPU address error
	dc.l		dma_addr_error			;DMA address error
	dc.l		pon_nmi				;NMI interrupt
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
	dc.l		reserved				;Trap 32
	dc.l		reserved				;Trap 33
	dc.l		reserved				;Trap 34
	dc.l		reserved				;Trap 35
	dc.l		reserved				;Trap 36
	dc.l		reserved				;Trap 37
	dc.l		reserved				;Trap 38
	dc.l		reserved				;Trap 39
	dc.l		reserved				;Trap 40
	dc.l		reserved				;Trap 41
	dc.l		reserved				;Trap 42
	dc.l		reserved				;Trap 43
	dc.l		reserved				;Trap 44
	dc.l		reserved				;Trap 45
	dc.l		reserved				;Trap 46
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
	dc.l		reserved				;IRL0_1
	dc.l		reserved				;IRL2_3
	dc.l		reserved				;IRL4_5
	dc.l		reserved				;IRL6_7
	dc.l		reserved				;IRL8_9
	dc.l		reserved				;IRL10_11
	dc.l		reserved				;IRL12_13
	dc.l		reserved				;IRL14_15
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

reset:
000200 B0BE     	BRS     	L000380		;cache_init()
000202 277A     	XOR     	R7,R7			;
000204 D134     	MOV.L   	@(#0D0,PC),R1	;
000206 D633     	MOV.L   	@(#0CC,PC),R6	;
000208 6012     	MOV.L   	@R1,R0		;
00020A 376C     	ADD     	R6,R7			;
00020C 4028     	SHLL16  	R0			;bool master = (SH2.BCR1 & 0x8000 == 0x0000);
00020E B133     	BRS     	L000478		;bsc_init(master);
000210 4000     	SHLL    	R0			;
000212 890A     	BT      	L00022A		;if (!master) return slave_start();
000214 D131     	MOV.L   	@(#0C4,PC),R1	;
000216 E001     	MOV     	#01,R0		;
000218 2102     	MOV.L   	R0,@R1		;SCU.RSEL = 0x00000001;//SCU SDRAM select register
00021A 0723     	BRAF    	R7			;//jump to cache area
00021C 222A     	XOR     	R2,R2			;
00021E A015     	BRA     	L00024C		;return master_start(0);
000220 277A     	XOR     	R7,R7			;

gen_illegal_inst:
illegal_slot_inst:
cpu_addr_error:
dma_addr_error:
000222 AFFE     	BRA     	L000222 		;
000224 0009     	NOP     				;

reserved:
user_break:
trap:
irl:
000226 002B     	RTE     				;
000228 0009     	NOP     				;

L00022A:							;void slave_start()
00022A 0623     	BRAF    	R6			;//jump to cache area
00022C 200A     	XOR     	R0,R0			;
00022E D12E     	MOV.L   	@(#0B8,PC),R1	;
000230 D32E     	MOV.L   	@(#0B8,PC),R3	;
000232 D62F     	MOV.L   	@(#0BC,PC),R6	;
000234 2302     	MOV.L   	R0,@R3		;
000236 6412     	MOV.L   	@R1,R4		;
000238 3640     	CMP/EQ 	R4,R6			;
00023A 8904     	BT      	#008			;
00023C E0FF     	MOV     	#FF,R0		;
00023E 600C     	EXTU.B   	R0,R0			;
000240 4010     	DT      	R0			;
000242 8BFD     	BF      	#1FA			;
000244 89F6     	BT      	#1EC			;
000246 D52B     	MOV.L   	@(#0AC,PC),R5	;
000248 452B     	JMP     	@R5			;goto slave_main;//L06000600
00024A 0009     	NOP     				;

L00024C:							;void master_start(u32 msg)
00024C C72F     	MOVA    	@(#BC,PC),R0	;
00024E B035     	BRS     	L0002BC		;mem_copy(mem_init_param); //ROM->RAMH,len=4,src=0x20000810,dst=0x06000210
000250 255A     	XOR     	R5,R5			;bool init = false;

L000252:							;master_restart:
000252 D324     	MOV.L   	@(#090,PC),R3	;
000254 E11A     	MOV     	#1A,R1		;
000256 D42C     	MOV.L   	@(#0B0,PC),R4	;
000258 C72F     	MOVA    	@(#BC,PC),R0	;
00025A B027     	BRS     	L0002AC		;memset(mem_set_tbl[0],0x00000000);//len=0x00040000,dest=0x00200000(RAML)
00025C 2310     	MOV.B   	R1,@R3		;SMPC.COMREG = 0x1A;
00025E B025     	BRS     	L0002AC		;memset(mem_set_tbl[1],0x00000000);//len=0x0003D800,dest=0x0600A000(RAMH)
000260 0009     	NOP     				;
000262 2558     	TST     	R5,R5			;
000264 8B01     	BF      	#002			;if (!init)
000266 B021     	BRS     	L0002AC		;  memset(mem_set_tbl[2],0x00000000);//len=0x00002000,0xdest=06002000(RAMH)
000268 0009     	NOP     				;
00026A C731     	MOVA    	@(#C4,PC),R0	;
00026C B01E     	BRS     	L0002AC		;memset(mem_set_tbl[3],0x00000000);//len=0x00000040,dest=0x06000B00(RAMH)
00026E 244A     	XOR     	R4,R4			;
000270 C731     	MOVA    	@(#C4,PC),R0	;
000272 B023     	BRS     	L0002BC		;mem_copy(mem_init_tbl[0]); //ROM->RAMH,len=0x00000084,src=0x20000600,dest=0x06000000
000274 0009     	NOP     				;
000276 B021     	BRS     	L0002BC		;mem_copy(mem_init_tbl[1]); //ROM->RAMH,len=0x00000238,src=0x20000820,dest=0x06000220
000278 0009     	NOP     				;
00027A B01F     	BRS     	L0002BC		;mem_copy(mem_init_tbl[2]); //ROM->RAMH,len=0x000001C0,src=0x20001100,dest=0x06001100
00027C 0009     	NOP     				;
00027E B01D     	BRS     	L0002BC		;mem_copy(mem_init_tbl[3]);
000280 0009     	NOP     				;
000282 2558     	TST     	R5,R5			;
000284 8903     	BT      	L00028E		;if (init) {
000286 B019     	BRS     	L0002BC		;  mem_copy(mem_init_tbl[4]);
000288 0009     	NOP     				;
00028A B017     	BRS     	L0002BC		;  mem_copy(mem_init_tbl[5]);
00028C 0009     	NOP     				;}
L00028E:
00028E D51A     	MOV.L   	@(#068,PC),R5	;
000290 D31A     	MOV.L   	@(#068,PC),R3	;
000292 C706     	MOVA    	@(#18,PC),R0	;
000294 2302     	MOV.L   	R0,@R3		;*(u32*)0x06000234 = mem_set;
000296 C709     	MOVA    	@(#24,PC),R0	;
000298 1301     	MOV.L   	R0,@(#4,R3)		;*(u32*)0x06000238 = mem_copy;
00029A C72D     	MOVA    	@(#B4,PC),R0	;
00029C 1302     	MOV.L   	R0,@(#8,R3)		;*(u32*)0x0600023C = &mem_init_tbl[2];
00029E C78A     	MOVA    	@(#228,PC),R0	;
0002A0 D117     	MOV.L   	@(#05C,PC),R1	;
0002A2 D318     	MOV.L   	@(#060,PC),R3	;
0002A4 2102     	MOV.L   	R0,@R1		;*(u32*)0x06000328 = 0x000004C8;
0002A6 452B     	JMP     	@R5			;*(u32*)0x0600024C = msg;
0002A8 2372     	MOV.L   	R7,@R3		;goto master_main;//L06000680
0002AA 0009     	NOP     				;

L0002AC:							;void mem_set(u32* param, u32 val) //param-R0,val-R4
0002AC 6606     	MOV.L   	@R0+,R6		;u32 len = param[0];
0002AE 6306     	MOV.L   	@R0+,R3		;u32* dst = param[1];
L0002B0:
0002B0 2342     	MOV.L   	R4,@R3		;for (int i=0; i<len; i++)
0002B2 4610     	DT      	R6			;  *dst++ = val;
0002B4 8FFC     	BF/S    	L0002B0		;
0002B6 7304     	ADD     	#04,R3		;
0002B8 000B     	RTS     				;
0002BA 0009     	NOP     				;

L0002BC:							;void mem_copy(u32* param) //param-R0
0002BC 6606     	MOV.L   	@R0+,R6		;u32 len = param[0];
0002BE 6306     	MOV.L   	@R0+,R3		;u32* dst = param[1];
0002C0 6106     	MOV.L   	@R0+,R1		;u32* src = param[2];
0002C2 0009     	NOP     				;
L0002C4:
0002C4 6416     	MOV.L   	@R1+,R4		;for (int i=0; i<len; i++)
0002C6 4610     	DT      	R6			;  *dst++ = *src++;
0002C8 2342     	MOV.L   	R4,@R3		;
0002CA 8FFB     	BF/S    	L0002C4		;
0002CC 7304     	ADD     	#04,R3		;
0002CE 000B     	RTS     				;
0002D0 0009     	NOP     				;
0002D2 0009     	NOP     				;
0002D4 E0000000
0002D8 FFFFFFE0
0002DC 25FE00C4

0002E0 0036
0002E2 EE80
0002E4 2010001F

0002E8 0600
0002EA 0240
0002EC 4600
0002EE 0240
0002F0 3252
0002F2 4459
0002F4 06000600
0002F8 06000680
0002FC 06000234
000300 06000328
000304 0600024C
000308 00000000
L00030C:							;mem_init_param:
	dc.l	0x00000004, 0x06000210, L000810
L000318:							;mem_set_tbl:
	dc.l	0x00040000, 0x00200000
	dc.l	0x0003D800, 0x0600A000
	dc.l	0x00002000, 0x06002000
	dc.l	0x00000040, 0x06000B00
L000338:							;mem_init_tbl:
	dc.l	0x00000084, 0x06000000, master_vector_tbl
	dc.l	0x00000238, 0x06000220, L000820
	dc.l	0x000001C0, 0x06001100, L001100
	dc.l	0x00000008, 0x060002C0, L001100
	dc.l	0x00000008, 0x060002A0, 0x06000D00
	dc.l	0x00000010, 0x06000380, 0x06000D20

L000380:							;void cache_init()
000380 D112     	MOV.L   	@(#048,PC),R1	;
000382 E000     	MOV     	#00,R0		;
000384 2100     	MOV.B   	R0,@R1		;SH2.CCR = 0x00;//disable cache
000386 2100     	MOV.B   	R0,@R1		;
000388 2100     	MOV.B   	R0,@R1		;
00038A 2100     	MOV.B   	R0,@R1		;
00038C 052A     	STS     	PR, R5		;
00038E B00D     	BRS     	L0003AC		;cache_purge_way();
000390 E000     	MOV     	#00,R0		;
000392 B00B     	BRS     	L0003AC		;cache_purge_way();
000394 E040     	MOV     	#40,R0		;
000396 B009     	BRS     	L0003AC		;cache_purge_way();
000398 E080     	MOV     	#80,R0		;
00039A B007     	BRS     	L0003AC		;cache_purge_way();
00039C E0C0     	MOV     	#C0,R0		;
00039E 452A     	LDS     	R5,PR			;
0003A0 E001     	MOV     	#01,R0		;
0003A2 2100     	MOV.B   	R0,@R1		;SH2.CCR = 0x01;//enable cache
0003A4 2100     	MOV.B   	R0,@R1		;
0003A6 2100     	MOV.B   	R0,@R1		;
0003A8 000B     	RTS     				;
0003AA 2100     	MOV.B   	R0,@R1		;

L0003AC:							;void cache_purge_way()
0003AC 2100     	MOV.B   	R0,@R1		;
0003AE 2100     	MOV.B   	R0,@R1		;
0003B0 2100     	MOV.B   	R0,@R1		;
0003B2 2100     	MOV.B   	R0,@R1		;
0003B4 200A     	XOR     	R0,R0			;
0003B6 D304     	MOV.L   	@(#010,PC),R3	;
0003B8 E440     	MOV     	#40,R4		;
L0003BA:
0003BA 2302     	MOV.L   	R0,@R3		;
0003BC 4410     	DT      	R4			;
0003BE 8FFC     	BF/S    	L0003BA		;
0003C0 7310     	ADD     	#10,R3		;
0003C2 000B     	RTS     				;
0003C4 0009     	NOP     				;
0003C6 0009     	NOP     				;
0003C8 60000000
0003CC FFFFFE92

0003D0 6FAE
0003D2 FDDC
0003D4 D612
0003D6 94BB
0003D8 79CB
0003DA 393B
0003DC E747
0003DE FDA3
0003E0 9C5B
0003E2 3072
0003E4 0383
0003E6 8E1E
0003E8 C925     	AND     	#25,R0		;
0003EA 80D8     	MOV.B   	R0,@(#08,R13)	;
0003EC 5ACD     	MOV.L   	@(#34,R12),R10	;
0003EE DE45     	MOV.L   	@(#114,PC),R14	;
0003F0 E071     	MOV     	#71,R0		;
0003F2 1345     	MOV.L   	R4,@(#14,R3)	;
0003F4 7FAE     	ADD     	#AE,R15		;
0003F6 2DAF     	MULS.W  	R10,R13		;
0003F8 3908     	SUB     	R0,R9			;
0003FA B412     	BRS     	#0824			;
0003FC 2F2D     	XTRCT   	R2,R15		;
0003FE BB75     	BRS     	#16EA			;
000400 D318     	MOV.L   	@(#060,PC),R3	;
000402 E4FF     	MOV     	#FF,R4		;
000404 2342     	MOV.L   	R4,@R3		;
000406 E400     	MOV     	#00,R4		;
000408 9027     	MOV.W   	@(#04E,PC),R0	;
00040A B05D     	BRS     	#00BA			;
00040C 400E     	LDC     	R0,SR			;
00040E 255A     	XOR     	R5,R5			;
000410 D316     	MOV.L   	@(#058,PC),R3	;
000412 D717     	MOV.L   	@(#05C,PC),R7	;
000414 6032     	MOV.L   	@R3,R0		;
000416 AF28     	BRA     	#1E50			;
000418 2352     	MOV.L   	R5,@R3		;
00041A 1862     	MOV.L   	R6,@(#8,R8)		;
00041C AB7C     	BRA     	#16F8			;
00041E 7E80     	ADD     	#80,R14		;

nmi:
000420 D714     	MOV.L   	@(#050,PC),R7	;
000422 7F08     	ADD     	#08,R15		;
000424 D10D     	MOV.L   	@(#034,PC),R1	;
000426 B013     	BRS     	L000452		;L000452();
000428 2F76     	MOV.L   	R7,@-R15		;
00042A E0FF     	MOV     	#FF,R0		;
00042C D30D     	MOV.L   	@(#034,PC),R3	;
00042E E400     	MOV     	#00,R4		;
000430 B04A     	BRS     	#0094			;
000432 2302     	MOV.L   	R0,@R3		;
000434 255A     	XOR     	R5,R5			;
000436 D30D     	MOV.L   	@(#034,PC),R3	;
000438 67F6     	MOV.L   	@R15+,R7		;
00043A 6032     	MOV.L   	@R3,R0		;
00043C AF09     	BRA     	#1E12			;
00043E 2352     	MOV.L   	R5,@R3		;

000440 D70C     	MOV.L   	@(#030,PC),R7	;
000442 255A     	XOR     	R5,R5			;return restart(false,"HRES");

L000444:							;void restart(bool init, u32 msg)
000444 D106     	MOV.L   	@(#018,PC),R1	;
000446 B004     	BRS     	L000452		;(*scu_set_int_func)(0xFFFFFFFF);//L0600007B0
000448 E4FF     	MOV     	#FF,R4		;
00044A 9006     	MOV.W   	@(#00C,PC),R0	;
00044C AF01     	BRA     	L000252		;goto master_restart;
00044E 400E     	LDC     	R0,SR			;

000450 E403     	MOV     	#03,R4		;
L000452:
000452 6112     	MOV.L   	@R1,R1		;
000454 412B     	JMP     	@R1			;
000456 0009     	NOP     				;
000458 02BC
00045A 00F0
00045C 060002DC
000460 06000340
000464 0600
000466 0348
000468 2010
00046A 0063
00046C FFFF
00046E FFB0
000470 4845
000472 4D55
000474 48524553

L000478:							;void bsc_init(bool master)
000478 D111     	MOV.L   	@(#044,PC),R1	;
00047A D00A     	MOV.L   	@(#028,PC),R0	;
00047C 411E     	LDC     	R1,GBR		;
00047E D111     	MOV.L   	@(#044,PC),R1	;
000480 C278     	MOV.L   	R0,@(#1E0,GBR)	;SH2.BCR1 = 0x03F1;
000482 D009     	MOV.L   	@(#024,PC),R0	;
000484 C279     	MOV.L   	R0,@(#1E4,GBR)	;SH2.BCR2 = 0x00FC;
000486 D009     	MOV.L   	@(#024,PC),R0	;
000488 C27A     	MOV.L   	R0,@(#1E8,GBR)	;SH2.WCR = 0x5555;
00048A 8908     	BT      	L00049E		;if (master) {
00048C D008     	MOV.L   	@(#020,PC),R0	;
00048E C27B     	MOV.L   	R0,@(#1EC,GBR)	;  SH2.MCR = 0x0078;
000490 200A     	XOR     	R0,R0			;
000492 2101     	MOV.W   	R0,@R1		;  *(u16*)0xFFFF8888 = 0x0000;
000494 D008     	MOV.L   	@(#020,PC),R0	;
000496 C27C     	MOV.L   	R0,@(#1F0,GBR)	;  SH2.RTCSR = 0x0008;
000498 D008     	MOV.L   	@(#020,PC),R0	;  SH2.RTCOR = 0x0036;
00049A 000B     	RTS     				;
00049C C27E     	MOV.L   	R0,@(#1F8,GBR)	;}
L00049E:							;else {
00049E D005     	MOV.L   	@(#014,PC),R0	;  SH2.MCR = 0x0070;
0004A0 000B     	RTS     				;
0004A2 C27B     	MOV.L   	R0,@(#1EC,GBR)	;}
0004A4 A55A03F1
0004A8 A55A00FC
0004AC A55A5555
0004B0 A55A0078
0004B4 A55A0070
0004B8 A55A0008
0004BC A55A0036
0004C0 FFFFFE00
0004C4 FFFF8888

0004C8 905A     	MOV.W   	@(#0B4,PC),R0	;
0004CA 0602     	STC     	SR, R6		;
0004CC D338     	MOV.L   	@(#0E0,PC),R3	;
0004CE 400E     	LDC     	R0,SR			;
0004D0 D536     	MOV.L   	@(#0D8,PC),R5	;
0004D2 E001     	MOV     	#01,R0		;
0004D4 2300     	MOV.B   	R0,@R3		;
0004D6 E01A     	MOV     	#1A,R0		;
0004D8 2500     	MOV.B   	R0,@R5		;
0004DA E046     	MOV     	#46,R0		;
0004DC 4010     	DT      	R0			;
0004DE 8BFD     	BF      	#1FA			;
0004E0 6030     	MOV.B   	@R3,R0		;
0004E2 C801     	TST     	#01,R0		;
0004E4 8BF9     	BF      	#1F2			;
0004E6 D136     	MOV.L   	@(#0D8,PC),R1	;
0004E8 924D     	MOV.W   	@(#09A,PC),R2	;
0004EA 934D     	MOV.W   	@(#09A,PC),R3	;
0004EC 6012     	MOV.L   	@R1,R0		;
0004EE 4210     	DT      	R2			;
0004F0 8FFC     	BF/S    	#1F8			;
0004F2 313C     	ADD     	R3,R1			;
0004F4 4421     	SHAR    	R4			;
0004F6 D431     	MOV.L   	@(#0C4,PC),R4	;
0004F8 0029     	MOVT    	R0			;
0004FA 2402     	MOV.L   	R0,@R4		;
0004FC CA01     	XOR     	#01,R0		;
0004FE D228     	MOV.L   	@(#0A0,PC),R2	;
000500 4021     	SHAR    	R0			;
000502 D12C     	MOV.L   	@(#0B0,PC),R1	;
000504 E000     	MOV     	#00,R0		;
000506 2102     	MOV.L   	R0,@R1		;
000508 E000     	MOV     	#00,R0		;
00050A 1104     	MOV.L   	R0,@(#10,R1)	;
00050C D426     	MOV.L   	@(#098,PC),R4	;
00050E D521     	MOV.L   	@(#084,PC),R5	;
000510 442E     	LDC     	R4,VBR		;
000512 2252     	MOV.L   	R5,@R2		;
000514 D11E     	MOV.L   	@(#078,PC),R1	;
000516 E080     	MOV     	#80,R0		;
000518 2100     	MOV.B   	R0,@R1		;
00051A D320     	MOV.L   	@(#080,PC),R3	;
00051C D51B     	MOV.L   	@(#06C,PC),R5	;
00051E 902E     	MOV.W   	@(#05C,PC),R0	;
000520 2501     	MOV.W   	R0,@R5		;
000522 952E     	MOV.W   	@(#05C,PC),R5	;
000524 2351     	MOV.W   	R5,@R3		;
000526 0029     	MOVT    	R0			;
000528 D520     	MOV.L   	@(#080,PC),R5	;
00052A 700E     	ADD     	#0E,R0		;
00052C 2500     	MOV.B   	R0,@R5		;
00052E 001B     	SLEEP   				;
000530 AFFE     	BRA     	#1FFC			;
000532 0009     	NOP     				;

pon_nmi:
000534 7F08     	ADD     	#08,R15		;
000536 D41E     	MOV.L   	@(#078,PC),R4	;
000538 E001     	MOV     	#01,R0		;
00053A 2400     	MOV.B   	R0,@R4		;
00053C E000     	MOV     	#00,R0		;
00053E 2500     	MOV.B   	R0,@R5		;
000540 6031     	MOV.W   	@R3,R0		;
000542 4011     	CMP/PZ  	R0			;
000544 89FC     	BT      	#1F8			;
000546 200A     	XOR     	R0,R0			;
000548 2100     	MOV.B   	R0,@R1		;
00054A D013     	MOV.L   	@(#04C,PC),R0	;
00054C 911A     	MOV.W   	@(#034,PC),R1	;
00054E 2202     	MOV.L   	R0,@R2		;
000550 2311     	MOV.W   	R1,@R3		;
000552 D119     	MOV.L   	@(#064,PC),R1	;
000554 E001     	MOV     	#01,R0		;
000556 2102     	MOV.L   	R0,@R1		;
000558 D119     	MOV.L   	@(#064,PC),R1	;
00055A 9214     	MOV.W   	@(#028,PC),R2	;
00055C 9314     	MOV.W   	@(#028,PC),R3	;
00055E 6012     	MOV.L   	@R1,R0		;
000560 4210     	DT      	R2			;
000562 8FFC     	BF/S    	#1F8			;
000564 313C     	ADD     	R3,R1			;
000566 D115     	MOV.L   	@(#054,PC),R1	;
000568 D316     	MOV.L   	@(#058,PC),R3	;
00056A 6412     	MOV.L   	@R1,R4		;
00056C 8532     	MOV.W   	@(#04,R3),R0	;
00056E C804     	TST     	#04,R0		;
000570 89FC     	BT      	#1F8			;
000572 2341     	MOV.W   	R4,@R3		;
000574 D10B     	MOV.L   	@(#02C,PC),R1	;
000576 E081     	MOV     	#81,R0		;
000578 2100     	MOV.B   	R0,@R1		;
00057A 000B     	RTS     				;
00057C 460E     	LDC     	R6,SR			;
00057E A51D
000580 00F0
000582 8000
000584 0001
000586 0400
000588 0400
00058A 0009
00058C FFFF
00058E FE80
000590 FFFF
000592 FE91
000594 A55A
000596 007C
000598 A55A
00059A 0078
00059C FFFF
00059E FEE0
0005A0 FFFF
0005A2 FFEC
0005A4 FFFF
0005A6 FE10
0005A8 2000
0005AA 0000
0005AC 2010
0005AE 001F
0005B0 2010
0005B2 0063
0005B4 25FE
0005B6 00A8
0005B8 25FE
0005BA 00C4
0005BC 0600
0005BE 0324
0005C0 2600
0005C2 0000
0005C4 25F8
0005C6 0000
0005C8 FC0E
0005CA 0272
0005CC 7A3D
0005CE AC75
0005D0 7AA0
0005D2 10B2
0005D4 E494
0005D6 4241
0005D8 085D
0005DA 76F1
0005DC 5669
0005DE 6D09
0005E0 0000
0005E2 0000
0005E4 0000
0005E6 50EA
0005E8 0000
0005EA 511C
0005EC 0000
0005EE 5198
0005F0 45E3
0005F2 B59B
0005F4 BCB0
0005F6 E6B5
0005F8 00002C5C
0005FC 54CF
0005FE CE5B


	.org 0x00000600					;copied to 0x06000000
master_vector_tbl:					;u32 master_vector_tbl[128];
	dc.l		0x0600094A				;Power-on reset PC
	dc.l		0x0600094A				;Power-on reset SP
	dc.l		0x0600094A				;Manual reset PC
	dc.l		0x0600094A				;Manual reset SP
	dc.l		0x0600094E				;General illegal instruction
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094E				;Illegal slot instruction
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094E				;CPU address error
	dc.l		0x0600094E				;DMA address error
	dc.l		nmi					;NMI interrupt
	dc.l		0x0600094A				;User break interrupt
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Trap 32
	dc.l		0x0600094A				;Trap 33
	dc.l		0x0600094A				;Trap 34
	dc.l		0x0600094A				;Trap 35
	dc.l		0x0600094A				;Trap 36
	dc.l		0x0600094A				;Trap 37
	dc.l		0x0600094A				;Trap 38
	dc.l		0x0600094A				;Trap 39
	dc.l		0x0600094A				;Trap 40
	dc.l		0x0600094A				;Trap 41
	dc.l		0x0600094A				;Trap 42
	dc.l		0x0600094A				;Trap 43
	dc.l		0x0600094A				;Trap 44
	dc.l		0x0600094A				;Trap 45
	dc.l		0x0600094A				;Trap 46
	dc.l		0x0600094A				;Trap 47
	dc.l		0x0600094A				;Trap 48
	dc.l		0x0600094A				;Trap 49
	dc.l		0x0600094A				;Trap 50
	dc.l		0x0600094A				;Trap 51
	dc.l		0x0600094A				;Trap 52
	dc.l		0x0600094A				;Trap 53
	dc.l		0x0600094A				;Trap 54
	dc.l		0x0600094A				;Trap 55
	dc.l		0x0600094A				;Trap 56
	dc.l		0x0600094A				;Trap 57
	dc.l		0x0600094A				;Trap 58
	dc.l		0x0600094A				;Trap 59
	dc.l		0x0600094A				;Trap 60
	dc.l		0x0600094A				;Trap 61
	dc.l		0x0600094A				;Trap 62
	dc.l		0x0600094A				;Trap 63
	dc.l		vblankin_int			;IRL0_1
	dc.l		vblankout_int			;IRL2_3 
	dc.l		vblankin_int			;IRL4_5
	dc.l		0x0600084C				;IRL6_7 timer 0
	dc.l		0x06000852				;IRL8_9 timer 1
	dc.l		0x06000858				;IRL10_11 DSP end
	dc.l		0x0600085E				;IRL12_13 sound request
	dc.l		0x06000864				;IRL14_15 system manager
	dc.l		0x0600086A				;PAD
	dc.l		0x06000870				;DMA2 end
	dc.l		0x06000876				;DMA1 end
	dc.l		0x0600087C				;DMA0 end
	dc.l		0x06000882     			;DMA illegal
	dc.l		0x06000888				;sprite draw end
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600088E				;external int 0
	dc.l		0x06000894				;external int 1
	dc.l		0x0600089A     			;external int 2
	dc.l		0x060008A0     			;external int 3
	dc.l		0x060008A6				;external int 4
	dc.l		0x060008AC				;external int 5
	dc.l		0x060008B2     			;external int 6
	dc.l		0x060008B8				;external int 7
	dc.l		0x060008BE				;external int 8
	dc.l		0x060008C4				;external int 9
	dc.l		0x060008CA     			;external int 10
	dc.l		0x060008D0     			;external int 11
	dc.l		0x060008D6				;external int 12
	dc.l		0x060008DC				;external int 13
	dc.l		0x060008E2     			;external int 14
	dc.l		0x060008E8				;external int 15	
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;

	dc.b	"BTR_1.000U941115"

L000810:							;copied to 0x06000210-0x0600021F
	dc.l	0x00000000, 0x00000000, 0x00000000, 0x00000000     	

	.org 0x00000820
L000820:							;copied to 0x06000220-0x06000AFF
000820 0000     	
000822 0000     	
000824 0000     	
000826 0000     	
000828 0000     	
00082A 0000     	
00082C 0000     	
00082E 0000     	
000830 0000     	
000832 0000     	
000834 0000     	
000836 0000     	
000838 0000     	
00083A 0000     	
00083C 0000     	
00083E 0000     	
000840 0000     	
000842 0000     	
000844 0000     	
000846 0000     	
000848 0000     	
00084A 0000     	
00084C 0000     	
00084E 0000     	
L000850:
	dc.l	L06000646
L000854:
	dc.l	L06000678
000858 0600083C
00085C 0600083C
000860 06000D00     	
000864 0000     	
000866 0000     	
000868 0000     	
00086A 0000     	
00086C 0000     	
00086E 0000     	
000870 0000     	
000872 2806
000874 0000     	
000876 2898
000878 0000     	
00087A 0000     	
00087C 0000     	
00087E 0000     	
000880 06000810     	
000884 0000     	
000886 0000     	
000888 0600083C
00088C 0600083C
000890 0000     	
000892 0000     	
000894 0000     	
000896 0000     	
000898 0000     	
00089A 2924
00089C 0000     	
00089E 0000     	
0008A0 0000     	
0008A2 0000     	
0008A4 0000     	
0008A6 0000     	
0008A8 0000     	
0008AA 0000     	
0008AC 0000     	
0008AE 0000     	
0008B0 0000     	
0008B2 0000     	
0008B4 0000     	
0008B6 0000     	
0008B8 0000     	
0008BA 0000     	
0008BC 0000     	
0008BE 0000     	
0008C0 0000     	
0008C2 0000     	
0008C4 00000000     	
0008C8 0000     	
0008CA 0000     	
0008CC 0000     	
0008CE 0000     	
0008D0 0000     	
0008D2 0000     	
0008D4 0000     	
0008D6 0000     	
0008D8 0000     	
0008DA 0000     	
0008DC 0000     	
0008DE 0000     	
0008E0 0000     	
0008E2 0000     	
0008E4 0000     	
0008E6 0000     	
0008E8 0000     	
0008EA 0000     	
0008EC 0000     	
0008EE 0000     	
0008F0 0000     	
0008F2 0000     	
0008F4 0000     	
0008F6 0000     	
0008F8 0000     	
0008FA 0000     	
0008FC 0000     	
0008FE 0000     	
000900 06000794
000904 0600077C
000908 0600083C
00090C 0600083C
000910 06000784
000914 06000774
000918 0600083C
00091C 0600083C
000920 060006B0     	
000924 0000     	
000926 0000     	
000928 0000     	
00092A 0000     	
00092C 0000     	
00092E 0000     	
000930 060007F0     	
000934 060007FE
000938 0600083C
00093C 0600083C
000940 060007B0     	
	dc.l	L060007C0				;scu_change_int
000948 FFFF     	
00094A FFFF     	
00094C 06000664
000950 0000     	
000952 0000     	
000954 0000     	
000956 0000     	
000958 0007
00095A D600
00095C 0007
00095E D660
000960 0600083C
000964 0600083C
000968 0600083C
00096C 0600083C
000970 0600083C
000974 0600083C
000978 0600083C
00097C 0600083C
000980 0000     	
000982 0000     	
000984 0001     	
000986 0002
000988 0004
00098A 0008
00098C 0010     	
00098E 0020     	
000990 0040     	
000992 0080     	
000994 0100     	
000996 0200     	
000998 0400     	
00099A 0800     	
00099C 1000
00099E 2000
0009A0 4000
0009A2 8000
0009A4 0000     	
0009A6 0000     	
0009A8 0000     	
0009AA 0000     	
0009AC 0000     	
0009AE 0000     	
0009B0 0000     	
0009B2 0000     	
0009B4 0000     	
0009B6 0000     	
0009B8 0000     	
0009BA 0000     	
0009BC 0000     	
0009BE 0000     	
L0009C0:
	dc.b	"COPYRIGHT(C) SEGA ENTERPRISES,LTD. 1994 ALL RIGHTS RESERVED     "


	.org 0x00000A00
slave_vector_tbl:						;u32 slave_vector_tbl[128];
	dc.l		0x0600094A				;Power-on reset PC
	dc.l		0x0600094A				;Power-on reset SP
	dc.l		0x0600094A				;Manual reset PC
	dc.l		0x0600094A				;Manual reset SP
	dc.l		0x0600094E				;General illegal instruction
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094E				;Illegal slot instruction
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094E				;CPU address error
	dc.l		0x0600094E				;DMA address error
	dc.l		0x0600094A				;NMI interrupt
	dc.l		0x0600094A				;User break interrupt
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Reserved
	dc.l		0x0600094A				;Trap 32
	dc.l		0x0600094A				;Trap 33
	dc.l		0x0600094A				;Trap 34
	dc.l		0x0600094A				;Trap 35
	dc.l		0x0600094A				;Trap 36
	dc.l		0x0600094A				;Trap 37
	dc.l		0x0600094A				;Trap 38
	dc.l		0x0600094A				;Trap 39
	dc.l		0x0600094A				;Trap 40
	dc.l		0x0600094A				;Trap 41
	dc.l		0x0600094A				;Trap 42
	dc.l		0x0600094A				;Trap 43
	dc.l		0x0600094A				;Trap 44
	dc.l		0x0600094A				;Trap 45
	dc.l		0x0600094A				;Trap 46
	dc.l		0x0600094A				;Trap 47
	dc.l		0x0600094A				;Trap 48
	dc.l		0x0600094A				;Trap 49
	dc.l		0x0600094A				;Trap 50
	dc.l		0x0600094A				;Trap 51
	dc.l		0x0600094A				;Trap 52
	dc.l		0x0600094A				;Trap 53
	dc.l		0x0600094A				;Trap 54
	dc.l		0x0600094A				;Trap 55
	dc.l		0x0600094A				;Trap 56
	dc.l		0x0600094A				;Trap 57
	dc.l		0x0600094A				;Trap 58
	dc.l		0x0600094A				;Trap 59
	dc.l		0x0600094A				;Trap 60
	dc.l		0x0600094A				;Trap 61
	dc.l		0x0600094A				;Trap 62
	dc.l		0x0600094A				;Trap 63
	dc.l		0x0600094A				;IRL0_1
	dc.l		0x0600094A				;IRL2_3 
	dc.l		0x0600094A				;IRL4_5
	dc.l		0x0600094A				;IRL6_7 timer 0
	dc.l		0x0600094A				;IRL8_9 timer 1
	dc.l		0x0600094A				;IRL10_11 DSP end
	dc.l		0x0600094A				;IRL12_13 sound request
	dc.l		0x0600094A				;IRL14_15 system manager
	dc.l		0x0600094A				;PAD
	dc.l		0x0600094A				;DMA2 end
	dc.l		0x0600094A				;DMA1 end
	dc.l		0x0600094A				;DMA0 end
	dc.l		0x0600094A				;DMA illegal
	dc.l		0x0600094A				;sprite draw end
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;external int 0
	dc.l		0x0600094A				;external int 1
	dc.l		0x0600094A				;external int 2
	dc.l		0x0600094A				;external int 3
	dc.l		0x0600094A				;external int 4
	dc.l		0x0600094A				;external int 5
	dc.l		0x0600094A				;external int 6
	dc.l		0x0600094A				;external int 7
	dc.l		0x0600094A				;external int 8
	dc.l		0x0600094A				;external int 9
	dc.l		0x0600094A				;external int 10
	dc.l		0x0600094A				;external int 11
	dc.l		0x0600094A				;external int 12
	dc.l		0x0600094A				;external int 13
	dc.l		0x0600094A				;external int 14
	dc.l		0x0600094A				;external int 15	
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;
	dc.l		0x0600094A				;

L06000600:							;void slave_main()
000C00 DF13     	MOV.L   	@(#04C,PC),R15	;
000C02 B08B     	BRS     	#0116			;sh2_interrupt_init();
000C04 E400     	MOV     	#00,R4		;
L000C06:
000C06 200A     	XOR     	R0,R0			;
000C08 D410     	MOV.L   	@(#040,PC),R4	;
000C0A 211A     	XOR     	R1,R1			;
000C0C D312     	MOV.L   	@(#048,PC),R3	;
000C0E 442E     	LDC     	R4,VBR		;SH2.VBR = slave_vector_tbl;
000C10 D512     	MOV.L   	@(#048,PC),R5	;
000C12 222A     	XOR     	R2,R2			;
000C14 2352     	MOV.L   	R5,@R3		;*(u32*)0x06000244 = "2RDS";
000C16 233A     	XOR     	R3,R3			;
000C18 401E     	LDC     	R0,GBR		;
000C1A 244A     	XOR     	R4,R4			;
000C1C 402A     	LDS     	R0,PR			;
000C1E 255A     	XOR     	R5,R5			;
000C20 0028     	CLRMAC  				;
000C22 266A     	XOR     	R6,R6			;
000C24 D70B     	MOV.L   	@(#02C,PC),R7	;
000C26 288A     	XOR     	R8,R8			;
000C28 6772     	MOV.L   	@R7,R7		;
000C2A 299A     	XOR     	R9,R9			;
000C2C 2778     	TST     	R7,R7			;
000C2E 2AAA     	XOR     	R10,R10		;
000C30 8900     	BT      	L06000C34		;if (*(u32*)0x060002AC != 0)
000C32 6F73     	MOV     	R7,R15		;  SH2.SP = 0x00000000;
000C34 D70A     	MOV.L   	@(#028,PC),R7	;
000C36 2BBA     	XOR     	R11,R11		;
000C38 6772     	MOV.L   	@R7,R7		;void* func = *(u32*)0x06000250;
000C3A 2CCA     	XOR     	R12,R12		;
000C3C 2DDA     	XOR     	R13,R13		;
000C3E 2EEA     	XOR     	R14,R14		;
000C40 400E     	LDC     	R0,SR			;SH2.SR = 0x00000000;
000C42 472B     	JMP     	@R7			;func();
000C44 277A     	XOR     	R7,R7			;

L06000646:
000C46 AFFE     	BRA     	L06000646		;
000C48 0009     	NOP     				;
000C4A 0009     	NOP     				;
000C4C 06000400
000C50 0600
000C52 1000
000C54 060002AC
000C58 06000244
000C5C 32524453
000C60 06000250
000C64 D003     	MOV.L   	@(#00C,PC),R0	;
000C66 E101     	MOV     	#01,R1		;
000C68 1041     	MOV.L   	R4,@(#4,R0)		;
000C6A 0009     	NOP     				;
000C6C 1012     	MOV.L   	R1,@(#8,R0)		;
000C6E 000B     	RTS     				;
000C70 5002     	MOV.L   	@(#08,R0),R0	;
000C72 0009     	NOP     				;
000C74 25FE
000C76 00A0

L06000678:							;
000C78 AFFE     	BRA     	L06000678		;
000C7A 0009     	NOP     				;

000C7C BD5E     	BRS     	#1ABC			;
000C7E 9687     	MOV.W   	@(#10E,PC),R6	;

LS06000680:							;void master_main()
000C80 DF16     	MOV.L   	@(#058,PC),R15	;SH2.SP = 0x06002000;
000C82 B04B     	BRS     	LS0600071C		;sh2_interrupt_init();
000C84 E401     	MOV     	#01,R4		;
000C86 B0D1     	BRS     	LS0600082C		;int_handlers_init();
000C88 0009     	NOP     				;
000C8A D116     	MOV.L   	@(#058,PC),R1	;void* func = *(u32*)0x060002C4;
000C8C A00D     	BRA     	L060006AA		;goto func;//L06001120
000C8E 0009     	NOP     				;

L06000690:							;
000C90 D11B     	MOV.L   	@(#06C,PC),R1	;
000C92 D51A     	MOV.L   	@(#068,PC),R5	;
000C94 B009     	BRS     	L060006AA		;(*scu_change_int_func)(0xFFFFFFFF,0xFFFF7FFF):
000C96 E4FF     	MOV     	#FF,R4		;
000C98 D311     	MOV.L   	@(#044,PC),R3	;
000C9A E000     	MOV     	#00,R0		;
000C9C 2302     	MOV.L   	R0,@R3		;*(u32*)0x060002C0 = 0x00000000;
000C9E D114     	MOV.L   	@(#050,PC),R1	;
000CA0 D014     	MOV.L   	@(#050,PC),R0	;
000CA2 D415     	MOV.L   	@(#054,PC),R4	;
000CA4 B001     	BRS     	L060006AA		;(*mem_set_func)(*mem_copy_param,0x00000000):
000CA6 6002     	MOV.L   	@R0,R0		;
000CA8 D116     	MOV.L   	@(#058,PC),R1	;
L060006AA:
000CAA 6112     	MOV.L   	@R1,R1		;
000CAC 412B     	JMP     	@R1			;(*L06000254)();
000CAE 0009     	NOP     				;

000CB0 D115     	MOV.L   	@(#054,PC),R1	;
000CB2 4F22     	STS.L   	PR,@-R15		;
000CB4 BFF9     	BRS     	#1FF2			;
000CB6 0009     	NOP     				;
000CB8 D114     	MOV.L   	@(#050,PC),R1	;
000CBA BFF6     	BRS     	#1FEC			;
000CBC 0009     	NOP     				;
000CBE D316     	MOV.L   	@(#058,PC),R3	;
000CC0 D514     	MOV.L   	@(#050,PC),R5	;
000CC2 E001     	MOV     	#01,R0		;
000CC4 2300     	MOV.B   	R0,@R3		;
000CC6 E019     	MOV     	#19,R0		;
000CC8 2500     	MOV.B   	R0,@R5		;
000CCA E046     	MOV     	#46,R0		;
000CCC 4010     	DT      	R0			;
000CCE 8BFD     	BF      	#1FA			;
000CD0 6030     	MOV.B   	@R3,R0		;
000CD2 C801     	TST     	#01,R0		;
000CD4 8BF9     	BF      	#1F2			;
000CD6 4F26     	LDS.L   	@R15+,PR		;
000CD8 000B     	RTS     				;
000CDA 0009     	NOP     				;
000CDC 06002000

000CE0 060002C0
000CE4 060002C4

000CE8 0600     	
000CEA 02C8
000CEC 0600     	
000CEE 02CC
000CF0 06000234
000CF4 0600023C
000CF8 00000000
000CFC FFFF7FFF
000D00 06000344
000D04 06000254
000D08 0600     	
000D0A 0328
000D0C 0600     	
000D0E 032C
000D10 0600     	
000D12 0248
000D14 2010
000D16 001F
000D18 2010
000D1A 0063     	

LS0600071C:
L000D1C:							;void sh2_interrupt_init()
000D1C C70E     	MOVA    	@(#38,PC),R0	;
000D1E 6303     	MOV     	R0,R3			;
000D20 C70F     	MOVA    	@(#3C,PC),R0	;
000D22 6503     	MOV     	R0,R5			;
000D24 D112     	MOV.L   	@(#048,PC),R1	;
000D26 E0E0     	MOV     	#E0,R0		;
000D28 411E     	LDC     	R1,GBR		;
000D2A A005     	BRA     	L000D38		;
000D2C 600C     	EXTU.B   	R0,R0			;
L000D2E:
000D2E 6034     	MOV.B   	@R3+,R0		;SH2.ICR = 0x0000;
000D30 600C     	EXTU.B   	R0,R0			;SH2.IPRA = 0x0000;
000D32 2008     	TST     	R0,R0			;SH2.IPRB = 0x0F00;
000D34 8906     	BT      	L000D44		;SH2.VCRA = 0x6061;
000D36 6455     	MOV.W   	@R5+,R4		;SH2.VCRB = 0x6263;
L000D38:
000D38 6448     	SWAP.B   	R4,R4			;SH2.VCRC = 0x6465;
000D3A 0144     	MOV.B   	R4,@(R0,R1)		;SH2.VCRD = 0x6600;
000D3C 6448     	SWAP.B   	R4,R4			;SH2.VCRWDTD = 0x6869;
000D3E 7001     	ADD     	#01,R0		;
000D40 AFF5     	BRA     	L000D2E		;
000D42 0144     	MOV.B   	R4,@(R0,R1)		;
L000D44:							;
000D44 E06C     	MOV     	#6C,R0		;
000D46 C26A     	MOV.L   	R0,@(#1A8,GBR)	;SH2.VCRDMA1 = 0x0000006C;
000D48 E06D     	MOV     	#6D,R0		;
000D4A C268     	MOV.L   	R0,@(#1A0,GBR)	;SH2.VCRDMA0 = 0x0000006D;
000D4C E06E     	MOV     	#6E,R0		;
000D4E C243     	MOV.L   	R0,@(#10C,GBR)	;SH2.VCRDIV = 0x0000006E;
000D50 E081     	MOV     	#81,R0		;
000D52 0009     	NOP     				;SH2.TIER = 0x81;
000D54 000B     	RTS     				;
000D56 C010     	MOV.B   	R0,@(#010,GBR)	;

000D58 E260
000D5A 6264
000D5C 6668
000D5E E400
000D60 0000     	
000D62 0F00     	
000D64 6061
000D66 6263
000D68 6465
000D6A 6600
000D6C 6869
000D6E 0009
000D70 FFFFFE00

000D74 0022     	STC     	VBR, R0		;
000D76 4408     	SHLL2   	R4			;
000D78 000B     	RTS     				;
000D7A 004E     	MOV.L   	@(R0,R4),R0		;
000D7C D009     	MOV.L   	@(#024,PC),R0	;
000D7E 4408     	SHLL2   	R4			;
000D80 000B     	RTS     				;
000D82 004E     	MOV.L   	@(R0,R4),R0		;

L06000784:							;
000D84 4408     	SHLL2   	R4			;
000D86 2558     	TST     	R5,R5			;
000D88 8B01     	BF      	#002			;
000D8A D007     	MOV.L   	@(#01C,PC),R0	;
000D8C 054E     	MOV.L   	@(R0,R4),R5		;
000D8E 0022     	STC     	VBR, R0		;
000D90 000B     	RTS     				;
000D92 0456     	MOV.L   	R5,@(R0,R4)		;

LS06000794:
L000D94:							;void set_int_handler(u8 n,u32* handler)
000D94 4408     	SHLL2   	R4			;
000D96 2558     	TST     	R5,R5			;
000D98 8B00     	BF      	L000D9C		;
000D9A D504     	MOV.L   	@(#010,PC),R5	;
L000D9C:
000D9C D001     	MOV.L   	@(#004,PC),R0	;
000D9E 000B     	RTS     				;
000DA0 0456     	MOV.L   	R5,@(R0,R4)		;int_handler_tbl[n] = (handler ? handler : empty_handler);
000DA2 0009     	NOP     				;
000DA4 06000900
000DA8 20000600     	
000DAC 0600083C

L0600007B0:
L000DB0:							;void scu_set_int(u32 mask)//mask-R4
000DB0 903A     	MOV.W   	@(#074,PC),R0	;
000DB2 0102     	STC     	SR, R1		;//save SR
000DB4 D30D     	MOV.L   	@(#034,PC),R3	;
000DB6 400E     	LDC     	R0,SR			;SH2.SR = 0x000000F0;
000DB8 D00B     	MOV.L   	@(#02C,PC),R0	;
000DBA 2342     	MOV.L   	R4,@R3		;scu_curr_int_mask = mask;
000DBC A00B     	BRA     	L000DD6		;SCU.IMS = mask;
000DBE 2042     	MOV.L   	R4,@R0		;goto LS060007D6;

L060007C0:
L000DC0:							;void scu_change_int(u32 clear_mask,u32 set_mask)//clear_mask-R4,set_mask-R5
000DC0 9332     	MOV.W   	@(#064,PC),R3	;
000DC2 0102     	STC     	SR, R1		;//save SR
000DC4 D009     	MOV.L   	@(#024,PC),R0	;
000DC6 430E     	LDC     	R3,SR			;SH2.SR = 0x000000F0;
000DC8 6302     	MOV.L   	@R0,R3		;
000DCA 2349     	AND     	R4,R3			;
000DCC 235B     	OR      	R5,R3			;u32 temp = (scu_curr_int_mask & clear_mask) | set_mask;
000DCE 2032     	MOV.L   	R3,@R0		;scu_curr_int_mask = temp;
000DD0 D005     	MOV.L   	@(#014,PC),R0	;
000DD2 245B     	OR      	R5,R4			;clear_mask |= set_mask;
000DD4 2032     	MOV.L   	R3,@R0		;SCU.IMS = temp;
LS060007D6:
000DD6 644F     	EXTS.W   	R4,R4			;
000DD8 1041     	MOV.L   	R4,@(#4,R0)		;SCU.IST = clear_mask;
000DDA 4411     	CMP/PZ  	R4			;
000DDC 8B01     	BF      	L000DE2		;
000DDE E401     	MOV     	#01,R4		;if (mask & 0x8000 == 0)
000DE0 1042     	MOV.L   	R4,@(#8,R0)		;  SCU.AIACK = 0x00000001;
L000DE2:
000DE2 000B     	RTS     				;
000DE4 410E     	LDC     	R1,SR			;//restore SR
000DE6 0009     	NOP     				;
000DE8 25FE00A0
000DEC 06000348

000DF0 D005     	MOV.L   	@(#014,PC),R0	;
000DF2 D306     	MOV.L   	@(#018,PC),R3	;
000DF4 340C     	ADD     	R0,R4			;
000DF6 243B     	OR      	R3,R4			;
000DF8 441B     	TAS.B   	@R4			;
000DFA 000B     	RTS     				;
000DFC 0029     	MOVT    	R0			;
000DFE D002     	MOV.L   	@(#008,PC),R0	;
000E00 233A     	XOR     	R3,R3			;
000E02 000B     	RTS     				;
000E04 0434     	MOV.B   	R3,@(R0,R4)		;
000E06 0009     	NOP     				;
000E08 0600
000E0A 0B00
000E0C 2000
000E0E 0000
000E10 930A     	MOV.W   	@(#014,PC),R3	;
000E12 0102     	STC     	SR, R1		;
000E14 C79A     	MOVA    	@(#268,PC),R0	;
000E16 430E     	LDC     	R3,SR			;
000E18 E320     	MOV     	#20,R3		;
000E1A 6246     	MOV.L   	@R4+,R2		;
000E1C 4310     	DT      	R3			;
000E1E 2022     	MOV.L   	R2,@R0		;
000E20 8FFB     	BF/S    	#1F6			;
000E22 7004     	ADD     	#04,R0		;
000E24 000B     	RTS     				;
000E26 410E     	LDC     	R1,SR			;
000E28 00F0
000E2A 0009

L0600082C:							;void int_handlers_init()
000E2C D34D     	MOV.L   	@(#134,PC),R3	;
000E2E E120     	MOV     	#20,R1		;
000E30 C702     	MOVA    	@(#08,PC),R0	;
L000E32:
000E32 71FF     	ADD     	#FF,R1		;for (int i=0; i<32; i++)
000E34 2302     	MOV.L   	R0,@R3		;  int_handler_tbl[i] = empty_handler;
000E36 7304     	ADD     	#04,R3		;
000E38 4115     	CMP/PL  	R1			;
000E3A 89FA     	BT      	L000E32		;
L0600083C:							;void empty_handler()
000E3C 000B     	RTS     				;
000E3E 0009     	NOP     				;

L06000840:							;void vblankin_int()
000E40 2F06     	MOV.L   	R0,@-R15		;
000E42 A057     	BRA     	L000EF4		;
000E44 E040     	MOV     	#40,R0		;return int_run(0x40);

L06000846:							;void vblankout_int()
000E46 2F06     	MOV.L   	R0,@-R15		;
000E48 A054     	BRA     	L000EF4		;
000E4A E041     	MOV     	#41,R0		;return int_run(0x41);

000E4C 2F06     	MOV.L   	R0,@-R15		;
000E4E A051     	BRA     	L000EF4		;
000E50 E043     	MOV     	#43,R0		;

000E52 2F06     	MOV.L   	R0,@-R15		;
000E54 A04E     	BRA     	#009C			;
000E56 E044     	MOV     	#44,R0		;

000E58 2F06     	MOV.L   	R0,@-R15		;
000E5A A04B     	BRA     	#0096			;
000E5C E045     	MOV     	#45,R0		;

000E5E 2F06     	MOV.L   	R0,@-R15		;
000E60 A048     	BRA     	#0090			;
000E62 E046     	MOV     	#46,R0		;

000E64 2F06     	MOV.L   	R0,@-R15		;
000E66 A045     	BRA     	#008A			;
000E68 E047     	MOV     	#47,R0		;

000E6A 2F06     	MOV.L   	R0,@-R15		;
000E6C A042     	BRA     	#0084			;
000E6E E048     	MOV     	#48,R0		;

000E70 2F06     	MOV.L   	R0,@-R15		;
000E72 A03F     	BRA     	#007E			;
000E74 E049     	MOV     	#49,R0		;

000E76 2F06     	MOV.L   	R0,@-R15		;
000E78 A03C     	BRA     	#0078			;
000E7A E04A     	MOV     	#4A,R0		;

000E7C 2F06     	MOV.L   	R0,@-R15		;
000E7E A039     	BRA     	#0072			;
000E80 E04B     	MOV     	#4B,R0		;

000E82 2F06     	MOV.L   	R0,@-R15		;
000E84 A036     	BRA     	#006C			;
000E86 E04C     	MOV     	#4C,R0		;

000E88 2F06     	MOV.L   	R0,@-R15		;
000E8A A033     	BRA     	#0066			;
000E8C E04D     	MOV     	#4D,R0		;

000E8E 2F06     	MOV.L   	R0,@-R15		;
000E90 A030     	BRA     	#0060			;
000E92 E050     	MOV     	#50,R0		;

000E94 2F06     	MOV.L   	R0,@-R15		;
000E96 A02D     	BRA     	#005A			;
000E98 E051     	MOV     	#51,R0		;

000E9A 2F06     	MOV.L   	R0,@-R15		;
000E9C A02A     	BRA     	#0054			;
000E9E E052     	MOV     	#52,R0		;

000EA0 2F06     	MOV.L   	R0,@-R15		;
000EA2 A027     	BRA     	#004E			;
000EA4 E053     	MOV     	#53,R0		;

000EA6 2F06     	MOV.L   	R0,@-R15		;
000EA8 A024     	BRA     	#0048			;
000EAA E054     	MOV     	#54,R0		;

000EAC 2F06     	MOV.L   	R0,@-R15		;
000EAE A021     	BRA     	#0042			;
000EB0 E055     	MOV     	#55,R0		;

000EB2 2F06     	MOV.L   	R0,@-R15		;
000EB4 A01E     	BRA     	#003C			;
000EB6 E056     	MOV     	#56,R0		;

000EB8 2F06     	MOV.L   	R0,@-R15		;
000EBA A01B     	BRA     	#0036			;
000EBC E057     	MOV     	#57,R0		;

000EBE 2F06     	MOV.L   	R0,@-R15		;
000EC0 A018     	BRA     	#0030			;
000EC2 E058     	MOV     	#58,R0		;

000EC4 2F06     	MOV.L   	R0,@-R15		;
000EC6 A015     	BRA     	#002A			;
000EC8 E059     	MOV     	#59,R0		;

000ECA 2F06     	MOV.L   	R0,@-R15		;
000ECC A012     	BRA     	#0024			;
000ECE E05A     	MOV     	#5A,R0		;

000ED0 2F06     	MOV.L   	R0,@-R15		;
000ED2 A00F     	BRA     	#001E			;
000ED4 E05B     	MOV     	#5B,R0		;

000ED6 2F06     	MOV.L   	R0,@-R15		;
000ED8 A00C     	BRA     	#0018			;
000EDA E05C     	MOV     	#5C,R0		;

000EDC 2F06     	MOV.L   	R0,@-R15		;
000EDE A009     	BRA     	#0012			;
000EE0 E05D     	MOV     	#5D,R0		;

000EE2 2F06     	MOV.L   	R0,@-R15		;
000EE4 A006     	BRA     	#000C			;
000EE6 E05E     	MOV     	#5E,R0		;

000EE8 2F06     	MOV.L   	R0,@-R15		;
000EEA A003     	BRA     	#0006			;
000EEC E05F     	MOV     	#5F,R0		;
000EEE 0009     	NOP     				;

L060008F0:							;void vblankin_int()
000EF0 2F06     	MOV.L   	R0,@-R15		;
000EF2 E042     	MOV     	#42,R0		;return int_run(0x42);

L000EF4:							;void int_run(n)//n-R0
000EF4 2F16     	MOV.L   	R1,@-R15		;
000EF6 D118     	MOV.L   	@(#060,PC),R1	;
000EF8 2F26     	MOV.L   	R2,@-R15		;
000EFA 6212     	MOV.L   	@R1,R2		;u32 save_mask = scu_curr_int_mask;
000EFC 2F36     	MOV.L   	R3,@-R15		;
000EFE 2F26     	MOV.L   	R2,@-R15		;
000F00 2F46     	MOV.L   	R4,@-R15		;
000F02 D317     	MOV.L   	@(#05C,PC),R3	;
000F04 2F56     	MOV.L   	R5,@-R15		;
000F06 4008     	SHLL2   	R0			;
000F08 033E     	MOV.L   	@(R0,R3),R3		;u32 temp = int_mask_tbl[n];
000F0A D514     	MOV.L   	@(#050,PC),R5	;
000F0C 6433     	MOV     	R3,R4			;
000F0E 4329     	SHLR16  	R3			;
000F10 430E     	LDC     	R3,SR			;SH2.SR = temp>>16;
000F12 644F     	EXTS.W   	R4,R4			;
000F14 224B     	OR      	R4,R2			;u32 mask = (u32)(s16)temp;
000F16 2122     	MOV.L   	R2,@R1		;scu_curr_int_mask |= mask;
000F18 2522     	MOV.L   	R2,@R5		;SCU.IMS = mask;
000F1A D313     	MOV.L   	@(#04C,PC),R3	;
000F1C 2F66     	MOV.L   	R6,@-R15		;
000F1E 063E     	MOV.L   	@(R0,R3),R6		;
000F20 2F76     	MOV.L   	R7,@-R15		;
000F22 4F22     	STS.L   	PR,@-R15		;
000F24 460B     	JSR     	@R6			;int_handler_tbl[n]();
000F26 4F13     	STC.L   	GBR,@-R15		;
000F28 4F17     	LDC.L   	@R15+,GBR		;
000F2A 4F26     	LDS.L   	@R15+,PR		;
000F2C 67F6     	MOV.L   	@R15+,R7		;
000F2E 9011     	MOV.W   	@(#022,PC),R0	;
000F30 66F6     	MOV.L   	@R15+,R6		;
000F32 D309     	MOV.L   	@(#024,PC),R3	;
000F34 65F6     	MOV.L   	@R15+,R5		;
000F36 D109     	MOV.L   	@(#024,PC),R1	;
000F38 64F6     	MOV.L   	@R15+,R4		;
000F3A 62F6     	MOV.L   	@R15+,R2		;
000F3C 400E     	LDC     	R0,SR			;SH2.SR = 0x000000F0;
000F3E 2322     	MOV.L   	R2,@R3		;scu_curr_int_mask = save_mask;
000F40 63F6     	MOV.L   	@R15+,R3		;
000F42 2122     	MOV.L   	R2,@R1		;SCU.IMS = save_mask;
000F44 62F6     	MOV.L   	@R15+,R2		;
000F46 61F6     	MOV.L   	@R15+,R1		;
000F48 60F6     	MOV.L   	@R15+,R0		;
L0600094A:							;
000F4A 002B     	RTE     				;
000F4C 0009     	NOP     				;

L0600094E:
000F4E 9001     	MOV.W   	@(#002,PC),R0	;
000F50 400E     	LDC     	R0,SR			;SH2.SR = 0x000000F0;
000F52 8BFE     	BF      	L06000952		;
000F54 00F0
000F56 0009
000F58 06000348
000F5C 25FE00A0
000F60 06000980
000F64 06000A00
000F68 06000900
000F6C CBC1
000F6E 24A0
000F70 0E01
000F72 2B74
000F74 F6BA
000F76 9E52
000F78 2D70
000F7A F8C9
000F7C B3D1
000F7E ECE0
000F80 A6F2
000F82 E6D6
000F84 8A8F
000F86 2EE1
000F88 6E4E
000F8A 98F2
000F8C BCFB
000F8E 326E
000F90 05CC
000F92 DDF5
000F94 8F9E
000F96 4D1E
000F98 0635
000F9A 4838
000F9C 117F
000F9E B40A
000FA0 26D1
000FA2 4593
000FA4 6427
000FA6 53CA
000FA8 C567
000FAA B75D
000FAC 839D
000FAE 2874
000FB0 EE3F
000FB2 0A6F
000FB4 8E6A
000FB6 15A3
000FB8 E422
000FBA CF20
000FBC 8D95
000FBE 3E6D
000FC0 2858
000FC2 D148
000FC4 BCA7
000FC6 DD6A
000FC8 02A8
000FCA B040
000FCC 51A7
000FCE 9CB3
000FD0 895A
000FD2 F6E0
000FD4 C51E
000FD6 6DDF
000FD8 2937
000FDA B37F
000FDC 9A13
000FDE E207
000FE0 AD87
000FE2 8FF6
000FE4 A60F
000FE6 01C2
000FE8 C811
000FEA 699C
000FEC D919
000FEE A529
000FF0 191D
000FF2 6949
000FF4 85BA
000FF6 4BD3
000FF8 B774
000FFA 9B56
000FFC 28F9
000FFE 74D9
001000 385E
001002 079B
001004 B25F
001006 76D3
001008 37A2
00100A 496F
00100C 4BF3
00100E D7D8
001010 5F89
001012 A7AB
001014 A23E
001016 2580
001018 F0DA
00101A ACA6
00101C AC48
00101E 4CE4
001020 CADD
001022 3E38
001024 F397
001026 729B
001028 F35B
00102A 35BB
00102C 5C36
00102E 4ABE
001030 9E9C
001032 7804
001034 6CAA
001036 F0E4
001038 B767
00103A 8D6D
00103C 15FE
00103E 4026
001040 E704
001042 B9CE
001044 FBB7
001046 AB1B
001048 1D3C
00104A 947E
00104C 3BE0
00104E 93DC
001050 9857
001052 2055
001054 B6FF
001056 2401
001058 6D1C
00105A 63AD
00105C D81C
00105E A4A0
001060 8ED3
001062 805B
001064 DCC0
001066 5654
001068 5745
00106A 4BB9
00106C 9CF2
00106E C933
001070 8EBA
001072 669F
001074 D33B
001076 B4D5
001078 F3F9
00107A D564
00107C E4A2
00107E 5053

L06000A80:							;u32 int_mask_tbl[32]
	dc.l	0x00F0FFFF
	dc.l	0x00E0FFFE     	
	dc.l	0x00D0FFFC     	
	dc.l	0x00C0FFF8     	
	dc.l	0x00B0FFF0     	
	dc.l	0x00A0FFE0     	
	dc.l	0x0090FFC0     	
	dc.l	0x0080FF80     	
	dc.l	0x0080FF80     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	
	dc.l	0x0070FE00     	

	.org 0x00001100
L001100:							;copied to 0x06001100-0x060017FF
	dc.b	"S2TM"					;copied to 0x060002C0-0x060002DF
	dc.l 	0x06001120
	dc.l 	0x00001A3C
	dc.l 	0x00001912
	dc.l 	0x000026A8
	dc.l 	0x000018FE
	dc.l 	0x0000284A
	dc.l 	0x00001DA0

L06001120:
L001120:
001120 D197     	MOV.L   	@(#25C,PC),R1	;
001122 D381     	MOV.L   	@(#204,PC),R3	;
001124 6012     	MOV.L   	@R1,R0		;
001126 8800     	CMP/EQ  	#00,R0		;
001128 8B01     	BF      	L00112E		;if (*(u32*)0x0600024C == 0) 
00112A 430B     	JSR     	@R3			;  smpc_send_intback();
00112C 0009     	NOP     				;
L00112E:
00112E D17F     	MOV.L   	@(#1FC,PC),R1	;
001130 244A     	XOR     	R4,R4			;
001132 6011     	MOV.W   	@R1,R0		;
001134 266A     	XOR     	R6,R6			;
001136 C901     	AND     	#01,R0		;
001138 4018     	SHLL8   	R0			;
00113A 4008     	SHLL2   	R0			;
00113C 4000     	SHLL    	R0			;
00113E 260B     	OR      	R0,R6			;
001140 D183     	MOV.L   	@(#20C,PC),R1	;
001142 E332     	MOV     	#32,R3		;
001144 D583     	MOV.L   	@(#20C,PC),R5	;
001146 331C     	ADD     	R1,R3			;
001148 D784     	MOV.L   	@(#210,PC),R7	;
00114A E001     	MOV     	#01,R0		;
00114C 2700     	MOV.B   	R0,@R7		;SMPC.SF = 0x01;
00114E E001     	MOV     	#01,R0		;
001150 2100     	MOV.B   	R0,@R1		;SMPC.IREG0 = 0x01;
001152 E002     	MOV     	#02,R0		;
001154 8012     	MOV.B   	R0,@(#02,R1)	;SMPC.IREG1 = 0x02;
001156 E0F0     	MOV     	#F0,R0		;
001158 8014     	MOV.B   	R0,@(#04,R1)	;SMPC.IREG2 = 0xF0;
00115A E010     	MOV     	#10,R0		;
00115C 2500     	MOV.B   	R0,@R5		;SMPC.COMREG = 0x10;
L00115E:
00115E E446     	MOV     	#46,R4		;
001160 4410     	DT      	R4			;do {
001162 8BFD     	BF      	L001160		;  for (int i=0; i<70; i++);
001164 6070     	MOV.B   	@R7,R0		;
001166 C801     	TST     	#01,R0		;
001168 8BF9     	BF      	L00115E		;} while (SMPC.SF & 0x01 != 0);
00116A 6330     	MOV.B   	@R3,R3		;
00116C 200A     	XOR     	R0,R0			;
00116E 0009     	NOP     				;
001170 E404     	MOV     	#04,R4		;
L001172:
001172 4321     	SHAR    	R3			;
001174 4024     	ROTCL   	R0			;
001176 4410     	DT      	R4			;
001178 8BFB     	BF      	L001172		;
00117A 4018     	SHLL8   	R0			;
00117C D57C     	MOV.L   	@(#1F0,PC),R5	;
00117E 4008     	SHLL2   	R0			;
001180 D37C     	MOV.L   	@(#1F0,PC),R3	;
001182 4008     	SHLL2   	R0			;
001184 D47C     	MOV.L   	@(#1F0,PC),R4	;
001186 206B     	OR      	R6,R0			;
001188 600D     	EXTU.W   	R0,R0			;region_setting = ((SMPC.OREG0 & 0x0F)<<12) | 
00118A 2302     	MOV.L   	R0,@R3		;                 ((VDP2.TVSTAT & 0x0001)<<11);
00118C 2542     	MOV.L   	R4,@R5		;*(u32*)0x06000240 = "2RDY";
00118E E320     	MOV     	#20,R3		;
001190 331C     	ADD     	R1,R3			;
001192 6030     	MOV.B   	@R3,R0		;
001194 D182     	MOV.L   	@(#208,PC),R1	;
001196 C880     	TST     	#80,R0		;
001198 8F01     	BF/S    	L00119E		;
00119A 200A     	XOR     	R0,R0			;
00119C E022     	MOV     	#22,R0		;
L00119E:
00119E 2102     	MOV.L   	R0,@R1		;*(u32*)0x0600022C = SMPC.OREG0 & 0x80 == 0 ? 0x22 : 0x00;
0011A0 D181     	MOV.L   	@(#204,PC),R1	;
0011A2 0029     	MOVT    	R0			;
0011A4 2102     	MOV.L   	R0,@R1		;*(u32*)0x06000224 = T;
0011A6 D171     	MOV.L   	@(#1C4,PC),R1	;
0011A8 D06F     	MOV.L   	@(#1BC,PC),R0	;
0011AA B0B4     	BRS     	L001316		;
0011AC 2102     	MOV.L   	R0,@R1		;*(u32*)0x0600032C = scu_init;//L001800
0011AE D061     	MOV.L   	@(#184,PC),R0	;
0011B0 D161     	MOV.L   	@(#184,PC),R1	;
0011B2 D363     	MOV.L   	@(#18C,PC),R3	;
0011B4 2012     	MOV.L   	R1,@R0		;*(u32*)0x06000268 = load_run_L040000;
0011B6 D161     	MOV.L   	@(#184,PC),R1	;
0011B8 1038     	MOV.L   	R3,@(#20,R0)	;*(u32*)0x06000288 = 0x000018A8;
0011BA D562     	MOV.L   	@(#188,PC),R5	;
0011BC 1011     	MOV.L   	R1,@(#4,R0)		;*(u32*)0x0600026C = 0x0000186C;
0011BE D362     	MOV.L   	@(#188,PC),R3	;
0011C0 1059     	MOV.L   	R5,@(#24,R0)	;*(u32*)0x0600028C = 0x00001874;
0011C2 D162     	MOV.L   	@(#188,PC),R1	;
0011C4 103D     	MOV.L   	R3,@(#34,R0)	;*(u32*)0x0600029C = 0x00001904;
0011C6 1017     	MOV.L   	R1,@(#1C,R0)	;*(u32*)0x06000284 = 0x00001C40;
0011C8 D16D     	MOV.L   	@(#1B4,PC),R1	;
0011CA D56F     	MOV.L   	@(#1BC,PC),R5	;
0011CC 6012     	MOV.L   	@R1,R0		;
0011CE 8800     	CMP/EQ  	#00,R0		;
0011D0 8B02     	BF      	L0011D8		;if (*(u32*)0x0600024C == 0)
0011D2 450B     	JSR     	@R5			;  L001CE8();
0011D4 2F06     	MOV.L   	R0,@-R15		;
0011D6 60F6     	MOV.L   	@R15+,R0		;
L0011D8:
0011D8 D46D     	MOV.L   	@(#1B4,PC),R4	;
0011DA 3400     	CMP/EQ 	R0,R4			;
0011DC 8907     	BT      	L0011EE		;if (*(u32*)0x0600024C != "HCGG")
0011DE B0E9     	BRS     	L0013B4		;  vdp1_init();
0011E0 0009     	NOP     				;
0011E2 D364     	MOV.L   	@(#190,PC),R3	;
0011E4 6032     	MOV.L   	@R3,R0		;bool pal = region_setting & 0x0800 == 0x0800;
0011E6 4019     	SHLR8   	R0			;
0011E8 4008     	SHLL2   	R0			;
0011EA B107     	BRS     	L0013FC		;  vdp2_init(pal);
0011EC C920     	AND     	#20,R0		;}
L0011EE:
0011EE 200A     	XOR     	R0,R0			;
0011F0 400E     	LDC     	R0,SR			;SH2.SR = 0x00000000;
0011F2 D359     	MOV.L   	@(#164,PC),R3	;
L0011F4:
0011F4 6030     	MOV.B   	@R3,R0		;while (SMPC.SR & 0x10 != 0) {
0011F6 C810     	TST     	#10,R0		;
0011F8 8903     	BT      	L001202		;
0011FA E046     	MOV     	#46,R0		;
0011FC 4010     	DT      	R0			;
0011FE 8BFD     	BF      	L0011FC		;  for (int i=0; i<70; i++);
001200 89F8     	BT      	L0011F4		;}
L001202:
001202 D356     	MOV.L   	@(#158,PC),R3	;
001204 D553     	MOV.L   	@(#14C,PC),R5	;
001206 E001     	MOV     	#01,R0		;
001208 2300     	MOV.B   	R0,@R3		;SMPC.SF = 0x01;
00120A E019     	MOV     	#19,R0		;
00120C 2500     	MOV.B   	R0,@R5		;SMPC.COMREG = 0x19; //RESENAB command
L00120E:
00120E E046     	MOV     	#46,R0		;do {
001210 4010     	DT      	R0			;
001212 8BFD     	BF      	L001210		;  for (int i=0; i<70; i++);
001214 6030     	MOV.B   	@R3,R0		;
001216 C801     	TST     	#01,R0		;
001218 8BF9     	BF      	L00120E		;} while (SMPC.SF & 0x01 != 0); //SMPC end command
00121A D451     	MOV.L   	@(#144,PC),R4	;
00121C E000     	MOV     	#00,R0		;
00121E 2400     	MOV.B   	R0,@R4		;SMPC.DDR1 = 0x00;
001220 8042     	MOV.B   	R0,@(#02,R4)	;SMPC.DDR2 = 0x00;
001222 D562     	MOV.L   	@(#188,PC),R5	;
001224 8044     	MOV.B   	R0,@(#04,R4)	;SMPC.IOSEL = 0x00;
001226 D362     	MOV.L   	@(#188,PC),R3	;
001228 8046     	MOV.B   	R0,@(#06,R4)	;SMPC.EXLE = 0x00;
00122A 6030     	MOV.B   	@R3,R0		;
00122C C9E0     	AND     	#E0,R0		;
00122E 600E     	EXTS.B   	R0,R0			;
001230 88C0     	CMP/EQ  	#C0,R0		;
001232 0029     	MOVT    	R0			;*(u32*)0x06000228 = 0x00000000;
001234 8F1F     	BF/S    	L001276		;if (*(u8*)0x24FFFFFF & 0xE0 == 0xC0) {
001236 2502     	MOV.L   	R0,@R5		;  *(u32*)0x06000228 = 0x00000001;
001238 D15B     	MOV.L   	@(#16C,PC),R1	;
00123A 6012     	MOV.L   	@R1,R0		;
00123C 2008     	TST     	R0,R0			;
00123E 891A     	BT      	L001276		;  if (*(u32*)0x06000224 != 0) {
001240 200A     	XOR     	R0,R0			;
001242 D746     	MOV.L   	@(#118,PC),R7	;
001244 E401     	MOV     	#01,R4		;
001246 2740     	MOV.B   	R4,@R7		;
001248 D34A     	MOV.L   	@(#128,PC),R3	;
00124A 8054     	MOV.B   	R0,@(#04,R5)	;
00124C D540     	MOV.L   	@(#100,PC),R5	;
00124E 8052     	MOV.B   	R0,@(#02,R5)	;
001250 244A     	XOR     	R4,R4			;
001252 6032     	MOV.L   	@R3,R0		;
001254 2540     	MOV.B   	R4,@R5		;
001256 4019     	SHLR8   	R0			;
001258 600E     	EXTS.B   	R0,R0			;
00125A D13E     	MOV.L   	@(#0F8,PC),R1	;
00125C 8880     	CMP/EQ  	#80,R0		;
00125E 8F01     	BF/S    	#002			;
001260 200A     	XOR     	R0,R0			;
001262 E005     	MOV     	#05,R0		;
001264 8056     	MOV.B   	R0,@(#06,R5)	;
001266 E017     	MOV     	#17,R0		;
001268 2100     	MOV.B   	R0,@R1		;
00126A E446     	MOV     	#46,R4		;
00126C 4410     	DT      	R4			;
00126E 8BFD     	BF      	#1FA			;
001270 6070     	MOV.B   	@R7,R0		;
001272 C801     	TST     	#01,R0		;
001274 8BF9     	BF      	#1F2			;}}
L001276:
001276 D14B     	MOV.L   	@(#12C,PC),R1	;
001278 410B     	JSR     	@R1			;int ret = cdb_status_wait();//L001D2C
00127A 0009     	NOP     				;
00127C D54B     	MOV.L   	@(#12C,PC),R5	;
00127E D148     	MOV.L   	@(#120,PC),R1	;
001280 6452     	MOV.L   	@R5,R4		;
001282 6312     	MOV.L   	@R1,R3		;
001284 2448     	TST     	R4,R4			;
001286 8B04     	BF      	L001292		;
001288 2338     	TST     	R3,R3			;
00128A 8B04     	BF      	L001296		;
00128C 2008     	TST     	R0,R0			;
00128E 8D01     	BT/S    	L001296		;
001290 200A     	XOR     	R0,R0			;
L001292:							;if (*(u32*)0x06000228 != 0 ||
001292 E001     	MOV     	#01,R0		;   (*(u32*)0x0600022C == 0 && ret != 0))
001294 2102     	MOV.L   	R0,@R1		;  *(u32*)0x0600022C = 0x00000001;
L001296:
001296 D13A     	MOV.L   	@(#0E8,PC),R1	;
001298 D33A     	MOV.L   	@(#0E8,PC),R3	;
00129A 6012     	MOV.L   	@R1,R0		;
00129C D43C     	MOV.L   	@(#0F0,PC),R4	;
00129E 3300     	CMP/EQ 	R0,R3			;
0012A0 8936     	BT      	L001310		;if (*(u32*)0x0600024C == "HEMU") goto L001310;
0012A2 3400     	CMP/EQ 	R0,R4			;
0012A4 D13C     	MOV.L   	@(#0F0,PC),R1	;
0012A6 8934     	BT      	L001312		;if (*(u32*)0x0600024C == "HCGG") goto L001312;
0012A8 B18E     	BRS     	L0015C8		;scsp_init();
0012AA 0009     	NOP     				;
0012AC D134     	MOV.L   	@(#0D0,PC),R1	;
0012AE D333     	MOV.L   	@(#0CC,PC),R3	;
0012B0 6012     	MOV.L   	@R1,R0		;
0012B2 D121     	MOV.L   	@(#084,PC),R1	;
0012B4 D537     	MOV.L   	@(#0DC,PC),R5	;
0012B6 2312     	MOV.L   	R1,@R3		;*(u32*)0x06000254 = load_run_L040000();
0012B8 D339     	MOV.L   	@(#0E4,PC),R3	;
0012BA 3500     	CMP/EQ 	R0,R5			;
0012BC D53B     	MOV.L   	@(#0EC,PC),R5	;
0012BE 8928     	BT      	L001312		;if (*(u32*)0x0600024C == "HCDM") goto load_run_L040000();
0012C0 6452     	MOV.L   	@R5,R4		;
0012C2 6032     	MOV.L   	@R3,R0		;
0012C4 2448     	TST     	R4,R4			;
0012C6 8B05     	BF      	L0012D4		;
0012C8 8822     	CMP/EQ  	#22,R0		;if (*(u32*)0x06000228 == 0 && *(u32*)0x0600022C == 0x00000022)
0012CA 8922     	BT      	L001312		;  goto L001312;
0012CC 8801     	CMP/EQ  	#01,R0		;
0012CE 8901     	BT      	L0012D4		;
0012D0 2008     	TST     	R0,R0			;
0012D2 8B0D     	BF      	L0012F0		;
L0012D4:
0012D4 D12D     	MOV.L   	@(#0B4,PC),R1	;if (*(u32*)0x0600022C == 0x00000000 || *(u32*0x0600022C == 0x00000001) {
0012D6 410B     	JSR     	@R1			;  int ret = cart_check();
0012D8 0009     	NOP     				;
0012DA D530     	MOV.L   	@(#0C0,PC),R5	;
0012DC 2008     	TST     	R0,R0			;  *(u32*)0x06000290 = 0x00000003;
0012DE 8F06     	BF/S    	L0012EE		;  if (ret == 0) {
0012E0 E403     	MOV     	#03,R4		;
0012E2 D12F     	MOV.L   	@(#0BC,PC),R1	;
0012E4 E008     	MOV     	#08,R0		;
0012E6 6312     	MOV.L   	@R1,R3		;
0012E8 203B     	OR      	R3,R0			;
0012EA 2102     	MOV.L   	R0,@R1		;    *(u32*)0x0600022C |= 0x00000008;
0012EC 244A     	XOR     	R4,R4			;    *(u32*)0x06000290 = 0x00000000;
L0012EE:							;  }
0012EE 2542     	MOV.L   	R4,@R5		;}
L0012F0:							;
0012F0 B21A     	BRS     	L001728		;
0012F2 0009     	NOP     				;
0012F4 B225     	BRS     	#044A			;
0012F6 0009     	NOP     				;
0012F8 D329     	MOV.L   	@(#0A4,PC),R3	;
0012FA 6032     	MOV.L   	@R3,R0		;
0012FC 4011     	CMP/PZ  	R0			;
0012FE 8B07     	BF      	L001310		;
001300 C802     	TST     	#02,R0		;
001302 8B0A     	BF      	L00131A		;
001304 C808     	TST     	#08,R0		;
001306 8B01     	BF      	L00130C		;
001308 2008     	TST     	R0,R0			;
00130A 8B01     	BF      	L001310		;
L00130C:
00130C B228     	BRS     	L001760		;
00130E 0009     	NOP     				;
L001310:
001310 D107     	MOV.L   	@(#01C,PC),R1	;
L001312:
001312 412B     	JMP     	@R1			;goto L06000690;
001314 0009     	NOP     				;
L001316:
001316 AFFC     	BRA     	L001312		;
001318 6112     	MOV.L   	@R1,R1		;
L00131A:
00131A D518     	MOV.L   	@(#060,PC),R5	;
00131C E002     	MOV     	#02,R0		;
00131E D106     	MOV.L   	@(#018,PC),R1	;
001320 2302     	MOV.L   	R0,@R3		;
001322 AFF5     	BRA     	L001310		;
001324 2512     	MOV.L   	R1,@R5		;
001326 0009
001328 0007D380
00132C 25F80004
001330 06000690
001334 06000268
001338 00001A18
00133C 0000186C
00133E 0000
001342 18A8
001344 00001874
001348 00001904
00134C 00001C40
001350 20100001
001354 2010001F
001358 20100061
00135C 20100063
001360 20100079
001364 0600
001366 2000
001368 00001800
00136C 0600032C
001370 06000240
001374 06000248
001378 32524459
00137C 06000254
001380 0600024C
001384 48454D55							;"HEMU"
001388 00001CE8
00138C 00001A62
001390 48434747							;"HCGG"
001394 4843444D							;"HCDM"
001398 0000
00139A 18E8
00139C 06000290
0013A0 0600022C
0013A4 00001D2C
0013A8 06000224
0013AC 06000228
0013B0 24FFFFFF

L0013B4:							;void vdp1_init()
0013B4 D10E     	MOV.L   	@(#038,PC),R1	;
0013B6 D30D     	MOV.L   	@(#034,PC),R3	;
0013B8 9014     	MOV.W   	@(#028,PC),R0	;
0013BA 411E     	LDC     	R1,GBR		;
0013BC 2301     	MOV.W   	R0,@R3		;VDP1.VRAM[0] = 0x8000;
0013BE E000     	MOV     	#00,R0		;
0013C0 C100     	MOV.W   	R0,@(#000,GBR)	;VDP1.TVHR = 0x0000;
0013C2 E000     	MOV     	#00,R0		;
0013C4 C101     	MOV.W   	R0,@(#002,GBR)	;VDP1.FBCR = 0x0000;
0013C6 E002     	MOV     	#02,R0		;
0013C8 C102     	MOV.W   	R0,@(#004,GBR)	;VDP1.PTMR = 0x0002;
0013CA E000     	MOV     	#00,R0		;
0013CC C103     	MOV.W   	R0,@(#006,GBR)	;VDP1.EWDR = 0x0000;
0013CE E000     	MOV     	#00,R0		;
0013D0 C104     	MOV.W   	R0,@(#008,GBR)	;VDP1.EWLR = 0x0000;
0013D2 D108     	MOV.L   	@(#020,PC),R1	;
0013D4 D308     	MOV.L   	@(#020,PC),R3	;
0013D6 6012     	MOV.L   	@R1,R0		;
0013D8 2038     	TST     	R3,R0			;
0013DA D003     	MOV.L   	@(#00C,PC),R0	;
0013DC 8900     	BT      	L0013E0		;
0013DE 4029     	SHLR16  	R0			;
L0013E0:
0013E0 000B     	RTS     				;VDP1.EWRR = region_setting & 0x0800 == 0 ? 0x50DF : 0x50FF;
0013E2 C105     	MOV.W   	R0,@(#00A,GBR)	;
0013E4 8000
0013E6 0009
0013E8 50FF50DF
0013EC 25C00000
0013F0 25D00000
0013F4 06000248
0013F8 00000800

L0013FC:							;void vdp2_init(bool pal)//pal-R0
0013FC D509     	MOV.L   	@(#024,PC),R5	;
0013FE 9414     	MOV.W   	@(#028,PC),R4	;
001400 D307     	MOV.L   	@(#01C,PC),R3	;
001402 240B     	OR      	R0,R4			;
001404 D005     	MOV.L   	@(#014,PC),R0	;
001406 2041     	MOV.W   	R4,@R0		;VDP2.TVMD = pal<<5;
001408 940E     	MOV.W   	@(#01C,PC),R4	;
L00140A:
00140A 6154     	MOV.B   	@R5+,R1		;for (int i=0; i<137; i++)
00140C 6635     	MOV.W   	@R3+,R6		;  VDP2.REGS[vdp2_init_reg_num[i]] = vdp2_init_reg_val[i];
00140E 611C     	EXTU.B   	R1,R1			;
001410 4100     	SHLL    	R1			;
001412 4410     	DT      	R4			;
001414 8FF9     	BF/S    	L00140A		;
001416 0165     	MOV.W   	R6,@(R0,R1)		;
001418 000B     	RTS     				;
00141A 0009     	NOP     				;
00141C 25F80000
001420 0600142C
001424 0600153E
001428 0089
00142A 0000
vdp2_init_reg_val:					;u16 vdp2_init_reg_val[137] = {
	dc.w	0x0000,0x0000,0x0000,0x0300		;
	dc.w	0x7744,0xFFFF,0xFF30,0xFFFF		;
	dc.w	0x6655,0xFFFF,0x21FF,0xFFFF		;
	dc.w	0x000F,0x0000,0x0000,0x1010		;
	dc.w	0x1022,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0808		;
	dc.w	0x0808,0x1818,0x1818,0x1C1C		;
	dc.w	0x1C1C,0x0C0C,0x0C0C,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0004		;
	dc.w	0x0000,0x0011,0x0000,0x0001		;
	dc.w	0x0000,0x0001,0x0000,0x0004		;
	dc.w	0x0000,0x0011,0x0000,0x0001		;
	dc.w	0x0000,0x0001,0x0000,0x0004		;
	dc.w	0x0011,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x013F,0x00DF,0x0000,0x0000		;
	dc.w	0x013F,0x00DF,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0020,0x0000		;
	dc.w	0x3210,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000,0x0000,0x0000,0x0000		;
	dc.w	0x0000					;};

vdp2_init_reg_num:					;u8 vdp2_init_reg_num[137] = {
	dc.b	0x01,0x03,0x06,0x07,0x08,0x09,0x0A,0x0B
	dc.b	0x0C,0x0D,0x0E,0x0F,0x10,0x11,0x13,0x14
	dc.b	0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C
	dc.b	0x1D,0x1E,0x1F,0x20,0x21,0x22,0x23,0x24
	dc.b	0x25,0x26,0x27,0x28,0x29,0x2A,0x2B,0x2C
	dc.b	0x2D,0x2E,0x2F,0x30,0x31,0x32,0x33,0x34
	dc.b	0x35,0x36,0x37,0x38,0x39,0x3A,0x3B,0x3C
	dc.b	0x3D,0x3E,0x3F,0x40,0x41,0x42,0x43,0x44
	dc.b	0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4D
	dc.b	0x4E,0x4F,0x50,0x51,0x52,0x53,0x54,0x55
	dc.b	0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D
	dc.b	0x5E,0x5F,0x60,0x61,0x62,0x63,0x64,0x65
	dc.b	0x66,0x67,0x68,0x69,0x6A,0x6B,0x6C,0x6D
	dc.b	0x6E,0x6F,0x70,0x71,0x72,0x73,0x74,0x75
	dc.b	0x76,0x77,0x78,0x79,0x7A,0x7B,0x7C,0x7D
	dc.b	0x7E,0x80,0x81,0x82,0x83,0x84,0x85,0x86
	dc.b	0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E
	dc.b	0x8F						;};

	dc.b	0x09

L0015C8:							;void scsp_init()
0015C8 4F22     	STS.L   	PR,@-R15		;
0015CA D175     	MOV.L   	@(#1D4,PC),R1	;
0015CC D375     	MOV.L   	@(#1D4,PC),R3	;
0015CE 7FFC     	ADD     	#FC,R15		;
0015D0 D475     	MOV.L   	@(#1D4,PC),R4	;
0015D2 65F3     	MOV     	R15,R5		;
0015D4 D676     	MOV.L   	@(#1D8,PC),R6	;
0015D6 410B     	JSR     	@R1			;data_unpack(scsp_program_packed,0x06010000,256*1024);//L002C5C
0015D8 2532     	MOV.L   	R3,@R5		;
0015DA 7F04     	ADD     	#04,R15		;
0015DC C72E     	MOVA    	@(#B8,PC),R0	;
0015DE D72C     	MOV.L   	@(#0B0,PC),R7	;
0015E0 E107     	MOV     	#07,R1		;SMPC.COMREG = 0x07;
0015E2 B04E     	BRS     	L001682		;delay_5000();
0015E4 2710     	MOV.B   	R1,@R7		; 
0015E6 D52B     	MOV.L   	@(#0AC,PC),R5	;
0015E8 E102     	MOV     	#02,R1		;SMPC.CR0 = 0x02;
0015EA B029     	BRS     	L001640		;mem_clear_verify(scsp_ram_init_tbl);
0015EC 2510     	MOV.B   	R1,@R5		;
0015EE C733     	MOVA    	@(#CC,PC),R0	;
0015F0 B035     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[0*3]);
0015F2 0009     	NOP     				;
0015F4 B033     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[1*3]);
0015F6 0009     	NOP     				;
0015F8 E106     	MOV     	#06,R1		;
0015FA B042     	BRS     	L001682		;06->COMREG (SNDON), pause 5000
0015FC 2710     	MOV.B   	R1,@R7		;
0015FE D528     	MOV.L   	@(#0A0,PC),R5	;
001600 D12B     	MOV.L   	@(#0AC,PC),R1	;
001602 B02C     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[2*3]);
001604 2512     	MOV.L   	R1,@R5		;*(u32*)(SCSP.RAM + 0x00700) = 0x08000000;
001606 B02A     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[3*3]);
001608 0009     	NOP     				;
00160A B028     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[4*3]);
00160C 0009     	NOP     				;
00160E B026     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[5*3]);
001610 0009     	NOP     				;
001612 B024     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[6*3]);
001614 0009     	NOP     				;
001616 B022     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[7*3]);
001618 0009     	NOP     				;
00161A B020     	BRS     	L00165E		;mem_copy_verify(scsp_ram_load_tbl[8*3]);
00161C 0009     	NOP     				;
00161E D521     	MOV.L   	@(#084,PC),R5	;
001620 E080     	MOV     	#80,R0		;
001622 E307     	MOV     	#07,R3		;
L001624:
001624 2500     	MOV.B   	R0,@R5		;for (int i=0; i<7; i++)
001626 4310     	DT      	R3			;  *(u8*)(SCSP.RAM + 0x00504 + i*8) = 0x80;
001628 8FFC     	BF/S    	L001624		;
00162A 7508     	ADD     	#08,R5		;
00162C D51C     	MOV.L   	@(#070,PC),R5	;
00162E D021     	MOV.L   	@(#084,PC),R0	;*(u32*)(SCSP.RAM + 0x00710) = 0x8000E0E0;
001630 B025     	BRS     	L00167E		;delay_8();
001632 1504     	MOV.L   	R0,@(#10,R5)	;
001634 D020     	MOV.L   	@(#080,PC),R0	;*(u32*)(SCSP.RAM + 0x00720) = 0x82000000;
001636 B022     	BRS     	L00167E		;delay_8();
001638 1508     	MOV.L   	R0,@(#20,R5)	;
00163A 4F26     	LDS.L   	@R15+,PR		;
00163C 000B     	RTS     				;
00163E 0009     	NOP     				;

L001640:							;void mem_clear_verify(u32* param)//param-R0
001640 6606     	MOV.L   	@R0+,R6		;u32 len = param[0];
001642 244A     	XOR     	R4,R4			;00000000->val
001644 6306     	MOV.L   	@R0+,R3		;u32* dst = param[1];
L001646:
001646 2342     	MOV.L   	R4,@R3		;for (int i=0; i<len; i++) {
001648 E006     	MOV     	#06,R0		;  do {
L00164A:							;    *dst = 0;
00164A 4010     	DT      	R0			;    for (int j=0; j<6; j++);
00164C 8BFD     	BF      	L00164A		;
00164E 6232     	MOV.L   	@R3,R2		;
001650 3420     	CMP/EQ 	R2,R4			;
001652 8BF8     	BF      	L001646		;  } while (*dst != 0);
001654 4610     	DT      	R6			;
001656 8FF6     	BF/S    	L001646		;  dst++;
001658 7304     	ADD     	#04,R3		;}
00165A 000B     	RTS     				;
00165C 0009     	NOP     				;

L00165E:							;void mem_copy_verify(u32* param)//param-R0
00165E 6606     	MOV.L   	@R0+,R6		;u32 len = param[0];
001660 6306     	MOV.L   	@R0+,R3		;u32* dst = param[1];
001662 6106     	MOV.L   	@R0+,R1		;u32* src = param[2];
L001664:
001664 6416     	MOV.L   	@R1+,R4		;@src->val, src+=4
L001666:
001666 2342     	MOV.L   	R4,@R3		;for (int i=0; i<len; i++) {
001668 E20A     	MOV     	#0A,R2		;  do {
L00166A:							;    *dst = *src;
00166A 4210     	DT      	R2			;    for (int j=0; j<10; j++);
00166C 8BFD     	BF      	L00166A		;
00166E 6232     	MOV.L   	@R3,R2		;
001670 3420     	CMP/EQ 	R2,R4			;
001672 8BF8     	BF      	L001666		;  } while (*dst != *src);
001674 4610     	DT      	R6			;
001676 8FF5     	BF/S    	L001664		;  src++;
001678 7304     	ADD     	#04,R3		;  dst++;
00167A 000B     	RTS     				;}
00167C 0009     	NOP     				;

L00167E:							;void delay_8()
00167E A001     	BRA     	L001684		;
001680 E308     	MOV     	#08,R3		;for (int i=0; i<8; i++);

L001682:							;void delay_5000()
001682 9303     	MOV.W   	@(#006,PC),R3	;
L001684:
001684 4310     	DT      	R3			;for (int i=0; i<5000; i++);
001686 8BFD     	BF      	L001682		;
001688 000B     	RTS     				;
00168A 0009     	NOP     				;
00168C 1388
00168E 0009
001690 2010001F
001694 25B00400

L06001698:							;u32 scsp_ram_init_tbl[2] = {
	dc.l	0x00002C00,0x25A00000			;0x00002C00,0x25A00000};

0016A0 25A00700
0016A4 25A00504
0016A8 0007
0016AA F000
0016AC 0000
0016AE 1000
0016B0 08000000
0016B4 8000E0E0
0016B8 82000000
L060016BC:							;u32 scsp_ram_load_tbl[9*3] = {
	dc.l	0x00001420,0x25A00000,0x06010000	;0x00001420,0x25A00000,0x06010000
	dc.l	0x00000020,0x25A0A000,0x06015080	;0x00000020,0x25A0A000,0x06015080
	dc.l	0x00001400,0x25A10000,0x06015100	;0x00001400,0x25A10000,0x06015100
	dc.l	0x000001C0,0x25A18000,0x0601A100	;0x000001C0,0x25A18000,0x0601A100
	dc.l	0x00000A00,0x25A1C000,0x0601A800	;0x00000A00,0x25A1C000,0x0601A800
	dc.l	0x00000150,0x25A20000,0x0601D000	;0x00000150,0x25A20000,0x0601D000
	dc.l	0x00000150,0x25A22000,0x0601D540	;0x00000150,0x25A22000,0x0601D540
	dc.l	0x00000150,0x25A24000,0x0601DA80	;0x00000150,0x25A24000,0x0601DA80
	dc.l	0x00000150,0x25A26000,0x0601DFC0	;0x00000150,0x25A26000,0x0601DFC0};

L001728:
001728 4F22     	STS.L   	PR,@-R15		;
00172A D11D     	MOV.L   	@(#074,PC),R1	;
00172C D31D     	MOV.L   	@(#074,PC),R3	;
00172E 7FFC     	ADD     	#FC,R15		;
001730 D41E     	MOV.L   	@(#078,PC),R4	;
001732 65F3     	MOV     	R15,R5		;
001734 D61E     	MOV.L   	@(#078,PC),R6	;
001736 410B     	JSR     	@R1			;data_unpack(L007000,0x06010000,256*1024);//L002C5C
001738 2532     	MOV.L   	R3,@R5		;
00173A 7F04     	ADD     	#04,R15		;
00173C D119     	MOV.L   	@(#064,PC),R1	;
00173E 412B     	JMP     	@R1			;(*(void*)0x06010000)();
001740 4F26     	LDS.L   	@R15+,PR		;


001742 D11C     	MOV.L   	@(#070,PC),R1	;
001744 072A     	STS     	PR, R7		;
001746 6512     	MOV.L   	@R1,R5		;
001748 C71C     	MOVA    	@(#70,PC),R0	;
00174A D41B     	MOV.L   	@(#06C,PC),R4	;
00174C 450B     	JSR     	@R5			;
00174E 0009     	NOP     				;
001750 450B     	JSR     	@R5			;
001752 0009     	NOP     				;
001754 472A     	LDS     	R7,PR			;
001756 000B     	RTS     				;
001758 0009     	NOP     				;
00175A 6112     	MOV.L   	@R1,R1		;
00175C 412B     	JMP     	@R1			;
00175E 0009     	NOP     				;

L001760:
001760 4F22     	STS.L   	PR,@-R15		;
001762 BE27     	BRS     	#1C4E			;
001764 0009     	NOP     				;
001766 D11E     	MOV.L   	@(#078,PC),R1	;
001768 B00C     	BRS     	#0018			;
00176A 0009     	NOP     				;
00176C D31D     	MOV.L   	@(#074,PC),R3	;
00176E 9414     	MOV.W   	@(#028,PC),R4	;
001770 9614     	MOV.W   	@(#028,PC),R6	;
001772 2341     	MOV.W   	R4,@R3		;
001774 4610     	DT      	R6			;
001776 8FFC     	BF/S    	#1F8			;
001778 7320     	ADD     	#20,R3		;
00177A B003     	BRS     	#0006			;
00177C 0009     	NOP     				;
00177E 4F26     	LDS.L   	@R15+,PR		;
001780 000B     	RTS     				;
001782 0009     	NOP     				;
001784 200A     	XOR     	R0,R0			;
001786 E446     	MOV     	#46,R4		;
001788 2102     	MOV.L   	R0,@R1		;
00178A 4410     	DT      	R4			;
00178C 8BFD     	BF      	#1FA			;
00178E 6012     	MOV.L   	@R1,R0		;
001790 C802     	TST     	#02,R0		;
001792 89F7     	BT      	#1EE			;
001794 000B     	RTS     				;
001796 0009     	NOP     				;
001798 0083
00179A 8000
00179C 3FFF
00179E 0009
0017A0 00002C5C
0017A4 06010000
0017A8 000192C0
0017AC 00007000
0017B0 00040000
0017B4 0600
0017B6 0234
0017B8 0000
0017BA 0000
0017BC 0003
0017BE 7000
0017C0 0601
0017C2 0000
0017C4 0000
0017C6 4000
0017C8 060F
0017CA 0000
0017CC 0600
0017CE 0300
0017D0 0600
0017D2 0344
0017D4 25A0
0017D6 0700
0017D8 8600
0017DA 0000
0017DC 8200
0017DE 0000
0017E0 25FE
0017E2 00A4
0017E4 25C0
0017E6 0020
0017E8 E759
0017EA 0F74
0017EC A2A1
0017EE 89C1
0017F0 5EE5
0017F2 02A1
0017F4 A9C2
0017F6 BFEB
0017F8 2BBC
0017FA 402E
0017FC EF81
0017FE 5071

L001800:							;void scu_init()
001800 D313     	MOV.L   	@(#04C,PC),R3	;
001802 0712     	STC     	GBR, R7		;//save GBR
001804 200A     	XOR     	R0,R0			;
001806 E607     	MOV     	#07,R6		;
001808 E503     	MOV     	#03,R5		;
00180A 431E     	LDC     	R3,GBR		;SCU.D0R = SCU.D1R = SCU.D2R = 0x00000000;
00180C E405     	MOV     	#05,R4		;SCU.D0W = SCU.D1W = SCU.D2W = 0x00000000;
00180E 2302     	MOV.L   	R0,@R3		;SCU.D0C = SCU.D1C = SCU.D2C = 0x00000000;
001810 4410     	DT      	R4			;SCU.D0AD = SCU.D1AD  = SCU.D2AD = 0x00000000;
001812 8FFC     	BF/S    	L00180E		;SCU.D0EN = SCU.D1EN  = SCU.D2EN = 0x00000000;
001814 7304     	ADD     	#04,R3		;SCU.D0MD = SCU.D1MD  = SCU.D2MD = 0x00000007;
001816 2362     	MOV.L   	R6,@R3		;
001818 4510     	DT      	R5			;
00181A 8FF7     	BF/S    	L00180C		;
00181C 730C     	ADD     	#0C,R3		;
00181E C218     	MOV.L   	R0,@(#060,GBR)	;SCU.DSTP = 0x00000000;
001820 C220     	MOV.L   	R0,@(#080,GBR)	;SCU.PPAF = 0x00000000;
001822 D00C     	MOV.L   	@(#030,PC),R0	;
001824 C22C     	MOV.L   	R0,@(#0B0,GBR)	;SCU.ASR0 = 0x1FF01FF0;
001826 D00C     	MOV.L   	@(#030,PC),R0	;
001828 C22D     	MOV.L   	R0,@(#0B4,GBR)	;SCU.ASR1 = 0x1FF01FF0;
00182A E01F     	MOV     	#1F,R0		;
00182C C22E     	MOV.L   	R0,@(#0B8,GBR)	;SCU.AREF = 0x00000001;
00182E E001     	MOV     	#01,R0		;
001830 C22A     	MOV.L   	R0,@(#0A8,GBR)	;SCU.AIACK = 0x00000001;
001832 900B     	MOV.W   	@(#016,PC),R0	;
001834 C224     	MOV.L   	R0,@(#090,GBR)	;SCU.T0C = 0x000003FF;
001836 900A     	MOV.W   	@(#014,PC),R0	;
001838 D108     	MOV.L   	@(#020,PC),R1	;
00183A C225     	MOV.L   	R0,@(#094,GBR)	;SCU.T1S = 0x000001FF;
00183C E000     	MOV     	#00,R0		;
00183E 6512     	MOV.L   	@R1,R5		;
001840 C226     	MOV.L   	R0,@(#098,GBR)	;SCU.T1MD = 0x00000000;
001842 5412     	MOV.L   	@(#08,R1),R4	;
001844 471E     	LDC     	R7,GBR		;//restore GBR
001846 D108     	MOV.L   	@(#020,PC),R1	;SH2.VBR = 0x06000000;
001848 452B     	JMP     	@R5			;(*scu_set_int_func)(scu_curr_int_mask);//L060007B0
00184A 412E     	LDC     	R1,VBR		;
00184C 03FF
00184E 01FF
001850 25FE0000
001854 1FF01FF0
001858 1FF01FF0
00185C 06000340
001860 0600     	
001862 0248
001864 257F
001866 FFFC     	
001868 06000000
00186A 0000     	
00186C D755     	MOV.L   	@(#154,PC),R7	;
00186E D153     	MOV.L   	@(#14C,PC),R1	;
001870 412B     	JMP     	@R1			;
001872 0009     	NOP     				;

L001874:							;
001874 4F22     	STS.L   	PR,@-R15		;
001876 B04C     	BRS     	L001912		;L001912();
001878 0009     	NOP     				;
00187A 2008     	TST     	R0,R0			;
00187C 8B03     	BF      	#006			;
00187E E001     	MOV     	#01,R0		;
001880 4F26     	LDS.L   	@R15+,PR		;
001882 000B     	RTS     				;
001884 0009     	NOP     				;
001886 B0D9     	BRS     	#01B2			;
001888 6603     	MOV     	R0,R6			;
00188A 2008     	TST     	R0,R0			;
00188C 8BF8     	BF      	#1F0			;
00188E D15C     	MOV.L   	@(#170,PC),R1	;
001890 C75C     	MOVA    	@(#170,PC),R0	;
001892 E505     	MOV     	#05,R5		;
001894 6415     	MOV.W   	@R1+,R4		;
001896 6605     	MOV.W   	@R0+,R6		;
001898 3640     	CMP/EQ 	R4,R6			;
00189A 8B03     	BF      	#006			;
00189C 4510     	DT      	R5			;
00189E 8BF9     	BF      	#1F2			;
0018A0 8DEE     	BT/S    	#1DC			;
0018A2 E0FE     	MOV     	#FE,R0		;
0018A4 8FEC     	BF/S    	#1D8			;
0018A6 200A     	XOR     	R0,R0			;

0018A8 D348     	MOV.L   	@(#120,PC),R3	;
0018AA E003     	MOV     	#03,R0		;
0018AC 4F22     	STS.L   	PR,@-R15		;
0018AE B030     	BRS     	L001912		;L001912();
0018B0 2302     	MOV.L   	R0,@R3		;
0018B2 2008     	TST     	R0,R0			;
0018B4 8B03     	BF      	L0018BE		;
0018B6 E001     	MOV     	#01,R0		;
L0018B8:
0018B8 4F26     	LDS.L   	@R15+,PR		;
0018BA 000B     	RTS     				;
0018BC 0009     	NOP     				;
L0018BE:
0018BE B0BD     	BRS     	L001A3C		;L001A3C();
0018C0 6603     	MOV     	R0,R6			;
0018C2 2008     	TST     	R0,R0			;
0018C4 8BF8     	BF      	L0018B8		;
0018C6 D33A     	MOV.L   	@(#0E8,PC),R3	;
0018C8 6332     	MOV.L   	@R3,R3		;
0018CA 2338     	TST     	R3,R3			;
0018CC 8901     	BT      	L0018D2		;if (*(u32*)0x060002B0 != 0)
0018CE B016     	BRS     	L0018FE		;  L0018FE();
0018D0 0009     	NOP     				;
0018D2 D742     	MOV.L   	@(#108,PC),R7	;
0018D4 C744     	MOVA    	@(#110,PC),R0	;
0018D6 6772     	MOV.L   	@R7,R7		;
0018D8 470B     	JSR     	@R7			;(*mem_copy_func)(&L0019E8[0*3]);
0018DA 0009     	NOP     				;
0018DC 470B     	JSR     	@R7			;(*mem_copy_func)(&L0019E8[1*3]);
0018DE 0009     	NOP     				;
0018E0 D739     	MOV.L   	@(#0E4,PC),R7	;
0018E2 D137     	MOV.L   	@(#0DC,PC),R1	;
0018E4 412B     	JMP     	@R1			;return restart(true,"HCGG");
0018E6 E501     	MOV     	#01,R5		;

0018E8 D339     	MOV.L   	@(#0E4,PC),R3	;
0018EA D53B     	MOV.L   	@(#0EC,PC),R5	;
0018EC D13D     	MOV.L   	@(#0F4,PC),R1	;
0018EE E003     	MOV     	#03,R0		;
0018F0 2532     	MOV.L   	R3,@R5		;
0018F2 D336     	MOV.L   	@(#0D8,PC),R3	;
0018F4 410B     	JSR     	@R1			;
0018F6 2302     	MOV.L   	R0,@R3		;
0018F8 D136     	MOV.L   	@(#0D8,PC),R1	;
0018FA 412B     	JMP     	@R1			;
0018FC 0009     	NOP     				;

L0018FE:							;
0018FE D12D     	MOV.L   	@(#0B4,PC),R1	;
001900 412B     	JMP     	@R1			;
001902 244A     	XOR     	R4,R4			;
001904 D12C     	MOV.L   	@(#0B0,PC),R1	;
001906 244A     	XOR     	R4,R4			;
001908 D335     	MOV.L   	@(#0D4,PC),R3	;
00190A 255A     	XOR     	R5,R5			;
00190C 2342     	MOV.L   	R4,@R3		;
00190E 412B     	JMP     	@R1			;
001910 1341     	MOV.L   	R4,@(#4,R3)		;

L001912:							;
001912 D126     	MOV.L   	@(#098,PC),R1	;
001914 D474     	MOV.L   	@(#1D0,PC),R4	;
001916 D332     	MOV.L   	@(#0C8,PC),R3	;
001918 4F22     	STS.L   	PR,@-R15		;
00191A 410B     	JSR     	@R1			;L00214A();
00191C 6532     	MOV.L   	@R3,R5		;
00191E 2008     	TST     	R0,R0			;
001920 8B04     	BF      	#008			;
001922 8900     	BT      	#000			;
001924 E0FF     	MOV     	#FF,R0		;
001926 4F26     	LDS.L   	@R15+,PR		;
001928 000B     	RTS     				;
00192A 0009     	NOP     				;
00192C D32C     	MOV.L   	@(#0B0,PC),R3	;
00192E 4015     	CMP/PL  	R0			;
001930 8BF8     	BF      	#1F0			;
001932 6432     	MOV.L   	@R3,R4		;
001934 D637     	MOV.L   	@(#0DC,PC),R6	;
001936 4418     	SHLL8   	R4			;
001938 4408     	SHLL2   	R4			;
00193A 4400     	SHLL    	R4			;
00193C 3648     	SUB     	R4,R6			;
00193E 3600     	CMP/EQ 	R0,R6			;
001940 8901     	BT      	#002			;
001942 E101     	MOV     	#01,R1		;
001944 1311     	MOV.L   	R1,@(#4,R3)		;
001946 6603     	MOV     	R0,R6			;
001948 9362     	MOV.W   	@(#0C4,PC),R3	;
00194A 3633     	CMP/GE 	R3,R6			;
00194C 8B1E     	BF      	#03C			;
00194E D166     	MOV.L   	@(#198,PC),R1	;
001950 C760     	MOVA    	@(#180,PC),R0	;
001952 E304     	MOV     	#04,R3		;
001954 6506     	MOV.L   	@R0+,R5		;
001956 6716     	MOV.L   	@R1+,R7		;
001958 3570     	CMP/EQ 	R7,R5			;
00195A 8B07     	BF      	#00E			;
00195C 4310     	DT      	R3			;
00195E 8BF9     	BF      	#1F2			;
001960 D163     	MOV.L   	@(#18C,PC),R1	;
001962 6312     	MOV.L   	@R1,R3		;
001964 3633     	CMP/GE 	R3,R6			;
001966 8B01     	BF      	#002			;
001968 AFDD     	BRA     	#1FBA			;
00196A 6063     	MOV     	R6,R0			;
00196C 9351     	MOV.W   	@(#0A2,PC),R3	;
00196E 3633     	CMP/GE 	R3,R6			;
001970 8B0C     	BF      	#018			;
001972 D15D     	MOV.L   	@(#174,PC),R1	;
001974 954B     	MOV.W   	@(#096,PC),R5	;
001976 6313     	MOV     	R1,R3			;
001978 335C     	ADD     	R5,R3			;
00197A 3658     	SUB     	R5,R6			;
00197C 6563     	MOV     	R6,R5			;
00197E 4509     	SHLR2   	R5			;
001980 6036     	MOV.L   	@R3+,R0		;
001982 4510     	DT      	R5			;
001984 2102     	MOV.L   	R0,@R1		;
001986 8FFB     	BF/S    	#1F6			;
001988 7104     	ADD     	#04,R1		;
00198A 89E0     	BT      	#1C0			;
00198C D314     	MOV.L   	@(#050,PC),R3	;
00198E 5031     	MOV.L   	@(#04,R3),R0	;
001990 2008     	TST     	R0,R0			;
001992 8DC8     	BT/S    	#190			;
001994 E0FF     	MOV     	#FF,R0		;
001996 6032     	MOV.L   	@R3,R0		;
001998 E50E     	MOV     	#0E,R5		;
00199A 7001     	ADD     	#01,R0		;
00199C 3057     	CMP/GT 	R5,R0			;
00199E 2302     	MOV.L   	R0,@R3		;
0019A0 8DC1     	BT/S    	#182			;
0019A2 E0FF     	MOV     	#FF,R0		;
0019A4 200A     	XOR     	R0,R0			;
0019A6 AFBE     	BRA     	#1F7C			;
0019A8 1301     	MOV.L   	R0,@(#4,R3)		;
0019AA 0009     	NOP     				;
0019AC 0000214A
0019B0 060002B0
0019B4 0000     	
0019B6 26A8
0019B8 0000     	
0019BA 214A
0019BC 0000     	
0019BE 0424
0019C0 00000444
0019C4 4843     	
0019C6 444D     	
0019C8 48434747
0019CC 0600     	
0019CE 0290     	
0019D0 0600     	
0019D2 2100
0019D4 0600     	
0019D6 0690     	
0019D8 0600     	
0019DA 0254
0019DC 06000238
0019E0 0600     	
0019E2 0278
0019E4 0600     	
0019E6 1760
L0019E8:
0019E8 00000008,06000D00,060002A0
0019F4 00000010,06000D20,06000380
001A00 0600
001A02 2020
001A04 5345
001A06 4741
001A08 504C
001A0A 4159
001A0C 4552
001A0E 0800
001A10 1000
001A12 1800
001A14 0000
001A16 8000

L001A18:							;void load_run_L040000()
001A18 D706     	MOV.L   	@(#018,PC),R7	;
001A1A C705     	MOVA    	@(#14,PC),R0	;
001A1C 6606     	MOV.L   	@R0+,R6		;
001A1E 6306     	MOV.L   	@R0+,R3		;
001A20 6106     	MOV.L   	@R0+,R1		;
L001A22:
001A22 6416     	MOV.L   	@R1+,R4		;for (in i=0; i<0x0400; i++)
001A24 4610     	DT      	R6			;  *(u32*)(06020000+i*4) = *(u32*)(L040000+i*4);
001A26 2342     	MOV.L   	R4,@R3		;
001A28 8FFB     	BF/S    	L001A22		;
001A2A 7304     	ADD     	#04,R3		;
001A2C 472B     	JMP     	@R7			;return L06020000(); //L040000
001A2E 0009     	NOP     				;
001A30 00000400
001A34 06020000
001A38 00040000

L001A3C:							;
001A3C D42D     	MOV.L   	@(#0B4,PC),R4	;
001A3E D52E     	MOV.L   	@(#0B8,PC),R5	;
001A40 3643     	CMP/GE 	R4,R6			;
001A42 8B0C     	BF      	#018			;
001A44 D32A     	MOV.L   	@(#0A8,PC),R3	;
001A46 3563     	CMP/GE 	R6,R5			;
001A48 8B09     	BF      	#012			;
001A4A D127     	MOV.L   	@(#09C,PC),R1	;
001A4C C721     	MOVA    	@(#84,PC),R0	;
001A4E E604     	MOV     	#04,R6		;
001A50 6506     	MOV.L   	@R0+,R5		;
001A52 6416     	MOV.L   	@R1+,R4		;
001A54 3540     	CMP/EQ 	R4,R5			;
001A56 8B02     	BF      	L001A5E		;
001A58 4610     	DT      	R6			;
001A5A 8BF9     	BF      	#1F2			;
001A5C 8927     	BT      	#04E			;
L001A5E:
001A5E 000B     	RTS     				;
001A60 E0FF     	MOV     	#FF,R0		;
L001A62:							;int cart_check()
001A62 D120     	MOV.L   	@(#080,PC),R1	;
001A64 C71B     	MOVA    	@(#6C,PC),R0	;
001A66 D320     	MOV.L   	@(#080,PC),R3	;
001A68 E604     	MOV     	#04,R6		;
L001A6A:
001A6A 6506     	MOV.L   	@R0+,R5		;for (int i=0; i<4*4; i++)
001A6C 6416     	MOV.L   	@R1+,R4		;
001A6E 3540     	CMP/EQ 	R4,R5			;
001A70 8BF5     	BF      	L001A5E		;  if (ABUS.CS0[i] != cart_id[i]) return -1;
001A72 2342     	MOV.L   	R4,@R3		;
001A74 4610     	DT      	R6			;
001A76 8FF8     	BF/S    	L001A6A		;}
001A78 7304     	ADD     	#04,R3		;
001A7A E63C     	MOV     	#3C,R6		;
001A7C 6416     	MOV.L   	@R1+,R4		;
001A7E 4610     	DT      	R6			;
001A80 2342     	MOV.L   	R4,@R3		;
001A82 8FFB     	BF/S    	#1F6			;
001A84 7304     	ADD     	#04,R3		;
001A86 D41D     	MOV.L   	@(#074,PC),R4	;
001A88 D719     	MOV.L   	@(#064,PC),R7	;
001A8A 2412     	MOV.L   	R1,@R4		;
001A8C D419     	MOV.L   	@(#064,PC),R4	;
001A8E 6672     	MOV.L   	@R7,R6		;
001A90 D519     	MOV.L   	@(#064,PC),R5	;
001A92 3643     	CMP/GE 	R4,R6			;
001A94 8BE3     	BF      	#1C6			;
001A96 3563     	CMP/GE 	R6,R5			;
001A98 8BE1     	BF      	#1C2			;
001A9A 7603     	ADD     	#03,R6		;
001A9C 4609     	SHLR2   	R6			;
001A9E 76C0     	ADD     	#C0,R6		;
001AA0 6416     	MOV.L   	@R1+,R4		;
001AA2 4610     	DT      	R6			;
001AA4 2342     	MOV.L   	R4,@R3		;
001AA6 8FFB     	BF/S    	#1F6			;
001AA8 7304     	ADD     	#04,R3		;
001AAA D414     	MOV.L   	@(#050,PC),R4	;
001AAC 2412     	MOV.L   	R1,@R4		;
001AAE D610     	MOV.L   	@(#040,PC),R6	;
001AB0 D30E     	MOV.L   	@(#038,PC),R3	;
001AB2 E108     	MOV     	#08,R1		;
001AB4 6466     	MOV.L   	@R6+,R4		;
001AB6 4110     	DT      	R1			;
001AB8 2342     	MOV.L   	R4,@R3		;
001ABA 8FFB     	BF/S    	#1F6			;
001ABC 7304     	ADD     	#04,R3		;
001ABE D60A     	MOV.L   	@(#028,PC),R6	;
001AC0 D30F     	MOV.L   	@(#03C,PC),R3	;
001AC2 E140     	MOV     	#40,R1		;
001AC4 6466     	MOV.L   	@R6+,R4		;
001AC6 4110     	DT      	R1			;
001AC8 2342     	MOV.L   	R4,@R3		;
001ACA 8FFB     	BF/S    	#1F6			;
001ACC 7304     	ADD     	#04,R3		;
001ACE A019     	BRA     	#0032			;
001AD0 0009     	NOP     				;
001AD2 0009     	NOP     				;
L001AD4:
	dc.b	"SEGA SEGASATURN "			;const u8 cart_id[16];

001AE4 22000000
001AE8 06002000
001AEC 0600
001AEE 02A0
001AF0 0600
001AF2 20E0
001AF4 0000
001AF6 1000
001AF8 0000
001AFA 8000
001AFC 0600
001AFE 0264
001B00 0600
001B02 0C00
001B04 D205     	MOV.L   	@(#014,PC),R2	;
001B06 D306     	MOV.L   	@(#018,PC),R3	;
001B08 D406     	MOV.L   	@(#018,PC),R4	;
001B0A 6026     	MOV.L   	@R2+,R0		;
001B0C 6136     	MOV.L   	@R3+,R1		;
001B0E 3010     	CMP/EQ 	R1,R0			;
001B10 8B02     	BF      	#004			;
001B12 4410     	DT      	R4			;
001B14 8BF9     	BF      	#1F2			;
001B16 8907     	BT      	#00E			;
001B18 000B     	RTS     				;
001B1A E0FC     	MOV     	#FC,R0		;
001B1C 2000
001B1E 6200
001B20 0600
001B22 2100
001B24 0000     	
001B26 0340     	
001B28 D00E     	MOV.L   	@(#038,PC),R0	;
001B2A D10C     	MOV.L   	@(#030,PC),R1	;
001B2C 6302     	MOV.L   	@R0,R3		;
001B2E 200A     	XOR     	R0,R0			;
001B30 D20B     	MOV.L   	@(#02C,PC),R2	;
001B32 4319     	SHLR8   	R3			;
001B34 4309     	SHLR2   	R3			;
001B36 4309     	SHLR2   	R3			;
001B38 4301     	SHLR    	R3			;
001B3A 4024     	ROTCL   	R0			;
001B3C 4301     	SHLR    	R3			;
001B3E 4024     	ROTCL   	R0			;
001B40 4301     	SHLR    	R3			;
001B42 4024     	ROTCL   	R0			;
001B44 4301     	SHLR    	R3			;
001B46 4024     	ROTCL   	R0			;
001B48 061C     	MOV.B   	@(R0,R1),R6		;
001B4A 4008     	SHLL2   	R0			;
001B4C 072E     	MOV.L   	@(R0,R2),R7		;
001B4E 2668     	TST     	R6,R6			;
001B50 8901     	BT      	#002			;
001B52 2778     	TST     	R7,R7			;
001B54 8B08     	BF      	#010			;
001B56 000B     	RTS     				;
001B58 E0F8     	MOV     	#F8,R0		;
001B5A 0009     	NOP     				;
001B5C 0000     	
001B5E 1BF0
001B60 0000     	
001B62 1C00
001B64 0600     	
001B66 0248
001B68 E400     	MOV     	#00,R4		;
001B6A E100     	MOV     	#00,R1		;
001B6C D310     	MOV.L   	@(#040,PC),R3	;
001B6E E20A     	MOV     	#0A,R2		;
001B70 6034     	MOV.B   	@R3+,R0		;
001B72 8820     	CMP/EQ  	#20,R0		;
001B74 8915     	BT      	#02A			;
001B76 884A     	CMP/EQ  	#4A,R0		;
001B78 890F     	BT      	#01E			;
001B7A 8854     	CMP/EQ  	#54,R0		;
001B7C 890D     	BT      	#01A			;
001B7E 8855     	CMP/EQ  	#55,R0		;
001B80 890B     	BT      	#016			;
001B82 8842     	CMP/EQ  	#42,R0		;
001B84 8909     	BT      	#012			;
001B86 884B     	CMP/EQ  	#4B,R0		;
001B88 8907     	BT      	#00E			;
001B8A 8841     	CMP/EQ  	#41,R0		;
001B8C 8905     	BT      	#00A			;
001B8E 8845     	CMP/EQ  	#45,R0		;
001B90 8903     	BT      	#006			;
001B92 884C     	CMP/EQ  	#4C,R0		;
001B94 8901     	BT      	#002			;
001B96 000B     	RTS     				;
001B98 E0F8     	MOV     	#F8,R0		;
001B9A 7401     	ADD     	#01,R4		;
001B9C 3060     	CMP/EQ 	R6,R0			;
001B9E 8B00     	BF      	#000			;
001BA0 E101     	MOV     	#01,R1		;
001BA2 4210     	DT      	R2			;
001BA4 8BE4     	BF      	#1C8			;
001BA6 2118     	TST     	R1,R1			;
001BA8 89F5     	BT      	#1EA			;
001BAA 461A     	LDS     	R6,MACL		;
001BAC A002     	BRA     	#0004			;
001BAE 6643     	MOV     	R4,R6			;
001BB0 0600
001BB2 2040
001BB4 D50B     	MOV.L   	@(#02C,PC),R5	;
001BB6 6473     	MOV     	R7,R4			;
001BB8 E308     	MOV     	#08,R3		;
001BBA E200     	MOV     	#00,R2		;
001BBC 6046     	MOV.L   	@R4+,R0		;
001BBE 6156     	MOV.L   	@R5+,R1		;
001BC0 3100     	CMP/EQ 	R0,R1			;
001BC2 8900     	BT      	#000			;
001BC4 E201     	MOV     	#01,R2		;
001BC6 4310     	DT      	R3			;
001BC8 8BF8     	BF      	#1F0			;
001BCA 2228     	TST     	R2,R2			;
001BCC 8903     	BT      	#006			;
001BCE 4610     	DT      	R6			;
001BD0 8BF1     	BF      	#1E2			;
001BD2 000B     	RTS     				;
001BD4 E0F8     	MOV     	#F8,R0		;
001BD6 D104     	MOV.L   	@(#010,PC),R1	;
001BD8 200A     	XOR     	R0,R0			;
001BDA D304     	MOV.L   	@(#010,PC),R3	;
001BDC 000B     	RTS     				;
001BDE 2312     	MOV.L   	R1,@R3		;
001BE0 0600     	
001BE2 0290     	
001BE4 0600     	
001BE6 2E00
001BE8 0600     	
001BEA 2100
001BEC 0600     	
001BEE 0254
001BF0 004A     	
001BF2 5400
001BF4 5542
001BF6 4B00
001BF8 0000     	
001BFA 4100
001BFC 454C     	
001BFE 0000     	
001C00 0000     	
001C02 0000     	
001C04 2000
001C06 6F00
001C08 2000
001C0A 6F20
001C0C 0000     	
001C0E 0000     	
001C10 2000
001C12 6F40
001C14 2000
001C16 6F60
001C18 2000
001C1A 6F80
001C1C 0000     	
001C1E 0000     	
001C20 0000     	
001C22 0000     	
001C24 0000     	
001C26 0000     	
001C28 2000
001C2A 6FA0
001C2C 0000     	
001C2E 0000     	
001C30 2000
001C32 6FC0
001C34 2000
001C36 6FE0
001C38 0000     	
001C3A 0000     	
001C3C 0000     	
001C3E 0000     	
001C40 D126     	MOV.L   	@(#098,PC),R1	;
001C42 C718     	MOVA    	@(#60,PC),R0	;
001C44 4F22     	STS.L   	PR,@-R15		;
001C46 E440     	MOV     	#40,R4		;
001C48 B021     	BRS     	#0042			;
001C4A 6503     	MOV     	R0,R5			;
001C4C 4F26     	LDS.L   	@R15+,PR		;
001C4E D31C     	MOV.L   	@(#070,PC),R3	;
001C50 E0FC     	MOV     	#FC,R0		;
001C52 D11A     	MOV.L   	@(#068,PC),R1	;
001C54 6332     	MOV.L   	@R3,R3		;
001C56 6112     	MOV.L   	@R1,R1		;
001C58 2338     	TST     	R3,R3			;
001C5A 891B     	BT      	#036			;
001C5C 2309     	AND     	R0,R3			;
001C5E 2118     	TST     	R1,R1			;
001C60 8B0A     	BF      	#014			;
001C62 D418     	MOV.L   	@(#060,PC),R4	;
001C64 D118     	MOV.L   	@(#060,PC),R1	;
001C66 6442     	MOV.L   	@R4,R4		;
001C68 6112     	MOV.L   	@R1,R1		;
001C6A 6016     	MOV.L   	@R1+,R0		;
001C6C 74FC     	ADD     	#FC,R4		;
001C6E 2302     	MOV.L   	R0,@R3		;
001C70 4415     	CMP/PL  	R4			;
001C72 8DFA     	BT/S    	#1F4			;
001C74 7304     	ADD     	#04,R3		;
001C76 8B12     	BF      	#024			;
001C78 D114     	MOV.L   	@(#050,PC),R1	;
001C7A 4F22     	STS.L   	PR,@-R15		;
001C7C B007     	BRS     	#000E			;
001C7E 6433     	MOV     	R3,R4			;
001C80 4011     	CMP/PZ  	R0			;
001C82 4F26     	LDS.L   	@R15+,PR		;
001C84 8908     	BT      	#010			;
001C86 D313     	MOV.L   	@(#04C,PC),R3	;
001C88 D111     	MOV.L   	@(#044,PC),R1	;
001C8A E0F8     	MOV     	#F8,R0		;
001C8C 2302     	MOV.L   	R0,@R3		;
001C8E 6112     	MOV.L   	@R1,R1		;
001C90 412B     	JMP     	@R1			;
001C92 0009     	NOP     				;
001C94 2118     	TST     	R1,R1			;
001C96 8902     	BT      	#004			;
001C98 D10F     	MOV.L   	@(#03C,PC),R1	;
001C9A 412B     	JMP     	@R1			;
001C9C 244A     	XOR     	R4,R4			;
001C9E 000B     	RTS     				;
001CA0 0009     	NOP     				;
001CA2 0009     	NOP     				;
001CA4 D10E     	MOV.L   	@(#038,PC),R1	;
001CA6 4F22     	STS.L   	PR,@-R15		;
001CA8 410B     	JSR     	@R1			;
001CAA 0009     	NOP     				;
001CAC 4F26     	LDS.L   	@R15+,PR		;
001CAE D10D     	MOV.L   	@(#034,PC),R1	;
001CB0 6012     	MOV.L   	@R1,R0		;
001CB2 4011     	CMP/PZ  	R0			;
001CB4 8900     	BT      	#000			;
001CB6 200A     	XOR     	R0,R0			;
001CB8 000B     	RTS     				;
001CBA 2102     	MOV.L   	R0,@R1		;
001CBC 0600
001CBE 0290
001CC0 0600
001CC2 02B0
001CC4 0600
001CC6 02B4
001CC8 0600
001CCA 0264
001CCC 0600
001CCE 02D0
001CD0 0600
001CD2 0268
001CD4 0600
001CD6 022C
001CD8 0000
001CDA 1DA0
001CDC 0600
001CDE 0300
001CE0 0600
001CE2 22E4
001CE4 0600
001CE6 2D80

L001CE8:
001CE8 2FE6     	MOV.L   	R14,@-R15		;
001CEA 2FD6     	MOV.L   	R13,@-R15		;
001CEC 2FC6     	MOV.L   	R12,@-R15		;
001CEE 4F22     	STS.L   	PR,@-R15		;
001CF0 7FF8     	ADD     	#F8,R15		;
001CF2 DC1A     	MOV.L   	@(#068,PC),R12	;
001CF4 DE1A     	MOV.L   	@(#068,PC),R14	;
001CF6 ED00     	MOV     	#00,R13		;int i = 0;
L001CF8:							;while (1) {
001CF8 4C0B     	JSR     	@R12			;  int ret = cdb_check(); 
001CFA 0009     	NOP     				;
001CFC 2008     	TST     	R0,R0			;
001CFE 8901     	BT      	L001D04		;
001D00 A008     	BRA     	L001D14		;  if (!ret) break;
001D02 0009     	NOP     				;
L001D04:
001D04 62D3     	MOV     	R13,R2		;
001D06 32E7     	CMP/GT 	R14,R2		;
001D08 8F02     	BF/S    	L001D10		;
001D0A 7D01     	ADD     	#01,R13		;
001D0C A008     	BRA     	L001D20		;  if (i++ >= 200000) return 0;
001D0E E000     	MOV     	#00,R0		;
L001D10:
001D10 AFF2     	BRA     	L001CF8		;}
001D12 0009     	NOP     				;
L001D14:
001D14 D313     	MOV.L   	@(#04C,PC),R3	;
001D16 430B     	JSR     	@R3			;L002DD0();
001D18 64F3     	MOV     	R15,R4		;
001D1A 6403     	MOV     	R0,R4			;
001D1C 2448     	TST     	R4,R4			;
001D1E 0029     	MOVT    	R0			;
L001D20:
001D20 7F08     	ADD     	#08,R15		;
001D22 4F26     	LDS.L   	@R15+,PR		;
001D24 6CF6     	MOV.L   	@R15+,R12		;
001D26 6DF6     	MOV.L   	@R15+,R13		;
001D28 000B     	RTS     				;
001D2A 6EF6     	MOV.L   	@R15+,R14		;

L001D2C:							;int cdb_status_wait()
001D2C 2FE6     	MOV.L   	R14,@-R15		;
001D2E 2FD6     	MOV.L   	R13,@-R15		;
001D30 4F22     	STS.L   	PR,@-R15		;
001D32 7FF8     	ADD     	#F8,R15		;
001D34 A02B     	BRA     	L001D8E		;
001D36 EE00     	MOV     	#00,R14		;int cnt = 0;
L001D38:							;do {
001D38 65F3     	MOV     	R15,R5		;  u8 cd_status;
001D3A B6A8     	BRS     	L002A8E		;  int ret = cdb_get_status(0,&cd_status);
001D3C E400     	MOV     	#00,R4		;
001D3E 88FE     	CMP/EQ  	#FE,R0		;
001D40 8F08     	BF/S    	L001D54		;  if (ret == -2) {
001D42 6D03     	MOV     	R0,R13		;
001D44 60F2     	MOV.L   	@R15,R0		;
001D46 8806     	CMP/EQ  	#06,R0		;
001D48 8902     	BT      	L001D50		;
001D4A 60F2     	MOV.L   	@R15,R0		;
001D4C 880A     	CMP/EQ  	#0A,R0		;
001D4E 8B0B     	BF      	L001D68		;    if (cd_status == STAT_OPEN || cd_status != STAT_FATAL)
001D50 A021     	BRA     	L001D96		;      return 1;
001D52 E001     	MOV     	#01,R0		;  }
L001D54:
001D54 2DD8     	TST     	R13,R13		;
001D56 8907     	BT      	L001D68		;  else if (ret != 0)
001D58 A01D     	BRA     	L001D96		;    return 1;
001D5A E001     	MOV     	#01,R0		;
001D5C 00003F6E
001D60 00030D40
001D64 00002DD0
L001D68:
001D68 9338     	MOV.W   	@(#070,PC),R3	;
001D6A 1F31     	MOV.L   	R3,@(#4,R15)	;
001D6C D31C     	MOV.L   	@(#070,PC),R3	;
001D6E 430B     	JSR     	@R3			;  u16 hirq = cdb_read_hirq();
001D70 0009     	NOP     				;
001D72 600D     	EXTU.W   	R0,R0			;
001D74 52F1     	MOV.L   	@(#04,R15),R2	;
001D76 2029     	AND     	R2,R0			;
001D78 2008     	TST     	R0,R0			;
001D7A 0429     	MOVT    	R4			;
001D7C 74FF     	ADD     	#FF,R4		;
001D7E 644B     	NEG     	R4,R4			;
001D80 2448     	TST     	R4,R4			;
001D82 8904     	BT      	L001D8E		;  if (hirq & HIRQ_SCDQ != 0) {
001D84 D417     	MOV.L   	@(#05C,PC),R4	;
001D86 D318     	MOV.L   	@(#060,PC),R3	;
001D88 430B     	JSR     	@R3			;    cdb_ack_hirq(~HIRQ_SCDQ); //L003C38
001D8A 0009     	NOP     				;
001D8C 7E01     	ADD     	#01,R14		;    cnt++;
L001D8E:							;  }
001D8E E203     	MOV     	#03,R2		;
001D90 3E23     	CMP/GE 	R2,R14		;
001D92 8BD1     	BF      	L001D38		;} while (cnt < 3);
001D94 E000     	MOV     	#00,R0		;
L001D96:
001D96 7F08     	ADD     	#08,R15		;
001D98 4F26     	LDS.L   	@R15+,PR		;
001D9A 6DF6     	MOV.L   	@R15+,R13		;
001D9C 000B     	RTS     				;return 0;
001D9E 6EF6     	MOV.L   	@R15+,R14		;

001DA0 4F22     	STS.L   	PR,@-R15		;
001DA2 A010     	BRA     	#0020			;
001DA4 6043     	MOV     	R4,R0			;
001DA6 B0AC     	BRS     	#0158			;
001DA8 E401     	MOV     	#01,R4		;
001DAA A00A     	BRA     	#0014			;
001DAC 0009     	NOP     				;
001DAE B071     	BRS     	#00E2			;
001DB0 0009     	NOP     				;
001DB2 A006     	BRA     	#000C			;
001DB4 0009     	NOP     				;
001DB6 B1B9     	BRS     	#0372			;
001DB8 0009     	NOP     				;
001DBA A002     	BRA     	#0004			;
001DBC 0009     	NOP     				;
001DBE B015     	BRS     	#002A			;
001DC0 0009     	NOP     				;
001DC2 A008     	BRA     	#0010			;
001DC4 6403     	MOV     	R0,R4			;
001DC6 8801     	CMP/EQ  	#01,R0		;
001DC8 89ED     	BT      	#1DA			;
001DCA 8802     	CMP/EQ  	#02,R0		;
001DCC 89EF     	BT      	#1DE			;
001DCE 8803     	CMP/EQ  	#03,R0		;
001DD0 89F1     	BT      	#1E2			;
001DD2 AFF4     	BRA     	#1FE8			;
001DD4 0009     	NOP     				;
001DD6 4F26     	LDS.L   	@R15+,PR		;
001DD8 000B     	RTS     				;
001DDA 6043     	MOV     	R4,R0			;
001DDC 0400
001DDE B5D1
001DE0 00003C32
001DE4 0000FBFF
001DE8 00003C38
001DEC 2FE6     	MOV.L   	R14,@-R15		;
001DEE 4F22     	STS.L   	PR,@-R15		;
001DF0 B021     	BRS     	#0042			;
001DF2 0009     	NOP     				;
001DF4 6403     	MOV     	R0,R4			;
001DF6 2448     	TST     	R4,R4			;
001DF8 8903     	BT      	#006			;
001DFA 6043     	MOV     	R4,R0			;
001DFC 4F26     	LDS.L   	@R15+,PR		;
001DFE 000B     	RTS     				;
001E00 6EF6     	MOV.L   	@R15+,R14		;
001E02 E700     	MOV     	#00,R7		;
001E04 D314     	MOV.L   	@(#050,PC),R3	;
001E06 6673     	MOV     	R7,R6			;
001E08 6573     	MOV     	R7,R5			;
001E0A 430B     	JSR     	@R3			;
001E0C E401     	MOV     	#01,R4		;
001E0E 2008     	TST     	R0,R0			;
001E10 8903     	BT      	#006			;
001E12 E0F6     	MOV     	#F6,R0		;
001E14 4F26     	LDS.L   	@R15+,PR		;
001E16 000B     	RTS     				;
001E18 6EF6     	MOV.L   	@R15+,R14		;
001E1A D510     	MOV.L   	@(#040,PC),R5	;
001E1C B60B     	BRS     	#0C16			;
001E1E E440     	MOV     	#40,R4		;
001E20 6E03     	MOV     	R0,R14		;
001E22 2EE8     	TST     	R14,R14		;
001E24 8903     	BT      	#006			;
001E26 E0F5     	MOV     	#F5,R0		;
001E28 4F26     	LDS.L   	@R15+,PR		;
001E2A 000B     	RTS     				;
001E2C 6EF6     	MOV.L   	@R15+,R14		;
001E2E 60E3     	MOV     	R14,R0		;
001E30 4F26     	LDS.L   	@R15+,PR		;
001E32 000B     	RTS     				;
001E34 6EF6     	MOV.L   	@R15+,R14		;
001E36 2FE6     	MOV.L   	R14,@-R15		;
001E38 4F22     	STS.L   	PR,@-R15		;
001E3A 7FF8     	ADD     	#F8,R15		;
001E3C E300     	MOV     	#00,R3		;
001E3E 1F31     	MOV.L   	R3,@(#4,R15)	;
001E40 65F3     	MOV     	R15,R5		;
001E42 B624     	BRS     	#0C48			;
001E44 E400     	MOV     	#00,R4		;
001E46 6E03     	MOV     	R0,R14		;
001E48 2EE8     	TST     	R14,R14		;
001E4A 8909     	BT      	#012			;
001E4C 60E3     	MOV     	R14,R0		;
001E4E 7F08     	ADD     	#08,R15		;
001E50 4F26     	LDS.L   	@R15+,PR		;
001E52 000B     	RTS     				;
001E54 6EF6     	MOV.L   	@R15+,R14		;
001E56 2CAB
001E58 0000
001E5A 2ECE
001E5C 002C
001E5E 4020
001E60 60F2     	MOV.L   	@R15,R0		;
001E62 2008     	TST     	R0,R0			;
001E64 8901     	BT      	#002			;
001E66 A010     	BRA     	#0020			;
001E68 0009     	NOP     				;
001E6A 52F1     	MOV.L   	@(#04,R15),R2	;
001E6C 7201     	ADD     	#01,R2		;
001E6E 1F21     	MOV.L   	R2,@(#4,R15)	;
001E70 72FF     	ADD     	#FF,R2		;
001E72 D317     	MOV.L   	@(#05C,PC),R3	;
001E74 3237     	CMP/GT 	R3,R2			;
001E76 8B06     	BF      	#00C			;
001E78 B00C     	BRS     	#0018			;
001E7A 0009     	NOP     				;
001E7C E0F3     	MOV     	#F3,R0		;
001E7E 7F08     	ADD     	#08,R15		;
001E80 4F26     	LDS.L   	@R15+,PR		;
001E82 000B     	RTS     				;
001E84 6EF6     	MOV.L   	@R15+,R14		;
001E86 AFDB     	BRA     	#1FB6			;
001E88 0009     	NOP     				;
001E8A E000     	MOV     	#00,R0		;
001E8C 7F08     	ADD     	#08,R15		;
001E8E 4F26     	LDS.L   	@R15+,PR		;
001E90 000B     	RTS     				;
001E92 6EF6     	MOV.L   	@R15+,R14		;
001E94 2FE6     	MOV.L   	R14,@-R15		;
001E96 2FD6     	MOV.L   	R13,@-R15		;
001E98 4F22     	STS.L   	PR,@-R15		;
001E9A 7FFC     	ADD     	#FC,R15		;
001E9C D30D     	MOV.L   	@(#034,PC),R3	;
001E9E 430B     	JSR     	@R3			;
001EA0 0009     	NOP     				;
001EA2 6403     	MOV     	R0,R4			;
001EA4 2448     	TST     	R4,R4			;
001EA6 8901     	BT      	#002			;
001EA8 A026     	BRA     	#004C			;
001EAA E0F1     	MOV     	#F1,R0		;
001EAC A015     	BRA     	#002A			;
001EAE ED00     	MOV     	#00,R13		;
001EB0 65F3     	MOV     	R15,R5		;
001EB2 B5EC     	BRS     	#0BD8			;
001EB4 E400     	MOV     	#00,R4		;
001EB6 6E03     	MOV     	R0,R14		;
001EB8 60F2     	MOV.L   	@R15,R0		;
001EBA 2008     	TST     	R0,R0			;
001EBC 890C     	BT      	#018			;
001EBE 60E3     	MOV     	R14,R0		;
001EC0 88FE     	CMP/EQ  	#FE,R0		;
001EC2 8B01     	BF      	#002			;
001EC4 A001     	BRA     	#0002			;
001EC6 E000     	MOV     	#00,R0		;
001EC8 60E3     	MOV     	R14,R0		;
001ECA A015     	BRA     	#002A			;
001ECC 0009     	NOP     				;
001ECE C610
001ED0 0013     	
001ED2 D620
001ED4 0000     	
001ED6 2F7C
001ED8 7D01     	ADD     	#01,R13		;
001EDA D221     	MOV.L   	@(#084,PC),R2	;
001EDC 3D23     	CMP/GE 	R2,R13		;
001EDE 8BE7     	BF      	#1CE			;
001EE0 E7FF     	MOV     	#FF,R7		;
001EE2 D320     	MOV.L   	@(#080,PC),R3	;
001EE4 6673     	MOV     	R7,R6			;
001EE6 6573     	MOV     	R7,R5			;
001EE8 430B     	JSR     	@R3			;
001EEA 6473     	MOV     	R7,R4			;
001EEC 6403     	MOV     	R0,R4			;
001EEE 2448     	TST     	R4,R4			;
001EF0 8901     	BT      	#002			;
001EF2 A001     	BRA     	#0002			;
001EF4 E0F0     	MOV     	#F0,R0		;
001EF6 E000     	MOV     	#00,R0		;
001EF8 7F04     	ADD     	#04,R15		;
001EFA 4F26     	LDS.L   	@R15+,PR		;
001EFC 6DF6     	MOV.L   	@R15+,R13		;
001EFE 000B     	RTS     				;
001F00 6EF6     	MOV.L   	@R15+,R14		;
001F02 2FE6     	MOV.L   	R14,@-R15		;
001F04 2FD6     	MOV.L   	R13,@-R15		;
001F06 2FC6     	MOV.L   	R12,@-R15		;
001F08 2FB6     	MOV.L   	R11,@-R15		;
001F0A 4F22     	STS.L   	PR,@-R15		;
001F0C 7FFC     	ADD     	#FC,R15		;
001F0E DB16     	MOV.L   	@(#058,PC),R11	;
001F10 DC16     	MOV.L   	@(#058,PC),R12	;
001F12 9E24     	MOV.W   	@(#048,PC),R14	;
001F14 2448     	TST     	R4,R4			;
001F16 8914     	BT      	#028			;
001F18 65F3     	MOV     	R15,R5		;
001F1A B5B8     	BRS     	#0B70			;
001F1C E400     	MOV     	#00,R4		;
001F1E 6D03     	MOV     	R0,R13		;
001F20 2DD8     	TST     	R13,R13		;
001F22 8B09     	BF      	#012			;
001F24 E700     	MOV     	#00,R7		;
001F26 D30F     	MOV.L   	@(#03C,PC),R3	;
001F28 6673     	MOV     	R7,R6			;
001F2A 6573     	MOV     	R7,R5			;
001F2C 430B     	JSR     	@R3			;
001F2E 6473     	MOV     	R7,R4			;
001F30 2008     	TST     	R0,R0			;
001F32 8906     	BT      	#00C			;
001F34 A034     	BRA     	#0068			;
001F36 E0EC     	MOV     	#EC,R0		;
001F38 60D3     	MOV     	R13,R0		;
001F3A 88FE     	CMP/EQ  	#FE,R0		;
001F3C 8901     	BT      	#002			;
001F3E A02F     	BRA     	#005E			;
001F40 60D3     	MOV     	R13,R0		;
001F42 B034     	BRS     	#0068			;
001F44 E400     	MOV     	#00,R4		;
001F46 ED00     	MOV     	#00,R13		;
001F48 E500     	MOV     	#00,R5		;
001F4A 4B0B     	JSR     	@R11			;
001F4C 64E3     	MOV     	R14,R4		;
001F4E 6403     	MOV     	R0,R4			;
001F50 2448     	TST     	R4,R4			;
001F52 8B0F     	BF      	#01E			;
001F54 D506     	MOV.L   	@(#018,PC),R5	;
001F56 B56E     	BRS     	#0ADC			;
001F58 E440     	MOV     	#40,R4		;
001F5A A018     	BRA     	#0030			;
001F5C 6D03     	MOV     	R0,R13		;
001F5E 00FC
001F60 0001     	
001F62 5F90
001F64 0000     	
001F66 2ECE
001F68 0000     	
001F6A 351C
001F6C 000A
001F6E 1220
001F70 002C
001F72 4020
001F74 6043     	MOV     	R4,R0			;
001F76 88FF     	CMP/EQ  	#FF,R0		;
001F78 8901     	BT      	#002			;
001F7A A011     	BRA     	#0022			;
001F7C E0EB     	MOV     	#EB,R0		;
001F7E 63D3     	MOV     	R13,R3		;
001F80 33C7     	CMP/GT 	R12,R3		;
001F82 8F02     	BF/S    	#004			;
001F84 7D01     	ADD     	#01,R13		;
001F86 A00B     	BRA     	#0016			;
001F88 E0EA     	MOV     	#EA,R0		;
001F8A AFDD     	BRA     	#1FBA			;
001F8C 0009     	NOP     				;
001F8E 2DD8     	TST     	R13,R13		;
001F90 8901     	BT      	#002			;
001F92 A005     	BRA     	#000A			;
001F94 E0E9     	MOV     	#E9,R0		;
001F96 9421     	MOV.W   	@(#042,PC),R4	;
001F98 D311     	MOV.L   	@(#044,PC),R3	;
001F9A 430B     	JSR     	@R3			;
001F9C 0009     	NOP     				;
001F9E 60D3     	MOV     	R13,R0		;
001FA0 7F04     	ADD     	#04,R15		;
001FA2 4F26     	LDS.L   	@R15+,PR		;
001FA4 6BF6     	MOV.L   	@R15+,R11		;
001FA6 6CF6     	MOV.L   	@R15+,R12		;
001FA8 6DF6     	MOV.L   	@R15+,R13		;
001FAA 000B     	RTS     				;
001FAC 6EF6     	MOV.L   	@R15+,R14		;
001FAE 4F22     	STS.L   	PR,@-R15		;
001FB0 7FF0     	ADD     	#F0,R15		;
001FB2 D30C     	MOV.L   	@(#030,PC),R3	;
001FB4 430B     	JSR     	@R3			;
001FB6 1F43     	MOV.L   	R4,@(#C,R15)	;
001FB8 6403     	MOV     	R0,R4			;
001FBA 2448     	TST     	R4,R4			;
001FBC 8903     	BT      	#006			;
001FBE 7F10     	ADD     	#10,R15		;
001FC0 4F26     	LDS.L   	@R15+,PR		;
001FC2 000B     	RTS     				;
001FC4 E0E7     	MOV     	#E7,R0		;
001FC6 940A     	MOV.W   	@(#014,PC),R4	;
001FC8 D507     	MOV.L   	@(#01C,PC),R5	;
001FCA B534     	BRS     	#0A68			;
001FCC 0009     	NOP     				;
001FCE 2F02     	MOV.L   	R0,@R15		;
001FD0 2008     	TST     	R0,R0			;
001FD2 890B     	BT      	#016			;
001FD4 7F10     	ADD     	#10,R15		;
001FD6 4F26     	LDS.L   	@R15+,PR		;
001FD8 000B     	RTS     				;
001FDA E0E6     	MOV     	#E6,R0		;
001FDC 0BE1     	
001FDE 0200     	
001FE0 0000     	
001FE2 3C38
001FE4 0000     	
001FE6 3BEE
001FE8 002C
001FEA 4020
001FEC 953C     	MOV.W   	@(#078,PC),R5	;
001FEE B522     	BRS     	#0A44			;
001FF0 E402     	MOV     	#02,R4		;
001FF2 D420     	MOV.L   	@(#080,PC),R4	;
001FF4 D320     	MOV.L   	@(#080,PC),R3	;
001FF6 430B     	JSR     	@R3			;
001FF8 0009     	NOP     				;
001FFA 64F3     	MOV     	R15,R4		;
001FFC D31F     	MOV.L   	@(#07C,PC),R3	;
001FFE 430B     	JSR     	@R3			;ret = L002FFC();
002000 7408     	ADD     	#08,R4		;
002002 6403     	MOV     	R0,R4			;
002004 2448     	TST     	R4,R4			;
002006 8903     	BT      	L002010		;ret == 0
002008 7F10     	ADD     	#10,R15		;
00200A 4F26     	LDS.L   	@R15+,PR		;
00200C 000B     	RTS     				;
00200E E0E5     	MOV     	#E5,R0		;
L002010:
002010 952B     	MOV.W   	@(#056,PC),R5	;
002012 942B     	MOV.W   	@(#056,PC),R4	;
002014 B50F     	BRS     	L002A36		;L002A36();
002016 0009     	NOP     				;
002018 B036     	BRS     	#006C			;
00201A 54F3     	MOV.L   	@(#0C,R15),R4	;
00201C 6403     	MOV     	R0,R4			;
00201E 2448     	TST     	R4,R4			;
002020 8903     	BT      	#006			;
002022 7F10     	ADD     	#10,R15		;
002024 4F26     	LDS.L   	@R15+,PR		;
002026 000B     	RTS     				;
002028 6043     	MOV     	R4,R0			;
00202A 64F3     	MOV     	R15,R4		;
00202C D314     	MOV.L   	@(#050,PC),R3	;
00202E 430B     	JSR     	@R3			;
002030 7404     	ADD     	#04,R4		;
002032 6403     	MOV     	R0,R4			;
002034 2448     	TST     	R4,R4			;
002036 8903     	BT      	#006			;
002038 7F10     	ADD     	#10,R15		;
00203A 4F26     	LDS.L   	@R15+,PR		;
00203C 000B     	RTS     				;
00203E E0E4     	MOV     	#E4,R0		;
002040 53F1     	MOV.L   	@(#04,R15),R3	;
002042 9214     	MOV.W   	@(#028,PC),R2	;
002044 3320     	CMP/EQ 	R2,R3			;
002046 8B0A     	BF      	#014			;
002048 9412     	MOV.W   	@(#024,PC),R4	;
00204A D50E     	MOV.L   	@(#038,PC),R5	;
00204C B4F3     	BRS     	#09E6			;
00204E 0009     	NOP     				;
002050 2F02     	MOV.L   	R0,@R15		;
002052 2008     	TST     	R0,R0			;
002054 8903     	BT      	#006			;
002056 7F10     	ADD     	#10,R15		;
002058 4F26     	LDS.L   	@R15+,PR		;
00205A 000B     	RTS     				;
00205C E0E3     	MOV     	#E3,R0		;
00205E E000     	MOV     	#00,R0		;
002060 7F10     	ADD     	#10,R15		;
002062 4F26     	LDS.L   	@R15+,PR		;
002064 000B     	RTS     				;
002066 0009     	NOP     				;
002068 02BC
00206A 0FA0
00206C 0080
00206E 00FF
002070 0100
002072 094F
002074 0000
002076 FFFD
002078 0000
00207A 3C38
00207C 00002FFC
002080 0000
002082 3A1C
002084 002C
002086 4020
002088 4F22     	STS.L   	PR,@-R15		;
00208A 7FF4     	ADD     	#F4,R15		;
00208C 2F42     	MOV.L   	R4,@R15		;
00208E 64F3     	MOV     	R15,R4		;
002090 D31C     	MOV.L   	@(#070,PC),R3	;
002092 430B     	JSR     	@R3			;
002094 7404     	ADD     	#04,R4		;
002096 6403     	MOV     	R0,R4			;
002098 2448     	TST     	R4,R4			;
00209A 8903     	BT      	#006			;
00209C 7F0C     	ADD     	#0C,R15		;
00209E 4F26     	LDS.L   	@R15+,PR		;
0020A0 000B     	RTS     				;
0020A2 E0E2     	MOV     	#E2,R0		;
0020A4 A019     	BRA     	#0032			;
0020A6 60F2     	MOV.L   	@R15,R0		;
0020A8 60F3     	MOV     	R15,R0		;
0020AA 7004     	ADD     	#04,R0		;
0020AC 6000     	MOV.B   	@R0,R0		;
0020AE 600C     	EXTU.B   	R0,R0			;
0020B0 C802     	TST     	#02,R0		;
0020B2 8B16     	BF      	#02C			;
0020B4 7F0C     	ADD     	#0C,R15		;
0020B6 4F26     	LDS.L   	@R15+,PR		;
0020B8 000B     	RTS     				;
0020BA E0E1     	MOV     	#E1,R0		;
0020BC 62F3     	MOV     	R15,R2		;
0020BE 7204     	ADD     	#04,R2		;
0020C0 8422     	MOV.B   	@(#02,R2),R0	;
0020C2 6303     	MOV     	R0,R3			;
0020C4 633C     	EXTU.B   	R3,R3			;
0020C6 4315     	CMP/PL  	R3			;
0020C8 8903     	BT      	#006			;
0020CA 7F0C     	ADD     	#0C,R15		;
0020CC 4F26     	LDS.L   	@R15+,PR		;
0020CE 000B     	RTS     				;
0020D0 E0E0     	MOV     	#E0,R0		;
0020D2 7F0C     	ADD     	#0C,R15		;
0020D4 4F26     	LDS.L   	@R15+,PR		;
0020D6 000B     	RTS     				;
0020D8 E000     	MOV     	#00,R0		;
0020DA 8801     	CMP/EQ  	#01,R0		;
0020DC 89E4     	BT      	#1C8			;
0020DE 8802     	CMP/EQ  	#02,R0		;
0020E0 89EC     	BT      	#1D8			;
0020E2 62F3     	MOV     	R15,R2		;
0020E4 7204     	ADD     	#04,R2		;
0020E6 8422     	MOV.B   	@(#02,R2),R0	;
0020E8 6303     	MOV     	R0,R3			;
0020EA 633C     	EXTU.B   	R3,R3			;
0020EC 4315     	CMP/PL  	R3			;
0020EE 8B18     	BF      	#030			;
0020F0 D305     	MOV.L   	@(#014,PC),R3	;
0020F2 430B     	JSR     	@R3			;
0020F4 E400     	MOV     	#00,R4		;
0020F6 6403     	MOV     	R0,R4			;
0020F8 2448     	TST     	R4,R4			;
0020FA 8907     	BT      	#00E			;
0020FC 7F0C     	ADD     	#0C,R15		;
0020FE 4F26     	LDS.L   	@R15+,PR		;
002100 000B     	RTS     				;
002102 E0DF     	MOV     	#DF,R0		;
002104 0000     	
002106 2DD0
002108 0000     	
00210A 4120
00210C 942D     	MOV.W   	@(#05A,PC),R4	;
00210E D517     	MOV.L   	@(#05C,PC),R5	;
002110 B491     	BRS     	#0922			;
002112 0009     	NOP     				;
002114 2F02     	MOV.L   	R0,@R15		;
002116 2008     	TST     	R0,R0			;
002118 8903     	BT      	#006			;
00211A 7F0C     	ADD     	#0C,R15		;
00211C 4F26     	LDS.L   	@R15+,PR		;
00211E 000B     	RTS     				;
002120 E0DE     	MOV     	#DE,R0		;
002122 E000     	MOV     	#00,R0		;
002124 7F0C     	ADD     	#0C,R15		;
002126 4F26     	LDS.L   	@R15+,PR		;
002128 000B     	RTS     				;
00212A 0009     	NOP     				;
00212C 4F22     	STS.L   	PR,@-R15		;
00212E D310     	MOV.L   	@(#040,PC),R3	;
002130 430B     	JSR     	@R3			;
002132 0009     	NOP     				;
002134 6403     	MOV     	R0,R4			;
002136 2448     	TST     	R4,R4			;
002138 8902     	BT      	#004			;
00213A 4F26     	LDS.L   	@R15+,PR		;
00213C 000B     	RTS     				;
00213E E0DC     	MOV     	#DC,R0		;
002140 BEDF     	BRS     	#1DBE			;
002142 E401     	MOV     	#01,R4		;
002144 4F26     	LDS.L   	@R15+,PR		;
002146 000B     	RTS     				;
002148 0009     	NOP     				;

L00214A:							;
00214A 2FE6     	MOV.L   	R14,@-R15		;
00214C 2FD6     	MOV.L   	R13,@-R15		;
00214E 4F22     	STS.L   	PR,@-R15		;
002150 7FFC     	ADD     	#FC,R15		;
002152 2F52     	MOV.L   	R5,@R15		;
002154 DE07     	MOV.L   	@(#01C,PC),R14	;
002156 2448     	TST     	R4,R4			;
002158 8F14     	BF/S    	#028			;
00215A ED00     	MOV     	#00,R13		;
00215C BED1     	BRS     	#1DA2			;
00215E E401     	MOV     	#01,R4		;
002160 6403     	MOV     	R0,R4			;
002162 2448     	TST     	R4,R4			;
002164 8908     	BT      	#010			;
002166 A02C     	BRA     	#0058			;
002168 6043     	MOV     	R4,R0			;
00216A 0800
00216C 002C
00216E 4020
002170 0000
002172 3FBC
002174 0600
002176 0380
002178 B028     	BRS     	#0050			;
00217A E400     	MOV     	#00,R4		;
00217C 6403     	MOV     	R0,R4			;
00217E 6DDF     	EXTS.W   	R13,R13		;
002180 A01E     	BRA     	#003C			;
002182 2ED1     	MOV.W   	R13,@R14		;
002184 62E1     	MOV.W   	@R14,R2		;
002186 2228     	TST     	R2,R2			;
002188 8B11     	BF      	#022			;
00218A B0B5     	BRS     	#016A			;
00218C 0009     	NOP     				;
00218E 6403     	MOV     	R0,R4			;
002190 4415     	CMP/PL  	R4			;
002192 8901     	BT      	#002			;
002194 A015     	BRA     	#002A			;
002196 6043     	MOV     	R4,R0			;
002198 B0DD     	BRS     	#01BA			;
00219A 64F2     	MOV.L   	@R15,R4		;
00219C 6403     	MOV     	R0,R4			;
00219E 2448     	TST     	R4,R4			;
0021A0 8901     	BT      	#002			;
0021A2 A00E     	BRA     	#001C			;
0021A4 6043     	MOV     	R4,R0			;
0021A6 E301     	MOV     	#01,R3		;
0021A8 2E31     	MOV.W   	R3,@R14		;
0021AA A009     	BRA     	#0012			;
0021AC 64D3     	MOV     	R13,R4		;
0021AE B16B     	BRS     	L002488		;L002488();
0021B0 0009     	NOP     				;
0021B2 6403     	MOV     	R0,R4			;
0021B4 4415     	CMP/PL  	R4			;
0021B6 8901     	BT      	#002			;
0021B8 A003     	BRA     	#0006			;
0021BA 6043     	MOV     	R4,R0			;
0021BC 6DDF     	EXTS.W   	R13,R13		;
0021BE 2ED1     	MOV.W   	R13,@R14		;
0021C0 6043     	MOV     	R4,R0			;
0021C2 7F04     	ADD     	#04,R15		;
0021C4 4F26     	LDS.L   	@R15+,PR		;
0021C6 6DF6     	MOV.L   	@R15+,R13		;
0021C8 000B     	RTS     				;
0021CA 6EF6     	MOV.L   	@R15+,R14		;
0021CC 4F22     	STS.L   	PR,@-R15		;
0021CE 900F     	MOV.W   	@(#01E,PC),R0	;
0021D0 3F0C     	ADD     	R0,R15		;
0021D2 1F42     	MOV.L   	R4,@(#8,R15)	;
0021D4 D407     	MOV.L   	@(#01C,PC),R4	;
0021D6 D308     	MOV.L   	@(#020,PC),R3	;
0021D8 430B     	JSR     	@R3			;
0021DA 0009     	NOP     				;
0021DC BE2B     	BRS     	#1C56			;
0021DE 0009     	NOP     				;
0021E0 6403     	MOV     	R0,R4			;
0021E2 2448     	TST     	R4,R4			;
0021E4 890A     	BT      	#014			;
0021E6 9104     	MOV.W   	@(#008,PC),R1	;
0021E8 3F1C     	ADD     	R1,R15		;
0021EA 4F26     	LDS.L   	@R15+,PR		;
0021EC 000B     	RTS     				;
0021EE 6043     	MOV     	R4,R0			;
0021F0 FE5C     	
0021F2 01A4
0021F4 0000     	
0021F6 FFDF     	
0021F8 0000     	
0021FA 3C38
0021FC 64F3     	MOV     	R15,R4		;
0021FE D31D     	MOV.L   	@(#074,PC),R3	;
002200 430B     	JSR     	@R3			;ret = L002E22();
002202 740C     	ADD     	#0C,R4		;
002204 6403     	MOV     	R0,R4			;
002206 2448     	TST     	R4,R4			;
002208 8904     	BT      	L002214		;ret == 0
00220A 9131     	MOV.W   	@(#062,PC),R1	;
00220C 3F1C     	ADD     	R1,R15		;
00220E 4F26     	LDS.L   	@R15+,PR		;
002210 000B     	RTS     				;
002212 E0D8     	MOV     	#D8,R0		;
L002214:
002214 65F3     	MOV     	R15,R5		;
002216 7504     	ADD     	#04,R5		;
002218 B032     	BRS     	L002280		;ret  =L002280();
00221A 64F3     	MOV     	R15,R4		;
00221C 6403     	MOV     	R0,R4			;
00221E 2448     	TST     	R4,R4			;
002220 8904     	BT      	#008			;
002222 9125     	MOV.W   	@(#04A,PC),R1	;
002224 3F1C     	ADD     	R1,R15		;
002226 4F26     	LDS.L   	@R15+,PR		;
002228 000B     	RTS     				;
00222A 6043     	MOV     	R4,R0			;

00222C 63F2     	MOV.L   	@R15,R3		;(n,arg1,toc)
00222E 62F3     	MOV     	R15,R2		;
002230 D111     	MOV.L   	@(#044,PC),R1	;
002232 73FF     	ADD     	#FF,R3		;
002234 720C     	ADD     	#0C,R2		;
002236 4308     	SHLL2   	R3			;
002238 332C     	ADD     	R2,R3			;
00223A 6332     	MOV.L   	@R3,R3		;
00223C 2319     	AND     	R1,R3			;
00223E 2338     	TST     	R3,R3			;
002240 8B04     	BF      	L00224C		;toc[n] & 0x40000000 != 0
002242 9115     	MOV.W   	@(#02A,PC),R1	;
002244 3F1C     	ADD     	R1,R15		;
002246 4F26     	LDS.L   	@R15+,PR		;
002248 000B     	RTS     				;return 0xFFFFFFFD;
00224A E0FD     	MOV     	#FD,R0		;
L00224C:
00224C 55F2     	MOV.L   	@(#08,R15),R5	;
00224E D30B     	MOV.L   	@(#02C,PC),R3	;
002250 430B     	JSR     	@R3			;ret = L003E74(0,arg1);
002252 E400     	MOV     	#00,R4		;
002254 6403     	MOV     	R0,R4			;
002256 2448     	TST     	R4,R4			;
002258 8904     	BT      	L002264		;ret == 0
00225A 9109     	MOV.W   	@(#012,PC),R1	;
00225C 3F1C     	ADD     	R1,R15		;
00225E 4F26     	LDS.L   	@R15+,PR		;
002260 000B     	RTS     				;return 0xFFFFFFD7;
002262 E0D7     	MOV     	#D7,R0		;
L002264:
002264 E000     	MOV     	#00,R0		;return 0x00000000;
002266 9103     	MOV.W   	@(#006,PC),R1	;
002268 3F1C     	ADD     	R1,R15		;
00226A 4F26     	LDS.L   	@R15+,PR		;
00226C 000B     	RTS     				;
00226E 0009     	NOP     				;
002270 01A4
002272 39A5
002274 00002E22
002278 40000000
00227C 00003E74

L002280:
002280 4F22     	STS.L   	PR,@-R15		;
002282 7FF4     	ADD     	#F4,R15		;
002284 1F41     	MOV.L   	R4,@(#4,R15)	;
002286 1F52     	MOV.L   	R5,@(#8,R15)	;
002288 65F3     	MOV     	R15,R5		;
00228A D319     	MOV.L   	@(#064,PC),R3	;
00228C 430B     	JSR     	@R3			;L002E88();
00228E E400     	MOV     	#00,R4		;
002290 6403     	MOV     	R0,R4			;
002292 2448     	TST     	R4,R4			;
002294 8903     	BT      	#006			;
002296 7F0C     	ADD     	#0C,R15		;
002298 4F26     	LDS.L   	@R15+,PR		;
00229A 000B     	RTS     				;
00229C E0D3     	MOV     	#D3,R0		;
00229E 64F3     	MOV     	R15,R4		;
0022A0 D313     	MOV.L   	@(#04C,PC),R3	;
0022A2 6440     	MOV.B   	@R4,R4		;
0022A4 644C     	EXTU.B   	R4,R4			;
0022A6 430B     	JSR     	@R3			;
0022A8 65F3     	MOV     	R15,R5		;
0022AA 6403     	MOV     	R0,R4			;
0022AC 2448     	TST     	R4,R4			;
0022AE 8903     	BT      	#006			;
0022B0 7F0C     	ADD     	#0C,R15		;
0022B2 4F26     	LDS.L   	@R15+,PR		;
0022B4 000B     	RTS     				;
0022B6 E0D2     	MOV     	#D2,R0		;
0022B8 53F1     	MOV.L   	@(#04,R15),R3	;
0022BA 62F3     	MOV     	R15,R2		;
0022BC 6120     	MOV.B   	@R2,R1		;
0022BE 611C     	EXTU.B   	R1,R1			;
0022C0 2312     	MOV.L   	R1,@R3		;
0022C2 53F2     	MOV.L   	@(#08,R15),R3	;
0022C4 62F2     	MOV.L   	@R15,R2		;
0022C6 D10B     	MOV.L   	@(#02C,PC),R1	;
0022C8 2219     	AND     	R1,R2			;
0022CA 2322     	MOV.L   	R2,@R3		;
0022CC 54F1     	MOV.L   	@(#04,R15),R4	;
0022CE E301     	MOV     	#01,R3		;
0022D0 6442     	MOV.L   	@R4,R4		;
0022D2 3433     	CMP/GE 	R3,R4			;
0022D4 8B02     	BF      	#004			;
0022D6 E363     	MOV     	#63,R3		;
0022D8 3437     	CMP/GT 	R3,R4			;
0022DA 8B03     	BF      	#006			;
0022DC 7F0C     	ADD     	#0C,R15		;
0022DE 4F26     	LDS.L   	@R15+,PR		;
0022E0 000B     	RTS     				;
0022E2 E0D1     	MOV     	#D1,R0		;
0022E4 E000     	MOV     	#00,R0		;
0022E6 7F0C     	ADD     	#0C,R15		;
0022E8 4F26     	LDS.L   	@R15+,PR		;
0022EA 000B     	RTS     				;
0022EC 0009     	NOP     				;
0022EE 7B12
0022F0 00002E88
0022F4 00FF
0022F6 FFFF
0022F8 4F22     	STS.L   	PR,@-R15		;
0022FA 7FF4     	ADD     	#F4,R15		;
0022FC 9337     	MOV.W   	@(#06E,PC),R3	;
0022FE 1F32     	MOV.L   	R3,@(#8,R15)	;
002300 D31B     	MOV.L   	@(#06C,PC),R3	;
002302 430B     	JSR     	@R3			;
002304 0009     	NOP     				;
002306 600D     	EXTU.W   	R0,R0			;
002308 52F2     	MOV.L   	@(#08,R15),R2	;
00230A 2029     	AND     	R2,R0			;
00230C 2008     	TST     	R0,R0			;
00230E 0429     	MOVT    	R4			;
002310 74FF     	ADD     	#FF,R4		;
002312 644B     	NEG     	R4,R4			;
002314 2448     	TST     	R4,R4			;
002316 8B03     	BF      	#006			;
002318 7F0C     	ADD     	#0C,R15		;
00231A 4F26     	LDS.L   	@R15+,PR		;
00231C 000B     	RTS     				;
00231E E000     	MOV     	#00,R0		;
002320 66F3     	MOV     	R15,R6		;
002322 65F3     	MOV     	R15,R5		;
002324 D313     	MOV.L   	@(#04C,PC),R3	;
002326 7604     	ADD     	#04,R6		;
002328 430B     	JSR     	@R3			;
00232A E400     	MOV     	#00,R4		;
00232C 6403     	MOV     	R0,R4			;
00232E 2448     	TST     	R4,R4			;
002330 8903     	BT      	#006			;
002332 7F0C     	ADD     	#0C,R15		;
002334 4F26     	LDS.L   	@R15+,PR		;
002336 000B     	RTS     				;
002338 E0CE     	MOV     	#CE,R0		;
00233A 60F1     	MOV.W   	@R15,R0		;
00233C 600D     	EXTU.W   	R0,R0			;
00233E C9FF     	AND     	#FF,R0		;
002340 8804     	CMP/EQ  	#04,R0		;
002342 8903     	BT      	#006			;
002344 7F0C     	ADD     	#0C,R15		;
002346 4F26     	LDS.L   	@R15+,PR		;
002348 000B     	RTS     				;
00234A E0CD     	MOV     	#CD,R0		;
00234C E001     	MOV     	#01,R0		;
00234E 7F0C     	ADD     	#0C,R15		;
002350 4F26     	LDS.L   	@R15+,PR		;
002352 000B     	RTS     				;
002354 0009     	NOP     				;
002356 2FE6     	MOV.L   	R14,@-R15		;
002358 2FD6     	MOV.L   	R13,@-R15		;
00235A 6E43     	MOV     	R4,R14		;
00235C 4F22     	STS.L   	PR,@-R15		;
00235E 7FFC     	ADD     	#FC,R15		;
002360 4E11     	CMP/PZ  	R14			;
002362 8B02     	BF      	#004			;
002364 E20F     	MOV     	#0F,R2		;
002366 3E23     	CMP/GE 	R2,R14		;
002368 8B06     	BF      	#00C			;
00236A A01A     	BRA     	#0034			;
00236C E0CB     	MOV     	#CB,R0		;
00236E 0200     	
002370 0000     	
002372 3C32
002374 0000     	
002376 3EBC
002378 65F3     	MOV     	R15,R5		;
00237A B388     	BRS     	#0710			;
00237C E400     	MOV     	#00,R4		;
00237E 6D03     	MOV     	R0,R13		;
002380 2DD8     	TST     	R13,R13		;
002382 8901     	BT      	#002			;
002384 A00D     	BRA     	#001A			;
002386 60D3     	MOV     	R13,R0		;
002388 E70F     	MOV     	#0F,R7		;
00238A E605     	MOV     	#05,R6		;
00238C E500     	MOV     	#00,R5		;
00238E D317     	MOV.L   	@(#05C,PC),R3	;
002390 430B     	JSR     	@R3			;
002392 6453     	MOV     	R5,R4			;
002394 6403     	MOV     	R0,R4			;
002396 2448     	TST     	R4,R4			;
002398 8901     	BT      	#002			;
00239A A002     	BRA     	#0004			;
00239C E0CA     	MOV     	#CA,R0		;
00239E B005     	BRS     	#000A			;
0023A0 64E3     	MOV     	R14,R4		;
0023A2 7F04     	ADD     	#04,R15		;
0023A4 4F26     	LDS.L   	@R15+,PR		;
0023A6 6DF6     	MOV.L   	@R15+,R13		;
0023A8 000B     	RTS     				;
0023AA 6EF6     	MOV.L   	@R15+,R14		;
0023AC 2FE6     	MOV.L   	R14,@-R15		;
0023AE 2FD6     	MOV.L   	R13,@-R15		;
0023B0 2FC6     	MOV.L   	R12,@-R15		;
0023B2 4F22     	STS.L   	PR,@-R15		;
0023B4 7FDC     	ADD     	#DC,R15		;
0023B6 DC0E     	MOV.L   	@(#038,PC),R12	;
0023B8 DE0E     	MOV.L   	@(#038,PC),R14	;
0023BA 1F42     	MOV.L   	R4,@(#8,R15)	;
0023BC ED00     	MOV     	#00,R13		;
0023BE 4C0B     	JSR     	@R12			;
0023C0 E400     	MOV     	#00,R4		;
0023C2 6403     	MOV     	R0,R4			;
0023C4 2448     	TST     	R4,R4			;
0023C6 8B04     	BF      	#008			;
0023C8 D50B     	MOV.L   	@(#02C,PC),R5	;
0023CA B334     	BRS     	#0668			;
0023CC E440     	MOV     	#40,R4		;
0023CE A015     	BRA     	#002A			;
0023D0 1F03     	MOV.L   	R0,@(#C,R15)	;
0023D2 6043     	MOV     	R4,R0			;
0023D4 88FF     	CMP/EQ  	#FF,R0		;
0023D6 8901     	BT      	#002			;
0023D8 A048     	BRA     	#0090			;
0023DA E0C8     	MOV     	#C8,R0		;
0023DC 63D3     	MOV     	R13,R3		;
0023DE 33E7     	CMP/GT 	R14,R3		;
0023E0 8F02     	BF/S    	#004			;
0023E2 7D01     	ADD     	#01,R13		;
0023E4 A042     	BRA     	#0084			;
0023E6 E0C7     	MOV     	#C7,R0		;
0023E8 AFE9     	BRA     	#1FD2			;
0023EA 0009     	NOP     				;
0023EC 0000     	
0023EE 2ECE
0023F0 0000     	
0023F2 318C
0023F4 000A     	STS     	MACH, R0		;
0023F6 1220     	MOV.L   	R2,@(#0,R2)		;
0023F8 002C     	MOV.B   	@(R0,R2),R0		;
0023FA 4020     	SHAL    	R0			;
0023FC 50F3     	MOV.L   	@(#0C,R15),R0	;
0023FE 2008     	TST     	R0,R0			;
002400 8901     	BT      	#002			;
002402 A033     	BRA     	#0066			;
002404 E0C6     	MOV     	#C6,R0		;
002406 65F3     	MOV     	R15,R5		;
002408 7504     	ADD     	#04,R5		;
00240A BF39     	BRS     	#1E72			;
00240C 64F3     	MOV     	R15,R4		;
00240E 6403     	MOV     	R0,R4			;
002410 2448     	TST     	R4,R4			;
002412 8901     	BT      	#002			;
002414 A02A     	BRA     	#0054			;
002416 6043     	MOV     	R4,R0			;
002418 D418     	MOV.L   	@(#060,PC),R4	;
00241A D319     	MOV.L   	@(#064,PC),R3	;
00241C 430B     	JSR     	@R3			;
00241E 0009     	NOP     				;
002420 E401     	MOV     	#01,R4		;
002422 62F3     	MOV     	R15,R2		;
002424 63F3     	MOV     	R15,R3		;
002426 65F3     	MOV     	R15,R5		;
002428 7210     	ADD     	#10,R2		;
00242A 7310     	ADD     	#10,R3		;
00242C 2242     	MOV.L   	R4,@R2		;
00242E 52F2     	MOV.L   	@(#08,R15),R2	;
002430 51F1     	MOV.L   	@(#04,R15),R1	;
002432 9021     	MOV.W   	@(#042,PC),R0	;
002434 321C     	ADD     	R1,R2			;
002436 320C     	ADD     	R0,R2			;
002438 1321     	MOV.L   	R2,@(#4,R3)		;
00243A E010     	MOV     	#10,R0		;
00243C 63F3     	MOV     	R15,R3		;
00243E 62F3     	MOV     	R15,R2		;
002440 7310     	ADD     	#10,R3		;
002442 7210     	ADD     	#10,R2		;
002444 1342     	MOV.L   	R4,@(#8,R3)		;
002446 E310     	MOV     	#10,R3		;
002448 51F2     	MOV.L   	@(#08,R15),R1	;
00244A 3318     	SUB     	R1,R3			;
00244C 1233     	MOV.L   	R3,@(#C,R2)		;
00244E 63F3     	MOV     	R15,R3		;
002450 E200     	MOV     	#00,R2		;
002452 7310     	ADD     	#10,R3		;
002454 0324     	MOV.B   	R2,@(R0,R3)		;
002456 B31A     	BRS     	#0634			;
002458 6423     	MOV     	R2,R4			;
00245A 6D03     	MOV     	R0,R13		;
00245C 2DD8     	TST     	R13,R13		;
00245E 8901     	BT      	#002			;
002460 A004     	BRA     	#0008			;
002462 60D3     	MOV     	R13,R0		;
002464 64F3     	MOV     	R15,R4		;
002466 D307     	MOV.L   	@(#01C,PC),R3	;
002468 430B     	JSR     	@R3			;
00246A 7410     	ADD     	#10,R4		;
00246C 7F24     	ADD     	#24,R15		;
00246E 4F26     	LDS.L   	@R15+,PR		;
002470 6CF6     	MOV.L   	@R15+,R12		;
002472 6DF6     	MOV.L   	@R15+,R13		;
002474 000B     	RTS     				;
002476 6EF6     	MOV.L   	@R15+,R14		;
002478 0096
00247A 2D80
00247C 0000
00247E FFEF
002480 0000
002482 3C38
002484 0000
002486 3050

L002488:							;
002488 2FE6     	MOV.L   	R14,@-R15		;
00248A 4F22     	STS.L   	PR,@-R15		;
00248C 7FF4     	ADD     	#F4,R15		;
00248E 65F3     	MOV     	R15,R5		;
002490 1F41     	MOV.L   	R4,@(#4,R15)	;
002492 B2FC     	BRS     	#05F8			;
002494 E400     	MOV     	#00,R4		;
002496 6E03     	MOV     	R0,R14		;
002498 2EE8     	TST     	R14,R14		;
00249A 8904     	BT      	#008			;
00249C 60E3     	MOV     	R14,R0		;
00249E 7F0C     	ADD     	#0C,R15		;
0024A0 4F26     	LDS.L   	@R15+,PR		;
0024A2 000B     	RTS     				;
0024A4 6EF6     	MOV.L   	@R15+,R14		;
0024A6 E310     	MOV     	#10,R3		;
0024A8 1F32     	MOV.L   	R3,@(#8,R15)	;
0024AA D319     	MOV.L   	@(#064,PC),R3	;
0024AC 430B     	JSR     	@R3			;
0024AE 0009     	NOP     				;
0024B0 600D     	EXTU.W   	R0,R0			;
0024B2 52F2     	MOV.L   	@(#08,R15),R2	;
0024B4 2029     	AND     	R2,R0			;
0024B6 2008     	TST     	R0,R0			;
0024B8 0429     	MOVT    	R4			;
0024BA 74FF     	ADD     	#FF,R4		;
0024BC 644B     	NEG     	R4,R4			;
0024BE 2448     	TST     	R4,R4			;
0024C0 8B04     	BF      	#008			;
0024C2 E000     	MOV     	#00,R0		;
0024C4 7F0C     	ADD     	#0C,R15		;
0024C6 4F26     	LDS.L   	@R15+,PR		;
0024C8 000B     	RTS     				;
0024CA 6EF6     	MOV.L   	@R15+,R14		;
0024CC 56F1     	MOV.L   	@(#04,R15),R6	;
0024CE D511     	MOV.L   	@(#044,PC),R5	;
0024D0 B00D     	BRS     	L0024EE		;L0024EE();
0024D2 E410     	MOV     	#10,R4		;
0024D4 6403     	MOV     	R0,R4			;
0024D6 2448     	TST     	R4,R4			;
0024D8 8B04     	BF      	#008			;
0024DA E001     	MOV     	#01,R0		;
0024DC 7F0C     	ADD     	#0C,R15		;
0024DE 4F26     	LDS.L   	@R15+,PR		;
0024E0 000B     	RTS     				;
0024E2 6EF6     	MOV.L   	@R15+,R14		;
0024E4 6043     	MOV     	R4,R0			;
0024E6 7F0C     	ADD     	#0C,R15		;
0024E8 4F26     	LDS.L   	@R15+,PR		;
0024EA 000B     	RTS     				;
0024EC 6EF6     	MOV.L   	@R15+,R14		;

L0024EE:							;
0024EE 2FE6     	MOV.L   	R14,@-R15		;
0024F0 2FD6     	MOV.L   	R13,@-R15		;
0024F2 2FC6     	MOV.L   	R12,@-R15		;
0024F4 2FB6     	MOV.L   	R11,@-R15		;
0024F6 2FA6     	MOV.L   	R10,@-R15		;
0024F8 4F22     	STS.L   	PR,@-R15		;
0024FA 7FF0     	ADD     	#F0,R15		;
0024FC EB00     	MOV     	#00,R11		;
0024FE 1F43     	MOV.L   	R4,@(#C,R15)	;
002500 1F62     	MOV.L   	R6,@(#8,R15)	;
002502 6CB3     	MOV     	R11,R12		;
002504 6E53     	MOV     	R5,R14		;
002506 7E03     	ADD     	#03,R14		;
002508 4E09     	SHLR2   	R14			;
00250A A044     	BRA     	#0088			;
00250C 6AB3     	MOV     	R11,R10		;
00250E D3A7     	MOV.L   	@(#29C,PC),R3	;
002510 0000     	
002512 3C32
002514 0000     	
002516 8000
002518 65F3     	MOV     	R15,R5		;
00251A 7504     	ADD     	#04,R5		;
00251C B2B7     	BRS     	#056E			;
00251E E400     	MOV     	#00,R4		;
002520 6D03     	MOV     	R0,R13		;
002522 2DD8     	TST     	R13,R13		;
002524 8901     	BT      	#002			;
002526 A03A     	BRA     	#0074			;
002528 60D3     	MOV     	R13,R0		;
00252A 65F3     	MOV     	R15,R5		;
00252C D315     	MOV.L   	@(#054,PC),R3	;
00252E 430B     	JSR     	@R3			;
002530 E400     	MOV     	#00,R4		;
002532 6403     	MOV     	R0,R4			;
002534 2448     	TST     	R4,R4			;
002536 8901     	BT      	#002			;
002538 A031     	BRA     	#0062			;
00253A E0C4     	MOV     	#C4,R0		;
00253C 60F2     	MOV.L   	@R15,R0		;
00253E 2008     	TST     	R0,R0			;
002540 8B0C     	BF      	#018			;
002542 55F3     	MOV.L   	@(#0C,R15),R5	;
002544 B033     	BRS     	#0066			;
002546 54F1     	MOV.L   	@(#04,R15),R4	;
002548 2008     	TST     	R0,R0			;
00254A 8901     	BT      	#002			;
00254C A025     	BRA     	#004A			;
00254E 0009     	NOP     				;
002550 9316     	MOV.W   	@(#02C,PC),R3	;
002552 3A37     	CMP/GT 	R3,R10		;
002554 8F1F     	BF/S    	#03E			;
002556 7A01     	ADD     	#01,R10		;
002558 A021     	BRA     	#0042			;
00255A E0C3     	MOV     	#C3,R0		;
00255C 64F2     	MOV.L   	@R15,R4		;
00255E 4418     	SHLL8   	R4			;
002560 4400     	SHLL    	R4			;
002562 34E3     	CMP/GE 	R14,R4		;
002564 8D02     	BT/S    	#004			;
002566 6AB3     	MOV     	R11,R10		;
002568 A001     	BRA     	#0002			;
00256A 6D43     	MOV     	R4,R13		;
00256C 6DE3     	MOV     	R14,R13		;
00256E 65D3     	MOV     	R13,R5		;
002570 56F2     	MOV.L   	@(#08,R15),R6	;
002572 B041     	BRS     	L0025F8		;L0025F8();
002574 64F2     	MOV.L   	@R15,R4		;
002576 6403     	MOV     	R0,R4			;
002578 2448     	TST     	R4,R4			;
00257A 8905     	BT      	#00A			;
00257C A00F     	BRA     	#001E			;
00257E 6043     	MOV     	R4,R0			;
002580 0BB8
002582 8FC8
002584 0000
002586 35BA     	SUBC    	R11,R5		;
002588 63D3     	MOV     	R13,R3		;
00258A 4308     	SHLL2   	R3			;
00258C 52F2     	MOV.L   	@(#08,R15),R2	;
00258E 323C     	ADD     	R3,R2			;
002590 1F22     	MOV.L   	R2,@(#8,R15)	;
002592 3CDC     	ADD     	R13,R12		;
002594 3ED8     	SUB     	R13,R14		;
002596 4E15     	CMP/PL  	R14			;
002598 89BE     	BT      	#17C			;
00259A 60C3     	MOV     	R12,R0		;
00259C 4008     	SHLL2   	R0			;
00259E 7F10     	ADD     	#10,R15		;
0025A0 4F26     	LDS.L   	@R15+,PR		;
0025A2 6AF6     	MOV.L   	@R15+,R10		;
0025A4 6BF6     	MOV.L   	@R15+,R11		;
0025A6 6CF6     	MOV.L   	@R15+,R12		;
0025A8 6DF6     	MOV.L   	@R15+,R13		;
0025AA 000B     	RTS     				;
0025AC 6EF6     	MOV.L   	@R15+,R14		;
0025AE 4F22     	STS.L   	PR,@-R15		;
0025B0 7FFC     	ADD     	#FC,R15		;
0025B2 A014     	BRA     	#0028			;
0025B4 6043     	MOV     	R4,R0			;
0025B6 7F04     	ADD     	#04,R15		;
0025B8 4F26     	LDS.L   	@R15+,PR		;
0025BA 000B     	RTS     				;
0025BC E001     	MOV     	#01,R0		;
0025BE D30D     	MOV.L   	@(#034,PC),R3	;
0025C0 430B     	JSR     	@R3			;
0025C2 2F52     	MOV.L   	R5,@R15		;
0025C4 600D     	EXTU.W   	R0,R0			;
0025C6 62F2     	MOV.L   	@R15,R2		;
0025C8 2029     	AND     	R2,R0			;
0025CA 2008     	TST     	R0,R0			;
0025CC 0429     	MOVT    	R4			;
0025CE 74FF     	ADD     	#FF,R4		;
0025D0 644B     	NEG     	R4,R4			;
0025D2 2448     	TST     	R4,R4			;
0025D4 8909     	BT      	#012			;
0025D6 7F04     	ADD     	#04,R15		;
0025D8 4F26     	LDS.L   	@R15+,PR		;
0025DA 000B     	RTS     				;
0025DC E001     	MOV     	#01,R0		;
0025DE 8801     	CMP/EQ  	#01,R0		;
0025E0 89ED     	BT      	#1DA			;
0025E2 8802     	CMP/EQ  	#02,R0		;
0025E4 89EB     	BT      	#1D6			;
0025E6 8809     	CMP/EQ  	#09,R0		;
0025E8 89E5     	BT      	#1CA			;
0025EA E000     	MOV     	#00,R0		;
0025EC 7F04     	ADD     	#04,R15		;
0025EE 4F26     	LDS.L   	@R15+,PR		;
0025F0 000B     	RTS     				;
0025F2 0009     	NOP     				;
0025F4 0000
0025F6 3C32

L0025F8:							;void (u16 snum,u32 len,u8* buf) //snum-R4,len-R5,buf-R6
0025F8 2FE6     	MOV.L   	R14,@-R15		;
0025FA 2FD6     	MOV.L   	R13,@-R15		;
0025FC 2FC6     	MOV.L   	R12,@-R15		;
0025FE 2FB6     	MOV.L   	R11,@-R15		;
002600 2FA6     	MOV.L   	R10,@-R15		;
002602 2F96     	MOV.L   	R9,@-R15		;
002604 4F22     	STS.L   	PR,@-R15		;
002606 7FF8     	ADD     	#F8,R15		;
002608 D922     	MOV.L   	@(#088,PC),R9	;
00260A EC00     	MOV     	#00,R12		;
00260C DD22     	MOV.L   	@(#088,PC),R13	;
00260E 2F42     	MOV.L   	R4,@R15		;
002610 6B53     	MOV     	R5,R11		;
002612 6E63     	MOV     	R6,R14		;
002614 6AC3     	MOV     	R12,R10		;int err = 0;
L002616:
002616 E500     	MOV     	#00,R5		;while (1) {
002618 66F2     	MOV.L   	@R15,R6		;
00261A 490B     	JSR     	@R9			;  err = cdb_get_del_sector_data(0,0,snum);
00261C 6453     	MOV     	R5,R4			;
00261E 6403     	MOV     	R0,R4			;
002620 2448     	TST     	R4,R4			;
002622 8B01     	BF      	#002			;
002624 A00D     	BRA     	L002642		;  if (err == 0) break;
002626 0009     	NOP     				;
002628 6043     	MOV     	R4,R0			;
00262A 88FF     	CMP/EQ  	#FF,R0		;
00262C 8901     	BT      	#002			;
00262E A027     	BRA     	#004E			;
002630 E0BF     	MOV     	#BF,R0		;
002632 63A3     	MOV     	R10,R3		;
002634 33D7     	CMP/GT 	R13,R3		;
002636 8F02     	BF/S    	#004			;
002638 7A01     	ADD     	#01,R10		;
00263A A021     	BRA     	#0042			;
00263C E0BE     	MOV     	#BE,R0		;
00263E AFEA     	BRA     	#L002616		;
002640 0009     	NOP     				;}
L002642:
002642 D316     	MOV.L   	@(#058,PC),R3	;
002644 430B     	JSR     	@R3			;err = cdb_wait_drdy(0);//L002F9C
002646 E400     	MOV     	#00,R4		;
002648 6403     	MOV     	R0,R4			;
00264A 2448     	TST     	R4,R4			;
00264C 8901     	BT      	#002			;
00264E A017     	BRA     	L002680		;if (err != 0) return 0xFFFFFFBD;
002650 E0BD     	MOV     	#BD,R0		;
002652 D313     	MOV.L   	@(#04C,PC),R3	;
002654 430B     	JSR     	@R3			;//L003C2C();
002656 0009     	NOP     				;
002658 6503     	MOV     	R0,R5			;
00265A 3CB3     	CMP/GE 	R11,R12		;err = 0;
00265C 8D06     	BT/S    	L00266C		;if (len > 0) {
00265E 64C3     	MOV     	R12,R4		;
002660 6352     	MOV.L   	@R5,R3		;
002662 7401     	ADD     	#01,R4		;  for (int i=0; i<len; i++) {
002664 2E32     	MOV.L   	R3,@R14		;    *(u32*)buf = CDB.DATATRNS2;//0x25818000
002666 34B3     	CMP/GE 	R11,R4		;    buf += 4;
002668 8FFA     	BF/S    	L002660		;  }
00266A 7E04     	ADD     	#04,R14		;}
L00266C:
00266C 64F3     	MOV     	R15,R4		;
00266E D30D     	MOV.L   	@(#034,PC),R3	;
002670 430B     	JSR     	@R3			;
002672 7404     	ADD     	#04,R4		;
002674 6403     	MOV     	R0,R4			;
002676 2448     	TST     	R4,R4			;
002678 8901     	BT      	#002			;
00267A A001     	BRA     	#0002			;
00267C E0BC     	MOV     	#BC,R0		;
00267E E000     	MOV     	#00,R0		;
L002680:
002680 7F08     	ADD     	#08,R15		;
002682 4F26     	LDS.L   	@R15+,PR		;
002684 69F6     	MOV.L   	@R15+,R9		;
002686 6AF6     	MOV.L   	@R15+,R10		;
002688 6BF6     	MOV.L   	@R15+,R11		;
00268A 6CF6     	MOV.L   	@R15+,R12		;
00268C 6DF6     	MOV.L   	@R15+,R13		;
00268E 000B     	RTS     				;
002690 6EF6     	MOV.L   	@R15+,R14		;
002692 7712
002694 000038CE
002698 000A1220
00269C 00002F9C
0026A0 00003C2C
0026A4 0000
0026A6 2FFC     	CMP/STR 	R15,R15		;
0026A8 2448     	TST     	R4,R4			;
0026AA 8B01     	BF      	#002			;
0026AC A004     	BRA     	#0008			;
0026AE 0009     	NOP     				;
0026B0 7403     	ADD     	#03,R4		;
0026B2 E2FC     	MOV     	#FC,R2		;
0026B4 A07A     	BRA     	#00F4			;
0026B6 2429     	AND     	R2,R4			;
0026B8 2FE6     	MOV.L   	R14,@-R15		;
0026BA 4F22     	STS.L   	PR,@-R15		;
0026BC 7FEC     	ADD     	#EC,R15		;
0026BE E300     	MOV     	#00,R3		;
0026C0 1F34     	MOV.L   	R3,@(#10,R15)	;
0026C2 65F3     	MOV     	R15,R5		;
0026C4 750C     	ADD     	#0C,R5		;
0026C6 B1E2     	BRS     	#03C4			;
0026C8 E400     	MOV     	#00,R4		;
0026CA 6E03     	MOV     	R0,R14		;
0026CC 2EE8     	TST     	R14,R14		;
0026CE 8904     	BT      	#008			;
0026D0 60E3     	MOV     	R14,R0		;
0026D2 7F14     	ADD     	#14,R15		;
0026D4 4F26     	LDS.L   	@R15+,PR		;
0026D6 000B     	RTS     				;
0026D8 6EF6     	MOV.L   	@R15+,R14		;
0026DA D50F     	MOV.L   	@(#03C,PC),R5	;
0026DC D30F     	MOV.L   	@(#03C,PC),R3	;
0026DE 430B     	JSR     	@R3			;
0026E0 E400     	MOV     	#00,R4		;
0026E2 6403     	MOV     	R0,R4			;
0026E4 2448     	TST     	R4,R4			;
0026E6 8B01     	BF      	#002			;
0026E8 A01C     	BRA     	#0038			;
0026EA 0009     	NOP     				;
0026EC 6043     	MOV     	R4,R0			;
0026EE 88FF     	CMP/EQ  	#FF,R0		;
0026F0 8904     	BT      	#008			;
0026F2 E0BA     	MOV     	#BA,R0		;
0026F4 7F14     	ADD     	#14,R15		;
0026F6 4F26     	LDS.L   	@R15+,PR		;
0026F8 000B     	RTS     				;
0026FA 6EF6     	MOV.L   	@R15+,R14		;
0026FC 53F4     	MOV.L   	@(#10,R15),R3	;
0026FE 7301     	ADD     	#01,R3		;
002700 1F34     	MOV.L   	R3,@(#10,R15)	;
002702 73FF     	ADD     	#FF,R3		;
002704 D206     	MOV.L   	@(#018,PC),R2	;
002706 3327     	CMP/GT 	R2,R3			;
002708 8B04     	BF      	#008			;
00270A E0B9     	MOV     	#B9,R0		;
00270C 7F14     	ADD     	#14,R15		;
00270E 4F26     	LDS.L   	@R15+,PR		;
002710 000B     	RTS     				;
002712 6EF6     	MOV.L   	@R15+,R14		;
002714 AFD5     	BRA     	#1FAA			;
002716 0009     	NOP     				;
002718 00FF     	MAC.L   	@R15+,@R0+		;
00271A FFFF     	
00271C 0000     	
00271E 3A64
002720 000A
002722 1220
002724 D51E     	MOV.L   	@(#078,PC),R5	;
002726 943A     	MOV.W   	@(#074,PC),R4	;
002728 B185     	BRS     	#030A			;
00272A 0009     	NOP     				;
00272C 6403     	MOV     	R0,R4			;
00272E 2448     	TST     	R4,R4			;
002730 8904     	BT      	#008			;
002732 E0B8     	MOV     	#B8,R0		;
002734 7F14     	ADD     	#14,R15		;
002736 4F26     	LDS.L   	@R15+,PR		;
002738 000B     	RTS     				;
00273A 6EF6     	MOV.L   	@R15+,R14		;
00273C 66F3     	MOV     	R15,R6		;
00273E 65F3     	MOV     	R15,R5		;
002740 D318     	MOV.L   	@(#060,PC),R3	;
002742 7608     	ADD     	#08,R6		;
002744 7504     	ADD     	#04,R5		;
002746 430B     	JSR     	@R3			;
002748 64F3     	MOV     	R15,R4		;
00274A 6403     	MOV     	R0,R4			;
00274C 2448     	TST     	R4,R4			;
00274E 8904     	BT      	#008			;
002750 E0B7     	MOV     	#B7,R0		;
002752 7F14     	ADD     	#14,R15		;
002754 4F26     	LDS.L   	@R15+,PR		;
002756 000B     	RTS     				;
002758 6EF6     	MOV.L   	@R15+,R14		;
00275A 60F2     	MOV.L   	@R15,R0		;
00275C 8802     	CMP/EQ  	#02,R0		;
00275E 8904     	BT      	#008			;
002760 E0B6     	MOV     	#B6,R0		;
002762 7F14     	ADD     	#14,R15		;
002764 4F26     	LDS.L   	@R15+,PR		;
002766 000B     	RTS     				;
002768 6EF6     	MOV.L   	@R15+,R14		;
00276A 52F1     	MOV.L   	@(#04,R15),R2	;
00276C 4215     	CMP/PL  	R2			;
00276E 8904     	BT      	#008			;
002770 E0B5     	MOV     	#B5,R0		;
002772 7F14     	ADD     	#14,R15		;
002774 4F26     	LDS.L   	@R15+,PR		;
002776 000B     	RTS     				;
002778 6EF6     	MOV.L   	@R15+,R14		;
00277A E600     	MOV     	#00,R6		;
00277C E502     	MOV     	#02,R5		;
00277E D30A     	MOV.L   	@(#028,PC),R3	;
002780 430B     	JSR     	@R3			;
002782 6463     	MOV     	R6,R4			;
002784 6403     	MOV     	R0,R4			;
002786 2448     	TST     	R4,R4			;
002788 8904     	BT      	#008			;
00278A E0B4     	MOV     	#B4,R0		;
00278C 7F14     	ADD     	#14,R15		;
00278E 4F26     	LDS.L   	@R15+,PR		;
002790 000B     	RTS     				;
002792 6EF6     	MOV.L   	@R15+,R14		;
002794 E000     	MOV     	#00,R0		;
002796 7F14     	ADD     	#14,R15		;
002798 4F26     	LDS.L   	@R15+,PR		;
00279A 000B     	RTS     				;
00279C 6EF6     	MOV.L   	@R15+,R14		;
00279E 0200     	
0027A0 00E4
0027A2 E1C0
0027A4 0000     	
0027A6 3AE0
0027A8 0000     	
0027AA 3BAC
0027AC 2FE6     	MOV.L   	R14,@-R15		;
0027AE 2FD6     	MOV.L   	R13,@-R15		;
0027B0 4F22     	STS.L   	PR,@-R15		;
0027B2 7FE4     	ADD     	#E4,R15		;
0027B4 2F42     	MOV.L   	R4,@R15		;
0027B6 64F3     	MOV     	R15,R4		;
0027B8 D31B     	MOV.L   	@(#06C,PC),R3	;
0027BA 430B     	JSR     	@R3			;
0027BC 7404     	ADD     	#04,R4		;
0027BE 64F3     	MOV     	R15,R4		;
0027C0 D319     	MOV.L   	@(#064,PC),R3	;
0027C2 430B     	JSR     	@R3			;
0027C4 7404     	ADD     	#04,R4		;
0027C6 65F3     	MOV     	R15,R5		;
0027C8 D318     	MOV.L   	@(#060,PC),R3	;
0027CA 7510     	ADD     	#10,R5		;
0027CC 430B     	JSR     	@R3			;
0027CE E402     	MOV     	#02,R4		;
0027D0 6403     	MOV     	R0,R4			;
0027D2 2448     	TST     	R4,R4			;
0027D4 8901     	BT      	#002			;
0027D6 A011     	BRA     	#0022			;
0027D8 E0B3     	MOV     	#B3,R0		;
0027DA 6EF3     	MOV     	R15,R14		;
0027DC 66F2     	MOV.L   	@R15,R6		;
0027DE 9421     	MOV.W   	@(#042,PC),R4	;
0027E0 7E10     	ADD     	#10,R14		;
0027E2 5EE1     	MOV.L   	@(#04,R14),R14	;
0027E4 BE83     	BRS     	#1D06			;
0027E6 65E3     	MOV     	R14,R5		;
0027E8 D311     	MOV.L   	@(#044,PC),R3	;
0027EA 430B     	JSR     	@R3			;
0027EC 6D03     	MOV     	R0,R13		;
0027EE 4D11     	CMP/PZ  	R13			;
0027F0 8B03     	BF      	#006			;
0027F2 3DE3     	CMP/GE 	R14,R13		;
0027F4 8901     	BT      	#002			;
0027F6 A001     	BRA     	#0002			;
0027F8 E0B2     	MOV     	#B2,R0		;
0027FA 60D3     	MOV     	R13,R0		;
0027FC 7F1C     	ADD     	#1C,R15		;
0027FE 4F26     	LDS.L   	@R15+,PR		;
002800 6DF6     	MOV.L   	@R15+,R13		;
002802 000B     	RTS     				;
002804 6EF6     	MOV.L   	@R15+,R14		;
002806 6343     	MOV     	R4,R3			;
002808 4F22     	STS.L   	PR,@-R15		;
00280A 7FFC     	ADD     	#FC,R15		;
00280C 4311     	CMP/PZ  	R3			;
00280E 8F15     	BF/S    	#02A			;
002810 2F42     	MOV.L   	R4,@R15		;
002812 BBCC     	BRS     	#1798			;
002814 E400     	MOV     	#00,R4		;
002816 6403     	MOV     	R0,R4			;
002818 2448     	TST     	R4,R4			;
00281A 890B     	BT      	#016			;
00281C 7F04     	ADD     	#04,R15		;
00281E 4F26     	LDS.L   	@R15+,PR		;
002820 000B     	RTS     				;
002822 6043     	MOV     	R4,R0			;
002824 0200     	
002826 0DE3     	
002828 0000     	
00282A 2CB8
00282C 0000     	
00282E 3B3A
002830 0000     	
002832 3BEE     	ADDC    	R14,R11		;
002834 BCCA     	BRS     	#1994			;
002836 64F2     	MOV.L   	@R15,R4		;
002838 A002     	BRA     	#0004			;
00283A 0009     	NOP     				;
00283C BD5C     	BRS     	#1AB8			;
00283E 0009     	NOP     				;
002840 6403     	MOV     	R0,R4			;
002842 7F04     	ADD     	#04,R15		;
002844 4F26     	LDS.L   	@R15+,PR		;
002846 000B     	RTS     				;
002848 0009     	NOP     				;
00284A 2FE6     	MOV.L   	R14,@-R15		;
00284C 2FD6     	MOV.L   	R13,@-R15		;
00284E 4F22     	STS.L   	PR,@-R15		;
002850 DE0F     	MOV.L   	@(#03C,PC),R14	;
002852 BFD8     	BRS     	#1FB0			;
002854 0009     	NOP     				;
002856 6403     	MOV     	R0,R4			;
002858 2448     	TST     	R4,R4			;
00285A 8901     	BT      	#002			;
00285C A014     	BRA     	#0028			;
00285E 6043     	MOV     	R4,R0			;
002860 ED00     	MOV     	#00,R13		;
002862 BFD0     	BRS     	#1FA0			;
002864 E4FF     	MOV     	#FF,R4		;
002866 8801     	CMP/EQ  	#01,R0		;
002868 8F02     	BF/S    	#004			;
00286A 6403     	MOV     	R0,R4			;
00286C A00C     	BRA     	#0018			;
00286E E000     	MOV     	#00,R0		;
002870 2448     	TST     	R4,R4			;
002872 8901     	BT      	#002			;
002874 A003     	BRA     	#0006			;
002876 0009     	NOP     				;
002878 7D01     	ADD     	#01,R13		;
00287A 3DE3     	CMP/GE 	R14,R13		;
00287C 8BF1     	BF      	#1E2			;
00287E D305     	MOV.L   	@(#014,PC),R3	;
002880 6332     	MOV.L   	@R3,R3		;
002882 430B     	JSR     	@R3			;
002884 0009     	NOP     				;
002886 E0FF     	MOV     	#FF,R0		;
002888 4F26     	LDS.L   	@R15+,PR		;
00288A 6DF6     	MOV.L   	@R15+,R13		;
00288C 000B     	RTS     				;
00288E 6EF6     	MOV.L   	@R15+,R14		;
002890 00E4     	MOV.B   	R14,@(R0,R0)	;
002892 E1C0     	MOV     	#C0,R1		;
002894 0600     	
002896 026C
002898 4F22     	STS.L   	PR,@-R15		;
00289A 7FF4     	ADD     	#F4,R15		;
00289C 2F42     	MOV.L   	R4,@R15		;
00289E BB86     	BRS     	#170C			;
0028A0 E401     	MOV     	#01,R4		;
0028A2 6403     	MOV     	R0,R4			;
0028A4 2448     	TST     	R4,R4			;
0028A6 8903     	BT      	#006			;
0028A8 7F0C     	ADD     	#0C,R15		;
0028AA 4F26     	LDS.L   	@R15+,PR		;
0028AC 000B     	RTS     				;
0028AE 6043     	MOV     	R4,R0			;
0028B0 65F2     	MOV.L   	@R15,R5		;
0028B2 D319     	MOV.L   	@(#064,PC),R3	;
0028B4 430B     	JSR     	@R3			;
0028B6 E401     	MOV     	#01,R4		;
0028B8 6403     	MOV     	R0,R4			;
0028BA 2448     	TST     	R4,R4			;
0028BC 8903     	BT      	#006			;
0028BE 7F0C     	ADD     	#0C,R15		;
0028C0 4F26     	LDS.L   	@R15+,PR		;
0028C2 000B     	RTS     				;
0028C4 E0B0     	MOV     	#B0,R0		;
0028C6 9425     	MOV.W   	@(#04A,PC),R4	;
0028C8 D514     	MOV.L   	@(#050,PC),R5	;
0028CA B0B4     	BRS     	#0168			;
0028CC 0009     	NOP     				;
0028CE 2F02     	MOV.L   	R0,@R15		;
0028D0 2008     	TST     	R0,R0			;
0028D2 8903     	BT      	#006			;
0028D4 7F0C     	ADD     	#0C,R15		;
0028D6 4F26     	LDS.L   	@R15+,PR		;
0028D8 000B     	RTS     				;
0028DA E0AF     	MOV     	#AF,R0		;
0028DC 66F3     	MOV     	R15,R6		;
0028DE 65F3     	MOV     	R15,R5		;
0028E0 D30F     	MOV.L   	@(#03C,PC),R3	;
0028E2 7608     	ADD     	#08,R6		;
0028E4 7504     	ADD     	#04,R5		;
0028E6 430B     	JSR     	@R3			;
0028E8 E401     	MOV     	#01,R4		;
0028EA 6403     	MOV     	R0,R4			;
0028EC 2448     	TST     	R4,R4			;
0028EE 8903     	BT      	#006			;
0028F0 7F0C     	ADD     	#0C,R15		;
0028F2 4F26     	LDS.L   	@R15+,PR		;
0028F4 000B     	RTS     				;
0028F6 E0AE     	MOV     	#AE,R0		;
0028F8 85F2     	MOV.W   	@(#04,R15),R0	;
0028FA 600D     	EXTU.W   	R0,R0			;
0028FC C9FF     	AND     	#FF,R0		;
0028FE 8802     	CMP/EQ  	#02,R0		;
002900 8903     	BT      	#006			;
002902 7F0C     	ADD     	#0C,R15		;
002904 4F26     	LDS.L   	@R15+,PR		;
002906 000B     	RTS     				;
002908 E0AD     	MOV     	#AD,R0		;
00290A E000     	MOV     	#00,R0		;
00290C 7F0C     	ADD     	#0C,R15		;
00290E 4F26     	LDS.L   	@R15+,PR		;
002910 000B     	RTS     				;
002912 0009     	NOP     				;
002914 0800     	
002916 DF0B
002918 0000     	
00291A 3E74
00291C 002C
00291E 4020
002920 0000     	
002922 3EBC
002924 2FE6     	MOV.L   	R14,@-R15		;
002926 4F22     	STS.L   	PR,@-R15		;
002928 7FF4     	ADD     	#F4,R15		;
00292A 1F41     	MOV.L   	R4,@(#4,R15)	;
00292C 1F52     	MOV.L   	R5,@(#8,R15)	;
00292E 2F62     	MOV.L   	R6,@R15		;
002930 BAE7     	BRS     	#15CE			;
002932 E400     	MOV     	#00,R4		;
002934 6403     	MOV     	R0,R4			;
002936 2448     	TST     	R4,R4			;
002938 8904     	BT      	#008			;
00293A 6043     	MOV     	R4,R0			;
00293C 7F0C     	ADD     	#0C,R15		;
00293E 4F26     	LDS.L   	@R15+,PR		;
002940 000B     	RTS     				;
002942 6EF6     	MOV.L   	@R15+,R14		;
002944 66F2     	MOV.L   	@R15,R6		;
002946 55F2     	MOV.L   	@(#08,R15),R5	;
002948 B00A     	BRS     	#0014			;
00294A 54F1     	MOV.L   	@(#04,R15),R4	;
00294C 6E03     	MOV     	R0,R14		;
00294E 4E11     	CMP/PZ  	R14			;
002950 8901     	BT      	#002			;
002952 BAD6     	BRS     	#15AC			;
002954 E400     	MOV     	#00,R4		;
002956 60E3     	MOV     	R14,R0		;
002958 7F0C     	ADD     	#0C,R15		;
00295A 4F26     	LDS.L   	@R15+,PR		;
00295C 000B     	RTS     				;
00295E 6EF6     	MOV.L   	@R15+,R14		;
002960 2FE6     	MOV.L   	R14,@-R15		;
002962 6E53     	MOV     	R5,R14		;
002964 2FD6     	MOV.L   	R13,@-R15		;
002966 4F22     	STS.L   	PR,@-R15		;
002968 7FEC     	ADD     	#EC,R15		;
00296A 2F42     	MOV.L   	R4,@R15		;
00296C 1F64     	MOV.L   	R6,@(#10,R15)	;
00296E 66E3     	MOV     	R14,R6		;
002970 65F2     	MOV.L   	@R15,R5		;
002972 D304     	MOV.L   	@(#010,PC),R3	;
002974 430B     	JSR     	@R3			;
002976 E400     	MOV     	#00,R4		;
002978 6403     	MOV     	R0,R4			;
00297A 2448     	TST     	R4,R4			;
00297C 8904     	BT      	#008			;
00297E A03D     	BRA     	#007A			;
002980 E0A5     	MOV     	#A5,R0		;
002982 17F4     	MOV.L   	R15,@(#10,R7)	;
002984 0000     	
002986 3F28
002988 943D     	MOV.W   	@(#07A,PC),R4	;
00298A D51F     	MOV.L   	@(#07C,PC),R5	;
00298C B053     	BRS     	#00A6			;
00298E 0009     	NOP     				;
002990 2F02     	MOV.L   	R0,@R15		;
002992 2008     	TST     	R0,R0			;
002994 8901     	BT      	#002			;
002996 A031     	BRA     	#0062			;
002998 E0A4     	MOV     	#A4,R0		;
00299A 66F3     	MOV     	R15,R6		;
00299C 65F3     	MOV     	R15,R5		;
00299E D31B     	MOV.L   	@(#06C,PC),R3	;
0029A0 760C     	ADD     	#0C,R6		;
0029A2 7508     	ADD     	#08,R5		;
0029A4 430B     	JSR     	@R3			;
0029A6 E401     	MOV     	#01,R4		;
0029A8 6403     	MOV     	R0,R4			;
0029AA 2448     	TST     	R4,R4			;
0029AC 8901     	BT      	#002			;
0029AE A025     	BRA     	#004A			;
0029B0 E0A3     	MOV     	#A3,R0		;
0029B2 60F3     	MOV     	R15,R0		;
0029B4 7008     	ADD     	#08,R0		;
0029B6 6000     	MOV.B   	@R0,R0		;
0029B8 600C     	EXTU.B   	R0,R0			;
0029BA 8803     	CMP/EQ  	#03,R0		;
0029BC 8901     	BT      	#002			;
0029BE A01D     	BRA     	#003A			;
0029C0 E0A2     	MOV     	#A2,R0		;
0029C2 65F3     	MOV     	R15,R5		;
0029C4 D312     	MOV.L   	@(#048,PC),R3	;
0029C6 7504     	ADD     	#04,R5		;
0029C8 430B     	JSR     	@R3			;
0029CA E400     	MOV     	#00,R4		;
0029CC 6403     	MOV     	R0,R4			;
0029CE 2448     	TST     	R4,R4			;
0029D0 8901     	BT      	#002			;
0029D2 A013     	BRA     	#0026			;
0029D4 E0A1     	MOV     	#A1,R0		;
0029D6 53F1     	MOV.L   	@(#04,R15),R3	;
0029D8 33E0     	CMP/EQ 	R14,R3		;
0029DA 8901     	BT      	#002			;
0029DC A00E     	BRA     	#001C			;
0029DE E0A0     	MOV     	#A0,R0		;
0029E0 6DE3     	MOV     	R14,R13		;
0029E2 56F4     	MOV.L   	@(#10,R15),R6	;
0029E4 4D18     	SHLL8   	R13			;
0029E6 4D00     	SHLL    	R13			;
0029E8 65D3     	MOV     	R13,R5		;
0029EA BE05     	BRS     	#1C0A			;
0029EC 64E3     	MOV     	R14,R4		;
0029EE 6403     	MOV     	R0,R4			;
0029F0 2448     	TST     	R4,R4			;
0029F2 8901     	BT      	#002			;
0029F4 A002     	BRA     	#0004			;
0029F6 6043     	MOV     	R4,R0			;
0029F8 60D3     	MOV     	R13,R0		;
0029FA 4008     	SHLL2   	R0			;
0029FC 7F14     	ADD     	#14,R15		;
0029FE 4F26     	LDS.L   	@R15+,PR		;
002A00 6DF6     	MOV.L   	@R15+,R13		;
002A02 000B     	RTS     				;
002A04 6EF6     	MOV.L   	@R15+,R14		;
002A06 0800     	
002A08 002C
002A0A 4020
002A0C 0000     	
002A0E 3EBC
002A10 0000     	
002A12 35BA
002A14 4F22     	STS.L   	PR,@-R15		;
002A16 7FFC     	ADD     	#FC,R15		;
002A18 D313     	MOV.L   	@(#04C,PC),R3	;
002A1A 430B     	JSR     	@R3			;
002A1C 2F42     	MOV.L   	R4,@R15		;
002A1E 600D     	EXTU.W   	R0,R0			;
002A20 62F2     	MOV.L   	@R15,R2		;
002A22 2029     	AND     	R2,R0			;
002A24 2008     	TST     	R0,R0			;
002A26 0029     	MOVT    	R0			;
002A28 7F04     	ADD     	#04,R15		;
002A2A 4F26     	LDS.L   	@R15+,PR		;
002A2C 000B     	RTS     				;
002A2E CA01     	XOR     	#01,R0		;
002A30 D50E     	MOV.L   	@(#038,PC),R5	;
002A32 A000     	BRA     	#0000			;
002A34 0009     	NOP     				;

L002A36:
002A36 2FE6     	MOV.L   	R14,@-R15		;
002A38 4F22     	STS.L   	PR,@-R15		;
002A3A 7FF4     	ADD     	#F4,R15		;
002A3C 2F42     	MOV.L   	R4,@R15		;
002A3E 1F51     	MOV.L   	R5,@(#4,R15)	;
002A40 A017     	BRA     	#002E			;
002A42 EE00     	MOV     	#00,R14		;
002A44 62F2     	MOV.L   	@R15,R2		;
002A46 D308     	MOV.L   	@(#020,PC),R3	;
002A48 430B     	JSR     	@R3			;
002A4A 1F22     	MOV.L   	R2,@(#8,R15)	;
002A4C 600D     	EXTU.W   	R0,R0			;
002A4E 52F2     	MOV.L   	@(#08,R15),R2	;
002A50 2029     	AND     	R2,R0			;
002A52 2008     	TST     	R0,R0			;
002A54 0429     	MOVT    	R4			;
002A56 74FF     	ADD     	#FF,R4		;
002A58 644B     	NEG     	R4,R4			;
002A5A 2448     	TST     	R4,R4			;
002A5C 8908     	BT      	#010			;
002A5E E000     	MOV     	#00,R0		;
002A60 7F0C     	ADD     	#0C,R15		;
002A62 4F26     	LDS.L   	@R15+,PR		;
002A64 000B     	RTS     				;
002A66 6EF6     	MOV.L   	@R15+,R14		;
002A68 0000     	
002A6A 3C32
002A6C 002C
002A6E 4020
002A70 7E01     	ADD     	#01,R14		;
002A72 53F1     	MOV.L   	@(#04,R15),R3	;
002A74 3E33     	CMP/GE 	R3,R14		;
002A76 8BE5     	BF      	#1CA			;
002A78 E0FF     	MOV     	#FF,R0		;
002A7A 7F0C     	ADD     	#0C,R15		;
002A7C 4F26     	LDS.L   	@R15+,PR		;
002A7E 000B     	RTS     				;
002A80 6EF6     	MOV.L   	@R15+,R14		;
002A82 7FFC     	ADD     	#FC,R15		;
002A84 2F42     	MOV.L   	R4,@R15		;
002A86 6543     	MOV     	R4,R5			;
002A88 E400     	MOV     	#00,R4		;
002A8A A000     	BRA     	L002A8E		;
002A8C 7F04     	ADD     	#04,R15		;

L002A8E:							;int cdb_get_status(arg1,u8* cd_status)//arg1-R4,cd_status-R5
002A8E E3FF     	MOV     	#FF,R3		;
002A90 2FE6     	MOV.L   	R14,@-R15		;
002A92 2FD6     	MOV.L   	R13,@-R15		;
002A94 2FC6     	MOV.L   	R12,@-R15		;
002A96 2FB6     	MOV.L   	R11,@-R15		;
002A98 4F22     	STS.L   	PR,@-R15		;
002A9A 6B53     	MOV     	R5,R11		;
002A9C 7FE8     	ADD     	#E8,R15		;
002A9E DC13     	MOV.L   	@(#04C,PC),R12	;
002AA0 DD13     	MOV.L   	@(#04C,PC),R13	;u8 report[12];
002AA2 2448     	TST     	R4,R4			;*cd_status = 0xFF;
002AA4 8D09     	BT/S    	L002ABA		;if (arg1 != 0) {
002AA6 2B32     	MOV.L   	R3,@R11		;
002AA8 64F3     	MOV     	R15,R4		;
002AAA D312     	MOV.L   	@(#048,PC),R3	;
002AAC 430B     	JSR     	@R3			;  ret = cdb_get_cd_status_cmd(report);//L002CB8
002AAE 740C     	ADD     	#0C,R4		;
002AB0 6403     	MOV     	R0,R4			;
002AB2 2448     	TST     	R4,R4			;
002AB4 8912     	BT      	L002ADC		;
002AB6 A04A     	BRA     	L002B4E		;  if (ret != 0) return 0xFFFFFF9B;
002AB8 E09B     	MOV     	#9B,R0		;}
L002ABA:
002ABA EE00     	MOV     	#00,R14		;else {
L002ABC:							;  for (int i=0; i<90000; i++) {
002ABC 64F3     	MOV     	R15,R4		;    
002ABE 4C0B     	JSR     	@R12			;    ret = cdb_read_cdb_report(report); //L002CF8
002AC0 740C     	ADD     	#0C,R4		;
002AC2 6403     	MOV     	R0,R4			;
002AC4 2448     	TST     	R4,R4			;
002AC6 8B01     	BF      	L002ACC		;
002AC8 A008     	BRA     	L002ADC		;    if (ret == 0) break;
002ACA 0009     	NOP     				;
L002ACC:
002ACC 6043     	MOV     	R4,R0			;
002ACE 88F8     	CMP/EQ  	#F8,R0		;
002AD0 8901     	BT      	L002AD6		;  
002AD2 A03C     	BRA     	L002B4E		;    if (ret != 0xFFFFFFF8) return 0xFFFFFF9A;
002AD4 E09A     	MOV     	#9A,R0		;
L002AD6:
002AD6 7E01     	ADD     	#01,R14		;
002AD8 3ED3     	CMP/GE 	R13,R14		;
002ADA 8BEF     	BF      	L002ABC		;  }
L002ADC:							;}
002ADC 60F3     	MOV     	R15,R0		;
002ADE 700C     	ADD     	#0C,R0		;
002AE0 6000     	MOV.B   	@R0,R0		;
002AE2 600C     	EXTU.B   	R0,R0			;
002AE4 C90F     	AND     	#0F,R0		;u8 stat = report[0] & 0x0F;
002AE6 2B02     	MOV.L   	R0,@R11		;*cd_status = stat;
002AE8 A01C     	BRA     	L002B24		;
002AEA E420     	MOV     	#20,R4		;
002AEC 00002CF8
002AF0 00015F90
002AF4 00002CB8
L002AF8:
002AF8 62F3     	MOV     	R15,R2		;if (stat == 0x0A) {
002AFA E300     	MOV     	#00,R3		;
002AFC 7204     	ADD     	#04,R2		;
002AFE 2232     	MOV.L   	R3,@R2		;
002B00 D316     	MOV.L   	@(#058,PC),R3	;
002B02 430B     	JSR     	@R3			;
002B04 2F42     	MOV.L   	R4,@R15		;
002B06 600D     	EXTU.W   	R0,R0			;
002B08 62F2     	MOV.L   	@R15,R2		;
002B0A 2029     	AND     	R2,R0			;
002B0C 2008     	TST     	R0,R0			;
002B0E 0429     	MOVT    	R4			;
002B10 74FF     	ADD     	#FF,R4		;
002B12 644B     	NEG     	R4,R4			;
002B14 2448     	TST     	R4,R4			;
002B16 8B03     	BF      	L002B20		;
002B18 64F3     	MOV     	R15,R4		;
002B1A D311     	MOV.L   	@(#044,PC),R3	;
002B1C 430B     	JSR     	@R3			;
002B1E 7404     	ADD     	#04,R4		;
L002B20:
002B20 A015     	BRA     	L002B4E		;  return 0xFFFFFFE;
002B22 E0FE     	MOV     	#FE,R0		;}
L002B24:
002B24 8806     	CMP/EQ  	#06,R0		;
002B26 89FB     	BT      	L002B20		;
002B28 8807     	CMP/EQ  	#07,R0		;
002B2A 89F9     	BT      	L002B20		;else if (stat  == 0x06 || stat  == 0x07)
002B2C 880A     	CMP/EQ  	#0A,R0		;  return 0xFFFFFFE;
002B2E 89E3     	BT      	L002AF8		;
002B30 D30A     	MOV.L   	@(#028,PC),R3	;
002B32 430B     	JSR     	@R3			;u16 hirq = cdb_read_hirq();//L003C32
002B34 2F42     	MOV.L   	R4,@R15		;
002B36 600D     	EXTU.W   	R0,R0			;
002B38 62F2     	MOV.L   	@R15,R2		;
002B3A 2029     	AND     	R2,R0			;
002B3C 2008     	TST     	R0,R0			;
002B3E 0429     	MOVT    	R4			;
002B40 74FF     	ADD     	#FF,R4		;
002B42 644B     	NEG     	R4,R4			;
002B44 2448     	TST     	R4,R4			;
002B46 8901     	BT      	L002B4C		;
002B48 A001     	BRA     	L002B4E		;if (hirq & HIRQ_DCHG != 0) return 0xFFFFFFE;
002B4A E0FE     	MOV     	#FE,R0		;
002B4C E000     	MOV     	#00,R0		;
L002B4E:
002B4E 7F18     	ADD     	#18,R15		;
002B50 4F26     	LDS.L   	@R15+,PR		;
002B52 6BF6     	MOV.L   	@R15+,R11		;
002B54 6CF6     	MOV.L   	@R15+,R12		;
002B56 6DF6     	MOV.L   	@R15+,R13		;
002B58 000B     	RTS     				;return 0x00000000;
002B5A 6EF6     	MOV.L   	@R15+,R14		;
002B5C 00003C32
002B60 0000
002B62 311E

L002B64:							;(arg1,u8* ptr,u8* dst,u32 len)//arg1-R4,ptr-R5,arg2-R6,len-R7
002B64 2FE6     	MOV.L   	R14,@-R15		;
002B66 6353     	MOV     	R5,R3			;
002B68 2FD6     	MOV.L   	R13,@-R15		;
002B6A 6E63     	MOV     	R6,R14		;
002B6C 7302     	ADD     	#02,R3		;
002B6E 2FC6     	MOV.L   	R12,@-R15		;
002B70 2FB6     	MOV.L   	R11,@-R15		;
002B72 2FA6     	MOV.L   	R10,@-R15		;
002B74 2F96     	MOV.L   	R9,@-R15		;
002B76 2F86     	MOV.L   	R8,@-R15		;
002B78 4F22     	STS.L   	PR,@-R15		;
002B7A 6843     	MOV     	R4,R8			;
002B7C 7FFC     	ADD     	#FC,R15		;
002B7E 6433     	MOV     	R3,R4			;ptr += 2;
002B80 D926     	MOV.L   	@(#098,PC),R9	;
002B82 DA27     	MOV.L   	@(#09C,PC),R10	;
002B84 2F52     	MOV.L   	R5,@R15		;
002B86 6DE2     	MOV.L   	@R14,R13		;temp = *dst;
002B88 2F32     	MOV.L   	R3,@R15		;
002B8A 3D7C     	ADD     	R7,R13		;temp += len;
002B8C 6544     	MOV.B   	@R4+,R5		;
002B8E 7DFF     	ADD     	#FF,R13		;
002B90 6C5D     	EXTU.W   	R5,R12		;
002B92 6044     	MOV.B   	@R4+,R0		;
002B94 4C18     	SHLL8   	R12			;
002B96 C9FF     	AND     	#FF,R0		;
002B98 2F42     	MOV.L   	R4,@R15		;
002B9A 2C0B     	OR      	R0,R12		;u16 n = (ptr[0]<<8) | ptr[1];
002B9C 2888     	TST     	R8,R8			;
002B9E 8F15     	BF/S    	L002BCC		;if (arg1 == 0) {
002BA0 6CCD     	EXTU.W   	R12,R12		;
002BA2 63CD     	EXTU.W   	R12,R3		;
002BA4 4315     	CMP/PL  	R3			;
002BA6 8F24     	BF/S    	L002BF2		;  if (len >= 0) {
002BA8 EB00     	MOV     	#00,R11		;
L002BAA:
002BAA E710     	MOV     	#10,R7		;    for (int i=0; i<n; i+++) {
002BAC 66D3     	MOV     	R13,R6		;
002BAE 65E3     	MOV     	R14,R5		;
002BB0 4A0B     	JSR     	@R10			;      int ret = L00455C(&ptr,dst,temp,16);
002BB2 64F3     	MOV     	R15,R4		;
002BB4 6403     	MOV     	R0,R4			;
002BB6 4411     	CMP/PZ  	R4			;
002BB8 8901     	BT      	#002			;
002BBA A045     	BRA     	L002C48		;      if (ret < 0) return 1;
002BBC E001     	MOV     	#01,R0		;
002BBE 7B01     	ADD     	#01,R11		;
002BC0 63CD     	EXTU.W   	R12,R3		;
002BC2 62BD     	EXTU.W   	R11,R2		;
002BC4 3233     	CMP/GE 	R3,R2			;
002BC6 8BF0     	BF      	L002BAA		;    }
002BC8 A013     	BRA     	L002BF2		;
002BCA 0009     	NOP     				;} }
L002BCC:
002BCC 62CD     	EXTU.W   	R12,R2		;else {
002BCE 4215     	CMP/PL  	R2			;
002BD0 8F0F     	BF/S    	L002BF2		;  if (len >= 0) {
002BD2 EB00     	MOV     	#00,R11		;
L002BD4:
002BD4 E710     	MOV     	#10,R7		;    for (int i=0; i<n; i+++) {
002BD6 66D3     	MOV     	R13,R6		;
002BD8 65E3     	MOV     	R14,R5		;
002BDA 490B     	JSR     	@R9			;      int ret = L00438C(&ptr,dst,temp,16);
002BDC 64F3     	MOV     	R15,R4		;
002BDE 6403     	MOV     	R0,R4			;
002BE0 4411     	CMP/PZ  	R4			;
002BE2 8901     	BT      	#002			;
002BE4 A030     	BRA     	L002C48		;      if (ret < 0) return 1;
002BE6 E001     	MOV     	#01,R0		;
002BE8 7B01     	ADD     	#01,R11		;
002BEA 62CD     	EXTU.W   	R12,R2		;
002BEC 63BD     	EXTU.W   	R11,R3		;
002BEE 3323     	CMP/GE 	R2,R3			;
002BF0 8BF0     	BF      	L002BD4		;    }
L002BF2:							;} }
002BF2 E301     	MOV     	#01,R3		;
002BF4 6CF2     	MOV.L   	@R15,R12		;
002BF6 7C01     	ADD     	#01,R12		;
002BF8 2FC2     	MOV.L   	R12,@R15		;
002BFA 7CFF     	ADD     	#FF,R12		;
002BFC 67F2     	MOV.L   	@R15,R7		;
002BFE 6CC0     	MOV.B   	@R12,R12		;
002C00 7701     	ADD     	#01,R7		;
002C02 2F72     	MOV.L   	R7,@R15		;
002C04 77FF     	ADD     	#FF,R7		;
002C06 6770     	MOV.B   	@R7,R7		;
002C08 3733     	CMP/GE 	R3,R7			;
002C0A 8B14     	BF      	#028			;
002C0C 2888     	TST     	R8,R8			;
002C0E 8B09     	BF      	#012			;
002C10 66D3     	MOV     	R13,R6		;
002C12 65E3     	MOV     	R14,R5		;
002C14 4A0B     	JSR     	@R10			;
002C16 64F3     	MOV     	R15,R4		;
002C18 A008     	BRA     	#0010			;
002C1A 0009     	NOP     				;
002C1C 0000438C
002C20 0000455C
002C24 66D3     	MOV     	R13,R6		;
002C26 65E3     	MOV     	R14,R5		;
002C28 490B     	JSR     	@R9			;
002C2A 64F3     	MOV     	R15,R4		;
002C2C 6403     	MOV     	R0,R4			;
002C2E 4411     	CMP/PZ  	R4			;
002C30 8901     	BT      	#002			;
002C32 A009     	BRA     	#0012			;
002C34 E001     	MOV     	#01,R0		;
002C36 34C7     	CMP/GT 	R12,R4		;
002C38 8905     	BT      	#00A			;
002C3A 3C48     	SUB     	R4,R12		;
002C3C 62E2     	MOV.L   	@R14,R2		;
002C3E 32C8     	SUB     	R12,R2		;
002C40 2E22     	MOV.L   	R2,@R14		;
002C42 A001     	BRA     	#0002			;
002C44 E000     	MOV     	#00,R0		;
002C46 E001     	MOV     	#01,R0		;
L002C48:
002C48 7F04     	ADD     	#04,R15		;
002C4A 4F26     	LDS.L   	@R15+,PR		;
002C4C 68F6     	MOV.L   	@R15+,R8		;
002C4E 69F6     	MOV.L   	@R15+,R9		;
002C50 6AF6     	MOV.L   	@R15+,R10		;
002C52 6BF6     	MOV.L   	@R15+,R11		;
002C54 6CF6     	MOV.L   	@R15+,R12		;
002C56 6DF6     	MOV.L   	@R15+,R13		;
002C58 000B     	RTS     				;
002C5A 6EF6     	MOV.L   	@R15+,R14		;

L002C5C:							;int data_unpack(u8* ptr,u8* dst,u32 len)//ptr-R4,dst-R5,len-R6
002C5C 2FE6     	MOV.L   	R14,@-R15		;
002C5E 6E43     	MOV     	R4,R14		;
002C60 2FC6     	MOV.L   	R12,@-R15		;
002C62 6C63     	MOV     	R6,R12		;
002C64 2FB6     	MOV.L   	R11,@-R15		;
002C66 6B53     	MOV     	R5,R11		;
002C68 4F22     	STS.L   	PR,@-R15		;
002C6A 6544     	MOV.B   	@R4+,R5		;
002C6C 6040     	MOV.B   	@R4,R0		;
002C6E 615D     	EXTU.W   	R5,R1			;
002C70 C9FF     	AND     	#FF,R0		;
002C72 4118     	SHLL8   	R1			;
002C74 210B     	OR      	R0,R1			;
002C76 611D     	EXTU.W   	R1,R1			;
002C78 601D     	EXTU.W   	R1,R0			;u16 temp = (ptr[0]<<8) | ptr[1];
002C7A A012     	BRA     	L002CA2		;temp &= 0x0001;
002C7C C901     	AND     	#01,R0		;
L002C7E:
002C7E 67C3     	MOV     	R12,R7		;if (temp & 0x0001 == 0) {
002C80 66B3     	MOV     	R11,R6		;
002C82 65E3     	MOV     	R14,R5		;
002C84 E400     	MOV     	#00,R4		;
002C86 4F26     	LDS.L   	@R15+,PR		;
002C88 6BF6     	MOV.L   	@R15+,R11		;
002C8A 6CF6     	MOV.L   	@R15+,R12		;
002C8C AF6A     	BRA     	L002B64		;  return L002B64(0,ptr,dst,len);
002C8E 6EF6     	MOV.L   	@R15+,R14		;}
L002C90:
002C90 67C3     	MOV     	R12,R7		;else {
002C92 66B3     	MOV     	R11,R6		;
002C94 65E3     	MOV     	R14,R5		;
002C96 E401     	MOV     	#01,R4		;
002C98 4F26     	LDS.L   	@R15+,PR		;
002C9A 6BF6     	MOV.L   	@R15+,R11		;
002C9C 6CF6     	MOV.L   	@R15+,R12		;
002C9E AF61     	BRA     	L002B64		;  return L002B64(1,ptr,dst,len);
002CA0 6EF6     	MOV.L   	@R15+,R14		;}
L002CA2:
002CA2 8800     	CMP/EQ  	#00,R0		;
002CA4 89EB     	BT      	L002C7E		;
002CA6 8801     	CMP/EQ  	#01,R0		;
002CA8 89F2     	BT      	L002C90		;
002CAA E000     	MOV     	#00,R0		;
002CAC 4F26     	LDS.L   	@R15+,PR		;
002CAE 6BF6     	MOV.L   	@R15+,R11		;
002CB0 6CF6     	MOV.L   	@R15+,R12		;
002CB2 000B     	RTS     				;
002CB4 6EF6     	MOV.L   	@R15+,R14		;
002CB6 33FA

L002CB8:							;int cdb_get_cd_status_cmd(u8* report)//report-R4
002CB8 2FE6     	MOV.L   	R14,@-R15		;
002CBA 2FD6     	MOV.L   	R13,@-R15		;
002CBC 4F22     	STS.L   	PR,@-R15		;
002CBE 6D43     	MOV     	R4,R13		;
002CC0 7FF8     	ADD     	#F8,R15		;
002CC2 D313     	MOV.L   	@(#04C,PC),R3	;u16 cmd[4];
002CC4 430B     	JSR     	@R3			;mem_clear8(cmd);//L004750
002CC6 64F3     	MOV     	R15,R4		;
002CC8 62F3     	MOV     	R15,R2		;
002CCA E300     	MOV     	#00,R3		;
002CCC 65F3     	MOV     	R15,R5		;
002CCE 2230     	MOV.B   	R3,@R2		;cmd[0] = 0x0000;
002CD0 D310     	MOV.L   	@(#040,PC),R3	;
002CD2 430B     	JSR     	@R3			;int ret = cdb_exec_cmd(0x0000,cmd);//L004788
002CD4 E400     	MOV     	#00,R4		;
002CD6 6E03     	MOV     	R0,R14		;
002CD8 D30F     	MOV.L   	@(#03C,PC),R3	;
002CDA 430B     	JSR     	@R3			;cdb_get_report(report);//L0047C4
002CDC 64D3     	MOV     	R13,R4		;
002CDE 60E3     	MOV     	R14,R0		;
002CE0 7F08     	ADD     	#08,R15		;
002CE2 4F26     	LDS.L   	@R15+,PR		;
002CE4 6DF6     	MOV.L   	@R15+,R13		;
002CE6 000B     	RTS     				;return ret;
002CE8 6EF6     	MOV.L   	@R15+,R14		;


002CEA 4F22     	STS.L   	PR,@-R15		;
002CEC D30A     	MOV.L   	@(#028,PC),R3	;
002CEE 430B     	JSR     	@R3			;
002CF0 0009     	NOP     				;
002CF2 4F26     	LDS.L   	@R15+,PR		;
002CF4 000B     	RTS     				;
002CF6 E000     	MOV     	#00,R0		;

L002CF8:							;int cdb_read_cdb_report(u8* report)//report-R4
002CF8 2FE6     	MOV.L   	R14,@-R15		;
002CFA 2FD6     	MOV.L   	R13,@-R15		;
002CFC 4F22     	STS.L   	PR,@-R15		;
002CFE 6D43     	MOV     	R4,R13		;
002D00 7FF8     	ADD     	#F8,R15		;u16 buf[4];
002D02 B01F     	BRS     	L002D44		;int ret = cdb_cr_read(buf);
002D04 64F3     	MOV     	R15,R4		;
002D06 6E03     	MOV     	R0,R14		;
002D08 2EE8     	TST     	R14,R14		;
002D0A 8907     	BT      	L002D1C		;
002D0C A015     	BRA     	L002D3A		;if (ret != 0) return ret;
002D0E 60E3     	MOV     	R14,R0		;
002D10 00004750
002D14 00004788
002D18 000047C4
L002D1C:
002D1C 65D3     	MOV     	R13,R5		;
002D1E D32A     	MOV.L   	@(#0A8,PC),R3	;
002D20 430B     	JSR     	@R3			;make_cdb_report(buf,report);//L0047D6
002D22 64F3     	MOV     	R15,R4		;
002D24 64D0     	MOV.B   	@R13,R4		;
002D26 924C     	MOV.W   	@(#098,PC),R2	;
002D28 644C     	EXTU.B   	R4,R4			;
002D2A 3420     	CMP/EQ 	R2,R4			;
002D2C 8903     	BT      	L002D36		;
002D2E E220     	MOV     	#20,R2		;
002D30 2249     	AND     	R4,R2			;
002D32 2228     	TST     	R2,R2			;
002D34 8B00     	BF      	L002D38		;if (report[0] == 0xFF || report[0] & 0x20 == 0)
002D36 EEF8     	MOV     	#F8,R14		;  ret = 0xFFFFFFF8;
002D38 60E3     	MOV     	R14,R0		;
L002D3A:
002D3A 7F08     	ADD     	#08,R15		;
002D3C 4F26     	LDS.L   	@R15+,PR		;
002D3E 6DF6     	MOV.L   	@R15+,R13		;
002D40 000B     	RTS     				;return ret;
002D42 6EF6     	MOV.L   	@R15+,R14		;

L002D44:							;cdb_cr_read(u16* buf)//buf-R4
002D44 2FE6     	MOV.L   	R14,@-R15		;
002D46 2FD6     	MOV.L   	R13,@-R15		;
002D48 2FC6     	MOV.L   	R12,@-R15		;
002D4A 2FB6     	MOV.L   	R11,@-R15		;
002D4C 2FA6     	MOV.L   	R10,@-R15		;
002D4E 2F96     	MOV.L   	R9,@-R15		;
002D50 4F22     	STS.L   	PR,@-R15		;
002D52 7FF8     	ADD     	#F8,R15		;
002D54 EC00     	MOV     	#00,R12		;
002D56 DE1D     	MOV.L   	@(#074,PC),R14	;
002D58 6B43     	MOV     	R4,R11		;
002D5A EAFD     	MOV     	#FD,R10		;
002D5C 6DC3     	MOV     	R12,R13		;
L002D5E:
002D5E 0002     	STC     	SR, R0		;for (int i=0; i<100; i++) {
002D60 4009     	SHLR2   	R0			;  //disable interrupts
002D62 4009     	SHLR2   	R0			;
002D64 C90F     	AND     	#0F,R0		;
002D66 6903     	MOV     	R0,R9			;
002D68 0002     	STC     	SR, R0		;
002D6A 932B     	MOV.W   	@(#056,PC),R3	;
002D6C 2039     	AND     	R3,R0			;
002D6E CBF0     	OR      	#F0,R0		;
002D70 400E     	LDC     	R0,SR			;
002D72 4E0B     	JSR     	@R14			;  cdb_read_rr(buf);//L003E42
002D74 64B3     	MOV     	R11,R4		;  u16 temp[4];
002D76 4E0B     	JSR     	@R14			;  cdb_read_rr(temp);//L003E42
002D78 64F3     	MOV     	R15,R4		;
002D7A 6093     	MOV     	R9,R0			;  //enable interrupts
002D7C C90F     	AND     	#0F,R0		;
002D7E 4008     	SHLL2   	R0			;
002D80 4008     	SHLL2   	R0			;
002D82 0202     	STC     	SR, R2		;
002D84 931E     	MOV.W   	@(#03C,PC),R3	;
002D86 2239     	AND     	R3,R2			;
002D88 202B     	OR      	R2,R0			;
002D8A 400E     	LDC     	R0,SR			;
002D8C 64B3     	MOV     	R11,R4		;
002D8E 62F3     	MOV     	R15,R2		;
002D90 6342     	MOV.L   	@R4,R3		;
002D92 6222     	MOV.L   	@R2,R2		;
002D94 3320     	CMP/EQ 	R2,R3			;
002D96 8B06     	BF      	L002DA6		;
002D98 62F3     	MOV     	R15,R2		;
002D9A 5341     	MOV.L   	@(#04,R4),R3	;
002D9C 5221     	MOV.L   	@(#04,R2),R2	;
002D9E 3320     	CMP/EQ 	R2,R3			;
002DA0 8B01     	BF      	L002DA6		;  if (buf[0] == temp[0] && buf[1] == temp[1] && 
002DA2 A004     	BRA     	L002DAE		;      buf[2] == temp[2] && buf[3] == temp[3])
002DA4 6AC3     	MOV     	R12,R10		;    return 0;
L002DA6:
002DA6 7D01     	ADD     	#01,R13		;
002DA8 E264     	MOV     	#64,R2		;
002DAA 3D23     	CMP/GE 	R2,R13		;
002DAC 8BD7     	BF      	L002D5E		;}
L002DAE:
002DAE 60A3     	MOV     	R10,R0		;return 0xFFFFFFFD;
002DB0 7F08     	ADD     	#08,R15		;
002DB2 4F26     	LDS.L   	@R15+,PR		;
002DB4 69F6     	MOV.L   	@R15+,R9		;
002DB6 6AF6     	MOV.L   	@R15+,R10		;
002DB8 6BF6     	MOV.L   	@R15+,R11		;
002DBA 6CF6     	MOV.L   	@R15+,R12		;
002DBC 6DF6     	MOV.L   	@R15+,R13		;
002DBE 000B     	RTS     				;
002DC0 6EF6     	MOV.L   	@R15+,R14		;
002DC2 00FF
002DC4 FF0F
002DC6 D60
002DC8 000047D6
002DCC 00003E42

L002DD0:
002DD0 2FE6     	MOV.L   	R14,@-R15		;
002DD2 6E43     	MOV     	R4,R14		;
002DD4 4F22     	STS.L   	PR,@-R15		;
002DD6 7FF0     	ADD     	#F0,R15		;
002DD8 64F3     	MOV     	R15,R4		;
002DDA D327     	MOV.L   	@(#09C,PC),R3	;
002DDC 430B     	JSR     	@R3			;
002DDE 7408     	ADD     	#08,R4		;
002DE0 62F3     	MOV     	R15,R2		;
002DE2 E301     	MOV     	#01,R3		;
002DE4 66F3     	MOV     	R15,R6		;
002DE6 65F3     	MOV     	R15,R5		;
002DE8 7208     	ADD     	#08,R2		;
002DEA 7508     	ADD     	#08,R5		;
002DEC 2230     	MOV.B   	R3,@R2		;
002DEE D323     	MOV.L   	@(#08C,PC),R3	;
002DF0 430B     	JSR     	@R3			;
002DF2 E400     	MOV     	#00,R4		;
002DF4 6403     	MOV     	R0,R4			;
002DF6 62F3     	MOV     	R15,R2		;
002DF8 8422     	MOV.B   	@(#02,R2),R0	;
002DFA 6303     	MOV     	R0,R3			;
002DFC 2E30     	MOV.B   	R3,@R14		;
002DFE 63F3     	MOV     	R15,R3		;
002E00 8433     	MOV.B   	@(#03,R3),R0	;
002E02 63F3     	MOV     	R15,R3		;
002E04 80E1     	MOV.B   	R0,@(#01,R14)	;
002E06 8435     	MOV.B   	@(#05,R3),R0	;
002E08 63F3     	MOV     	R15,R3		;
002E0A 80E2     	MOV.B   	R0,@(#02,R14)	;
002E0C 8436     	MOV.B   	@(#06,R3),R0	;
002E0E 63F3     	MOV     	R15,R3		;
002E10 80E3     	MOV.B   	R0,@(#03,R14)	;
002E12 8437     	MOV.B   	@(#07,R3),R0	;
002E14 6203     	MOV     	R0,R2			;
002E16 80E4     	MOV.B   	R0,@(#04,R14)	;
002E18 6043     	MOV     	R4,R0			;
002E1A 7F10     	ADD     	#10,R15		;
002E1C 4F26     	LDS.L   	@R15+,PR		;
002E1E 000B     	RTS     				;
002E20 6EF6     	MOV.L   	@R15+,R14		;

L002E22:
002E22 2FE6     	MOV.L   	R14,@-R15		;
002E24 4F22     	STS.L   	PR,@-R15		;
002E26 6E43     	MOV     	R4,R14		;
002E28 7FEC     	ADD     	#EC,R15		;
002E2A 64F3     	MOV     	R15,R4		;
002E2C D312     	MOV.L   	@(#048,PC),R3	;
002E2E 430B     	JSR     	@R3			;
002E30 740C     	ADD     	#0C,R4		;
002E32 62F3     	MOV     	R15,R2		;
002E34 E302     	MOV     	#02,R3		;
002E36 66F3     	MOV     	R15,R6		;
002E38 65F3     	MOV     	R15,R5		;
002E3A 720C     	ADD     	#0C,R2		;
002E3C 7604     	ADD     	#04,R6		;
002E3E 750C     	ADD     	#0C,R5		;
002E40 2230     	MOV.B   	R3,@R2		;
002E42 D30E     	MOV.L   	@(#038,PC),R3	;
002E44 430B     	JSR     	@R3			;
002E46 E400     	MOV     	#00,R4		;
002E48 6403     	MOV     	R0,R4			;
002E4A 2448     	TST     	R4,R4			;
002E4C 8904     	BT      	#008			;
002E4E 6043     	MOV     	R4,R0			;
002E50 7F14     	ADD     	#14,R15		;
002E52 4F26     	LDS.L   	@R15+,PR		;
002E54 000B     	RTS     				;
002E56 6EF6     	MOV.L   	@R15+,R14		;
002E58 63F3     	MOV     	R15,R3		;
002E5A 65E3     	MOV     	R14,R5		;
002E5C 7304     	ADD     	#04,R3		;
002E5E 6232     	MOV.L   	@R3,R2		;
002E60 D307     	MOV.L   	@(#01C,PC),R3	;
002E62 2239     	AND     	R3,R2			;
002E64 2F22     	MOV.L   	R2,@R15		;
002E66 D307     	MOV.L   	@(#01C,PC),R3	;
002E68 430B     	JSR     	@R3			;ret = L003CA0();
002E6A 6423     	MOV     	R2,R4			;
002E6C 6403     	MOV     	R0,R4			;
002E6E 7F14     	ADD     	#14,R15		;
002E70 4F26     	LDS.L   	@R15+,PR		;
002E72 000B     	RTS     				;
002E74 6EF6     	MOV.L   	@R15+,R14		;
002E76 A62F     	BRA     	#0C5E			;
002E78 0000
002E7A 4750
002E7C 0000
002E7E 4762
002E80 00FF
002E82 FFFF
002E84 00003CA0

L002E88:
002E88 2FE6     	MOV.L   	R14,@-R15		;
002E8A 6E43     	MOV     	R4,R14		;
002E8C 2FD6     	MOV.L   	R13,@-R15		;
002E8E 6D53     	MOV     	R5,R13		;
002E90 4F22     	STS.L   	PR,@-R15		;
002E92 7FF0     	ADD     	#F0,R15		;
002E94 64F3     	MOV     	R15,R4		;
002E96 D325     	MOV.L   	@(#094,PC),R3	;
002E98 430B     	JSR     	@R3			;
002E9A 7408     	ADD     	#08,R4		;
002E9C 62F3     	MOV     	R15,R2		;
002E9E E303     	MOV     	#03,R3		;
002EA0 6EEC     	EXTU.B   	R14,R14		;
002EA2 66F3     	MOV     	R15,R6		;
002EA4 65F3     	MOV     	R15,R5		;
002EA6 7208     	ADD     	#08,R2		;
002EA8 60E3     	MOV     	R14,R0		;
002EAA 7508     	ADD     	#08,R5		;
002EAC 2230     	MOV.B   	R3,@R2		;
002EAE 62F3     	MOV     	R15,R2		;
002EB0 7208     	ADD     	#08,R2		;
002EB2 8021     	MOV.B   	R0,@(#01,R2)	;
002EB4 D31E     	MOV.L   	@(#078,PC),R3	;
002EB6 430B     	JSR     	@R3			;
002EB8 E400     	MOV     	#00,R4		;
002EBA 6403     	MOV     	R0,R4			;
002EBC 62F3     	MOV     	R15,R2		;
002EBE 6043     	MOV     	R4,R0			;
002EC0 5321     	MOV.L   	@(#04,R2),R3	;
002EC2 2D32     	MOV.L   	R3,@R13		;
002EC4 7F10     	ADD     	#10,R15		;
002EC6 4F26     	LDS.L   	@R15+,PR		;
002EC8 6DF6     	MOV.L   	@R15+,R13		;
002ECA 000B     	RTS     				;
002ECC 6EF6     	MOV.L   	@R15+,R14		;
002ECE 2FE6     	MOV.L   	R14,@-R15		;
002ED0 2FD6     	MOV.L   	R13,@-R15		;
002ED2 6E43     	MOV     	R4,R14		;
002ED4 2FC6     	MOV.L   	R12,@-R15		;
002ED6 6D63     	MOV     	R6,R13		;
002ED8 2FB6     	MOV.L   	R11,@-R15		;
002EDA 6C73     	MOV     	R7,R12		;
002EDC 4F22     	STS.L   	PR,@-R15		;
002EDE 6B53     	MOV     	R5,R11		;
002EE0 7FF4     	ADD     	#F4,R15		;
002EE2 64F3     	MOV     	R15,R4		;
002EE4 D311     	MOV.L   	@(#044,PC),R3	;
002EE6 430B     	JSR     	@R3			;
002EE8 7404     	ADD     	#04,R4		;
002EEA 62F3     	MOV     	R15,R2		;
002EEC E304     	MOV     	#04,R3		;
002EEE 6BBD     	EXTU.W   	R11,R11		;
002EF0 6DDC     	EXTU.B   	R13,R13		;
002EF2 6CCC     	EXTU.B   	R12,R12		;
002EF4 7204     	ADD     	#04,R2		;
002EF6 2230     	MOV.B   	R3,@R2		;
002EF8 62F3     	MOV     	R15,R2		;
002EFA 63EC     	EXTU.B   	R14,R3		;
002EFC 7204     	ADD     	#04,R2		;
002EFE 6033     	MOV     	R3,R0			;
002F00 8021     	MOV.B   	R0,@(#01,R2)	;
002F02 63F3     	MOV     	R15,R3		;
002F04 60B3     	MOV     	R11,R0		;
002F06 7304     	ADD     	#04,R3		;
002F08 8131     	MOV.W   	R0,@(#02,R3)	;
002F0A 63F3     	MOV     	R15,R3		;
002F0C 60D3     	MOV     	R13,R0		;
002F0E 7304     	ADD     	#04,R3		;
002F10 8036     	MOV.B   	R0,@(#06,R3)	;
002F12 63F3     	MOV     	R15,R3		;
002F14 60C3     	MOV     	R12,R0		;
002F16 7304     	ADD     	#04,R3		;
002F18 8037     	MOV.B   	R0,@(#07,R3)	;
002F1A 9005     	MOV.W   	@(#00A,PC),R0	;
002F1C 20E9     	AND     	R14,R0		;
002F1E 8801     	CMP/EQ  	#01,R0		;
002F20 8B1E     	BF      	#03C			;
002F22 9202     	MOV.W   	@(#004,PC),R2	;
002F24 A008     	BRA     	#0010			;
002F26 0009     	NOP     				;
002F28 0081     	
002F2A 0DAC
002F2C 0000     	
002F2E 4750     	
002F30 0000     	
002F32 4762     	
002F34 62F2     	MOV.L   	@R15,R2		;
002F36 72FF     	ADD     	#FF,R2		;
002F38 2F22     	MOV.L   	R2,@R15		;
002F3A 63F2     	MOV.L   	@R15,R3		;
002F3C 4315     	CMP/PL  	R3			;
002F3E 89F9     	BT      	#1F2			;
002F40 D31B     	MOV.L   	@(#06C,PC),R3	;
002F42 430B     	JSR     	@R3			;
002F44 E441     	MOV     	#41,R4		;
002F46 65F3     	MOV     	R15,R5		;
002F48 D31A     	MOV.L   	@(#068,PC),R3	;
002F4A 7504     	ADD     	#04,R5		;
002F4C 430B     	JSR     	@R3			;
002F4E E440     	MOV     	#40,R4		;
002F50 6E03     	MOV     	R0,R14		;
002F52 2EE8     	TST     	R14,R14		;
002F54 8B0A     	BF      	#014			;
002F56 D318     	MOV.L   	@(#060,PC),R3	;
002F58 430B     	JSR     	@R3			;
002F5A 0009     	NOP     				;
002F5C A006     	BRA     	#000C			;
002F5E 0009     	NOP     				;
002F60 65F3     	MOV     	R15,R5		;
002F62 D314     	MOV.L   	@(#050,PC),R3	;
002F64 7504     	ADD     	#04,R5		;
002F66 430B     	JSR     	@R3			;
002F68 E400     	MOV     	#00,R4		;
002F6A 6E03     	MOV     	R0,R14		;
002F6C 60E3     	MOV     	R14,R0		;
002F6E 7F0C     	ADD     	#0C,R15		;
002F70 4F26     	LDS.L   	@R15+,PR		;
002F72 6BF6     	MOV.L   	@R15+,R11		;
002F74 6CF6     	MOV.L   	@R15+,R12		;
002F76 6DF6     	MOV.L   	@R15+,R13		;
002F78 000B     	RTS     				;
002F7A 6EF6     	MOV.L   	@R15+,R14		;
002F7C 4F22     	STS.L   	PR,@-R15		;
002F7E 7FF8     	ADD     	#F8,R15		;
002F80 D30E     	MOV.L   	@(#038,PC),R3	;
002F82 430B     	JSR     	@R3			;
002F84 64F3     	MOV     	R15,R4		;
002F86 62F3     	MOV     	R15,R2		;
002F88 E305     	MOV     	#05,R3		;
002F8A 65F3     	MOV     	R15,R5		;
002F8C 2230     	MOV.B   	R3,@R2		;
002F8E D309     	MOV.L   	@(#024,PC),R3	;
002F90 430B     	JSR     	@R3			;
002F92 E400     	MOV     	#00,R4		;
002F94 7F08     	ADD     	#08,R15		;
002F96 4F26     	LDS.L   	@R15+,PR		;
002F98 000B     	RTS     				;
002F9A 6403     	MOV     	R0,R4			;

L002F9C:							;int cdb_wait_drdy(arg1)//arg1-R4
002F9C 2FE6     	MOV.L   	R14,@-R15		;
002F9E 2FD6     	MOV.L   	R13,@-R15		;
002FA0 4F22     	STS.L   	PR,@-R15		;
002FA2 6D43     	MOV     	R4,R13		;
002FA4 7FF8     	ADD     	#F8,R15		;
002FA6 2DD8     	TST     	R13,R13		;
002FA8 8B0A     	BF      	L002FC0		;
002FAA A00A     	BRA     	L002FC2		;
002FAC E402     	MOV     	#02,R4		;u16 mask = HIRQ_DRDY;
002FAE 4AD4
002FB0 0000
002FB2 3C76
002FB4 0000
002FB6 4788
002FB8 0000
002FBA 3C64
002FBC 0000
002FBE 4750
L002FC0:
002FC0 9439     	MOV.W   	@(#072,PC),R4	;if (arg1 != 0) mask |= HIRQ_EHST;
L002FC2:
002FC2 D31D     	MOV.L   	@(#074,PC),R3	;u16 hirq;
002FC4 430B     	JSR     	@R3			;int err = cdb_wait_hirq(mask,&hirq);//L003DE4
002FC6 65F3     	MOV     	R15,R5		;
002FC8 6E03     	MOV     	R0,R14		;
002FCA 60D3     	MOV     	R13,R0		;
002FCC 8801     	CMP/EQ  	#01,R0		;
002FCE 8B06     	BF      	L002FDE		;
002FD0 2EE8     	TST     	R14,R14		;
002FD2 8B04     	BF      	L002FDE		;    
002FD4 60F1     	MOV.W   	@R15,R0		;
002FD6 600D     	EXTU.W   	R0,R0			;
002FD8 C880     	TST     	#80,R0		;
002FDA 8900     	BT      	L002FDE		;if (arg1 == 0x01 && err == 0 && hirq & HIRQ_EHST != 0)
002FDC EEFC     	MOV     	#FC,R14		;  err = -4;
L002FDE:
002FDE 2EE8     	TST     	R14,R14		;
002FE0 8902     	BT      	L002FE8		;
002FE2 64F3     	MOV     	R15,R4		;
002FE4 B00A     	BRS     	L002FFC		;if (err != 0) L002FFC();
002FE6 7404     	ADD     	#04,R4		;
L002FE8:
002FE8 D414     	MOV.L   	@(#050,PC),R4	;
002FEA D315     	MOV.L   	@(#054,PC),R3	;
002FEC 430B     	JSR     	@R3			;cdb_clear_hirq(~HIRQ_DRDY);//L003C52
002FEE 0009     	NOP     				;
002FF0 60E3     	MOV     	R14,R0		;
002FF2 7F08     	ADD     	#08,R15		;
002FF4 4F26     	LDS.L   	@R15+,PR		;
002FF6 6DF6     	MOV.L   	@R15+,R13		;
002FF8 000B     	RTS     				;return err;
002FFA 6EF6     	MOV.L   	@R15+,R14		;

L002FFC:							;
002FFC 2FE6     	MOV.L   	R14,@-R15		;
002FFE 6E43     	MOV     	R4,R14		;
003000 4F22     	STS.L   	PR,@-R15		;
003002 7FF0     	ADD     	#F0,R15		;
003004 64F3     	MOV     	R15,R4		;
003006 D30F     	MOV.L   	@(#03C,PC),R3	;
003008 430B     	JSR     	@R3			;mem_clear8();
00300A 7408     	ADD     	#08,R4		;
00300C 62F3     	MOV     	R15,R2		;
00300E E306     	MOV     	#06,R3		;
003010 66F3     	MOV     	R15,R6		;
003012 65F3     	MOV     	R15,R5		;
003014 7208     	ADD     	#08,R2		;
003016 7508     	ADD     	#08,R5		;
003018 2230     	MOV.B   	R3,@R2		;
00301A D30B     	MOV.L   	@(#02C,PC),R3	;
00301C 430B     	JSR     	@R3			;L004762();
00301E E400     	MOV     	#00,R4		;
003020 6403     	MOV     	R0,R4			;
003022 62F3     	MOV     	R15,R2		;
003024 6043     	MOV     	R4,R0			;
003026 6322     	MOV.L   	@R2,R3		;
003028 D208     	MOV.L   	@(#020,PC),R2	;
00302A 2329     	AND     	R2,R3			;
00302C 2E32     	MOV.L   	R3,@R14		;
00302E 7F10     	ADD     	#10,R15		;
003030 4F26     	LDS.L   	@R15+,PR		;
003032 000B     	RTS     				;
003034 6EF6     	MOV.L   	@R15+,R14		;
003036 0082
003038 00003DE4
00303C 0000FFFD
003040 00003C52
003044 00004750
003048 00004762
00304C 00FFFFFF
003050 2FE6     	MOV.L   	R14,@-R15		;
003052 6E43     	MOV     	R4,R14		;
003054 4F22     	STS.L   	PR,@-R15		;
003056 7FF8     	ADD     	#F8,R15		;
003058 D325     	MOV.L   	@(#094,PC),R3	;
00305A 430B     	JSR     	@R3			;
00305C 64F3     	MOV     	R15,R4		;
00305E 62F3     	MOV     	R15,R2		;
003060 E310     	MOV     	#10,R3		;
003062 65F3     	MOV     	R15,R5		;
003064 2230     	MOV.B   	R3,@R2		;
003066 7501     	ADD     	#01,R5		;
003068 B013     	BRS     	#0026			;
00306A 64E3     	MOV     	R14,R4		;
00306C 62F3     	MOV     	R15,R2		;
00306E E010     	MOV     	#10,R0		;
003070 65F3     	MOV     	R15,R5		;
003072 64E3     	MOV     	R14,R4		;
003074 03EC     	MOV.B   	@(R0,R14),R3	;
003076 7505     	ADD     	#05,R5		;
003078 6033     	MOV     	R3,R0			;
00307A 8024     	MOV.B   	R0,@(#04,R2)	;
00307C B009     	BRS     	#0012			;
00307E 7408     	ADD     	#08,R4		;
003080 65F3     	MOV     	R15,R5		;
003082 D31C     	MOV.L   	@(#070,PC),R3	;
003084 430B     	JSR     	@R3			;
003086 E400     	MOV     	#00,R4		;
003088 6403     	MOV     	R0,R4			;
00308A 7F08     	ADD     	#08,R15		;
00308C 4F26     	LDS.L   	@R15+,PR		;
00308E 000B     	RTS     				;
003090 6EF6     	MOV.L   	@R15+,R14		;
003092 4F22     	STS.L   	PR,@-R15		;
003094 A036     	BRA     	#006C			;
003096 6042     	MOV.L   	@R4,R0		;
003098 E200     	MOV     	#00,R2		;
00309A 2520     	MOV.B   	R2,@R5		;
00309C 8444     	MOV.B   	@(#04,R4),R0	;
00309E 6303     	MOV     	R0,R3			;
0030A0 8051     	MOV.B   	R0,@(#01,R5)	;
0030A2 8445     	MOV.B   	@(#05,R4),R0	;
0030A4 6303     	MOV     	R0,R3			;
0030A6 A012     	BRA     	#0024			;
0030A8 0009     	NOP     				;
0030AA 6043     	MOV     	R4,R0			;
0030AC 7004     	ADD     	#04,R0		;
0030AE 8401     	MOV.B   	@(#01,R0),R0	;
0030B0 600C     	EXTU.B   	R0,R0			;
0030B2 CB80     	OR      	#80,R0		;
0030B4 600C     	EXTU.B   	R0,R0			;
0030B6 2500     	MOV.B   	R0,@R5		;
0030B8 6343     	MOV     	R4,R3			;
0030BA 7304     	ADD     	#04,R3		;
0030BC 8432     	MOV.B   	@(#02,R3),R0	;
0030BE 6203     	MOV     	R0,R2			;
0030C0 6023     	MOV     	R2,R0			;
0030C2 8051     	MOV.B   	R0,@(#01,R5)	;
0030C4 6343     	MOV     	R4,R3			;
0030C6 7304     	ADD     	#04,R3		;
0030C8 8433     	MOV.B   	@(#03,R3),R0	;
0030CA 6203     	MOV     	R0,R2			;
0030CC 6023     	MOV     	R2,R0			;
0030CE A023     	BRA     	#0046			;
0030D0 8052     	MOV.B   	R0,@(#02,R5)	;
0030D2 6153     	MOV     	R5,R1			;
0030D4 D208     	MOV.L   	@(#020,PC),R2	;
0030D6 D309     	MOV.L   	@(#024,PC),R3	;
0030D8 430B     	JSR     	@R3			;
0030DA E003     	MOV     	#03,R0		;
0030DC A01C     	BRA     	#0038			;
0030DE 0009     	NOP     				;
0030E0 6153     	MOV     	R5,R1			;
0030E2 D207     	MOV.L   	@(#01C,PC),R2	;
0030E4 D305     	MOV.L   	@(#014,PC),R3	;
0030E6 430B     	JSR     	@R3			;
0030E8 E003     	MOV     	#03,R0		;
0030EA A015     	BRA     	#002A			;
0030EC 0009     	NOP     				;
0030EE 631C
0030F0 0000     	
0030F2 4750     	
0030F4 0000     	
0030F6 4788     	
0030F8 0000     	
0030FA 4C37
0030FC 0000     	
0030FE 46DC     	
003100 0000     	
003102 4C34     	
003104 8800     	CMP/EQ  	#00,R0		;
003106 89EB     	BT      	#1D6			;
003108 8801     	CMP/EQ  	#01,R0		;
00310A 89CE     	BT      	#19C			;
00310C 8802     	CMP/EQ  	#02,R0		;
00310E 89C3     	BT      	#186			;
003110 8803     	CMP/EQ  	#03,R0		;
003112 89DE     	BT      	#1BC			;
003114 AFE4     	BRA     	#1FC8			;
003116 0009     	NOP     				;
003118 4F26     	LDS.L   	@R15+,PR		;
00311A 000B     	RTS     				;
00311C 0009     	NOP     				;
00311E 2FE6     	MOV.L   	R14,@-R15		;
003120 4F22     	STS.L   	PR,@-R15		;
003122 6E43     	MOV     	R4,R14		;
003124 7FF8     	ADD     	#F8,R15		;
003126 D309     	MOV.L   	@(#024,PC),R3	;
003128 430B     	JSR     	@R3			;
00312A 64F3     	MOV     	R15,R4		;
00312C 62F3     	MOV     	R15,R2		;
00312E E311     	MOV     	#11,R3		;
003130 65F3     	MOV     	R15,R5		;
003132 2230     	MOV.B   	R3,@R2		;
003134 7501     	ADD     	#01,R5		;
003136 BFAC     	BRS     	#1F58			;
003138 64E3     	MOV     	R14,R4		;
00313A 65F3     	MOV     	R15,R5		;
00313C D304     	MOV.L   	@(#010,PC),R3	;
00313E 430B     	JSR     	@R3			;
003140 E400     	MOV     	#00,R4		;
003142 6403     	MOV     	R0,R4			;
003144 7F08     	ADD     	#08,R15		;
003146 4F26     	LDS.L   	@R15+,PR		;
003148 000B     	RTS     				;
00314A 6EF6     	MOV.L   	@R15+,R14		;
00314C 0000     	
00314E 4750     	
003150 0000     	
003152 4788     	
003154 2FE6     	MOV.L   	R14,@-R15		;
003156 6E43     	MOV     	R4,R14		;
003158 4F22     	STS.L   	PR,@-R15		;
00315A 7FF8     	ADD     	#F8,R15		;
00315C D309     	MOV.L   	@(#024,PC),R3	;
00315E 430B     	JSR     	@R3			;
003160 64F3     	MOV     	R15,R4		;
003162 62F3     	MOV     	R15,R2		;
003164 E312     	MOV     	#12,R3		;
003166 6EEC     	EXTU.B   	R14,R14		;
003168 65F3     	MOV     	R15,R5		;
00316A 2230     	MOV.B   	R3,@R2		;
00316C 60E3     	MOV     	R14,R0		;
00316E 62F3     	MOV     	R15,R2		;
003170 8021     	MOV.B   	R0,@(#01,R2)	;
003172 D305     	MOV.L   	@(#014,PC),R3	;
003174 430B     	JSR     	@R3			;
003176 E400     	MOV     	#00,R4		;
003178 6403     	MOV     	R0,R4			;
00317A 7F08     	ADD     	#08,R15		;
00317C 4F26     	LDS.L   	@R15+,PR		;
00317E 000B     	RTS     				;
003180 6EF6     	MOV.L   	@R15+,R14		;
003182 C84C     	TST     	#4C,R0		;
003184 0000     	
003186 4750     	
003188 0000     	
00318A 4788     	
00318C 2FE6     	MOV.L   	R14,@-R15		;
00318E 6E43     	MOV     	R4,R14		;
003190 4F22     	STS.L   	PR,@-R15		;
003192 7FF8     	ADD     	#F8,R15		;
003194 D317     	MOV.L   	@(#05C,PC),R3	;
003196 430B     	JSR     	@R3			;
003198 64F3     	MOV     	R15,R4		;
00319A 62F3     	MOV     	R15,R2		;
00319C E330     	MOV     	#30,R3		;
00319E 6EEC     	EXTU.B   	R14,R14		;
0031A0 65F3     	MOV     	R15,R5		;
0031A2 2230     	MOV.B   	R3,@R2		;
0031A4 60E3     	MOV     	R14,R0		;
0031A6 62F3     	MOV     	R15,R2		;
0031A8 8024     	MOV.B   	R0,@(#04,R2)	;
0031AA D313     	MOV.L   	@(#04C,PC),R3	;
0031AC 430B     	JSR     	@R3			;
0031AE E440     	MOV     	#40,R4		;
0031B0 6403     	MOV     	R0,R4			;
0031B2 7F08     	ADD     	#08,R15		;
0031B4 4F26     	LDS.L   	@R15+,PR		;
0031B6 000B     	RTS     				;
0031B8 6EF6     	MOV.L   	@R15+,R14		;
0031BA 2FE6     	MOV.L   	R14,@-R15		;
0031BC 4F22     	STS.L   	PR,@-R15		;
0031BE 6E43     	MOV     	R4,R14		;
0031C0 7FF0     	ADD     	#F0,R15		;
0031C2 64F3     	MOV     	R15,R4		;
0031C4 D30B     	MOV.L   	@(#02C,PC),R3	;
0031C6 430B     	JSR     	@R3			;
0031C8 7408     	ADD     	#08,R4		;
0031CA 62F3     	MOV     	R15,R2		;
0031CC E331     	MOV     	#31,R3		;
0031CE 66F3     	MOV     	R15,R6		;
0031D0 65F3     	MOV     	R15,R5		;
0031D2 7208     	ADD     	#08,R2		;
0031D4 7508     	ADD     	#08,R5		;
0031D6 2230     	MOV.B   	R3,@R2		;
0031D8 D308     	MOV.L   	@(#020,PC),R3	;
0031DA 430B     	JSR     	@R3			;
0031DC E400     	MOV     	#00,R4		;
0031DE 6403     	MOV     	R0,R4			;
0031E0 62F3     	MOV     	R15,R2		;
0031E2 8424     	MOV.B   	@(#04,R2),R0	;
0031E4 6303     	MOV     	R0,R3			;
0031E6 633C     	EXTU.B   	R3,R3			;
0031E8 6043     	MOV     	R4,R0			;
0031EA 2E32     	MOV.L   	R3,@R14		;
0031EC 7F10     	ADD     	#10,R15		;
0031EE 4F26     	LDS.L   	@R15+,PR		;
0031F0 000B     	RTS     				;
0031F2 6EF6     	MOV.L   	@R15+,R14		;
0031F4 0000     	
0031F6 4750     	
0031F8 0000     	
0031FA 4788     	
0031FC 0000     	
0031FE 4762     	
003200 2FE6     	MOV.L   	R14,@-R15		;
003202 6E43     	MOV     	R4,R14		;
003204 4F22     	STS.L   	PR,@-R15		;
003206 7FF0     	ADD     	#F0,R15		;
003208 64F3     	MOV     	R15,R4		;
00320A D30C     	MOV.L   	@(#030,PC),R3	;
00320C 430B     	JSR     	@R3			;
00320E 7408     	ADD     	#08,R4		;
003210 62F3     	MOV     	R15,R2		;
003212 E332     	MOV     	#32,R3		;
003214 66F3     	MOV     	R15,R6		;
003216 65F3     	MOV     	R15,R5		;
003218 7208     	ADD     	#08,R2		;
00321A 7508     	ADD     	#08,R5		;
00321C 2230     	MOV.B   	R3,@R2		;
00321E D308     	MOV.L   	@(#020,PC),R3	;
003220 430B     	JSR     	@R3			;
003222 E400     	MOV     	#00,R4		;
003224 6403     	MOV     	R0,R4			;
003226 62F3     	MOV     	R15,R2		;
003228 8424     	MOV.B   	@(#04,R2),R0	;
00322A 6303     	MOV     	R0,R3			;
00322C 633C     	EXTU.B   	R3,R3			;
00322E 6043     	MOV     	R4,R0			;
003230 2E32     	MOV.L   	R3,@R14		;
003232 7F10     	ADD     	#10,R15		;
003234 4F26     	LDS.L   	@R15+,PR		;
003236 000B     	RTS     				;
003238 6EF6     	MOV.L   	@R15+,R14		;
00323A F503     	
00323C 0000     	
00323E 4750     	
003240 0000     	
003242 4762     	
003244 2FE6     	MOV.L   	R14,@-R15		;
003246 6E53     	MOV     	R5,R14		;
003248 2FD6     	MOV.L   	R13,@-R15		;
00324A 6D43     	MOV     	R4,R13		;
00324C 2FC6     	MOV.L   	R12,@-R15		;
00324E 6C63     	MOV     	R6,R12		;
003250 4F22     	STS.L   	PR,@-R15		;
003252 7FF8     	ADD     	#F8,R15		;
003254 D322     	MOV.L   	@(#088,PC),R3	;
003256 430B     	JSR     	@R3			;
003258 64F3     	MOV     	R15,R4		;
00325A 62F3     	MOV     	R15,R2		;
00325C 63F3     	MOV     	R15,R3		;
00325E 6DDC     	EXTU.B   	R13,R13		;
003260 65F3     	MOV     	R15,R5		;
003262 22E2     	MOV.L   	R14,@R2		;
003264 60D3     	MOV     	R13,R0		;
003266 E240     	MOV     	#40,R2		;
003268 2320     	MOV.B   	R2,@R3		;
00326A 63F3     	MOV     	R15,R3		;
00326C 62F3     	MOV     	R15,R2		;
00326E 13C1     	MOV.L   	R12,@(#4,R3)	;
003270 8024     	MOV.B   	R0,@(#04,R2)	;
003272 D31C     	MOV.L   	@(#070,PC),R3	;
003274 430B     	JSR     	@R3			;
003276 E440     	MOV     	#40,R4		;
003278 6403     	MOV     	R0,R4			;
00327A 7F08     	ADD     	#08,R15		;
00327C 4F26     	LDS.L   	@R15+,PR		;
00327E 6CF6     	MOV.L   	@R15+,R12		;
003280 6DF6     	MOV.L   	@R15+,R13		;
003282 000B     	RTS     				;
003284 6EF6     	MOV.L   	@R15+,R14		;
003286 2FE6     	MOV.L   	R14,@-R15		;
003288 2FD6     	MOV.L   	R13,@-R15		;
00328A 6E63     	MOV     	R6,R14		;
00328C 2FC6     	MOV.L   	R12,@-R15		;
00328E 6D53     	MOV     	R5,R13		;
003290 4F22     	STS.L   	PR,@-R15		;
003292 6C43     	MOV     	R4,R12		;
003294 7FF0     	ADD     	#F0,R15		;
003296 64F3     	MOV     	R15,R4		;
003298 D311     	MOV.L   	@(#044,PC),R3	;
00329A 430B     	JSR     	@R3			;
00329C 7408     	ADD     	#08,R4		;
00329E 62F3     	MOV     	R15,R2		;
0032A0 E341     	MOV     	#41,R3		;
0032A2 6CCC     	EXTU.B   	R12,R12		;
0032A4 66F3     	MOV     	R15,R6		;
0032A6 65F3     	MOV     	R15,R5		;
0032A8 7208     	ADD     	#08,R2		;
0032AA 60C3     	MOV     	R12,R0		;
0032AC 7508     	ADD     	#08,R5		;
0032AE 2230     	MOV.B   	R3,@R2		;
0032B0 62F3     	MOV     	R15,R2		;
0032B2 7208     	ADD     	#08,R2		;
0032B4 8024     	MOV.B   	R0,@(#04,R2)	;
0032B6 D30C     	MOV.L   	@(#030,PC),R3	;
0032B8 430B     	JSR     	@R3			;
0032BA E400     	MOV     	#00,R4		;
0032BC 6403     	MOV     	R0,R4			;
0032BE 62F3     	MOV     	R15,R2		;
0032C0 6043     	MOV     	R4,R0			;
0032C2 6322     	MOV.L   	@R2,R3		;
0032C4 D209     	MOV.L   	@(#024,PC),R2	;
0032C6 2329     	AND     	R2,R3			;
0032C8 2D32     	MOV.L   	R3,@R13		;
0032CA 62F3     	MOV     	R15,R2		;
0032CC 5321     	MOV.L   	@(#04,R2),R3	;
0032CE D207     	MOV.L   	@(#01C,PC),R2	;
0032D0 2329     	AND     	R2,R3			;
0032D2 2E32     	MOV.L   	R3,@R14		;
0032D4 7F10     	ADD     	#10,R15		;
0032D6 4F26     	LDS.L   	@R15+,PR		;
0032D8 6CF6     	MOV.L   	@R15+,R12		;
0032DA 6DF6     	MOV.L   	@R15+,R13		;
0032DC 000B     	RTS     				;
0032DE 6EF6     	MOV.L   	@R15+,R14		;
0032E0 0000     	
0032E2 4750     	
0032E4 0000     	
0032E6 4788     	
0032E8 0000     	
0032EA 4762     	
0032EC 00FF
0032EE FFFF     	
0032F0 2FE6     	MOV.L   	R14,@-R15		;
0032F2 6E53     	MOV     	R5,R14		;
0032F4 2FD6     	MOV.L   	R13,@-R15		;
0032F6 6D43     	MOV     	R4,R13		;
0032F8 4F22     	STS.L   	PR,@-R15		;
0032FA 7FF8     	ADD     	#F8,R15		;
0032FC D32F     	MOV.L   	@(#0BC,PC),R3	;
0032FE 430B     	JSR     	@R3			;
003300 64F3     	MOV     	R15,R4		;
003302 62F3     	MOV     	R15,R2		;
003304 E342     	MOV     	#42,R3		;
003306 6DDC     	EXTU.B   	R13,R13		;
003308 65F3     	MOV     	R15,R5		;
00330A 2230     	MOV.B   	R3,@R2		;
00330C 62F3     	MOV     	R15,R2		;
00330E 84E1     	MOV.B   	@(#01,R14),R0	;
003310 6303     	MOV     	R0,R3			;
003312 8021     	MOV.B   	R0,@(#01,R2)	;
003314 63F3     	MOV     	R15,R3		;
003316 84E2     	MOV.B   	@(#02,R14),R0	;
003318 8032     	MOV.B   	R0,@(#02,R3)	;
00331A 63F3     	MOV     	R15,R3		;
00331C 84E4     	MOV.B   	@(#04,R14),R0	;
00331E 6203     	MOV     	R0,R2			;
003320 8033     	MOV.B   	R0,@(#03,R3)	;
003322 63F3     	MOV     	R15,R3		;
003324 60D3     	MOV     	R13,R0		;
003326 8034     	MOV.B   	R0,@(#04,R3)	;
003328 63F3     	MOV     	R15,R3		;
00332A 62E0     	MOV.B   	@R14,R2		;
00332C 6023     	MOV     	R2,R0			;
00332E 8035     	MOV.B   	R0,@(#05,R3)	;
003330 63F3     	MOV     	R15,R3		;
003332 84E3     	MOV.B   	@(#03,R14),R0	;
003334 8036     	MOV.B   	R0,@(#06,R3)	;
003336 63F3     	MOV     	R15,R3		;
003338 84E5     	MOV.B   	@(#05,R14),R0	;
00333A 6203     	MOV     	R0,R2			;
00333C 8037     	MOV.B   	R0,@(#07,R3)	;
00333E D320     	MOV.L   	@(#080,PC),R3	;
003340 430B     	JSR     	@R3			;
003342 E440     	MOV     	#40,R4		;
003344 6403     	MOV     	R0,R4			;
003346 7F08     	ADD     	#08,R15		;
003348 4F26     	LDS.L   	@R15+,PR		;
00334A 6DF6     	MOV.L   	@R15+,R13		;
00334C 000B     	RTS     				;
00334E 6EF6     	MOV.L   	@R15+,R14		;
003350 2FE6     	MOV.L   	R14,@-R15		;
003352 6E53     	MOV     	R5,R14		;
003354 2FD6     	MOV.L   	R13,@-R15		;
003356 6D43     	MOV     	R4,R13		;
003358 4F22     	STS.L   	PR,@-R15		;
00335A 7FF0     	ADD     	#F0,R15		;
00335C 64F3     	MOV     	R15,R4		;
00335E D317     	MOV.L   	@(#05C,PC),R3	;
003360 430B     	JSR     	@R3			;
003362 7408     	ADD     	#08,R4		;
003364 62F3     	MOV     	R15,R2		;
003366 E343     	MOV     	#43,R3		;
003368 6DDC     	EXTU.B   	R13,R13		;
00336A 66F3     	MOV     	R15,R6		;
00336C 65F3     	MOV     	R15,R5		;
00336E 7208     	ADD     	#08,R2		;
003370 60D3     	MOV     	R13,R0		;
003372 7508     	ADD     	#08,R5		;
003374 2230     	MOV.B   	R3,@R2		;
003376 62F3     	MOV     	R15,R2		;
003378 7208     	ADD     	#08,R2		;
00337A 8024     	MOV.B   	R0,@(#04,R2)	;
00337C D311     	MOV.L   	@(#044,PC),R3	;
00337E 430B     	JSR     	@R3			;
003380 E400     	MOV     	#00,R4		;
003382 6403     	MOV     	R0,R4			;
003384 62F3     	MOV     	R15,R2		;
003386 8421     	MOV.B   	@(#01,R2),R0	;
003388 6303     	MOV     	R0,R3		;
00338A 80E1     	MOV.B   	R0,@(#01,R14)	;
00338C 63F3     	MOV     	R15,R3		;
00338E 8432     	MOV.B   	@(#02,R3),R0	;
003390 63F3     	MOV     	R15,R3		;
003392 80E2     	MOV.B   	R0,@(#02,R14)	;
003394 8433     	MOV.B   	@(#03,R3),R0	;
003396 63F3     	MOV     	R15,R3		;
003398 80E4     	MOV.B   	R0,@(#04,R14)	;
00339A 8435     	MOV.B   	@(#05,R3),R0	;
00339C 63F3     	MOV     	R15,R3		;
00339E 6203     	MOV     	R0,R2			;
0033A0 2E20     	MOV.B   	R2,@R14		;
0033A2 8436     	MOV.B   	@(#06,R3),R0	;
0033A4 63F3     	MOV     	R15,R3		;
0033A6 80E3     	MOV.B   	R0,@(#03,R14)	;
0033A8 8437     	MOV.B   	@(#07,R3),R0	;
0033AA 6203     	MOV     	R0,R2			;
0033AC 80E5     	MOV.B   	R0,@(#05,R14)	;
0033AE 6043     	MOV     	R4,R0			;
0033B0 7F10     	ADD     	#10,R15		;
0033B2 4F26     	LDS.L   	@R15+,PR		;
0033B4 6DF6     	MOV.L   	@R15+,R13		;
0033B6 000B     	RTS     				;
0033B8 6EF6     	MOV.L   	@R15+,R14		;
0033BA F6EC     	
0033BC 0000     	
0033BE 4750     	
0033C0 0000     	
0033C2 4788     	
0033C4 0000     	
0033C6 4762     	
0033C8 2FE6     	MOV.L   	R14,@-R15		;
0033CA 6E53     	MOV     	R5,R14		;
0033CC 2FD6     	MOV.L   	R13,@-R15		;
0033CE 6D43     	MOV     	R4,R13		;
0033D0 4F22     	STS.L   	PR,@-R15		;
0033D2 7FF8     	ADD     	#F8,R15		;
0033D4 D31E     	MOV.L   	@(#078,PC),R3	;
0033D6 430B     	JSR     	@R3			;
0033D8 64F3     	MOV     	R15,R4		;
0033DA 62F3     	MOV     	R15,R2		;
0033DC E344     	MOV     	#44,R3		;
0033DE 6EEC     	EXTU.B   	R14,R14		;
0033E0 6DDC     	EXTU.B   	R13,R13		;
0033E2 65F3     	MOV     	R15,R5		;
0033E4 2230     	MOV.B   	R3,@R2		;
0033E6 60E3     	MOV     	R14,R0		;
0033E8 62F3     	MOV     	R15,R2		;
0033EA 63F3     	MOV     	R15,R3		;
0033EC 8021     	MOV.B   	R0,@(#01,R2)	;
0033EE 60D3     	MOV     	R13,R0		;
0033F0 8034     	MOV.B   	R0,@(#04,R3)	;
0033F2 D318     	MOV.L   	@(#060,PC),R3	;
0033F4 430B     	JSR     	@R3			;
0033F6 E440     	MOV     	#40,R4		;
0033F8 6403     	MOV     	R0,R4			;
0033FA 7F08     	ADD     	#08,R15		;
0033FC 4F26     	LDS.L   	@R15+,PR		;
0033FE 6DF6     	MOV.L   	@R15+,R13		;
003400 000B     	RTS     				;
003402 6EF6     	MOV.L   	@R15+,R14		;
003404 2FE6     	MOV.L   	R14,@-R15		;
003406 6E43     	MOV     	R4,R14		;
003408 2FD6     	MOV.L   	R13,@-R15		;
00340A 6D53     	MOV     	R5,R13		;
00340C 4F22     	STS.L   	PR,@-R15		;
00340E 7FF0     	ADD     	#F0,R15		;
003410 64F3     	MOV     	R15,R4		;
003412 D30F     	MOV.L   	@(#03C,PC),R3	;
003414 430B     	JSR     	@R3			;
003416 7408     	ADD     	#08,R4		;
003418 62F3     	MOV     	R15,R2		;
00341A E345     	MOV     	#45,R3		;
00341C 6EEC     	EXTU.B   	R14,R14		;
00341E 66F3     	MOV     	R15,R6		;
003420 65F3     	MOV     	R15,R5		;
003422 7208     	ADD     	#08,R2		;
003424 60E3     	MOV     	R14,R0		;
003426 7508     	ADD     	#08,R5		;
003428 2230     	MOV.B   	R3,@R2		;
00342A 62F3     	MOV     	R15,R2		;
00342C 7208     	ADD     	#08,R2		;
00342E 8024     	MOV.B   	R0,@(#04,R2)	;
003430 D309     	MOV.L   	@(#024,PC),R3	;
003432 430B     	JSR     	@R3			;
003434 E400     	MOV     	#00,R4		;
003436 6403     	MOV     	R0,R4			;
003438 62F3     	MOV     	R15,R2		;
00343A 8421     	MOV.B   	@(#01,R2),R0	;
00343C 6303     	MOV     	R0,R3			;
00343E 633C     	EXTU.B   	R3,R3			;
003440 6043     	MOV     	R4,R0			;
003442 2D32     	MOV.L   	R3,@R13		;
003444 7F10     	ADD     	#10,R15		;
003446 4F26     	LDS.L   	@R15+,PR		;
003448 6DF6     	MOV.L   	@R15+,R13		;
00344A 000B     	RTS     				;
00344C 6EF6     	MOV.L   	@R15+,R14		;
00344E 0588
003450 0000     	
003452 4750     	
003454 0000     	
003456 4788     	
003458 0000     	
00345A 4762     	
00345C 2FE6     	MOV.L   	R14,@-R15		;
00345E 6E53     	MOV     	R5,R14		;
003460 2FD6     	MOV.L   	R13,@-R15		;
003462 6D73     	MOV     	R7,R13		;
003464 2FC6     	MOV.L   	R12,@-R15		;
003466 6C43     	MOV     	R4,R12		;
003468 2FB6     	MOV.L   	R11,@-R15		;
00346A 6B63     	MOV     	R6,R11		;
00346C 4F22     	STS.L   	PR,@-R15		;
00346E 7FF8     	ADD     	#F8,R15		;
003470 D327     	MOV.L   	@(#09C,PC),R3	;
003472 430B     	JSR     	@R3			;
003474 64F3     	MOV     	R15,R4		;
003476 62F3     	MOV     	R15,R2		;
003478 E346     	MOV     	#46,R3		;
00347A 6EEC     	EXTU.B   	R14,R14		;
00347C 6BBC     	EXTU.B   	R11,R11		;
00347E 6DDC     	EXTU.B   	R13,R13		;
003480 6CCC     	EXTU.B   	R12,R12		;
003482 65F3     	MOV     	R15,R5		;
003484 2230     	MOV.B   	R3,@R2		;
003486 60E3     	MOV     	R14,R0		;
003488 62F3     	MOV     	R15,R2		;
00348A 63F3     	MOV     	R15,R3		;
00348C 8021     	MOV.B   	R0,@(#01,R2)	;
00348E 60B3     	MOV     	R11,R0		;
003490 8032     	MOV.B   	R0,@(#02,R3)	;
003492 63F3     	MOV     	R15,R3		;
003494 60D3     	MOV     	R13,R0		;
003496 8033     	MOV.B   	R0,@(#03,R3)	;
003498 63F3     	MOV     	R15,R3		;
00349A 60C3     	MOV     	R12,R0		;
00349C 8034     	MOV.B   	R0,@(#04,R3)	;
00349E D31D     	MOV.L   	@(#074,PC),R3	;
0034A0 430B     	JSR     	@R3			;
0034A2 E440     	MOV     	#40,R4		;
0034A4 6403     	MOV     	R0,R4			;
0034A6 7F08     	ADD     	#08,R15		;
0034A8 4F26     	LDS.L   	@R15+,PR		;
0034AA 6BF6     	MOV.L   	@R15+,R11		;
0034AC 6CF6     	MOV.L   	@R15+,R12		;
0034AE 6DF6     	MOV.L   	@R15+,R13		;
0034B0 000B     	RTS     				;
0034B2 6EF6     	MOV.L   	@R15+,R14		;
0034B4 2FE6     	MOV.L   	R14,@-R15		;
0034B6 6E43     	MOV     	R4,R14		;
0034B8 2FD6     	MOV.L   	R13,@-R15		;
0034BA 6D63     	MOV     	R6,R13		;
0034BC 2FC6     	MOV.L   	R12,@-R15		;
0034BE 6C53     	MOV     	R5,R12		;
0034C0 4F22     	STS.L   	PR,@-R15		;
0034C2 7FF0     	ADD     	#F0,R15		;
0034C4 64F3     	MOV     	R15,R4		;
0034C6 D312     	MOV.L   	@(#048,PC),R3	;
0034C8 430B     	JSR     	@R3			;
0034CA 7408     	ADD     	#08,R4		;
0034CC 62F3     	MOV     	R15,R2		;
0034CE E347     	MOV     	#47,R3		;
0034D0 6EEC     	EXTU.B   	R14,R14		;
0034D2 66F3     	MOV     	R15,R6		;
0034D4 65F3     	MOV     	R15,R5		;
0034D6 7208     	ADD     	#08,R2		;
0034D8 60E3     	MOV     	R14,R0		;
0034DA 7508     	ADD     	#08,R5		;
0034DC 2230     	MOV.B   	R3,@R2		;
0034DE 62F3     	MOV     	R15,R2		;
0034E0 7208     	ADD     	#08,R2		;
0034E2 8024     	MOV.B   	R0,@(#04,R2)	;
0034E4 D30C     	MOV.L   	@(#030,PC),R3	;
0034E6 430B     	JSR     	@R3			;
0034E8 E400     	MOV     	#00,R4		;
0034EA 6403     	MOV     	R0,R4			;
0034EC 62F3     	MOV     	R15,R2		;
0034EE 8422     	MOV.B   	@(#02,R2),R0	;
0034F0 6303     	MOV     	R0,R3			;
0034F2 633C     	EXTU.B   	R3,R3			;
0034F4 2C32     	MOV.L   	R3,@R12		;
0034F6 63F3     	MOV     	R15,R3		;
0034F8 8433     	MOV.B   	@(#03,R3),R0	;
0034FA 6203     	MOV     	R0,R2			;
0034FC 622C     	EXTU.B   	R2,R2			;
0034FE 6043     	MOV     	R4,R0			;
003500 2D22     	MOV.L   	R2,@R13		;
003502 7F10     	ADD     	#10,R15		;
003504 4F26     	LDS.L   	@R15+,PR		;
003506 6CF6     	MOV.L   	@R15+,R12		;
003508 6DF6     	MOV.L   	@R15+,R13		;
00350A 000B     	RTS     				;
00350C 6EF6     	MOV.L   	@R15+,R14		;
00350E 18D7
003510 0000     	
003512 4750     	
003514 0000     	
003516 4788     	
003518 0000     	
00351A 4762     	
00351C 2FE6     	MOV.L   	R14,@-R15		;
00351E 6E43     	MOV     	R4,R14		;
003520 2FD6     	MOV.L   	R13,@-R15		;
003522 6D53     	MOV     	R5,R13		;
003524 4F22     	STS.L   	PR,@-R15		;
003526 7FF8     	ADD     	#F8,R15		;
003528 D30B     	MOV.L   	@(#02C,PC),R3	;
00352A 430B     	JSR     	@R3			;
00352C 64F3     	MOV     	R15,R4		;
00352E 62F3     	MOV     	R15,R2		;
003530 E348     	MOV     	#48,R3		;
003532 6EEC     	EXTU.B   	R14,R14		;
003534 6DDC     	EXTU.B   	R13,R13		;
003536 65F3     	MOV     	R15,R5		;
003538 2230     	MOV.B   	R3,@R2		;
00353A 60E3     	MOV     	R14,R0		;
00353C 62F3     	MOV     	R15,R2		;
00353E 63F3     	MOV     	R15,R3		;
003540 8021     	MOV.B   	R0,@(#01,R2)	;
003542 60D3     	MOV     	R13,R0		;
003544 8034     	MOV.B   	R0,@(#04,R3)	;
003546 D305     	MOV.L   	@(#014,PC),R3	;
003548 430B     	JSR     	@R3			;
00354A E440     	MOV     	#40,R4		;
00354C 6403     	MOV     	R0,R4			;
00354E 7F08     	ADD     	#08,R15		;
003550 4F26     	LDS.L   	@R15+,PR		;
003552 6DF6     	MOV.L   	@R15+,R13		;
003554 000B     	RTS     				;
003556 6EF6     	MOV.L   	@R15+,R14		;
003558 0000     	
00355A 4750     	
00355C 0000     	
00355E 4788     	
003560 2FE6     	MOV.L   	R14,@-R15		;
003562 6E63     	MOV     	R6,R14		;
003564 2FD6     	MOV.L   	R13,@-R15		;
003566 6D43     	MOV     	R4,R13		;
003568 2FC6     	MOV.L   	R12,@-R15		;
00356A 6C53     	MOV     	R5,R12		;
00356C 4F22     	STS.L   	PR,@-R15		;
00356E 7FF0     	ADD     	#F0,R15		;
003570 64F3     	MOV     	R15,R4		;
003572 D324     	MOV.L   	@(#090,PC),R3	;
003574 430B     	JSR     	@R3			;
003576 7408     	ADD     	#08,R4		;
003578 62F3     	MOV     	R15,R2		;
00357A E350     	MOV     	#50,R3		;
00357C 66F3     	MOV     	R15,R6		;
00357E 65F3     	MOV     	R15,R5		;
003580 7208     	ADD     	#08,R2		;
003582 7508     	ADD     	#08,R5		;
003584 2230     	MOV.B   	R3,@R2		;
003586 D320     	MOV.L   	@(#080,PC),R3	;
003588 430B     	JSR     	@R3			;
00358A E400     	MOV     	#00,R4		;
00358C 6403     	MOV     	R0,R4			;
00358E 62F3     	MOV     	R15,R2		;
003590 8521     	MOV.W   	@(#02,R2),R0	;
003592 6303     	MOV     	R0,R3			;
003594 633D     	EXTU.W   	R3,R3			;
003596 2E32     	MOV.L   	R3,@R14		;
003598 63F3     	MOV     	R15,R3		;
00359A 8434     	MOV.B   	@(#04,R3),R0	;
00359C 63F3     	MOV     	R15,R3		;
00359E 6203     	MOV     	R0,R2			;
0035A0 622C     	EXTU.B   	R2,R2			;
0035A2 2C22     	MOV.L   	R2,@R12		;
0035A4 8533     	MOV.W   	@(#06,R3),R0	;
0035A6 6203     	MOV     	R0,R2			;
0035A8 622D     	EXTU.W   	R2,R2			;
0035AA 6043     	MOV     	R4,R0			;
0035AC 2D22     	MOV.L   	R2,@R13		;
0035AE 7F10     	ADD     	#10,R15		;
0035B0 4F26     	LDS.L   	@R15+,PR		;
0035B2 6CF6     	MOV.L   	@R15+,R12		;
0035B4 6DF6     	MOV.L   	@R15+,R13		;
0035B6 000B     	RTS     				;
0035B8 6EF6     	MOV.L   	@R15+,R14		;
0035BA 2FE6     	MOV.L   	R14,@-R15		;
0035BC 2FD6     	MOV.L   	R13,@-R15		;
0035BE 6E43     	MOV     	R4,R14		;
0035C0 4F22     	STS.L   	PR,@-R15		;
0035C2 6D53     	MOV     	R5,R13		;
0035C4 7FF0     	ADD     	#F0,R15		;
0035C6 64F3     	MOV     	R15,R4		;
0035C8 D30E     	MOV.L   	@(#038,PC),R3	;
0035CA 430B     	JSR     	@R3			;
0035CC 7408     	ADD     	#08,R4		;
0035CE 62F3     	MOV     	R15,R2		;
0035D0 E351     	MOV     	#51,R3		;
0035D2 6EEC     	EXTU.B   	R14,R14		;
0035D4 66F3     	MOV     	R15,R6		;
0035D6 65F3     	MOV     	R15,R5		;
0035D8 7208     	ADD     	#08,R2		;
0035DA 60E3     	MOV     	R14,R0		;
0035DC 7508     	ADD     	#08,R5		;
0035DE 2230     	MOV.B   	R3,@R2		;
0035E0 62F3     	MOV     	R15,R2		;
0035E2 7208     	ADD     	#08,R2		;
0035E4 8024     	MOV.B   	R0,@(#04,R2)	;
0035E6 D308     	MOV.L   	@(#020,PC),R3	;
0035E8 430B     	JSR     	@R3			;
0035EA E400     	MOV     	#00,R4		;
0035EC 6403     	MOV     	R0,R4			;
0035EE 62F3     	MOV     	R15,R2		;
0035F0 8523     	MOV.W   	@(#06,R2),R0	;
0035F2 6303     	MOV     	R0,R3			;
0035F4 633D     	EXTU.W   	R3,R3			;
0035F6 6043     	MOV     	R4,R0			;
0035F8 2D32     	MOV.L   	R3,@R13		;
0035FA 7F10     	ADD     	#10,R15		;
0035FC 4F26     	LDS.L   	@R15+,PR		;
0035FE 6DF6     	MOV.L   	@R15+,R13		;
003600 000B     	RTS     				;
003602 6EF6     	MOV.L   	@R15+,R14		;
003604 0000     	
003606 4750     	
003608 0000     	
00360A 4762     	
00360C 2FE6     	MOV.L   	R14,@-R15		;
00360E 6E53     	MOV     	R5,R14		;
003610 2FD6     	MOV.L   	R13,@-R15		;
003612 6D63     	MOV     	R6,R13		;
003614 2FC6     	MOV.L   	R12,@-R15		;
003616 6C43     	MOV     	R4,R12		;
003618 4F22     	STS.L   	PR,@-R15		;
00361A 7FF8     	ADD     	#F8,R15		;
00361C D31B     	MOV.L   	@(#06C,PC),R3	;
00361E 430B     	JSR     	@R3			;
003620 64F3     	MOV     	R15,R4		;
003622 62F3     	MOV     	R15,R2		;
003624 E352     	MOV     	#52,R3		;
003626 6EED     	EXTU.W   	R14,R14		;
003628 6CCC     	EXTU.B   	R12,R12		;
00362A 6DDD     	EXTU.W   	R13,R13		;
00362C 65F3     	MOV     	R15,R5		;
00362E 2230     	MOV.B   	R3,@R2		;
003630 60E3     	MOV     	R14,R0		;
003632 62F3     	MOV     	R15,R2		;
003634 63F3     	MOV     	R15,R3		;
003636 8121     	MOV.W   	R0,@(#02,R2)	;
003638 60C3     	MOV     	R12,R0		;
00363A 8034     	MOV.B   	R0,@(#04,R3)	;
00363C 63F3     	MOV     	R15,R3		;
00363E 60D3     	MOV     	R13,R0		;
003640 8133     	MOV.W   	R0,@(#06,R3)	;
003642 D313     	MOV.L   	@(#04C,PC),R3	;
003644 430B     	JSR     	@R3			;
003646 E440     	MOV     	#40,R4		;
003648 6403     	MOV     	R0,R4			;
00364A 7F08     	ADD     	#08,R15		;
00364C 4F26     	LDS.L   	@R15+,PR		;
00364E 6CF6     	MOV.L   	@R15+,R12		;
003650 6DF6     	MOV.L   	@R15+,R13		;
003652 000B     	RTS     				;
003654 6EF6     	MOV.L   	@R15+,R14		;
003656 2FE6     	MOV.L   	R14,@-R15		;
003658 4F22     	STS.L   	PR,@-R15		;
00365A 6E43     	MOV     	R4,R14		;
00365C 7FF0     	ADD     	#F0,R15		;
00365E 64F3     	MOV     	R15,R4		;
003660 D30A     	MOV.L   	@(#028,PC),R3	;
003662 430B     	JSR     	@R3			;
003664 7408     	ADD     	#08,R4		;
003666 62F3     	MOV     	R15,R2		;
003668 E353     	MOV     	#53,R3		;
00366A 65F3     	MOV     	R15,R5		;
00366C 64F3     	MOV     	R15,R4		;
00366E 7208     	ADD     	#08,R2		;
003670 2230     	MOV.B   	R3,@R2		;
003672 B011     	BRS     	#0022			;
003674 7408     	ADD     	#08,R4		;
003676 6403     	MOV     	R0,R4			;
003678 62F3     	MOV     	R15,R2		;
00367A 6043     	MOV     	R4,R0			;
00367C 6322     	MOV.L   	@R2,R3		;
00367E D205     	MOV.L   	@(#014,PC),R2	;
003680 2329     	AND     	R2,R3			;
003682 2E32     	MOV.L   	R3,@R14		;
003684 7F10     	ADD     	#10,R15		;
003686 4F26     	LDS.L   	@R15+,PR		;
003688 000B     	RTS     				;
00368A 6EF6     	MOV.L   	@R15+,R14		;
00368C 0000     	
00368E 4750     	
003690 0000     	
003692 4788     	
003694 00FF
003696 FFFF     	
003698 2FE6     	MOV.L   	R14,@-R15		;
00369A 6E43     	MOV     	R4,R14		;
00369C 2FD6     	MOV.L   	R13,@-R15		;
00369E 4F22     	STS.L   	PR,@-R15		;
0036A0 D326     	MOV.L   	@(#098,PC),R3	;
0036A2 430B     	JSR     	@R3			;
0036A4 6D53     	MOV     	R5,R13		;
0036A6 6403     	MOV     	R0,R4			;
0036A8 604D     	EXTU.W   	R4,R0			;
0036AA C840     	TST     	#40,R0		;
0036AC 8B01     	BF      	#002			;
0036AE A006     	BRA     	#000C			;
0036B0 E0FF     	MOV     	#FF,R0		;
0036B2 66D3     	MOV     	R13,R6		;
0036B4 65E3     	MOV     	R14,R5		;
0036B6 D322     	MOV.L   	@(#088,PC),R3	;
0036B8 430B     	JSR     	@R3			;
0036BA E400     	MOV     	#00,R4		;
0036BC 6403     	MOV     	R0,R4			;
0036BE 4F26     	LDS.L   	@R15+,PR		;
0036C0 6DF6     	MOV.L   	@R15+,R13		;
0036C2 000B     	RTS     				;
0036C4 6EF6     	MOV.L   	@R15+,R14		;
0036C6 2FE6     	MOV.L   	R14,@-R15		;
0036C8 2FD6     	MOV.L   	R13,@-R15		;
0036CA 6E63     	MOV     	R6,R14		;
0036CC 2FC6     	MOV.L   	R12,@-R15		;
0036CE 6D53     	MOV     	R5,R13		;
0036D0 4F22     	STS.L   	PR,@-R15		;
0036D2 6C43     	MOV     	R4,R12		;
0036D4 7FF0     	ADD     	#F0,R15		;
0036D6 64F3     	MOV     	R15,R4		;
0036D8 D31A     	MOV.L   	@(#068,PC),R3	;
0036DA 430B     	JSR     	@R3			;
0036DC 7408     	ADD     	#08,R4		;
0036DE 62F3     	MOV     	R15,R2		;
0036E0 E354     	MOV     	#54,R3		;
0036E2 6DDD     	EXTU.W   	R13,R13		;
0036E4 6CCC     	EXTU.B   	R12,R12		;
0036E6 66F3     	MOV     	R15,R6		;
0036E8 65F3     	MOV     	R15,R5		;
0036EA 7208     	ADD     	#08,R2		;
0036EC 60D3     	MOV     	R13,R0		;
0036EE 7508     	ADD     	#08,R5		;
0036F0 2230     	MOV.B   	R3,@R2		;
0036F2 62F3     	MOV     	R15,R2		;
0036F4 63F3     	MOV     	R15,R3		;
0036F6 7208     	ADD     	#08,R2		;
0036F8 7308     	ADD     	#08,R3		;
0036FA 8121     	MOV.W   	R0,@(#02,R2)	;
0036FC 60C3     	MOV     	R12,R0		;
0036FE 8034     	MOV.B   	R0,@(#04,R3)	;
003700 D30F     	MOV.L   	@(#03C,PC),R3	;
003702 430B     	JSR     	@R3			;
003704 E400     	MOV     	#00,R4		;
003706 6403     	MOV     	R0,R4			;
003708 62F3     	MOV     	R15,R2		;
00370A 6322     	MOV.L   	@R2,R3		;
00370C D20E     	MOV.L   	@(#038,PC),R2	;
00370E 2329     	AND     	R2,R3			;
003710 2E32     	MOV.L   	R3,@R14		;
003712 62F3     	MOV     	R15,R2		;
003714 8424     	MOV.B   	@(#04,R2),R0	;
003716 6303     	MOV     	R0,R3			;
003718 80E4     	MOV.B   	R0,@(#04,R14)	;
00371A 63F3     	MOV     	R15,R3		;
00371C 8435     	MOV.B   	@(#05,R3),R0	;
00371E 63F3     	MOV     	R15,R3		;
003720 80E5     	MOV.B   	R0,@(#05,R14)	;
003722 8436     	MOV.B   	@(#06,R3),R0	;
003724 63F3     	MOV     	R15,R3		;
003726 80E6     	MOV.B   	R0,@(#06,R14)	;
003728 8437     	MOV.B   	@(#07,R3),R0	;
00372A 6203     	MOV     	R0,R2			;
00372C 80E7     	MOV.B   	R0,@(#07,R14)	;
00372E 6043     	MOV     	R4,R0			;
003730 7F10     	ADD     	#10,R15		;
003732 4F26     	LDS.L   	@R15+,PR		;
003734 6CF6     	MOV.L   	@R15+,R12		;
003736 6DF6     	MOV.L   	@R15+,R13		;
003738 000B     	RTS     				;
00373A 6EF6     	MOV.L   	@R15+,R14		;
00373C 0000     	
00373E 3C32
003740 0000     	
003742 4762     	
003744 0000     	
003746 4750     	
003748 00FF
00374A FFFF     	
00374C 2FE6     	MOV.L   	R14,@-R15		;
00374E 6E53     	MOV     	R5,R14		;
003750 2FD6     	MOV.L   	R13,@-R15		;
003752 6D43     	MOV     	R4,R13		;
003754 2FC6     	MOV.L   	R12,@-R15		;
003756 6C63     	MOV     	R6,R12		;
003758 4F22     	STS.L   	PR,@-R15		;
00375A 7FF8     	ADD     	#F8,R15		;
00375C D322     	MOV.L   	@(#088,PC),R3	;
00375E 430B     	JSR     	@R3			;
003760 64F3     	MOV     	R15,R4		;
003762 62F3     	MOV     	R15,R2		;
003764 E355     	MOV     	#55,R3		;
003766 6EED     	EXTU.W   	R14,R14		;
003768 6DDC     	EXTU.B   	R13,R13		;
00376A 65F3     	MOV     	R15,R5		;
00376C 2230     	MOV.B   	R3,@R2		;
00376E 60E3     	MOV     	R14,R0		;
003770 62F3     	MOV     	R15,R2		;
003772 63F3     	MOV     	R15,R3		;
003774 8121     	MOV.W   	R0,@(#02,R2)	;
003776 62F3     	MOV     	R15,R2		;
003778 60D3     	MOV     	R13,R0		;
00377A 13C1     	MOV.L   	R12,@(#4,R3)	;
00377C 8024     	MOV.B   	R0,@(#04,R2)	;
00377E D31B     	MOV.L   	@(#06C,PC),R3	;
003780 430B     	JSR     	@R3			;
003782 E440     	MOV     	#40,R4		;
003784 6403     	MOV     	R0,R4			;
003786 7F08     	ADD     	#08,R15		;
003788 4F26     	LDS.L   	@R15+,PR		;
00378A 6CF6     	MOV.L   	@R15+,R12		;
00378C 6DF6     	MOV.L   	@R15+,R13		;
00378E 000B     	RTS     				
003790 6EF6     	MOV.L   	@R15+,R14		;
003792 2FE6     	MOV.L   	R14,@-R15		;
003794 2FD6     	MOV.L   	R13,@-R15		;
003796 6E63     	MOV     	R6,R14		;
003798 2FC6     	MOV.L   	R12,@-R15		;
00379A 6D53     	MOV     	R5,R13		;
00379C 4F22     	STS.L   	PR,@-R15		;
00379E 6C43     	MOV     	R4,R12		;
0037A0 7FF0     	ADD     	#F0,R15		;
0037A2 64F3     	MOV     	R15,R4		;
0037A4 D310     	MOV.L   	@(#040,PC),R3	;
0037A6 430B     	JSR     	@R3			;
0037A8 7408     	ADD     	#08,R4		;
0037AA 62F3     	MOV     	R15,R2		;
0037AC E356     	MOV     	#56,R3		;
0037AE 65F3     	MOV     	R15,R5		;
0037B0 64F3     	MOV     	R15,R4		;
0037B2 7208     	ADD     	#08,R2		;
0037B4 2230     	MOV.B   	R3,@R2		;
0037B6 BF6F     	BRS     	#1EDE			;
0037B8 7408     	ADD     	#08,R4		;
0037BA 6403     	MOV     	R0,R4			;
0037BC 62F3     	MOV     	R15,R2		;
0037BE 8521     	MOV.W   	@(#02,R2),R0	;
0037C0 6303     	MOV     	R0,R3			;
0037C2 633D     	EXTU.W   	R3,R3			;
0037C4 2D32     	MOV.L   	R3,@R13		;
0037C6 63F3     	MOV     	R15,R3		;
0037C8 8434     	MOV.B   	@(#04,R3),R0	;
0037CA 63F3     	MOV     	R15,R3		;
0037CC 6203     	MOV     	R0,R2			;
0037CE 622C     	EXTU.B   	R2,R2			;
0037D0 6043     	MOV     	R4,R0			;
0037D2 2C22     	MOV.L   	R2,@R12		;
0037D4 5231     	MOV.L   	@(#04,R3),R2	;
0037D6 D306     	MOV.L   	@(#018,PC),R3	;
0037D8 2239     	AND     	R3,R2			;
0037DA 2E22     	MOV.L   	R2,@R14		;
0037DC 7F10     	ADD     	#10,R15		;
0037DE 4F26     	LDS.L   	@R15+,PR		;
0037E0 6CF6     	MOV.L   	@R15+,R12		;
0037E2 6DF6     	MOV.L   	@R15+,R13		;
0037E4 000B     	RTS     				;
0037E6 6EF6     	MOV.L   	@R15+,R14		;
0037E8 0000     	
0037EA 4750     	
0037EC 0000     	
0037EE 4788     	
0037F0 00FF
0037F2 FFFF     	
0037F4 2FE6     	MOV.L   	R14,@-R15		;
0037F6 6E43     	MOV     	R4,R14		;
0037F8 2FD6     	MOV.L   	R13,@-R15		;
0037FA 6D53     	MOV     	R5,R13		;
0037FC 4F22     	STS.L   	PR,@-R15		;
0037FE 7FF8     	ADD     	#F8,R15		;
003800 D31E     	MOV.L   	@(#078,PC),R3	;
003802 430B     	JSR     	@R3			;
003804 64F3     	MOV     	R15,R4		;
003806 62F3     	MOV     	R15,R2		;
003808 E360     	MOV     	#60,R3		;
00380A 6EEC     	EXTU.B   	R14,R14		;
00380C 6DDC     	EXTU.B   	R13,R13		;
00380E 65F3     	MOV     	R15,R5		;
003810 2230     	MOV.B   	R3,@R2		;
003812 60E3     	MOV     	R14,R0		;
003814 62F3     	MOV     	R15,R2		;
003816 63F3     	MOV     	R15,R3		;
003818 8021     	MOV.B   	R0,@(#01,R2)	;
00381A 60D3     	MOV     	R13,R0		;
00381C 8032     	MOV.B   	R0,@(#02,R3)	;
00381E D318     	MOV.L   	@(#060,PC),R3	;
003820 430B     	JSR     	@R3			;
003822 E440     	MOV     	#40,R4		;
003824 6403     	MOV     	R0,R4			;
003826 7F08     	ADD     	#08,R15		;
003828 4F26     	LDS.L   	@R15+,PR		;
00382A 6DF6     	MOV.L   	@R15+,R13		;
00382C 000B     	RTS     				;
00382E 6EF6     	MOV.L   	@R15+,R14		;
003830 2FE6     	MOV.L   	R14,@-R15		;
003832 6E53     	MOV     	R5,R14		;
003834 2FD6     	MOV.L   	R13,@-R15		;
003836 6D63     	MOV     	R6,R13		;
003838 2FC6     	MOV.L   	R12,@-R15		;
00383A 6C43     	MOV     	R4,R12		;
00383C 4F22     	STS.L   	PR,@-R15		;
00383E 7FF8     	ADD     	#F8,R15		;
003840 D30E     	MOV.L   	@(#038,PC),R3	;
003842 430B     	JSR     	@R3			;
003844 64F3     	MOV     	R15,R4		;
003846 62F3     	MOV     	R15,R2		;
003848 E361     	MOV     	#61,R3		;
00384A 6EED     	EXTU.W   	R14,R14		;
00384C 6CCC     	EXTU.B   	R12,R12		;
00384E 6DDD     	EXTU.W   	R13,R13		;
003850 2230     	MOV.B   	R3,@R2		;
003852 60E3     	MOV     	R14,R0		;
003854 62F3     	MOV     	R15,R2		;
003856 63F3     	MOV     	R15,R3		;
003858 8121     	MOV.W   	R0,@(#02,R2)	;
00385A 60C3     	MOV     	R12,R0		;
00385C 8034     	MOV.B   	R0,@(#04,R3)	;
00385E 63F3     	MOV     	R15,R3		;
003860 60D3     	MOV     	R13,R0		;
003862 8133     	MOV.W   	R0,@(#06,R3)	;
003864 9409     	MOV.W   	@(#012,PC),R4	;
003866 D306     	MOV.L   	@(#018,PC),R3	;
003868 430B     	JSR     	@R3			;
00386A 65F3     	MOV     	R15,R5		;
00386C 6403     	MOV     	R0,R4			;
00386E 7F08     	ADD     	#08,R15		;
003870 4F26     	LDS.L   	@R15+,PR		;
003872 6CF6     	MOV.L   	@R15+,R12		;
003874 6DF6     	MOV.L   	@R15+,R13		;
003876 000B     	RTS     				;
003878 6EF6     	MOV.L   	@R15+,R14		;
00387A 0080     	
00387C 0000     	
00387E 4750     	
003880 0000     	
003882 4788     	
003884 2FE6     	MOV.L   	R14,@-R15		;
003886 6E53     	MOV     	R5,R14		;
003888 2FD6     	MOV.L   	R13,@-R15		;
00388A 6D63     	MOV     	R6,R13		;
00388C 2FC6     	MOV.L   	R12,@-R15		;
00388E 6C43     	MOV     	R4,R12		;
003890 4F22     	STS.L   	PR,@-R15		;
003892 7FF8     	ADD     	#F8,R15		;
003894 D321     	MOV.L   	@(#084,PC),R3	;
003896 430B     	JSR     	@R3			;
003898 64F3     	MOV     	R15,R4		;
00389A 62F3     	MOV     	R15,R2		;
00389C E362     	MOV     	#62,R3		;
00389E 6EED     	EXTU.W   	R14,R14		;
0038A0 6CCC     	EXTU.B   	R12,R12		;
0038A2 6DDD     	EXTU.W   	R13,R13		;
0038A4 2230     	MOV.B   	R3,@R2		;
0038A6 60E3     	MOV     	R14,R0		;
0038A8 62F3     	MOV     	R15,R2		;
0038AA 63F3     	MOV     	R15,R3		;
0038AC 8121     	MOV.W   	R0,@(#02,R2)	;
0038AE 60C3     	MOV     	R12,R0		;
0038B0 8034     	MOV.B   	R0,@(#04,R3)	;
0038B2 63F3     	MOV     	R15,R3		;
0038B4 60D3     	MOV     	R13,R0		;
0038B6 8133     	MOV.W   	R0,@(#06,R3)	;
0038B8 942E     	MOV.W   	@(#05C,PC),R4	;
0038BA D319     	MOV.L   	@(#064,PC),R3	;
0038BC 430B     	JSR     	@R3			;
0038BE 65F3     	MOV     	R15,R5		;
0038C0 6403     	MOV     	R0,R4			;
0038C2 7F08     	ADD     	#08,R15		;
0038C4 4F26     	LDS.L   	@R15+,PR		;
0038C6 6CF6     	MOV.L   	@R15+,R12		;
0038C8 6DF6     	MOV.L   	@R15+,R13		;
0038CA 000B     	RTS     				;
0038CC 6EF6     	MOV.L   	@R15+,R14		;

;CdcRet CDC_GetdelSctData (Sint32 bufno, Sint32 spos, Sint 32 snum)
L0038CE:							;int cdb_get_del_sector_data(u8 bufno,u16 spos,u16 snum)//bufno-R4,spos-R5,snum-R6
0038CE 2FE6     	MOV.L   	R14,@-R15		;
0038D0 2FD6     	MOV.L   	R13,@-R15		;
0038D2 6E53     	MOV     	R5,R14		;
0038D4 2FC6     	MOV.L   	R12,@-R15		;
0038D6 6D63     	MOV     	R6,R13		;
0038D8 4F22     	STS.L   	PR,@-R15		;
0038DA 6C43     	MOV     	R4,R12		;
0038DC 7FF8     	ADD     	#F8,R15		;
0038DE D30F     	MOV.L   	@(#03C,PC),R3	;u16 cmd[4];
0038E0 430B     	JSR     	@R3			;mem_clear8(cmd);//L004750
0038E2 64F3     	MOV     	R15,R4		;
0038E4 62F3     	MOV     	R15,R2		;
0038E6 E363     	MOV     	#63,R3		;
0038E8 6EED     	EXTU.W   	R14,R14		;
0038EA 6CCC     	EXTU.B   	R12,R12		;
0038EC 6DDD     	EXTU.W   	R13,R13		;
0038EE 2230     	MOV.B   	R3,@R2		;cmd[0] = 0x6300;
0038F0 60E3     	MOV     	R14,R0		;
0038F2 62F3     	MOV     	R15,R2		;
0038F4 63F3     	MOV     	R15,R3		;
0038F6 8121     	MOV.W   	R0,@(#02,R2)	;cmd[1] = spos;
0038F8 60C3     	MOV     	R12,R0		;
0038FA 8034     	MOV.B   	R0,@(#04,R3)	;cmd[2] = bufno<<8;
0038FC 63F3     	MOV     	R15,R3		;
0038FE 60D3     	MOV     	R13,R0		;
003900 8133     	MOV.W   	R0,@(#06,R3)	;cmd[3] = snum;
003902 9409     	MOV.W   	@(#012,PC),R4	;
003904 D306     	MOV.L   	@(#018,PC),R3	;
003906 430B     	JSR     	@R3			;return cdb_exec_cmd(0x0080,cmd);//L004788
003908 65F3     	MOV     	R15,R5		;
00390A 6403     	MOV     	R0,R4			;
00390C 7F08     	ADD     	#08,R15		;
00390E 4F26     	LDS.L   	@R15+,PR		;
003910 6CF6     	MOV.L   	@R15+,R12		;
003912 6DF6     	MOV.L   	@R15+,R13		;
003914 000B     	RTS     				;
003916 6EF6     	MOV.L   	@R15+,R14		;
003918 0080
00391A 5A39
00391C 00004750
003920 00004788
003924 2FE6     	MOV.L   	R14,@-R15		;
003926 6E43     	MOV     	R4,R14		;
003928 2FD6     	MOV.L   	R13,@-R15		;
00392A 6D53     	MOV     	R5,R13		;
00392C 4F22     	STS.L   	PR,@-R15		;
00392E 7FF8     	ADD     	#F8,R15		;
003930 D322     	MOV.L   	@(#088,PC),R3	;
003932 430B     	JSR     	@R3			;
003934 64F3     	MOV     	R15,R4		;
003936 62F3     	MOV     	R15,R2		;
003938 E364     	MOV     	#64,R3		;
00393A 6EEC     	EXTU.B   	R14,R14		;
00393C 6DDD     	EXTU.W   	R13,R13		;
00393E 2230     	MOV.B   	R3,@R2		;
003940 60E3     	MOV     	R14,R0		;
003942 62F3     	MOV     	R15,R2		;
003944 63F3     	MOV     	R15,R3		;
003946 8024     	MOV.B   	R0,@(#04,R2)	;
003948 60D3     	MOV     	R13,R0		;
00394A 8133     	MOV.W   	R0,@(#06,R3)	;
00394C 9434     	MOV.W   	@(#068,PC),R4	;
00394E D31C     	MOV.L   	@(#070,PC),R3	;
003950 430B     	JSR     	@R3			;
003952 65F3     	MOV     	R15,R5		;
003954 6403     	MOV     	R0,R4			;
003956 7F08     	ADD     	#08,R15		;
003958 4F26     	LDS.L   	@R15+,PR		;
00395A 6DF6     	MOV.L   	@R15+,R13		;
00395C 000B     	RTS     				;
00395E 6EF6     	MOV.L   	@R15+,R14		;
003960 2FE6     	MOV.L   	R14,@-R15		;
003962 6E73     	MOV     	R7,R14		;
003964 2FD6     	MOV.L   	R13,@-R15		;
003966 6D43     	MOV     	R4,R13		;
003968 2FC6     	MOV.L   	R12,@-R15		;
00396A 6C63     	MOV     	R6,R12		;
00396C 2FB6     	MOV.L   	R11,@-R15		;
00396E 6B53     	MOV     	R5,R11		;
003970 4F22     	STS.L   	PR,@-R15		;
003972 7FF8     	ADD     	#F8,R15		;
003974 D311     	MOV.L   	@(#044,PC),R3	;
003976 430B     	JSR     	@R3			;
003978 64F3     	MOV     	R15,R4		;
00397A 62F3     	MOV     	R15,R2		;
00397C E365     	MOV     	#65,R3		;
00397E 6EEC     	EXTU.B   	R14,R14		;
003980 6BBD     	EXTU.W   	R11,R11		;
003982 6DDC     	EXTU.B   	R13,R13		;
003984 6CCD     	EXTU.W   	R12,R12		;
003986 2230     	MOV.B   	R3,@R2		;
003988 60E3     	MOV     	R14,R0		;
00398A 62F3     	MOV     	R15,R2		;
00398C 63F3     	MOV     	R15,R3		;
00398E 8021     	MOV.B   	R0,@(#01,R2)	;
003990 60B3     	MOV     	R11,R0		;
003992 8131     	MOV.W   	R0,@(#02,R3)	;
003994 63F3     	MOV     	R15,R3		;
003996 60D3     	MOV     	R13,R0		;
003998 8034     	MOV.B   	R0,@(#04,R3)	;
00399A 63F3     	MOV     	R15,R3		;
00399C 60C3     	MOV     	R12,R0		;
00399E 8133     	MOV.W   	R0,@(#06,R3)	;
0039A0 940B     	MOV.W   	@(#016,PC),R4	;
0039A2 D307     	MOV.L   	@(#01C,PC),R3	;
0039A4 430B     	JSR     	@R3			;
0039A6 65F3     	MOV     	R15,R5		;
0039A8 6403     	MOV     	R0,R4			;
0039AA 7F08     	ADD     	#08,R15		;
0039AC 4F26     	LDS.L   	@R15+,PR		;
0039AE 6BF6     	MOV.L   	@R15+,R11		;
0039B0 6CF6     	MOV.L   	@R15+,R12		;
0039B2 6DF6     	MOV.L   	@R15+,R13		;
0039B4 000B     	RTS     				;
0039B6 6EF6     	MOV.L   	@R15+,R14		;
0039B8 0080     	
0039BA 0100     	
0039BC 0000     	
0039BE 4750     	
0039C0 0000     	
0039C2 4788     	
0039C4 2FE6     	MOV.L   	R14,@-R15		;
0039C6 6E73     	MOV     	R7,R14		;
0039C8 2FD6     	MOV.L   	R13,@-R15		;
0039CA 6D43     	MOV     	R4,R13		;
0039CC 2FC6     	MOV.L   	R12,@-R15		;
0039CE 6C63     	MOV     	R6,R12		;
0039D0 2FB6     	MOV.L   	R11,@-R15		;
0039D2 6B53     	MOV     	R5,R11		;
0039D4 4F22     	STS.L   	PR,@-R15		;
0039D6 7FF8     	ADD     	#F8,R15		;
0039D8 D31F     	MOV.L   	@(#07C,PC),R3	;
0039DA 430B     	JSR     	@R3			;
0039DC 64F3     	MOV     	R15,R4		;
0039DE 62F3     	MOV     	R15,R2		;
0039E0 E366     	MOV     	#66,R3		;
0039E2 6EEC     	EXTU.B   	R14,R14		;
0039E4 6BBD     	EXTU.W   	R11,R11		;
0039E6 6DDC     	EXTU.B   	R13,R13		;
0039E8 6CCD     	EXTU.W   	R12,R12		;
0039EA 2230     	MOV.B   	R3,@R2		;
0039EC 60E3     	MOV     	R14,R0		;
0039EE 62F3     	MOV     	R15,R2		;
0039F0 63F3     	MOV     	R15,R3		;
0039F2 8021     	MOV.B   	R0,@(#01,R2)	;
0039F4 60B3     	MOV     	R11,R0		;
0039F6 8131     	MOV.W   	R0,@(#02,R3)	;
0039F8 63F3     	MOV     	R15,R3		;
0039FA 60D3     	MOV     	R13,R0		;
0039FC 8034     	MOV.B   	R0,@(#04,R3)	;
0039FE 63F3     	MOV     	R15,R3		;
003A00 60C3     	MOV     	R12,R0		;
003A02 8133     	MOV.W   	R0,@(#06,R3)	;
003A04 9427     	MOV.W   	@(#04E,PC),R4	;
003A06 D315     	MOV.L   	@(#054,PC),R3	;
003A08 430B     	JSR     	@R3			;
003A0A 65F3     	MOV     	R15,R5		;
003A0C 6403     	MOV     	R0,R4			;
003A0E 7F08     	ADD     	#08,R15		;
003A10 4F26     	LDS.L   	@R15+,PR		;
003A12 6BF6     	MOV.L   	@R15+,R11		;
003A14 6CF6     	MOV.L   	@R15+,R12		;
003A16 6DF6     	MOV.L   	@R15+,R13		;
003A18 000B     	RTS     				;
003A1A 6EF6     	MOV.L   	@R15+,R14		;
003A1C 2FE6     	MOV.L   	R14,@-R15		;
003A1E 6E43     	MOV     	R4,R14		;
003A20 4F22     	STS.L   	PR,@-R15		;
003A22 7FF0     	ADD     	#F0,R15		;
003A24 64F3     	MOV     	R15,R4		;
003A26 D30C     	MOV.L   	@(#030,PC),R3	;
003A28 430B     	JSR     	@R3			;
003A2A 7408     	ADD     	#08,R4		;
003A2C 62F3     	MOV     	R15,R2		;
003A2E E367     	MOV     	#67,R3		;
003A30 66F3     	MOV     	R15,R6		;
003A32 65F3     	MOV     	R15,R5		;
003A34 7208     	ADD     	#08,R2		;
003A36 7508     	ADD     	#08,R5		;
003A38 2230     	MOV.B   	R3,@R2		;
003A3A D309     	MOV.L   	@(#024,PC),R3	;
003A3C 430B     	JSR     	@R3			;
003A3E E400     	MOV     	#00,R4		;
003A40 6403     	MOV     	R0,R4			;
003A42 62F3     	MOV     	R15,R2		;
003A44 8421     	MOV.B   	@(#01,R2),R0	;
003A46 6303     	MOV     	R0,R3			;
003A48 633C     	EXTU.B   	R3,R3			;
003A4A 6043     	MOV     	R4,R0			;
003A4C 2E32     	MOV.L   	R3,@R14		;
003A4E 7F10     	ADD     	#10,R15		;
003A50 4F26     	LDS.L   	@R15+,PR		;
003A52 000B     	RTS     				;
003A54 6EF6     	MOV.L   	@R15+,R14		;
003A56 0100     	
003A58 0000     	
003A5A 4750     	
003A5C 0000     	
003A5E 4788     	
003A60 0000     	
003A62 4762     	
003A64 2FE6     	MOV.L   	R14,@-R15		;
003A66 6E53     	MOV     	R5,R14		;
003A68 2FD6     	MOV.L   	R13,@-R15		;
003A6A 6D43     	MOV     	R4,R13		;
003A6C 4F22     	STS.L   	PR,@-R15		;
003A6E 7FF8     	ADD     	#F8,R15		;
003A70 D319     	MOV.L   	@(#064,PC),R3	;
003A72 430B     	JSR     	@R3			;
003A74 64F3     	MOV     	R15,R4		;
003A76 62F3     	MOV     	R15,R2		;
003A78 E370     	MOV     	#70,R3		;
003A7A 6DDC     	EXTU.B   	R13,R13		;
003A7C 2230     	MOV.B   	R3,@R2		;
003A7E 60D3     	MOV     	R13,R0		;
003A80 62F3     	MOV     	R15,R2		;
003A82 63F3     	MOV     	R15,R3		;
003A84 12E1     	MOV.L   	R14,@(#4,R2)	;
003A86 8034     	MOV.B   	R0,@(#04,R3)	;
003A88 9424     	MOV.W   	@(#048,PC),R4	;
003A8A D314     	MOV.L   	@(#050,PC),R3	;
003A8C 430B     	JSR     	@R3			;
003A8E 65F3     	MOV     	R15,R5		;
003A90 6403     	MOV     	R0,R4			;
003A92 7F08     	ADD     	#08,R15		;
003A94 4F26     	LDS.L   	@R15+,PR		;
003A96 6DF6     	MOV.L   	@R15+,R13		;
003A98 000B     	RTS     				;
003A9A 6EF6     	MOV.L   	@R15+,R14		;
003A9C 2FE6     	MOV.L   	R14,@-R15		;
003A9E 6E53     	MOV     	R5,R14		;
003AA0 2FD6     	MOV.L   	R13,@-R15		;
003AA2 6D43     	MOV     	R4,R13		;
003AA4 4F22     	STS.L   	PR,@-R15		;
003AA6 7FF8     	ADD     	#F8,R15		;
003AA8 D30B     	MOV.L   	@(#02C,PC),R3	;
003AAA 430B     	JSR     	@R3			;
003AAC 64F3     	MOV     	R15,R4		;
003AAE 62F3     	MOV     	R15,R2		;
003AB0 E371     	MOV     	#71,R3		;
003AB2 6DDC     	EXTU.B   	R13,R13		;
003AB4 2230     	MOV.B   	R3,@R2		;
003AB6 60D3     	MOV     	R13,R0		;
003AB8 62F3     	MOV     	R15,R2		;
003ABA 63F3     	MOV     	R15,R3		;
003ABC 12E1     	MOV.L   	R14,@(#4,R2)	;
003ABE 8034     	MOV.B   	R0,@(#04,R3)	;
003AC0 9408     	MOV.W   	@(#010,PC),R4	;
003AC2 D306     	MOV.L   	@(#018,PC),R3	;
003AC4 430B     	JSR     	@R3			;
003AC6 65F3     	MOV     	R15,R5		;
003AC8 6403     	MOV     	R0,R4			;
003ACA 7F08     	ADD     	#08,R15		;
003ACC 4F26     	LDS.L   	@R15+,PR		;
003ACE 6DF6     	MOV.L   	@R15+,R13		;
003AD0 000B     	RTS     				;
003AD2 6EF6     	MOV.L   	@R15+,R14		;
003AD4 0200     	
003AD6 7DA0
003AD8 0000     	
003ADA 4750     	
003ADC 0000     	
003ADE 4788     	
003AE0 2FE6     	MOV.L   	R14,@-R15		;
003AE2 6E43     	MOV     	R4,R14		;
003AE4 2FD6     	MOV.L   	R13,@-R15		;
003AE6 6D53     	MOV     	R5,R13		;
003AE8 2FC6     	MOV.L   	R12,@-R15		;
003AEA 6C63     	MOV     	R6,R12		;
003AEC 4F22     	STS.L   	PR,@-R15		;
003AEE 7FF0     	ADD     	#F0,R15		;
003AF0 64F3     	MOV     	R15,R4		;
003AF2 D323     	MOV.L   	@(#08C,PC),R3	;
003AF4 430B     	JSR     	@R3			;
003AF6 7408     	ADD     	#08,R4		;
003AF8 62F3     	MOV     	R15,R2		;
003AFA E372     	MOV     	#72,R3		;
003AFC 66F3     	MOV     	R15,R6		;
003AFE 65F3     	MOV     	R15,R5		;
003B00 7208     	ADD     	#08,R2		;
003B02 7508     	ADD     	#08,R5		;
003B04 2230     	MOV.B   	R3,@R2		;
003B06 D31F     	MOV.L   	@(#07C,PC),R3	;
003B08 430B     	JSR     	@R3			;
003B0A E400     	MOV     	#00,R4		;
003B0C 6403     	MOV     	R0,R4			;
003B0E 62F3     	MOV     	R15,R2		;
003B10 8521     	MOV.W   	@(#02,R2),R0	;
003B12 6303     	MOV     	R0,R3			;
003B14 633D     	EXTU.W   	R3,R3			;
003B16 2D32     	MOV.L   	R3,@R13		;
003B18 63F3     	MOV     	R15,R3		;
003B1A 8434     	MOV.B   	@(#04,R3),R0	;
003B1C 63F3     	MOV     	R15,R3		;
003B1E 6203     	MOV     	R0,R2			;
003B20 622C     	EXTU.B   	R2,R2			;
003B22 6043     	MOV     	R4,R0			;
003B24 2C22     	MOV.L   	R2,@R12		;
003B26 5231     	MOV.L   	@(#04,R3),R2	;
003B28 D317     	MOV.L   	@(#05C,PC),R3	;
003B2A 2239     	AND     	R3,R2			;
003B2C 2E22     	MOV.L   	R2,@R14		;
003B2E 7F10     	ADD     	#10,R15		;
003B30 4F26     	LDS.L   	@R15+,PR		;
003B32 6CF6     	MOV.L   	@R15+,R12		;
003B34 6DF6     	MOV.L   	@R15+,R13		;
003B36 000B     	RTS     				;
003B38 6EF6     	MOV.L   	@R15+,R14		;
003B3A 2FE6     	MOV.L   	R14,@-R15		;
003B3C 2FD6     	MOV.L   	R13,@-R15		;
003B3E 6E43     	MOV     	R4,R14		;
003B40 4F22     	STS.L   	PR,@-R15		;
003B42 6D53     	MOV     	R5,R13		;
003B44 7FEC     	ADD     	#EC,R15		;
003B46 64F3     	MOV     	R15,R4		;
003B48 D30D     	MOV.L   	@(#034,PC),R3	;
003B4A 430B     	JSR     	@R3			;
003B4C 740C     	ADD     	#0C,R4		;
003B4E 62F3     	MOV     	R15,R2		;
003B50 E373     	MOV     	#73,R3		;
003B52 66F3     	MOV     	R15,R6		;
003B54 65F3     	MOV     	R15,R5		;
003B56 720C     	ADD     	#0C,R2		;
003B58 7604     	ADD     	#04,R6		;
003B5A 750C     	ADD     	#0C,R5		;
003B5C 2230     	MOV.B   	R3,@R2		;
003B5E 62F3     	MOV     	R15,R2		;
003B60 63F3     	MOV     	R15,R3		;
003B62 720C     	ADD     	#0C,R2		;
003B64 730C     	ADD     	#0C,R3		;
003B66 12E1     	MOV.L   	R14,@(#4,R2)	;
003B68 E200     	MOV     	#00,R2		;
003B6A 6023     	MOV     	R2,R0			;
003B6C 8034     	MOV.B   	R0,@(#04,R3)	;
003B6E D305     	MOV.L   	@(#014,PC),R3	;
003B70 430B     	JSR     	@R3			;
003B72 E400     	MOV     	#00,R4		;
003B74 6403     	MOV     	R0,R4			;
003B76 2448     	TST     	R4,R4			;
003B78 8908     	BT      	#010			;
003B7A A012     	BRA     	#0024			;
003B7C 6043     	MOV     	R4,R0			;
003B7E 40A4     	
003B80 0000     	
003B82 4750     	
003B84 0000     	
003B86 4762     	
003B88 00FF
003B8A FFFF     	
003B8C 63F3     	MOV     	R15,R3		;
003B8E 65D3     	MOV     	R13,R5		;
003B90 7304     	ADD     	#04,R3		;
003B92 6232     	MOV.L   	@R3,R2		;
003B94 D320     	MOV.L   	@(#080,PC),R3	;
003B96 2239     	AND     	R3,R2			;
003B98 2F22     	MOV.L   	R2,@R15		;
003B9A D320     	MOV.L   	@(#080,PC),R3	;
003B9C 430B     	JSR     	@R3			;
003B9E 6423     	MOV     	R2,R4			;
003BA0 6403     	MOV     	R0,R4			;
003BA2 7F14     	ADD     	#14,R15		;
003BA4 4F26     	LDS.L   	@R15+,PR		;
003BA6 6DF6     	MOV.L   	@R15+,R13		;
003BA8 000B     	RTS     				;
003BAA 6EF6     	MOV.L   	@R15+,R14		;
003BAC 2FE6     	MOV.L   	R14,@-R15		;
003BAE 6E63     	MOV     	R6,R14		;
003BB0 2FD6     	MOV.L   	R13,@-R15		;
003BB2 6D43     	MOV     	R4,R13		;
003BB4 2FC6     	MOV.L   	R12,@-R15		;
003BB6 6C53     	MOV     	R5,R12		;
003BB8 4F22     	STS.L   	PR,@-R15		;
003BBA 7FF8     	ADD     	#F8,R15		;
003BBC D318     	MOV.L   	@(#060,PC),R3	;
003BBE 430B     	JSR     	@R3			;
003BC0 64F3     	MOV     	R15,R4		;
003BC2 62F3     	MOV     	R15,R2		;
003BC4 63F3     	MOV     	R15,R3		;
003BC6 6DDC     	EXTU.B   	R13,R13		;
003BC8 22E2     	MOV.L   	R14,@R2		;
003BCA 60D3     	MOV     	R13,R0		;
003BCC E274     	MOV     	#74,R2		;
003BCE 2320     	MOV.B   	R2,@R3		;
003BD0 63F3     	MOV     	R15,R3		;
003BD2 62F3     	MOV     	R15,R2		;
003BD4 13C1     	MOV.L   	R12,@(#4,R3)	;
003BD6 8024     	MOV.B   	R0,@(#04,R2)	;
003BD8 941D     	MOV.W   	@(#03A,PC),R4	;
003BDA D312     	MOV.L   	@(#048,PC),R3	;
003BDC 430B     	JSR     	@R3			;
003BDE 65F3     	MOV     	R15,R5		;
003BE0 6403     	MOV     	R0,R4			;
003BE2 7F08     	ADD     	#08,R15		;
003BE4 4F26     	LDS.L   	@R15+,PR		;
003BE6 6CF6     	MOV.L   	@R15+,R12		;
003BE8 6DF6     	MOV.L   	@R15+,R13		;
003BEA 000B     	RTS     				;
003BEC 6EF6     	MOV.L   	@R15+,R14		;
003BEE 4F22     	STS.L   	PR,@-R15		;
003BF0 7FF8     	ADD     	#F8,R15		;
003BF2 D30B     	MOV.L   	@(#02C,PC),R3	;
003BF4 430B     	JSR     	@R3			;
003BF6 64F3     	MOV     	R15,R4		;
003BF8 62F3     	MOV     	R15,R2		;
003BFA E375     	MOV     	#75,R3		;
003BFC 2230     	MOV.B   	R3,@R2		;
003BFE 940A     	MOV.W   	@(#014,PC),R4	;
003C00 D309     	MOV.L   	@(#024,PC),R3	;
003C02 430B     	JSR     	@R3			;
003C04 0009     	NOP     				;
003C06 9406     	MOV.W   	@(#00C,PC),R4	;
003C08 D306     	MOV.L   	@(#018,PC),R3	;
003C0A 430B     	JSR     	@R3			;
003C0C 65F3     	MOV     	R15,R5		;
003C0E 7F08     	ADD     	#08,R15		;
003C10 4F26     	LDS.L   	@R15+,PR		;
003C12 000B     	RTS     				;
003C14 6403     	MOV     	R0,R4			;
003C16 0200
003C18 00FF
003C1A FFFF
003C1C 0000
003C1E 3CA0
003C20 0000
003C22 4750
003C24 0000
003C26 4788
003C28 0000
003C2A 3C76

L003C2C:							;
003C2C D00A     	MOV.L   	@(#028,PC),R0	;
003C2E 000B     	RTS     				;return 0x25818000;
003C30 0009     	NOP     				;

L003C32:							;u16 cdb_read_hirq()
003C32 D00A     	MOV.L   	@(#028,PC),R0	; 
003C34 000B     	RTS     				;
003C36 6001     	MOV.W   	@R0,R0		;return CDB.HIRQ;

L003C38:							;void cdb_ack_hirq(u16 mask)//mask-R4
003C38 4F22     	STS.L   	PR,@-R15		;
003C3A D308     	MOV.L   	@(#020,PC),R3	;
003C3C 6331     	MOV.W   	@R3,R3		;
003C3E 633D     	EXTU.W   	R3,R3			;
003C40 D207     	MOV.L   	@(#01C,PC),R2	;
003C42 6221     	MOV.W   	@R2,R2		;
003C44 223B     	OR      	R3,R2			;
003C46 D306     	MOV.L   	@(#018,PC),R3	;
003C48 2321     	MOV.W   	R2,@R3		;last_hirq |= CDB.HIRQ;
003C4A E101     	MOV     	#01,R1		;
003C4C 241B     	OR      	R1,R4			;mask |= HIRQ_CMOK;
003C4E A000     	BRA     	L003C52		;return cdb_clear_hirq(mask);
003C50 4F26     	LDS.L   	@R15+,PR		;

L003C52:							;void cdb_clear_hirq(u16 mask)//mask-R4
003C52 D302     	MOV.L   	@(#008,PC),R3	;
003C54 000B     	RTS     				;
003C56 2341     	MOV.W   	R4,@R3		;CDB.HIRQ = mask;
003C58 25818000
003C5C 25890008
003C60 060003A4


003C64 4F22     	STS.L   	PR,@-R15		;
003C66 9410     	MOV.W   	@(#020,PC),R4	;
003C68 BFF3     	BRS     	#1FE6			;
003C6A 0009     	NOP     				;
003C6C E200     	MOV     	#00,R2		;
003C6E D307     	MOV.L   	@(#01C,PC),R3	;
003C70 4F26     	LDS.L   	@R15+,PR		;
003C72 000B     	RTS     				;
003C74 2321     	MOV.W   	R2,@R3		;
003C76 644D     	EXTU.W   	R4,R4			;
003C78 D304     	MOV.L   	@(#010,PC),R3	;
003C7A D204     	MOV.L   	@(#010,PC),R2	;
003C7C 6331     	MOV.W   	@R3,R3		;
003C7E 234B     	OR      	R4,R3			;
003C80 000B     	RTS     				;
003C82 2231     	MOV.W   	R3,@R2		;
003C84 D002     	MOV.L   	@(#008,PC),R0	;
003C86 000B     	RTS     				;
003C88 6001     	MOV.W   	@R0,R0		;
003C8A 0BE1     	
003C8C 0600     	
003C8E 03A4     	MOV.B   	R10,@(R0,R3)	;
003C90 2589     	AND     	R8,R5			;
003C92 000C     	MOV.B   	@(R0,R0),R0		;
003C94 D30A     	MOV.L   	@(#028,PC),R3	;
003C96 000B     	RTS     				;
003C98 2341     	MOV.W   	R4,@R3		;
003C9A D00A     	MOV.L   	@(#028,PC),R0	;
003C9C 000B     	RTS     				;
003C9E 0009     	NOP     				;

L003CA0:							;(u16* dst,u16* src,int len)//dst-R12,src-R13,len-R14
003CA0 2FE6     	MOV.L   	R14,@-R15		;
003CA2 6E43     	MOV     	R4,R14		;
003CA4 2FD6     	MOV.L   	R13,@-R15		;
003CA6 2FC6     	MOV.L   	R12,@-R15		;
003CA8 4F22     	STS.L   	PR,@-R15		;
003CAA 6C53     	MOV     	R5,R12		;
003CAC 7FFC     	ADD     	#FC,R15		;
003CAE DD06     	MOV.L   	@(#018,PC),R13	;
003CB0 D306     	MOV.L   	@(#018,PC),R3	;
003CB2 430B     	JSR     	@R3			;
003CB4 E400     	MOV     	#00,R4		;
003CB6 6403     	MOV     	R0,R4			;
003CB8 2448     	TST     	R4,R4			;
003CBA 8909     	BT      	L003CD0		;
003CBC A01D     	BRA     	#003A			;
003CBE 6043     	MOV     	R4,R0			;
003CC0 2589
003CC2 000C
003CC4 2581
003CC6 8028
003CC8 2589
003CCA 8000
003CCC 0000
003CCE 2F9C
L003CD0:
003CD0 64C3     	MOV     	R12,R4		;
003CD2 4E15     	CMP/PL  	R14			;
003CD4 8F06     	BF/S    	L003CE4		;if (len >= 0) {
003CD6 E500     	MOV     	#00,R5		;
L003CD8:
003CD8 62D1     	MOV.W   	@R13,R2		;  for (int i=0; i<len; i++)
003CDA 7501     	ADD     	#01,R5		;
003CDC 2421     	MOV.W   	R2,@R4		;    dst[i] = *src;
003CDE 35E3     	CMP/GE 	R14,R5		;
003CE0 8FFA     	BF/S    	L003CD8		;  }
003CE2 7402     	ADD     	#02,R4		;}
L003CE4:
003CE4 D322     	MOV.L   	@(#088,PC),R3	;
003CE6 430B     	JSR     	@R3			;ret = L002FFC();
003CE8 64F3     	MOV     	R15,R4		;
003CEA 6403     	MOV     	R0,R4			;
003CEC 2448     	TST     	R4,R4			;
003CEE 8B03     	BF      	L003CF8		;ret != 0
003CF0 63F2     	MOV.L   	@R15,R3		;
003CF2 3E30     	CMP/EQ 	R3,R14		;
003CF4 8900     	BT      	L003CF8		;
003CF6 E4F9     	MOV     	#F9,R4		;
L003CF8:
003CF8 6043     	MOV     	R4,R0			;
003CFA 7F04     	ADD     	#04,R15		;
003CFC 4F26     	LDS.L   	@R15+,PR		;
003CFE 6CF6     	MOV.L   	@R15+,R12		;
003D00 6DF6     	MOV.L   	@R15+,R13		;
003D02 000B     	RTS     				;
003D04 6EF6     	MOV.L   	@R15+,R14		;

L003D06:							;int cdb_send_cmd(u16 imask,u16* cmd, arg3)//imask-R4,cmd-R5,arg3-R6
003D06 2FE6     	MOV.L   	R14,@-R15		;
003D08 4F22     	STS.L   	PR,@-R15		;
003D0A 0002     	STC     	SR, R0		;
003D0C 4009     	SHLR2   	R0			;
003D0E 4009     	SHLR2   	R0			;
003D10 C90F     	AND     	#0F,R0		;
003D12 6E03     	MOV     	R0,R14		;//save SR
003D14 0002     	STC     	SR, R0		;
003D16 9329     	MOV.W   	@(#052,PC),R3	;
003D18 2039     	AND     	R3,R0			;
003D1A CBF0     	OR      	#F0,R0		;
003D1C 400E     	LDC     	R0,SR			;//disable interrupts
003D1E B00E     	BRS     	L003D3E		;int err = cdb_send_cmd_inner(imask,cmd,arg3);
003D20 0009     	NOP     				;
003D22 6403     	MOV     	R0,R4			;
003D24 60E3     	MOV     	R14,R0		;
003D26 C90F     	AND     	#0F,R0		;
003D28 4008     	SHLL2   	R0			;
003D2A 4008     	SHLL2   	R0			;
003D2C 0202     	STC     	SR, R2		;
003D2E 931D     	MOV.W   	@(#03A,PC),R3	;
003D30 2239     	AND     	R3,R2			;
003D32 202B     	OR      	R2,R0			;
003D34 400E     	LDC     	R0,SR			;//restore SR
003D36 6043     	MOV     	R4,R0			;
003D38 4F26     	LDS.L   	@R15+,PR		;
003D3A 000B     	RTS     				;return err;
003D3C 6EF6     	MOV.L   	@R15+,R14		;

L003D3E:							;int cdb_send_cmd_inner(u16 imask,u16* cmd,u16* resp)//imask-R4,cmd-R5,resp-R6
003D3E 2FE6     	MOV.L   	R14,@-R15		;
003D40 2FD6     	MOV.L   	R13,@-R15		;
003D42 6D53     	MOV     	R5,R13		;
003D44 2FC6     	MOV.L   	R12,@-R15		;
003D46 6C43     	MOV     	R4,R12		;
003D48 2FB6     	MOV.L   	R11,@-R15		;
003D4A 4F22     	STS.L   	PR,@-R15		;
003D4C 7FFC     	ADD     	#FC,R15		;
003D4E DE09     	MOV.L   	@(#024,PC),R14	;
003D50 D309     	MOV.L   	@(#024,PC),R3	;
003D52 62E1     	MOV.W   	@R14,R2		;
003D54 6331     	MOV.W   	@R3,R3		;
003D56 633D     	EXTU.W   	R3,R3			;
003D58 223B     	OR      	R3,R2			;
003D5A 2E21     	MOV.W   	R2,@R14		;last_hirq |= CDB.HIRQ;
003D5C 63E1     	MOV.W   	@R14,R3		;
003D5E 633D     	EXTU.W   	R3,R3			;
003D60 23C9     	AND     	R12,R3		;
003D62 33C0     	CMP/EQ 	R12,R3		;
003D64 8D0A     	BT/S    	L003D7C		;if (last_hirq & imask != imask) return -1;
003D66 6B63     	MOV     	R6,R11		;
003D68 A035     	BRA     	L003DD6		;
003D6A E0FF     	MOV     	#FF,R0		;
003D6C FF0F
003D6E D10A
003D70 00002FFC
003D74 060003A4
003D78 25890008
L003D7C:
003D7C 60E1     	MOV.W   	@R14,R0		;
003D7E 600D     	EXTU.W   	R0,R0			;
003D80 C801     	TST     	#01,R0		;
003D82 8B01     	BF      	L003D88		;
003D84 A027     	BRA     	L003DD6		;
003D86 E0FE     	MOV     	#FE,R0		;
L003D88:
003D88 E401     	MOV     	#01,R4		;
003D8A 24CB     	OR      	R12,R4		;imask |= 0x0001;
003D8C 6447     	NOT     	R4,R4			;imask = ~imask;
003D8E BF60     	BRS     	L003C52		;L003C52();
003D90 644D     	EXTU.W   	R4,R4			;
003D92 E2FE     	MOV     	#FE,R2		;
003D94 63E1     	MOV.W   	@R14,R3		;
003D96 2329     	AND     	R2,R3			;
003D98 2E31     	MOV.W   	R3,@R14		;last_hirq &= ~0x0001;
003D9A B041     	BRS     	L003E20		;cdb_write_cr(cmd);
003D9C 64D3     	MOV     	R13,R4		;
003D9E 65F3     	MOV     	R15,R5		;
003DA0 B020     	BRS     	L003DE4		;
003DA2 E401     	MOV     	#01,R4		;
003DA4 6D03     	MOV     	R0,R13		;
003DA6 2DD8     	TST     	R13,R13		;
003DA8 8901     	BT      	#002			;
003DAA A014     	BRA     	#0028			;
003DAC 60D3     	MOV     	R13,R0		;
003DAE B048     	BRS     	L003E42		;cdb_read_rr(resp);
003DB0 64B3     	MOV     	R11,R4		;
003DB2 64B0     	MOV.B   	@R11,R4		;
003DB4 9327     	MOV.W   	@(#04E,PC),R3	;
003DB6 624C     	EXTU.B   	R4,R2			;
003DB8 3230     	CMP/EQ 	R3,R2			;
003DBA 8B01     	BF      	#002			;
003DBC A004     	BRA     	#0008			;
003DBE EDFB     	MOV     	#FB,R13		;
003DC0 604C     	EXTU.B   	R4,R0			;
003DC2 C880     	TST     	#80,R0		;
003DC4 8900     	BT      	#000			;
003DC6 EDFA     	MOV     	#FA,R13		;
003DC8 2DD8     	TST     	R13,R13		;
003DCA 8B03     	BF      	#006			;
003DCC 6CC7     	NOT     	R12,R12		;
003DCE 63E1     	MOV.W   	@R14,R3		;
003DD0 23C9     	AND     	R12,R3		;
003DD2 2E31     	MOV.W   	R3,@R14		;
003DD4 60D3     	MOV     	R13,R0		;
L003DD6:
003DD6 7F04     	ADD     	#04,R15		;
003DD8 4F26     	LDS.L   	@R15+,PR		;
003DDA 6BF6     	MOV.L   	@R15+,R11		;
003DDC 6CF6     	MOV.L   	@R15+,R12		;
003DDE 6DF6     	MOV.L   	@R15+,R13		;
003DE0 000B     	RTS     				;
003DE2 6EF6     	MOV.L   	@R15+,R14		;

L003DE4:							;int cdb_wait_hirq(u16 mask,u16* irq)//arg1-R4,irq-R5
003DE4 2FE6     	MOV.L   	R14,@-R15		;
003DE6 2FD6     	MOV.L   	R13,@-R15		;
003DE8 2FB6     	MOV.L   	R11,@-R15		;
003DEA DB07     	MOV.L   	@(#01C,PC),R11	;
003DEC DD07     	MOV.L   	@(#01C,PC),R13	;
003DEE EE00     	MOV     	#00,R14		;
003DF0 E1FD     	MOV     	#FD,R1		;
003DF2 67E3     	MOV     	R14,R7		;int i = 0;
L003DF4:
003DF4 66B1     	MOV.W   	@R11,R6		;do {
003DF6 624D     	EXTU.W   	R4,R2			;
003DF8 636D     	EXTU.W   	R6,R3			;
003DFA 2329     	AND     	R2,R3			;
003DFC 2338     	TST     	R3,R3			;
003DFE 8907     	BT      	L003E10		;  if (CDB.HIRQ & mask != 0) {
003E00 61E3     	MOV     	R14,R1		;
003E02 A008     	BRA     	L003E16		;    *irq = CDB.HIRQ;
003E04 2561     	MOV.W   	R6,@R5		;    return 0;
003E06 00FF							;  }
003E08 25890008
003E0C 00240000
L003E10:
003E10 7701     	ADD     	#01,R7		;
003E12 37D3     	CMP/GE 	R13,R7		;
003E14 8BEE     	BF      	L003DF4		;} while (++i < 0x00240000);
L003E16:
003E16 6013     	MOV     	R1,R0			;
003E18 6BF6     	MOV.L   	@R15+,R11		;
003E1A 6DF6     	MOV.L   	@R15+,R13		;
003E1C 000B     	RTS     				;return -3;
003E1E 6EF6     	MOV.L   	@R15+,R14		;

L003E20:
003E20 6543     	MOV     	R4,R5			;void cdb_write_cr(u16* buf)//buf-R4
003E22 D210     	MOV.L   	@(#040,PC),R2	;
003E24 6351     	MOV.W   	@R5,R3		;
003E26 2231     	MOV.W   	R3,@R2		;CDB.CR1 = buf[0];
003E28 8551     	MOV.W   	@(#02,R5),R0	;
003E2A D20F     	MOV.L   	@(#03C,PC),R2	;
003E2C 6303     	MOV     	R0,R3			;
003E2E 2231     	MOV.W   	R3,@R2		;CDB.CR2 = buf[1];
003E30 8552     	MOV.W   	@(#04,R5),R0	;
003E32 D20E     	MOV.L   	@(#038,PC),R2	;
003E34 6303     	MOV     	R0,R3			;
003E36 2231     	MOV.W   	R3,@R2		;CDB.CR3 = buf[2];
003E38 8553     	MOV.W   	@(#06,R5),R0	;
003E3A D20D     	MOV.L   	@(#034,PC),R2	;
003E3C 6303     	MOV     	R0,R3			;CDB.CR4 = buf[3];
003E3E 000B     	RTS     				;
003E40 2231     	MOV.W   	R3,@R2		;

L003E42:							;void cdb_read_rr(u16* buf)//buf-R4
003E42 D308     	MOV.L   	@(#020,PC),R3	;
003E44 6331     	MOV.W   	@R3,R3		;
003E46 2431     	MOV.W   	R3,@R4		;buf[0] = CDB.CR1;
003E48 D207     	MOV.L   	@(#01C,PC),R2	;
003E4A 6221     	MOV.W   	@R2,R2		;
003E4C 6023     	MOV     	R2,R0			;
003E4E 8141     	MOV.W   	R0,@(#02,R4)	;buf[1] = CDB.CR2;
003E50 D306     	MOV.L   	@(#018,PC),R3	;
003E52 6331     	MOV.W   	@R3,R3		;
003E54 6033     	MOV     	R3,R0			;
003E56 8142     	MOV.W   	R0,@(#04,R4)	;buf[2] = CDB.CR3;
003E58 D305     	MOV.L   	@(#014,PC),R3	;
003E5A 6331     	MOV.W   	@R3,R3		;
003E5C 6033     	MOV     	R3,R0			;
003E5E 000B     	RTS     				;
003E60 8143     	MOV.W   	R0,@(#06,R4)	;buf[3] = CDB.CR4;
003E62 E9D5
003E64 25890018
003E68 2589001C
003E6C 25890020
003E70 25890024

L003E74:							;(R4-arg1,R5-arg2)
003E74 2FE6     	MOV.L   	R14,@-R15		;
003E76 6E43     	MOV     	R4,R14		;
003E78 2FD6     	MOV.L   	R13,@-R15		;
003E7A 6D53     	MOV     	R5,R13		;
003E7C 4F22     	STS.L   	PR,@-R15		;
003E7E 7FF8     	ADD     	#F8,R15		;
003E80 D326     	MOV.L   	@(#098,PC),R3	;
003E82 430B     	JSR     	@R3			;copy_const_004C44();
003E84 64F3     	MOV     	R15,R4		;
003E86 62F3     	MOV     	R15,R2		;
003E88 9344     	MOV.W   	@(#088,PC),R3	;
003E8A 6DDC     	EXTU.B   	R13,R13		;
003E8C 2230     	MOV.B   	R3,@R2		;cmd[0] = 0xE0;
003E8E 62F3     	MOV     	R15,R2		;
003E90 63EC     	EXTU.B   	R14,R3		;
003E92 6033     	MOV     	R3,R0			;
003E94 8023     	MOV.B   	R0,@(#03,R2)	;cmd[3] = arg1;
003E96 63F3     	MOV     	R15,R3		;
003E98 60D3     	MOV     	R13,R0		;
003E9A 8034     	MOV.B   	R0,@(#04,R3)	;cmd[4] = arg2;
003E9C 60E3     	MOV     	R14,R0		;
003E9E 8801     	CMP/EQ  	#01,R0		;
003EA0 8B02     	BF      	L003EA8		;
003EA2 9438     	MOV.W   	@(#070,PC),R4	;
003EA4 A001     	BRA     	L003EAA		;
003EA6 0009     	NOP     				;
L003EA8:
003EA8 9436     	MOV.W   	@(#06C,PC),R4	;temp = arg1 != 0x01 ? 0x0200 : 0x0800;
L003EAA:
003EAA D31D     	MOV.L   	@(#074,PC),R3	;
003EAC 430B     	JSR     	@R3			;ret = L004788(temp,cmd,arg3)
003EAE 65F3     	MOV     	R15,R5		;
003EB0 6403     	MOV     	R0,R4			;
003EB2 7F08     	ADD     	#08,R15		;
003EB4 4F26     	LDS.L   	@R15+,PR		;
003EB6 6DF6     	MOV.L   	@R15+,R13		;
003EB8 000B     	RTS     				;
003EBA 6EF6     	MOV.L   	@R15+,R14		;

003EBC 2FE6     	MOV.L   	R14,@-R15		;
003EBE 6E43     	MOV     	R4,R14		;
003EC0 2FD6     	MOV.L   	R13,@-R15		;
003EC2 6D63     	MOV     	R6,R13		;
003EC4 2FC6     	MOV.L   	R12,@-R15		;
003EC6 6C53     	MOV     	R5,R12		;
003EC8 4F22     	STS.L   	PR,@-R15		;
003ECA 7FF0     	ADD     	#F0,R15		;
003ECC 64F3     	MOV     	R15,R4		;
003ECE D313     	MOV.L   	@(#04C,PC),R3	;
003ED0 430B     	JSR     	@R3			;
003ED2 7408     	ADD     	#08,R4		;
003ED4 62F3     	MOV     	R15,R2		;
003ED6 6EEC     	EXTU.B   	R14,R14		;
003ED8 66F3     	MOV     	R15,R6		;
003EDA 65F3     	MOV     	R15,R5		;
003EDC 931D     	MOV.W   	@(#03A,PC),R3	;
003EDE 7208     	ADD     	#08,R2		;
003EE0 60E3     	MOV     	R14,R0		;
003EE2 7508     	ADD     	#08,R5		;
003EE4 2230     	MOV.B   	R3,@R2		;
003EE6 62F3     	MOV     	R15,R2		;
003EE8 7208     	ADD     	#08,R2		;
003EEA 8023     	MOV.B   	R0,@(#03,R2)	;
003EEC D30D     	MOV.L   	@(#034,PC),R3	;
003EEE 430B     	JSR     	@R3			;
003EF0 E400     	MOV     	#00,R4		;
003EF2 6403     	MOV     	R0,R4			;
003EF4 62F3     	MOV     	R15,R2		;
003EF6 8521     	MOV.W   	@(#02,R2),R0	;
003EF8 6303     	MOV     	R0,R3			;
003EFA 2C31     	MOV.W   	R3,@R12		;
003EFC 63F3     	MOV     	R15,R3		;
003EFE 8533     	MOV.W   	@(#06,R3),R0	;
003F00 6203     	MOV     	R0,R2			;
003F02 622D     	EXTU.W   	R2,R2			;
003F04 6043     	MOV     	R4,R0			;
003F06 2D22     	MOV.L   	R2,@R13		;
003F08 7F10     	ADD     	#10,R15		;
003F0A 4F26     	LDS.L   	@R15+,PR		;
003F0C 6CF6     	MOV.L   	@R15+,R12		;
003F0E 6DF6     	MOV.L   	@R15+,R13		;
003F10 000B     	RTS     				;
003F12 6EF6     	MOV.L   	@R15+,R14		;
003F14 00E0
003F16 0800
003F18 0200
003F1A 00E1
003F1C 00004750
003F20 00004788
003F24 0000
003F26 4762
003F28 2FE6     	MOV.L   	R14,@-R15		;
003F2A 6E53     	MOV     	R5,R14		;
003F2C 2FD6     	MOV.L   	R13,@-R15		;
003F2E 6D63     	MOV     	R6,R13		;
003F30 2FC6     	MOV.L   	R12,@-R15		;
003F32 6C43     	MOV     	R4,R12		;
003F34 4F22     	STS.L   	PR,@-R15		;
003F36 7FF8     	ADD     	#F8,R15		;
003F38 D31A     	MOV.L   	@(#068,PC),R3	;
003F3A 430B     	JSR     	@R3			;
003F3C 64F3     	MOV     	R15,R4		;
003F3E 62F3     	MOV     	R15,R2		;
003F40 63F3     	MOV     	R15,R3		;
003F42 6CCC     	EXTU.B   	R12,R12		;
003F44 6DDD     	EXTU.W   	R13,R13		;
003F46 22E2     	MOV.L   	R14,@R2		;
003F48 60C3     	MOV     	R12,R0		;
003F4A 9228     	MOV.W   	@(#050,PC),R2	;
003F4C 2320     	MOV.B   	R2,@R3		;
003F4E 63F3     	MOV     	R15,R3		;
003F50 8034     	MOV.B   	R0,@(#04,R3)	;
003F52 63F3     	MOV     	R15,R3		;
003F54 60D3     	MOV     	R13,R0		;
003F56 8133     	MOV.W   	R0,@(#06,R3)	;
003F58 9422     	MOV.W   	@(#044,PC),R4	;
003F5A D313     	MOV.L   	@(#04C,PC),R3	;
003F5C 430B     	JSR     	@R3			;
003F5E 65F3     	MOV     	R15,R5		;
003F60 6403     	MOV     	R0,R4			;
003F62 7F08     	ADD     	#08,R15		;
003F64 4F26     	LDS.L   	@R15+,PR		;
003F66 6CF6     	MOV.L   	@R15+,R12		;
003F68 6DF6     	MOV.L   	@R15+,R13		;
003F6A 000B     	RTS     				;
003F6C 6EF6     	MOV.L   	@R15+,R14		;

L003F6E:							;int cdb_check()
003F6E 4F22     	STS.L   	PR,@-R15		;
003F70 7FF8     	ADD     	#F8,R15		;
003F72 D30E     	MOV.L   	@(#038,PC),R3	;u16 rr[4];
003F74 430B     	JSR     	@R3			;cdb_read_rr(rr);//L003E42
003F76 64F3     	MOV     	R15,R4		;
003F78 E608     	MOV     	#08,R6		;
003F7A D50D     	MOV.L   	@(#034,PC),R5	;
003F7C D30D     	MOV.L   	@(#034,PC),R3	;
003F7E 430B     	JSR     	@R3			;int ret = mem_cmp(rr," CDBLOCK",8);//L004714
003F80 64F3     	MOV     	R15,R4		;
003F82 2008     	TST     	R0,R0			;
003F84 8903     	BT      	L003F8E		;
003F86 7F08     	ADD     	#08,R15		;
003F88 4F26     	LDS.L   	@R15+,PR		;
003F8A 000B     	RTS     				;
003F8C E000     	MOV     	#00,R0		;
L003F8E:
003F8E D30A     	MOV.L   	@(#028,PC),R3	;
003F90 430B     	JSR     	@R3			;L003C64();
003F92 0009     	NOP     				;
003F94 E001     	MOV     	#01,R0		;
003F96 7F08     	ADD     	#08,R15		;
003F98 4F26     	LDS.L   	@R15+,PR		;
003F9A 000B     	RTS     				;
003F9C 0009     	NOP     				;
003F9E 00E2
003FA0 0800
003FA2 9BA3
003FA4 00004750
003FA8 00004788
003FAC 00003E42
003FB0 00004C3C
003FB4 00004714
003FB8 00003C64



L00438C:
00438C 2FE6     	MOV.L   	R14,@-R15		;R4-arg1,R5-arg2,R6-arg3,R7-arg4
00438E 2FD6     	MOV.L   	R13,@-R15		;
004390 2FC6     	MOV.L   	R12,@-R15		;
004392 6D53     	MOV     	R5,R13		;
004394 2FB6     	MOV.L   	R11,@-R15		;
004396 6B63     	MOV     	R6,R11		;
004398 2FA6     	MOV.L   	R10,@-R15		;
00439A 6A43     	MOV     	R4,R10		;
00439C 2F96     	MOV.L   	R9,@-R15		;
00439E 2F86     	MOV.L   	R8,@-R15		;
0043A0 4F22     	STS.L   	PR,@-R15		;
0043A2 7FF0     	ADD     	#F0,R15		;
0043A4 9860     	MOV.W   	@(#0C0,PC),R8	;00FF
0043A6 1F72     	MOV.L   	R7,@(#8,R15)	;
0043A8 64A2     	MOV.L   	@R10,R4		;ptr = *arg1;
0043AA 6544     	MOV.B   	@R4+,R5		;
0043AC 655D     	EXTU.W   	R5,R5			;
0043AE 6244     	MOV.B   	@R4+,R2		;
0043B0 4518     	SHLL8   	R5			;
0043B2 2289     	AND     	R8,R2			;
0043B4 252B     	OR      	R2,R5			;
0043B6 655D     	EXTU.W   	R5,R5			;
0043B8 6053     	MOV     	R5,R0			;
0043BA 81F2     	MOV.W   	R0,@(#04,R15)	;u16 temp = ptr[0]<<8 | ptr[1]; ptr += 2;
0043BC 2A42     	MOV.L   	R4,@R10		;*arg1 = ptr;
0043BE 53F2     	MOV.L   	@(#08,R15),R3	;
0043C0 4315     	CMP/PL  	R3			;
0043C2 8D02     	BT/S    	L0043CA		;arg4>0
0043C4 E900     	MOV     	#00,R9		;
0043C6 A0A2     	BRA     	L00450E		;
0043C8 0009     	NOP     				;
L0043CA:
0043CA 62D2     	MOV.L   	@R13,R2		;
0043CC 32B6     	CMP/HI 	R11,R2		;
0043CE 8B01     	BF      	L0043D4		;*arg2 <= arg3
0043D0 A09E     	BRA     	L004510		;
0043D2 E0FF     	MOV     	#FF,R0		;
L0043D4:
0043D4 64A2     	MOV.L   	@R10,R4		;ptr = *arg1;
0043D6 6544     	MOV.B   	@R4+,R5		;
0043D8 6E5D     	EXTU.W   	R5,R14		;
0043DA 6244     	MOV.B   	@R4+,R2		;
0043DC 4E18     	SHLL8   	R14			;
0043DE 6323     	MOV     	R2,R3			;
0043E0 2A42     	MOV.L   	R4,@R10		;
0043E2 2389     	AND     	R8,R3			;
0043E4 6293     	MOV     	R9,R2			;
0043E6 85F2     	MOV.W   	@(#04,R15),R0	;temp = ptr[0]<<8 | ptr[1]; ptr += 2;
0043E8 2E3B     	OR      	R3,R14		;
0043EA 4200     	SHLL    	R2			;
0043EC 6103     	MOV     	R0,R1			;
0043EE D31F     	MOV.L   	@(#07C,PC),R3	;
0043F0 611D     	EXTU.W   	R1,R1			;
0043F2 323C     	ADD     	R3,R2			;
0043F4 6221     	MOV.W   	@R2,R2		;
0043F6 622D     	EXTU.W   	R2,R2			;
0043F8 2219     	AND     	R1,R2			;
0043FA 2228     	TST     	R2,R2			;
0043FC 8D18     	BT/S    	#030			;
0043FE 6EED     	EXTU.W   	R14,R14		;
004400 63D2     	MOV.L   	@R13,R3		;
004402 7301     	ADD     	#01,R3		;
004404 2D32     	MOV.L   	R3,@R13		;
004406 73FF     	ADD     	#FF,R3		;
004408 D219     	MOV.L   	@(#064,PC),R2	;
00440A 420B     	JSR     	@R2			;
00440C 60ED     	EXTU.W   	R14,R0		;
00440E 600C     	EXTU.B   	R0,R0			;
004410 2300     	MOV.B   	R0,@R3		;
004412 63D2     	MOV.L   	@R13,R3		;
004414 33B6     	CMP/HI 	R11,R3		;
004416 8B01     	BF      	#002			;
004418 A07A     	BRA     	#00F4			;
00441A E001     	MOV     	#01,R0		;
00441C 62D2     	MOV.L   	@R13,R2		;
00441E 63ED     	EXTU.W   	R14,R3		;
004420 7201     	ADD     	#01,R2		;
004422 2389     	AND     	R8,R3			;
004424 2D22     	MOV.L   	R2,@R13		;
004426 633C     	EXTU.B   	R3,R3			;
004428 72FF     	ADD     	#FF,R2		;
00442A 2230     	MOV.B   	R3,@R2		;
00442C A069     	BRA     	L004502		;
00442E 0009     	NOP     				;
004430 62ED     	EXTU.W   	R14,R2		;
004432 D310     	MOV.L   	@(#040,PC),R3	;
004434 2239     	AND     	R3,R2			;
004436 2228     	TST     	R2,R2			;
004438 8B20     	BF      	#040			;
00443A 65ED     	EXTU.W   	R14,R5		;
00443C 64B3     	MOV     	R11,R4		;
00443E 63D2     	MOV.L   	@R13,R3		;
004440 7503     	ADD     	#03,R5		;
004442 3438     	SUB     	R3,R4			;
004444 7401     	ADD     	#01,R4		;
004446 3542     	CMP/HS 	R4,R5			;
004448 8D02     	BT/S    	#004			;
00444A 2F32     	MOV.L   	R3,@R15		;
00444C A001     	BRA     	#0002			;
00444E 6C53     	MOV     	R5,R12		;
004450 6C43     	MOV     	R4,R12		;
004452 6CCD     	EXTU.W   	R12,R12		;
004454 65F2     	MOV.L   	@R15,R5		;
004456 D308     	MOV.L   	@(#020,PC),R3	;
004458 66CD     	EXTU.W   	R12,R6		;
00445A 75FF     	ADD     	#FF,R5		;
00445C 6550     	MOV.B   	@R5,R5		;
00445E 655C     	EXTU.B   	R5,R5			;
004460 430B     	JSR     	@R3			;L004C18();
004462 64F2     	MOV.L   	@R15,R4		;
004464 A049     	BRA     	L0044FA		;
004466 0009     	NOP     				;
004468 00FF
00446A 9DB5
00446C 0600
00446E 0384
004470 0000
004472 4BC6
004474 0000
004476 F000
004478 0000
00447A 4C18
00447C 62ED     	EXTU.W   	R14,R2		;
00447E D333     	MOV.L   	@(#0CC,PC),R3	;
004480 9161     	MOV.W   	@(#0C2,PC),R1	;
004482 2239     	AND     	R3,R2			;
004484 3210     	CMP/EQ 	R1,R2			;
004486 8B1D     	BF      	#03A			;
004488 65B3     	MOV     	R11,R5		;
00448A 64A2     	MOV.L   	@R10,R4		;
00448C 7401     	ADD     	#01,R4		;
00448E 2A42     	MOV.L   	R4,@R10		;
004490 74FF     	ADD     	#FF,R4		;
004492 63D2     	MOV.L   	@R13,R3		;
004494 6440     	MOV.B   	@R4,R4		;
004496 3538     	SUB     	R3,R5			;
004498 644C     	EXTU.B   	R4,R4			;
00449A 7501     	ADD     	#01,R5		;
00449C 664D     	EXTU.W   	R4,R6			;
00449E 7611     	ADD     	#11,R6		;
0044A0 3652     	CMP/HS 	R5,R6			;
0044A2 8D02     	BT/S    	#004			;
0044A4 2F32     	MOV.L   	R3,@R15		;
0044A6 A001     	BRA     	#0002			;
0044A8 6C63     	MOV     	R6,R12		;
0044AA 6C53     	MOV     	R5,R12		;
0044AC 6CCD     	EXTU.W   	R12,R12		;
0044AE 62ED     	EXTU.W   	R14,R2		;
0044B0 934A     	MOV.W   	@(#094,PC),R3	;
0044B2 65F2     	MOV.L   	@R15,R5		;
0044B4 66CD     	EXTU.W   	R12,R6		;
0044B6 2239     	AND     	R3,R2			;
0044B8 3528     	SUB     	R2,R5			;
0044BA D325     	MOV.L   	@(#094,PC),R3	;
0044BC 430B     	JSR     	@R3			;
0044BE 64F2     	MOV.L   	@R15,R4		;
0044C0 A01B     	BRA     	L0044FA		;
0044C2 0009     	NOP     				;
0044C4 60ED     	EXTU.W   	R14,R0		;
0044C6 D323     	MOV.L   	@(#08C,PC),R3	;
0044C8 430B     	JSR     	@R3			;
0044CA 1F03     	MOV.L   	R0,@(#C,R15)	;
0044CC 6403     	MOV     	R0,R4			;
0044CE 65B3     	MOV     	R11,R5		;
0044D0 62D2     	MOV.L   	@R13,R2		;
0044D2 7401     	ADD     	#01,R4		;
0044D4 6323     	MOV     	R2,R3			;
0044D6 3538     	SUB     	R3,R5			;
0044D8 7501     	ADD     	#01,R5		;
0044DA 3452     	CMP/HS 	R5,R4			;
0044DC 8D02     	BT/S    	#004			;
0044DE 2F22     	MOV.L   	R2,@R15		;
0044E0 A001     	BRA     	#0002			;
0044E2 6C43     	MOV     	R4,R12		;
0044E4 6C53     	MOV     	R5,R12		;
0044E6 6CCD     	EXTU.W   	R12,R12		;
0044E8 52F3     	MOV.L   	@(#0C,R15),R2	;
0044EA 932D     	MOV.W   	@(#05A,PC),R3	;
0044EC 65F2     	MOV.L   	@R15,R5		;
0044EE 66CD     	EXTU.W   	R12,R6		;
0044F0 2239     	AND     	R3,R2			;
0044F2 3528     	SUB     	R2,R5			;
0044F4 D316     	MOV.L   	@(#058,PC),R3	;
0044F6 430B     	JSR     	@R3			;L0049F0();
0044F8 64F2     	MOV.L   	@R15,R4		;
L0044FA:
0044FA 6CCD     	EXTU.W   	R12,R12		;
0044FC 62D2     	MOV.L   	@R13,R2		;
0044FE 32CC     	ADD     	R12,R2		;
004500 2D22     	MOV.L   	R2,@R13		;
L004502:
004502 7901     	ADD     	#01,R9		;
004504 53F2     	MOV.L   	@(#08,R15),R3	;
004506 3933     	CMP/GE 	R3,R9			;
004508 8901     	BT      	L00450E		;
00450A AF5E     	BRA     	L0043CA		;
00450C 0009     	NOP     				;
L00450E:
00450E E000     	MOV     	#00,R0		;
L004510:
004510 7F10     	ADD     	#10,R15		;
004512 4F26     	LDS.L   	@R15+,PR		;
004514 68F6     	MOV.L   	@R15+,R8		;
004516 69F6     	MOV.L   	@R15+,R9		;
004518 6AF6     	MOV.L   	@R15+,R10		;
00451A 6BF6     	MOV.L   	@R15+,R11		;
00451C 6CF6     	MOV.L   	@R15+,R12		;
00451E 6DF6     	MOV.L   	@R15+,R13		;
004520 000B     	RTS     				;
004522 6EF6     	MOV.L   	@R15+,R14		;

004524 2FE6     	MOV.L   	R14,@-R15		;
004526 6763     	MOV     	R6,R7			;
004528 2FD6     	MOV.L   	R13,@-R15		;
00452A 6E63     	MOV     	R6,R14		;
00452C 2FC6     	MOV.L   	R12,@-R15		;
00452E 6D53     	MOV     	R5,R13		;
004530 6653     	MOV     	R5,R6			;
004532 6C43     	MOV     	R4,R12		;
004534 4F22     	STS.L   	PR,@-R15		;
004536 6543     	MOV     	R4,R5			;
004538 4F26     	LDS.L   	@R15+,PR		;
00453A D307     	MOV.L   	@(#01C,PC),R3	;
00453C E401     	MOV     	#01,R4		;
00453E 6CF6     	MOV.L   	@R15+,R12		;
004540 6DF6     	MOV.L   	@R15+,R13		;
004542 432B     	JMP     	@R3			;
004544 6EF6     	MOV.L   	@R15+,R14		;
004546 1000
004548 0FFF
00454A 3A75
00454C 0000
00454E F000
004550 0000
004552 49F0
004554 0000
004556 4BBE
004558 0000
00455A 2B64


L004714:
004714 6743     	MOV     	R4,R7			;
004716 2668     	TST     	R6,R6			;
004718 8B01     	BF      	L00471E		;
00471A 000B     	RTS     				;
00471C E000     	MOV     	#00,R0		;
L00471E:
00471E E400     	MOV     	#00,R4		;
004720 6343     	MOV     	R4,R3			;
004722 3362     	CMP/HS 	R6,R3			;
004724 890A     	BT      	L00473C		;
L004726:
004726 6274     	MOV.B   	@R7+,R2		;
004728 6154     	MOV.B   	@R5+,R1		;
00472A 622C     	EXTU.B   	R2,R2			;
00472C 611C     	EXTU.B   	R1,R1			;
00472E 3210     	CMP/EQ 	R1,R2			;
004730 8901     	BT      	L004736		;
004732 A003     	BRA     	L00473C		;
004734 0009     	NOP     				;
L004736:
004736 7401     	ADD     	#01,R4		;
004738 3462     	CMP/HS 	R6,R4			;
00473A 8BF4     	BF      	L004726		;
L00473C:
00473C 6073     	MOV     	R7,R0			;
00473E 70FF     	ADD     	#FF,R0		;
004740 6000     	MOV.B   	@R0,R0		;
004742 600C     	EXTU.B   	R0,R0			;
004744 75FF     	ADD     	#FF,R5		;
004746 6350     	MOV.B   	@R5,R3		;
004748 633C     	EXTU.B   	R3,R3			;
00474A 3038     	SUB     	R3,R0			;
00474C 000B     	RTS     				;
00474E 0009     	NOP     				;

L004750:							;void mem_clear8(u32* dst)//dst-R4
004750 4F22     	STS.L   	PR,@-R15		;
004752 6143     	MOV     	R4,R1			;
004754 D213     	MOV.L   	@(#04C,PC),R2	;
004756 D314     	MOV.L   	@(#050,PC),R3	;
004758 430B     	JSR     	@R3			;mem_copy_fast(8,dst,const_zero8); //L004A0C
00475A E008     	MOV     	#08,R0		;
00475C 4F26     	LDS.L   	@R15+,PR		;
00475E 000B     	RTS     				;
004760 0009     	NOP     				;

L004762:							;
004762 2FE6     	MOV.L   	R14,@-R15		;
004764 4F22     	STS.L   	PR,@-R15		;
004766 D311     	MOV.L   	@(#044,PC),R3	;
004768 430B     	JSR     	@R3			;ret = cdb_send_cmd();
00476A 6E63     	MOV     	R6,R14		;
00476C 6403     	MOV     	R0,R4			;
00476E 2448     	TST     	R4,R4			;
004770 8903     	BT      	L00477A		;ret == 0
004772 6043     	MOV     	R4,R0			;
004774 4F26     	LDS.L   	@R15+,PR		;
004776 000B     	RTS     				;
004778 6EF6     	MOV.L   	@R15+,R14		;
L00477A:
00477A D30D     	MOV.L   	@(#034,PC),R3	;
00477C 62E0     	MOV.B   	@R14,R2		;
00477E 2320     	MOV.B   	R2,@R3		;
004780 6043     	MOV     	R4,R0			;
004782 4F26     	LDS.L   	@R15+,PR		;
004784 000B     	RTS     				;
004786 6EF6     	MOV.L   	@R15+,R14		;

L004788:							;int cdb_exec_cmd(u16 imask,u16* cmd)//imask-R4,cmd-R5
004788 2FE6     	MOV.L   	R14,@-R15		;
00478A 4F22     	STS.L   	PR,@-R15		;
00478C 7FF8     	ADD     	#F8,R15		;
00478E D307     	MOV.L   	@(#01C,PC),R3	;u16 resp[4];
004790 430B     	JSR     	@R3			;int err = cdb_send_cmd(imask,cmd,resp); //L003D06
004792 66F3     	MOV     	R15,R6		;
004794 6E03     	MOV     	R0,R14		;
004796 2EE8     	TST     	R14,R14		;
004798 890C     	BT      	L0047B4		;if (err != 0) return err;
00479A 60E3     	MOV     	R14,R0		;
00479C 7F08     	ADD     	#08,R15		;
00479E 4F26     	LDS.L   	@R15+,PR		;
0047A0 000B     	RTS     				;
0047A2 6EF6     	MOV.L   	@R15+,R14		;
0047A4 00004C44
0047A8 00004A0C
0047AC 00003D06
0047B0 0600
0047B2 03A8
L0047B4:
0047B4 D510     	MOV.L   	@(#040,PC),R5	;
0047B6 B00E     	BRS     	L0047D6		;make_cdb_report(resp,cdb_report);
0047B8 64F3     	MOV     	R15,R4		;
0047BA 60E3     	MOV     	R14,R0		;
0047BC 7F08     	ADD     	#08,R15		;
0047BE 4F26     	LDS.L   	@R15+,PR		;
0047C0 000B     	RTS     				;return 0;
0047C2 6EF6     	MOV.L   	@R15+,R14		;

L0047C4:							;void cdb_get_report(u8* report)//report-R4
0047C4 4F22     	STS.L   	PR,@-R15		;
0047C6 6143     	MOV     	R4,R1			;
0047C8 D20B     	MOV.L   	@(#02C,PC),R2	;
0047CA D30C     	MOV.L   	@(#030,PC),R3	;
0047CC 430B     	JSR     	@R3			;mem_copy_fast(12,arg1,cdb_report);
0047CE E00C     	MOV     	#0C,R0		;
0047D0 4F26     	LDS.L   	@R15+,PR		;
0047D2 000B     	RTS     				;
0047D4 0009     	NOP     				;

L0047D6:							;void make_cdb_report(u16* resp, u8* cdb_rep)//resp-R4,cdb_rep-R5
0047D6 6340     	MOV.B   	@R4,R3		;
0047D8 2530     	MOV.B   	R3,@R5		;cdb_rep[0] = resp[0]>>8;
0047DA 8441     	MOV.B   	@(#01,R4),R0	;
0047DC 6203     	MOV     	R0,R2			;
0047DE 8054     	MOV.B   	R0,@(#04,R5)	;cdb_rep[4] = (u8)resp[0];
0047E0 8442     	MOV.B   	@(#02,R4),R0	;
0047E2 8055     	MOV.B   	R0,@(#05,R5)	;cdb_rep[5] = resp[1]>>8;
0047E4 8443     	MOV.B   	@(#03,R4),R0	;
0047E6 8056     	MOV.B   	R0,@(#06,R5)	;cdb_rep[6] = (u8)resp[1];
0047E8 8444     	MOV.B   	@(#04,R4),R0	;
0047EA 8057     	MOV.B   	R0,@(#07,R5)	;cdb_rep[7] = resp[2]>>8;
0047EC 5341     	MOV.L   	@(#04,R4),R3	;
0047EE D204     	MOV.L   	@(#010,PC),R2	;
0047F0 2329     	AND     	R2,R3			;*(u32*)&cdb_rep[8] = *(u32*)&resp[2] & 0x00FFFFFF;
0047F2 000B     	RTS     				;
0047F4 1532     	MOV.L   	R3,@(#8,R5)		;
0047F6 F87B
0047F8 060003A8
0047FC 00004A0C
004800 00FFFFFF


L0049F0:							;(u8* dst,u8* src,int len)//dst-R4,src-R5,len-R6
0049F0 6743     	MOV     	R4,R7			;
0049F2 E300     	MOV     	#00,R3		;
0049F4 3636     	CMP/HI 	R3,R6			;
0049F6 8F07     	BF/S    	L004A08		;if (len > 0) {
0049F8 6053     	MOV     	R5,R0			;
L0049FA:
0049FA 76FF     	ADD     	#FF,R6		;  for (int i=0; i<len; i++)
0049FC E300     	MOV     	#00,R3		;
0049FE 6104     	MOV.B   	@R0+,R1		;
004A00 2710     	MOV.B   	R1,@R7		;    dst[i] = src[i];
004A02 3636     	CMP/HI 	R3,R6			;
004A04 8DF9     	BT/S    	L0049FA		;  }
004A06 7701     	ADD     	#01,R7		;}
L004A08:
004A08 000B     	RTS     				;return dst;
004A0A 6043     	MOV     	R4,R0			;

L004A0C:							;void mem_copy_fast(u32 len,u8* dst,u8* src) //size-R0,dst-R1,src-R2
004A0C 2F36     	MOV.L   	R3,@-R15		;
004A0E E340     	MOV     	#40,R3		;
004A10 3302     	CMP/HS 	R0,R3			;
004A12 8B4B     	BF      	L004AAC		;if (len < 64) {
004A14 D301     	MOV.L   	@(#004,PC),R3	;  for (int i=0; i<len; i++)
004A16 033E     	MOV.L   	@(R0,R3),R3		;    dst[i] = src[i];
004A18 432B     	JMP     	@R3			;  return;
004A1A 0009     	NOP     				;}
004A1C 00004A68
004A20 0009     	NOP     				;
004A22 502F     	MOV.L   	@(#3C,R2),R0	;
004A24 110F     	MOV.L   	R0,@(#3C,R1)	;
004A26 502E     	MOV.L   	@(#38,R2),R0	;
004A28 110E     	MOV.L   	R0,@(#38,R1)	;
004A2A 502D     	MOV.L   	@(#34,R2),R0	;
004A2C 110D     	MOV.L   	R0,@(#34,R1)	;
004A2E 502C     	MOV.L   	@(#30,R2),R0	;
004A30 110C     	MOV.L   	R0,@(#30,R1)	;
004A32 502B     	MOV.L   	@(#2C,R2),R0	;
004A34 110B     	MOV.L   	R0,@(#2C,R1)	;
004A36 502A     	MOV.L   	@(#28,R2),R0	;
004A38 110A     	MOV.L   	R0,@(#28,R1)	;
004A3A 5029     	MOV.L   	@(#24,R2),R0	;
004A3C 1109     	MOV.L   	R0,@(#24,R1)	;
004A3E 5028     	MOV.L   	@(#20,R2),R0	;
004A40 1108     	MOV.L   	R0,@(#20,R1)	;
004A42 5027     	MOV.L   	@(#1C,R2),R0	;
004A44 1107     	MOV.L   	R0,@(#1C,R1)	;
004A46 5026     	MOV.L   	@(#18,R2),R0	;
004A48 1106     	MOV.L   	R0,@(#18,R1)	;
004A4A 5025     	MOV.L   	@(#14,R2),R0	;
004A4C 1105     	MOV.L   	R0,@(#14,R1)	;
004A4E 5024     	MOV.L   	@(#10,R2),R0	;
004A50 1104     	MOV.L   	R0,@(#10,R1)	;
004A52 5023     	MOV.L   	@(#0C,R2),R0	;
004A54 1103     	MOV.L   	R0,@(#C,R1)		;
004A56 5022     	MOV.L   	@(#08,R2),R0	;
004A58 1102     	MOV.L   	R0,@(#8,R1)		;
004A5A 5021     	MOV.L   	@(#04,R2),R0	;
004A5C 1101     	MOV.L   	R0,@(#4,R1)		;
004A5E 6022     	MOV.L   	@R2,R0		;
004A60 2102     	MOV.L   	R0,@R1		;
004A62 000B     	RTS     				;
004A64 63F6     	MOV.L   	@R15+,R3		;
004A66 0009     	NOP     				;

004A68 00004A62
004A6C 00004A5E
004A70 00004A5A
004A74 00004A56
004A78 00004A52
004A7C 00004A4E
004A80 00004A4A
004A84 00004A46
004A88 00004A42
004A8C 00004A3E
004A90 00004A3A
004A94 00004A36
004A98 00004A32
004A9C 00004A2E
004AA0 00004A2A
004AA4 00004A26
004AA8 00004A22

L004AAC:
004AAC 2F26     	MOV.L   	R2,@-R15		;
004AAE 6323     	MOV     	R2,R3			;
004AB0 330C     	ADD     	R0,R3			;src_end=src+size
L004AB2:
004AB2 6026     	MOV.L   	@R2+,R0		;@src->temp, src++
004AB4 3322     	CMP/HS 	R2,R3			;
004AB6 8B06     	BF      	L004AC6		;src < src_end
004AB8 2102     	MOV.L   	R0,@R1		;temp->@dst
004ABA 6026     	MOV.L   	@R2+,R0		;@src->temp, src++
004ABC 3322     	CMP/HS 	R2,R3			;src < src_end
004ABE 8B02     	BF      	L004AC6		;
004AC0 1101     	MOV.L   	R0,@(#4,R1)		;temp->@(dst+4)
004AC2 AFF6     	BRA     	L004AB2		;
004AC4 7108     	ADD     	#08,R1		;dst+=8
L004AC6:
004AC6 62F6     	MOV.L   	@R15+,R2		;
004AC8 000B     	RTS     				;
004ACA 63F6     	MOV.L   	@R15+,R3		;
004ACC 000B     	RTS     				;
004ACE 0009     	NOP     				;

004AD0 4008     	SHLL2   	R0			;
004AD2 4008     	SHLL2   	R0			;
004AD4 000B     	RTS     				;
004AD6 4008     	SHLL2   	R0			;
004AD8 4008     	SHLL2   	R0			;
004ADA 4008     	SHLL2   	R0			;
004ADC 4008     	SHLL2   	R0			;
004ADE 000B     	RTS     				;
004AE0 4000     	SHLL    	R0			;
004AE2 4008     	SHLL2   	R0			;
004AE4 4008     	SHLL2   	R0			;
004AE6 4008     	SHLL2   	R0			;
004AE8 000B     	RTS     				;
004AEA 4018     	SHLL8   	R0			;
004AEC 4008     	SHLL2   	R0			;
004AEE 4008     	SHLL2   	R0			;
004AF0 4008     	SHLL2   	R0			;
004AF2 4000     	SHLL    	R0			;
004AF4 000B     	RTS     				;
004AF6 4018     	SHLL8   	R0			;
004AF8 4008     	SHLL2   	R0			;
004AFA 4008     	SHLL2   	R0			;
004AFC 4008     	SHLL2   	R0			;
004AFE 000B     	RTS     				;
004B00 4028     	SHLL16  	R0			;
004B02 4008     	SHLL2   	R0			;
004B04 4008     	SHLL2   	R0			;
004B06 4008     	SHLL2   	R0			;
004B08 4000     	SHLL    	R0			;
004B0A 000B     	RTS     				;
004B0C 4028     	SHLL16  	R0			;
004B0E 4008     	SHLL2   	R0			;
004B10 4000     	SHLL    	R0			;
004B12 4018     	SHLL8   	R0			;
004B14 000B     	RTS     				;
004B16 4028     	SHLL16  	R0			;
004B18 4008     	SHLL2   	R0			;
004B1A 4008     	SHLL2   	R0			;
004B1C 4018     	SHLL8   	R0			;
004B1E 000B     	RTS     				;
004B20 4028     	SHLL16  	R0			;
004B22 C907     	AND     	#07,R0		;
004B24 4005     	ROTR    	R0			;
004B26 4005     	ROTR    	R0			;
004B28 000B     	RTS     				;
004B2A 4005     	ROTR    	R0			;
004B2C C903     	AND     	#03,R0		;
004B2E 4005     	ROTR    	R0			;
004B30 000B     	RTS     				;
004B32 4005     	ROTR    	R0			;
004B34 C901     	AND     	#01,R0		;
004B36 000B     	RTS     				;
004B38 4005     	ROTR    	R0			;
004B3A 4009     	SHLR2   	R0			;
004B3C 4009     	SHLR2   	R0			;
004B3E 000B     	RTS     				;
004B40 4009     	SHLR2   	R0			;
004B42 4009     	SHLR2   	R0			;
004B44 4009     	SHLR2   	R0			;
004B46 4009     	SHLR2   	R0			;
004B48 000B     	RTS     				;
004B4A 4001     	SHLR    	R0			;
004B4C 4009     	SHLR2   	R0			;
004B4E 4009     	SHLR2   	R0			;
004B50 4009     	SHLR2   	R0			;
004B52 000B     	RTS     				;
004B54 4019     	SHLR8   	R0			;
004B56 4009     	SHLR2   	R0			;
004B58 4009     	SHLR2   	R0			;
004B5A 4009     	SHLR2   	R0			;
004B5C 4001     	SHLR    	R0			;
004B5E 000B     	RTS     				;
004B60 4019     	SHLR8   	R0			;
004B62 4009     	SHLR2   	R0			;
004B64 4009     	SHLR2   	R0			;
004B66 4009     	SHLR2   	R0			;
004B68 000B     	RTS     				;
004B6A 4029     	SHLR16  	R0			;
004B6C 4009     	SHLR2   	R0			;
004B6E 4009     	SHLR2   	R0			;
004B70 4009     	SHLR2   	R0			;
004B72 4001     	SHLR    	R0			;
004B74 000B     	RTS     				;
004B76 4029     	SHLR16  	R0			;
004B78 4009     	SHLR2   	R0			;
004B7A 4009     	SHLR2   	R0			;
004B7C 4019     	SHLR8   	R0			;
004B7E 000B     	RTS     				;
004B80 4029     	SHLR16  	R0			;
004B82 4009     	SHLR2   	R0			;
004B84 4001     	SHLR    	R0			;
004B86 4019     	SHLR8   	R0			;
004B88 000B     	RTS     				;
004B8A 4029     	SHLR16  	R0			;
004B8C 4004     	ROTL    	R0			;
004B8E 4004     	ROTL    	R0			;
004B90 4004     	ROTL    	R0			;
004B92 000B     	RTS     				;
004B94 C907     	AND     	#07,R0		;

004B96 4004     	ROTL    	R0			;
004B98 4004     	ROTL    	R0			;
004B9A 000B     	RTS     				;
004B9C C903     	AND     	#03,R0		;

004B9E 4004     	ROTL    	R0			;
004BA0 000B     	RTS     				;
004BA2 C901     	AND     	#01,R0		;

004BA4 4021     	SHAR    	R0			;
004BA6 4021     	SHAR    	R0			;
004BA8 4021     	SHAR    	R0			;
004BAA 4021     	SHAR    	R0			;
004BAC 4021     	SHAR    	R0			;
004BAE 4021     	SHAR    	R0			;
004BB0 4021     	SHAR    	R0			;
004BB2 4029     	SHLR16  	R0			;
004BB4 000B     	RTS     				;
004BB6 600F     	EXTS.W   	R0,R0			;

004BB8 4021     	SHAR    	R0			;
004BBA 4021     	SHAR    	R0			;
004BBC 4021     	SHAR    	R0			;
004BBE 4021     	SHAR    	R0			;
004BC0 4021     	SHAR    	R0			;
004BC2 4021     	SHAR    	R0			;
004BC4 4021     	SHAR    	R0			;
L004BC6:
004BC6 4021     	SHAR    	R0			;
004BC8 4021     	SHAR    	R0			;
004BCA 4021     	SHAR    	R0			;
004BCC 4021     	SHAR    	R0			;
004BCE 4021     	SHAR    	R0			;
004BD0 4021     	SHAR    	R0			;
004BD2 4021     	SHAR    	R0			;
004BD4 000B     	RTS     				;
004BD6 4021     	SHAR    	R0			;

004BD8 4021     	SHAR    	R0			;
004BDA 4021     	SHAR    	R0			;
004BDC 4021     	SHAR    	R0			;
004BDE 4021     	SHAR    	R0			;
004BE0 4029     	SHLR16  	R0			;
004BE2 4019     	SHLR8   	R0			;
004BE4 000B     	RTS     				;
004BE6 600E     	EXTS.B   	R0,R0			;

L004C18:
004C18 6043     	MOV     	R4,R0			;
004C1A E700     	MOV     	#00,R7		;
004C1C 6373     	MOV     	R7,R3			;
004C1E 3362     	CMP/HS 	R6,R3			;
004C20 8905     	BT      	L004C2E		;
L004C22:
004C22 625C     	EXTU.B   	R5,R2			;
004C24 7701     	ADD     	#01,R7		;
004C26 2020     	MOV.B   	R2,@R0		;
004C28 3762     	CMP/HS 	R6,R7			;
004C2A 7001     	ADD     	#01,R0		;
004C2C 8BF9     	BF      	L004C22		;
L004C2E:
004C2E 000B     	RTS     				;
004C30 6043     	MOV     	R4,R0			;
004C32 A818     	BRA     	#1030			;
004C34 0000
004C36 00FF
004C38 FFFF
004C3A 33C1
L004C3C:  		 					;
	cd.b	" CDBLOCK"

L004C44:							;cost u8 const_zero8[8] = {0};
004C44 00000000
004C48 00000000

004C4C 1C5CB150
004C50 64B3E169
004C54 0E3B65B5
004C58 E638EB01
004C5C C2185E94
004C60 B0AFC1EF



	.org	0x00007000
L007000:							;u8 scsp_program_packed[];

	.org	0x000192C0
scsp_program_packed:					;u8 scsp_program_packed[];


	.org	0x00040000					;copied to 0x06020000
L040000:
040000 C718     	MOVA    	@(#60,PC),R0	;
040002 4007     	LDC.L   	@R0+,SR		;SH2.SR = 0x000000F0;
040004 4017     	LDC.L   	@R0+,GBR		;SH2.GBR = 0x06020000;
040006 4027     	LDC.L   	@R0+,VBR		;SH2.VBR = 0x06000000;
040008 6F06     	MOV.L   	@R0+,R15		;SH2.SP = 0x0601FFF0;
L04000A:							;do {
04000A B033     	BRS     	L040074		;  ret = L040074();
04000C 0009     	NOP     				;
04000E 2008     	TST     	R0,R0			;
040010 89FB     	BT      	L04000A		;} while (ret);
040012 D013     	MOV.L   	@(#04C,PC),R0	;
040014 402B     	JMP     	@R0			;goto 0x06028000;
040016 0009     	NOP     				;
040018 0000
04001A 0000
04001C 0000
04001E 0000
L040020:
	dc.b	"COPYRIGHT(C) SEGA ENTERPRISES,LT"
	dc.b	"D. 1994 ALL RIGHTS RESERVED     "
040060 06028000
040064 000000F0
040068 06020000
04006C 06000000
040070 0601FFF0
L040074:
040074 2FE6     	MOV.L   	R14,@-R15		;
040076 E400     	MOV     	#00,R4		;
040078 4F22     	STS.L   	PR,@-R15		;
04007A 634C     	EXTU.B   	R4,R3			;
04007C DE0E     	MOV.L   	@(#038,PC),R14	;
04007E D20F     	MOV.L   	@(#03C,PC),R2	;
040080 2230     	MOV.B   	R3,@R2		;SMPC.IOSEL = 0x00;
040082 634C     	EXTU.B   	R4,R3			;
040084 7202     	ADD     	#02,R2		;
040086 644C     	EXTU.B   	R4,R4			;
040088 2230     	MOV.B   	R3,@R2		;SMPC.EXLE = 0x00;
04008A D30D     	MOV.L   	@(#034,PC),R3	;
04008C 2340     	MOV.B   	R4,@R3		;*(u8*)0x0601FFF1 = 0x00;
04008E D40D     	MOV.L   	@(#034,PC),R4	;
040090 D50D     	MOV.L   	@(#034,PC),R5	;
040092 6442     	MOV.L   	@R4,R4		;
040094 6043     	MOV     	R4,R0			;
040096 8822     	CMP/EQ  	#22,R0		;
040098 8902     	BT      	L0400A0		;
04009A 6043     	MOV     	R4,R0			;
04009C 8802     	CMP/EQ  	#02,R0		;
04009E 8B01     	BF      	L0400A4		;if (*(u32*)0x0600022C == 0x00000022 || *(u32*)0x0600022C == 0x00000002)
L0400A0:
0400A0 A001     	BRA     	L0400A6		;  u8 temp = 0x08;
0400A2 E208     	MOV     	#08,R2		;else
L0400A4:
0400A4 E201     	MOV     	#01,R2		;  u8 temp = 0x01;
L0400A6:
0400A6 2520     	MOV.B   	R2,@R5		;*(u8*)0x0601FFF0 = temp;
0400A8 4E0B     	JSR     	@R14			;L0400CC(temp);
0400AA 6423     	MOV     	R2,R4			;
0400AC 4E0B     	JSR     	@R14			;L0400CC(0);
0400AE E400     	MOV     	#00,R4		;
0400B0 4F26     	LDS.L   	@R15+,PR		;
0400B2 000B     	RTS     				;
0400B4 6EF6     	MOV.L   	@R15+,R14		;
0400B6 0000
0400B8 060200CC
0400BC 2010007D
0400C0 0601FFF1
0400C4 0600022C
0400C8 0601FFF0

L0400CC:
0400CC 2FE6     	MOV.L   	R14,@-R15		;R4-arg1
0400CE 4F22     	STS.L   	PR,@-R15		;
0400D0 A015     	BRA     	L0400FE		;
0400D2 6043     	MOV     	R4,R0			;
L0400D4:
0400D4 B01F     	BRS     	L040116		;
0400D6 E40D     	MOV     	#0D,R4		;
0400D8 B01D     	BRS     	L040116		;
0400DA E40E     	MOV     	#0E,R4		;
0400DC B01B     	BRS     	L040116		;
0400DE E401     	MOV     	#01,R4		;
0400E0 6E03     	MOV     	R0,R14		;
0400E2 B018     	BRS     	L040116		;
0400E4 E409     	MOV     	#09,R4		;
0400E6 A012     	BRA     	L04010E		;
0400E8 0009     	NOP     				;
L0400EA:
0400EA B014     	BRS     	L040116		;
0400EC E400     	MOV     	#00,R4		;
0400EE A002     	BRA     	L0400F6		;
0400F0 0009     	NOP     				;
L0400F2:
0400F2 B010     	BRS     	L040116		;
0400F4 E408     	MOV     	#08,R4		;
L0400F6:
0400F6 A00A     	BRA     	L04010E		;
0400F8 6E03     	MOV     	R0,R14		;
L0400FA:
0400FA A008     	BRA     	L04010E		;
0400FC EE00     	MOV     	#00,R14		;
L0400FE:
0400FE 8800     	CMP/EQ  	#00,R0		;
040100 89F3     	BT      	L0400EA		;
040102 8801     	CMP/EQ  	#01,R0		;
040104 89E6     	BT      	L0400D4		;
040106 8808     	CMP/EQ  	#08,R0		;
040108 89F3     	BT      	L0400F2		;
04010A AFF6     	BRA     	L0400FA		;
04010C 0009     	NOP     				;
L04010E:
04010E 60E3     	MOV     	R14,R0		;
040110 4F26     	LDS.L   	@R15+,PR		;
040112 000B     	RTS     				;
040114 6EF6     	MOV.L   	@R15+,R14		;

L040116:							;R4-arg1
040116 2FE6     	MOV.L   	R14,@-R15		;
040118 2FD6     	MOV.L   	R13,@-R15		;
04011A 4F22     	STS.L   	PR,@-R15		;
04011C 7FF0     	ADD     	#F0,R15		;
04011E EE00     	MOV     	#00,R14		;
040120 1FE2     	MOV.L   	R14,@(#8,R15)	;
040122 63EC     	EXTU.B   	R14,R3		;
040124 6033     	MOV     	R3,R0			;
040126 80F4     	MOV.B   	R0,@(#04,R15)	;
040128 62EC     	EXTU.B   	R14,R2		;
04012A 6023     	MOV     	R2,R0			;
04012C D501     	MOV.L   	@(#004,PC),R5	;
04012E A004     	BRA     	L04013A		;
040130 80FC     	MOV.B   	R0,@(#0C,R15)	;
040132 0000
040134 00040400
L040138:
040138 7508     	ADD     	#08,R5		;
L04013A:
04013A 6652     	MOV.L   	@R5,R6		;
04013C 3640     	CMP/EQ 	R4,R6			;
04013E 8902     	BT      	L040146		;
040140 6063     	MOV     	R6,R0			;
040142 88FF     	CMP/EQ  	#FF,R0		;
040144 8BF8     	BF      	L040138		;
L040146:
040146 6352     	MOV.L   	@R5,R3		;
040148 3340     	CMP/EQ 	R4,R3			;
04014A 8B2F     	BF      	L0401AC		;
04014C 62F3     	MOV     	R15,R2		;
04014E 5D51     	MOV.L   	@(#04,R5),R13	;
040150 D31A     	MOV.L   	@(#068,PC),R3	;
040152 7208     	ADD     	#08,R2		;
040154 3D3C     	ADD     	R3,R13		;
040156 2F26     	MOV.L   	R2,@-R15		;
040158 67F3     	MOV     	R15,R7		;
04015A 66F3     	MOV     	R15,R6		;
04015C 65F3     	MOV     	R15,R5		;
04015E D318     	MOV.L   	@(#060,PC),R3	;
040160 7704     	ADD     	#04,R7		;
040162 7608     	ADD     	#08,R6		;
040164 7510     	ADD     	#10,R5		;
040166 430B     	JSR     	@R3			;
040168 64D3     	MOV     	R13,R4		;
04016A 2008     	TST     	R0,R0			;
04016C 8F1C     	BF/S    	L0401A8		;
04016E 7F04     	ADD     	#04,R15		;
040170 84F4     	MOV.B   	@(#04,R15),R0	;
040172 6303     	MOV     	R0,R3			;
040174 633C     	EXTU.B   	R3,R3			;
040176 2338     	TST     	R3,R3			;
040178 8B07     	BF      	L04018A		;
04017A 65D3     	MOV     	R13,R5		;
04017C D311     	MOV.L   	@(#044,PC),R3	;
04017E 56F2     	MOV.L   	@(#08,R15),R6	;
040180 7510     	ADD     	#10,R5		;
040182 430B     	JSR     	@R3			;
040184 64F2     	MOV.L   	@R15,R4		;
040186 A012     	BRA     	L0401AE		;
040188 0009     	NOP     				;
L04018A:
04018A 84F4     	MOV.B   	@(#04,R15),R0	;
04018C 600C     	EXTU.B   	R0,R0			;
04018E 8801     	CMP/EQ  	#01,R0		;
040190 8B07     	BF      	L0401A2		;
040192 56F2     	MOV.L   	@(#08,R15),R6	;
040194 65D3     	MOV     	R13,R5		;
040196 D30C     	MOV.L   	@(#030,PC),R3	;
040198 7510     	ADD     	#10,R5		;
04019A 430B     	JSR     	@R3			;
04019C 64F2     	MOV.L   	@R15,R4		;
04019E A001     	BRA     	L0401A4		;
0401A0 0009     	NOP     				;
L0401A2:
0401A2 2FE2     	MOV.L   	R14,@R15		;
L0401A4:
0401A4 A003     	BRA     	L0401AE		;
0401A6 0009     	NOP     				;
L0401A8:
0401A8 A001     	BRA     	L0401AE		;
0401AA 2FE2     	MOV.L   	R14,@R15		;
L0401AC:
0401AC 2FE2     	MOV.L   	R14,@R15		;
L0401AE:
0401AE 60F2     	MOV.L   	@R15,R0		;
0401B0 7F10     	ADD     	#10,R15		;
0401B2 4F26     	LDS.L   	@R15+,PR		;
0401B4 6DF6     	MOV.L   	@R15+,R13		;
0401B6 000B     	RTS     				;
0401B8 6EF6     	MOV.L   	@R15+,R14		;
0401BA 0000
0401BC 00040400
0401C0 06020238
0401C4 06020290
0401C8 060202A4
0401CC 2FE6     	MOV.L   	R14,@-R15		;
0401CE 6E43     	MOV     	R4,R14		;
0401D0 4F22     	STS.L   	PR,@-R15		;
0401D2 7FF4     	ADD     	#F4,R15		;
0401D4 1F52     	MOV.L   	R5,@(#8,R15)	;
0401D6 2F62     	MOV.L   	R6,@R15		;
0401D8 1F71     	MOV.L   	R7,@(#4,R15)	;
0401DA E610     	MOV     	#10,R6		;
0401DC D512     	MOV.L   	@(#048,PC),R5	;
0401DE D313     	MOV.L   	@(#04C,PC),R3	;
0401E0 430B     	JSR     	@R3			;
0401E2 64E3     	MOV     	R14,R4		;
0401E4 2008     	TST     	R0,R0			;
0401E6 8B18     	BF      	#030			;
0401E8 E60A     	MOV     	#0A,R6		;
0401EA D511     	MOV.L   	@(#044,PC),R5	;
0401EC D30F     	MOV.L   	@(#03C,PC),R3	;
0401EE 430B     	JSR     	@R3			;
0401F0 64E3     	MOV     	R14,R4		;
0401F2 2008     	TST     	R0,R0			;
0401F4 8B11     	BF      	#022			;
0401F6 E604     	MOV     	#04,R6		;
0401F8 65E3     	MOV     	R14,R5		;
0401FA D30E     	MOV.L   	@(#038,PC),R3	;
0401FC 7530     	ADD     	#30,R5		;
0401FE 430B     	JSR     	@R3			;
040200 54F2     	MOV.L   	@(#08,R15),R4	;
040202 62F2     	MOV.L   	@R15,R2		;
040204 53ED     	MOV.L   	@(#34,R14),R3	;
040206 2232     	MOV.L   	R3,@R2		;
040208 52F1     	MOV.L   	@(#04,R15),R2	;
04020A 53EE     	MOV.L   	@(#38,R14),R3	;
04020C 2232     	MOV.L   	R3,@R2		;
04020E 52F5     	MOV.L   	@(#14,R15),R2	;
040210 53EF     	MOV.L   	@(#3C,R14),R3	;
040212 73C0     	ADD     	#C0,R3		;
040214 2232     	MOV.L   	R3,@R2		;
040216 A001     	BRA     	#0002			;
040218 E400     	MOV     	#00,R4		;
04021A E4FF     	MOV     	#FF,R4		;
04021C 6043     	MOV     	R4,R0			;
04021E 7F0C     	ADD     	#0C,R15		;
040220 4F26     	LDS.L   	@R15+,PR		;
040222 000B     	RTS     				;
040224 6EF6     	MOV.L   	@R15+,R14		;
040226 0000
040228 0602
04022A 034C
04022C 0602
04022E 02C8
040230 0602
040232 0360
040234 0602
040236 0304

L040238:							;R4-arg1,R5-arg2,R6-arg3,R7-arg4
040238 2FE6     	MOV.L   	R14,@-R15		;
04023A 6E43     	MOV     	R4,R14		;
04023C 4F22     	STS.L   	PR,@-R15		;
04023E 7FF4     	ADD     	#F4,R15		;
040240 1F52     	MOV.L   	R5,@(#8,R15)	;
040242 2F62     	MOV.L   	R6,@R15		;
040244 1F71     	MOV.L   	R7,@(#4,R15)	;
040246 E602     	MOV     	#02,R6		;
040248 D513     	MOV.L   	@(#04C,PC),R5	;
04024A D314     	MOV.L   	@(#050,PC),R3	;
04024C 430B     	JSR     	@R3			;INT ret = L0202C8(arg1,0X0602036C,0X00000002);
04024E 64E3     	MOV     	R14,R4		;
040250 2008     	TST     	R0,R0			;
040252 8B17     	BF      	L040284		;ret ! =0
040254 53F2     	MOV.L   	@(#08,R15),R3	;
040256 84E3     	MOV.B   	@(#03,R14),R0	;
040258 600C     	EXTU.B   	R0,R0			;
04025A C90F     	AND     	#0F,R0		;
04025C 600C     	EXTU.B   	R0,R0			;
04025E 2300     	MOV.B   	R0,@R3		;
040260 63F2     	MOV.L   	@R15,R3		;
040262 84E3     	MOV.B   	@(#03,R14),R0	;
040264 600C     	EXTU.B   	R0,R0			;
040266 C9F0     	AND     	#F0,R0		;
040268 4021     	SHAR    	R0			;
04026A 4021     	SHAR    	R0			;
04026C 4021     	SHAR    	R0			;
04026E 4021     	SHAR    	R0			;
040270 600C     	EXTU.B   	R0,R0			;
040272 2300     	MOV.B   	R0,@R3		;
040274 53F1     	MOV.L   	@(#04,R15),R3	;
040276 52E1     	MOV.L   	@(#04,R14),R2	;
040278 2322     	MOV.L   	R2,@R3		;
04027A 53F5     	MOV.L   	@(#14,R15),R3	;
04027C 52E2     	MOV.L   	@(#08,R14),R2	;
04027E 2322     	MOV.L   	R2,@R3		;
040280 A001     	BRA     	L040286		;
040282 E400     	MOV     	#00,R4		;
L040284:
040284 E4FF     	MOV     	#FF,R4		;
L040286:
040286 6043     	MOV     	R4,R0			;
040288 7F0C     	ADD     	#0C,R15		;
04028A 4F26     	LDS.L   	@R15+,PR		;
04028C 000B     	RTS     				;
04028E 6EF6     	MOV.L   	@R15+,R14		;

040290 D303     	MOV.L   	@(#00C,PC),R3	;
040292 432B     	JMP     	@R3			;L020304();
040294 0009     	NOP     				;
040296 0000
040298 0602036C
04029C 060202C8
0402A0 06020304

L0402A4:
0402A4 4F22     	STS.L   	PR,@-R15		;R4-arg1,R5-arg2
0402A6 7FF8     	ADD     	#F8,R15		;
0402A8 1F41     	MOV.L   	R4,@(#4,R15)	;
0402AA 2F52     	MOV.L   	R5,@R15		;
0402AC 9309     	MOV.W   	@(#012,PC),R3	;
0402AE 65F3     	MOV     	R15,R5		;
0402B0 D604     	MOV.L   	@(#010,PC),R6	;
0402B2 6332     	MOV.L   	@R3,R3		;
0402B4 7504     	ADD     	#04,R5		;
0402B6 430B     	JSR     	@R3			;L002C5C(arg2,&arg1,0X7FFFFFFF);
0402B8 64F2     	MOV.L   	@R15,R4		;
0402BA 7F08     	ADD     	#08,R15		;
0402BC 4F26     	LDS.L   	@R15+,PR		;
0402BE 000B     	RTS     				;
0402C0 0009     	NOP     				;
0402C2 05F8
0402C4 7FFFFFFF

L0202C8:							;R4-arg1,R5-arg2,R6-arg3
0402C8 2668     	TST     	R6,R6			;
0402CA 8F02     	BF/S    	L0402D2		;
0402CC 6743     	MOV     	R4,R7			;
0402CE 000B     	RTS     				;
0402D0 E000     	MOV     	#00,R0		;
L0402D2:
0402D2 E400     	MOV     	#00,R4		;
0402D4 6343     	MOV     	R4,R3			;
0402D6 3362     	CMP/HS 	R6,R3			;
0402D8 890A     	BT      	L0402F0		;
L0402DA:
0402DA 6274     	MOV.B   	@R7+,R2		;
0402DC 6154     	MOV.B   	@R5+,R1		;
0402DE 622C     	EXTU.B   	R2,R2			;
0402E0 611C     	EXTU.B   	R1,R1			;
0402E2 3210     	CMP/EQ 	R1,R2			;
0402E4 8901     	BT      	L0402EA		;
0402E6 A003     	BRA     	L0402F0		;
0402E8 0009     	NOP     				;
L0402EA:
0402EA 7401     	ADD     	#01,R4		;
0402EC 3462     	CMP/HS 	R6,R4			;
0402EE 8BF4     	BF      	L0402DA		;
L0402F0:
0402F0 6073     	MOV     	R7,R0			;
0402F2 70FF     	ADD     	#FF,R0		;
0402F4 6000     	MOV.B   	@R0,R0		;
0402F6 600C     	EXTU.B   	R0,R0			;
0402F8 75FF     	ADD     	#FF,R5		;
0402FA 6350     	MOV.B   	@R5,R3		;
0402FC 633C     	EXTU.B   	R3,R3			;
0402FE 3038     	SUB     	R3,R0			;
040300 000B     	RTS     				;
040302 0009     	NOP     				;


040304 2FD6     	MOV.L   	R13,@-R15		;
040306 3450     	CMP/EQ 	R5,R4			;
040308 891D     	BT      	#03A			;
04030A 3452     	CMP/HS 	R5,R4			;
04030C 8D0E     	BT/S    	#01C			;
04030E E700     	MOV     	#00,R7		;
040310 6D43     	MOV     	R4,R13		;
040312 6053     	MOV     	R5,R0			;
040314 3762     	CMP/HS 	R6,R7			;
040316 8D16     	BT/S    	#02C			;
040318 6573     	MOV     	R7,R5			;
04031A 62D3     	MOV     	R13,R2		;
04031C 6104     	MOV.B   	@R0+,R1		;
04031E 7501     	ADD     	#01,R5		;
040320 7D01     	ADD     	#01,R13		;
040322 3562     	CMP/HS 	R6,R5			;
040324 8FF9     	BF/S    	#1F2			;
040326 2210     	MOV.B   	R1,@R2		;
040328 A00D     	BRA     	#001A			;
04032A 0009     	NOP     				;
04032C 6D43     	MOV     	R4,R13		;
04032E 6053     	MOV     	R5,R0			;
040330 3D6C     	ADD     	R6,R13		;
040332 306C     	ADD     	R6,R0			;
040334 3762     	CMP/HS 	R6,R7			;
040336 8D06     	BT/S    	#00C			;
040338 6573     	MOV     	R7,R5			;
04033A 70FF     	ADD     	#FF,R0		;
04033C 7501     	ADD     	#01,R5		;
04033E 6300     	MOV.B   	@R0,R3		;
040340 3562     	CMP/HS 	R6,R5			;
040342 8FFA     	BF/S    	#1F4			;
040344 2D34     	MOV.B   	R3,@-R13		;
040346 6043     	MOV     	R4,R0			;
040348 000B     	RTS     				;
04034A 6DF6     	MOV.L   	@R15+,R13		;
L04034C:							;
	dc.b	"SEGA SATURN SYS "
040354 55524E20
040358 53595320
04035C 0000
04035E 0000
L040360:							;
	dc.b	"SECURITY  "
040368 2020
04036A 0000
L04036C:							;
	dc.b	"MB"
040370 00FF

	.org	0x00040400   	
L040400:
	.include	040400.bin




L07D380:							;void smpc_send_intback()
07D380 D30C     	MOV.L   	@(#030,PC),R3	;
07D382 0009     	NOP     				;
L07D384:
07D384 4310     	DT      	R3			;for (int i=0 i<3600000; i++);
07D386 8BFD     	BF      	L07D384		;
07D388 D10B     	MOV.L   	@(#02C,PC),R1	;
07D38A D50C     	MOV.L   	@(#030,PC),R5	;
07D38C D70C     	MOV.L   	@(#030,PC),R7	;
07D38E E001     	MOV     	#01,R0		;
07D390 2700     	MOV.B   	R0,@R7		;SMPC.SF = 0x01;
07D392 E001     	MOV     	#01,R0		;
07D394 2100     	MOV.B   	R0,@R1		;SMPC.IREG0 = 0x01;
07D396 E002     	MOV     	#02,R0		;
07D398 8012     	MOV.B   	R0,@(#02,R1)	;SMPC.IREG1 = 0x02;
07D39A E0F0     	MOV     	#F0,R0		;
07D39C 8014     	MOV.B   	R0,@(#04,R1)	;SMPC.IREG2 = 0xF0;
07D39E E010     	MOV     	#10,R0		;
07D3A0 2500     	MOV.B   	R0,@R5		;SMPC.COMREG = 0x10;
L07D3A2:
07D3A2 E446     	MOV     	#46,R4		;do {
07D3A4 4410     	DT      	R4			;
07D3A6 8BFD     	BF      	L07D3A4 		;  for (int i=0 i<70; i++);
07D3A8 6070     	MOV.B   	@R7,R0		;
07D3AA C801     	TST     	#01,R0		;
07D3AC 8BF9     	BF      	L07D3A2		;} while (SMPC.SF);
07D3AE 000B     	RTS     				;
07D3B0 0009     	NOP     				;
07D3B2 0009     	NOP     				;
07D3B4 0036EE80
07D3B8 20100001
07D3BC 2010001F
07D3C0 20100063

