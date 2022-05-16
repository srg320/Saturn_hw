	.org	0x00005000	
L005000:							;void boot_vdp2_vram_load()
005000 7FF0     	ADD     	#F0,R15		;
005002 D324     	MOV.L   	@(#090,PC),R3	;
005004 2F32     	MOV.L   	R3,@R15		;u8* dst = 0x25E00000;
005006 D324     	MOV.L   	@(#090,PC),R3	;
005008 1F31     	MOV.L   	R3,@(#4,R15)	;u8* src = 0x06000E20;
00500A E300     	MOV     	#00,R3		;
00500C 1F33     	MOV.L   	R3,@(#C,R15)	;int i = 0;
00500E A039     	BRA     	L005084		;
005010 0009     	NOP     				;
L005012:
005012 52F1     	MOV.L   	@(#04,R15),R2	;do {
005014 6320     	MOV.B   	@R2,R3		;
005016 6033     	MOV     	R3,R0			;
005018 80FB     	MOV.B   	R0,@(#0B,R15)	;  u8 temp = *src;
00501A 53F1     	MOV.L   	@(#04,R15),R3	;
00501C 7301     	ADD     	#01,R3		;
00501E 1F31     	MOV.L   	R3,@(#4,R15)	;  src++;
005020 62F2     	MOV.L   	@R15,R2		;
005022 84FB     	MOV.B   	@(#0B,R15),R0	;
005024 600C     	EXTU.B   	R0,R0			;
005026 4009     	SHLR2   	R0			;
005028 4009     	SHLR2   	R0			;
00502A 4009     	SHLR2   	R0			;
00502C C903     	AND     	#03,R0		;
00502E D11B     	MOV.L   	@(#06C,PC),R1	;
005030 301C     	ADD     	R1,R0			;
005032 6300     	MOV.B   	@R0,R3		;
005034 2230     	MOV.B   	R3,@R2		;  *dst = L005712[(temp>>6)&0x03];
005036 62F2     	MOV.L   	@R15,R2		;
005038 7201     	ADD     	#01,R2		;
00503A 2F22     	MOV.L   	R2,@R15		;  dst++;
00503C 84FB     	MOV.B   	@(#0B,R15),R0	;
00503E 600C     	EXTU.B   	R0,R0			;
005040 4009     	SHLR2   	R0			;
005042 4009     	SHLR2   	R0			;
005044 C903     	AND     	#03,R0		;
005046 D315     	MOV.L   	@(#054,PC),R3	;
005048 303C     	ADD     	R3,R0			;
00504A 6100     	MOV.B   	@R0,R1		;
00504C 2210     	MOV.B   	R1,@R2		;  *dst = L005712[(temp>>4)&0x03];
00504E 63F2     	MOV.L   	@R15,R3		;
005050 7301     	ADD     	#01,R3		;
005052 2F32     	MOV.L   	R3,@R15		;  dst++;
005054 84FB     	MOV.B   	@(#0B,R15),R0	;
005056 600C     	EXTU.B   	R0,R0			;
005058 4009     	SHLR2   	R0			;
00505A C903     	AND     	#03,R0		;
00505C D20F     	MOV.L   	@(#03C,PC),R2	;
00505E 302C     	ADD     	R2,R0			;
005060 6100     	MOV.B   	@R0,R1		;
005062 2310     	MOV.B   	R1,@R3		;  *dst = L005712[(temp>>2)&0x03];
005064 63F2     	MOV.L   	@R15,R3		;
005066 7301     	ADD     	#01,R3		;
005068 2F32     	MOV.L   	R3,@R15		;  dst++;
00506A 84FB     	MOV.B   	@(#0B,R15),R0	;
00506C 600C     	EXTU.B   	R0,R0			;
00506E C903     	AND     	#03,R0		;
005070 D20A     	MOV.L   	@(#028,PC),R2	;
005072 302C     	ADD     	R2,R0			;
005074 6100     	MOV.B   	@R0,R1		;
005076 2310     	MOV.B   	R1,@R3		;  *dst = L005712[(temp>>0)&0x03];
005078 63F2     	MOV.L   	@R15,R3		;
00507A 7301     	ADD     	#01,R3		;
00507C 2F32     	MOV.L   	R3,@R15		;  dst++;
00507E 52F3     	MOV.L   	@(#0C,R15),R2	;
005080 7201     	ADD     	#01,R2		;
005082 1F23     	MOV.L   	R2,@(#C,R15)	;  i++;
L005084:
005084 53F3     	MOV.L   	@(#0C,R15),R3	;
005086 9204     	MOV.W   	@(#008,PC),R2	;
005088 3322     	CMP/HS 	R2,R3			;
00508A 8BC2     	BF      	L005012		;} while (i < 0x1000);
00508C 7F10     	ADD     	#10,R15		;
00508E 000B     	RTS     				;
005090 0009     	NOP     				;
005092 1000
005094 25E00000
005098 06000E20	
00509C 00005712

0050A0 7FF4     	ADD     	#F4,R15		;
0050A2 1F42     	MOV.L   	R4,@(#8,R15)	;
0050A4 1F51     	MOV.L   	R5,@(#4,R15)	;
0050A6 A012     	BRA     	#0024			;
0050A8 0009     	NOP     				;
0050AA 85F1     	MOV.W   	@(#02,R15),R0	;
0050AC 6203     	MOV     	R0,R2			;
0050AE 622D     	EXTU.W   	R2,R2			;
0050B0 4200     	SHLL    	R2			;
0050B2 622D     	EXTU.W   	R2,R2			;
0050B4 2F21     	MOV.W   	R2,@R15		;
0050B6 53F2     	MOV.L   	@(#08,R15),R3	;
0050B8 2321     	MOV.W   	R2,@R3		;
0050BA 63F1     	MOV.W   	@R15,R3		;
0050BC 7301     	ADD     	#01,R3		;
0050BE 2F31     	MOV.W   	R3,@R15		;
0050C0 52F2     	MOV.L   	@(#08,R15),R2	;
0050C2 9123     	MOV.W   	@(#046,PC),R1	;
0050C4 321C     	ADD     	R1,R2			;
0050C6 2231     	MOV.W   	R3,@R2		;
0050C8 53F2     	MOV.L   	@(#08,R15),R3	;
0050CA 7302     	ADD     	#02,R3		;
0050CC 1F32     	MOV.L   	R3,@(#8,R15)	;
0050CE 53F1     	MOV.L   	@(#04,R15),R3	;
0050D0 7301     	ADD     	#01,R3		;
0050D2 1F31     	MOV.L   	R3,@(#4,R15)	;
0050D4 73FF     	ADD     	#FF,R3		;
0050D6 6330     	MOV.B   	@R3,R3		;
0050D8 633C     	EXTU.B   	R3,R3			;
0050DA 6033     	MOV     	R3,R0			;
0050DC 81F1     	MOV.W   	R0,@(#02,R15)	;
0050DE 633D     	EXTU.W   	R3,R3			;
0050E0 2338     	TST     	R3,R3			;
0050E2 8BE2     	BF      	#1C4			;
0050E4 7F0C     	ADD     	#0C,R15		;
0050E6 000B     	RTS     				;
0050E8 0009     	NOP     				;

L0050EA:							;void boot_unpack_and_load_vdp2_data()
0050EA 4F22     	STS.L   	PR,@-R15		;
0050EC 7FFC     	ADD     	#FC,R15		;
0050EE D309     	MOV.L   	@(#024,PC),R3	;
0050F0 2F32     	MOV.L   	R3,@R15		;
0050F2 930C     	MOV.W   	@(#018,PC),R3	;
0050F4 6332     	MOV.L   	@R3,R3		;
0050F6 960B     	MOV.W   	@(#016,PC),R6	;
0050F8 65F3     	MOV     	R15,R5		;u32 temp = 0x06000E20;
0050FA D407     	MOV.L   	@(#01C,PC),R4	;
0050FC 430B     	JSR     	@R3			;(*(void*)0x060005F8)(L0051D0,&temp,0x1000);//L002C5C
0050FE 0009     	NOP     				;
005100 BF7E     	BRS     	L005000		;boot_vdp2_vram_load();
005102 0009     	NOP     				;
005104 7F04     	ADD     	#04,R15		;
005106 4F26     	LDS.L   	@R15+,PR		;
005108 000B     	RTS     				;
00510A 0009     	NOP     				;
00510C 0080     	
00510E 05F8
005110 1000
005112 5456
005114 06000E20
005118 000051D0

L00511C:							;
00511C 4F22     	STS.L   	PR,@-R15		;
00511E 7FF4     	ADD     	#F4,R15		;
005120 1F42     	MOV.L   	R4,@(#8,R15)	;
005122 1F51     	MOV.L   	R5,@(#4,R15)	;
005124 D211     	MOV.L   	@(#044,PC),R2	;
005126 6222     	MOV.L   	@R2,R2		;
005128 931E     	MOV.W   	@(#03C,PC),R3	;
00512A 2239     	AND     	R3,R2			;
00512C 2228     	TST     	R2,R2			;
00512E 8904     	BT      	#008			;
005130 931B     	MOV.W   	@(#036,PC),R3	;
005132 6033     	MOV     	R3,R0			;
005134 81F1     	MOV.W   	R0,@(#02,R15)	;
005136 A003     	BRA     	#0006			;
005138 0009     	NOP     				;
00513A E200     	MOV     	#00,R2		;
00513C 6023     	MOV     	R2,R0			;
00513E 81F1     	MOV.W   	R0,@(#02,R15)	;
005140 55F2     	MOV.L   	@(#08,R15),R5	;
005142 85F1     	MOV.W   	@(#02,R15),R0	;
005144 6403     	MOV     	R0,R4			;
005146 D30A     	MOV.L   	@(#028,PC),R3	;
005148 343C     	ADD     	R3,R4			;
00514A BFA9     	BRS     	#1F52			;
00514C 0009     	NOP     				;
00514E 55F1     	MOV.L   	@(#04,R15),R5	;
005150 85F1     	MOV.W   	@(#02,R15),R0	;
005152 6403     	MOV     	R0,R4			;
005154 D307     	MOV.L   	@(#01C,PC),R3	;
005156 343C     	ADD     	R3,R4			;
005158 BFA2     	BRS     	#1F44			;
00515A 0009     	NOP     				;
00515C 7F0C     	ADD     	#0C,R15		;
00515E 4F26     	LDS.L   	@R15+,PR		;
005160 000B     	RTS     				;
005162 0009     	NOP     				;
005164 000B     	RTS     				;
005166 0009     	NOP     				;
005168 0800     	
00516A 0100     	
00516C 0600     	
00516E 0248
005170 25E0     	MOV.B   	R14,@R5		;
005172 6988     	SWAP.B   	R8,R9			;
005174 25E0     	MOV.B   	R14,@R5		;
005176 6B14     	MOV.B   	@R1+,R11		;
005178 4F22     	STS.L   	PR,@-R15		;
00517A 7FFC     	ADD     	#FC,R15		;
00517C 2F42     	MOV.L   	R4,@R15		;
00517E 65F2     	MOV.L   	@R15,R5		;
005180 D404     	MOV.L   	@(#010,PC),R4	;
005182 BF8D     	BRS     	#1F1A			;
005184 0009     	NOP     				;
005186 7F04     	ADD     	#04,R15		;
005188 4F26     	LDS.L   	@R15+,PR		;
00518A 000B     	RTS     				;
00518C 0009     	NOP     				;
00518E 000B     	RTS     				;
005190 0009     	NOP     				;
005192 BC8B     	BRS     	#1916			;
005194 25E0     	MOV.B   	R14,@R5		;
005196 6084     	MOV.B   	@R8+,R0		;
005198 D108     	MOV.L   	@(#020,PC),R1	;
00519A 900B     	MOV.W   	@(#016,PC),R0	;
00519C 6412     	MOV.L   	@R1,R4		;
00519E 400E     	LDC     	R0,SR			;
0051A0 DF09     	MOV.L   	@(#024,PC),R15	;
0051A2 2448     	TST     	R4,R4			;
0051A4 8900     	BT      	#000			;
0051A6 6F43     	MOV     	R4,R15		;
0051A8 D103     	MOV.L   	@(#00C,PC),R1	;
0051AA C705     	MOVA    	@(#14,PC),R0	;
0051AC 6112     	MOV.L   	@R1,R1		;
0051AE D407     	MOV.L   	@(#01C,PC),R4	;
0051B0 412B     	JMP     	@R1			;
0051B2 0009     	NOP     				;
0051B4 00F0     	
0051B6 0009
0051B8 0600     	
0051BA 0234
0051BC 0600     	
0051BE 02A8
0051C0 0000     	
0051C2 04C0     	
0051C4 0600     	
0051C6 0D00     	
0051C8 0600     	
0051CA 2000
0051CC 0000     	
0051CE 0000     	

L0051D0:
include "0051D0.bin"

L005712:
	dc.b 0x00,0x0D,0xD0,0xDD






	.org	0x00006200	
L006200:
006200 4F22     	STS.L   	PR,@-R15		;
006202 7FDC     	ADD     	#DC,R15		;
006204 D31F     	MOV.L   	@(#07C,PC),R3	;
006206 6332     	MOV.L   	@R3,R3		;
006208 D21F     	MOV.L   	@(#07C,PC),R2	;
00620A 2232     	MOV.L   	R3,@R2		;*(u32*)0x06002D7C = *(u32*)0x06000260;
00620C D31F     	MOV.L   	@(#07C,PC),R3	;
00620E 6332     	MOV.L   	@R3,R3		;
006210 D51F     	MOV.L   	@(#07C,PC),R5	;
006212 E440     	MOV     	#40,R4		;
006214 430B     	JSR     	@R3			;(*bios_func_06000300)(0x40,0x060022E4);
006216 0009     	NOP     				;
006218 D21E     	MOV.L   	@(#078,PC),R2	;
00621A 6222     	MOV.L   	@R2,R2		;
00621C E500     	MOV     	#00,R5		;
00621E E4FE     	MOV     	#FE,R4		;
006220 420B     	JSR     	@R2			;(*scu_change_int_func)(~1,0x00000000);
006222 0009     	NOP     				;
006224 0002     	STC     	SR, R0		;
006226 9327     	MOV.W   	@(#04E,PC),R3	;
006228 2039     	AND     	R3,R0			;
00622A CB00     	OR      	#00,R0		;
00622C 400E     	LDC     	R0,SR			;SH2.SR &= ~0xF0;
00622E B215     	BRS     	L00665C		;vdp1_regs_init();
006230 0009     	NOP     				;
006232 B22F     	BRS     	L006694		;buf06002D7C_init();
006234 0009     	NOP     				;
006236 B156     	BRS     	L0064E6		;flag06002D84_wait();
006238 0009     	NOP     				;
00623A E600     	MOV     	#00,R6		;
00623C 951D     	MOV.W   	@(#03A,PC),R5	;
00623E D416     	MOV.L   	@(#058,PC),R4	;
006240 B18C     	BRS     	L00655C		;memsetw(0x25E06000,0x1000,0x0000);
006242 0009     	NOP     				;
006244 921A     	MOV.W   	@(#034,PC),R2	;
006246 6222     	MOV.L   	@R2,R2		;
006248 420B     	JSR     	@R2			;(*(void*)0x000005E4)();//L000050EA
00624A 0009     	NOP     				;
00624C 9317     	MOV.W   	@(#02E,PC),R3	;
00624E 6332     	MOV.L   	@R3,R3		;
006250 D512     	MOV.L   	@(#048,PC),R5	;
006252 D413     	MOV.L   	@(#04C,PC),R4	;
006254 430B     	JSR     	@R3			;(*(void*)0x000005E8)(0x0600276C,0x0600278D);//L0000511C
006256 0009     	NOP     				;
006258 9612     	MOV.W   	@(#024,PC),R6	;
00625A D512     	MOV.L   	@(#048,PC),R5	;
00625C D412     	MOV.L   	@(#048,PC),R4	;
00625E D313     	MOV.L   	@(#04C,PC),R3	;
006260 430B     	JSR     	@R3			;L060026DC(0x060027DC,0x25E04000,0x059F);
006262 0009     	NOP     				;
006264 D212     	MOV.L   	@(#048,PC),R2	;
006266 6222     	MOV.L   	@R2,R2		;
006268 930B     	MOV.W   	@(#016,PC),R3	;
00626A 2239     	AND     	R3,R2			;
00626C 2228     	TST     	R2,R2			;u32 temp;
00626E 8923     	BT      	L0062B8		;
006270 D310     	MOV.L   	@(#040,PC),R3	;if (region_setting & 0x0800 != 0)
006272 2F32     	MOV.L   	R3,@R15		;  temp = 0x25E06598;
006274 A022     	BRA     	L0062BC		;
006276 0009     	NOP     				;
006278 FF0F
00627A 1000
00627C 05E4
00627E 05E8
006280 059F
006282 0800
006284 06000260
006288 06002D7C
00628C 06000300
006290 060022E4
006294 06000344

006298 25E06000
00629C 0600278D
0062A0 0600276C
0062A4 25E04000
0062A8 060027DC
0062AC 060026DC
0062B0 06000248
0062B4 25E06598
L0062B8:
0062B8 D225     	MOV.L   	@(#094,PC),R2	;else
0062BA 2F22     	MOV.L   	R2,@R15		;  temp = 0x25E06498;
L0062BC:
0062BC E706     	MOV     	#06,R7		;
0062BE E612     	MOV     	#12,R6		;
0062C0 9544     	MOV.W   	@(#088,PC),R5	;
0062C2 64F2     	MOV.L   	@R15,R4		;
0062C4 B15F     	BRS     	L006586		;memsetincw(temp,0x0200,0x12,0x6);
0062C6 0009     	NOP     				;
0062C8 E610     	MOV     	#10,R6		;
0062CA D522     	MOV.L   	@(#088,PC),R5	;
0062CC D422     	MOV.L   	@(#088,PC),R4	;
0062CE B119     	BRS     	L006504		;memcopyw(0x060027BC,0x25F00000,0x10);
0062D0 0009     	NOP     				;
0062D2 B055     	BRS     	L006380		;L006380();
0062D4 0009     	NOP     				;
0062D6 D221     	MOV.L   	@(#084,PC),R2	;
0062D8 6222     	MOV.L   	@R2,R2		;
0062DA 1F28     	MOV.L   	R2,@(#20,R15)	;u32* temp2 = *(u32*)0x06002D7C;
0062DC D320     	MOV.L   	@(#080,PC),R3	;
0062DE 6332     	MOV.L   	@R3,R3		;
0062E0 9235     	MOV.W   	@(#06A,PC),R2	;
0062E2 2329     	AND     	R2,R3			;
0062E4 2338     	TST     	R3,R3			;
0062E6 8907     	BT      	L0062F8		;if (region_setting & 0x00000800 != 0) {
0062E8 53F8     	MOV.L   	@(#20,R15),R3	;
0062EA D21E     	MOV.L   	@(#078,PC),R2	;
0062EC 2321     	MOV.W   	R2,@R3		;  *temp2 = 0x00008020;
0062EE E364     	MOV     	#64,R3		;
0062F0 D21D     	MOV.L   	@(#074,PC),R2	;
0062F2 2232     	MOV.L   	R3,@R2		;  *(u32*)0x06002D80 = 100;
0062F4 A006     	BRA     	L006304		;
0062F6 0009     	NOP     				;}
L0062F8:
0062F8 52F8     	MOV.L   	@(#20,R15),R2	;else {
0062FA D31C     	MOV.L   	@(#070,PC),R3	;
0062FC 2231     	MOV.W   	R3,@R2		;  *temp2 = 0x00008000;
0062FE E278     	MOV     	#78,R2		;
006300 D319     	MOV.L   	@(#064,PC),R3	;
006302 2322     	MOV.L   	R2,@R3		;  *(u32*)0x06002D80 = 120;
L006304:							;}
006304 E420     	MOV     	#20,R4		;
006306 B183     	BRS     	L006610		;L00006610();
006308 0009     	NOP     				;
00630A D219     	MOV.L   	@(#064,PC),R2	;
00630C 6222     	MOV.L   	@R2,R2		;
00630E 420B     	JSR     	@R2			;(*(void*)0x06000284)();
006310 0009     	NOP     				;
006312 A002     	BRA     	L00631A		;
006314 0009     	NOP     				;
L006316:							;while (*(u32*)0x06002D80 != 0)
006316 B0E6     	BRS     	L0064E6		;  flag06002D84_wait();
006318 0009     	NOP     				;
L00631A:
00631A D013     	MOV.L   	@(#04C,PC),R0	;
00631C 6002     	MOV.L   	@R0,R0		;
00631E 2008     	TST     	R0,R0			;
006320 8BF9     	BF      	#L006316		;
006322 D314     	MOV.L   	@(#050,PC),R3	;
006324 6332     	MOV.L   	@R3,R3		;
006326 E501     	MOV     	#01,R5		;
006328 E4FF     	MOV     	#FF,R4		;
00632A 430B     	JSR     	@R3			;(*scu_change_int_func)(~0,1);
00632C 0009     	NOP     				;
00632E D212     	MOV.L   	@(#048,PC),R2	;
006330 6222     	MOV.L   	@R2,R2		;
006332 E500     	MOV     	#00,R5		;
006334 E440     	MOV     	#40,R4		;
006336 420B     	JSR     	@R2			;(*scu_set_int_func)(0x40,0);
006338 0009     	NOP     				;
00633A B085     	BRS     	L006448		;L006448();
00633C 0009     	NOP     				;
00633E D30F     	MOV.L   	@(#03C,PC),R3	;
006340 430B     	JSR     	@R3			;L06002D88();
006342 0009     	NOP     				;
006344 7F24     	ADD     	#24,R15		;
006346 4F26     	LDS.L   	@R15+,PR		;
006348 000B     	RTS     				;
00634A 0009     	NOP     				;
00634C 0200
00634E 0800
006350 25E06498
006354 25F00000
006358 060027BC
00635C 06002D7C
006360 06000248
006364 00008020
006368 06002D80
00636C 00008000
006370 06000284
006374 06000344
006378 06000300
00637C 06002D88

L006380:							;
006380 7FF0     	ADD     	#F0,R15		;
006382 D316     	MOV.L   	@(#058,PC),R3	;
006384 6332     	MOV.L   	@R3,R3		;
006386 1F31     	MOV.L   	R3,@(#4,R15)	;val1 = *(u32*)0x060027A4;
006388 D315     	MOV.L   	@(#054,PC),R3	;
00638A 6332     	MOV.L   	@R3,R3		;
00638C 2F32     	MOV.L   	R3,@R15		;val2 = *(u32*)0x060027A8;
00638E E300     	MOV     	#00,R3		;
006390 6033     	MOV     	R3,R0			;
006392 81F6     	MOV.W   	R0,@(#0C,R15)	;int i = 0;
006394 A01A     	BRA     	L0063CC		;
006396 0009     	NOP     				;
L006398:
006398 84F4     	MOV.B   	@(#04,R15),R0	;for (int i=0; i<6; i++) {
00639A 6203     	MOV     	R0,R2			;
00639C 6023     	MOV     	R2,R0			;
00639E 80FF     	MOV.B   	R0,@(#0F,R15)	;  u8 temp1 = val1 >> 24;
0063A0 63F0     	MOV.B   	@R15,R3		;
0063A2 6033     	MOV     	R3,R0			;
0063A4 80FE     	MOV.B   	R0,@(#0E,R15)	;  u8 temp2 = val2 >> 24;
0063A6 53F1     	MOV.L   	@(#04,R15),R3	;
0063A8 4318     	SHLL8   	R3			;
0063AA 84FE     	MOV.B   	@(#0E,R15),R0	;
0063AC 6203     	MOV     	R0,R2			;
0063AE 622C     	EXTU.B   	R2,R2			;
0063B0 332C     	ADD     	R2,R3			;
0063B2 1F31     	MOV.L   	R3,@(#4,R15)	;  val1 = (val1 << 8) | temp2;
0063B4 63F2     	MOV.L   	@R15,R3		;
0063B6 4318     	SHLL8   	R3			;
0063B8 84FF     	MOV.B   	@(#0F,R15),R0	;
0063BA 6203     	MOV     	R0,R2			;
0063BC 622C     	EXTU.B   	R2,R2			;
0063BE 332C     	ADD     	R2,R3			;
0063C0 2F32     	MOV.L   	R3,@R15		;  val2 = (val2 << 8) | temp1;
0063C2 85F6     	MOV.W   	@(#0C,R15),R0	;
0063C4 6303     	MOV     	R0,R3			;
0063C6 7301     	ADD     	#01,R3		;
0063C8 6033     	MOV     	R3,R0			;
0063CA 81F6     	MOV.W   	R0,@(#0C,R15)	;  
L0063CC:
0063CC 85F6     	MOV.W   	@(#0C,R15),R0	;
0063CE 6303     	MOV     	R0,R3			;
0063D0 E206     	MOV     	#06,R2		;
0063D2 3323     	CMP/GE 	R2,R3			;
0063D4 8BE0     	BF      	L006398		;}
0063D6 7F10     	ADD     	#10,R15		;
0063D8 000B     	RTS     				;
0063DA 0009     	NOP     				;
0063DC 060027A4
0063E0 060027A8

L0063E4:							;void boot_init_vdp2_regs()
0063E4 7FEC     	ADD     	#EC,R15		;
0063E6 D314     	MOV.L   	@(#050,PC),R3	;
0063E8 1F33     	MOV.L   	R3,@(#C,R15)	;
0063EA 53F3     	MOV.L   	@(#0C,R15),R3	;
0063EC 6232     	MOV.L   	@R3,R2		;
0063EE 72FF     	ADD     	#FF,R2		;
0063F0 2322     	MOV.L   	R2,@R3		;*(u32*)0x06002D80--;
0063F2 D312     	MOV.L   	@(#048,PC),R3	;
0063F4 1F34     	MOV.L   	R3,@(#10,R15)	;
0063F6 50F4     	MOV.L   	@(#10,R15),R0	;
0063F8 6002     	MOV.L   	@R0,R0		;
0063FA 8801     	CMP/EQ  	#01,R0		;
0063FC 8B18     	BF      	L006430		;if (*(u32*)0x06002D84 != 1) return;
0063FE 52F4     	MOV.L   	@(#10,R15),R2	;
006400 E300     	MOV     	#00,R3		;
006402 2232     	MOV.L   	R3,@R2		;*(u32*)0x06002D84 = 0;
006404 D20E     	MOV.L   	@(#038,PC),R2	;
006406 6222     	MOV.L   	@R2,R2		;
006408 1F21     	MOV.L   	R2,@(#4,R15)	;u16* src = 0x06002D7C;
00640A D30E     	MOV.L   	@(#038,PC),R3	;
00640C 2F32     	MOV.L   	R3,@R15		;u16* dst = 0x25F80000;
00640E 9312     	MOV.W   	@(#024,PC),R3	;
006410 1F32     	MOV.L   	R3,@(#8,R15)	;int i = 0x0090;
L006412:
006412 63F2     	MOV.L   	@R15,R3		;do {
006414 52F1     	MOV.L   	@(#04,R15),R2	;
006416 6121     	MOV.W   	@R2,R1		;
006418 2311     	MOV.W   	R1,@R3		;  *dst = *src;
00641A 63F2     	MOV.L   	@R15,R3		;
00641C 7302     	ADD     	#02,R3		;
00641E 2F32     	MOV.L   	R3,@R15		;  src++;
006420 52F1     	MOV.L   	@(#04,R15),R2	;
006422 7202     	ADD     	#02,R2		;
006424 1F21     	MOV.L   	R2,@(#4,R15)	;  dst++;
006426 51F2     	MOV.L   	@(#08,R15),R1	;
006428 71FF     	ADD     	#FF,R1		;
00642A 1F12     	MOV.L   	R1,@(#8,R15)	;  i--;
00642C 2118     	TST     	R1,R1			;
00642E 8BF0     	BF      	L006412		;} while (i > 0);
L006430:
006430 7F14     	ADD     	#14,R15		;
006432 000B     	RTS     				;
006434 0009     	NOP     				;
006436 0090
006438 06002D80
00643C 06002D84
006440 06002D7C
006444 25F80000

L006448:							;
006448 7FE0     	ADD     	#E0,R15		;
00644A D315     	MOV.L   	@(#054,PC),R3	;u32* ptr = 0x06002100;
00644C 1F37     	MOV.L   	R3,@(#1C,R15)	;
00644E E300     	MOV     	#00,R3		;
006450 1F33     	MOV.L   	R3,@(#C,R15)	;u32 temp = 0;
006452 E300     	MOV     	#00,R3		;
006454 1F32     	MOV.L   	R3,@(#8,R15)	;u32 temp2 = 0;
006456 D313     	MOV.L   	@(#04C,PC),R3	;
006458 1F31     	MOV.L   	R3,@(#4,R15)	;u32 temp3 = 0x53454741;
00645A E300     	MOV     	#00,R3		;
00645C 2F32     	MOV.L   	R3,@R15		;
00645E A012     	BRA     	L006486		;
006460 0009     	NOP     				;
L006462:
006462 52F7     	MOV.L   	@(#1C,R15),R2	;for (int i=0; i<0xD00; i+=4) {
006464 7204     	ADD     	#04,R2		;
006466 1F27     	MOV.L   	R2,@(#1C,R15)	;
006468 72FC     	ADD     	#FC,R2		;
00646A 6322     	MOV.L   	@R2,R3		;
00646C 52F3     	MOV.L   	@(#0C,R15),R2	;
00646E 323C     	ADD     	R3,R2			;
006470 1F23     	MOV.L   	R2,@(#C,R15)	;  temp += *ptr++;
006472 53F2     	MOV.L   	@(#08,R15),R3	;
006474 232A     	XOR     	R2,R3			;
006476 1F32     	MOV.L   	R3,@(#8,R15)	;  temp2 ^= temp;
006478 53F2     	MOV.L   	@(#08,R15),R3	;
00647A 51F1     	MOV.L   	@(#04,R15),R1	;
00647C 3138     	SUB     	R3,R1			;
00647E 1F11     	MOV.L   	R1,@(#4,R15)	;  temp3 -= temp2;
006480 62F2     	MOV.L   	@R15,R2		;
006482 7204     	ADD     	#04,R2		;
006484 2F22     	MOV.L   	R2,@R15		;
L006486:
006486 63F2     	MOV.L   	@R15,R3		;
006488 9209     	MOV.W   	@(#012,PC),R2	;
00648A 3322     	CMP/HS 	R2,R3			;
00648C 8BE9     	BF      	L006462		;}
00648E D206     	MOV.L   	@(#018,PC),R2	;
006490 1F26     	MOV.L   	R2,@(#18,R15)	;
006492 D306     	MOV.L   	@(#018,PC),R3	;
006494 1F35     	MOV.L   	R3,@(#14,R15)	;
006496 E300     	MOV     	#00,R3		;
006498 2F32     	MOV.L   	R3,@R15		;
00649A A01D     	BRA     	L0064D8		;
00649C 0009     	NOP     				;
00649E 0D00     	
0064A0 06002100
0064A4 53454741
0064A8 25F80002
0064AC 25F80008
L0064B0:
0064B0 52F6     	MOV.L   	@(#18,R15),R2	;for (int i=0; i<0x100; i++) {
0064B2 6321     	MOV.W   	@R2,R3		;
0064B4 6033     	MOV     	R3,R0			;
0064B6 81F9     	MOV.W   	R0,@(#12,R15)	;  VDP2.EXTEN;
0064B8 53F5     	MOV.L   	@(#14,R15),R3	;
0064BA 6331     	MOV.W   	@R3,R3		;
0064BC 633D     	EXTU.W   	R3,R3			;
0064BE 52F3     	MOV.L   	@(#0C,R15),R2	;
0064C0 323C     	ADD     	R3,R2			;
0064C2 1F23     	MOV.L   	R2,@(#C,R15)	;  temp += VDP2.HCNT;
0064C4 53F2     	MOV.L   	@(#08,R15),R3	;
0064C6 332C     	ADD     	R2,R3			;
0064C8 1F32     	MOV.L   	R3,@(#8,R15)	;  temp2 += temp;
0064CA 53F2     	MOV.L   	@(#08,R15),R3	;
0064CC 51F1     	MOV.L   	@(#04,R15),R1	;
0064CE 213A     	XOR     	R3,R1			;
0064D0 1F11     	MOV.L   	R1,@(#4,R15)	;  temp3 ^= temp2;
0064D2 62F2     	MOV.L   	@R15,R2		;
0064D4 7201     	ADD     	#01,R2		;
0064D6 2F22     	MOV.L   	R2,@R15		;
L0064D8:
0064D8 63F2     	MOV.L   	@R15,R3		;
0064DA 920F     	MOV.W   	@(#01E,PC),R2	;
0064DC 3322     	CMP/HS 	R2,R3			;
0064DE 8BE7     	BF      	L0064B0		;}
0064E0 7F20     	ADD     	#20,R15		;
0064E2 000B     	RTS     				;
0064E4 0009     	NOP     				;

L0064E6:							;static void flag06002D84_wait()
0064E6 E301     	MOV     	#01,R3		;
0064E8 D205     	MOV.L   	@(#014,PC),R2	;
0064EA 2232     	MOV.L   	R3,@R2		;*(u32*)0x06002D84 = 0x0000001;
0064EC A000     	BRA     	L0064F0		;
0064EE 0009     	NOP     				;
L0064F0:
0064F0 D003     	MOV.L   	@(#00C,PC),R0	;
0064F2 6002     	MOV.L   	@R0,R0		;
0064F4 8801     	CMP/EQ  	#01,R0		;
0064F6 89FB     	BT      	L0064F0		;while (*(u32*)0x06002D84 == 0x0000001);
0064F8 000B     	RTS     				;
0064FA 0009     	NOP     				;
0064FC 0100
0064FE 53F2
006500 06002D84

L006504:							;static void memcopyw(u16* src,u16* dst,int len)
006504 7FF4     	ADD     	#F4,R15		;
006506 1F42     	MOV.L   	R4,@(#8,R15)	;
006508 1F51     	MOV.L   	R5,@(#4,R15)	;
00650A 2F62     	MOV.L   	R6,@R15		;
L00650C:
00650C 52F1     	MOV.L   	@(#04,R15),R2	;do {
00650E 53F2     	MOV.L   	@(#08,R15),R3	;
006510 6131     	MOV.W   	@R3,R1		;
006512 2211     	MOV.W   	R1,@R2		;  *src = *dst;
006514 53F1     	MOV.L   	@(#04,R15),R3	;
006516 7302     	ADD     	#02,R3		;
006518 1F31     	MOV.L   	R3,@(#4,R15)	;  dst++;
00651A 52F2     	MOV.L   	@(#08,R15),R2	;
00651C 7202     	ADD     	#02,R2		;
00651E 1F22     	MOV.L   	R2,@(#8,R15)	;  src++;
006520 61F2     	MOV.L   	@R15,R1		;
006522 71FF     	ADD     	#FF,R1		;
006524 2F12     	MOV.L   	R1,@R15		;  len--;
006526 2118     	TST     	R1,R1			;
006528 8BF0     	BF      	L00650C		;} while (len > 0);
00652A 7F0C     	ADD     	#0C,R15		;
00652C 000B     	RTS     				;
00652E 0009     	NOP     				;

006530 7FF4     	ADD     	#F4,R15		;
006532 1F42     	MOV.L   	R4,@(#8,R15)	;
006534 1F51     	MOV.L   	R5,@(#4,R15)	;
006536 2F62     	MOV.L   	R6,@R15		;
006538 52F1     	MOV.L   	@(#04,R15),R2	;
00653A 53F2     	MOV.L   	@(#08,R15),R3	;
00653C 6130     	MOV.B   	@R3,R1		;
00653E 2210     	MOV.B   	R1,@R2		;
006540 53F1     	MOV.L   	@(#04,R15),R3	;
006542 7301     	ADD     	#01,R3		;
006544 1F31     	MOV.L   	R3,@(#4,R15)	;
006546 52F2     	MOV.L   	@(#08,R15),R2	;
006548 7201     	ADD     	#01,R2		;
00654A 1F22     	MOV.L   	R2,@(#8,R15)	;
00654C 61F2     	MOV.L   	@R15,R1		;
00654E 71FF     	ADD     	#FF,R1		;
006550 2F12     	MOV.L   	R1,@R15		;
006552 2118     	TST     	R1,R1			;
006554 8BF0     	BF      	#1E0			;
006556 7F0C     	ADD     	#0C,R15		;
006558 000B     	RTS     				;
00655A 0009     	NOP     				;

L00655C:							;static void memsetw(u16* dest,int len,u16 val)//R4-dest,R5-len,R6-val
00655C 7FF4     	ADD     	#F4,R15		;
00655E 1F42     	MOV.L   	R4,@(#8,R15)	;
006560 1F51     	MOV.L   	R5,@(#4,R15)	;
006562 63F3     	MOV     	R15,R3		;
006564 7302     	ADD     	#02,R3		;
006566 2361     	MOV.W   	R6,@R3		;
L006568:
006568 52F2     	MOV.L   	@(#08,R15),R2	;do {
00656A 7202     	ADD     	#02,R2		;
00656C 1F22     	MOV.L   	R2,@(#8,R15)	;
00656E 72FE     	ADD     	#FE,R2		;
006570 85F1     	MOV.W   	@(#02,R15),R0	;
006572 6303     	MOV     	R0,R3			;
006574 2231     	MOV.W   	R3,@R2		;  *dest = val;
006576 53F1     	MOV.L   	@(#04,R15),R3	;  dest++;
006578 73FF     	ADD     	#FF,R3		;
00657A 1F31     	MOV.L   	R3,@(#4,R15)	;  len--;
00657C 2338     	TST     	R3,R3			;
00657E 8BF3     	BF      	L006568		;} while (len);
006580 7F0C     	ADD     	#0C,R15		;
006582 000B     	RTS     				;
006584 0009     	NOP     				;

L006586:
006586 7FE8     	ADD     	#E8,R15		;static void memsetincw(u16* dst,u16 initval,int len1,int len2)
006588 1F45     	MOV.L   	R4,@(#14,R15)	;
00658A 63F3     	MOV     	R15,R3		;
00658C 7312     	ADD     	#12,R3		;
00658E 2351     	MOV.W   	R5,@R3		;
006590 1F63     	MOV.L   	R6,@(#C,R15)	;
006592 1F72     	MOV.L   	R7,@(#8,R15)	;
L006594:
006594 52F5     	MOV.L   	@(#14,R15),R2	;do {
006596 2F22     	MOV.L   	R2,@R15		;  u16* ptr = dst;
006598 53F3     	MOV.L   	@(#0C,R15),R3	;
00659A 1F31     	MOV.L   	R3,@(#4,R15)	;  int i = len1;
L00659C:
00659C 63F2     	MOV.L   	@R15,R3		;  do {
00659E 85F9     	MOV.W   	@(#12,R15),R0	;
0065A0 6203     	MOV     	R0,R2			;
0065A2 2321     	MOV.W   	R2,@R3		;    *ptr = initval;
0065A4 85F9     	MOV.W   	@(#12,R15),R0	;
0065A6 6303     	MOV     	R0,R3			;
0065A8 7301     	ADD     	#01,R3		;
0065AA 6033     	MOV     	R3,R0			;
0065AC 81F9     	MOV.W   	R0,@(#12,R15)	;    initval++;
0065AE 62F2     	MOV.L   	@R15,R2		;
0065B0 7202     	ADD     	#02,R2		;
0065B2 2F22     	MOV.L   	R2,@R15		;    ptr++;
0065B4 51F1     	MOV.L   	@(#04,R15),R1	;
0065B6 71FF     	ADD     	#FF,R1		;
0065B8 1F11     	MOV.L   	R1,@(#4,R15)	;    i--;
0065BA 2118     	TST     	R1,R1			;
0065BC 8BEE     	BF      	L00659C		;  } while (i > 0);
0065BE 930A     	MOV.W   	@(#014,PC),R3	;
0065C0 52F5     	MOV.L   	@(#14,R15),R2	;
0065C2 323C     	ADD     	R3,R2			;
0065C4 1F25     	MOV.L   	R2,@(#14,R15)	;  dst += 0x80/2;
0065C6 53F2     	MOV.L   	@(#08,R15),R3	;
0065C8 73FF     	ADD     	#FF,R3		;
0065CA 1F32     	MOV.L   	R3,@(#8,R15)	;  len2--;
0065CC 2338     	TST     	R3,R3			;
0065CE 8BE1     	BF      	L006594		;} while (len2 > 0);
0065D0 7F18     	ADD     	#18,R15		;
0065D2 000B     	RTS     				;
0065D4 0009     	NOP     				;
0065D6 0080

L0065D8:							;static void (u16 val)
0065D8 7FF8     	ADD     	#F8,R15		;
0065DA 63F3     	MOV     	R15,R3		;
0065DC 7306     	ADD     	#06,R3		;
0065DE 2341     	MOV.W   	R4,@R3		;
0065E0 D21D     	MOV.L   	@(#074,PC),R2	;
0065E2 6222     	MOV.L   	@R2,R2		;
0065E4 9336     	MOV.W   	@(#06C,PC),R3	;
0065E6 323C     	ADD     	R3,R2			;u16* ptr = *(u32*)0x06002D7C;
0065E8 7214     	ADD     	#14,R2		;ptr += 0x100/2 + 0x14/2;
0065EA 2F22     	MOV.L   	R2,@R15		;
0065EC 85F3     	MOV.W   	@(#06,R15),R0	;
0065EE 6303     	MOV     	R0,R3			;
0065F0 2231     	MOV.W   	R3,@R2		;*ptr = val;
0065F2 63F2     	MOV.L   	@R15,R3		;
0065F4 7302     	ADD     	#02,R3		;
0065F6 2F32     	MOV.L   	R3,@R15		;ptr++;
0065F8 85F3     	MOV.W   	@(#06,R15),R0	;
0065FA 6203     	MOV     	R0,R2			;
0065FC 2321     	MOV.W   	R2,@R3		;*ptr = val;
0065FE 63F2     	MOV.L   	@R15,R3		;
006600 7302     	ADD     	#02,R3		;
006602 2F32     	MOV.L   	R3,@R15		;ptr++;
006604 85F3     	MOV.W   	@(#06,R15),R0	;
006606 6203     	MOV     	R0,R2			;
006608 2321     	MOV.W   	R2,@R3		;*ptr = val;
00660A 7F08     	ADD     	#08,R15		;
00660C 000B     	RTS     				;
00660E 0009     	NOP     				;

L006610:							;static void (u16 val)
006610 4F22     	STS.L   	PR,@-R15		;
006612 7FFC     	ADD     	#FC,R15		;
006614 63F3     	MOV     	R15,R3		;
006616 7302     	ADD     	#02,R3		;
006618 2341     	MOV.W   	R4,@R3		;
00661A 921B     	MOV.W   	@(#036,PC),R2	;
00661C 2F21     	MOV.W   	R2,@R15		;u16 temp = 0x100;
00661E A00B     	BRA     	L006638		;
006620 0009     	NOP     				;
L006622:
006622 64F1     	MOV.W   	@R15,R4		;while (temp < 0x200) {
006624 BFD8     	BRS     	L0065D8		;  L0065D8(temp);
006626 0009     	NOP     				;
006628 BF5D     	BRS     	L0064E6		;  flag06002D84_wait();
00662A 0009     	NOP     				;
00662C 85F1     	MOV.W   	@(#02,R15),R0	;
00662E 6203     	MOV     	R0,R2			;
006630 622D     	EXTU.W   	R2,R2			;
006632 63F1     	MOV.W   	@R15,R3		;
006634 332C     	ADD     	R2,R3			;
006636 2F31     	MOV.W   	R3,@R15		;  temp += val;
L006638:
006638 63F1     	MOV.W   	@R15,R3		;
00663A 633D     	EXTU.W   	R3,R3			;
00663C 920B     	MOV.W   	@(#016,PC),R2	;
00663E 3323     	CMP/GE 	R2,R3			;
006640 8BEF     	BF      	L006622		;}
006642 9408     	MOV.W   	@(#010,PC),R4	;
006644 BFC8     	BRS     	L0065D8		;
006646 0009     	NOP     				;
006648 BF4D     	BRS     	L0064E6		;
00664A 0009     	NOP     				;
00664C 7F04     	ADD     	#04,R15		;
00664E 4F26     	LDS.L   	@R15+,PR		;
006650 000B     	RTS     				;
006652 0009     	NOP     				;
006654 0100
006656 0200
006658 06002D7C

L00665C:							;static void vdp1_regs_init()
00665C 7FF4     	ADD     	#F4,R15		;
00665E D31A     	MOV.L   	@(#068,PC),R3	;
006660 1F32     	MOV.L   	R3,@(#8,R15)	;
006662 E300     	MOV     	#00,R3		;
006664 1F31     	MOV.L   	R3,@(#4,R15)	;
006666 A009     	BRA     	L00667C		;
006668 0009     	NOP     				;
00666A 52F2     	MOV.L   	@(#08,R15),R2	;
00666C E300     	MOV     	#00,R3		;
00666E 2231     	MOV.W   	R3,@R2		;VDP1.TVMR = 0x0000;
006670 52F2     	MOV.L   	@(#08,R15),R2	;VDP1.FBCR = 0x0000;
006672 7202     	ADD     	#02,R2		;VDP1.PTMR = 0x0000;
006674 1F22     	MOV.L   	R2,@(#8,R15)	;VDP1.EWDR = 0x0000;
006676 53F1     	MOV.L   	@(#04,R15),R3	;VDP1.EWLR = 0x0000;
006678 7301     	ADD     	#01,R3		;VDP1.EWRR = 0x0000;
00667A 1F31     	MOV.L   	R3,@(#4,R15)	;
00667C 53F1     	MOV.L   	@(#04,R15),R3	;
00667E E206     	MOV     	#06,R2		;
006680 3322     	CMP/HS 	R2,R3			;
006682 8BF2     	BF      	L00666A		;
006684 D211     	MOV.L   	@(#044,PC),R2	;
006686 2F22     	MOV.L   	R2,@R15		;
006688 63F2     	MOV.L   	@R15,R3		;
00668A D211     	MOV.L   	@(#044,PC),R2	;
00668C 2321     	MOV.W   	R2,@R3		;VDP1.VRAM[0] = 0x8000;
00668E 7F0C     	ADD     	#0C,R15		;
006690 000B     	RTS     				;
006692 0009     	NOP     				;

L006694:							;static void buf06002D7C_init()
006694 4F22     	STS.L   	PR,@-R15		;
006696 7FD4     	ADD     	#D4,R15		;
006698 E600     	MOV     	#00,R6		;
00669A 9514     	MOV.W   	@(#028,PC),R5	;
00669C D40D     	MOV.L   	@(#034,PC),R4	;
00669E 6442     	MOV.L   	@R4,R4		;
0066A0 BF5C     	BRS     	L00655C		;memsetw(*(u32*)0x06002D7C,0x0090,0);
0066A2 0009     	NOP     				;
0066A4 D20B     	MOV.L   	@(#02C,PC),R2	;
0066A6 6222     	MOV.L   	@R2,R2		;
0066A8 1F29     	MOV.L   	R2,@(#24,R15)	;
0066AA 53F9     	MOV.L   	@(#24,R15),R3	;u16* ptr = *(u32*)0x06002D7C;
0066AC E201     	MOV     	#01,R2		;
0066AE E020     	MOV     	#20,R0		;
0066B0 0325     	MOV.W   	R2,@(R0,R3)		;ptr[0x20] = 0x0001;
0066B2 D309     	MOV.L   	@(#024,PC),R3	;
0066B4 1F31     	MOV.L   	R3,@(#4,R15)	;u16* src = *(u32*)0x060027AC;
0066B6 53F9     	MOV.L   	@(#24,R15),R3	;
0066B8 6233     	MOV     	R3,R2			;
0066BA 7210     	ADD     	#10,R2		;ptr += 0x10/2;
0066BC 2F22     	MOV.L   	R2,@R15		;
0066BE E300     	MOV     	#00,R3		;
0066C0 1F3A     	MOV.L   	R3,@(#28,R15)	;int cnt = 0;
0066C2 A018     	BRA     	L0066F6		;
0066C4 0009     	NOP     				;
0066C6 0090
0066C8 25D00000
0066CC 25C00000
0066D0 00008000
0066D4 06002D7C
0066D8 060027AC
L0066DC:
0066DC 62F2     	MOV.L   	@R15,R2		;
0066DE 53F1     	MOV.L   	@(#04,R15),R3	;
0066E0 6131     	MOV.W   	@R3,R1		;for (int i=0; i<8; i++)
0066E2 2211     	MOV.W   	R1,@R2		;  *ptr++ = *src++;
0066E4 63F2     	MOV.L   	@R15,R3		;
0066E6 7302     	ADD     	#02,R3		;
0066E8 2F32     	MOV.L   	R3,@R15		;
0066EA 52F1     	MOV.L   	@(#04,R15),R2	;
0066EC 7202     	ADD     	#02,R2		;
0066EE 1F21     	MOV.L   	R2,@(#4,R15)	;
0066F0 51FA     	MOV.L   	@(#28,R15),R1	;
0066F2 7101     	ADD     	#01,R1		;
0066F4 1F1A     	MOV.L   	R1,@(#28,R15)	;
L0066F6:
0066F6 53FA     	MOV.L   	@(#28,R15),R3	;
0066F8 E208     	MOV     	#08,R2		;
0066FA 3322     	CMP/HS 	R2,R3			;
0066FC 8BEE     	BF      	L0066DC		;
0066FE D22D     	MOV.L   	@(#0B4,PC),R2	;
006700 6222     	MOV.L   	@R2,R2		;ptr = *(u32*)0x06002D7C;
006702 7228     	ADD     	#28,R2		;ptr += 0x28/2;
006704 1F28     	MOV.L   	R2,@(#20,R15)	;
006706 53F8     	MOV.L   	@(#20,R15),R3	;
006708 D22B     	MOV.L   	@(#0AC,PC),R2	;
00670A 6023     	MOV     	R2,R0			;
00670C 8134     	MOV.W   	R0,@(#08,R3)	;ptr[0x08/2] = 0x8000;
00670E 53F8     	MOV.L   	@(#20,R15),R3	;
006710 924B     	MOV.W   	@(#096,PC),R2	;
006712 6023     	MOV     	R2,R0			;
006714 813C     	MOV.W   	R0,@(#18,R3)	;ptr[0x18/2] = 0x0303;
006716 53F8     	MOV.L   	@(#20,R15),R3	;
006718 9247     	MOV.W   	@(#08E,PC),R2	;
00671A 6023     	MOV     	R2,R0			;
00671C 813D     	MOV.W   	R0,@(#1A,R3)	;ptr[0x1A/2] = 0x0303;
00671E D325     	MOV.L   	@(#094,PC),R3	;
006720 6332     	MOV.L   	@R3,R3		;ptr = *(u32*)0x06002D7C;
006722 7370     	ADD     	#70,R3		;ptr += 0x70/2;
006724 1F37     	MOV.L   	R3,@(#1C,R15)	;
006726 53F7     	MOV.L   	@(#1C,R15),R3	;
006728 D224     	MOV.L   	@(#090,PC),R2	;
00672A 1322     	MOV.L   	R2,@(#8,R3)		;ptr[0x08/2] = 0x0001; ptr[0x08/2+1] = 0x0000;
00672C 53F7     	MOV.L   	@(#1C,R15),R3	;
00672E D223     	MOV.L   	@(#08C,PC),R2	;
006730 1323     	MOV.L   	R2,@(#C,R3)		;ptr[0x0C/2] = 0x0001; ptr[0x0C/2+1] = 0x0000;
006732 53F7     	MOV.L   	@(#1C,R15),R3	;
006734 D221     	MOV.L   	@(#084,PC),R2	;
006736 1326     	MOV.L   	R2,@(#18,R3)	;ptr[0x18/2] = 0x0001; ptr[0x18/2+1] = 0x0000;
006738 53F7     	MOV.L   	@(#1C,R15),R3	;
00673A D220     	MOV.L   	@(#080,PC),R2	;
00673C 1327     	MOV.L   	R2,@(#1C,R3)	;ptr[0x1C/2] = 0x0001; ptr[0x1C/2+1] = 0x0000;
00673E 53F7     	MOV.L   	@(#1C,R15),R3	;
006740 9234     	MOV.W   	@(#068,PC),R2	;
006742 132F     	MOV.L   	R2,@(#3C,R3)	;ptr[0x3C/2] = 0x0000; ptr[0x3C/2+1] = 0x4000;
006744 E300     	MOV     	#00,R3		;
006746 D21E     	MOV.L   	@(#078,PC),R2	;
006748 2231     	MOV.W   	R3,@R2		;*(u16*)0x25E08000 = 0x0000;
00674A D31A     	MOV.L   	@(#068,PC),R3	;
00674C 6332     	MOV.L   	@R3,R3		;ptr = *(u32*)0x06002D7C;
00674E 922E     	MOV.W   	@(#05C,PC),R2	;
006750 332C     	ADD     	R2,R3			;ptr += 0xE0/2;
006752 1F34     	MOV.L   	R3,@(#10,R15)	;
006754 53F4     	MOV.L   	@(#10,R15),R3	;
006756 E220     	MOV     	#20,R2		;
006758 2321     	MOV.W   	R2,@R3		;*ptr = 0x0020;
00675A D316     	MOV.L   	@(#058,PC),R3	;
00675C 6332     	MOV.L   	@R3,R3		;ptr = *(u32*)0x06002D7C;
00675E 9227     	MOV.W   	@(#04E,PC),R2	;
006760 332C     	ADD     	R2,R3			;ptr += 0xF0/2;
006762 1F33     	MOV.L   	R3,@(#C,R15)	;
006764 53F3     	MOV.L   	@(#0C,R15),R3	;
006766 E207     	MOV     	#07,R2		;
006768 6023     	MOV     	R2,R0			;
00676A 8134     	MOV.W   	R0,@(#08,R3)	;ptr[0x08/2] = 0x0007;
00676C D311     	MOV.L   	@(#044,PC),R3	;
00676E 6332     	MOV.L   	@R3,R3		;ptr = *(u32*)0x06002D7C;
006770 921F     	MOV.W   	@(#03E,PC),R2	;
006772 332C     	ADD     	R2,R3			;ptr += 0x100/2;
006774 1F32     	MOV.L   	R3,@(#8,R15)	;
006776 53F2     	MOV.L   	@(#08,R15),R3	;
006778 E201     	MOV     	#01,R2		;
00677A 6023     	MOV     	R2,R0			;
00677C 8138     	MOV.W   	R0,@(#10,R3)	;ptr[0x10/2] = 0x0001;
00677E 53F2     	MOV.L   	@(#08,R15),R3	;
006780 6233     	MOV     	R3,R2			;
006782 7214     	ADD     	#14,R2		;ptr += 0x14/2;
006784 2F22     	MOV.L   	R2,@R15		;
006786 9314     	MOV.W   	@(#028,PC),R3	;
006788 1F3A     	MOV.L   	R3,@(#28,R15)	;
00678A 63F2     	MOV.L   	@R15,R3		;
00678C 7306     	ADD     	#06,R3		;
00678E 2F32     	MOV.L   	R3,@R15		;ptr += 0x06/2;
006790 62F2     	MOV.L   	@R15,R2		;
006792 72FE     	ADD     	#FE,R2		;
006794 2F22     	MOV.L   	R2,@R15		;ptr -= 0x02/2;
006796 53FA     	MOV.L   	@(#28,R15),R3	;
006798 633D     	EXTU.W   	R3,R3			;
00679A 2231     	MOV.W   	R3,@R2		;*ptr = 0x0100;
00679C 63F2     	MOV.L   	@R15,R3		;
00679E 73FE     	ADD     	#FE,R3		;
0067A0 2F32     	MOV.L   	R3,@R15		;ptr -= 0x02/2;
0067A2 52FA     	MOV.L   	@(#28,R15),R2	;
0067A4 622D     	EXTU.W   	R2,R2			;
0067A6 A00D     	BRA     	L0067C4		;
0067A8 0009     	NOP     				;
0067AA 0303
0067AC 4000
0067AE 00E0
0067B0 00F0
0067B2 0100
0067B4 06002D7C
0067B8 00008000
0067BC 00010000
0067C0 25E08000
L0067C4:
0067C4 2321     	MOV.W   	R2,@R3		;*ptr = 0x0100;
0067C6 63F2     	MOV.L   	@R15,R3		;
0067C8 73FE     	ADD     	#FE,R3		;
0067CA 2F32     	MOV.L   	R3,@R15		;ptr -= 0x02/2;
0067CC 52FA     	MOV.L   	@(#28,R15),R2	;
0067CE 622D     	EXTU.W   	R2,R2			;
0067D0 2321     	MOV.W   	R2,@R3		;*ptr = 0x0100;
0067D2 7F2C     	ADD     	#2C,R15		;
0067D4 4F26     	LDS.L   	@R15+,PR		;
0067D6 000B     	RTS     				;
0067D8 0009     	NOP     				;


0067DA 6634     	MOV.B   	@R3+,R6		;
0067DC 2F86     	MOV.L   	R8,@-R15		;
0067DE 6763     	MOV     	R6,R7			;
0067E0 2F96     	MOV.L   	R9,@-R15		;
0067E2 6953     	MOV     	R5,R9			;
0067E4 4F22     	STS.L   	PR,@-R15		;
0067E6 6343     	MOV     	R4,R3			;
0067E8 222A     	XOR     	R2,R2			;
0067EA 255A     	XOR     	R5,R5			;
0067EC 288A     	XOR     	R8,R8			;
0067EE 6634     	MOV.B   	@R3+,R6		;
0067F0 606C     	EXTU.B   	R6,R0			;
0067F2 4009     	SHLR2   	R0			;
0067F4 B009     	BRS     	#0012			;
0067F6 4009     	SHLR2   	R0			;
0067F8 6063     	MOV     	R6,R0			;
0067FA B006     	BRS     	#000C			;
0067FC C90F     	AND     	#0F,R0		;
0067FE 4710     	DT      	R7			;
006800 8BF5     	BF      	#1EA			;
006802 4F26     	LDS.L   	@R15+,PR		;
006804 69F6     	MOV.L   	@R15+,R9		;
006806 000B     	RTS     				;
006808 68F6     	MOV.L   	@R15+,R8		;
00680A 4515     	CMP/PL  	R5			;
00680C 890F     	BT      	#01E			;
00680E E400     	MOV     	#00,R4		;
006810 880C     	CMP/EQ  	#0C,R0		;
006812 8D1E     	BT/S    	#03C			;
006814 E501     	MOV     	#01,R5		;
006816 880E     	CMP/EQ  	#0E,R0		;
006818 8D1B     	BT/S    	#036			;
00681A E502     	MOV     	#02,R5		;
00681C E408     	MOV     	#08,R4		;
00681E 880D     	CMP/EQ  	#0D,R0		;
006820 8D17     	BT/S    	#02E			;
006822 E501     	MOV     	#01,R5		;
006824 880F     	CMP/EQ  	#0F,R0		;
006826 8D14     	BT/S    	#028			;
006828 E502     	MOV     	#02,R5		;
00682A A014     	BRA     	#0028			;
00682C 255A     	XOR     	R5,R5			;
00682E 4208     	SHLL2   	R2			;
006830 4208     	SHLL2   	R2			;
006832 4510     	DT      	R5			;
006834 8F0D     	BF/S    	#01A			;
006836 320C     	ADD     	R0,R2			;
006838 7202     	ADD     	#02,R2		;
00683A 4801     	SHLR    	R8			;
00683C 8904     	BT      	#008			;
00683E 7801     	ADD     	#01,R8		;
006840 6143     	MOV     	R4,R1			;
006842 4108     	SHLL2   	R1			;
006844 A003     	BRA     	#0006			;
006846 4108     	SHLL2   	R1			;
006848 214B     	OR      	R4,R1			;
00684A 2910     	MOV.B   	R1,@R9		;
00684C 7901     	ADD     	#01,R9		;
00684E 4210     	DT      	R2			;
006850 8BF3     	BF      	#1E6			;
006852 000B     	RTS     				;
006854 0009     	NOP     				;
006856 4801     	SHLR    	R8			;
006858 8904     	BT      	#008			;
00685A 7801     	ADD     	#01,R8		;
00685C 6103     	MOV     	R0,R1			;
00685E 4108     	SHLL2   	R1			;
006860 000B     	RTS     				;
006862 4108     	SHLL2   	R1			;
006864 210B     	OR      	R0,R1			;
006866 2910     	MOV.B   	R1,@R9		;
006868 000B     	RTS     				;
00686A 7901     	ADD     	#01,R9		;

L00686C:
	dc.b "PRODUCED BY or UNDERLICENSE FROM.SEGA ENTERPRISES,LTD."





L006EBC:
	dc.b	"COPYRIGHT(C) SEGA ENTERPRISES,LTD. 1994 ALL RIGHTS RESERVED     "

L006F00:
006F00 A00E     	BRA     	L006F20		;
006F02 0009     	NOP     				;
L006F04:
	dc.b	"For JAPAN.                  "

L006F20:
006F20 A00E     	BRA     	L006F40		;
006F22 0009     	NOP     				;
L006F24:
	dc.b	"For TAIWAN and PHILIPINES.  "

L006F40:
006F40 A00E     	BRA     	L006F60		;
006F42 0009     	NOP     				;
L006F44:
	dc.b	"For USA and CANADA.         "

L006F60:
006F60 A00E     	BRA     	L006F80		;
006F62 0009     	NOP     				;
L006F64:
	dc.b	"For BRAZIL.                 "

L006F80:
006F80 A00E     	BRA     	L006FA0		;
006F82 0009     	NOP     				;
L006F84:
	dc.b	"For KOREA.                  "

L006FA0:
006FA0 A00E     	BRA     	L006FC0		;
006FA2 0009     	NOP     				;
L006FA4:
	dc.b	"For ASIA PAL area.          "

L006FC0:
006FC0 A00E     	BRA     	L006FE0		;
006FC2 0009     	NOP     				;
L006FC4:
	dc.b	"For EUROPE.                 "

L006FE0:
006FE0 A00E     	BRA     	L007000		;
006FE2 0009     	NOP     				;
L006FE4:
	dc.b	"For LATIN AMERICA.          "

