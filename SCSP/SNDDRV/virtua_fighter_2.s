RESET_SSP:      	00004000
RESET_PC:       	00000122
BUS_ERROR:      	000004CC
ADDRESS_ERROR:  	000004D0
INVALID_CMD:    	000004D4
CALC_BY_0:      	000004D4
CHK_CMD:        	000004D4
TRAPV_CMD:      	000004D4
PRIV_VIOL:      	000004D4
TRACE:          	000004D4
LINE_1010:      	000004D4
LINE_1111:      	000004D4
RESERVED_12:    	000004D4
RESERVED_13:    	000004D4
RESERVED_14:    	000004D4
UNINIT_INT:     	000004D4
RESERVED_16:    	000004D4
RESERVED_17:    	000004D4
RESERVED_18:    	000004D4
RESERVED_19:    	000004D4
RESERVED_20:    	000004D4
RESERVED_21:    	000004D4
RESERVED_22:    	000004D4
RESERVED_23:    	000004D4
SPURIOUS_INT:   	000004D4
LVL1_INT:       	0000053A
LVL2_INT:       	00001D54
LVL3_INT:       	00000502
LVL4_INT:       	000004D4
LVL5_INT:       	000004D4
LVL6_INT:       	000004D4
LVL7_INT:       	000004D4
TRAP_32:        	000004D4
TRAP_33:        	000004D4
TRAP_34:        	000004D4
TRAP_35:        	000004D4
TRAP_36:        	000004D4
TRAP_37:        	000004D4
TRAP_38:        	000004D4
TRAP_39:        	000004D4
TRAP_40:        	000004D4
TRAP_41:        	000004D4
TRAP_42:        	000004D4
TRAP_43:        	000004D4
TRAP_44:        	000004D4
TRAP_45:        	000004D4
TRAP_46:        	000004D4
TRAP_47:        	000004D4
RESERVED_48:    	000004D4
RESERVED_49:    	000004D4
RESERVED_50:    	000004D4
RESERVED_51:    	000004D4
RESERVED_52:    	000004D4
RESERVED_53:    	000004D4
RESERVED_54:    	000004D4
RESERVED_55:    	000004D4
RESERVED_56:    	000004D4
RESERVED_57:    	000004D4
RESERVED_58:    	000004D4
RESERVED_59:    	000004D4
RESERVED_60:    	000004D4
RESERVED_61:    	000004D4
RESERVED_62:    	000004D4
RESERVED_63:    	000004D4

	.org 0x000100
	dc.b	"Ver1.26 |95 11/07|Tit&Sat by Hiro",0

RESET_PC:
000122 46FC         2700    	MOVE    #$2700, SR		;
000126 4280                 	CLR     D0			;
000128 4281                 	CLR     D1			;
00012A 4282                 	CLR     D2			;
00012C 4283                 	CLR     D3			;
00012E 4284                 	CLR     D4			;
000130 4285                 	CLR     D5			;
000132 4286                 	CLR     D6			;
000134 4287                 	CLR     D7			;
000136 2040                 	MOVE.L  D0,A0 			;
000138 2240                 	MOVE.L  D0,A1 			;
00013A 2440                 	MOVE.L  D0,A2 			;
00013C 2640                 	MOVE.L  D0,A3 			;
00013E 2840                 	MOVE.L  D0,A4 			;
000140 4BF9         00100000	LEA     $00100000.L, A5		;
000146 4DF8         3000    	LEA     $3000.W, A6		;
00014A 3E3C 4000            	MOVE.W  #$00004000,D7 		;
00014E E099                 	ROR.L   #0, D1			;
000150 51CF FFFC            	DBRA    D7, #$FFFC		;
000154 3B7C 0300    0400    	MOVE.W  #$00000300,(#$0400,A5) 	;SCSP.M4 = 1; SCSP.DB = 1; SCSP.MVOL = 0;
00015A 6100 01CA            	BRS     #$01CA			;
00015E 6100 0106            	BRS     #$0106			;
000162 6100 00A6            	BRS     #$00A6			;
000166 6100 0340            	BRS     #$0340			;
00016A 6100 03C0            	BRS     #$03C0			;
00016E 6100 01C6            	BRS     #$01C6			;
000172 1B7C 000F    0401    	MOVE.B  #$0000000F,(#$0401,A5) 	;SCSP.MVOL = 15;
000178 3D7C 4F4B    0C2A    	MOVE.W  #$00004F4B,(#$0C2A,A6) 	;*(u16*)0x003C2A = "OK";
00017E 46FC         2000    	MOVE    #$00002000, SR		;
L000182:							;while (1) {
000182 6100 0546            	BRS     L0006CA			;  cmd_poll();
000186 6100 0396            	BRS     L00051E			;  L00051E();
00018A 4A38         4040    	TST.B   $4040.W			;
00018E 6702                 	BEQ     L000192			;  if ()
000190 612E                 	BRS     L0001C0			;    L0001C0();
000192 4A6E         0EFE    	TST.W   (#$0EFE,A6)		;
000196 67EA                 	BEQ     L000182		`	;  if () continue;
000198 102E 0EE0            	MOVE.B  (#$0EE0,A6),D0 		;
00019C D02E         0EE1    	ADD.B   D0, (#$0EE1,A6)		;
0001A0 66E0                 	BNE     L000182			;  if () continue;
0001A2 3D7C FFFF    0EFE    	MOVE.W  #$FFFF,(#$0EFE,A6) 	;
0001A8 46FC         2700    	MOVE    #$2700, SR		;
L0001AC:
0001AC 4A6E         0EFE    	TST.W   (#$0EFE,A6)		;
0001B0 66FA                 	BNE     L0001AC			;  while (*(u16*)0x003EFE != 0);
0001B2 6100 00B2            	BRS     L000266			;  dsp_mem_init();
0001B6 6100 017E            	BRS     L000336			;  L000336();
0001BA 46FC         2000    	MOVE    #$00002000, SR		;
0001BE 60C2                 	BRA     L000182			;}

L0001C0:
0001C0 0838 0006    4040    	BTST    #$06, $4040.W		;
0001C6 6732                 	BEQ     #$0032			;
0001C8 43F9         0006FFF8	LEA     $0006FFF8.L, A1		;
0001CE 0C99 73656761        	CMPI.L  #$73656761, (A1)+	;
0001D4 6732                 	BEQ     #$0032			;
0001D6 0C91 73656761        	CMPI.L  #$73656761, (A1)	;
0001DC 672A                 	BEQ     #$002A			;
0001DE 08B8 0006    4040    	BCLR    #$06, $4040.W		;
0001E4 103C 0018            	MOVE.B  #$00000018,D0 		;
0001E8 0838 0001    4040    	BTST    #$01, $4040.W		;
0001EE 6706                 	BEQ     #$0006			;
0001F0 002D 0008    0020    	ORI.B   #$0020, (#$0006,A5) 	;
0001F6 812D         0000    	OR.B    D0, (#$0000,A5)		;
0001FA 302D 0408            	MOVE.W  (#$0408,A5),D0 		;
0001FE EE48                 	LSR.W   #7, D0			;
000200 0200 000F            	ANDI.B  #$000F, D0		;
000204 11C0         4045    	MOVE.B  D0,$4045.W 		;
000208 4E75                 	RTS     			;

00020A 204D                 	MOVE.L  A5,A0 			;
00020C 7010                 	MOVEQ   #$10, D0		;
00020E 72FF                 	MOVEQ   #$FF, D1		;
000210 7E1F                 	MOVEQ   #$1F, D7		;
000212 42A8         000C    	CLR     (#$000C,A0)		;
000216 42A8         0012    	CLR     (#$0012,A0)		;
00021A 1141         000B    	MOVE.B  D1,(#$000B,A0) 		;
00021E 1141         000D    	MOVE.B  D1,(#$000D,A0) 		;
000222 1140         0000    	MOVE.B  D0,(#$0000,A0) 		;
000226 41E8         0020    	LEA     (#$0020,A0), A0		;
00022A 51CF FFE6            	DBRA    D7, #$FFE6		;
00022E 41ED         0418    	LEA     (#$0418,A5), A0		;
000232 43F9         00000252	LEA     $00000252.L, A1		;
000238 7E09                 	MOVEQ   #$09, D7		;
00023A 30D9                 	MOVE.W  (A1)+,(A0)+ 		;
00023C 51CF FFFC            	DBRA    D7, #$FFFC		;
000240 102D 0405            	MOVE.B  (#$0405,A5),D0 		;
000244 102D 0405            	MOVE.B  (#$0405,A5),D0 		;
000248 102D 0405            	MOVE.B  (#$0405,A5),D0 		;
00024C 102D 0405            	MOVE.B  (#$0405,A5),D0 		;
000250 4E75                 	RTS     			;
000252 00CE,0100,03C6,01C8,0000,01C8,0088,0048,0000,0020 

L000266:							;void dsp_mem_init()
000266 3B7C            		ORI.B   #$3B7C, -(A0) 		;
000268 0138         0402    	BTST    D0, $FFFC.W 		;
00026C 6100 15AA            	BRS     L001818			;dsp_mem_clear();
000270 2478 4018            	MOVE.L  $4018.W,A2 		;u8* src = *(u32*)0x004018;
000274 200A                 	MOVE.L  A2,D0 			;
000276 6A02                 	BPL     L00027A			;if (src & 0x80000000)
000278 4E75                 	RTS     			;  return;
L00027A:
00027A 422E         0EF1    	CLR     (#$0EF1,A6)		;*(u8*)0x003EF1 = 0;
00027E 4280                 	CLR     D0			;
000280 302A 0002            	MOVE.W  (#$0002,A2),D0 		;u16 offs = *(u16*)&src[2];
000284 6BF2                 	BMI     #$FFF2			;
000286 D5C0                 	ADDA.L  D0, A2			;src += offs;
000288 41ED         0700    	LEA     (#$0700,A5), A0		;u8* dst = &SCSP.COEF;
00028C 4A5A                 	TST.W   (A2)+			;src += 2;
L00028E:
00028E 4280                 	CLR     D0			;while (1)
000290 101A                 	MOVE.B  (A2)+,D0 		;  u8 v = *src++;
000292 6B06                 	BMI     L00029A			;  if (v < 0x80) {
000294 10C0                 	MOVE.B  D0,(A0)+ 		;    *dst++ = v;
000296 10DA                 	MOVE.B  (A2)+,(A0)+ 		;    *dst++ = *src++;
000298 60F4                 	BRA     L00028E			;    continue;
L00029A:							;  }
00029A 2200                 	MOVE.L  D0,D1 			;
00029C 0200 000F            	ANDI.B  #$000F, D0		;  u8 patt = v & 0x0F;
0002A0 E649                 	LSR.W   #3, D1			;
0002A2 0201 000E            	ANDI.B  #$000E, D1		;  int mode = (v >> 4) & 7;
0002A6 43FB         1004    	LEA     (#$04,PC,D1), A1	;
0002AA 4ED1                 	JMP     (A1)			;  switch (mode) {
0002AC 6012                 	BRA     #$0012			;
0002AE 6018                 	BRA     #$0018			;
0002B0 601A                 	BRA     #$001A			;
0002B2 6024                 	BRA     #$0024			;
0002B4 602A                 	BRA     #$002A			;
0002B6 6002                 	BRA     #$0002			;
0002B8 6052                 	BRA     #$0052			;
L0002BA:							;  case 5: case 7:
0002BA 4280                 	CLR     D0			;
0002BC 6000 159A            	BRA     L001858			;    return L001858();
L0002C0:							;  case 0:
0002C0 4258                 	CLR     (A0)+			;
0002C2 51C8 FFFC            	DBRA    D0, #$FFFC		;
0002C6 60C6                 	BRA     L00028E			;    break;
L0002C8:							;  case 1:
0002C8 30C0                 	MOVE.W  D0,(A0)+ 		;
0002CA 60C2                 	BRA     L00028E			;    break;
L0002CC:							;  case 2:
0002CC 323C 1000            	MOVE.W  #$00001000,D1 		;
0002D0 E148                 	LSL.W   #0, D0			;
0002D2 8041                 	OR.W    D1, D0			;
0002D4 30C0                 	MOVE.W  D0,(A0)+ 		;
0002D6 60B6                 	BRA     L00028E			;
L0002D8:							;  case 3:
0002D8 0040 2000            	ORI.W   #$2000, D0 		;
0002DC 30C0                 	MOVE.W  D0,(A0)+ 		;
0002DE 60AE                 	BRA     L00028E			;    break;
L0002E0:							;  case 4:
0002E0 30FC 2000            	MOVE.W  #$00002000,(A0)+ 	;
0002E4 2200                 	MOVE.L  D0,D1 			;
0002E6 0200 0008            	ANDI.B  #$0008, D0		;
0002EA 7401                 	MOVEQ   #$01, D2		;
0002EC 0201 0003            	ANDI.B  #$0003, D1		;
0002F0 670A                 	BEQ     #$000A			;
0002F2 7402                 	MOVEQ   #$02, D2		;
0002F4 0C01 0001            	CMPI.B  #$0001, D1		;
0002F8 6702                 	BEQ     #$0002			;
0002FA 7411                 	MOVEQ   #$11, D2		;
0002FC 30C2                 	MOVE.W  D2,(A0)+ 		;
0002FE 4A00                 	TST.B   D0			;
000300 6600 FF8C            	BNE     #$FF8C			;
000304 10DA                 	MOVE.B  (A2)+,(A0)+ 		;
000306 4218                 	CLR     (A0)+			;
000308 6000 FF84            	BRA     L00028E			;    break;
L00030C:							;  case 6:
00030C 10DA                 	MOVE.B  (A2)+,(A0)+ 		;
00030E 10DA                 	MOVE.B  (A2)+,(A0)+ 		;    break;
000310 6000 FF7C            	BRA     L00028E			;  } 
								;continue; }

L000314:							;void mute_dsp()
000314 4284                 	CLR     D4			;
000316 7E11                 	MOVEQ   #$11, D7		;
L000318:
000318 4235         4017    	CLR     (#$17,A5,D4)		;for (int i=0; i<32; i++)
00031C 0644 0020            	ADDI.W  #$0020, D4		;  SCSP.SLOT[i].EFSDL = SCSP.SLOT[i].EFPAN = 0;
000320 51CF FFF6            	DBRA    D7, L000318		;
000324 4E75                 	RTS     			;

000326 41EE         0160    	LEA     (#$0160,A6), A0		;
00032A 3E3C 0367            	MOVE.W  #$00000367,D7 		;
00032E 4298                 	CLR     (A0)+			;
000330 51CF FFFC            	DBRA    D7, #$FFFC		;
000334 4E75                 	RTS     			;

L000336:
000336 45EE         0380    	LEA     (#$0380,A6), A2		;
00033A 7E1F                 	MOVEQ   #$1F, D7		;
00033C 429A                 	CLR     (A2)+			;
00033E 51CF FFFC            	DBRA    D7, #$FFFC		;
000342 2678 4010            	MOVE.L  $4010.W,A3 		;
000346 2E0B                 	MOVE.L  A3,D7 			;
000348 6B2E                 	BMI     #$002E			;
00034A 45EE         0380    	LEA     (#$0380,A6), A2		;
00034E 2278 4024            	MOVE.L  $4024.W,A1 		;
000352 7E07                 	MOVEQ   #$07, D7		;
000354 4280                 	CLR     D0			;
000356 1019                 	MOVE.B  (A1)+,D0 		;
000358 6B16                 	BMI     #$0016			;
00035A 1540         0001    	MOVE.B  D0,(#$0001,A2) 		;
00035E E548                 	LSL.W   #2, D0			;
000360 2873 0002            	MOVE.L  (#$02,A3,D0),A4 	;
000364 156C 0002    0003    	MOVE.B  (#$0002,A4),(#$0003,A2) ;
00036A 156C 0003    0004    	MOVE.B  (#$0003,A4),(#$0004,A2) ;
000370 45EA         0010    	LEA     (#$0010,A2), A2		;
000374 51CF FFDE            	DBRA    D7, #$FFDE		;
000378 4A38         4040    	TST.B   $4040.W			;
00037C 6700 00DA            	BEQ     #$00DA			;
000380 203C 10200000        	MOVE.L  #$10200000,D0 		;
000386 0838 0000    4040    	BTST    #$00, $4040.W		;
00038C 6604                 	BNE     #$0004			;
00038E 08C0 0014            	BSET    #$00000014, D0		;
000392 223C 001F001F        	MOVE.L  #$001F001F,D1 		;
000398 4283                 	CLR     D3			;
00039A 3638 4046            	MOVE.W  $4046.W,D3 		;
00039E 43EE         0400    	LEA     (#$0400,A6), A1		;
0003A2 522E         0EE1    	ADDQ.B  #$1, (#$0EE1,A6)	;
0003A6 137C 0048    0002    	MOVE.B  #$00000048,(#$0002,A1) 	;
0003AC 137C 00FF    0004    	MOVE.B  #$000000FF,(#$0004,A1) 	;
0003B2 137C 0080    0009    	MOVE.B  #$00000080,(#$0009,A1) 	;
0003B8 2400                 	MOVE.L  D0,D2 			;
0003BA 84B8         4048    	OR.L    D2, $4048.W		;
0003BE 2B42         0000    	MOVE.L  D2,(#$0000,A5) 		;
0003C2 2B43         0004    	MOVE.L  D3,(#$0004,A5) 		;
0003C6 2B41         0008    	MOVE.L  D1,(#$0008,A5) 		;
0003CA 4228         000C    	CLR     (#$000C,A0)		;
0003CE 1B78 4041    000D    	MOVE.B  $4041.W,(#$000D,A5) 	;
0003D4 4268         000E    	CLR     (#$000E,A0)		;
0003D8 3B78 4042    0010    	MOVE.W  $4042.W,(#$0010,A5) 	;
0003DE 4268         0012    	CLR     (#$0012,A0)		;
0003E2 4228         0015    	CLR     (#$0015,A0)		;
0003E6 1B7C 0080    0016    	MOVE.B  #$00000080,(#$0016,A5) 	;
0003EC 0838 0001    4040    	BTST    #$01, $4040.W		;
0003F2 674E                 	BEQ     #$004E			;
0003F4 522E         0EE1    	ADDQ.B  #$1, (#$0EE1,A6)	;
0003F8 137C 0048    0012    	MOVE.B  #$00000048,(#$0012,A1) 	;
0003FE 137C 00FF    0014    	MOVE.B  #$000000FF,(#$0014,A1) 	;
000404 137C 0080    0019    	MOVE.B  #$00000080,(#$0019,A1) 	;
00040A 80B8         404C    	OR.L    D0, $404C.W		;
00040E 2B40         0020    	MOVE.L  D0,(#$0020,A5) 		;
000412 2B43         0024    	MOVE.L  D3,(#$0024,A5) 		;
000416 2B41         0028    	MOVE.L  D1,(#$0028,A5) 		;
00041A 4228         002C    	CLR     (#$002C,A0)		;
00041E 1B78 4041    002D    	MOVE.B  $4041.W,(#$002D,A5) 	;
000424 4268         002E    	CLR     (#$002E,A0)		;
000428 3B78 4042    0030    	MOVE.W  $4042.W,(#$0030,A5) 	;
00042E 4268         0032    	CLR     (#$0032,A0)		;
000432 4228         0035    	CLR     (#$0035,A0)		;
000436 1B7C 008F    0016    	MOVE.B  #$0000008F,(#$0016,A5) 	;
00043C 1B7C 009F    0036    	MOVE.B  #$0000009F,(#$0036,A5) 	;
000442 422D         0408    	CLR     (#$0408,A5)		;
000446 43F9         00070000	LEA     $00070000.L, A1		;
00044C 233C 73656761        	MOVE.L  #$73656761,-(A1) 	;
000452 233C 73656761        	MOVE.L  #$73656761,-(A1) 	;
000458 45EE         0C40    	LEA     (#$0C40,A6), A2		;
00045C 2278 4014            	MOVE.L  $4014.W,A1 		;
000460 4280                 	CLR     D0			;
000462 3029 0002            	MOVE.W  (#$0002,A1),D0 		;
000466 D3C0                 	ADDA.L  D0, A1			;
000468 4287                 	CLR     D7			;
00046A 3E19                 	MOVE.W  (A1)+,D7 		;
00046C 6726                 	BEQ     #$0026			;
00046E 3007                 	MOVE.W  D7,D0 			;
000470 EB4F                 	LSL.W   #5, D7			;
000472 4286                 	CLR     D6			;
000474 3C3C 0280            	MOVE.W  #$00000280,D6 		;
000478 9C47                 	SUB.W   D7, D6			;
00047A D5C6                 	ADDA.L  D6, A2			;
00047C 3E00                 	MOVE.W  D0,D7 			;
00047E 5347                 	SUBQ.W  #$1, D7			;
000480 7C0F                 	MOVEQ   #$0F, D6		;
000482 14D9                 	MOVE.B  (A1)+,(A2)+ 		;
000484 51CE FFFC            	DBRA    D6, #$FFFC		;
000488 429A                 	CLR     (A2)+			;
00048A 429A                 	CLR     (A2)+			;
00048C 429A                 	CLR     (A2)+			;
00048E 429A                 	CLR     (A2)+			;
000490 51CF FFEE            	DBRA    D7, #$FFEE		;
000494 49EE         0400    	LEA     (#$0400,A6), A4		;
000498 2D4C         0EE4    	MOVE.L  A4,(#$0EE4,A6) 		;
00049C 1D7C 00FF    0EE9    	MOVE.B  #$000000FF,(#$0EE9,A6) 	;
0004A2 4280                 	CLR     D0			;
0004A4 6000 154E            	BRA     #$154E			;
0004A8 49EE         0400    	LEA     (#$0400,A6), A4		;
0004AC 4280                 	CLR     D0			;
0004AE 7E1F                 	MOVEQ   #$1F, D7		;
0004B0 3880                 	MOVE.W  D0,(A4) 		;
0004B2 49EC         0020    	LEA     (#$0020,A4), A4		;
0004B6 0640 0020            	ADDI.W  #$0020, D0		;
0004BA 51CF FFF4            	DBRA    D7, #$FFF4		;
0004BE 72FF                 	MOVEQ   #$FF, D1		;
0004C0 1038 407D            	MOVE.B  $407D.W,D0 		;
0004C4 E0A9                 	LSR.L   D0, D1			;
0004C6 2D41         0ED8    	MOVE.L  D1,(#$0ED8,A6) 		;
0004CA 4E75                 	RTS     			;

0004CC 7008                 	MOVEQ   #$08, D0		;
0004CE 6006                 	BRA     #$0006			;
0004D0 7009                 	MOVEQ   #$09, D0		;
0004D2 6002                 	BRA     #$0002			;
0004D4 7007                 	MOVEQ   #$07, D0		;
0004D6 46FC         2700    	MOVE    #$00002700, SR		;
0004DA 4E71                 	NOP     			;
0004DC 0C38 0004    407F    	CMPI.B  #$0004, $407F.W		;
0004E2 66F6                 	BNE     #$FFF6			;
0004E4 4246                 	CLR     D6			;
0004E6 13C0         00C00001	MOVE.B  D0,$00C00001.L 		;
0004EC 3E3C 4000            	MOVE.W  #$00004000,D7 		;
0004F0 4E71                 	NOP     			;
0004F2 51CF FFFC            	DBRA    D7, #$FFFC		;
0004F6 4239         00C00001	CLR     $00C00001.L		;
0004FC 51CE FFEE            	DBRA    D6, #$FFEE		;
000500 60E2                 	BRA     #$FFE2			;

LVL3_INT:							;void midi_handler()
000502 0C38 0002    407F    	CMPI.B  #$0002, $407F.W		;
000508 660E                 	BNE     L000518			;
00050A 48E7 D1A0            	MOVEM.L  D1A0, -(A7)		;if (*(u8*)0x00407F == 2)
00050E 6100 2532            	BRS     L002A42			;  L002A42();
000512 4CDF 058B            	MOVEM.L  (A7)+, 58B		;
000516 4E73                 	RTE     			;
L000518:
000518 4A2D         0405    	TST.B   (#$0405,A5)		;else 
00051C 4E73                 	RTE     			;  SCSP.MIBUF;

L00051E:							;
00051E 0C38 0004    407F    	CMPI.B  #$0004, $407F.W		;
000524 6604                 	BNE     L00052A			;if (*(u8*)0x00407F == 4)
000526 6100 259E            	BRS     L002AC6			;  L002AC6();
L00052A:
00052A 4E75                 	RTS     			;

00052C 0C38 0004    407F    	CMPI.B  #$0004, $407F.W		;
000532 6604                 	BNE     #$0004			;
000534 6100 2698            	BRS     #$2698			;
000538 4E75                 	RTS     			;

LVL1_INT:							;void timer_B_C_handler()
00053A 48E7 A358            	MOVEM.L  A358, -(A7)		;
00053E 082D 0007    0421    	BTST    #$07, (#$0421,A5)	;
000544 6700 00FE            	BEQ     L000644			;return timer_C_handler();
000548 3B7C 0100    041A    	MOVE.W  #$00000100,(#$041A,A5) 	;SCSP.TBCTL = 1; SCSP.TIMB = 0;//set timer B
00054E 3B7C 0080    0422    	MOVE.W  #$00000080,(#$0422,A5) 	;SCSP.SCIRE = 0x0080;//clear timer B interrupt
000554 202E 0C20            	MOVE.L  (#$0C20,A6),D0 		;u32 cmd = *(u32*)0x003C20;
000558 4A00                 	TST.B   D0			;
00055A 6708                 	BEQ     L000564			;if (cmd & 0xFF != 0) {
00055C 42AE         0C20    	CLR     (#$0C20,A6)		;  *(u32*)0x003C20 = 0;
000560 6100 17A6            	BRS     L001D08			;  set_command(cmd);
L000564:							;}
000564 4CDF 1AC5            	MOVEM.L  (A7)+, 1AC5		;
000568 4E73                 	RTE     			;

L00056A:							;(void* ptr)//ptr-A4
00056A 3C2C 0000            	MOVE.W  (#$0000,A4),D6 		;
00056E 1BBC 001F    600B    	MOVE.B  #$0000001F,(#$0B,A5,D6) ;
000574 1BBC 0010    6000    	MOVE.B  #$00000010,(#$00,A5,D6) ;
00057A 082C 0002    0002    	BTST    #$02, (#$0002,A4)	;
000580 672C                 	BEQ     #$002C			;
000582 47EE         0C00    	LEA     (#$0C00,A6), A3		;
000586 426B         0000    	CLR     (#$0000,A3)		;
00058A 2C0C                 	MOVE.L  A4,D6 			;
00058C 0246 03E0            	ANDI.W  #$03E0, D6		;
000590 E24E                 	LSR.W   #1, D6			;
000592 0646 2600            	ADDI.W  #$2600, D6		;
000596 2D46         0C24    	MOVE.L  D6,(#$0C24,A6) 		;*(u32*)0x003C24 = 0x2600 | ((ptr & 0x3E0) >> 1);
00059A 6100 00A0            	BRS     L00063C			;L00063C();
00059E 142C 0006            	MOVE.B  (#$0006,A4),D2 		;
0005A2 7C01                 	MOVEQ   #$01, D6		;
0005A4 E5AE                 	LSL.L   D2, D6			;
0005A6 74FF                 	MOVEQ   #$FF, D2		;
0005A8 B586                 	EOR.L   D6, D2			;
0005AA CDAE         0ED8    	AND.L   D6, (#$0ED8,A6)		;
0005AE 1C2C 0002            	MOVE.B  (#$0002,A4),D6 		;
0005B2 422C         0002    	CLR     (#$0002,A4)		;
0005B6 42AC         000C    	CLR     (#$000C,A4)		;
0005BA 422C         000B    	CLR     (#$000B,A4)		;
0005BE 422C         0007    	CLR     (#$0007,A4)		;
0005C2 142C 0009            	MOVE.B  (#$0009,A4),D2 		;
0005C6 6B2C                 	BMI     #$002C			;
0005C8 422C         0009    	CLR     (#$0009,A4)		;
0005CC 532E         0EE0    	SUBQ.B  #$1, (#$0EE0,A6)	;
0005D0 0806 0002            	BTST    #$00000002, D6		;
0005D4 6704                 	BEQ     #$0004			;
0005D6 532E         0EE2    	SUBQ.B  #$1, (#$0EE2,A6)	;
0005DA 43EE         0409    	LEA     (#$0409,A6), A1		;
0005DE 7C1F                 	MOVEQ   #$1F, D6		;
0005E0 4A11                 	TST.B   (A1)			;
0005E2 6B06                 	BMI     #$0006			;
0005E4 B411                 	CMP.B   (A1), D2		;
0005E6 6402                 	BCC     #$0002			;
0005E8 5311                 	SUBQ.B  #$1, (A1)		;
0005EA 43E9         0020    	LEA     (#$0020,A1), A1		;
0005EE 51CE FFF0            	DBRA    D6, #$FFF0		;
0005F2 4E75                 	RTS     			;
0005F4 532E         0EE1    	SUBQ.B  #$1, (#$0EE1,A6)	;
0005F8 0806 0002            	BTST    #$00000002, D6		;
0005FC 6704                 	BEQ     #$0004			;
0005FE 532E         0EE3    	SUBQ.B  #$1, (#$0EE3,A6)	;
000602 4A2C         0004    	TST.B   (#$0004,A4)		;
000606 6A12                 	BPL     #$0012			;
000608 43EE         0380    	LEA     (#$0380,A6), A1		;
00060C 1C2C 0005            	MOVE.B  (#$0005,A4),D6 		;
000610 4282                 	CLR     D2			;
000612 142C 0006            	MOVE.B  (#$0006,A4),D2 		;
000616 0DB1         2000    	BCLR    D6, (#$12,A1,D0) 	;
00061A 142C 0009            	MOVE.B  (#$0009,A4),D2 		;
00061E 422C         0009    	CLR     (#$0009,A4)		;
000622 43EE         0409    	LEA     (#$0409,A6), A1		;
000626 7C1F                 	MOVEQ   #$1F, D6		;
000628 4A11                 	TST.B   (A1)			;
00062A 6A06                 	BPL     #$0006			;
00062C B411                 	CMP.B   (A1), D2		;
00062E 6402                 	BCC     #$0002			;
000630 5311                 	SUBQ.B  #$1, (A1)		;
000632 43E9         0020    	LEA     (#$0020,A1), A1		;
000636 51CE FFF0            	DBRA    D6, #$FFF0		;
00063A 4E75                 	RTS     			;

L00063C:
00063C 4AAE         0C24    	TST.L   (#$0C24,A6)		;
000640 66FA                 	BNE     #$FFFA			;
000642 4E75                 	RTS     			;

L000644:							;void timer_C_handler()
000644 3B7C 03C6    041C    	MOVE.W  #$000003C6,(#$041C,A5) 	;SCSP.TCCTL = 1; SCSP.TIMC = 0;//set timer C
00064A 3B7C 0100    0422    	MOVE.W  #$00000100,(#$0422,A5) 	;SCSP.SCIRE = 0x0100;//clear timer C interrupt
000650 49EE         0400    	LEA     (#$0400,A6), A4		;u8* ptr = 0x003400;
000654 7E1F                 	MOVEQ   #$1F, D7		;
L000656:
000656 082C 0006    0002    	BTST    #$06, (#$0002,A4)	;for (int i=0; i<32; i++,ptr+=0x20) {
00065C 675E                 	BEQ     L0006BC			;  if (!(ptr[2] & 0x40)) continue;
00065E 082C 0000    0002    	BTST    #$00, (#$0002,A4)	;
000664 670A                 	BEQ     L000670			;  if (ptr[2] & 0x01) {
000666 536C         000E    	SUBQ.W  #$1, (#$000E,A4)	;      
00066A 6604                 	BNE     L000670			;    if (--((u16*)&ptr[0xE]) == 0)
00066C 6100 FEFC            	BRS     L00056A			;      L00056A(ptr);
L000670:							;  }
000670 4A2C         0002    	TST.B   (#$0002,A4)		;
000674 6A46                 	BPL     L0006BC			;  if (!(ptr[2] & 0x80)) continue;
000676 3C2C 0000            	MOVE.W  (#$0000,A4),D6 		;
00067A E64E                 	LSR.W   #3, D6			;
00067C 47EE         0180    	LEA     (#$0180,A6), A3		;
000680 5333         6000    	SUBQ.B  #$1, (#$00,A3,D6)	;
000684 6626                 	BNE     L0006AC			;  if () {
000686 1433 6002            	MOVE.B  (#$02,A3,D6),D2 	;
00068A 6608                 	BNE     L000694			;    if () {
00068C 08AC 0007    0002    	BCLR    #$07, (#$0002,A4)	;      ptr[2] &= ~0x80;
000692 6028                 	BRA     L0006BC			;      continue;
L000694:							;    }
000694 1782         6000    	MOVE.B  D2,(#$00,A3,D6) 	;
000698 1433 6003            	MOVE.B  (#$03,A3,D6),D2 	;
00069C 670A                 	BEQ     L0006A8			;
00069E 1782         6001    	MOVE.B  D2,(#$01,A3,D6) 	;
0006A2 4233         6002    	CLR     (#$02,A3,D6)		;
0006A6 6004                 	BRA     L0006AC			;
0006A8 4433         6001    	NEG     (#$01,A3,D6)		;
L0006AC:							;  }
0006AC 1433 6001            	MOVE.B  (#$01,A3,D6),D2 	;
0006B0 4882                 	EXT.W   D2			;
0006B2 E24E                 	LSR.W   #1, D6			;
0006B4 0646 0600            	ADDI.W  #$0600, D6		;
0006B8 D575         6000    	ADD.W   (#$00,A5,D6), D2	;
L0006BC:							;
0006BC 49EC         0020    	LEA     (#$0020,A4), A4		;  
0006C0 51CF FF94            	DBRA    D7, #$FF94		;}
0006C4 4CDF 1AC5            	MOVEM.L (A7)+, 1AC5		;
0006C8 4E73                 	RTE     			;

L0006CA:							;void cmd_poll()
0006CA 4A2E         0ECC    	TST.B   (#$0ECC,A6)		;
0006CE 6602                 	BNE     L0006D2			;if (*(u8*)0x003ECC == 0) return;
0006D0 4E75                 	RTS     			;
L0006D2:
0006D2 102E 0ECC            	MOVE.B  (#$0ECC,A6),D0 		;u8 cmd_pending = *(u8*)0x003ECC;
0006D6 B02E         0EFA    	CMP.B   (#$0EFA,A6), D0		;
0006DA 6504                 	BCS     L0006E0			;if (cmd_pending <= *(u8*)0x003EFA)
0006DC 1D40         0EFA    	MOVE.B  D0,(#$0EFA,A6) 		;  *(u8*)0x003EFA = cmd_pending;
0006E0 532E         0ECC    	SUBQ.B  #$1, (#$0ECC,A6)	;*(u8*)0x003ECC--;
0006E4 47EE         0800    	LEA     (#$0800,A6), A3		;
0006E8 302E 0EC6            	MOVE.W  (#$0EC6,A6),D0 		;u16 offs = *(u16*)0x003EC6;
0006EC 0280 000003FF        	ANDI.L  #$000003FF, D0		;
0006F2 D7C0                 	ADDA.L  D0, A3			;u8* cmd_buf = 0x003800+offs;
0006F4 586E         0EC6    	ADDQ.W  #$4, (#$0EC6,A6)	;*(u16*)0x003EC6 -= 4;
0006F8 4280                 	CLR     D0			;
0006FA 101B                 	MOVE.B  (A3)+,D0 		;u8 b0 = cmd_buf[0];
0006FC 1D40         0EE8    	MOVE.B  D0,(#$0EE8,A6) 		;*(u8*)0x003EE8 = b0;
000700 2A00                 	MOVE.L  D0,D5 			;
000702 0200 00F0            	ANDI.B  #$00F0, D0		;
000706 0C00 00A0            	CMPI.B  #$00A0, D0		;
00070A 6700 0DD6            	BEQ     L0014E2			;if (b0 & 0xF0 == 0xA0) goto cmd_Ax;
00070E 0205 000F            	ANDI.B  #$000F, D5		;
000712 41EE         0C40    	LEA     (#$0C40,A6), A0		;
000716 7E13                 	MOVEQ   #$13, D7		;
000718 BA28         0001    	CMP.B   (#$0001,A0), D5		;
00071C 6618                 	BNE     #$0018			;
00071E 4A28         0000    	TST.B   (#$0000,A0)		;
000722 6712                 	BEQ     #$0012			;
000724 48E7 0510            	MOVEM.L  510, -(A7)		;
000728 46FC         2100    	MOVE    #$00002100, SR		;
00072C 6112                 	BRS     #$0012			;
00072E 46FC         2000    	MOVE    #$00002000, SR		;
000732 4CDF 08A0            	MOVEM.L  (A7)+, 8A0		;
000736 41E8         0020    	LEA     (#$0020,A0), A0		;
00073A 51CF FFDC            	DBRA    D7, #$FFDC		;
00073E 4E75                 	RTS     			;

000740 102E 0EE8            	MOVE.B  (#$0EE8,A6),D0 		;
000744 E408                 	LSR.B   #2, D0			;
000746 0240 001C            	ANDI.W  #$001C, D0		;
00074A 43FB         0004    	LEA     (#$04,PC,D0), A1	;
00074E 4ED1                 	JMP     (A1)			;
000750 6000 0660            	BRA     #$0660			;
000754 6000 0018            	BRA     #$0018			;
000758 6000 0012            	BRA     #$0012			;
00075C 6000 07E2            	BRA     #$07E2			;
000760 6000 0D26            	BRA     #$0D26			;
000764 6000 0006            	BRA     #$0006			;
000768 6000 06D4            	BRA     #$06D4			;
00076C 4E75                 	RTS     			;
00076E 4283                 	CLR     D3			;
000770 161B                 	MOVE.B  (A3)+,D3 		;
000772 3D43         0EDE    	MOVE.W  D3,(#$0EDE,A6) 		;
000776 4280                 	CLR     D0			;
000778 4281                 	CLR     D1			;
00077A 101B                 	MOVE.B  (A3)+,D0 		;
00077C 6700 063A            	BEQ     #$063A			;
000780 4284                 	CLR     D4			;
000782 1813                 	MOVE.B  (A3),D4 		;
000784 1D44         0EDE    	MOVE.B  D4,(#$0EDE,A6) 		;
000788 2278 4028            	MOVE.L  $4028.W,A1 		;
00078C 1228 000B            	MOVE.B  (#$000B,A0),D1 		;
000790 3231 1002            	MOVE.W  (#$02,A1,D1),D1 	;
000794 D3C1                 	ADDA.L  D1, A1			;
000796 1D71 0000    0ECD    	MOVE.B  (#$00,A1,D0),(#$0ECD,A6);
00079C 1028 0002            	MOVE.B  (#$0002,A0),D0 		;
0007A0 2478 400C            	MOVE.L  $400C.W,A2 		;
0007A4 E340                 	ASL.W   #1, D0			;
0007A6 3032 0002            	MOVE.W  (#$02,A2,D0),D0 	;
0007AA 6B00 0548            	BMI     #$0548			;
0007AE D5C0                 	ADDA.L  D0, A2			;
0007B0 0C12 00FF            	CMPI.B  #$00FF, (A2)		;
0007B4 6600 0118            	BNE     #$0118			;
0007B8 4A2A         0001    	TST.B   (#$0001,A2)		;
0007BC 6714                 	BEQ     #$0014			;
0007BE 4280                 	CLR     D0			;
0007C0 4A5A                 	TST.W   (A2)+			;
0007C2 EF4C                 	LSL.W   #7, D4			;
0007C4 D644                 	ADD.W   D4, D3			;
0007C6 B65A                 	CMP.W   (A2)+, D3		;
0007C8 6E00 052A            	BGT     #$052A			;
0007CC C6FC         000C    	MULU    #$0000000C, D3		;
0007D0 6018                 	BRA     #$0018			;
0007D2 4280                 	CLR     D0			;
0007D4 4A5A                 	TST.W   (A2)+			;
0007D6 101A                 	MOVE.B  (A2)+,D0 		;
0007D8 B600                 	CMP.B   D0, D3			;
0007DA 6D00 0518            	BLT     #$0518			;
0007DE B61A                 	CMP.B   (A2)+, D3		;
0007E0 6400 0512            	BCC     #$0512			;
0007E4 9600                 	SUB.B   D0, D3			;
0007E6 C6FC         000C    	MULU    #$0000000C, D3		;
0007EA D5C3                 	ADDA.L  D3, A2			;
0007EC 2D4A         0EF4    	MOVE.L  A2,(#$0EF4,A6) 		;
0007F0 220A                 	MOVE.L  A2,D1 			;
0007F2 3141         001E    	MOVE.W  D1,(#$001E,A0) 		;
0007F6 322A 0000            	MOVE.W  (#$0000,A2),D1 		;
0007FA 6B00 04F8            	BMI     #$04F8			;
0007FE 6100 011A            	BRS     #$011A			;
000802 102A 000B            	MOVE.B  (#$000B,A2),D0 		;
000806 6700 0024            	BEQ     #$0024			;
00080A 49EE         0400    	LEA     (#$0400,A6), A4		;
00080E 7E1F                 	MOVEQ   #$1F, D7		;
000810 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
000814 660E                 	BNE     #$000E			;
000816 B02C         0007    	CMP.B   (#$0007,A4), D0		;
00081A 6608                 	BNE     #$0008			;
00081C 6100 FD4C            	BRS     #$FD4C			;
000820 6000 016A            	BRA     #$016A			;
000824 49EC         0020    	LEA     (#$0020,A4), A4		;
000828 51CF FFE6            	DBRA    D7, #$FFE6		;
00082C 0828 0000    0000    	BTST    #$00, (#$0000,A0)	;
000832 6700 0154            	BEQ     #$0154			;
000836 162E 0ED6            	MOVE.B  (#$0ED6,A6),D3 		;
00083A 661A                 	BNE     #$001A			;
00083C 102E 0EE3            	MOVE.B  (#$0EE3,A6),D0 		;
000840 B038         407E    	CMP.B   $407E.W, D0		;
000844 6C1C                 	BGE     #$001C			;
000846 D02E         0EE2    	ADD.B   D0, (#$0EE2,A6)		;
00084A B038         407D    	CMP.B   $407D.W, D0		;
00084E 6C00 0512            	BGE     #$0512			;
000852 163C 0080            	MOVE.B  #$00000080,D3 		;
000856 1038 407C            	MOVE.B  $407C.W,D0 		;
00085A B02E         0EE1    	CMP.B   (#$0EE1,A6), D0		;
00085E 6E00 0128            	BGT     #$0128			;
000862 49EE         0400    	LEA     (#$0400,A6), A4		;
000866 4280                 	CLR     D0			;
000868 1238 407C            	MOVE.B  $407C.W,D1 		;
00086C 2401                 	MOVE.L  D1,D2 			;
00086E 0001 0080            	ORI.B   #$0080, D1 		;
000872 7E1F                 	MOVEQ   #$1F, D7		;
000874 4A03                 	TST.B   D3			;
000876 6604                 	BNE     #$0004			;
000878 1438 407E            	MOVE.B  $407E.W,D2 		;
00087C 4A2C         0009    	TST.B   (#$0009,A4)		;
000880 6A3A                 	BPL     #$003A			;
000882 4A03                 	TST.B   D3			;
000884 6608                 	BNE     #$0008			;
000886 082C 0002    0002    	BTST    #$02, (#$0002,A4)	;
00088C 672E                 	BEQ     #$002E			;
00088E B02C         000B    	CMP.B   (#$000B,A4), D0		;
000892 6E1A                 	BGT     #$001A			;
000894 670C                 	BEQ     #$000C			;
000896 102C 000B            	MOVE.B  (#$000B,A4),D0 		;
00089A 122C 0009            	MOVE.B  (#$0009,A4),D1 		;
00089E 224C                 	MOVE.L  A4,A1 			;
0008A0 600C                 	BRA     #$000C			;
0008A2 B22C         0009    	CMP.B   (#$0009,A4), D1		;
0008A6 6D06                 	BLT     #$0006			;
0008A8 122C 0009            	MOVE.B  (#$0009,A4),D1 		;
0008AC 224C                 	MOVE.L  A4,A1 			;
0008AE 5302                 	SUBQ.B  #$1, D2			;
0008B0 660A                 	BNE     #$000A			;
0008B2 B02A         000A    	CMP.B   (#$000A,A2), D0		;
0008B6 6500 043C            	BCS     #$043C			;
0008BA 600C                 	BRA     #$000C			;
0008BC 49EC         0020    	LEA     (#$0020,A4), A4		;
0008C0 51CF FFBA            	DBRA    D7, #$FFBA		;
0008C4 6000 042E            	BRA     #$042E			;
0008C8 2849                 	MOVE.L  A1,A4 			;
0008CA 6000 FF50            	BRA     #$FF50			;
0008CE D628         0004    	ADD.B   D3, (#$0004,A0)		;
0008D2 6B00 0420            	BMI     #$0420			;
0008D6 7E7F                 	MOVEQ   #$7F, D7		;
0008D8 4281                 	CLR     D1			;
0008DA 123C 000A            	MOVE.B  #$0000000A,D1 		;
0008DE 4A12                 	TST.B   (A2)			;
0008E0 6A06                 	BPL     #$0006			;
0008E2 4A5A                 	TST.W   (A2)+			;
0008E4 123C 0012            	MOVE.B  #$00000012,D1 		;
0008E8 B62A         0000    	CMP.B   (#$0000,A2), D3		;
0008EC 630A                 	BHI     #$000A			;
0008EE D5C1                 	ADDA.L  D1, A2			;
0008F0 51CF FFF6            	DBRA    D7, #$FFF6		;
0008F4 6000 03FE            	BRA     #$03FE			;
0008F8 2D4A         0EF4    	MOVE.L  A2,(#$0EF4,A6) 		;
0008FC 220A                 	MOVE.L  A2,D1 			;
0008FE 3141         001E    	MOVE.W  D1,(#$001E,A0) 		;
000902 D62A         0003    	ADD.B   D3, (#$0003,A2)		;
000906 43F9         00002582	LEA     $00002582.L, A1		;
00090C 1D71 3000    0ECE    	MOVE.B  (#$00,A1,D3),(#$0ECE,A6);
000912 322A 0004            	MOVE.W  (#$0004,A2),D1 		;
000916 6102                 	BRS     #$0002			;
000918 606E                 	BRA     #$006E			;
00091A 42AE         0EC8    	CLR     (#$0EC8,A6)		;
00091E 4A41                 	TST.W   D1			;
000920 6B36                 	BMI     #$0036			;
000922 2278 4000            	MOVE.L  $4000.W,A1 		;
000926 0241 0FFF            	ANDI.W  #$0FFF, D1		;
00092A B269         0002    	CMP.W   (#$0002,A1), D1		;
00092E 6F36                 	BLE     #$0036			;
000930 2038 4004            	MOVE.L  $4004.W,D0 		;
000934 6B0C                 	BMI     #$000C			;
000936 2240                 	MOVE.L  D0,A1 			;
000938 B251                 	CMP.W   (A1), D1		;
00093A 6506                 	BCS     #$0006			;
00093C B269         0002    	CMP.W   (#$0002,A1), D1		;
000940 6520                 	BCS     #$0020			;
000942 2038 4008            	MOVE.L  $4008.W,D0 		;
000946 6B0C                 	BMI     #$000C			;
000948 2240                 	MOVE.L  D0,A1 			;
00094A B251                 	CMP.W   (A1), D1		;
00094C 6506                 	BCS     #$0006			;
00094E B269         0002    	CMP.W   (#$0002,A1), D1		;
000952 650E                 	BCS     #$000E			;
000954 4A9F                 	TST.L   (A7)+			;
000956 4E75                 	RTS     			;
000958 2278 403C            	MOVE.L  $403C.W,A1 		;
00095C 0241 03FF            	ANDI.W  #$03FF, D1		;
000960 600A                 	BRA     #$000A			;
000962 2D49         0EC8    	MOVE.L  A1,(#$0EC8,A6) 		;
000966 9251                 	SUB.W   (A1), D1		;
000968 43E9         0004    	LEA     (#$0004,A1), A1		;
00096C C2FC         000C    	MULU    #$0000000C, D1		;
000970 D3C1                 	ADDA.L  D1, A1			;
000972 2D49         0ED0    	MOVE.L  A1,(#$0ED0,A6) 		;
000976 1D69 0000    0ED6    	MOVE.B  (#$0000,A1),(#$0ED6,A6) ;
00097C 6608                 	BNE     #$0008			;
00097E 4A38         407D    	TST.B   $407D.W			;
000982 6602                 	BNE     #$0002			;
000984 4A9F                 	TST.L   (A7)+			;
000986 4E75                 	RTS     			;
000988 6100 0386            	BRS     #$0386			;
00098C 4284                 	CLR     D4			;
00098E 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
000992 1BBC 0010    4000    	MOVE.B  #$00000010,(#$00,A5,D4) ;
000998 0828 0001    0000    	BTST    #$01, (#$0000,A0)	;
00099E 6700 0072            	BEQ     #$0072			;
0009A2 196A 000A    000B    	MOVE.B  (#$000A,A2),(#$000B,A4) ;
0009A8 196A 000B    0007    	MOVE.B  (#$000B,A2),(#$0007,A4) ;
0009AE 196A 0003    000A    	MOVE.B  (#$0003,A2),(#$000A,A4) ;
0009B4 102A 0004            	MOVE.B  (#$0004,A2),D0 		;
0009B8 4A2A         0005    	TST.B   (#$0005,A2)		;
0009BC 6A04                 	BPL     #$0004			;
0009BE 1028 0006            	MOVE.B  (#$0006,A0),D0 		;
0009C2 6100 0332            	BRS     #$0332			;
0009C6 102A 0005            	MOVE.B  (#$0005,A2),D0 		;
0009CA 1600                 	MOVE.B  D0,D3 			;
0009CC 0203 0007            	ANDI.B  #$0007, D3		;
0009D0 6604                 	BNE     #$0004			;
0009D2 1028 000C            	MOVE.B  (#$000C,A0),D0 		;
0009D6 0200 007F            	ANDI.B  #$007F, D0		;
0009DA 1B80         4015    	MOVE.B  D0,(#$15,A5,D4) 	;
0009DE 142A 0002            	MOVE.B  (#$0002,A2),D2 		;
0009E2 08EC 0004    0002    	BSET    #$04, (#$0002,A4)	;
0009E8 0828 0000    0000    	BTST    #$00, (#$0000,A0)	;
0009EE 673E                 	BEQ     #$003E			;
0009F0 196E 0EE1    0009    	MOVE.B  (#$0EE1,A6),(#$0009,A4) ;
0009F6 002C 0080    0009    	ORI.B   #$0009, (#$0009,A4) 	;
0009FC 522E         0EE1    	ADDQ.B  #$1, (#$0EE1,A6)	;
000A00 08EC 0003    0002    	BSET    #$03, (#$0002,A4)	;
000A06 4A2E         0ED6    	TST.B   (#$0ED6,A6)		;
000A0A 6636                 	BNE     #$0036			;
000A0C 522E         0EE3    	ADDQ.B  #$1, (#$0EE3,A6)	;
000A10 6030                 	BRA     #$0030			;
000A12 142E 0ECE            	MOVE.B  (#$0ECE,A6),D2 		;
000A16 422C         000B    	CLR     (#$000B,A4)		;
000A1A 196A 0002    000A    	MOVE.B  (#$0002,A2),(#$000A,A4) ;
000A20 1028 0006            	MOVE.B  (#$0006,A0),D0 		;
000A24 6100 02D0            	BRS     #$02D0			;
000A28 1BA8 000C    4015    	MOVE.B  (#$000C,A0),(#$15,A5,D4);
000A2E 196E 0EE0    0009    	MOVE.B  (#$0EE0,A6),(#$0009,A4) ;
000A34 522E         0EE0    	ADDQ.B  #$1, (#$0EE0,A6)	;
000A38 4A2E         0ED6    	TST.B   (#$0ED6,A6)		;
000A3C 6604                 	BNE     #$0004			;
000A3E 522E         0EE2    	ADDQ.B  #$1, (#$0EE2,A6)	;
000A42 396E 0EDE    0010    	MOVE.W  (#$0EDE,A6),(#$0010,A4) ;
000A48 1942         0005    	MOVE.B  D2,(#$0005,A4) 		;
000A4C 1968 0001    0004    	MOVE.B  (#$0001,A0),(#$0004,A4) ;
000A52 4280                 	CLR     D0			;
000A54 4286                 	CLR     D6			;
000A56 102E 0ECD            	MOVE.B  (#$0ECD,A6),D0 		;
000A5A 1940         0008    	MOVE.B  D0,(#$0008,A4) 		;
000A5E 1C28 000A            	MOVE.B  (#$000A,A0),D6 		;
000A62 CCC0                 	MULU    D0, D6			;
000A64 E04E                 	LSR.W   #0, D6			;
000A66 6706                 	BEQ     #$0006			;
000A68 4606                 	NOT    	D6			;
000A6A E20E                 	LSR.B   #1, D6			;
000A6C 6002                 	BRA     #$0002			;
000A6E 7CFF                 	MOVEQ   #$FF, D6		;
000A70 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
000A74 670C                 	BEQ     #$000C			;
000A76 DC2E         0EDD    	ADD.B   D6, (#$0EDD,A6)		;
000A7A 6504                 	BCS     #$0004			;
000A7C 5606                 	ADDQ.B  #$3, D6			;
000A7E 6402                 	BCC     #$0002			;
000A80 7CFF                 	MOVEQ   #$FF, D6		;
000A82 1B86         400D    	MOVE.B  D6,(#$0D,A5,D4) 	;
000A86 43EE         0160    	LEA     (#$0160,A6), A1		;
000A8A E34D                 	LSL.W   #1, D5			;
000A8C 3A31 5000            	MOVE.W  (#$00,A1,D5),D5 	;
000A90 6100 043C            	BRS     #$043C			;
000A94 48C6                 	EXT.L   D6			;
000A96 EB8E                 	LSL.L   #5, D6			;
000A98 4846                 	SWAP    D6			;
000A9A 1002                 	MOVE.B  D2,D0 			;
000A9C 0240 00F0            	ANDI.W  #$00F0, D0		;
000AA0 E848                 	LSR.W   #4, D0			;
000AA2 D046                 	ADD.W   D6, D0			;
000AA4 6706                 	BEQ     #$0006			;
000AA6 0C40 0008            	CMPI.W  #$0008, D0		;
000AAA 6518                 	BCS     #$0018			;
000AAC 43F9         00002642	LEA     $00002642.L, A1		;
000AB2 3431 5000            	MOVE.W  (#$00,A1,D5),D2 	;
000AB6 163C 0010            	MOVE.B  #$00000010,D3 		;
000ABA 9600                 	SUB.B   D0, D3			;
000ABC 0203 000F            	ANDI.B  #$000F, D3		;
000AC0 E66A                 	LSR.W   D3, D2			;
000AC2 6004                 	BRA     #$0004			;
000AC4 343C 0EBA            	MOVE.W  #$00000EBA,D2 		;
000AC8 3BA8 0008    4012    	MOVE.W  (#$0008,A0),(#$12,A5,D4);
000ACE 226E 0EF4            	MOVE.L  (#$0EF4,A6),A1 		;
000AD2 2BA9 0006    4008    	MOVE.L  (#$0006,A1),(#$08,A5,D4);
000AD8 1A29 0009            	MOVE.B  (#$0009,A1),D5 		;
000ADC 0245 001F            	ANDI.W  #$001F, D5		;
000AE0 E34D                 	LSL.W   #1, D5			;
000AE2 45F9         00000C3C	LEA     $00000C3C.L, A2		;
000AE8 3972 5000    000C    	MOVE.W  (#$00,A2,D5),(#$000C,A4);
000AEE 0828 0004    0000    	BTST    #$04, (#$0000,A0)	;
000AF4 6758                 	BEQ     #$0058			;
000AF6 1BBC 0002    400C    	MOVE.B  #$00000002,(#$0C,A5,D4) ;
000AFC 1BA9 000A    400E    	MOVE.B  (#$000A,A1),(#$0E,A5,D4);
000B02 3204                 	MOVE.W  D4,D1 			;
000B04 E849                 	LSR.W   #4, D1			;
000B06 0641 0600            	ADDI.W  #$0600, D1		;
000B0A 3BA9 000C    1000    	MOVE.W  (#$000C,A1),(#$00,A5,D1);
000B10 3BA9 000E    1040    	MOVE.W  (#$000E,A1),(#$40,A5,D1);
000B16 1029 000B            	MOVE.B  (#$000B,A1),D0 		;
000B1A 6736                 	BEQ     #$0036			;
000B1C 08EC 0007    0002    	BSET    #$07, (#$0002,A4)	;
000B22 1A29 0010            	MOVE.B  (#$0010,A1),D5 		;
000B26 1C29 0011            	MOVE.B  (#$0011,A1),D6 		;
000B2A 3204                 	MOVE.W  D4,D1 			;
000B2C E649                 	LSR.W   #3, D1			;
000B2E 43EE         0180    	LEA     (#$0180,A6), A1		;
000B32 1380         1000    	MOVE.B  D0,(#$00,A1,D1) 	;
000B36 1385         1001    	MOVE.B  D5,(#$01,A1,D1) 	;
000B3A 1386         1003    	MOVE.B  D6,(#$03,A1,D1) 	;
000B3E 6708                 	BEQ     #$0008			;
000B40 0C06 0080            	CMPI.B  #$0080, D6		;
000B44 6602                 	BNE     #$0002			;
000B46 4240                 	CLR     D0			;
000B48 1380         1002    	MOVE.B  D0,(#$02,A1,D1) 	;
000B4C 6004                 	BRA     #$0004			;
000B4E 4275         400E    	CLR     (#$0E,A5,D4)		;
000B52 246E 0ED0            	MOVE.L  (#$0ED0,A6),A2 		;
000B56 2E2A 0000            	MOVE.L  (#$0000,A2),D7 		;
000B5A 6B00 0120            	BMI     #$0120			;
000B5E 203C 0006E000        	MOVE.L  #$0006E000,D0 		;
000B64 222E 0ED8            	MOVE.L  (#$0ED8,A6),D1 		;
000B68 4283                 	CLR     D3			;
000B6A 08C3 001F            	BSET    #$0000001F, D3		;
000B6E 7C1F                 	MOVEQ   #$1F, D6		;
000B70 E389                 	LSL.L   #1, D1			;
000B72 6410                 	BCC     #$0010			;
000B74 0480 00002000        	SUBI.L  #$00002000, D0		;
000B7A E28B                 	LSR.L   #1, D3			;
000B7C 51CE FFF2            	DBRA    D6, #$FFF2		;
000B80 6000 0172            	BRA     #$0172			;


000B84 87AE         0ED8    	OR.L    D3, (#$0ED8,A6)		;
000B88 1946         0006    	MOVE.B  D6,(#$0006,A4) 		;
000B8C 2BBC 00001FFF4004    	MOVE.L  #$00001FFF,(#$04,A5,D4) ;
000B94 47EE         0C00    	LEA     (#$0C00,A6), A3		;
000B98 2747         0004    	MOVE.L  D7,(#$0004,A3) 		;
000B9C 2740         0008    	MOVE.L  D0,(#$0008,A3) 		;
000BA0 2740         0010    	MOVE.L  D0,(#$0010,A3) 		;
000BA4 0080 10200000        	ORI.L   #$10200000, D0 		;
000BAA 4A2A         0008    	TST.B   (#$0008,A2)		;
000BAE 6B06                 	BMI     #$0006			;
000BB0 0080 00100000        	ORI.L   #$00100000, D0 		;
000BB6 2B80         4000    	MOVE.L  D0,(#$00,A5,D4) 	;
000BBA 3202                 	MOVE.W  D2,D1 			;
000BBC E349                 	LSL.W   #1, D1			;
000BBE 3741         001C    	MOVE.W  D1,(#$001C,A3) 		;
000BC2 0641 0EBA            	ADDI.W  #$0EBA, D1		;
000BC6 3741         001E    	MOVE.W  D1,(#$001E,A3) 		;
000BCA 222A 0004            	MOVE.L  (#$0004,A2),D1 		;
000BCE 0881 001F            	BCLR    #$0000001F, D1		;
000BD2 6724                 	BEQ     L000BF8			;if () {
000BD4 202A 0008            	MOVE.L  (#$0008,A2),D0 		;
000BD8 0880 001F            	BCLR    #$0000001F, D0		;
000BDC 2740         0014    	MOVE.L  D0,(#$0014,A3) 		;
000BE0 9087                 	SUB.L   D7, D0			;
000BE2 2E01                 	MOVE.L  D1,D7 			;
000BE4 9E80                 	SUB.L   D0, D7			;
000BE6 2747         0018    	MOVE.L  D7,(#$0018,A3) 		;
000BEA 08EB 0000    0000    	BSET    #$00, (#$0000,A3)	;
000BF0 08AC 0004    0002    	BCLR    #$04, (#$0002,A4)	;
000BF6 6012                 	BRA     L000C0A			;}
L000BF8:
000BF8 2001                 	MOVE.L  D1,D0 			;else {
000BFA 5380                 	SUBQ.L  #$1, D0			;
000BFC E44A                 	LSR.W   #2, D2			;
000BFE 80C2                 	DIVU    D2, D0			;
000C00 3940         000E    	MOVE.W  D0,(#$000E,A4) 		;
000C04 08EC 0000    0002    	BSET    #$00, (#$0002,A4)	;}
L000C0A:
000C0A 2741         000C    	MOVE.L  D1,(#$000C,A3) 		;
000C0E 08EC 0002    0002    	BSET    #$02, (#$0002,A4)	;
000C14 08EB 0007    0000    	BSET    #$07, (#$0000,A3)	;
000C1A 2C0C                 	MOVE.L  A4,D6 			;
000C1C 0246 03E0            	ANDI.W  #$03E0, D6		;
000C20 E24E                 	LSR.W   #1, D6			;
000C22 0646 2600            	ADDI.W  #$2600, D6		;
000C26 2D46         0C24    	MOVE.L  D6,(#$0C24,A6) 		;*(u32*)0x003C24 = 0x2600 | ((ptr & 0x3E0) >> 1);
000C2A 6100 FA10            	BRS     #$FA10			;
000C2E 4A6E         0C28    	TST.W   (#$0C28,A6)		;
000C32 67FA                 	BEQ     #$FFFA			;
000C34 426E         0C28    	CLR     (#$0C28,A6)		;
000C38 6000 00A8            	BRA     #$00A8			;

000C3C 0001 1A00            	ORI.B   #$1A00, D1 		;
000C40 1100                 	MOVE.B  D0,-(A0) 		;
000C42 0C90 09A006B0        	CMPI.L  #$09A006B0, (A0)	;
000C48 0450 02C0            	SUBI.W  #$02C0, (A0)		;
000C4C 0200 0160            	ANDI.B  #$0160, D0		;
000C50 0100                 	BTST    D0, D0 			;
000C52 00A8 007800500038    	ORI.L   #$00000038, (#$9A006B0,A0);
000C5A 002C 0026    0023    	ORI.B   #$0023, (#$9A006B0,A4) 	;
000C60 0020 001D            	ORI.B   #$001D, -(A0) 		;
000C64 001A 0017            	ORI.B   #$0017, (A2)+ 		;
000C68 0014 0011            	ORI.B   #$0011, (A4) 		;
000C6C 000E 000B            	ORI.B   #$000B, A6 		;
000C70 0008 0006            	ORI.B   #$0006, A0 		;
000C74 0004 0003            	ORI.B   #$0003, D4 		;
000C78 0002 0001            	ORI.B   #$0001, D2 		;
000C7C 0287 000FFFFF        	ANDI.L  #$000FFFFF, D7		;
000C82 DEAE         0EC8    	ADD.L   D7, (#$0EC8,A6)		;
000C86 2A2A 0004            	MOVE.L  (#$0004,A2),D5 		;
000C8A 5385                 	SUBQ.L  #$1, D5			;
000C8C 6A32                 	BPL     #$0032			;
000C8E 2007                 	MOVE.L  D7,D0 			;
000C90 0087 10200000        	ORI.L   #$10200000, D7 		;
000C96 4A2A         0008    	TST.B   (#$0008,A2)		;
000C9A 6B06                 	BMI     #$0006			;
000C9C 0087 00100000        	ORI.L   #$00100000, D7 		;
000CA2 2B87         4000    	MOVE.L  D7,(#$00,A5,D4) 	;
000CA6 3B85         4006    	MOVE.W  D5,(#$06,A5,D4) 	;
000CAA 222A 0008            	MOVE.L  (#$0008,A2),D1 		;
000CAE 0881 001F            	BCLR    #$0000001F, D1		;
000CB2 9280                 	SUB.L   D0, D1			;
000CB4 3B81         4004    	MOVE.W  D1,(#$04,A5,D4) 	;
000CB8 08AC 0004    0002    	BCLR    #$04, (#$0002,A4)	;
000CBE 6022                 	BRA     #$0022			;
000CC0 0087 10100000        	ORI.L   #$10100000, D7 		;
000CC6 2B87         4000    	MOVE.L  D7,(#$00,A5,D4) 	;
000CCA 0285 0000FFFF        	ANDI.L  #$0000FFFF, D5		;
000CD0 2B85         4004    	MOVE.L  D5,(#$04,A5,D4) 	;
000CD4 E44A                 	LSR.W   #2, D2			;
000CD6 8AC2                 	DIVU    D2, D5			;
000CD8 3945         000E    	MOVE.W  D5,(#$000E,A4) 		;
000CDC 08EC 0000    0002    	BSET    #$00, (#$0002,A4)	;
000CE2 0235 007F    4012    	ANDI.B  #$4012, (#$00,A5,D0)	;
000CE8 08EC 0006    0002    	BSET    #$06, (#$0002,A4)	;
000CEE 0035 0018    4000    	ORI.B   #$4000, (#$06,A5,D0) 	;
000CF4 4E75                 	RTS     			;
000CF6 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
000CFA 670E                 	BEQ     #$000E			;
000CFC 1D40         0EDD    	MOVE.B  D0,(#$0EDD,A6) 		;
000D00 022E 000F    0EDD    	ANDI.B  #$0EDD, (#$0EDD,A6)	;
000D06 0200 00E0            	ANDI.B  #$00E0, D0		;
000D0A 1B80         4016    	MOVE.B  D0,(#$16,A5,D4) 	;
000D0E 4E75                 	RTS     			;
000D10 4A2E         0ED6    	TST.B   (#$0ED6,A6)		;
000D14 6610                 	BNE     #$0010			;
000D16 102E 0EE3            	MOVE.B  (#$0EE3,A6),D0 		;
000D1A D02E         0EE2    	ADD.B   D0, (#$0EE2,A6)		;
000D1E B038         407D    	CMP.B   $407D.W, D0		;
000D22 6C00 003E            	BGE     #$003E			;
000D26 102E 0EE0            	MOVE.B  (#$0EE0,A6),D0 		;
000D2A D02E         0EE1    	ADD.B   D0, (#$0EE1,A6)		;
000D2E 0C00 0020            	CMPI.B  #$0020, D0		;
000D32 672E                 	BEQ     #$002E			;
000D34 286E 0EE4            	MOVE.L  (#$0EE4,A6),A4 		;
000D38 7E1F                 	MOVEQ   #$1F, D7		;
000D3A B9FC         00003800	CMPA.L  #$00003800, A4		;
000D40 6604                 	BNE     #$0004			;
000D42 49EE         0400    	LEA     (#$0400,A6), A4		;
000D46 4A2C         0002    	TST.B   (#$0002,A4)		;
000D4A 670A                 	BEQ     #$000A			;
000D4C 49EC         0020    	LEA     (#$0020,A4), A4		;
000D50 51CF FFE8            	DBRA    D7, #$FFE8		;
000D54 609E                 	BRA     #$FF9E			;
000D56 264C                 	MOVE.L  A4,A3 			;
000D58 47EB         0020    	LEA     (#$0020,A3), A3		;
000D5C 2D4B         0EE4    	MOVE.L  A3,(#$0EE4,A6) 		;
000D60 4E75                 	RTS     			;
000D62 49EE         0400    	LEA     (#$0400,A6), A4		;
000D66 224C                 	MOVE.L  A4,A1 			;
000D68 7E1F                 	MOVEQ   #$1F, D7		;
000D6A 7C20                 	MOVEQ   #$20, D6		;
000D6C 2206                 	MOVE.L  D6,D1 			;
000D6E 4A2E         0ED6    	TST.B   (#$0ED6,A6)		;
000D72 6608                 	BNE     #$0008			;
000D74 082C 0002    0002    	BTST    #$02, (#$0002,A4)	;
000D7A 6720                 	BEQ     #$0020			;
000D7C B22C         0009    	CMP.B   (#$0009,A4), D1		;
000D80 6506                 	BCS     #$0006			;
000D82 122C 0009            	MOVE.B  (#$0009,A4),D1 		;
000D86 224C                 	MOVE.L  A4,A1 			;
000D88 082C 0005    0002    	BTST    #$05, (#$0002,A4)	;
000D8E 670C                 	BEQ     #$000C			;
000D90 BC2C         0009    	CMP.B   (#$0009,A4), D6		;
000D94 6506                 	BCS     #$0006			;
000D96 1C2C 0009            	MOVE.B  (#$0009,A4),D6 		;
000D9A 264C                 	MOVE.L  A4,A3 			;
000D9C 49EC         0020    	LEA     (#$0020,A4), A4		;
000DA0 51CF FFCC            	DBRA    D7, #$FFCC		;
000DA4 284B                 	MOVE.L  A3,A4 			;
000DA6 0C06 0020            	CMPI.B  #$0020, D6		;
000DAA 6602                 	BNE     #$0002			;
000DAC 2849                 	MOVE.L  A1,A4 			;
000DAE 6000 F7BA            	BRA     #$F7BA			;
000DB2 4283                 	CLR     D3			;
000DB4 161B                 	MOVE.B  (A3)+,D3 		;
000DB6 4A1B                 	TST.B   (A3)+			;
000DB8 4280                 	CLR     D0			;
000DBA 1013                 	MOVE.B  (A3),D0 		;
000DBC E148                 	LSL.W   #0, D0			;
000DBE 8640                 	OR.W    D0, D3			;
000DC0 49EE         0400    	LEA     (#$0400,A6), A4		;
000DC4 7E1F                 	MOVEQ   #$1F, D7		;
000DC6 102C 0002            	MOVE.B  (#$0002,A4),D0 		;
000DCA 0200 0072            	ANDI.B  #$0072, D0		;
000DCE 0A00 0040            		EORI.B  #$0040, D0	;
000DD2 660E                 	BNE     #$000E			;
000DD4 B66C         0010    	CMP.W   (#$0010,A4), D3		;
000DD8 6608                 	BNE     #$0008			;
000DDA BA2C         0004    	CMP.B   (#$0004,A4), D5		;
000DDE 6602                 	BNE     #$0002			;
000DE0 6114                 	BRS     #$0014			;
000DE2 49EC         0020    	LEA     (#$0020,A4), A4		;
000DE6 51CF FFDE            	DBRA    D7, #$FFDE		;
000DEA 4A9F                 	TST.L   (A7)+			;
000DEC 46FC         2000    	MOVE    #$00002000, SR		;
000DF0 4CDF 08A0            	MOVEM.L  (A7)+, 8A0		;
000DF4 4E75                 	RTS     			;
000DF6 0828 0006    0000    	BTST    #$06, (#$0000,A0)	;
000DFC 6708                 	BEQ     #$0008			;
000DFE 08EC 0001    0002    	BSET    #$01, (#$0002,A4)	;
000E04 4E75                 	RTS     			;
000E06 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
000E0A 1BBC 0010    4000    	MOVE.B  #$00000010,(#$00,A5,D4) ;
000E10 08EC 0000    0002    	BSET    #$00, (#$0002,A4)	;
000E16 08EC 0005    0002    	BSET    #$05, (#$0002,A4)	;
000E1C 302C 000C            	MOVE.W  (#$000C,A4),D0 		;
000E20 6712                 	BEQ     #$0012			;
000E22 4A6C         000E    	TST.W   (#$000E,A4)		;
000E26 6706                 	BEQ     #$0006			;
000E28 B06C         000E    	CMP.W   (#$000E,A4), D0		;
000E2C 6404                 	BCC     #$0004			;
000E2E 3940         000E    	MOVE.W  D0,(#$000E,A4) 		;
000E32 4E75                 	RTS     			;
000E34 297C 00000001000C    	MOVE.L  #$00000001,(#$000C,A4) 	;
000E3C 4E75                 	RTS     			;
000E3E 4280                 	CLR     D0			;
000E40 4282                 	CLR     D2			;
000E42 141B                 	MOVE.B  (A3)+,D2 		;
000E44 1013                 	MOVE.B  (A3),D0 		;
000E46 EF48                 	LSL.W   #7, D0			;
000E48 8440                 	OR.W    D0, D2			;
000E4A EA4A                 	LSR.W   #5, D2			;
000E4C 2202                 	MOVE.L  D2,D1 			;
000E4E 0241 0100            	ANDI.W  #$0100, D1		;
000E52 6606                 	BNE     #$0006			;
000E54 4402                 	NEG     D2			;
000E56 6602                 	BNE     #$0002			;
000E58 5302                 	SUBQ.B  #$1, D2			;
000E5A 4280                 	CLR     D0			;
000E5C 1028 0007            	MOVE.B  (#$0007,A0),D0 		;
000E60 6700 0058            	BEQ     #$0058			;
000E64 0242 00FF            	ANDI.W  #$00FF, D2		;
000E68 C0C2                 	MULU    D2, D0			;
000E6A E048                 	LSR.W   #0, D0			;
000E6C 1400                 	MOVE.B  D0,D2 			;
000E6E 0240 00F0            	ANDI.W  #$00F0, D0		;
000E72 E808                 	LSR.B   #4, D0			;
000E74 4A41                 	TST.W   D1			;
000E76 6602                 	BNE     #$0002			;
000E78 4400                 	NEG     D0			;
000E7A E148                 	LSL.W   #0, D0			;
000E7C 0242 000F            	ANDI.W  #$000F, D2		;
000E80 4A41                 	TST.W   D1			;
000E82 6602                 	BNE     #$0002			;
000E84 4402                 	NEG     D2			;
000E86 8440                 	OR.W    D0, D2			;
000E88 3D42         0ED4    	MOVE.W  D2,(#$0ED4,A6) 		;
000E8C 4281                 	CLR     D1			;
000E8E 1228 0001            	MOVE.B  (#$0001,A0),D1 		;
000E92 E309                 	LSL.B   #1, D1			;
000E94 49EE         0160    	LEA     (#$0160,A6), A4		;
000E98 3982         1000    	MOVE.W  D2,(#$00,A4,D1) 	;
000E9C E249                 	LSR.W   #1, D1			;
000E9E 49EE         0400    	LEA     (#$0400,A6), A4		;
000EA2 7E1F                 	MOVEQ   #$1F, D7		;
000EA4 B22C         0004    	CMP.B   (#$0004,A4), D1		;
000EA8 6608                 	BNE     #$0008			;
000EAA 4A2C         0002    	TST.B   (#$0002,A4)		;
000EAE 6702                 	BEQ     #$0002			;
000EB0 6114                 	BRS     #$0014			;
000EB2 49EC         0020    	LEA     (#$0020,A4), A4		;
000EB6 51CF FFEC            	DBRA    D7, #$FFEC		;
000EBA 4A9F                 	TST.L   (A7)+			;
000EBC 46FC         2000    	MOVE    #$00002000, SR		;
000EC0 4CDF 08A0            	MOVEM.L  (A7)+, 8A0		;
000EC4 4E75                 	RTS     			;
000EC6 3A2E 0ED4            	MOVE.W  (#$0ED4,A6),D5 		;
000ECA 142C 0005            	MOVE.B  (#$0005,A4),D2 		;
000ECE 3805                 	MOVE.W  D5,D4 			;
000ED0 0244 FF00            	ANDI.W  #$FF00, D4		;
000ED4 E04C                 	LSR.W   #0, D4			;
000ED6 0245 00FF            	ANDI.W  #$00FF, D5		;
000EDA 162C 000A            	MOVE.B  (#$000A,A4),D3 		;
000EDE D628         0005    	ADD.B   D3, (#$0005,A0)		;
000EE2 D605                 	ADD.B   D5, D3			;
000EE4 4883                 	EXT.W   D3			;
000EE6 48C3                 	EXT.L   D3			;
000EE8 E38B                 	LSL.L   #1, D3			;
000EEA 1002                 	MOVE.B  D2,D0 			;
000EEC 0240 000F            	ANDI.W  #$000F, D0		;
000EF0 D004                 	ADD.B   D4, D0			;
000EF2 4880                 	EXT.W   D0			;
000EF4 48C0                 	EXT.L   D0			;
000EF6 4284                 	CLR     D4			;
000EF8 EB88                 	LSL.L   #5, D0			;
000EFA D083                 	ADD.L   D3, D0			;
000EFC 6A0A                 	BPL     #$000A			;
000EFE 0640 0180            	ADDI.W  #$0180, D0		;
000F02 0644 F800            	ADDI.W  #$F800, D4		;
000F06 6010                 	BRA     #$0010			;
000F08 0C80 00000180        	CMPI.L  #$00000180, D0		;
000F0E 6508                 	BCS     #$0008			;
000F10 0440 0180            	SUBI.W  #$0180, D0		;
000F14 383C 0800            	MOVE.W  #$00000800,D4 		;
000F18 3A00                 	MOVE.W  D0,D5 			;
000F1A 3C04                 	MOVE.W  D4,D6 			;
000F1C 43F9         000027C2	LEA     $000027C2.L, A1		;
000F22 3631 0000            	MOVE.W  (#$00,A1,D0),D3 	;
000F26 1002                 	MOVE.B  D2,D0 			;
000F28 0240 00F0            	ANDI.W  #$00F0, D0		;
000F2C EF48                 	LSL.W   #7, D0			;
000F2E D044                 	ADD.W   D4, D0			;
000F30 D043                 	ADD.W   D3, D0			;
000F32 0240 7BFF            	ANDI.W  #$7BFF, D0		;
000F36 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
000F3A 3B80         4010    	MOVE.W  D0,(#$10,A5,D4) 	;
000F3E 4E75                 	RTS     			;
000F40 4280                 	CLR     D0			;
000F42 101B                 	MOVE.B  (A3)+,D0 		;
000F44 0C00 0050            	CMPI.B  #$0050, D0		;
000F48 6E00 00B2            	BGT     #$00B2			;
000F4C 2400                 	MOVE.L  D0,D2 			;
000F4E 1013                 	MOVE.B  (A3),D0 		;
000F50 E34A                 	LSL.W   #1, D2			;
000F52 343B 2006            	MOVE.W  (#$06,PC,D2),D2 	;
000F56 4EFB         2002    	JMP     (#$02,PC,D2)		;
000F5A 00A2 02E20340        	ORI.L   #$02E20340, -(A2) 	;
000F60 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000F66 00A2 039200A2        	ORI.L   #$039200A2, -(A2) 	;
000F6C 00A2 03F200A2        	ORI.L   #$03F200A2, -(A2) 	;
000F72 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000F78 00A2 00A201AE        	ORI.L   #$00A201AE, -(A2) 	;
000F7E 01B8         01C2    	BCLR    D0, $00B2.W 		;
000F82 01D2                 	BSET    D0, (A2) 		;
000F84 01E8         00A2    	BSET    D0, (#$00B2,A0) 	;
000F88 00A2 02000218        	ORI.L   #$02000218, -(A2) 	;
000F8E 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000F94 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000F9A 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FA0 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FA6 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FAC 00A2 0444046C        	ORI.L   #$0444046C, -(A2) 	;
000FB2 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FB8 00A2 022E0254        	ORI.L   #$022E0254, -(A2) 	;
000FBE 026C 0284    029C    	ANDI.W  #$029C, (#$00B2,A4)	;
000FC4 02B2 02C800A200A2    	ANDI.L  #$000000A2, (#$B2,A2,D0);
000FCC 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FD2 00A2 00A200A2        	ORI.L   #$00A200A2, -(A2) 	;
000FD8 00A2 049200C0        	ORI.L   #$049200C0, -(A2) 	;
000FDE 00D0 012A012E        	ORI.?   #$012A012E, (A0) 	;
000FE4 0132         0144    	BTST    D0, (#$B2,A2,D0) 	;
000FE8 015C                 	BCHG    D0, (A4)+ 		;
000FEA 0176         0188    	BCHG    D0, (#$B2,A6,D0) 	;
000FEE 018E 0194            	MOVEP   D0, (#$0194,A6) 	;
000FF2 019A                 	BCLR    D0, (A2)+ 		;
000FF4 01A0                 	BCLR    D0, -(A0) 		;
000FF6 00A2 00A204FC        	ORI.L   #$00A204FC, -(A2) 	;
000FFC 4E75                 	RTS     			;
000FFE 2278 400C            	MOVE.L  $400C.W,A1 		;
001002 4281                 	CLR     D1			;
001004 1228 0002            	MOVE.B  (#$0002,A0),D1 		;
001008 E341                 	ASL.W   #1, D1			;
00100A 3231 1002            	MOVE.W  (#$02,A1,D1),D1 	;
00100E D3C1                 	ADDA.L  D1, A1			;
001010 0C59 8000            	CMPI.W  #$8000, (A1)+		;
001014 6702                 	BEQ     #$0002			;
001016 4A9F                 	TST.L   (A7)+			;
001018 4E75                 	RTS     			;
00101A 4242                 	CLR     D2			;
00101C 61E0                 	BRS     #$FFE0			;
00101E 0231 0080    200D    	ANDI.B  #$200D, (#$E0,A1,A7)	;
001024 8131         200D    	OR.B    (#$0D,A1,D2), D0	;
001028 6014                 	BRA     #$0014			;
00102A 4242                 	CLR     D2			;
00102C 61D0                 	BRS     #$FFD0			;
00102E 3231 200C            	MOVE.W  (#$0C,A1,D2),D1 	;
001032 0241 007F            	ANDI.W  #$007F, D1		;
001036 EF48                 	LSL.W   #7, D0			;
001038 8240                 	OR.W    D0, D1			;
00103A 3381         200C    	MOVE.W  D1,(#$0C,A1,D2) 	;
00103E 1A28 0001            	MOVE.B  (#$0001,A0),D5 		;
001042 49EE         0400    	LEA     (#$0400,A6), A4		;
001046 7E1F                 	MOVEQ   #$1F, D7		;
001048 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
00104C 6622                 	BNE     #$0022			;
00104E 4A2C         0002    	TST.B   (#$0002,A4)		;
001052 671C                 	BEQ     #$001C			;
001054 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
001058 1BA9 000A    400E    	MOVE.B  (#$000A,A1),(#$0E,A5,D4);
00105E E84C                 	LSR.W   #4, D4			;
001060 0644 0600            	ADDI.W  #$0600, D4		;
001064 3BA9 000C    4000    	MOVE.W  (#$000C,A1),(#$00,A5,D4);
00106A 3BA9 000E    4040    	MOVE.W  (#$000E,A1),(#$40,A5,D4);
001070 49EC         0020    	LEA     (#$0020,A4), A4		;
001074 51CF FFD2            	DBRA    D7, #$FFD2		;
001078 4A9F                 	TST.L   (A7)+			;
00107A 46FC         2000    	MOVE    #$00002000, SR		;
00107E 4CDF 08A0            	MOVEM.L  (A7)+, 8A0		;
001082 4E75                 	RTS     			;
001084 7402                 	MOVEQ   #$02, D2		;
001086 6094                 	BRA     #$FF94			;
001088 7402                 	MOVEQ   #$02, D2		;
00108A 60A0                 	BRA     #$FFA0			;
00108C 6100 FF70            	BRS     #$FF70			;
001090 E908                 	LSL.B   #4, D0			;
001092 0229 0008    000A    	ANDI.B  #$000A, (#$FF70,A1)	;
001098 8129         000A    	OR.B    D0, (#$000A,A1)		;
00109C 60A0                 	BRA     #$FFA0			;
00109E 6100 FF5E            	BRS     #$FF5E			;
0010A2 4A00                 	TST.B   D0			;
0010A4 6708                 	BEQ     #$0008			;
0010A6 08E9 0003    000A    	BSET    #$03, (#$000A,A1)	;
0010AC 6090                 	BRA     #$FF90			;
0010AE 08A9 0003    000A    	BCLR    #$03, (#$000A,A1)	;
0010B4 6088                 	BRA     #$FF88			;
0010B6 4282                 	CLR     D2			;
0010B8 6100 FF44            	BRS     #$FF44			;
0010BC 4A00                 	TST.B   D0			;
0010BE 6708                 	BEQ     #$0008			;
0010C0 08F1 0007    200B    	BSET    #$07, (#$0B,A1,D2)	;
0010C6 4E75                 	RTS     			;
0010C8 08B1 0007    200B    	BCLR    #$07, (#$0B,A1,D2)	;
0010CE 4E75                 	RTS     			;
0010D0 4282                 	CLR     D2			;
0010D2 6100 FF2A            	BRS     #$FF2A			;
0010D6 0231 0080    200B    	ANDI.B  #$200B, (#$2A,A1,A7)	;
0010DC 8131         200B    	OR.B    (#$0B,A1,D2), D0	;
0010E0 4E75                 	RTS     			;
0010E2 343C 0005            	MOVE.W  #$00000005,D2 		;
0010E6 60D0                 	BRA     #$FFD0			;
0010E8 343C 0005            	MOVE.W  #$00000005,D2 		;
0010EC 60E4                 	BRA     #$FFE4			;
0010EE 343C 0006            	MOVE.W  #$00000006,D2 		;
0010F2 60C4                 	BRA     #$FFC4			;
0010F4 343C 0006            	MOVE.W  #$00000006,D2 		;
0010F8 60D8                 	BRA     #$FFD8			;
0010FA 6100 FF02            	BRS     #$FF02			;
0010FE 0200 0007            	ANDI.B  #$0007, D0		;
001102 1340         0005    	MOVE.B  D0,(#$0005,A1) 		;
001106 4E75                 	RTS     			;
001108 0400 0040            	SUBI.B  #$0040, D0		;
00110C 1140         0004    	MOVE.B  D0,(#$0004,A0) 		;
001110 4E75                 	RTS     			;
001112 0400 0040            	SUBI.B  #$0040, D0		;
001116 1140         0005    	MOVE.B  D0,(#$0005,A0) 		;
00111A 4E75                 	RTS     			;
00111C 0C00 000C            	CMPI.B  #$000C, D0		;
001120 6D02                 	BLT     #$0002			;
001122 700C                 	MOVEQ   #$0C, D0		;
001124 E908                 	LSL.B   #4, D0			;
001126 1140         0007    	MOVE.B  D0,(#$0007,A0) 		;
00112A 4E75                 	RTS     			;
00112C 0C00 0003            	CMPI.B  #$0003, D0		;
001130 6C0E                 	BGE     #$000E			;
001132 0228 00FC    0008    	ANDI.B  #$0008, (#$000E,A0)	;
001138 8128         0008    	OR.B    D0, (#$0008,A0)		;
00113C 6000 0174            	BRA     #$0174			;
001140 4E75                 	RTS     			;
001142 0C00 0004            	CMPI.B  #$0004, D0		;
001146 6C10                 	BGE     #$0010			;
001148 0228 00E7    0009    	ANDI.B  #$0009, (#$0010,A0)	;
00114E E708                 	LSL.B   #3, D0			;
001150 8128         0009    	OR.B    D0, (#$0009,A0)		;
001154 6000 015C            	BRA     #$015C			;
001158 4E75                 	RTS     			;
00115A 0C00 001F            	CMPI.B  #$001F, D0		;
00115E 6F02                 	BLE     #$0002			;
001160 701F                 	MOVEQ   #$1F, D0		;
001162 0228 0083    0008    	ANDI.B  #$0008, (#$0002,A0)	;
001168 E508                 	LSL.B   #2, D0			;
00116A 8128         0008    	OR.B    D0, (#$0008,A0)		;
00116E 6000 0142            	BRA     #$0142			;
001172 0C00 0007            	CMPI.B  #$0007, D0		;
001176 6F02                 	BLE     #$0002			;
001178 7007                 	MOVEQ   #$07, D0		;
00117A EB08                 	LSL.B   #5, D0			;
00117C 0228 001F    0006    	ANDI.B  #$0006, (#$0002,A0)	;
001182 8128         0006    	OR.B    D0, (#$0006,A0)		;
001186 4E75                 	RTS     			;
001188 6114                 	BRS     #$0014			;
00118A 0C00 001F            	CMPI.B  #$001F, D0		;
00118E 6D02                 	BLT     #$0002			;
001190 701F                 	MOVEQ   #$1F, D0		;
001192 0229 00E0    0007    	ANDI.B  #$0007, (#$0002,A1)	;
001198 8129         0007    	OR.B    D0, (#$0007,A1)		;
00119C 4E75                 	RTS     			;
00119E 4281                 	CLR     D1			;
0011A0 3228 001E            	MOVE.W  (#$001E,A0),D1 		;
0011A4 6704                 	BEQ     #$0004			;
0011A6 2241                 	MOVE.L  D1,A1 			;
0011A8 4E75                 	RTS     			;
0011AA 4A9F                 	TST.L   (A7)+			;
0011AC 4E75                 	RTS     			;
0011AE 61EE                 	BRS     #$FFEE			;
0011B0 0C00 001F            	CMPI.B  #$001F, D0		;
0011B4 6D02                 	BLT     #$0002			;
0011B6 701F                 	MOVEQ   #$1F, D0		;
0011B8 EB48                 	LSL.W   #5, D0			;
0011BA 0269 7C1F    0008    	ANDI.W  #$0008, (#$0002,A1)	;
0011C0 8169         0008    	OR.W    D0, (#$0008,A1)		;
0011C4 4E75                 	RTS     			;
0011C6 61D6                 	BRS     #$FFD6			;
0011C8 0C00 001F            	CMPI.B  #$001F, D0		;
0011CC 6D02                 	BLT     #$0002			;
0011CE 701F                 	MOVEQ   #$1F, D0		;
0011D0 ED48                 	LSL.W   #6, D0			;
0011D2 0269 F83F    0006    	ANDI.W  #$0006, (#$0002,A1)	;
0011D8 8169         0006    	OR.W    D0, (#$0006,A1)		;
0011DC 4E75                 	RTS     			;
0011DE 61BE                 	BRS     #$FFBE			;
0011E0 0C00 001F            	CMPI.B  #$001F, D0		;
0011E4 6D02                 	BLT     #$0002			;
0011E6 701F                 	MOVEQ   #$1F, D0		;
0011E8 E708                 	LSL.B   #3, D0			;
0011EA 0229 0007    0006    	ANDI.B  #$0006, (#$0002,A1)	;
0011F0 8129         0006    	OR.B    D0, (#$0006,A1)		;
0011F4 4E75                 	RTS     			;
0011F6 61A6                 	BRS     #$FFA6			;
0011F8 0C00 001F            	CMPI.B  #$001F, D0		;
0011FC 6D02                 	BLT     #$0002			;
0011FE 701F                 	MOVEQ   #$1F, D0		;
001200 0229 00E0    0009    	ANDI.B  #$0009, (#$0002,A1)	;
001206 8129         0009    	OR.B    D0, (#$0009,A1)		;
00120A 4E75                 	RTS     			;
00120C 6190                 	BRS     #$FF90			;
00120E 4A00                 	TST.B   D0			;
001210 6708                 	BEQ     #$0008			;
001212 08E9 0007    0004    	BSET    #$07, (#$0004,A1)	;
001218 4E75                 	RTS     			;
00121A 08A9 0007    0004    	BCLR    #$07, (#$0004,A1)	;
001220 4E75                 	RTS     			;
001222 6100 FF7A            	BRS     #$FF7A			;
001226 0C00 0040            	CMPI.B  #$0040, D0		;
00122A 6D06                 	BLT     #$0006			;
00122C 0200 003F            	ANDI.B  #$003F, D0		;
001230 6004                 	BRA     #$0004			;
001232 0000 00C0            	ORI.B   #$00C0, D0 		;
001236 1340         0002    	MOVE.B  D0,(#$0002,A1) 		;
00123A 4E75                 	RTS     			;
00123C E308                 	LSL.B   #1, D0			;
00123E 0200 00E0            	ANDI.B  #$00E0, D0		;
001242 4283                 	CLR     D3			;
001244 1628 0002            	MOVE.B  (#$0002,A0),D3 		;
001248 2278 400C            	MOVE.L  $400C.W,A1 		;
00124C E343                 	ASL.W   #1, D3			;
00124E 3631 3002            	MOVE.W  (#$02,A1,D3),D3 	;
001252 6B00 008C            	BMI     #$008C			;
001256 D3C3                 	ADDA.L  D3, A1			;
001258 4A11                 	TST.B   (A1)			;
00125A 6A08                 	BPL     #$0008			;
00125C 0C59 8000            	CMPI.W  #$8000, (A1)+		;
001260 6600 0020            	BNE     #$0020			;
001264 1629 0001            	MOVE.B  (#$0001,A1),D3 		;
001268 1203                 	MOVE.B  D3,D1 			;
00126A 0203 00E0            	ANDI.B  #$00E0, D3		;
00126E B003                 	CMP.B   D3, D0			;
001270 6502                 	BCS     #$0002			;
001272 1003                 	MOVE.B  D3,D0 			;
001274 0201 0007            	ANDI.B  #$0007, D1		;
001278 EB09                 	LSL.B   #5, D1			;
00127A D001                 	ADD.B   D1, D0			;
00127C 6404                 	BCC     #$0004			;
00127E 103C 00E0            	MOVE.B  #$000000E0,D0 		;
001282 1628 0009            	MOVE.B  (#$0009,A0),D3 		;
001286 0203 00E0            	ANDI.B  #$00E0, D3		;
00128A B003                 	CMP.B   D3, D0			;
00128C 6752                 	BEQ     #$0052			;
00128E 0228 001F    0009    	ANDI.B  #$0009, (#$0052,A0)	;
001294 8128         0009    	OR.B    D0, (#$0009,A0)		;
001298 6018                 	BRA     #$0018			;
00129A E808                 	LSR.B   #4, D0			;
00129C 1628 0009            	MOVE.B  (#$0009,A0),D3 		;
0012A0 0203 0007            	ANDI.B  #$0007, D3		;
0012A4 B003                 	CMP.B   D3, D0			;
0012A6 6738                 	BEQ     #$0038			;
0012A8 0228 00F8    0009    	ANDI.B  #$0009, (#$0038,A0)	;
0012AE 8128         0009    	OR.B    D0, (#$0009,A0)		;
0012B2 49EE         0400    	LEA     (#$0400,A6), A4		;
0012B6 7E1F                 	MOVEQ   #$1F, D7		;
0012B8 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
0012BC 661A                 	BNE     #$001A			;
0012BE 4A2C         0002    	TST.B   (#$0002,A4)		;
0012C2 6714                 	BEQ     #$0014			;
0012C4 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
0012C8 3BA8 0008    4012    	MOVE.W  (#$0008,A0),(#$12,A5,D4);
0012CE 4E71                 	NOP     			;
0012D0 4E71                 	NOP     			;
0012D2 0235 007F    4012    	ANDI.B  #$4012, (#$12,A5,D4)	;
0012D8 49EC         0020    	LEA     (#$0020,A4), A4		;
0012DC 51CF FFDA            	DBRA    D7, #$FFDA		;
0012E0 4A9F                 	TST.L   (A7)+			;
0012E2 46FC         2000    	MOVE    #$00002000, SR		;
0012E6 4CDF 08A0            	MOVEM.L  (A7)+, 8A0		;
0012EA 4E75                 	RTS     			;
0012EC E308                 	LSL.B   #1, D0			;
0012EE 6702                 	BEQ     #$0002			;
0012F0 5200                 	ADDQ.B  #$1, D0			;
0012F2 1140         0003    	MOVE.B  D0,(#$0003,A0) 		;
0012F6 6718                 	BEQ     #$0018			;
0012F8 343C 00FF            	MOVE.W  #$000000FF,D2 		;
0012FC 0828 0000    0000    	BTST    #$00, (#$0000,A0)	;
001302 6604                 	BNE     #$0004			;
001304 142E 0EE9            	MOVE.B  (#$0EE9,A6),D2 		;
001308 C0C2                 	MULU    D2, D0			;
00130A E048                 	LSR.W   #0, D0			;
00130C 6702                 	BEQ     #$0002			;
00130E 5200                 	ADDQ.B  #$1, D0			;
001310 1140         000A    	MOVE.B  D0,(#$000A,A0) 		;
001314 49EE         0400    	LEA     (#$0400,A6), A4		;
001318 7E1F                 	MOVEQ   #$1F, D7		;
00131A BA2C         0004    	CMP.B   (#$0004,A4), D5		;
00131E 6622                 	BNE     #$0022			;
001320 4A2C         0002    	TST.B   (#$0002,A4)		;
001324 671C                 	BEQ     #$001C			;
001326 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
00132A 4286                 	CLR     D6			;
00132C 1C2C 0008            	MOVE.B  (#$0008,A4),D6 		;
001330 CCC0                 	MULU    D0, D6			;
001332 6708                 	BEQ     #$0008			;
001334 E04E                 	LSR.W   #0, D6			;
001336 4606                 	NOT    	D6			;
001338 E20E                 	LSR.B   #1, D6			;
00133A 6002                 	BRA     #$0002			;
00133C 7CFF                 	MOVEQ   #$FF, D6		;
00133E 1B86         400D    	MOVE.B  D6,(#$0D,A5,D4) 	;
001342 49EC         0020    	LEA     (#$0020,A4), A4		;
001346 51CF FFD2            	DBRA    D7, #$FFD2		;
00134A 4E75                 	RTS     			;
00134C 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
001350 6632                 	BNE     #$0032			;
001352 6132                 	BRS     #$0032			;
001354 1828 0006            	MOVE.B  (#$0006,A0),D4 		;
001358 0204 00E0            	ANDI.B  #$00E0, D4		;
00135C 8004                 	OR.B    D4, D0			;
00135E 1140         0006    	MOVE.B  D0,(#$0006,A0) 		;
001362 49EE         0400    	LEA     (#$0400,A6), A4		;
001366 7E1F                 	MOVEQ   #$1F, D7		;
001368 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
00136C 660E                 	BNE     #$000E			;
00136E 4A2C         0002    	TST.B   (#$0002,A4)		;
001372 6708                 	BEQ     #$0008			;
001374 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
001378 1B80         4016    	MOVE.B  D0,(#$16,A5,D4) 	;
00137C 49EC         0020    	LEA     (#$0020,A4), A4		;
001380 51CF FFE6            	DBRA    D7, #$FFE6		;
001384 4E75                 	RTS     			;
001386 E408                 	LSR.B   #2, D0			;
001388 0C00 0010            	CMPI.B  #$0010, D0		;
00138C 640A                 	BCC     #$000A			;
00138E 4400                 	NEG     D0			;
001390 5300                 	SUBQ.B  #$1, D0			;
001392 0200 001F            	ANDI.B  #$001F, D0		;
001396 4E75                 	RTS     			;
001398 0200 000F            	ANDI.B  #$000F, D0		;
00139C 4E75                 	RTS     			;
00139E 0C00 0007            	CMPI.B  #$0007, D0		;
0013A2 6F02                 	BLE     #$0002			;
0013A4 7007                 	MOVEQ   #$07, D0		;
0013A6 43EE         0C40    	LEA     (#$0C40,A6), A1		;
0013AA 7E14                 	MOVEQ   #$14, D7		;
0013AC BA29         0001    	CMP.B   (#$0001,A1), D5		;
0013B0 660A                 	BNE     #$000A			;
0013B2 0229 0078    000C    	ANDI.B  #$000C, (#$000A,A1)	;
0013B8 8129         000C    	OR.B    D0, (#$000C,A1)		;
0013BC 43E9         0020    	LEA     (#$0020,A1), A1		;
0013C0 51CF FFEA            	DBRA    D7, #$FFEA		;
0013C4 4E75                 	RTS     			;
0013C6 E708                 	LSL.B   #3, D0			;
0013C8 0200 0078            	ANDI.B  #$0078, D0		;
0013CC 43EE         0C40    	LEA     (#$0C40,A6), A1		;
0013D0 7E14                 	MOVEQ   #$14, D7		;
0013D2 BA29         0001    	CMP.B   (#$0001,A1), D5		;
0013D6 660A                 	BNE     #$000A			;
0013D8 0229 0007    000C    	ANDI.B  #$000C, (#$000A,A1)	;
0013DE 8129         000C    	OR.B    D0, (#$000C,A1)		;
0013E2 43E9         0020    	LEA     (#$0020,A1), A1		;
0013E6 51CF FFEA            	DBRA    D7, #$FFEA		;
0013EA 4E75                 	RTS     			;
0013EC B038         407B    	CMP.B   $407B.W, D0		;
0013F0 6708                 	BEQ     #$0008			;
0013F2 08E8 0006    0000    	BSET    #$06, (#$0000,A0)	;
0013F8 4E75                 	RTS     			;
0013FA 08A8 0006    0000    	BCLR    #$06, (#$0000,A0)	;
001400 49EE         0400    	LEA     (#$0400,A6), A4		;
001404 7E1F                 	MOVEQ   #$1F, D7		;
001406 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
00140A 6600 0040            	BNE     #$0040			;
00140E 082C 0001    0002    	BTST    #$01, (#$0002,A4)	;
001414 6736                 	BEQ     #$0036			;
001416 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
00141A 1BBC 0010    4000    	MOVE.B  #$00000010,(#$00,A5,D4) ;
001420 302C 000C            	MOVE.W  (#$000C,A4),D0 		;
001424 6712                 	BEQ     #$0012			;
001426 4A6C         000E    	TST.W   (#$000E,A4)		;
00142A 6706                 	BEQ     #$0006			;
00142C B06C         000E    	CMP.W   (#$000E,A4), D0		;
001430 640E                 	BCC     #$000E			;
001432 3940         000E    	MOVE.W  D0,(#$000E,A4) 		;
001436 6008                 	BRA     #$0008			;
001438 297C 00000001000C    	MOVE.L  #$00000001,(#$000C,A4) 	;
001440 08EC 0000    0002    	BSET    #$00, (#$0002,A4)	;
001446 08EC 0005    0002    	BSET    #$05, (#$0002,A4)	;
00144C 49EC         0020    	LEA     (#$0020,A4), A4		;
001450 51CF FFB4            	DBRA    D7, #$FFB4		;
001454 4E75                 	RTS     			;
001456 0268 7F18    0008    	ANDI.W  #$0008, (#$FFB4,A0)	;
00145C 45EE         0160    	LEA     (#$0160,A6), A2		;
001460 E34D                 	LSL.W   #1, D5			;
001462 4272         5000    	CLR     (#$00,A2,D5)		;
001466 E24D                 	LSR.W   #1, D5			;
001468 49EE         0400    	LEA     (#$0400,A6), A4		;
00146C 7E1F                 	MOVEQ   #$1F, D7		;
00146E 4A2C         0002    	TST.B   (#$0002,A4)		;
001472 670A                 	BEQ     #$000A			;
001474 BA2C         0004    	CMP.B   (#$0004,A4), D5		;
001478 6604                 	BNE     #$0004			;
00147A 6100 F0EE            	BRS     #$F0EE			;
00147E 49EC         0020    	LEA     (#$0020,A4), A4		;
001482 51CF FFEA            	DBRA    D7, #$FFEA		;
001486 4E75                 	RTS     			;
001488 1013                 	MOVE.B  (A3),D0 		;
00148A 1200                 	MOVE.B  D0,D1 			;
00148C 2278 400C            	MOVE.L  $400C.W,A1 		;
001490 B051                 	CMP.W   (A1), D0		;
001492 6E4C                 	BGT     #$004C			;
001494 0228 00C1    0000    	ANDI.B  #$0000, (#$004C,A0)	;
00149A E340                 	ASL.W   #1, D0			;
00149C 3031 0002            	MOVE.W  (#$02,A1,D0),D0 	;
0014A0 6B1E                 	BMI     #$001E			;
0014A2 D3C0                 	ADDA.L  D0, A1			;
0014A4 0C11 00FF            	CMPI.B  #$00FF, (A1)		;
0014A8 6608                 	BNE     #$0008			;
0014AA 08E8 0001    0000    	BSET    #$01, (#$0000,A0)	;
0014B0 600E                 	BRA     #$000E			;
0014B2 0C11 0080            	CMPI.B  #$0080, (A1)		;
0014B6 6608                 	BNE     #$0008			;
0014B8 08E8 0004    0000    	BSET    #$04, (#$0000,A0)	;
0014BE 4A59                 	TST.W   (A1)+			;
0014C0 0268 7F18    0008    	ANDI.W  #$0008, (#$0004,A0)	;
0014C6 1029 0001            	MOVE.B  (#$0001,A1),D0 		;
0014CA 0800 0003            	BTST    #$00000003, D0		;
0014CE 6706                 	BEQ     #$0006			;
0014D0 0028 0080    0008    	ORI.B   #$0008, (#$0006,A0) 	;
0014D6 EB08                 	LSL.B   #5, D0			;
0014D8 8128         0009    	OR.B    D0, (#$0009,A0)		;
0014DC 1141         0002    	MOVE.B  D1,(#$0002,A0) 		;
0014E0 4E75                 	RTS     			;

L0014E2:							;cmd_Ax:
0014E2 4280                 	CLR     D0			;
0014E4 101B                 	MOVE.B  (A3)+,D0 		;u8 b1 = cmd_buf[1];
0014E6 2400                 	MOVE.L  D0,D2 			;
0014E8 0C00 0060            	CMPI.B  #$0060, D0		;
0014EC 6400 0B9A            	BCC     L002088			;if (b1 >= 0x60) goto L002088;
0014F0 0C00 0010            	CMPI.B  #$0010, D0		;
0014F4 6D00 0120            	BLT     L001616			;if (b1 < 0x10) goto cmd_Ax_0x;
0014F8 0440 0010            	SUBI.W  #$0010, D0		;b1 -= 0x10;
0014FC 2878 401C            	MOVE.L  $401C.W,A4 		;u16* ptr = *(u16*)0x00401C;
001500 B054                 	CMP.W   (A4), D0		;u16 temp = *ptr;
001502 6E28                 	BGT     L00152C			;if (b1 >= temp) return;
001504 244C                 	MOVE.L  A4,A2 			;
001506 E348                 	LSL.W   #1, D0			;
001508 3034 0002            	MOVE.W  (#$02,A4,D0),D0 	;
00150C D9C0                 	ADDA.L  D0, A4			;u16* ptr2 = ptr + ptr[temp + 1];
00150E 4280                 	CLR     D0			;
001510 101B                 	MOVE.B  (A3)+,D0 		;u8 b2 = cmd_buf[2];
001512 B054                 	CMP.W   (A4), D0		;
001514 6E16                 	BGT     L00152C			;if (b2 >= *ptr2) return;
001516 E348                 	LSL.W   #1, D0			;
001518 4281                 	CLR     D1			;
00151A 3234 0002            	MOVE.W  (#$02,A4,D0),D1 	;
00151E D5C1                 	ADDA.L  D1, A2			;u8* ptr3 = ptr + ptr2[b2 + 1];
001520 46FC         2700    	MOVE    #$00002700, SR		;
001524 161A                 	MOVE.B  (A2)+,D3 		;u8 temp2 = *ptr3++;
001526 6B00 0082            	BMI     L0015AA			;if (temp2 & 0x80) goto L0015AA;
00152A 6706                 	BEQ     L001532			;if (temp2) return;
L00152C:
00152C 46FC         2000    	MOVE    #$00002000, SR		;
001530 4E75                 	RTS     			;
L001532:
001532 49EE         0300    	LEA     (#$0300,A6), A4		;
001536 6100 00CE            	BRS     #$00CE			;
00153A 42B8         406C    	CLR     $406C.W			;
00153E 548A                 	ADDQ.L  #$2, A2			;
001540 4A1A                 	TST.B   (A2)+			;
001542 6648                 	BNE     #$0048			;
001544 0838 0001    407F    	BTST    #$01, $407F.W		;
00154A 6740                 	BEQ     #$0040			;
00154C 43EE         0C30    	LEA     (#$0C30,A6), A1		;
001550 2078 402C            	MOVE.L  $402C.W,A0 		;
001554 E348                 	LSL.W   #1, D0			;
001556 2230 0000            	MOVE.L  (#$00,A0,D0),D1 	;
00155A 22C1                 	MOVE.L  D1,(A1)+ 		;
00155C 2430 0004            	MOVE.L  (#$04,A0,D0),D2 	;
001560 9481                 	SUB.L   D1, D2			;
001562 22C2                 	MOVE.L  D2,(A1)+ 		;
001564 D4B8         4030    	ADD.L   D2, $4030.W		;
001568 2042                 	MOVE.L  D2,A0 			;
00156A 217C 01020304FFFC    	MOVE.L  #$01020304,(#$FFFC,A0) 	;
001572 22B8 4030            	MOVE.L  $4030.W,(A1) 		;
001576 2D7C FFFFFFFF0C24    	MOVE.L  #$FFFFFFFF,(#$0C24,A6) 	;*(u32*)0x003C24 = 0xFFFFFFFF;
00157E 6100 F0BC            	BRS     #$F0BC			;
001582 0CA8 01020304FFFC    	CMPI.L  #$01020304, (#$FFFC,A0)	;
00158A 67F6                 	BEQ     #$FFF6			;
00158C 422E         0EEB    	CLR     (#$0EEB,A6)		;
001590 295A         0004    	MOVE.L  (A2)+,(#$0004,A4) 	;
001594 294A         0008    	MOVE.L  A2,(#$0008,A4) 		;
001598 397C 0001    0002    	MOVE.W  #$00000001,(#$0002,A4) 	;
00159E 002C 0088    0000    	ORI.B   #$0000, (#$0002,A4) 	;
0015A4 46FC         2000    	MOVE    #$00002000, SR		;
0015A8 4E75                 	RTS     			;
L0015AA:
0015AA 49EE         0310    	LEA     (#$0310,A6), A4		;u8* ptr = 0x003310;
0015AE 7E06                 	MOVEQ   #$06, D7		;
0015B0 3C07                 	MOVE.W  D7,D6 			;
0015B2 0803 0004            	BTST    #$00000004, D3		;
0015B6 6718                 	BEQ     L0015D0			;if (temp2 & 0x10) {
0015B8 0203 000F            	ANDI.B  #$000F, D3		;  temp2 &= 0x0F;
L0015BC:
0015BC B62C         000F    	CMP.B   (#$000F,A4), D3		;  for (int i=0; i<7; i++) {
0015C0 6728                 	BEQ     L0015EA			;    if (ptr[15] == temp2) goto L0015EA;
0015C2 49EC         0010    	LEA     (#$0010,A4), A4		;    ptr += 0x10;
0015C6 51CF FFF4            	DBRA    D7, L0015BC		;  }
0015CA 49EE         0310    	LEA     (#$0310,A6), A4		;
0015CE 6004                 	BRA     L0015D4			;} 
L0015D0:							;else
0015D0 0203 000F            	ANDI.B  #$000F, D3		;  temp2 &= 0x0F;
L0015D4:
0015D4 082C 0007    0000    	BTST    #$07, (#$0000,A4)	;for (int i=0; i<7; i++) {
0015DA 670E                 	BEQ     L0015EA			;  if (!(ptr[0] & 0x80)) goto L0015EA;
0015DC 49EC         0010    	LEA     (#$0010,A4), A4		;  ptr += 0x10;
0015E0 51CE FFF2            	DBRA    D6, L0015D4		;}
0015E4 46FC         2000    	MOVE    #$00002000, SR		;
0015E8 4E75                 	RTS     			;return;
L0015EA:
0015EA 611A                 	BRS     L001606			;entity_clear(ptr);
0015EC 1943         000F    	MOVE.B  D3,(#$000F,A4) 		;ptr[15] = temp2;
0015F0 294A         0004    	MOVE.L  A2,(#$0004,A4) 		;ptr[4] = ptr3;
0015F4 397C 0001    0002    	MOVE.W  #$0001,(#$0002,A4) 	;ptr[2] = 0x0001;
0015FA 08EC 0007    0000    	BSET    #$07, (#$0000,A4)	;ptr[0] |= 0x80;
001600 46FC         2000    	MOVE    #$00002000, SR		;
001604 4E75                 	RTS     			;

L001606:							;void entity_clear(void* entity)
001606 7E03                 	MOVEQ   #$03, D7		;
001608 429C                 	CLR     (A4)+			;
00160A 51CF FFFC            	DBRA    D7, #$FFFC		;memset(entity,0,sizeof(entity));
00160E 99FC         00000010	SUBA.L  #$00000010, A4		;
001614 4E75                 	RTS     			;

L001616:							;cmd_Ax_0x:
001616 4280                 	CLR     D0			;
001618 101B                 	MOVE.B  (A3)+,D0 		;b2 = cmd_buf[2];
00161A E34A                 	LSL.W   #1, D2			;
00161C 343B 2006            	MOVE.W  (#$06,PC,D2),D2 	;
001620 4EFB         2002    	JMP     (#$02,PC,D2)		;return (func[b1])(b2);
001624 04E2
0064
0022
00DE 
003C
0102
0020 
03D0
01C2
0486 
04C6
0234
0020 
0020
0020 
0020
001644 4E75                 	RTS     			;

001646 11C0         407A    	MOVE.B  D0,$407A.W 		;
00164A 41F9         00002942	LEA     $00002942.L, A0		;
001650 E308                 	LSL.B   #1, D0			;
001652 3030 0000            	MOVE.W  (#$00,A0,D0),D0 	;
001656 3B40         070C    	MOVE.W  D0,(#$070C,A5) 		;
00165A 3B40         0710    	MOVE.W  D0,(#$0710,A5) 		;
00165E 4E75                 	RTS     			;
001660 4A2E         0EEB    	TST.B   (#$0EEB,A6)		;
001664 6620                 	BNE     #$0020			;
001666 4A2E         0EF2    	TST.B   (#$0EF2,A6)		;
00166A 661A                 	BNE     #$001A			;
00166C 1D40         0EF2    	MOVE.B  D0,(#$0EF2,A6) 		;
001670 1D40         0EEC    	MOVE.B  D0,(#$0EEC,A6) 		;
001674 102E 0EE9            	MOVE.B  (#$0EE9,A6),D0 		;
001678 E208                 	LSR.B   #1, D0			;
00167A 1D40         0EEE    	MOVE.B  D0,(#$0EEE,A6) 		;
00167E 422E         0EED    	CLR     (#$0EED,A6)		;
001682 422E         0EF3    	CLR     (#$0EF3,A6)		;
001686 4E75                 	RTS     			;
001688 E308                 	LSL.B   #1, D0			;
00168A 6702                 	BEQ     #$0002			;
00168C 5200                 	ADDQ.B  #$1, D0			;
00168E 1D40         0EE9    	MOVE.B  D0,(#$0EE9,A6) 		;
001692 43EE         0C40    	LEA     (#$0C40,A6), A1		;
001696 7E13                 	MOVEQ   #$13, D7		;
001698 4A29         0000    	TST.B   (#$0000,A1)		;
00169C 675A                 	BEQ     #$005A			;
00169E 0829 0000    0000    	BTST    #$00, (#$0000,A1)	;
0016A4 6652                 	BNE     #$0052			;
0016A6 4281                 	CLR     D1			;
0016A8 1229 0003            	MOVE.B  (#$0003,A1),D1 		;
0016AC C2C0                 	MULU    D0, D1			;
0016AE E049                 	LSR.W   #0, D1			;
0016B0 6702                 	BEQ     #$0002			;
0016B2 5201                 	ADDQ.B  #$1, D1			;
0016B4 1341         000A    	MOVE.B  D1,(#$000A,A1) 		;
0016B8 49EE         0400    	LEA     (#$0400,A6), A4		;
0016BC 7C1F                 	MOVEQ   #$1F, D6		;
0016BE 4A2C         0002    	TST.B   (#$0002,A4)		;
0016C2 672C                 	BEQ     #$002C			;
0016C4 1829 0001            	MOVE.B  (#$0001,A1),D4 		;
0016C8 B82C         0004    	CMP.B   (#$0004,A4), D4		;
0016CC 6622                 	BNE     #$0022			;
0016CE 4284                 	CLR     D4			;
0016D0 4285                 	CLR     D5			;
0016D2 182C 0008            	MOVE.B  (#$0008,A4),D4 		;
0016D6 1A29 000A            	MOVE.B  (#$000A,A1),D5 		;
0016DA CAC4                 	MULU    D4, D5			;
0016DC 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
0016E0 E04D                 	LSR.W   #0, D5			;
0016E2 6706                 	BEQ     #$0006			;
0016E4 4605                 	NOT    	D5			;
0016E6 E20D                 	LSR.B   #1, D5			;
0016E8 6002                 	BRA     #$0002			;
0016EA 7AFF                 	MOVEQ   #$FF, D5		;
0016EC 1B85         400D    	MOVE.B  D5,(#$0D,A5,D4) 	;
0016F0 49EC         0020    	LEA     (#$0020,A4), A4		;
0016F4 51CE FFC8            	DBRA    D6, #$FFC8		;
0016F8 43E9         0020    	LEA     (#$0020,A1), A1		;
0016FC 51CF FF9A            	DBRA    D7, #$FF9A		;
001700 4E75                 	RTS     			;
001702 4A2E         0EEB    	TST.B   (#$0EEB,A6)		;
001706 661C                 	BNE     #$001C			;
001708 4A2E         0EF2    	TST.B   (#$0EF2,A6)		;
00170C 6616                 	BNE     #$0016			;
00170E 1D40         0EEB    	MOVE.B  D0,(#$0EEB,A6) 		;
001712 1D40         0EEC    	MOVE.B  D0,(#$0EEC,A6) 		;
001716 102E 0EE9            	MOVE.B  (#$0EE9,A6),D0 		;
00171A 1D40         0EEE    	MOVE.B  D0,(#$0EEE,A6) 		;
00171E E208                 	LSR.B   #1, D0			;
001720 1D40         0EED    	MOVE.B  D0,(#$0EED,A6) 		;
001724 4E75                 	RTS     			;
001726 46FC         2200    	MOVE    #$00002200, SR		;
00172A 4287                 	CLR     D7			;
00172C 1E2E 0EEA            	MOVE.B  (#$0EEA,A6),D7 		;
001730 673E                 	BEQ     #$003E			;
001732 422E         0EEA    	CLR     (#$0EEA,A6)		;
001736 4282                 	CLR     D2			;
001738 5307                 	SUBQ.B  #$1, D7			;
00173A 2478 4000            	MOVE.L  $4000.W,A2 		;
00173E 43EE         0200    	LEA     (#$0200,A6), A1		;
001742 4A9A                 	TST.L   (A2)+			;
001744 4A12                 	TST.B   (A2)			;
001746 6B06                 	BMI     #$0006			;
001748 45EA         000C    	LEA     (#$000C,A2), A2		;
00174C 60F6                 	BRA     #$FFF6			;
00174E 2231 2000            	MOVE.L  (#$00,A1,D2),D1 	;
001752 262A 0000            	MOVE.L  (#$0000,A2),D3 		;
001756 2541         0000    	MOVE.L  D1,(#$0000,A2) 		;
00175A D3AA         0008    	ADD.L   D1, (#$0008,A2)		;
00175E 0883 001F            	BCLR    #$0000001F, D3		;
001762 97AA         0008    	SUB.L   D3, (#$0008,A2)		;
001766 5842                 	ADDQ.W  #$4, D2			;
001768 45EA         000C    	LEA     (#$000C,A2), A2		;
00176C 51CF FFD6            	DBRA    D7, #$FFD6		;
001770 0C00 007F            	CMPI.B  #$007F, D0		;
001774 676A                 	BEQ     #$006A			;
001776 2278 4020            	MOVE.L  $4020.W,A1 		;
00177A B051                 	CMP.W   (A1), D0		;
00177C 6E62                 	BGT     #$0062			;
00177E E348                 	LSL.W   #1, D0			;
001780 3031 0002            	MOVE.W  (#$02,A1,D0),D0 	;
001784 D3C0                 	ADDA.L  D0, A1			;
001786 3E19                 	MOVE.W  (A1)+,D7 		;
001788 0247 003F            	ANDI.W  #$003F, D7		;
00178C 2038 4034            	MOVE.L  $4034.W,D0 		;
001790 2678 4000            	MOVE.L  $4000.W,A3 		;
001794 4A9B                 	TST.L   (A3)+			;
001796 45EE         0200    	LEA     (#$0200,A6), A2		;
00179A 49EE         0C30    	LEA     (#$0C30,A6), A4		;
00179E 3219                 	MOVE.W  (A1)+,D1 		;
0017A0 C2FC         000C    	MULU    #$0000000C, D1		;
0017A4 2433 1000            	MOVE.L  (#$00,A3,D1),D2 	;
0017A8 24C2                 	MOVE.L  D2,(A2)+ 		;
0017AA 2780         1000    	MOVE.L  D0,(#$00,A3,D1) 	;
0017AE 08F3 0007    1000    	BSET    #$07, (#$00,A3,D1)	;
0017B4 522E         0EEA    	ADDQ.B  #$1, (#$0EEA,A6)	;
0017B8 95B3         1008    	SUB.L   (#$08,A3,D1), D2	;
0017BC D1B3         1008    	ADD.L   (#$08,A3,D1), D0	;
0017C0 2C33 1004            	MOVE.L  (#$04,A3,D1),D6 	;
0017C4 0886 001F            	BCLR    #$0000001F, D6		;
0017C8 28C2                 	MOVE.L  D2,(A4)+ 		;
0017CA 28C6                 	MOVE.L  D6,(A4)+ 		;
0017CC 2880                 	MOVE.L  D0,(A4) 		;
0017CE 2D7C FFFFFFFE0C24    	MOVE.L  #$FFFFFFFE,(#$0C24,A6) 	;*(u32*)0x003C24 = 0xFFFFFFFE;
0017D6 6100 EE64            	BRS     #$EE64			;
0017DA D086                 	ADD.L   D6, D0			;
0017DC 51CF FFBC            	DBRA    D7, #$FFBC		;
0017E0 46FC         2100    	MOVE    #$00002100, SR		;
0017E4 4E75                 	RTS     			;

L0017E6:
0017E6 47ED         0700    	LEA     (#$0700,A5), A3		;
0017EA 0C00 007F            	CMPI.B  #$007F, D0		;
0017EE 6722                 	BEQ     L001812			;
0017F0 2478 4018            	MOVE.L  $4018.W,A2 		;
0017F4 220A                 	MOVE.L  A2,D1 			;
0017F6 6B18                 	BMI     L001810			;
0017F8 B052                 	CMP.W   (A2), D0		;
0017FA 6E14                 	BGT     L001810			;if () {
0017FC 2200                 	MOVE.L  D0,D1 			;
0017FE E348                 	LSL.W   #1, D0			;
001800 3032 0002            	MOVE.W  (#$02,A2,D0),D0 	;
001804 6100 0012            	BRS     L001818			;  dsp_mem_clear();
001808 1D41         0EF1    	MOVE.B  D1,(#$0EF1,A6) 		;
00180C 6000 EA78            	BRA     #$EA78			;
L001810:
001810 4E75                 	RTS     			;}

L001812:							;
001812 1D7C 00FF    0EF1    	MOVE.B  #$000000FF,(#$0EF1,A6) 	;
L001818:							;void dsp_mem_clear()
001818 6100 EAFA            	BRS     L000314			;mute_dsp();
00181C 47ED         0700    	LEA     (#$0700,A5), A3		;
001820 3E3C 004F            	MOVE.W  #$0000004F,D7 		;
001824 429B                 	CLR     (A3)+			;memset(SCSP.COEF,0,0x80);
001826 429B                 	CLR     (A3)+			;memset(SCSP.MADRS,0,0x80);
001828 429B                 	CLR     (A3)+			;memset(SCSP.MPRO,0,0x400);
00182A 429B                 	CLR     (A3)+			;
00182C 51CF FFF6            	DBRA    D7, #$FFF6		;
001830 43F9         00070000	LEA     $00070000.L, A1		;u16* dst = 0x070000;
001836 3E3C 0FFF            	MOVE.W  #$00000FFF,D7 		;
00183A 22FC 60006000        	MOVE.L  #$60006000,(A1)+ 	;for (int i=0;i<0x10000/2;i++)
001840 22FC 60006000        	MOVE.L  #$60006000,(A1)+ 	;  *dst+ = 0x6000;
001846 22FC 60006000        	MOVE.L  #$60006000,(A1)+ 	;
00184C 22FC 60006000        	MOVE.L  #$60006000,(A1)+ 	;
001852 51CF FFE6            	DBRA    D7, #$FFE6		;
001856 4E75                 	RTS     			;

L001858:							;
001858 6100 017A            	BRS     #$017A			;
00185C 2449                 	MOVE.L  A1,A2 			;
00185E 2649                 	MOVE.L  A1,A3 			;
001860 B02A         0004    	CMP.B   (#$0004,A2), D0		;
001864 6E00 0168            	BGT     #$0168			;
001868 1D40         0EF0    	MOVE.B  D0,(#$0EF0,A6) 		;
00186C 4282                 	CLR     D2			;
00186E 1412                 	MOVE.B  (A2),D2 		;
001870 5442                 	ADDQ.W  #$2, D2			;
001872 E54A                 	LSL.W   #2, D2			;
001874 D3C2                 	ADDA.L  D2, A1			;
001876 4281                 	CLR     D1			;
001878 122A 0005            	MOVE.B  (#$0005,A2),D1 		;
00187C C0C1                 	MULU    D1, D0			;
00187E D3C0                 	ADDA.L  D0, A1			;
001880 4281                 	CLR     D1			;
001882 1212                 	MOVE.B  (A2),D1 		;
001884 5341                 	SUBQ.W  #$1, D1			;
001886 41ED         0700    	LEA     (#$0700,A5), A0		;
00188A 4285                 	CLR     D5			;
00188C 1A2A 0008            	MOVE.B  (#$0008,A2),D5 		;
001890 0205 001F            	ANDI.B  #$001F, D5		;
001894 0C05 0001            	CMPI.B  #$0001, D5		;
001898 660C                 	BNE     #$000C			;
00189A 1A2A 000A            	MOVE.B  (#$000A,A2),D5 		;
00189E 3199         5000    	MOVE.W  (A1)+,(#$00,A0,D5) 	;
0018A2 6000 00A2            	BRA     #$00A2			;
0018A6 0C05 0002            	CMPI.B  #$0002, D5		;
0018AA 663C                 	BNE     #$003C			;
0018AC 1A2A 000A            	MOVE.B  (#$000A,A2),D5 		;
0018B0 7C09                 	MOVEQ   #$09, D6		;
0018B2 3199         5000    	MOVE.W  (A1)+,(#$00,A0,D5) 	;
0018B6 5445                 	ADDQ.W  #$2, D5			;
0018B8 51CE FFF8            	DBRA    D6, #$FFF8		;
0018BC 41ED         0780    	LEA     (#$0780,A5), A0		;
0018C0 4285                 	CLR     D5			;
0018C2 1A2A 000B            	MOVE.B  (#$000B,A2),D5 		;
0018C6 4284                 	CLR     D4			;
0018C8 082A 0005    0008    	BTST    #$05, (#$0008,A2)	;
0018CE 6704                 	BEQ     #$0004			;
0018D0 382B 0002            	MOVE.W  (#$0002,A3),D4 		;
0018D4 7C06                 	MOVEQ   #$06, D6		;
0018D6 3019                 	MOVE.W  (A1)+,D0 		;
0018D8 D044                 	ADD.W   D4, D0			;
0018DA 3180         5000    	MOVE.W  D0,(#$00,A0,D5) 	;
0018DE 5445                 	ADDQ.W  #$2, D5			;
0018E0 51CE FFF4            	DBRA    D6, #$FFF4		;
0018E4 6000 0060            	BRA     #$0060			;
0018E8 0C05 0004            	CMPI.B  #$0004, D5		;
0018EC 663A                 	BNE     #$003A			;
0018EE 1A2A 000A            	MOVE.B  (#$000A,A2),D5 		;
0018F2 3199         5000    	MOVE.W  (A1)+,(#$00,A0,D5) 	;
0018F6 3199         5002    	MOVE.W  (A1)+,(#$02,A0,D5) 	;
0018FA 3199         5004    	MOVE.W  (A1)+,(#$04,A0,D5) 	;
0018FE 41ED         0780    	LEA     (#$0780,A5), A0		;
001902 4285                 	CLR     D5			;
001904 1A2A 000B            	MOVE.B  (#$000B,A2),D5 		;
001908 4284                 	CLR     D4			;
00190A 082A 0005    0008    	BTST    #$05, (#$0008,A2)	;
001910 6704                 	BEQ     #$0004			;
001912 382B 0002            	MOVE.W  (#$0002,A3),D4 		;
001916 3019                 	MOVE.W  (A1)+,D0 		;
001918 D044                 	ADD.W   D4, D0			;
00191A 3180         5000    	MOVE.W  D0,(#$00,A0,D5) 	;
00191E 3019                 	MOVE.W  (A1)+,D0 		;
001920 D044                 	ADD.W   D4, D0			;
001922 3180         5002    	MOVE.W  D0,(#$02,A0,D5) 	;
001926 601E                 	BRA     #$001E			;
001928 0C05 000E            	CMPI.B  #$000E, D5		;
00192C 6708                 	BEQ     #$0008			;
00192E 0C05 0010            	CMPI.B  #$0010, D5		;
001932 6600 009C            	BNE     #$009C			;
001936 1A2A 000A            	MOVE.B  (#$000A,A2),D5 		;
00193A 7C04                 	MOVEQ   #$04, D6		;
00193C 3199         5000    	MOVE.W  (A1)+,(#$00,A0,D5) 	;
001940 5445                 	ADDQ.W  #$2, D5			;
001942 51CE FFF8            	DBRA    D6, #$FFF8		;
001946 45EA         0004    	LEA     (#$0004,A2), A2		;
00194A 51C9 FF3A            	DBRA    D1, #$FF3A		;
00194E 4280                 	CLR     D0			;
001950 1038 407A            	MOVE.B  $407A.W,D0 		;
001954 6100 FCF4            	BRS     #$FCF4			;

L001958:
001958 6100 007A            	BRS     #$007A			;
00195C 2449                 	MOVE.L  A1,A2 			;
00195E 4282                 	CLR     D2			;
001960 1412                 	MOVE.B  (A2),D2 		;
001962 5442                 	ADDQ.W  #$2, D2			;
001964 E54A                 	LSL.W   #2, D2			;
001966 D3C2                 	ADDA.L  D2, A1			;
001968 4280                 	CLR     D0			;
00196A 102E 0EF0            	MOVE.B  (#$0EF0,A6),D0 		;
00196E 4281                 	CLR     D1			;
001970 122A 0005            	MOVE.B  (#$0005,A2),D1 		;
001974 C0C1                 	MULU    D1, D0			;
001976 D3C0                 	ADDA.L  D0, A1			;
001978 4280                 	CLR     D0			;
00197A 102A 0006            	MOVE.B  (#$0006,A2),D0 		;
00197E D3C0                 	ADDA.L  D0, A1			;
001980 3E19                 	MOVE.W  (A1)+,D7 		;
L001982:
001982 4280                 	CLR     D0			;{
001984 1019                 	MOVE.B  (A1)+,D0 		;
001986 EB48                 	LSL.W   #5, D0			;
001988 1419                 	MOVE.B  (A1)+,D2 		;
00198A 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
00198E 6704                 	BEQ     #$0004			;
001990 143C 00E0            	MOVE.B  #$000000E0,D2 		;
001994 1B82         0017    	MOVE.B  D2,(#$17,A5,D0) 	;  SLOT[].EFSDL = 7; SLOT[].EFPAN = 0;
001998 51CF FFE8            	DBRA    D7, L001982		;}
00199C 0838 0002    407F    	BTST    #$02, $407F.W		;
0019A2 672A                 	BEQ     #$002A			;
0019A4 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
0019A8 660E                 	BNE     #$000E			;
0019AA 1B78 4078    01D7    	MOVE.B  $4078.W,(#$01D7,A5) 	;SLOT[14].EFSDL = *(u8*)0x4078>>5; SLOT[14].EFPAN = *(u8*)0x4078&0x1F;
0019B0 1B78 4079    01F7    	MOVE.B  $4079.W,(#$01F7,A5) 	;SLOT[15].EFSDL = *(u8*)0x4079>>5; SLOT[15].EFPAN = *(u8*)0x4079&0x1F;
0019B6 4E75                 	RTS     			;

0019B8 1038 4078            	MOVE.B  $4078.W,D0 		;
0019BC 0200 00E0            	ANDI.B  #$00E0, D0		;
0019C0 0400 0020            	SUBI.B  #$0020, D0		;
0019C4 1B40         01D7    	MOVE.B  D0,(#$01D7,A5) 		;
0019C8 1B40         01F7    	MOVE.B  D0,(#$01F7,A5) 		;
0019CC 4E75                 	RTS     			;
0019CE 4E75                 	RTS     			;
0019D0 4E71                 	NOP     			;
0019D2 60FC                 	BRA     #$FFFC			;
0019D4 2278 4018            	MOVE.L  $4018.W,A1 		;
0019D8 2209                 	MOVE.L  A1,D1 			;
0019DA 6B14                 	BMI     #$0014			;
0019DC 4281                 	CLR     D1			;
0019DE 122E 0EF1            	MOVE.B  (#$0EF1,A6),D1 		;
0019E2 E349                 	LSL.W   #1, D1			;
0019E4 3231 1002            	MOVE.W  (#$02,A1,D1),D1 	;
0019E8 D3C1                 	ADDA.L  D1, A1			;
0019EA 3211                 	MOVE.W  (A1),D1 		;
0019EC D3C1                 	ADDA.L  D1, A1			;
0019EE 4E75                 	RTS     			;
0019F0 4A9F                 	TST.L   (A7)+			;
0019F2 4E75                 	RTS     			;
0019F4 2078 4014            	MOVE.L  $4014.W,A0 		;
0019F8 B050                 	CMP.W   (A0), D0		;
0019FA 6E00 00AC            	BGT     #$00AC			;
0019FE E348                 	LSL.W   #1, D0			;
001A00 3030 0004            	MOVE.W  (#$04,A0,D0),D0 	;
001A04 D1C0                 	ADDA.L  D0, A0			;
001A06 1018                 	MOVE.B  (A0)+,D0 		;
001A08 6B08                 	BMI     #$0008			;
001A0A E308                 	LSL.B   #1, D0			;
001A0C 5200                 	ADDQ.B  #$1, D0			;
001A0E 1D40         0EE9    	MOVE.B  D0,(#$0EE9,A6) 		;
001A12 0C6E 4F4B    0C2A    	CMPI.W  #$4F4B, (#$0C2A,A6)	;
001A18 6706                 	BEQ     #$0006			;
001A1A 41E8         0003    	LEA     (#$0003,A0), A0		;
001A1E 601E                 	BRA     #$001E			;
001A20 4280                 	CLR     D0			;
001A22 1018                 	MOVE.B  (A0)+,D0 		;
001A24 6B0C                 	BMI     #$000C			;
001A26 48E7 0080            	MOVEM.L  80, -(A7)		;
001A2A 6100 FDBA            	BRS     #$FDBA			;
001A2E 4CDF 0100            	MOVEM.L  (A7)+, 100		;
001A32 4A18                 	TST.B   (A0)+			;
001A34 4280                 	CLR     D0			;
001A36 1018                 	MOVE.B  (A0)+,D0 		;
001A38 6B04                 	BMI     #$0004			;
001A3A 6100 FCEA            	BRS     #$FCEA			;
001A3E 4A18                 	TST.B   (A0)+			;
001A40 4287                 	CLR     D7			;
001A42 1E18                 	MOVE.B  (A0)+,D7 		;
001A44 6762                 	BEQ     #$0062			;
001A46 47EE         0C40    	LEA     (#$0C40,A6), A3		;
001A4A 7C13                 	MOVEQ   #$13, D6		;
001A4C 0813 0000            	BTST    #$00, (A3)		;
001A50 6602                 	BNE     #$0002			;
001A52 4213                 	CLR     (A3)			;
001A54 47EB         0020    	LEA     (#$0020,A3), A3		;
001A58 51CE FFF2            	DBRA    D6, #$FFF2		;
001A5C 47EE         0C40    	LEA     (#$0C40,A6), A3		;
001A60 3C07                 	MOVE.W  D7,D6 			;
001A62 5347                 	SUBQ.W  #$1, D7			;
001A64 720F                 	MOVEQ   #$0F, D1		;
001A66 16D8                 	MOVE.B  (A0)+,(A3)+ 		;
001A68 51C9 FFFC            	DBRA    D1, #$FFFC		;
001A6C 429B                 	CLR     (A3)+			;
001A6E 429B                 	CLR     (A3)+			;
001A70 429B                 	CLR     (A3)+			;
001A72 429B                 	CLR     (A3)+			;
001A74 51CF FFEE            	DBRA    D7, #$FFEE		;
001A78 5346                 	SUBQ.W  #$1, D6			;
001A7A 45EE         0C40    	LEA     (#$0C40,A6), A2		;
001A7E 4281                 	CLR     D1			;
001A80 122A 0003            	MOVE.B  (#$0003,A2),D1 		;
001A84 343C 00FF            	MOVE.W  #$000000FF,D2 		;
001A88 082A 0000    0000    	BTST    #$00, (#$0000,A2)	;
001A8E 6604                 	BNE     #$0004			;
001A90 142E 0EE9            	MOVE.B  (#$0EE9,A6),D2 		;
001A94 C4C1                 	MULU    D1, D2			;
001A96 E04A                 	LSR.W   #0, D2			;
001A98 6702                 	BEQ     #$0002			;
001A9A 5202                 	ADDQ.B  #$1, D2			;
001A9C 1542         000A    	MOVE.B  D2,(#$000A,A2) 		;
001AA0 45EA         0020    	LEA     (#$0020,A2), A2		;
001AA4 51CE FFD8            	DBRA    D6, #$FFD8		;
001AA8 4E75                 	RTS     			;
001AAA 6100 FF28            	BRS     #$FF28			;
001AAE 4287                 	CLR     D7			;
001AB0 1E11                 	MOVE.B  (A1),D7 		;
001AB2 5747                 	SUBQ.W  #$3, D7			;
001AB4 0205 000F            	ANDI.B  #$000F, D5		;
001AB8 0C29 0001    0010    	CMPI.B  #$0001, (#$0010,A1)	;
001ABE 6620                 	BNE     #$0020			;
001AC0 BA29         0011    	CMP.B   (#$0011,A1), D5		;
001AC4 661A                 	BNE     #$001A			;
001AC6 41ED         0700    	LEA     (#$0700,A5), A0		;
001ACA 4285                 	CLR     D5			;
001ACC 1A29 0012            	MOVE.B  (#$0012,A1),D5 		;
001AD0 43F9         00002942	LEA     $00002942.L, A1		;
001AD6 E308                 	LSL.B   #1, D0			;
001AD8 31B1 0000    5000    	MOVE.W  (#$00,A1,D0),(#$00,A0,D5);
001ADE 4E75                 	RTS     			;
001AE0 43E9         0004    	LEA     (#$0004,A1), A1		;
001AE4 51CF FFD2            	DBRA    D7, #$FFD2		;
001AE8 4E75                 	RTS     			;
001AEA 4A2E         0EFB    	TST.B   (#$0EFB,A6)		;
001AEE 6614                 	BNE     #$0014			;
001AF0 0205 000F            	ANDI.B  #$000F, D5		;
001AF4 EB4D                 	LSL.W   #5, D5			;
001AF6 0235 00E0    5017    	ANDI.B  #$5017, (#$14,A5,D0)	;
001AFC 6100 F888            	BRS     #$F888			;
001B00 8135         5017    	OR.B    (#$17,A5,D5), D0	;
001B04 4E75                 	RTS     			;

L001B06:							;cmd_Ax_00:
001B06 0C00 000F            	CMPI.B  #$000F, D0		;
001B0A 6E28                 	BGT     #$0028			;
001B0C E348                 	LSL.W   #1, D0			;
001B0E 303B 0006            	MOVE.W  (#$06,PC,D0),D0 	;
001B12 4EFB         0002    	JMP     (#$02,PC,D0)	
001B16
001E 
0086
00F0 
0136
01AE
0080								;L001B96 //5
019C
01A4
002E 
004A    
001E
001E 
0020
0028 
004E 

001B34 4E75                 	RTS  
001B36 1D7C 00FF    0EDC    	MOVE.B  #$000000FF,(#$0EDC,A6) 	;
001B3C 4E75                 	RTS     			;

001B3E 422E         0EDC    	CLR     (#$0EDC,A6)		;
001B42 4E75                 	RTS     			;
001B44 7201                 	MOVEQ   #$01, D1		;
001B46 43EE         0C40    	LEA     (#$0C40,A6), A1		;
001B4A 7E13                 	MOVEQ   #$13, D7		;
001B4C 0811 0000            	BTST    #$00, (A1)		;
001B50 6604                 	BNE     #$0004			;
001B52 D329         0004    	ADD.B   D1, (#$0004,A1)		;
001B56 43E9         0020    	LEA     (#$0020,A1), A1		;
001B5A 51CF FFF0            	DBRA    D7, #$FFF0		;
001B5E 4E75                 	RTS     			;
001B60 72FF                 	MOVEQ   #$FF, D1		;
001B62 60E2                 	BRA     #$FFE2			;
001B64 1B7C 0010    0000    	MOVE.B  #$00000010,(#$0000,A5) 	;
001B6A 0838 0001    4040    	BTST    #$01, $4040.W		;
001B70 6706                 	BEQ     #$0006			;
001B72 1B7C 0010    0020    	MOVE.B  #$00000010,(#$0020,A5) 	;
001B78 43F9         00070000	LEA     $00070000.L, A1		;
001B7E 233C 73656761        	MOVE.L  #$73656761,-(A1) 	;
001B84 233C 73656761        	MOVE.L  #$73656761,-(A1) 	;
001B8A 08F8 0006    4040    	BSET    #$06, $4040.W		;
001B90 4278         4044    	CLR     $4044.W			;
001B94 4E75                 	RTS     			;

L001B96:							;cmd_Ax_00_05:
001B96 3D7C 8000    0EFE    	MOVE.W  #$8000,(#$0EFE,A6) 	;
001B9C 0C13 0080            	CMPI.B  #$0080, (A3)		;
001BA0 6710                 	BEQ     #$0010			;
001BA2 6100 00F6            	BRS     #$00F6			;
001BA6 49EE         0300    	LEA     (#$0300,A6), A4		;
001BAA 7E1F                 	MOVEQ   #$1F, D7		;
001BAC 429C                 	CLR     (A4)+			;
001BAE 51CF FFFC            	DBRA    D7, #$FFFC		;
001BB2 49EE         0400    	LEA     (#$0400,A6), A4		;
001BB6 7E1F                 	MOVEQ   #$1F, D7		;
001BB8 4A2C         0002    	TST.B   (#$0002,A4)		;
001BBC 6704                 	BEQ     #$0004			;
001BBE 6100 E9AA            	BRS     #$E9AA			;
001BC2 49EC         0020    	LEA     (#$0020,A4), A4		;
001BC6 51CF FFF0            	DBRA    D7, #$FFF0		;
001BCA 42AE         0EE0    	CLR     (#$0EE0,A6)		;
001BCE 49EE         0160    	LEA     (#$0160,A6), A4		;
001BD2 429C                 	CLR     (A4)+			;
001BD4 429C                 	CLR     (A4)+			;
001BD6 429C                 	CLR     (A4)+			;
001BD8 429C                 	CLR     (A4)+			;
001BDA 429C                 	CLR     (A4)+			;
001BDC 429C                 	CLR     (A4)+			;
001BDE 429C                 	CLR     (A4)+			;
001BE0 4294                 	CLR     (A4)			;
001BE2 49EE         0C40    	LEA     (#$0C40,A6), A4		;
001BE6 7E14                 	MOVEQ   #$14, D7		;
001BE8 022C 00BF    0000    	ANDI.B  #$0000, (#$FFF0,A4)	;
001BEE 49EC         0020    	LEA     (#$0020,A4), A4		;
001BF2 51CF FFF4            	DBRA    D7, #$FFF4		;
001BF6 4280                 	CLR     D0			;
001BF8 102E 0EF1            	MOVE.B  (#$0EF1,A6),D0 		;
001BFC 6100 FBE8            	BRS     L0017E6			;L0017E6();
001C00 46FC         2000    	MOVE    #$00002000, SR		;
001C04 4E75                 	RTS     			;

001C06 0C13 0080            	CMPI.B  #$0080, (A3)		;
001C0A 670C                 	BEQ     #$000C			;
001C0C 49EE         0300    	LEA     (#$0300,A6), A4		;
001C10 429C                 	CLR     (A4)+			;
001C12 429C                 	CLR     (A4)+			;
001C14 429C                 	CLR     (A4)+			;
001C16 4294                 	CLR     (A4)			;
001C18 49EE         0400    	LEA     (#$0400,A6), A4		;
001C1C 7E1F                 	MOVEQ   #$1F, D7		;
001C1E 4A2C         0002    	TST.B   (#$0002,A4)		;
001C22 6712                 	BEQ     #$0012			;
001C24 4A2C         0009    	TST.B   (#$0009,A4)		;
001C28 6B0C                 	BMI     #$000C			;
001C2A 4285                 	CLR     D5			;
001C2C 1A2C 0004            	MOVE.B  (#$0004,A4),D5 		;
001C30 6156                 	BRS     #$0056			;
001C32 6100 E936            	BRS     #$E936			;
001C36 49EC         0020    	LEA     (#$0020,A4), A4		;
001C3A 51CF FFE2            	DBRA    D7, #$FFE2		;
001C3E 102E 0EE9            	MOVE.B  (#$0EE9,A6),D0 		;
001C42 6100 FA4A            	BRS     #$FA4A			;
001C46 46FC         2000    	MOVE    #$00002000, SR		;
001C4A 4E75                 	RTS     			;
001C4C 0C13 0080            	CMPI.B  #$0080, (A3)		;
001C50 6702                 	BEQ     #$0002			;
001C52 6146                 	BRS     #$0046			;
001C54 49EE         0310    	LEA     (#$0310,A6), A4		;
001C58 7E1B                 	MOVEQ   #$1B, D7		;
001C5A 429C                 	CLR     (A4)+			;
001C5C 51CF FFFC            	DBRA    D7, #$FFFC		;
001C60 49EE         0400    	LEA     (#$0400,A6), A4		;
001C64 7E1F                 	MOVEQ   #$1F, D7		;
001C66 082C 0003    0002    	BTST    #$03, (#$0002,A4)	;
001C6C 670C                 	BEQ     #$000C			;
001C6E 4285                 	CLR     D5			;
001C70 1A2C 0004            	MOVE.B  (#$0004,A4),D5 		;
001C74 6112                 	BRS     #$0012			;
001C76 6100 E8F2            	BRS     #$E8F2			;
001C7A 49EC         0020    	LEA     (#$0020,A4), A4		;
001C7E 51CF FFE6            	DBRA    D7, #$FFE6		;
001C82 46FC         2000    	MOVE    #$00002000, SR		;
001C86 4E75                 	RTS     			;
001C88 0268 7F18    0008    	ANDI.W  #$0008, (#$FFE6,A0)	;
001C8E 45EE         0160    	LEA     (#$0160,A6), A2		;
001C92 E34D                 	LSL.W   #1, D5			;
001C94 4272         5000    	CLR     (#$00,A2,D5)		;
001C98 4E75                 	RTS     			;
001C9A 4AB8         4010    	TST.L   $4010.W			;
001C9E 6B10                 	BMI     #$0010			;
001CA0 49EE         0380    	LEA     (#$0380,A6), A4		;
001CA4 7E07                 	MOVEQ   #$07, D7		;
001CA6 4214                 	CLR     (A4)			;
001CA8 49EC         0010    	LEA     (#$0010,A4), A4		;
001CAC 51CF FFF8            	DBRA    D7, #$FFF8		;
001CB0 4E75                 	RTS     			;

L001CB2:
001CB2 422E         0EFB    	CLR     (#$0EFB,A6)		;
001CB6 6000 FCA0            	BRA     L001958			;

001CBA 1D7C 0001    0EFB    	MOVE.B  #$00000001,(#$0EFB,A6) 	;
001CC0 6000 FC96            	BRA     #$FC96			;
001CC4 4A2E         0ED7    	TST.B   (#$0ED7,A6)		;
001CC8 665E                 	BNE     #$005E			;
001CCA 1D6E 0EEB    0EEF    	MOVE.B  (#$0EEB,A6),(#$0EEF,A6) ;
001CD0 422E         0EEB    	CLR     (#$0EEB,A6)		;
001CD4 7E1F                 	MOVEQ   #$1F, D7		;
001CD6 4284                 	CLR     D4			;
001CD8 0035 0001    4000    	ORI.B   #$4000, (#$EF,A5,D0) 	;
001CDE 0644 0020            	ADDI.W  #$0020, D4		;
001CE2 51CF FFF4            	DBRA    D7, #$FFF4		;
001CE6 1D7C 0080    0ED7    	MOVE.B  #$00000080,(#$0ED7,A6) 	;
001CEC 08AE 0007    0300    	BCLR    #$07, (#$0300,A6)	;
001CF2 6606                 	BNE     #$0006			;
001CF4 1D7C 0010    0ED7    	MOVE.B  #$00000010,(#$0ED7,A6) 	;
001CFA 4280                 	CLR     D0			;
001CFC 3038 4074            	MOVE.W  $4074.W,D0 		;
001D00 E188                 	LSL.L   #0, D0			;
001D02 0080 A0000000        	ORI.L   #$A0000000, D0 		;

L001D08:							;void set_command(u32 cmd)
001D08 43EE         0800    	LEA     (#$0800,A6), A1		;
001D0C 342E 0EC4            	MOVE.W  (#$0EC4,A6),D2 		;
001D10 0282 000003FF        	ANDI.L  #$000003FF, D2		;u16 offs = *(u16*)0x003EC4 & 0x3FF;
001D16 2380         2000    	MOVE.L  D0,(#$00,A1,D2) 	;*(u32*)(0x003800+offs) = cmd;
001D1A 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;*(u16*)0x003EC4 += 4;
001D1E 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;*(u8*)0x003ECC += 1;
001D22 46FC         2000    	MOVE    #$00002000, SR		;
001D26 4E75                 	RTS     			;

001D28 6A06                 	BPL     #$0006			;
001D2A 08EE 0007    0300    	BSET    #$07, (#$0300,A6)	;
001D30 422E         0ED7    	CLR     (#$0ED7,A6)		;
001D34 1D6E 0EEF    0EEB    	MOVE.B  (#$0EEF,A6),(#$0EEB,A6) ;
001D3A 7E1F                 	MOVEQ   #$1F, D7		;
001D3C 4284                 	CLR     D4			;
001D3E 0235 001E    4000    	ANDI.B  #$4000, (#$EB,A5,D0)	;
001D44 0644 0020            	ADDI.W  #$0020, D4		;
001D48 51CF FFF4            	DBRA    D7, #$FFF4		;
001D4C 4280                 	CLR     D0			;
001D4E 3038 4076            	MOVE.W  $4076.W,D0 		;
001D52 60AC                 	BRA     #$FFAC			;

LVL2_INT:							;void timer_A_handler()
001D54 48E7 C1F0            	MOVEM.L  C1F0, -(A7)		;
001D58 5278         406C    	ADDQ.W  #$1, $406C.W		;
001D5C 4280                 	CLR     D0			;
001D5E 3038 406A            	MOVE.W  $406A.W,D0 		;
001D62 4A78         406E    	TST.W   $406E.W			;
001D66 6714                 	BEQ     #$0014			;
001D68 6B0A                 	BMI     #$000A			;
001D6A 5378         406E    	SUBQ.W  #$1, $406E.W		;
001D6E 0440 0030            	SUBI.W  #$0030, D0		;
001D72 6008                 	BRA     #$0008			;
001D74 5278         406E    	ADDQ.W  #$1, $406E.W		;
001D78 0640 0030            	ADDI.W  #$0030, D0		;
001D7C 3B40         0418    	MOVE.W  D0,(#$0418,A5) 		;
001D80 3B7C 0040    0422    	MOVE.W  #$0040,(#$0422,A5) 	;
001D86 0C2E 00FC    0ECC    	CMPI.B  #$00FC, (#$0ECC,A6)	;
001D8C 6F28                 	BLE     #$0028			;
001D8E 43EE         0800    	LEA     (#$0800,A6), A1		;
001D92 302E 0EC4            	MOVE.W  (#$0EC4,A6),D0 		;
001D96 0280 000003FF        	ANDI.L  #$000003FF, D0		;u16 offs = *(u16*)0x003EC4 & 0x3FF;
001D9C D3C0                 	ADDA.L  D0, A1			;void* cmd_ptr = 0x003800+offs;
001D9E 45EE         0300    	LEA     (#$0300,A6), A2		;0x003300
001DA2 6118                 	BRS     L001DBC			;L001DBC();
001DA4 6100 0090            	BRS     #$0090			;
001DA8 7E08                 	MOVEQ   #$08, D7		;
001DAA 6100 00F4            	BRS     #$00F4			;
001DAE 45EA         0010    	LEA     (#$0010,A2), A2		;
001DB2 51CF FFF6            	DBRA    D7, #$FFF6		;
001DB6 4CDF 0F83            	MOVEM.L  (A7)+, F83		;
001DBA 4E73                 	RTE     			;

L001DBC:
001DBC 4A2E         0EEB    	TST.B   (#$0EEB,A6)		;
001DC0 6766                 	BEQ     L001E28			;return;
001DC2 532E         0EEC    	SUBQ.B  #$1, (#$0EEC,A6)	;
001DC6 6660                 	BNE     L001E28			;return;
001DC8 1D6E 0EEB    0EEC    	MOVE.B  (#$0EEB,A6),(#$0EEC,A6) ;
001DCE 4280                 	CLR     D0			;
001DD0 1038 407A            	MOVE.B  $407A.W,D0 		;
001DD4 5500                 	SUBQ.B  #$2, D0			;
001DD6 6B0A                 	BMI     L001DE2			;
001DD8 11C0         407A    	MOVE.B  D0,$407A.W 		;
001DDC 6100 F86C            	BRS     #$F86C			;
001DE0 600E                 	BRA     #$000E			;
L001DE2:
001DE2 4280                 	CLR     D0			;
001DE4 4238         407A    	CLR     $407A.W			;
001DE8 426D         070C    	CLR     (#$070C,A5)		;
001DEC 426D         0710    	CLR     (#$0710,A5)		;
001DF0 122E 0EED            	MOVE.B  (#$0EED,A6),D1 		;
001DF4 5901                 	SUBQ.B  #$4, D1			;
001DF6 6B10                 	BMI     #$0010			;
001DF8 12FC 00A0            	MOVE.B  #$000000A0,(A1)+ 	;
001DFC 12FC 0001            	MOVE.B  #$00000001,(A1)+ 	;
001E00 12C1                 	MOVE.B  D1,(A1)+ 		;
001E02 1D41         0EED    	MOVE.B  D1,(#$0EED,A6) 		;
001E06 6022                 	BRA     #$0022			;
001E08 4A00                 	TST.B   D0			;
001E0A 661C                 	BNE     #$001C			;
001E0C 12FC 00A0            	MOVE.B  #$000000A0,(A1)+ 	;
001E10 12FC 0000            	MOVE.B  #$00000000,(A1)+ 	;
001E14 12FC 0002            	MOVE.B  #$00000002,(A1)+ 	;
001E18 6110                 	BRS     #$0010			;
001E1A 1D6E 0EEE    0EE9    	MOVE.B  (#$0EEE,A6),(#$0EE9,A6) ;
001E20 422A         0000    	CLR     (#$0000,A2)		;
001E24 422E         0EEB    	CLR     (#$0EEB,A6)		;
L001E28:
001E28 4E75                 	RTS     			;
L001E2A:
001E2A 4219                 	CLR     (A1)+			;
001E2C 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;
001E30 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;
001E34 4E75                 	RTS     			;

001E36 4A2E         0EF2    	TST.B   (#$0EF2,A6)		;
001E3A 6762                 	BEQ     #$0062			;
001E3C 532E         0EEC    	SUBQ.B  #$1, (#$0EEC,A6)	;
001E40 665C                 	BNE     #$005C			;
001E42 1D6E 0EF2    0EEC    	MOVE.B  (#$0EF2,A6),(#$0EEC,A6) ;
001E48 4280                 	CLR     D0			;
001E4A 102E 0EF3            	MOVE.B  (#$0EF3,A6),D0 		;
001E4E 5400                 	ADDQ.B  #$2, D0			;
001E50 B038         407A    	CMP.B   $407A.W, D0		;
001E54 640A                 	BCC     #$000A			;
001E56 1D40         0EF3    	MOVE.B  D0,(#$0EF3,A6) 		;
001E5A 6100 F7EE            	BRS     #$F7EE			;
001E5E 600C                 	BRA     #$000C			;

001E60 4280                 	CLR     D0			;
001E62 1038 407A            	MOVE.B  $407A.W,D0 		;
001E66 6100 F7E2            	BRS     #$F7E2			;
001E6A 4280                 	CLR     D0			;
001E6C 122E 0EED            	MOVE.B  (#$0EED,A6),D1 		;
001E70 5801                 	ADDQ.B  #$4, D1			;
001E72 B22E         0EEE    	CMP.B   (#$0EEE,A6), D1		;
001E76 6410                 	BCC     #$0010			;
001E78 12FC 00A0            	MOVE.B  #$000000A0,(A1)+ 	;
001E7C 12FC 0001            	MOVE.B  #$00000001,(A1)+ 	;
001E80 12C1                 	MOVE.B  D1,(A1)+ 		;
001E82 1D41         0EED    	MOVE.B  D1,(#$0EED,A6) 		;
001E86 60A2                 	BRA     L001E2A			;goto L001E2A;

001E88 4A00                 	TST.B   D0			;
001E8A 669C                 	BNE     L001E28			;return;
001E8C 12FC 00A0            	MOVE.B  #$000000A0,(A1)+ 	;
001E90 12FC 0001            	MOVE.B  #$00000001,(A1)+ 	;
001E94 12EE 0EEE            	MOVE.B  (#$0EEE,A6),(A1)+ 	;
001E98 422E         0EF2    	CLR     (#$0EF2,A6)		;
001E9C 608C                 	BRA     L001E2A			;goto L001E2A;
001E9E 4E75                 	RTS     			;

001EA0 082A 0007    0000    	BTST    #$07, (#$0000,A2)	;
001EA6 6602                 	BNE     #$0002			;
001EA8 4E75                 	RTS     			;
001EAA 4A2E         0EDC    	TST.B   (#$0EDC,A6)		;
001EAE 6608                 	BNE     #$0008			;
001EB0 536A         0002    	SUBQ.W  #$1, (#$0002,A2)	;
001EB4 6F02                 	BLE     #$0002			;
001EB6 4E75                 	RTS     			;
001EB8 266A 0004            	MOVE.L  (#$0004,A2),A3 		;
001EBC 200B                 	MOVE.L  A3,D0 			;
001EBE 6B00 015E            	BMI     #$015E			;
001EC2 2009                 	MOVE.L  A1,D0 			;
001EC4 0880 000A            	BCLR    #$0000000A, D0		;
001EC8 2240                 	MOVE.L  D0,A1 			;
001ECA 08AA 0000    0000    	BCLR    #$00, (#$0000,A2)	;
001ED0 121B                 	MOVE.B  (A3)+,D1 		;
001ED2 6B06                 	BMI     #$0006			;
001ED4 122A 0001            	MOVE.B  (#$0001,A2),D1 		;
001ED8 538B                 	SUBQ.L  #$1, A3			;
001EDA 1541         0001    	MOVE.B  D1,(#$0001,A2) 		;
001EDE 1001                 	MOVE.B  D1,D0 			;
001EE0 E408                 	LSR.B   #2, D0			;
001EE2 0240 001C            	ANDI.W  #$001C, D0		;
001EE6 41FB         0004    	LEA     (#$04,PC,D0), A0	;
001EEA 4ED0                 	JMP     (A0)			;
001EEC 6000 008C            	BRA     #$008C			;
001EF0 6000 0052            	BRA     #$0052			;
001EF4 6000 0016            	BRA     #$0016			;
001EF8 6000 004A            	BRA     #$004A			;
001EFC 6000 0066            	BRA     #$0066			;
001F00 6000 008E            	BRA     #$008E			;
001F04 6000 0058            	BRA     #$0058			;
001F08 6000 00A2            	BRA     #$00A2			;
001F0C 12C1                 	MOVE.B  D1,(A1)+ 		;
001F0E 121B                 	MOVE.B  (A3)+,D1 		;
001F10 12C1                 	MOVE.B  D1,(A1)+ 		;
001F12 0C01 0001            	CMPI.B  #$0001, D1		;
001F16 6614                 	BNE     #$0014			;
001F18 4A2E         0EEB    	TST.B   (#$0EEB,A6)		;
001F1C 6606                 	BNE     #$0006			;
001F1E 4A2E         0EF2    	TST.B   (#$0EF2,A6)		;
001F22 6708                 	BEQ     #$0008			;
001F24 4229         FFFF    	CLR     (#$FFFF,A1)		;
001F28 4281                 	CLR     D1			;
001F2A 6002                 	BRA     #$0002			;
001F2C 121B                 	MOVE.B  (A3)+,D1 		;
001F2E 0881 0007            	BCLR    #$00000007, D1		;
001F32 6706                 	BEQ     #$0006			;
001F34 08EA 0000    0000    	BSET    #$00, (#$0000,A2)	;
001F3A 12C1                 	MOVE.B  D1,(A1)+ 		;
001F3C 12FC 0080            	MOVE.B  #$00000080,(A1)+ 	;
001F40 6000 00A0            	BRA     #$00A0			;
001F44 12C1                 	MOVE.B  D1,(A1)+ 		;
001F46 12DB                 	MOVE.B  (A3)+,(A1)+ 		;
001F48 121B                 	MOVE.B  (A3)+,D1 		;
001F4A 0881 0007            	BCLR    #$00000007, D1		;
001F4E 6706                 	BEQ     #$0006			;
001F50 08EA 0000    0000    	BSET    #$00, (#$0000,A2)	;
001F56 12C1                 	MOVE.B  D1,(A1)+ 		;
001F58 4219                 	CLR     (A1)+			;
001F5A 6000 0086            	BRA     #$0086			;
001F5E 12C1                 	MOVE.B  D1,(A1)+ 		;
001F60 4219                 	CLR     (A1)+			;
001F62 60E4                 	BRA     #$FFE4			;
001F64 12C1                 	MOVE.B  D1,(A1)+ 		;
001F66 121B                 	MOVE.B  (A3)+,D1 		;
001F68 0881 0007            	BCLR    #$00000007, D1		;
001F6C 6706                 	BEQ     #$0006			;
001F6E 08EA 0000    0000    	BSET    #$00, (#$0000,A2)	;
001F74 12C1                 	MOVE.B  D1,(A1)+ 		;
001F76 4281                 	CLR     D1			;
001F78 6064                 	BRA     #$0064			;
001F7A 12C1                 	MOVE.B  D1,(A1)+ 		;
001F7C 121B                 	MOVE.B  (A3)+,D1 		;
001F7E 0881 0007            	BCLR    #$00000007, D1		;
001F82 6706                 	BEQ     #$0006			;
001F84 08EA 0000    0000    	BSET    #$00, (#$0000,A2)	;
001F8A 12C1                 	MOVE.B  D1,(A1)+ 		;
001F8C 727F                 	MOVEQ   #$7F, D1		;
001F8E 604E                 	BRA     #$004E			;
001F90 0201 009F            	ANDI.B  #$009F, D1		;
001F94 12C1                 	MOVE.B  D1,(A1)+ 		;
001F96 12DB                 	MOVE.B  (A3)+,(A1)+ 		;
001F98 12DB                 	MOVE.B  (A3)+,(A1)+ 		;
001F9A 121B                 	MOVE.B  (A3)+,D1 		;
001F9C 0881 0007            	BCLR    #$00000007, D1		;
001FA0 6706                 	BEQ     #$0006			;
001FA2 08EA 0000    0000    	BSET    #$00, (#$0000,A2)	;
001FA8 12C1                 	MOVE.B  D1,(A1)+ 		;
001FAA 6036                 	BRA     #$0036			;
001FAC 0C01 00F7            	CMPI.B  #$00F7, D1		;
001FB0 670E                 	BEQ     #$000E			;
001FB2 0C01 00F0            	CMPI.B  #$00F0, D1		;
001FB6 6710                 	BEQ     #$0010			;
001FB8 0C01 00FF            	CMPI.B  #$00FF, D1		;
001FBC 6712                 	BEQ     #$0012			;
001FBE 6050                 	BRA     #$0050			;
001FC0 4281                 	CLR     D1			;
001FC2 121B                 	MOVE.B  (A3)+,D1 		;
001FC4 D7C1                 	ADDA.L  D1, A3			;
001FC6 6022                 	BRA     #$0022			;
001FC8 0C1B 00F7            	CMPI.B  #$00F7, (A3)+		;
001FCC 66FA                 	BNE     #$FFFA			;
001FCE 601A                 	BRA     #$001A			;
001FD0 0C1B 002F            	CMPI.B  #$002F, (A3)+		;
001FD4 673A                 	BEQ     #$003A			;
001FD6 4281                 	CLR     D1			;
001FD8 121B                 	MOVE.B  (A3)+,D1 		;
001FDA D7C1                 	ADDA.L  D1, A3			;
001FDC 600C                 	BRA     #$000C			;
001FDE 12C1                 	MOVE.B  D1,(A1)+ 		;
001FE0 4219                 	CLR     (A1)+			;
001FE2 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;
001FE6 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;
001FEA 082A 0000    0000    	BTST    #$00, (#$0000,A2)	;
001FF0 6600 FECA            	BNE     #$FECA			;
001FF4 4281                 	CLR     D1			;
001FF6 121B                 	MOVE.B  (A3)+,D1 		;
001FF8 6700 FEC2            	BEQ     #$FEC2			;
001FFC 0881 0007            	BCLR    #$00000007, D1		;
002000 6704                 	BEQ     #$0004			;
002002 EF49                 	LSL.W   #7, D1			;
002004 821B                 	OR.B    D1, (A3)+		;
002006 3541         0002    	MOVE.W  D1,(#$0002,A2) 		;
00200A 254B         0004    	MOVE.L  A3,(#$0004,A2) 		;
00200E 4E75                 	RTS     			;
002010 082A 0003    0000    	BTST    #$03, (#$0000,A2)	;
002016 6750                 	BEQ     #$0050			;
002018 206A 0008            	MOVE.L  (#$0008,A2),A0 		;
00201C 2658                 	MOVE.L  (A0)+,A3 		;
00201E 200B                 	MOVE.L  A3,D0 			;
002020 0280 FF000000        	ANDI.L  #$FF000000, D0		;
002026 0C80 80000000        	CMPI.L  #$80000000, D0		;
00202C 661A                 	BNE     #$001A			;
00202E 200B                 	MOVE.L  A3,D0 			;
002030 E188                 	LSL.L   #0, D0			;
002032 0000 0080            	ORI.B   #$0080, D0 		;
002036 22C0                 	MOVE.L  D0,(A1)+ 		;
002038 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;
00203C 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;
002040 206A 0008            	MOVE.L  (#$0008,A2),A0 		;
002044 6000 002A            	BRA     #$002A			;
002048 B7FC         FFFFFFFF	CMPA.L  #$FFFFFFFF, A3		;
00204E 6718                 	BEQ     #$0018			;
002050 B7FC         FFFFFFF1	CMPA.L  #$FFFFFFF1, A3		;
002056 6716                 	BEQ     #$0016			;
002058 B7FC         FFFFFFF2	CMPA.L  #$FFFFFFF2, A3		;
00205E 671A                 	BEQ     #$001A			;
002060 2548         0008    	MOVE.L  A0,(#$0008,A2) 		;
002064 6000 FE56            	BRA     #$FE56			;
002068 422A         0000    	CLR     (#$0000,A2)		;
00206C 4E75                 	RTS     			;
00206E 2050                 	MOVE.L  (A0),A0 		;
002070 2658                 	MOVE.L  (A0)+,A3 		;
002072 2548         0008    	MOVE.L  A0,(#$0008,A2) 		;
002076 6000 FE44            	BRA     #$FE44			;
00207A 41EE         0300    	LEA     (#$0300,A6), A0		;
00207E 701F                 	MOVEQ   #$1F, D0		;
002080 4298                 	CLR     (A0)+			;
002082 51C8 FFFC            	DBRA    D0, #$FFFC		;
002086 4E75                 	RTS     			;

L002088:
002088 4AB8         4010    	TST.L   $4010.W			;
00208C 6B40                 	BMI     #$0040			;
00208E 0C00 0070            	CMPI.B  #$0070, D0		;
002092 6500 0324            	BCS     #$0324			;
002096 41EE         0380    	LEA     (#$0380,A6), A0		;
00209A 0205 000F            	ANDI.B  #$000F, D5		;
00209E E94D                 	LSL.W   #4, D5			;
0020A0 D0C5                 	ADDA.W  D5, A0			;
0020A2 1D45         0ECF    	MOVE.B  D5,(#$0ECF,A6) 		;
0020A6 0200 0007            	ANDI.B  #$0007, D0		;
0020AA E548                 	LSL.W   #2, D0			;
0020AC 49FB         0004    	LEA     (#$04,PC,D0), A4	;
0020B0 4ED4                 	JMP     (A4)			;
0020B2 6000 001C            	BRA     #$001C			;
0020B6 6000 022A            	BRA     #$022A			;
0020BA 6000 0262            	BRA     #$0262			;
0020BE 6000 02A0            	BRA     #$02A0			;
0020C2 6000 02AA            	BRA     #$02AA			;
0020C6 6000 02D2            	BRA     #$02D2			;
0020CA 6000 0002            	BRA     #$0002			;
0020CE 4E75                 	RTS     			;
0020D0 1028 0001            	MOVE.B  (#$0001,A0),D0 		;
0020D4 2478 4010            	MOVE.L  $4010.W,A2 		;
0020D8 B052                 	CMP.W   (A2), D0		;
0020DA 6EF2                 	BGT     #$FFF2			;
0020DC E548                 	LSL.W   #2, D0			;
0020DE 2472 0002            	MOVE.L  (#$02,A2,D0),A2 	;
0020E2 101B                 	MOVE.B  (A3)+,D0 		;
0020E4 6700 01DC            	BEQ     #$01DC			;
0020E8 B028         0007    	CMP.B   (#$0007,A0), D0		;
0020EC 67E0                 	BEQ     #$FFE0			;
0020EE 1140         0007    	MOVE.B  D0,(#$0007,A0) 		;
0020F2 3E1A                 	MOVE.W  (A2)+,D7 		;
0020F4 4A5A                 	TST.W   (A2)+			;
0020F6 4246                 	CLR     D6			;
0020F8 4A2A         0002    	TST.B   (#$0002,A2)		;
0020FC 6B00 012C            	BMI     #$012C			;
002100 B02A         0002    	CMP.B   (#$0002,A2), D0		;
002104 640C                 	BCC     #$000C			;
002106 0D28         0000    	BTST    D6, (#$000C,A0) 	;
00210A 6700 011E            	BEQ     #$011E			;
00210E 6000 0116            	BRA     #$0116			;
002112 B02A         0003    	CMP.B   (#$0003,A2), D0		;
002116 6E00 0108            	BGT     #$0108			;
00211A 0D28         0000    	BTST    D6, (#$0108,A0) 	;
00211E 671A                 	BEQ     #$001A			;
002120 1A30 6008            	MOVE.B  (#$08,A0,D6),D5 	;
002124 0245 001F            	ANDI.W  #$001F, D5		;
002128 EB4D                 	LSL.W   #5, D5			;
00212A 49EE         0400    	LEA     (#$0400,A6), A4		;
00212E 3834 5000            	MOVE.W  (#$00,A4,D5),D4 	;
002132 6100 0102            	BRS     #$0102			;
002136 6000 00F2            	BRA     #$00F2			;
00213A 1238 407C            	MOVE.B  $407C.W,D1 		;
00213E B22E         0EE1    	CMP.B   (#$0EE1,A6), D1		;
002142 6F00 00E6            	BLE     #$00E6			;
002146 1D7C 0080    0ED6    	MOVE.B  #$00000080,(#$0ED6,A6) 	;
00214C 48A7 8300            	MOVEM.W  8300, -(A7)		;
002150 6100 EBD4            	BRS     #$EBD4			;
002154 4C9F 00C1            	MOVEM.W  (A7)+, C1		;
002158 197C 0008    0002    	MOVE.B  #$00000008,(#$0002,A4) 	;
00215E 382C 0000            	MOVE.W  (#$0000,A4),D4 		;
002162 1BBC 0010    4000    	MOVE.B  #$00000010,(#$00,A5,D4) ;
002168 3A04                 	MOVE.W  D4,D5 			;
00216A EA4D                 	LSR.W   #5, D5			;
00216C 1185         6008    	MOVE.B  D5,(#$08,A0,D6) 	;
002170 0DE8         0000    	BSET    D6, (#$6008,A0) 	;
002174 1946         0005    	MOVE.B  D6,(#$0005,A4) 		;
002178 196E 0ECF    0006    	MOVE.B  (#$0ECF,A6),(#$0006,A4) ;
00217E 197C 00FF    0004    	MOVE.B  #$000000FF,(#$0004,A4) 	;
002184 196E 0EE1    0009    	MOVE.B  (#$0EE1,A6),(#$0009,A4) ;
00218A 002C 0080    0009    	ORI.B   #$0009, (#$0009,A4) 	;
002190 522E         0EE1    	ADDQ.B  #$1, (#$0EE1,A6)	;
002194 6100 00A0            	BRS     #$00A0			;
002198 4235         400C    	CLR     (#$0C,A5,D4)		;
00219C 4275         400E    	CLR     (#$0E,A5,D4)		;
0021A0 4275         4012    	CLR     (#$12,A5,D4)		;
0021A4 1BA8 0003    4015    	MOVE.B  (#$0003,A0),(#$15,A5,D4);
0021AA 162A 0004            	MOVE.B  (#$0004,A2),D3 		;
0021AE 1B83         4016    	MOVE.B  D3,(#$16,A5,D4) 	;
0021B2 1143         0002    	MOVE.B  D3,(#$0002,A0) 		;
0021B6 42AE         0EC8    	CLR     (#$0EC8,A6)		;
0021BA 4283                 	CLR     D3			;
0021BC 362A 0000            	MOVE.W  (#$0000,A2),D3 		;
0021C0 48E7 8120            	MOVEM.L  8120, -(A7)		;
0021C4 2478 4000            	MOVE.L  $4000.W,A2 		;
0021C8 0243 0FFF            	ANDI.W  #$0FFF, D3		;
0021CC B66A         0002    	CMP.W   (#$0002,A2), D3		;
0021D0 6F2C                 	BLE     #$002C			;
0021D2 2038 4004            	MOVE.L  $4004.W,D0 		;
0021D6 6B0C                 	BMI     #$000C			;
0021D8 2440                 	MOVE.L  D0,A2 			;
0021DA B652                 	CMP.W   (A2), D3		;
0021DC 6506                 	BCS     #$0006			;
0021DE B66A         0002    	CMP.W   (#$0002,A2), D3		;
0021E2 6516                 	BCS     #$0016			;
0021E4 2038 4008            	MOVE.L  $4008.W,D0 		;
0021E8 6B0C                 	BMI     #$000C			;
0021EA 2440                 	MOVE.L  D0,A2 			;
0021EC B652                 	CMP.W   (A2), D3		;
0021EE 6506                 	BCS     #$0006			;
0021F0 B66A         0002    	CMP.W   (#$0002,A2), D3		;
0021F4 6504                 	BCS     #$0004			;
0021F6 4A9F                 	TST.L   (A7)+			;
0021F8 4E75                 	RTS     			;
0021FA 2D4A         0EC8    	MOVE.L  A2,(#$0EC8,A6) 		;
0021FE 9652                 	SUB.W   (A2), D3		;
002200 45EA         0004    	LEA     (#$0004,A2), A2		;
002204 C6FC         000C    	MULU    #$0000000C, D3		;
002208 D5C3                 	ADDA.L  D3, A2			;
00220A 2BBC 001F001F4008    	MOVE.L  #$001F001F,(#$08,A5,D4) ;
002212 343C 0100            	MOVE.W  #$00000100,D2 		;
002216 6100 E93E            	BRS     #$E93E			;
00221A 4CDF 0481            	MOVEM.L  (A7)+, 481		;
00221E 600A                 	BRA     #$000A			;
002220 0D28         0000    	BTST    D6, (#$000A,A0) 	;
002224 6704                 	BEQ     #$0004			;
002226 6100 0072            	BRS     #$0072			;
00222A 45EA         0022    	LEA     (#$0022,A2), A2		;
00222E 5246                 	ADDQ.W  #$1, D6			;
002230 51CF FEC6            	DBRA    D7, #$FEC6		;
002234 4E75                 	RTS     			;
002236 2600                 	MOVE.L  D0,D3 			;
002238 264A                 	MOVE.L  A2,A3 			;
00223A 47EB         0006    	LEA     (#$0006,A3), A3		;
00223E 7203                 	MOVEQ   #$03, D1		;
002240 B013                 	CMP.B   (A3), D0		;
002242 6E10                 	BGT     #$0010			;
002244 902B         FFFC    	SUB.B   D0, (#$FFFC,A3)		;
002248 C0EB         0002    	MULU    (#$0002,A3), D0		;
00224C E048                 	LSR.W   #0, D0			;
00224E D02B         FFFD    	ADD.B   D0, (#$FFFD,A3)		;
002252 600C                 	BRA     #$000C			;
002254 47EB         0004    	LEA     (#$0004,A3), A3		;
002258 51C9 FFE6            	DBRA    D1, #$FFE6		;
00225C 102B FFFD            	MOVE.B  (#$FFFD,A3),D0 		;
002260 4281                 	CLR     D1			;
002262 122A 0005            	MOVE.B  (#$0005,A2),D1 		;
002266 4400                 	NEG     D0			;
002268 C2C0                 	MULU    D0, D1			;
00226A 4441                 	NEG     D1			;
00226C E089                 	LSR.L   #0, D1			;
00226E 1B81         400D    	MOVE.B  D1,(#$0D,A5,D4) 	;
002272 2003                 	MOVE.L  D3,D0 			;
002274 322A 0020            	MOVE.W  (#$0020,A2),D1 		;
002278 C1C1                 	MULS    D1, D0			;
00227A E088                 	LSR.L   #0, D0			;
00227C D06A         0018    	ADD.W   D0, (#$0018,A2)		;
002280 3200                 	MOVE.W  D0,D1 			;
002282 E349                 	LSL.W   #1, D1			;
002284 0641 4000            	ADDI.W  #$4000, D1		;
002288 0241 7800            	ANDI.W  #$7800, D1		;
00228C 0240 03FF            	ANDI.W  #$03FF, D0		;
002290 8041                 	OR.W    D1, D0			;
002292 3B80         4010    	MOVE.W  D0,(#$10,A5,D4) 	;
002296 2003                 	MOVE.L  D3,D0 			;
002298 4E75                 	RTS     			;
00229A 1A30 6008            	MOVE.B  (#$08,A0,D6),D5 	;
00229E 0245 001F            	ANDI.W  #$001F, D5		;
0022A2 EB4D                 	LSL.W   #5, D5			;
0022A4 1BBC 0010    5000    	MOVE.B  #$00000010,(#$00,A5,D5) ;
0022AA 49EE         0400    	LEA     (#$0400,A6), A4		;
0022AE 08F4 0000    5002    	BSET    #$00, (#$02,A4,D5)	;
0022B4 29BC 00000001500C    	MOVE.L  #$00000001,(#$0C,A4,D5) ;
0022BC 0DA8         0000    	BCLR    D6, (#$500C,A0) 	;
0022C0 4E75                 	RTS     			;
0022C2 4A28         0007    	TST.B   (#$0007,A0)		;
0022C6 6718                 	BEQ     #$0018			;
0022C8 4228         0007    	CLR     (#$0007,A0)		;
0022CC 3E1A                 	MOVE.W  (A2)+,D7 		;
0022CE 4A5A                 	TST.W   (A2)+			;
0022D0 4286                 	CLR     D6			;
0022D2 0D28         0000    	BTST    D6, (#$0018,A0) 	;
0022D6 6702                 	BEQ     #$0002			;
0022D8 61C0                 	BRS     #$FFC0			;
0022DA 5246                 	ADDQ.W  #$1, D6			;
0022DC 51CF FFF4            	DBRA    D7, #$FFF4		;
0022E0 4E75                 	RTS     			;
0022E2 101B                 	MOVE.B  (A3)+,D0 		;
0022E4 6100 F0A0            	BRS     #$F0A0			;
0022E8 0228 00E0    0002    	ANDI.B  #$0002, (#$F0A0,A0)	;
0022EE 8128         0002    	OR.B    D0, (#$0002,A0)		;
0022F2 1028 0002            	MOVE.B  (#$0002,A0),D0 		;
0022F6 7E07                 	MOVEQ   #$07, D7		;
0022F8 4286                 	CLR     D6			;
0022FA 0D28         0000    	BTST    D6, (#$F0A0,A0) 	;
0022FE 6716                 	BEQ     #$0016			;
002300 1A30 6008            	MOVE.B  (#$08,A0,D6),D5 	;
002304 0245 001F            	ANDI.W  #$001F, D5		;
002308 EB4D                 	LSL.W   #5, D5			;
00230A 49EE         0400    	LEA     (#$0400,A6), A4		;
00230E 3834 5000            	MOVE.W  (#$00,A4,D5),D4 	;
002312 1B80         4016    	MOVE.B  D0,(#$16,A5,D4) 	;
002316 5246                 	ADDQ.W  #$1, D6			;
002318 51CF FFE0            	DBRA    D7, #$FFE0		;
00231C 4E75                 	RTS     			;
00231E 101B                 	MOVE.B  (A3)+,D0 		;
002320 0C00 0007            	CMPI.B  #$0007, D0		;
002324 6502                 	BCS     #$0002			;
002326 7007                 	MOVEQ   #$07, D0		;
002328 1E3C 0078            	MOVE.B  #$00000078,D7 		;
00232C 1228 0003            	MOVE.B  (#$0003,A0),D1 		;
002330 C207                 	AND.B   D7, D1			;
002332 8200                 	OR.B    D0, D1			;
002334 1141         0003    	MOVE.B  D1,(#$0003,A0) 		;
002338 7E07                 	MOVEQ   #$07, D7		;
00233A 4286                 	CLR     D6			;
00233C 0D28         0000    	BTST    D6, (#$0003,A0) 	;
002340 6716                 	BEQ     #$0016			;
002342 1A30 6008            	MOVE.B  (#$08,A0,D6),D5 	;
002346 0245 001F            	ANDI.W  #$001F, D5		;
00234A EB4D                 	LSL.W   #5, D5			;
00234C 49EE         0400    	LEA     (#$0400,A6), A4		;
002350 3834 5000            	MOVE.W  (#$00,A4,D5),D4 	;
002354 1B81         4015    	MOVE.B  D1,(#$15,A5,D4) 	;
002358 5246                 	ADDQ.W  #$1, D6			;
00235A 51CF FFE0            	DBRA    D7, #$FFE0		;
00235E 4E75                 	RTS     			;
002360 101B                 	MOVE.B  (A3)+,D0 		;
002362 0200 000F            	ANDI.B  #$000F, D0		;
002366 E708                 	LSL.B   #3, D0			;
002368 1E3C 0007            	MOVE.B  #$00000007,D7 		;
00236C 60BE                 	BRA     #$FFBE			;
00236E 4A28         0000    	TST.B   (#$0000,A0)		;
002372 6624                 	BNE     #$0024			;
002374 4280                 	CLR     D0			;
002376 101B                 	MOVE.B  (A3)+,D0 		;
002378 2478 4010            	MOVE.L  $4010.W,A2 		;
00237C B052                 	CMP.W   (A2), D0		;
00237E 6E18                 	BGT     #$0018			;
002380 1140         0001    	MOVE.B  D0,(#$0001,A0) 		;
002384 4228         0002    	CLR     (#$0002,A0)		;
002388 E548                 	LSL.W   #2, D0			;
00238A 2472 0002            	MOVE.L  (#$02,A2,D0),A2 	;
00238E 4A5A                 	TST.W   (A2)+			;
002390 115A         0003    	MOVE.B  (A2)+,(#$0003,A0) 	;
002394 115A         0004    	MOVE.B  (A2)+,(#$0004,A0) 	;
002398 4E75                 	RTS     			;
00239A E84D                 	LSR.W   #4, D5			;
00239C 6100 00BE            	BRS     #$00BE			;
0023A0 101B                 	MOVE.B  (A3)+,D0 		;
0023A2 E308                 	LSL.B   #1, D0			;
0023A4 5200                 	ADDQ.B  #$1, D0			;
0023A6 3E1A                 	MOVE.W  (A2)+,D7 		;
0023A8 4A5A                 	TST.W   (A2)+			;
0023AA 1540         0005    	MOVE.B  D0,(#$0005,A2) 		;
0023AE 45EA         0022    	LEA     (#$0022,A2), A2		;
0023B2 51CF FFF6            	DBRA    D7, #$FFF6		;
0023B6 4E75                 	RTS     			;
0023B8 0838 0000    407F    	BTST    #$00, $407F.W		;
0023BE 6630                 	BNE     #$0030			;
0023C0 4280                 	CLR     D0			;
0023C2 101B                 	MOVE.B  (A3)+,D0 		;
0023C4 0202 000F            	ANDI.B  #$000F, D2		;
0023C8 E34A                 	LSL.W   #1, D2			;
0023CA 343B 2006            	MOVE.W  (#$06,PC,D2),D2 	;
0023CE 4EFB         2002    	JMP     (#$02,PC,D2)		;
0023D2 0020 0032            	ORI.B   #$0032, -(A0) 		;
0023D6 0040 0048            	ORI.W   #$0048, D0 		;
0023DA 0050 007E            	ORI.W   #$007E, (A0) 		;
0023DE 010A 0140            	MOVEP   (#$0140,A2), D0 	;
0023E2 015A                 	BCHG    D0, (A2)+ 		;
0023E4 0172         017C    	BCHG    D0, (#$30,A2,D0) 	;
0023E8 0186                 	BCLR    D0, D6 			;
0023EA 001E 001E            	ORI.B   #$001E, (A6)+ 		;
0023EE 001E 4E75            	ORI.B   #$4E75, (A6)+ 		;
0023F2 6100 0086            	BRS     #$0086			;
0023F6 026A 007F    0000    	ANDI.W  #$0000, (#$0086,A2)	;
0023FC EF48                 	LSL.W   #7, D0			;
0023FE 816A         0000    	OR.W    D0, (#$0000,A2)		;
002402 4E75                 	RTS     			;
002404 6174                 	BRS     #$0074			;
002406 026A 0380    0000    	ANDI.W  #$0000, (#$0074,A2)	;
00240C 816A         0000    	OR.W    D0, (#$0000,A2)		;
002410 4E75                 	RTS     			;
002412 6166                 	BRS     #$0066			;
002414 1540         0002    	MOVE.B  D0,(#$0002,A2) 		;
002418 4E75                 	RTS     			;
00241A 615E                 	BRS     #$005E			;
00241C 1540         0003    	MOVE.B  D0,(#$0003,A2) 		;
002420 4E75                 	RTS     			;
002422 6156                 	BRS     #$0056			;
002424 E549                 	LSL.W   #2, D1			;
002426 670C                 	BEQ     #$000C			;
002428 B032         1002    	CMP.B   (#$02,A2,D1), D0	;
00242C 6F20                 	BLE     #$0020			;
00242E 0C01 000C            	CMPI.B  #$000C, D1		;
002432 6706                 	BEQ     #$0006			;
002434 B032         100A    	CMP.B   (#$0A,A2,D1), D0	;
002438 6C14                 	BGE     #$0014			;
00243A 1580         1006    	MOVE.B  D0,(#$06,A2,D1) 	;
00243E 4A01                 	TST.B   D1			;
002440 6708                 	BEQ     #$0008			;
002442 614E                 	BRS     #$004E			;
002444 0C01 000C            	CMPI.B  #$000C, D1		;
002448 6704                 	BEQ     #$0004			;
00244A 4A9A                 	TST.L   (A2)+			;
00244C 6144                 	BRS     #$0044			;
00244E 4E75                 	RTS     			;
002450 6128                 	BRS     #$0028			;
002452 E549                 	LSL.W   #2, D1			;
002454 E308                 	LSL.B   #1, D0			;
002456 1580         1007    	MOVE.B  D0,(#$07,A2,D1) 	;
00245A 60E2                 	BRA     #$FFE2			;
00245C 41EE         0380    	LEA     (#$0380,A6), A0		;
002460 0205 000F            	ANDI.B  #$000F, D5		;
002464 E94D                 	LSL.W   #4, D5			;
002466 D0C5                 	ADDA.W  D5, A0			;
002468 4281                 	CLR     D1			;
00246A 1228 0001            	MOVE.B  (#$0001,A0),D1 		;
00246E 2478 4010            	MOVE.L  $4010.W,A2 		;
002472 E549                 	LSL.W   #2, D1			;
002474 2472 1002            	MOVE.L  (#$02,A2,D1),A2 	;
002478 4E75                 	RTS     			;
00247A 61E0                 	BRS     #$FFE0			;
00247C 4282                 	CLR     D2			;
00247E 4281                 	CLR     D1			;
002480 1428 0005            	MOVE.B  (#$0005,A0),D2 		;
002484 1228 0006            	MOVE.B  (#$0006,A0),D1 		;
002488 C4FC         002E    	MULU    #$0000002E, D2		;
00248C D5C2                 	ADDA.L  D2, A2			;
00248E 588A                 	ADDQ.L  #$4, A2			;
002490 4E75                 	RTS     			;
002492 4280                 	CLR     D0			;
002494 4282                 	CLR     D2			;
002496 1032 1007            	MOVE.B  (#$07,A2,D1),D0 	;
00249A 1432 1003            	MOVE.B  (#$03,A2,D1),D2 	;
00249E 9082                 	SUB.L   D2, D0			;
0024A0 E188                 	LSL.L   #0, D0			;
0024A2 1432 1006            	MOVE.B  (#$06,A2,D1),D2 	;
0024A6 4283                 	CLR     D3			;
0024A8 1632 1002            	MOVE.B  (#$02,A2,D1),D3 	;
0024AC 9483                 	SUB.L   D3, D2			;
0024AE 81C2                 	DIVS    D2, D0			;
0024B0 3580         1008    	MOVE.W  D0,(#$08,A2,D1) 	;
0024B4 4E75                 	RTS     			;
0024B6 4280                 	CLR     D0			;
0024B8 4282                 	CLR     D2			;
0024BA 3032 1018            	MOVE.W  (#$18,A2,D1),D0 	;
0024BE 3432 1012            	MOVE.W  (#$12,A2,D1),D2 	;
0024C2 9082                 	SUB.L   D2, D0			;
0024C4 E188                 	LSL.L   #0, D0			;
0024C6 4282                 	CLR     D2			;
0024C8 4283                 	CLR     D3			;
0024CA 1432 1016            	MOVE.B  (#$16,A2,D1),D2 	;
0024CE 1632 1010            	MOVE.B  (#$10,A2,D1),D3 	;
0024D2 9483                 	SUB.L   D3, D2			;
0024D4 81C2                 	DIVS    D2, D0			;
0024D6 3580         101A    	MOVE.W  D0,(#$1A,A2,D1) 	;
0024DA 4E75                 	RTS     			;
0024DC 619C                 	BRS     #$FF9C			;
0024DE 2401                 	MOVE.L  D1,D2 			;
0024E0 E549                 	LSL.W   #2, D1			;
0024E2 E34A                 	LSL.W   #1, D2			;
0024E4 D242                 	ADD.W   D2, D1			;
0024E6 670C                 	BEQ     #$000C			;
0024E8 B032         1010    	CMP.B   (#$10,A2,D1), D0	;
0024EC 6F22                 	BLE     #$0022			;
0024EE 0C01 0012            	CMPI.B  #$0012, D1		;
0024F2 6706                 	BEQ     #$0006			;
0024F4 B032         101C    	CMP.B   (#$1C,A2,D1), D0	;
0024F8 6C16                 	BGE     #$0016			;
0024FA 1580         1016    	MOVE.B  D0,(#$16,A2,D1) 	;
0024FE 4A01                 	TST.B   D1			;
002500 6708                 	BEQ     #$0008			;
002502 61B2                 	BRS     #$FFB2			;
002504 0C01 0012            	CMPI.B  #$0012, D1		;
002508 6706                 	BEQ     #$0006			;
00250A 4A9A                 	TST.L   (A2)+			;
00250C 4A5A                 	TST.W   (A2)+			;
00250E 61A6                 	BRS     #$FFA6			;
002510 4E75                 	RTS     			;
002512 6100 FF66            	BRS     #$FF66			;
002516 2401                 	MOVE.L  D1,D2 			;
002518 E549                 	LSL.W   #2, D1			;
00251A E34A                 	LSL.W   #1, D2			;
00251C D242                 	ADD.W   D2, D1			;
00251E 0272 007F    1016    	ANDI.W  #$1016, (#$66,A2,A7)	;
002524 EF48                 	LSL.W   #7, D0			;
002526 8172         1016    	OR.W    (#$16,A2,D1), D0	;
00252A 60D2                 	BRA     #$FFD2			;
00252C 6100 FF4C            	BRS     #$FF4C			;
002530 2401                 	MOVE.L  D1,D2 			;
002532 E549                 	LSL.W   #2, D1			;
002534 E34A                 	LSL.W   #1, D2			;
002536 D242                 	ADD.W   D2, D1			;
002538 0272 3F80    1016    	ANDI.W  #$1016, (#$4C,A2,A7)	;
00253E 8172         1016    	OR.W    (#$16,A2,D1), D0	;
002542 60BA                 	BRA     #$FFBA			;
002544 6100 FF16            	BRS     #$FF16			;
002548 1140         0005    	MOVE.B  D0,(#$0005,A0) 		;
00254C 4E75                 	RTS     			;
00254E 6100 FF0C            	BRS     #$FF0C			;
002552 1140         0006    	MOVE.B  D0,(#$0006,A0) 		;
002556 4E75                 	RTS     			;
002558 6100 FF02            	BRS     #$FF02			;
00255C 4A9A                 	TST.L   (A2)+			;
00255E 4282                 	CLR     D2			;
002560 2400                 	MOVE.L  D0,D2 			;
002562 0202 000F            	ANDI.B  #$000F, D2		;
002566 C4FC         002E    	MULU    #$0000002E, D2		;
00256A D5C2                 	ADDA.L  D2, A2			;
00256C 0800 0006            	BTST    #$00000006, D0		;
002570 6708                 	BEQ     #$0008			;
002572 08AA 0007    0002    	BCLR    #$07, (#$0002,A2)	;
002578 4E75                 	RTS     			;
00257A 08EA 0007    0002    	BSET    #$07, (#$0002,A2)	;
002580 4E75                 	RTS     			;

002582 8081
002584 8283
002586 8485
002588 8687
00258A 8889
00258C 8A8B
00258E 9091
002590 9293
002592 9495
002594 9697
002596 9899
002598 9A9B
00259A A0A1
00259C A2A3
00259E A4A5
0025A0 A6A7
0025A2 A8A9
0025A4 AAAB
0025A6 B0B1
0025AA B4B5
0025AE B8B9
0025B4 C2C3
0025B6 C4C5
0025B8 C6C7
0025BA C8C9
0025BC CACB
0025BE D0D1
0025C0 D2D3
0025C2 D4D5
0025C4 D6D7
0025C6 D8D9
0025C8 DADB
0025CA E0E1
0025CC E2E3
0025CE E4E5
0025D0 E6E7
0025D2 E8E9         EAEB
0025D6 F0F1
0025D8 F2F3
0025DA F4F5
0025DC F6F7
0025DE F8F9
0025E0 FAFB
0025E2 0001 0203
0025E6 0405 0607
0025EA 0809 0A0B
0025EE 1011
0025F0 1213
0025F2 1415
0025F4 1617
0025F6 1819
0025F8 1A1B
0025FA 2021
0025FC 2223
0025FE 2425
002600 2627
002602 2829 2A2B
002606 3031 3233
00260A 3435 3637
00260E 3839 3A3B4041
002614 4243
002616 4445
002618 4647
00261A 4849
00261C 4A4B
00261E 5051
002620 5253
002622 5455
002624 5657
002626 5859
002628 5A5B
00262A 6061
00262C 6263
00262E 6465
002630 6667
002632 6869
002634 6A6B
002636 7071
002638 7273
00263A 7475
00263C 7677
00263E 7879
002640 7A7B
002642 075D
002644 0764
002646 076B         0772
00264A 0779         07800787
002650 078E 0795
002654 079C
002656 07A3
002658 07AA         07B1
00265C 07B8         07BF
002660 07C6
002662 07CD 07D4
002666 07DC
002668 07E3
00266A 07EB         07F2
00266E 07F9         08010808
002674 080F 0817
002678 081E 0826
00267C 082D 0834    083C
002682 0843 084B
002686 0853 085B
00268A 0863 086A
00268E 0872 087A    0882
002694 088A 0892
002698 089A 08A2
00269C 08A9 08B1    08B9
0026A2 08C1 08C9
0026A6 08D2 08DA
0026AA 08E2 08EB
0026AE 08F3 08FB    0904
0026B4 090C 0914
0026B8 091C
0026BA 0925
0026BC 092D         0935
0026C0 093E         0946
0026C4 094F 0958
0026C8 0961
0026CA 096A         0972
0026CE 097B         0984
0026D2 098D 0996
0026D6 099F
0026D8 09A8         09B1
0026DC 09B9         09C209CB
0026E2 09D4
0026E4 09DD
0026E6 09E7
0026E8 09F0         09F9
0026EC 0A03 0A0C
0026F0 0A14 0A1F
0026F4 0A28 0A31    0A3A
0026FA 0A44 0A4D
0026FE 0A56 0A61
002702 0A69 0A73    0A7D
002708 0A87 0A910A9B
00270E 0AA5 0AAF0AB9
002714 0AC2 0ACC0AD6
00271A 0AE0 0AEA0AF4
002720 0AFE 0B080B130B1D
002728 0B28         0B32
00272C 0B3D         0B47
002730 0B52
002732 0B5C
002734 0B67
002736 0B71         0B7C
00273A 0B86
00273C 0B91
00273E 0B9B
002740 0BA6
002742 0BB0         0BBB
002746 0BC6
002748 0BD1
00274A 0BDD
00274C 0BE8         0BF3
002750 0BFE         0C09
002754 0C14 0C1F
002758 0C2A 0C36    0C41
00275E 0C4C 0C57
002762 0C62 0C6E
002766 0C7A 0C85    0C91
00276C 0C9D 0CA90CB4
002772 0CC0 0CCC0CD8
002778 0CE3 0CEF0CFB
00277E 0D07
002780 0D12
002782 0D1E
002784 0D2B         0D37
002788 0D44
00278A 0D50
00278C 0D5D
00278E 0D69         0D76
002792 0D82
002794 0D8F 0D9B
002798 0DA8         0DB4
00279C 0DC1
00279E 0DCD 0DDA
0027A2 0DE6
0027A4 0DF3         0E01
0027A8 0E0E
0027AA 0E1B
0027AC 0E28
0027AE 0E36
0027B0 0E43 
0027B2 0E50
0027B4 0E5D 
0027B6 0E6B 
0027B8 0E78 
0027BA 0E85 
0027BC 0E92 
0027BE 0EA0 
0027C0 0EAD 
0027C2 0000 0003
0027C6 0007 000B
0027CA 000E 0012
0027CE 0016 001A
0027D2 001E 0021
0027D6 0025 0029
0027DA 002D 0031    0035
0027E0 0038 003D    0040
0027E6 0044 0048
0027EA 004C 0050
0027EE 0054 0058
0027F2 005C 0060
0027F6 0064 0068
0027FA 006C 0071    0075
002800 0079 007D    00810085
002808 0089 008E0092
00280E 0096 009A009F
002814 00A3 00A700AB
00281A 00B0 00B400B800BD
002822 00C2 00C600CA
002828 00CF 00D300D7
00282E 00DC 00E000E5
002834 00E9 00EE00F300F7
00283C 00FC 01000105010A
002844 010E 0113
002848 0118
00284A 011C
00284C 0121
00284E 0126
002850 012B         012F
002854 0134         0139
002858 013E         0143
00285C 0148 014D
002860 0151
002862 0157
002864 015B
002866 0160
002868 0165
00286A 016A         016F
00286E 0174         0179
002872 017E         0184
002876 0189 018E
00287A 0193
00287C 0198
00287E 019D
002880 01A2
002882 01A8         01AD
002886 01B2         01B7
00288A 01BD         01C2
00288E 01C7
002890 01CD 01D2
002894 01D7
002896 01DD
002898 01E2
00289A 01E8         01ED
00289E 01F3         01F8
0028A2 01FE         0203
0028A6 0209 020E
0028AA 0214 021A 
0028AE 021F 0225
0028B2 022B 0230    0236
0028B8 023C 0242
0028BC 0247 024D 
0028C0 0253 025A
0028C4 025F 0265 
0028C8 026B 0271    0277
0028CE 027D 0283    0289
0028D4 028F 0295029B
0028DA 02A1 02A702AD
0028E0 02B3 02BA02C002C6
0028E8 02CC 02D302D9
0028EE 02DF 02E602EC
0028F4 02F3 02F902FF0306;
0028FC 030C 0313
002900 0319
002902 0321
002904 0327
002906 032D         0334
00290A 033B         0341
00290E 0348 034F
002912 0356
002914 035C
002916 0363
002918 036A         0371
00291C 0378         037F
002920 0386
002922 038D 0394
002926 039B
002928 03A2
00292A 03A9         03B0
00292E 03B7         03BE
002932 03C5 
002934 03CC 03D4
002938 03DB
00293A 03E2
00293C 03E9         03F1
002940 03F8         0000
002944 0004 0008
002948 0010 0020
00294C 0030 0048    0060
002952 0080 00A000C8
002958 00F0 012001500188
002960 01C8 0201
002964 0248 0290
002968 02D8 03280378
00296E 03D0
002970 0430 0490    04F0
002976 0558
002978 05C8 0638
00297C 06A8 072007980818
002984 08A0 0928
002988 09B8         0A48
00298C 0AD8 0B700C10
002992 0CB0 0D500DF80EA8
00299A 0F58
00299C 1010
00299E 10C8
0029A0 1180         1240
0029A4 1308
0029A6 13D0         14A01570
0029AC 1648
0029AE 1720
0029B0 1801
0029B2 18E0
0029B4 19C0         1AB0
0029B8 1B98         1C90
0029BC 1D80         1E78
0029C0 1F78 2078    2180
0029C6 2288
0029C8 2398         24A8
0029CC 25C0         26E0
0029D0 27F8 2920    2A40
0029D6 2B70 2CA0    2DD0
0029DC 2F08
0029DE 3040
0029E0 3180         32C0 
0029E4 3408
0029E6 3558         36A8
0029EA 37F8 3950    3AA8
0029F0 3C08
0029F2 3D70 3ED8    4040
0029F8 41B0         4320
0029FC 4498
0029FE 4618
002A00 4798
002A02 4918
002A04 4AA0
002A06 4C30
002A0A 4F50
002A0C 50E8         5288
002A10 5428         55D0
002A14 5778         5920
002A18 5AD0
002A1A 5C88
002A1C 5E40
002A1E 6001
002A20 61C0
002A22 6380
002A24 6548
002A26 6718
002A28 68E8
002A2A 6AC0
002A2C 6C98
002A2E 6E78 
002A30 7058
002A32 7240
002A34 7428
002A36 7610
002A38 7808
002A3A 79F8
002A3C 7BF8
002A3E 7DF0
002A40 7FF8

002A42 102D 0405            	MOVE.B  (#$0405,A5),D0 		;
002A46 6B14                 	BMI     #$0014			;
002A48 122E 0EC3            	MOVE.B  (#$0EC3,A6),D1 		;
002A4C 6604                 	BNE     #$0004			;
002A4E 122E 0EC2            	MOVE.B  (#$0EC2,A6),D1 		;
002A52 5301                 	SUBQ.B  #$1, D1			;
002A54 672C                 	BEQ     #$002C			;
002A56 1D40         0EC1    	MOVE.B  D0,(#$0EC1,A6) 		;
002A5A 605C                 	BRA     #$005C			;
002A5C 0C00 00FF            	CMPI.B  #$00FF, D0		;
002A60 675C                 	BEQ     #$005C			;
002A62 0C00 00F0            	CMPI.B  #$00F0, D0		;
002A66 6454                 	BCC     #$0054			;
002A68 1D40         0EC0    	MOVE.B  D0,(#$0EC0,A6) 		;
002A6C 7202                 	MOVEQ   #$02, D1		;
002A6E 0C00 00C0            	CMPI.B  #$00C0, D0		;
002A72 6508                 	BCS     #$0008			;
002A74 0C00 00E0            	CMPI.B  #$00E0, D0		;
002A78 6402                 	BCC     #$0002			;
002A7A 5301                 	SUBQ.B  #$1, D1			;
002A7C 1D41         0EC2    	MOVE.B  D1,(#$0EC2,A6) 		;
002A80 6036                 	BRA     #$0036			;
002A82 41EE         0EC0    	LEA     (#$0EC0,A6), A0		;
002A86 45EE         0800    	LEA     (#$0800,A6), A2		;
002A8A 362E 0EC4            	MOVE.W  (#$0EC4,A6),D3 		;
002A8E 0243 03FF            	ANDI.W  #$03FF, D3		;
002A92 1E2E 0EC2            	MOVE.B  (#$0EC2,A6),D7 		;
002A96 5307                 	SUBQ.B  #$1, D7			;
002A98 670E                 	BEQ     #$000E			;
002A9A 3598         3000    	MOVE.W  (A0)+,(#$00,A2,D3) 	;
002A9E 1580         3002    	MOVE.B  D0,(#$02,A2,D3) 	;
002AA2 4232         3003    	CLR     (#$03,A2,D3)		;
002AA6 6008                 	BRA     #$0008			;
002AA8 1598         3000    	MOVE.B  (A0)+,(#$00,A2,D3) 	;
002AAC 1580         3001    	MOVE.B  D0,(#$01,A2,D3) 	;
002AB0 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;
002AB4 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;
002AB8 1D41         0EC3    	MOVE.B  D1,(#$0EC3,A6) 		;
002ABC 4E75                 	RTS     			;
002ABE 4FF8         4000    	LEA     $4000.W, A7		;
002AC2 4EF8         0120    	JMP     $0120.W			;

L002AC6:
002AC6 41F9         00D00001	LEA     $00D00001.L, A0		;
002ACC 117C 0003    0002    	MOVE.B  #$00000003,(#$0002,A0) 	;
002AD2 1028 0008            	MOVE.B  (#$0008,A0),D0 		;
002AD6 0800 0007            	BTST    #$00000007, D0		;
002ADA 6700 00B8            	BEQ     #$00B8			;
002ADE 0280 00000070        	ANDI.L  #$00000070, D0		;
002AE4 6724                 	BEQ     #$0024			;
002AE6 0800 0000            	BTST    #$00000000, D0		;
002AEA 66E6                 	BNE     #$FFE6			;
002AEC 0800 0001            	BTST    #$00000001, D0		;
002AF0 66E0                 	BNE     #$FFE0			;
002AF2 0800 0004            	BTST    #$00000004, D0		;
002AF6 6600 00B2            	BNE     #$00B2			;
002AFA 0800 0005            	BTST    #$00000005, D0		;
002AFE 6600 00A4            	BNE     #$00A4			;
002B02 0800 0006            	BTST    #$00000006, D0		;
002B06 6600 0096            	BNE     #$0096			;
002B0A 1028 000C            	MOVE.B  (#$000C,A0),D0 		;
002B0E 6B14                 	BMI     #$0014			;
002B10 122E 0EC3            	MOVE.B  (#$0EC3,A6),D1 		;
002B14 6604                 	BNE     #$0004			;
002B16 122E 0EC2            	MOVE.B  (#$0EC2,A6),D1 		;
002B1A 5301                 	SUBQ.B  #$1, D1			;
002B1C 672C                 	BEQ     #$002C			;
002B1E 1D40         0EC1    	MOVE.B  D0,(#$0EC1,A6) 		;
002B22 606C                 	BRA     #$006C			;
002B24 0C00 00FF            	CMPI.B  #$00FF, D0		;
002B28 676C                 	BEQ     #$006C			;
002B2A 0C00 00F0            	CMPI.B  #$00F0, D0		;
002B2E 6464                 	BCC     #$0064			;
002B30 1D40         0EC0    	MOVE.B  D0,(#$0EC0,A6) 		;
002B34 7202                 	MOVEQ   #$02, D1		;
002B36 0C00 00C0            	CMPI.B  #$00C0, D0		;
002B3A 6508                 	BCS     #$0008			;
002B3C 0C00 00E0            	CMPI.B  #$00E0, D0		;
002B40 6402                 	BCC     #$0002			;
002B42 5301                 	SUBQ.B  #$1, D1			;
002B44 1D41         0EC2    	MOVE.B  D1,(#$0EC2,A6) 		;
002B48 6046                 	BRA     #$0046			;
002B4A 41EE         0EC0    	LEA     (#$0EC0,A6), A0		;
002B4E 45EE         0800    	LEA     (#$0800,A6), A2		;
002B52 362E 0EC4            	MOVE.W  (#$0EC4,A6),D3 		;
002B56 0243 03FF            	ANDI.W  #$03FF, D3		;
002B5A 1E2E 0EC2            	MOVE.B  (#$0EC2,A6),D7 		;
002B5E 5307                 	SUBQ.B  #$1, D7			;
002B60 670E                 	BEQ     #$000E			;
002B62 3598         3000    	MOVE.W  (A0)+,(#$00,A2,D3) 	;
002B66 1580         3002    	MOVE.B  D0,(#$02,A2,D3) 	;
002B6A 4232         3003    	CLR     (#$03,A2,D3)		;
002B6E 6008                 	BRA     #$0008			;
002B70 1598         3000    	MOVE.B  (A0)+,(#$00,A2,D3) 	;
002B74 1580         3001    	MOVE.B  D0,(#$01,A2,D3) 	;
002B78 586E         0EC4    	ADDQ.W  #$4, (#$0EC4,A6)	;
002B7C 522E         0ECC    	ADDQ.B  #$1, (#$0ECC,A6)	;
002B80 102E 0EF9            	MOVE.B  (#$0EF9,A6),D0 		;
002B84 E218                 	ROR.B   #1, D0			;
002B86 1D40         0EF9    	MOVE.B  D0,(#$0EF9,A6) 		;
002B8A 13C0         00C00001	MOVE.B  D0,$00C00001.L 		;
002B90 1D41         0EC3    	MOVE.B  D1,(#$0EC3,A6) 		;
002B94 4E75                 	RTS     			;
002B96 4FF8         4000    	LEA     $4000.W, A7		;
002B9A 4EF8         0120    	JMP     $0120.W			;
002B9E 7010                 	MOVEQ   #$10, D0		;
002BA0 6000 000A            	BRA     #$000A			;
002BA4 7020                 	MOVEQ   #$20, D0		;
002BA6 6000 0004            	BRA     #$0004			;
002BAA 7040                 	MOVEQ   #$40, D0		;
002BAC 46FC         2700    	MOVE    #$00002700, SR		;
002BB0 4246                 	CLR     D6			;
002BB2 13C0         00C00001	MOVE.B  D0,$00C00001.L 		;
002BB8 3E3C 4000            	MOVE.W  #$00004000,D7 		;
002BBC 4E71                 	NOP     			;
002BBE 51CF FFFC            	DBRA    D7, #$FFFC		;
002BC2 4239         00C00001	CLR     $00C00001.L		;
002BC8 51CE FFEE            	DBRA    D6, #$FFEE		;
002BCC 60E2                 	BRA     #$FFE2			;
002BCE 41F9         00D00001	LEA     $00D00001.L, A0		;
002BD4 7201                 	MOVEQ   #$01, D1		;
002BD6 117C 0080    0002    	MOVE.B  #$00000080,(#$0002,A0) 	;
002BDC E158                 	ROL.W   #0, D0			;
002BDE E158                 	ROL.W   #0, D0			;
002BE0 E158                 	ROL.W   #0, D0			;
002BE2 E158                 	ROL.W   #0, D0			;
002BE4 4228         0002    	CLR     (#$0002,A0)		;
002BE8 117C 0000    0008    	MOVE.B  #$00000000,(#$0008,A0) 	;
002BEE 117C 0003    0002    	MOVE.B  #$00000003,(#$0002,A0) 	;
002BF4 1028 0008            	MOVE.B  (#$0008,A0),D0 		;
002BF8 E208                 	LSR.B   #1, D0			;
002BFA 65F8                 	BCS     #$FFF8			;
002BFC 117C 0002    0002    	MOVE.B  #$00000002,(#$0002,A0) 	;
002C02 117C 0008    0008    	MOVE.B  #$00000008,(#$0008,A0) 	;
002C08 117C 0000    000A    	MOVE.B  #$00000000,(#$000A,A0) 	;
002C0E 117C 0005    0002    	MOVE.B  #$00000005,(#$0002,A0) 	;
002C14 1028 0008            	MOVE.B  (#$0008,A0),D0 		;
002C18 E208                 	LSR.B   #1, D0			;
002C1A 65F8                 	BCS     #$FFF8			;
002C1C 117C 0004    0002    	MOVE.B  #$00000004,(#$0002,A0) 	;
002C22 117C 0008    0008    	MOVE.B  #$00000008,(#$0008,A0) 	;
002C28 117C 0000    000A    	MOVE.B  #$00000000,(#$000A,A0) 	;
002C2E 117C 0003    0002    	MOVE.B  #$00000003,(#$0002,A0) 	;
002C34 117C 00CD    000A    	MOVE.B  #$000000CD,(#$000A,A0) 	;
002C3A 117C 0005    0002    	MOVE.B  #$00000005,(#$0002,A0) 	;
002C40 117C 0085    000A    	MOVE.B  #$00000085,(#$000A,A0) 	;
002C46 4228         0002    	CLR     (#$0002,A0)		;
002C4A 4228         000C    	CLR     (#$000C,A0)		;
002C4E 41F9         00D80001	LEA     $00D80001.L, A0		;
002C54 51C9 FF80            	DBRA    D1, #$FF80		;
002C58 4E75                 	RTS     			;

