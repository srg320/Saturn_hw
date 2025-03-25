0000: 18030F	IF     JUMP $0030			;//reset
0001: 0A001F	IF     RTI				;
0002: 0A001F	IF     RTI				;
0003: 0A001F	IF     RTI				;
0004: 0A001F	IF     RTI				;
0005: 0A001F	IF     RTI				;
0006: 0A001F	IF     RTI				;
0007: 0A001F	IF     RTI				;
0008: 0A001F	IF     RTI				;
0009: 0A001F	IF     RTI				;
000A: 0A001F	IF     RTI				;
000B: 0A001F	IF     RTI				;
000C: 1A142F	IF     JUMP $2142			;//IRQL0
000D: 0A001F	IF     RTI				;
000E: 0A001F	IF     RTI				;
000F: 0A001F	IF     RTI				;
0010: 0A001F	IF     RTI				;
0011: 0A001F	IF     RTI				;
0012: 0A001F	IF     RTI				;
0013: 0A001F	IF     RTI				;
0014: 0A001F	IF     RTI				;
0015: 0A001F	IF     RTI				;
0016: 0A001F	IF     RTI				;
0017: 0A001F	IF     RTI				;
0018: 0A001F	IF     RTI				;
0019: 0A001F	IF     RTI				;
001A: 0A001F	IF     RTI				;
001B: 0A001F	IF     RTI				;
001C: 0A001F	IF     RTI				;//BDMA int
001D: 0A001F	IF     RTI				;
001E: 0A001F	IF     RTI				;
001F: 0A001F	IF     RTI				;
0020: 0A001F	IF     RTI				;
0021: 0A001F	IF     RTI				;
0022: 0A001F	IF     RTI				;
0023: 0A001F	IF     RTI				;
0024: 0A001F	IF     RTI				;
0025: 0A001F	IF     RTI				;
0026: 0A001F	IF     RTI				;
0027: 0A001F	IF     RTI				;
0028: 0A001F	IF     RTI				;
0029: 0A001F	IF     RTI				;
002A: 0A001F	IF     RTI				;
002B: 0A001F	IF     RTI				;
002C: 0A001F	IF     RTI				;
002D: 0A001F	IF     RTI				;
002E: 0A001F	IF     RTI				;
002F: 0A001F	IF     RTI				;

reset:
0030: 340008	       L0 = #0000			;
0031: 340009	       L1 = #0000			;
0032: 34000A	       L2 = #0000			;
0033: 34000B	       L3 = #0000			;
0034: 380008	       L4 = #0000			;
0035: 380009	       L5 = #0000			;
0036: 38000A	       L6 = #0000			;
0037: 38000B	       L7 = #0000			;
0038: 02020F	IF     RESET FL1			;
0039: 1F794F	IF     CALL $3794			;init();
003A: 02030F	IF     SET FL1				;
L003B:							;while (1) {
003B: 1F8FEF	IF     CALL $38FE			;  check_for_reboot();
003C: 040060	       ENA INTS				;
003D: 000000	       NOP				;
003E: 040040	       DIS INTS				;
003F: 83FE4A	       AR = DM($3FE4)			;
0040: 2A7AAA	       NONE = AR  + 0  			;
0041: 1803C1	IF NE  JUMP $003C			;  while (BWCOUNT);
0042: 040060	       ENA INTS				;
0043: 040060	       ENA INTS				;
0044: 000000	       NOP				;
0045: 040040	       DIS INTS				;
0046: 83FE4A	       AR = DM($3FE4)			;
0047: 2A7AAA	       NONE = AR  + 0  			;
0048: 180431	IF NE  JUMP $0043			;  while (BWCOUNT);
0049: 040060	       ENA INTS				;
004A: 1E63DF	IF     CALL $263D			;  check_host_cmd();
004B: 1F660F	IF     CALL $3660			;  L3660();
004C: 1F5A3F	IF     CALL $35A3			;  clear_wave_buf();
004D: 400000	       AX0 = #0000			;
004E: 93BDB0	       DM($3BDB) = AX0			;  int i = 0;
L004F:
004F: 37E001	       I1 = #3E00			;  for (;i<0x10;i++) {
0050: 83BDB0	       AX0 = DM($3BDB)			;
0051: 400084	       AY0 = #0008			;
0052: 22E00F	IF     AR = AX0 - AY0			;
0053: 1806E5	IF GE  JUMP $006E			;    if (i < 8) {
0054: 040060	       ENA INTS				;
0055: 000000	       NOP				;
0056: 040040	       DIS INTS				;
0057: 83FE4A	       AR = DM($3FE4)			;
0058: 2A7AAA	       NONE = AR  + 0  			;
0059: 180541	IF NE  JUMP $0054			;      while (BWCOUNT);
005A: 040060	       ENA INTS				;
005B: 040060	       ENA INTS				;
005C: 000000	       NOP				;
005D: 040040	       DIS INTS				;
005E: 83FE4A	       AR = DM($3FE4)			;
005F: 2A7AAA	       NONE = AR  + 0  			;
0060: 1805B1	IF NE  JUMP $005B			;      while (BWCOUNT);
0061: 040060	       ENA INTS				;
0062: 1FC35F	IF     CALL $3C35			;      u16 ret = L3C35();
0063: 93BDCA	       DM($3BDC) = AR			;
0064: 83BDBA	       AR = DM($3BDB)			;
0065: 26E29F	IF     AF = AR  - 0004			;
0066: 1E3F14	IF LT  CALL $23F1			;      if (i < 4) L23F1();
0067: 83BDCA	       AR = DM($3BDC)			;
0068: 227A0F	IF     AR = AR  + 0  			;
0069: 180814	IF LT  JUMP $0081			;      if (ret < 0) continue;
006A: 37E000	       I0 = #3E00			;
006B: 83BDBA	       AR = DM($3BDB)			;
006C: 1F0B1F	IF     CALL $30B1			;      L30B1();
006D: 1807AF	IF     JUMP $007A			;    }
L006E:
006E: 0D000A	       AX0 = AR				;
006F: 400044	       AY0 = #0004			;
0070: 2AE2AA	       NONE = AR  - AY0			;
0071: 180755	IF GE  JUMP $0075			;    else if (i < 12) {
0072: 1E576F	IF     CALL $2576			;      if (L2576() == 0)
0073: 180810	IF EQ  JUMP $0081			;        continue;
0074: 1807AF	IF     JUMP $007A			;    }
L0075:
0075: 22E29F	IF     AR = AR  - 0004			;    else {
0076: 0D00EA	       SR0 = AR				;
0077: 1FA42F	IF     CALL $3A42			;      if (L3A42() <= 0)
0078: 180813	IF LE  JUMP $0081			;        continue;
0079: 1807AF	IF     JUMP $007A			;    }
L007A:
007A: 37E000	       I0 = #3E00			;
007B: 83BDBE	       SR0 = DM($3BDB)			;
007C: 1F999F	IF     CALL $3999			;  L3999(i,0x3E00);
007D: 37E000	       I0 = #3E00			;
007E: 83BDBE	       SR0 = DM($3BDB)			;
007F: 1F5AAF	IF     CALL $35AA			;  L35AA(i,0x3E00);
0080: 18081F	IF     JUMP $0081			;
L0081:
0081: 83BDB0	       AX0 = DM($3BDB)			;
0082: 22601F	IF     AR = AX0 + 0001			;
0083: 400104	       AY0 = #0010			;
0084: 2AE2AA	       NONE = AR  - AY0			;
0085: 180885	IF GE  JUMP $0088			;
0086: 93BDBA	       DM($3BDB) = AR			;
0087: 1804FF	IF     JUMP $004F			;  }
L0088:
0088: 02020F	       RESET FL1			;
0089: 1C08CF	IF     CALL $008C			;  update_sound_buf();
008A: 02030F	       SET FL1				;
008B: 1803BF	IF     JUMP $003B			;}

L008C:							;void update_sound_buf()
008C: 3B1A30	       I4 = #31A3			;
008D: 874651	       I1 = DM($3465)			;du* next = sound_buf_pos;
008E: 340016	       M2 = #0001			;
008F: 342007	       M3 = #0200			;
0090: 344009	       L1 = #0400			;
0091: 0D0101	       AX0 = I1				;du* curr = next;
0092: 430004	       AY0 = #3000			;
0093: 090007	       MODIFY (I1,M3)			;next += 0x0200;
0094: 340009	       L1 = #0000			;
0095: 974651	       DM($3465) = I1			;sound_buf_pos = next;
0096: 430001	       AX1 = #3000			;
0097: 22715F	IF     AR = AX1 + 0200			;
0098: 2B20AA	       NONE = AY0 - AX0			;
0099: 180A10	IF EQ  JUMP $00A1			;if (curr != 0x3000)
L009A:
009A: 430001	       AX1 = #3000			;  while (1) {
009B: 22715F	IF     AR = AX1 + 0200			;
009C: 0D0243	       AY0 = I7				;
009D: 2AE2AA	       NONE = AR  - AY0			;
009E: 180A84	IF LT  JUMP $00A8			;    if (I7 >= 0x3200) break;
009F: 1E167F	IF     CALL $2167			;    send_to_host();
00A0: 1809AF	IF     JUMP $009A			;  }
L00A1:							;else 
00A1: 430001	       AX1 = #3000			;  while (1) {
00A2: 22715F	IF     AR = AX1 + 0200			;
00A3: 0D0243	       AY0 = I7				;
00A4: 2AE2AA	       NONE = AR  - AY0			;
00A5: 180A82	IF GT  JUMP $00A8			;    if (I7 <= 0x3200) break;
00A6: 1E167F	IF     CALL $2167			;    send_to_host();
00A7: 180A1F	IF     JUMP $00A1			;  }
L00A8:
00A8: 3B1A30	       I4 = #31A3			;
00A9: 3C2005	       CNTR = #0200			;
00AA: 340015	       M1 = #0001			;
00AB: 380015	       M5 = #0001			;
00AC: 140AEE	       DO $00AE UNTIL NCE		;for (int i=0;i<0x200;i++)
00AD: 500001	       AX0 = PM(I4,M5)			;  next[i] = buf_31A3[i];
00AE: 680005	       DM(I1,M1) = AX0			;
00AF: 0A000F	IF     RTS				;


2142: 000000						;pu24 bdma_vect_save;

IRQL0:							;void irql0_handler()
2142: 0C0030	       ENA SEC_REG			;
2143: 9B46B2	       DM($346B) = I6			;
2144: 9B46C6	       DM($346C) = M6			;
2145: 9B46DA	       DM($346D) = L6			;
2146: 8B4672	       I6 = DM($3467)			;du* ptr = host_in_fifo_wpos;
2147: 38064A	       L6 = #0064			;
2148: 380016	       M6 = #0001			;
2149: 010030	       AX0 = IO($3)			;u16 host_in_data = HOST;
214A: 2398DF	IF     AR = AX0 & 8000			;
214B: 1A14F1	IF NE  JUMP $214F			;if (!(host_in_data & 0x8000)) {
L214C:
214C: 78000A	       DM(I6,M6) = AX0			;  *ptr++ = host_in_data;
214D: 9B4672	       DM($3467) = I6			;  host_in_fifo_wpos = ptr;
214E: 1A157F	IF     JUMP $2157			;}
L214F:							;else {
214F: 2398FF	IF     AR = AX0 & 7FFF			;
2150: 22FA5F	IF     AR = AR  - 2000			;
2151: 1A1551	IF NE  JUMP $2155			;  if (host_in_data & 0x7FFF == 0x2000) 
2152: 40001A	       AR = #0001			;
2153: 93BD7A	       DM($3BD7) = AR			;    host_cmd2000 = 1;
2154: 1A157F	IF     JUMP $2157			;  else
2155: 1A14CF	IF     JUMP $214C			;   goto L214C;
2156: 1A157F	IF     JUMP $2157			;}
L2157:
2157: 8B46B2	       I6 = DM($346B)			;
2158: 8B46C6	       M6 = DM($346C)			;
2159: 8B46DA	       L6 = DM($346D)			;
215A: 0A001F	IF     RTI				;

L215B:							;void add_host_resp(u16 val)//arg-SR0
215B: 9B46E2	       DM($346E) = I6			;
215C: 9B46F6	       DM($346F) = M6			;
215D: 9B470A	       DM($3470) = L6			;
215E: 8B4692	       I6 = DM($3469)			;du16* buf = host_fifo_wpos;
215F: 38010A	       L6 = #0010			;
2160: 380016	       M6 = #0001			;
2161: 7800EA	       DM(I6,M6) = SR0			;*buf++ = val;
2162: 9B4692	       DM($3469) = I6			;host_fifo_wpos = buf;
2163: 8B46E2	       I6 = DM($346E)			;
2164: 8B46F6	       M6 = DM($346F)			;
2165: 8B470A	       L6 = DM($3470)			;
2166: 0A000F	IF     RTS				;

L2167:							;void send_to_host()
2167: 9B46E2	       DM($346E) = I6			;
2168: 9B46F6	       DM($346F) = M6			;
2169: 9B470A	       DM($3470) = L6			;
216A: 83FE5A	       AR = DM($3FE5)			;u8 pfi = PFDATA;
216B: 23821F	IF     AR = AR  & 0001			;
216C: 0A0000	IF EQ  RTS				;if (!(pfi & 1)) return;
216D: 8346AA	       AR = DM($346A)			;du16* rpos = host_fifo_rpos;
216E: 834694	       AY0 = DM($3469)			;du16* wpos = host_fifo_wpos;
216F: 2AE2AA	       NONE = AR  - AY0			;
2170: 0A0000	IF EQ  RTS				;if (wpos == rpos) return;
2171: 0D082A	       I6 = AR				;
2172: 380016	       M6 = #0001			;
2173: 38010A	       L6 = #0010			;
2174: 7000AA	       AR = DM(I6,M6)			;
2175: 01803A	       IO($3) = AR			;HOST = *rpos++;
2176: 9B46A2	       DM($346A) = I6			;host_fifo_rpos = rpos;
2177: 38000A	       L6 = #0000			;
2178: 8B46E2	       I6 = DM($346E)			;
2179: 8B46F6	       M6 = DM($346F)			;
217A: 8B470A	       L6 = DM($3470)			;
217B: 0A000F	IF     RTS				;

21C4:							;pu24 dmem_init_tbl[] = {	//addr,len,val
	dc.w	0x3AE800,0x001000,0xFFFFFF		;
	dc.w	0x3C0000,0x008400,0x000000 		;
	dc.w	0x3C0000,0x000C00,0x700000 		;
	dc.w	0x3BA700,0x002700,0x0FF000 		;
	dc.w	0x3B4000,0x001000,0xFFFFFF 		;
	dc.w	0x3F0100,0x000100,0x0F0000 		;
	dc.w	0x346700,0x000100,0x340000 		;
	dc.w	0x346800,0x000100,0x340000 		;
	dc.w	0x346A00,0x000100,0x348000 		;
	dc.w	0x346900,0x000100,0x348000 		;
	dc.w	0x000000,0x000000,0x000000		;};


2300:							;pu24 wave_tbl[] = {
	dc.w	0xC00100,0xC06000,0xC0BF00,0xC11F00
	dc.w	0xC18000,0xC1E100,0xC24300,0xC2A500
	dc.w	0xC30800,0xC36B00,0xC3CF00,0xC43400
	dc.w	0xC49900,0xC4FF00,0xC56500,0xC5CC00
	dc.w	0xC63300,0xC69B00,0xC70400,0xC76D00
	dc.w	0xC7D700,0xC84200,0xC8AD00,0xC91900
	dc.w	0xC98500,0xC9F200,0xCA6000,0xCACE00
	dc.w	0xCB3D00,0xCBAD00,0xCC1D00,0xCC8E00
	dc.w	0xCCFF00,0xCD7100,0xCDE400,0xCE5800
	dc.w	0xCECC00,0xCF4100,0xCFB600,0xD02D00
	dc.w	0xD0A300,0xD11B00,0xD19300,0xD20C00
	dc.w	0xD28600,0xD30000,0xD37B00,0xD3F700
	dc.w	0xD47400,0xD4F100,0xD56F00,0xD5EE00
	dc.w	0xD66D00,0xD6ED00,0xD76E00,0xD7F000
	dc.w	0xD87200,0xD8F500,0xD97900,0xD9FE00
	dc.w	0xDA8300,0xDB0900,0xDB9000,0xDC1800
	dc.w	0xDCA100,0xDD2A00,0xDDB400,0xDE3F00
	dc.w	0xDECB00,0xDF5800,0xDFE500,0xE07300
	dc.w	0xE10200,0xE19200,0xE22300,0xE2B400
	dc.w	0xE34700,0xE3DA00,0xE46E00,0xE50300
	dc.w	0xE59900,0xE62F00,0xE6C700,0xE75F00
	dc.w	0xE7F900,0xE89300,0xE92E00,0xE9CA00
	dc.w	0xEA6700,0xEB0400,0xEBA300,0xEC4300
	dc.w	0xECE300,0xED8500,0xEE2700,0xEECB00
	dc.w	0xEF6F00,0xF01400,0xF0BA00,0xF16100
	dc.w	0xF20A00,0xF2B300,0xF35D00,0xF40800
	dc.w	0xF4B400,0xF56100,0xF60F00,0xF6BE00
	dc.w	0xF76E00,0xF81F00,0xF8D100,0xF98500
	dc.w	0xFA3900,0xFAEE00,0xFBA400,0xFC5C00
	dc.w	0xFD1400,0xFDCE00,0xFE8800,0xFF4400
	dc.w	0x000000,0x00BD00,0x017C00,0x023C00
	dc.w	0x02FD00,0x03C000,0x048300,0x054800
	dc.w	0x060D00,0x06D400,0x079C00,0x086500
	dc.w	0x092F00,0x09FB00,0x0AC700,0x0B9500
	dc.w	0x0C6400,0x0D3400,0x0E0600,0x0ED800
	dc.w	0x0FAC00,0x108100,0x115800,0x122F00
	dc.w	0x130800,0x13E200,0x14BD00,0x159A00
	dc.w	0x167800,0x175700,0x183700,0x191900
	dc.w	0x19FC00,0x1AE000,0x1BC600,0x1CAD00
	dc.w	0x1D9500,0x1E7F00,0x1F6A00,0x205700
	dc.w	0x214400,0x223300,0x232400,0x241600
	dc.w	0x250900,0x25FE00,0x26F400,0x27EC00
	dc.w	0x28E500,0x29DF00,0x2ADB00,0x2BD900
	dc.w	0x2CD700,0x2DD800,0x2EDA00,0x2FDD00
	dc.w	0x30E200,0x31E800,0x32F000,0x33F900
	dc.w	0x350400,0x361000,0x371E00,0x382E00
	dc.w	0x393F00,0x3A5200,0x3B6600,0x3C7C00
	dc.w	0x3D9400,0x3EAD00,0x3FC800,0x40E400
	dc.w	0x420200,0x432200,0x444300,0x456600
	dc.w	0x468B00,0x47B100,0x48D900,0x4A0300
	dc.w	0x4B2F00,0x4C5C00,0x4D8B00,0x4EBC00
	dc.w	0x4FEF00,0x512300,0x525900,0x539100
	dc.w	0x54CB00,0x560600,0x574400,0x588300
	dc.w	0x59C400,0x5B0700,0x5C4C00,0x5D9300
	dc.w	0x5EDB00,0x602600,0x617200,0x62C000
	dc.w	0x641100,0x656300,0x66B700,0x680D00
	dc.w	0x696500,0x6ABF00,0x6C1C00,0x6D7A00
	dc.w	0x6EDA00,0x703C00,0x71A000,0x730700
	dc.w	0x746F00,0x75DA00,0x774600,0x78B500	
	dc.w	0x7A2600,0x7B9900,0x7D0E00,0x7E8500	;};
	dc.w	0x7FFF00

L23F1:							;
23F1: 93A0EA	       DM($3A0E) = AR			;
23F2: 040060	       ENA INTS				;
23F3: 000000	       NOP				;
23F4: 040040	       DIS INTS				;
23F5: 83FE40	       AX0 = DM($3FE4)			;
23F6: 2A78AA	       NONE = AX0 + 0  			;
23F7: 1A3F21	IF NE  JUMP $23F2			;
23F8: 040060	       ENA INTS				;
23F9: 040060	       ENA INTS				;
23FA: 000000	       NOP				;
23FB: 040040	       DIS INTS				;
23FC: 83FE40	       AX0 = DM($3FE4)			;
23FD: 2A78AA	       NONE = AX0 + 0  			;
23FE: 1A3F91	IF NE  JUMP $23F9			;
23FF: 040060	       ENA INTS				;
2400: 040060	       ENA INTS				;
2401: 000000	       NOP				;
2402: 040040	       DIS INTS				;
2403: 83FE40	       AX0 = DM($3FE4)			;
2404: 2A78AA	       NONE = AX0 + 0  			;
2405: 1A4001	IF NE  JUMP $2400			;
2406: 040060	       ENA INTS				;
2407: 040060	       ENA INTS				;
2408: 000000	       NOP				;
2409: 040040	       DIS INTS				;
240A: 83FE40	       AX0 = DM($3FE4)			;
240B: 2A78AA	       NONE = AX0 + 0  			;
240C: 1A4071	IF NE  JUMP $2407			;
240D: 040060	       ENA INTS				;
240E: 0D046A	       M2 = AR				;
240F: 340004	       M0 = #0000			;
2410: 37A320	       I0 = #3A32			;
2411: 090002	       MODIFY (I0,M2)			;
2412: 6000E0	       SR0 = DM(I0,M0)			;
2413: 93A0FE	       DM($3A0F) = SR0			;
2414: 2A7EAA	       NONE = SR0 + 0  			;
2415: 0A0000	IF EQ  RTS				;
2416: 1E4584	IF LT  CALL $2458			;
2417: 37A180	       I0 = #3A18			;
2418: 87A0E6	       M2 = DM($3A0E)			;
2419: 090002	       MODIFY (I0,M2)			;
241A: 340004	       M0 = #0000			;
241B: 6000A0	       AR = DM(I0,M0)			;
241C: 227A0F	IF     AR = AR  + 0  			;
241D: 1A4363	IF LE  JUMP $2436			;
241E: 22E21F	IF     AR = AR  - 0001			;
241F: 6800A0	       DM(I0,M0) = AR			;
2420: 37A140	       I0 = #3A14			;
2421: 090002	       MODIFY (I0,M2)			;
2422: 6000A0	       AR = DM(I0,M0)			;
2423: 1A4261	IF NE  JUMP $2426			;
2424: 400008	       SI = #0000			;
2425: 680080	       DM(I0,M0) = SI			;
2426: 37A0A0	       I0 = #3A0A			;
2427: 090002	       MODIFY (I0,M2)			;
2428: 600040	       AY0 = DM(I0,M0)			;
2429: 22620F	IF     AR = AR  + AY0			;
242A: 1A4304	IF LT  JUMP $2430			;
242B: 43C004	       AY0 = #3C00			;
242C: 2AE2AA	       NONE = AR  - AY0			;
242D: 1A4353	IF LE  JUMP $2435			;
242E: 43C00A	       AR = #3C00			;
242F: 1A435F	IF     JUMP $2435			;
2430: 43C004	       AY0 = #3C00			;
2431: 2A62AA	       NONE = AR  + AY0			;
2432: 1A4355	IF GE  JUMP $2435			;
2433: 4C400A	       AR = #C400			;
2434: 1A435F	IF     JUMP $2435			;
2435: 6800A0	       DM(I0,M0) = AR			;
2436: 37A0A0	       I0 = #3A0A			;
2437: 87A0E6	       M2 = DM($3A0E)			;
2438: 090002	       MODIFY (I0,M2)			;
2439: 600080	       SI = DM(I0,M0)			;
243A: 0F30F9	       SR = ASHIFT SI  BY #F9 (LO)	;
243B: 423784	       AY0 = #2378			;
243C: 22660F	IF     AR = SR0 + AY0			;
243D: 0D080A	       I4 = AR				;
243E: 5000A0	       AR = PM(I4,M4)			;
243F: 227ADF	IF     AR = AR  + 8000			;
2440: 37A1C0	       I0 = #3A1C			;
2441: 090002	       MODIFY (I0,M2)			;
2442: 600080	       SI = DM(I0,M0)			;
2443: 0F1001	       SR = LSHIFT SI  BY #01 (LO)	;
2444: 0D00BE	       MR0 = SR0			;
2445: 40000C	       MR1 = #0000			;
2446: 0C2000	       DIS M_MODE			;
2447: 401006	       MY0 = #0100			;
2448: 21620F	IF     MR = MR + AR  * MY0 (UU)		;
2449: 0D00EA	       SR0 = AR				;
244A: 0D00AC	       AR = MR1				;
244B: 37A360	       I0 = #3A36			;
244C: 090002	       MODIFY (I0,M2)			;
244D: 6800A2	       DM(I0,M2) = AR			;
244E: 350000	       I0 = #1000			;
244F: 0C3000	       ENA M_MODE			;
2450: 402002	       MX0 = #0200			;
2451: 0D0166	       MY0 = M2				;
2452: 20E00F	IF     MR = MX0 * MY0 (UU)		;
2453: 0D047B	       M3 = MR0				;
2454: 090003	       MODIFY (I0,M3)			;
2455: 0D0510	       I1 = I0				;
2456: 1E4BEF	IF     CALL $24BE			;
2457: 0A000F	IF     RTS				;


2458: 23E60F	IF     AR = ABS AY0			;
2459: 6800A0	       DM(I0,M0) = AR			;
245A: 340015	       M1 = #0001			;
245B: 37A2A0	       I0 = #3A2A			;
245C: 090002	       MODIFY (I0,M2)			;
245D: 090002	       MODIFY (I0,M2)			;
245E: 40000A	       AR = #0000			;
245F: 6800A1	       DM(I0,M1) = AR			;
2460: 6800A1	       DM(I0,M1) = AR			;
2461: 37A1C0	       I0 = #3A1C			;
2462: 090002	       MODIFY (I0,M2)			;
2463: 6800A2	       DM(I0,M2) = AR			;
2464: 37A702	       I2 = #3A70			;
2465: 09000A	       MODIFY (I2,M2)			;
2466: 6000E8	       SR0 = DM(I2,M0)			;
2467: 0F1608	       SR = LSHIFT SR0 BY #08 (LO)	;
2468: 01801F	       IO($1) = SR1			;
2469: 37A782	       I2 = #3A78			;
246A: 09000A	       MODIFY (I2,M2)			;
246B: 60000A	       AX0 = DM(I2,M2)			;
246C: 93FE20	       DM($3FE2) = AX0			;
246D: 43A7C0	       AX0 = #3A7C			;
246E: 93FE10	       DM($3FE1) = AX0			;
246F: 400035	       AY1 = #0003			;
2470: 23AE0F	IF     AR = SR0 | AY1			;
2471: 93FE3A	       DM($3FE3) = AR			;
2472: 40003A	       AR = #0003			;
2473: 93FE4A	       DM($3FE4) = AR			;
2474: 40003A	       AR = #0003			;
2475: 1E48BF	IF     CALL $248B			;
2476: 164791	       DO $2479 UNTIL NE 		;
2477: 83FE4A	       AR = DM($3FE4)			;
2478: 227A0F	IF     AR = AR  + 0  			;
2479: 000000	       NOP				;
247A: 83A7D8	       SI = DM($3A7D)			;
247B: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
247C: 83A7E8	       SI = DM($3A7E)			;
247D: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
247E: 83A7C8	       SI = DM($3A7C)			;
247F: 37A600	       I0 = #3A60			;
2480: 090002	       MODIFY (I0,M2)			;
2481: 090002	       MODIFY (I0,M2)			;
2482: 340015	       M1 = #0001			;
2483: 680081	       DM(I0,M1) = SI			;
2484: 6800E1	       DM(I0,M1) = SR0			;
2485: 37A680	       I0 = #3A68			;
2486: 090002	       MODIFY (I0,M2)			;
2487: 090002	       MODIFY (I0,M2)			;
2488: 680081	       DM(I0,M1) = SI			;
2489: 6800E1	       DM(I0,M1) = SR0			;
248A: 0A000F	IF     RTS				;
248B: 37A740	       I0 = #3A74			;
248C: 87A0E4	       M0 = DM($3A0E)			;
248D: 090000	       MODIFY (I0,M0)			;
248E: 340004	       M0 = #0000			;
248F: 600040	       AY0 = DM(I0,M0)			;
2490: 22620F	IF     AR = AR  + AY0			;
2491: 279A9F	IF     AF = AR  & 4000			;
2492: 6800A0	       DM(I0,M0) = AR			;
2493: 37A780	       I0 = #3A78			;
2494: 87A0E4	       M0 = DM($3A0E)			;
2495: 090000	       MODIFY (I0,M0)			;
2496: 340004	       M0 = #0000			;
2497: 6800A0	       DM(I0,M0) = AR			;
2498: 0A0000	IF EQ  RTS				;
2499: 43FFF4	       AY0 = #3FFF			;
249A: 23820F	IF     AR = AR  & AY0			;
249B: 6800A0	       DM(I0,M0) = AR			;
249C: 37A3A0	       I0 = #3A3A			;
249D: 87A0E4	       M0 = DM($3A0E)			;
249E: 090000	       MODIFY (I0,M0)			;
249F: 340004	       M0 = #0000			;
24A0: 600040	       AY0 = DM(I0,M0)			;
24A1: 22200F	IF     AR = AY0 + 1			;
24A2: 6800A0	       DM(I0,M0) = AR			;
24A3: 37A700	       I0 = #3A70			;
24A4: 87A0E4	       M0 = DM($3A0E)			;
24A5: 090000	       MODIFY (I0,M0)			;
24A6: 340004	       M0 = #0000			;
24A7: 6800A0	       DM(I0,M0) = AR			;
24A8: 0A000F	IF     RTS				;
24A9: 37A780	       I0 = #3A78			;
24AA: 87A0E4	       M0 = DM($3A0E)			;
24AB: 090000	       MODIFY (I0,M0)			;
24AC: 340004	       M0 = #0000			;
24AD: 600040	       AY0 = DM(I0,M0)			;
24AE: 22620F	IF     AR = AR  + AY0			;
24AF: 279A9F	IF     AF = AR  & 4000			;
24B0: 6800A0	       DM(I0,M0) = AR			;
24B1: 0A0000	IF EQ  RTS				;
24B2: 43FFF4	       AY0 = #3FFF			;
24B3: 23820F	IF     AR = AR  & AY0			;
24B4: 6800A0	       DM(I0,M0) = AR			;
24B5: 37A700	       I0 = #3A70			;
24B6: 87A0E4	       M0 = DM($3A0E)			;
24B7: 090000	       MODIFY (I0,M0)			;
24B8: 340004	       M0 = #0000			;
24B9: 600040	       AY0 = DM(I0,M0)			;
24BA: 22200F	IF     AR = AY0 + 1			;
24BB: 6800A0	       DM(I0,M0) = AR			;
24BC: 0A000F	IF     RTS				;
24BD: 1A554F	IF     JUMP $2554			;
24BE: 87A0E6	       M2 = DM($3A0E)			;
24BF: 37A702	       I2 = #3A70			;
24C0: 09000A	       MODIFY (I2,M2)			;
24C1: 6000E8	       SR0 = DM(I2,M0)			;
24C2: 0F1608	       SR = LSHIFT SR0 BY #08 (LO)	;
24C3: 01801F	       IO($1) = SR1			;
24C4: 37A782	       I2 = #3A78			;
24C5: 09000A	       MODIFY (I2,M2)			;
24C6: 60000A	       AX0 = DM(I2,M2)			;
24C7: 93FE20	       DM($3FE2) = AX0			;
24C8: 350000	       I0 = #1000			;
24C9: 0C3000	       ENA M_MODE			;
24CA: 402002	       MX0 = #0200			;
24CB: 0D0166	       MY0 = M2				;
24CC: 20E00F	IF     MR = MX0 * MY0 (UU)		;
24CD: 0D047B	       M3 = MR0				;
24CE: 090003	       MODIFY (I0,M3)			;
24CF: 0C2000	       DIS M_MODE			;
24D0: 97FE10	       DM($3FE1) = I0			;
24D1: 400015	       AY1 = #0001			;
24D2: 23AE0F	IF     AR = SR0 | AY1			;
24D3: 93FE3A	       DM($3FE3) = AR			;
24D4: 37A360	       I0 = #3A36			;
24D5: 090002	       MODIFY (I0,M2)			;
24D6: 600040	       AY0 = DM(I0,M0)			;
24D7: 340015	       M1 = #0001			;
24D8: 37A600	       I0 = #3A60			;
24D9: 090002	       MODIFY (I0,M2)			;
24DA: 090002	       MODIFY (I0,M2)			;
24DB: 600011	       AX1 = DM(I0,M1)			;
24DC: 600001	       AX0 = DM(I0,M1)			;
24DD: 22E00F	IF     AR = AX0 - AY0			;
24DE: 2AD9EA	       AR = AX1 - 0   + C - 1, SR0 = AR	;
24DF: 0D00FA	       SR1 = AR				;
24E0: 1A4FE4	IF LT  JUMP $24FE			;
24E1: 1A54B2	IF GT  JUMP $254B			;
24E2: 2A7EAA	       NONE = SR0 + 0  			;
24E3: 1A54B1	IF NE  JUMP $254B			;
24E4: 93FE44	       DM($3FE4) = AY0			;
24E5: 340015	       M1 = #0001			;
24E6: 340004	       M0 = #0000			;
24E7: 37A600	       I0 = #3A60			;
24E8: 090002	       MODIFY (I0,M2)			;
24E9: 090002	       MODIFY (I0,M2)			;
24EA: 37A681	       I1 = #3A68			;
24EB: 090006	       MODIFY (I1,M2)			;
24EC: 090006	       MODIFY (I1,M2)			;
24ED: 600015	       AX1 = DM(I1,M1)			;
24EE: 680011	       DM(I0,M1) = AX1			;
24EF: 600015	       AX1 = DM(I1,M1)			;
24F0: 680011	       DM(I0,M1) = AX1			;
24F1: 37A700	       I0 = #3A70			;
24F2: 090002	       MODIFY (I0,M2)			;
24F3: 37A3A1	       I1 = #3A3A			;
24F4: 090006	       MODIFY (I1,M2)			;
24F5: 600015	       AX1 = DM(I1,M1)			;
24F6: 680011	       DM(I0,M1) = AX1			;
24F7: 37A780	       I0 = #3A78			;
24F8: 090002	       MODIFY (I0,M2)			;
24F9: 37A741	       I1 = #3A74			;
24FA: 090006	       MODIFY (I1,M2)			;
24FB: 600015	       AX1 = DM(I1,M1)			;
24FC: 680011	       DM(I0,M1) = AX1			;
24FD: 0A000F	IF     RTS				;
24FE: 233E0F	IF     AR = 0   - SR0			;
24FF: 93A7FA	       DM($3A7F) = AR			;
2500: 37A3A1	       I1 = #3A3A			;
2501: 090006	       MODIFY (I1,M2)			;
2502: 6000A4	       AR = DM(I1,M0)			;
2503: 93A3EA	       DM($3A3E) = AR			;
2504: 37A741	       I1 = #3A74			;
2505: 090006	       MODIFY (I1,M2)			;
2506: 6000A4	       AR = DM(I1,M0)			;
2507: 93A3FA	       DM($3A3F) = AR			;
2508: 83FE14	       AY0 = DM($3FE1)			;
2509: 22600F	IF     AR = AX0 + AY0			;
250A: 93AC0A	       DM($3AC0) = AR			;
250B: 83A0F4	       AY0 = DM($3A0F)			;
250C: 400011	       AX1 = #0001			;
250D: 2B21AA	       NONE = AY0 - AX1			;
250E: 1A53F0	IF EQ  JUMP $253F			;
250F: 3801C0	       I4 = #001C			;
2510: 500080	       SI = PM(I4,M4)			;
2511: 3A1400	       I4 = #2140			;
2512: 580080	       PM(I4,M4) = SI			;
2513: 3A4BD0	       I4 = #24BD			;
2514: 380004	       M4 = #0000			;
2515: 500080	       SI = PM(I4,M4)			;
2516: 3801C0	       I4 = #001C			;
2517: 580080	       PM(I4,M4) = SI			;
2518: 3C008C	       IFC = #0008			;
2519: 000000	       NOP				;
251A: 0D03A3	       AR = IMASK			;
251B: 23A2DF	IF     AR = AR  | 0008			;
251C: 0D0C3A	       IMASK = AR			;
251D: 93FE40	       DM($3FE4) = AX0			;
251E: 37A3A1	       I1 = #3A3A			;
251F: 090006	       MODIFY (I1,M2)			;
2520: 6000A4	       AR = DM(I1,M0)			;
2521: 37A701	       I1 = #3A70			;
2522: 090006	       MODIFY (I1,M2)			;
2523: 6800A4	       DM(I1,M0) = AR			;
2524: 37A741	       I1 = #3A74			;
2525: 090006	       MODIFY (I1,M2)			;
2526: 6000A4	       AR = DM(I1,M0)			;
2527: 37A781	       I1 = #3A78			;
2528: 090006	       MODIFY (I1,M2)			;
2529: 6800A4	       DM(I1,M0) = AR			;
252A: 83A7FA	       AR = DM($3A7F)			;
252B: 0D004A	       AY0 = AR				;
252C: 22620F	IF     AR = AR  + AY0			;
252D: 1E4A9F	IF     CALL $24A9			;
252E: 340015	       M1 = #0001			;
252F: 340004	       M0 = #0000			;
2530: 37A681	       I1 = #3A68			;
2531: 090006	       MODIFY (I1,M2)			;
2532: 090006	       MODIFY (I1,M2)			;
2533: 600015	       AX1 = DM(I1,M1)			;
2534: 600005	       AX0 = DM(I1,M1)			;
2535: 83A7F4	       AY0 = DM($3A7F)			;
2536: 22E00F	IF     AR = AX0 - AY0			;
2537: 2AD9EA	       AR = AX1 - 0   + C - 1, SR0 = AR	;
2538: 0D00FA	       SR1 = AR				;
2539: 37A600	       I0 = #3A60			;
253A: 090002	       MODIFY (I0,M2)			;
253B: 090002	       MODIFY (I0,M2)			;
253C: 6800F1	       DM(I0,M1) = SR1			;
253D: 6800E1	       DM(I0,M1) = SR0			;
253E: 0A000F	IF     RTS				;
253F: 93FE40	       DM($3FE4) = AX0			;
2540: 37A320	       I0 = #3A32			;
2541: 090002	       MODIFY (I0,M2)			;
2542: 4FFFF4	       AY0 = #FFFF			;
2543: 680042	       DM(I0,M2) = AY0			;
2544: 0D040A	       I0 = AR				;
2545: 340015	       M1 = #0001			;
2546: 400008	       SI = #0000			;
2547: 8FA7F5	       CNTR = DM($3A7F)			;
2548: 16549E	       DO $2549 UNTIL NCE		;
2549: 680081	       DM(I0,M1) = SI			;
254A: 0A000F	IF     RTS				;
254B: 37FFF5	       M1 = #3FFF			;
254C: 090001	       MODIFY (I0,M1)			;
254D: 6800E1	       DM(I0,M1) = SR0			;
254E: 6800F1	       DM(I0,M1) = SR1			;
254F: 93FE44	       DM($3FE4) = AY0			;
2550: 0D00A4	       AR = AY0				;
2551: 22620F	IF     AR = AR  + AY0			;
2552: 1E4A9F	IF     CALL $24A9			;
2553: 0A000F	IF     RTS				;
2554: 0C0030	       ENA SEC_REG			;
2555: 9BAC10	       DM($3AC1) = I4			;
2556: 3A1400	       I4 = #2140			;
2557: 500080	       SI = PM(I4,M4)			;
2558: 3801C0	       I4 = #001C			;
2559: 580080	       PM(I4,M4) = SI			;
255A: 040040	       DIS INTS				;
255B: 040003	       POP STS				;
255C: 93AC2A	       DM($3AC2) = AR			;
255D: 0D03A3	       AR = IMASK			;
255E: 9FAC30	       DM($3AC3) = ASTAT		;
255F: 2382FF	IF     AR = AR  & FFF7			;
2560: 0D0C3A	       IMASK = AR			;
2561: 83AC2A	       AR = DM($3AC2)			;
2562: 8FAC30	       ASTAT = DM($3AC3)		;
2563: 040002	       PUSH STS				;
2564: 0C0030	       ENA SEC_REG			;
2565: 40000A	       AR = #0000			;
2566: 0D0C3A	       IMASK = AR			;
2567: 040060	       ENA INTS				;
2568: 83A3EE	       SR0 = DM($3A3E)			;
2569: 0F1608	       SR = LSHIFT SR0 BY #08 (LO)	;
256A: 01801F	       IO($1) = SR1			;
256B: 83A3F0	       AX0 = DM($3A3F)			;
256C: 93FE20	       DM($3FE2) = AX0			;
256D: 83AC00	       AX0 = DM($3AC0)			;
256E: 93FE10	       DM($3FE1) = AX0			;
256F: 400015	       AY1 = #0001			;
2570: 23AE0F	IF     AR = SR0 | AY1			;
2571: 93FE3A	       DM($3FE3) = AR			;
2572: 83A7FA	       AR = DM($3A7F)			;
2573: 93FE4A	       DM($3FE4) = AR			;
2574: 8BAC10	       I4 = DM($3AC1)			;
2575: 0A001F	IF     RTI				;

L2576:							;(n)
2576: 0D084A	       M4 = AR				;
2577: 93A0EA	       DM($3A0E) = AR			;
2578: 3BA320	       I4 = #3A32			;
2579: 090010	       MODIFY (I4,M4)			;
257A: 700000	       AX0 = DM(I4,M4)			;
257B: 2A78AA	       NONE = AX0 + 0  			;
257C: 0A0000	IF EQ  RTS				;
257D: 000000	       NOP				;
257E: 040060	       ENA INTS				;
257F: 000000	       NOP				;
2580: 040040	       DIS INTS				;
2581: 83FE44	       AY0 = DM($3FE4)			;
2582: 2A00AA	       NONE = AY0			;
2583: 1A57E1	IF NE  JUMP $257E			;
2584: 040060	       ENA INTS				;
2585: 040060	       ENA INTS				;
2586: 000000	       NOP				;
2587: 040040	       DIS INTS				;
2588: 83FE44	       AY0 = DM($3FE4)			;
2589: 2A00AA	       NONE = AY0			;
258A: 1A5851	IF NE  JUMP $2585			;
258B: 040060	       ENA INTS				;
258C: 040060	       ENA INTS				;
258D: 000000	       NOP				;
258E: 040040	       DIS INTS				;
258F: 83FE44	       AY0 = DM($3FE4)			;
2590: 2A00AA	       NONE = AY0			;
2591: 1A58C1	IF NE  JUMP $258C			;
2592: 040060	       ENA INTS				;
2593: 040060	       ENA INTS				;
2594: 000000	       NOP				;
2595: 040040	       DIS INTS				;
2596: 83FE44	       AY0 = DM($3FE4)			;
2597: 2A00AA	       NONE = AY0			;
2598: 1A5931	IF NE  JUMP $2593			;
2599: 040060	       ENA INTS				;
259A: 400014	       AY0 = #0001			;
259B: 2A60AA	       NONE = AX0 + AY0			;
259C: 1A5A11	IF NE  JUMP $25A1			;
259D: 3BA320	       I4 = #3A32			;
259E: 090010	       MODIFY (I4,M4)			;
259F: 400004	       AY0 = #0000			;
25A0: 780040	       DM(I4,M4) = AY0			;
25A1: 0C3000	       ENA M_MODE			;
25A2: 0D002A	       MX0 = AR				;
25A3: 402006	       MY0 = #0200			;
25A4: 41000B	       MR0 = #1000			;
25A5: 21600F	IF     MR = MR + MX0 * MY0 (UU)		;
25A6: 0C2000	       DIS M_MODE			;
25A7: 0D041B	       I1 = MR0				;
25A8: 3BA360	       I4 = #3A36			;
25A9: 090010	       MODIFY (I4,M4)			;
25AA: 7000A0	       AR = DM(I4,M4)			;
25AB: 3BA0A0	       I4 = #3A0A			;
25AC: 090010	       MODIFY (I4,M4)			;
25AD: 7000E0	       SR0 = DM(I4,M4)			;
25AE: 0F36F9	       SR = ASHIFT SR0 BY #F9 (LO)	;
25AF: 423784	       AY0 = #2378			;
25B0: 22660F	IF     AR = SR0 + AY0			;
25B1: 0D080A	       I4 = AR				;
25B2: 500040	       AY0 = PM(I4,M4)			;
25B3: 2A00AA	       NONE = AY0			;
25B4: 1A6220	IF EQ  JUMP $2622			;
25B5: 1A5E54	IF LT  JUMP $25E5			;
25B6: 1A5B72	IF GT  JUMP $25B7			;
25B7: 37E003	       I3 = #3E00			;
25B8: 340016	       M2 = #0001			;
25B9: 340015	       M1 = #0001			;
25BA: 0C2000	       DIS M_MODE			;
25BB: 0C0800	       DIS AR_SAT			;
25BC: 47FFF5	       AY1 = #7FFF			;
25BD: 37A1C0	       I0 = #3A1C			;
25BE: 87A0E7	       M3 = DM($3A0E)			;
25BF: 090003	       MODIFY (I0,M3)			;
25C0: 6000A0	       AR = DM(I0,M0)			;
25C1: 37A2A0	       I0 = #3A2A			;
25C2: 87A0E7	       M3 = DM($3A0E)			;
25C3: 090003	       MODIFY (I0,M3)			;
25C4: 090003	       MODIFY (I0,M3)			;
25C5: 6000C1	       MR1 = DM(I0,M1)			;
25C6: 600001	       AX0 = DM(I0,M1)			;
25C7: 40000B	       MR0 = #0000			;
25C8: 0D007C	       MY1 = MR1			;
25C9: 298A70	       MR = MR - AR  * MY1 (SS), MY1 = AX0;
25CA: 210A0F	IF     MR = MR + AR  * MY1 (SS)		;
25CB: 6A62CD	       AR = AR  + AY0, DM(I3,M1) = MR1	;
25CC: 1A5CE7	IF NAV JUMP $25CE			;
25CD: 638A75	       AR = AR  & AY1, MY1 = DM(I1,M1)	;
25CE: 0D00C7	       MR1 = MY1			;
25CF: 3C0FF5	       CNTR = #00FF			;
25D0: 165D6E	       DO $25D6 UNTIL NCE		;{
25D1: 618A75	       MR = MR-AR*MY1 (SS),MY1=DM(I1,M1);
25D2: 210A0F	IF     MR = MR+AR*MY1 (SS)		;
25D3: 6A62CE	       AR = AR + AY0, DM(I3,M2) = MR1	;
25D4: 1A5D67	IF NAV JUMP $25D6			;
25D5: 638A75	       AR = AR  & AY1, MY1 = DM(I1,M1)	;
25D6: 0D00C7	       MR1 = MY1			;
25D7: 37A2A0	       I0 = #3A2A			;}
25D8: 87A0E7	       M3 = DM($3A0E)			;
25D9: 090003	       MODIFY (I0,M3)			;
25DA: 090003	       MODIFY (I0,M3)			;
25DB: 6800C1	       DM(I0,M1) = MR1			;
25DC: 600005	       AX0 = DM(I1,M1)			;
25DD: 680001	       DM(I0,M1) = AX0			;
25DE: 37A1C0	       I0 = #3A1C			;
25DF: 87A0E7	       M3 = DM($3A0E)			;
25E0: 090003	       MODIFY (I0,M3)			;
25E1: 6800A0	       DM(I0,M0) = AR			;
25E2: 40001A	       AR = #0001			;
25E3: 227A0F	IF     AR = AR  + 0  			;
25E4: 0A000F	IF     RTS				;

25E5: 0D00A4	       AR = AY0				;
25E6: 227ADF	IF     AR = AR  + 8000			;
25E7: 0D004A	       AY0 = AR				;
25E8: 37E003	       I3 = #3E00			;
25E9: 340016	       M2 = #0001			;
25EA: 340015	       M1 = #0001			;
25EB: 340004	       M0 = #0000			;
25EC: 37FFF7	       M3 = #3FFF			;
25ED: 0C2000	       DIS M_MODE			;
25EE: 0C0800	       DIS AR_SAT			;
25EF: 47FFF5	       AY1 = #7FFF			;
25F0: 37A1C0	       I0 = #3A1C			;
25F1: 87A0E7	       M3 = DM($3A0E)			;
25F2: 090003	       MODIFY (I0,M3)			;
25F3: 6000A0	       AR = DM(I0,M0)			;
25F4: 37A2A0	       I0 = #3A2A			;
25F5: 87A0E7	       M3 = DM($3A0E)			;
25F6: 090003	       MODIFY (I0,M3)			;
25F7: 090003	       MODIFY (I0,M3)			;
25F8: 400FF0	       AX0 = #00FF			;
25F9: 26780F	IF     AF = AX0 + 0  			;
25FA: 6000C1	       MR1 = DM(I0,M1)			;
25FB: 600001	       AX0 = DM(I0,M1)			;
25FC: 40000B	       MR0 = #0000			;
25FD: 0D007C	       MY1 = MR1			;
25FE: 298A60	       MR = MR - AR  * MY1 (SS), MY0 = AX0;
25FF: 21020F	IF     MR = MR + AR  * MY0 (SS)		;
2600: 6A62CD	       AR = AR  + AY0, DM(I3,M1) = MR1	;
2601: 1A6057	IF NAV JUMP $2605			;
2602: 238A0F	IF     AR = AR  & AY1			;
2603: 0D0070	       MY1 = AX0			;
2604: 1A608F	IF     JUMP $2608			;
2605: 0D00C7	       MR1 = MY1			;
2606: 27100F	IF     AF = AF  - 1			;
2607: 1A5FEF	IF     JUMP $25FE			;
2608: 0D00C7	       MR1 = MY1			;
2609: 0D000A	       AX0 = AR				;
260A: 22100F	IF     AR = AF 				;
260B: 0D0C5A	       CNTR = AR			;
260C: 0D00A0	       AR = AX0				;
260D: 16613E	       DO $2613 UNTIL NCE		;
260E: 618A64	       MR = MR - AR  * MY1 (SS), MY0 = DM(I1,M0);
260F: 21020F	IF     MR = MR + AR  * MY0 (SS)		;
2610: 6A62CD	       AR = AR  + AY0, DM(I3,M1) = MR1	;
2611: 1A6137	IF NAV JUMP $2613			;
2612: 638A75	       AR = AR  & AY1, MY1 = DM(I1,M1)	;
2613: 0D00C7	       MR1 = MY1			;
2614: 37A2A0	       I0 = #3A2A			;
2615: 87A0E7	       M3 = DM($3A0E)			;
2616: 090003	       MODIFY (I0,M3)			;
2617: 090003	       MODIFY (I0,M3)			;
2618: 6800C1	       DM(I0,M1) = MR1			;
2619: 600005	       AX0 = DM(I1,M1)			;
261A: 680001	       DM(I0,M1) = AX0			;
261B: 37A1C0	       I0 = #3A1C			;
261C: 87A0E7	       M3 = DM($3A0E)			;
261D: 090003	       MODIFY (I0,M3)			;
261E: 6800A0	       DM(I0,M0) = AR			;
261F: 40001A	       AR = #0001			;
2620: 227A0F	IF     AR = AR  + 0  			;
2621: 0A000F	IF     RTS				;
2622: 37E003	       I3 = #3E00			;
2623: 340015	       M1 = #0001			;
2624: 0C2000	       DIS M_MODE			;
2625: 0C0800	       DIS AR_SAT			;
2626: 37A2A0	       I0 = #3A2A			;
2627: 87A0E7	       M3 = DM($3A0E)			;
2628: 090003	       MODIFY (I0,M3)			;
2629: 090003	       MODIFY (I0,M3)			;
262A: 6000A1	       AR = DM(I0,M1)			;
262B: 6800AD	       DM(I3,M1) = AR			;
262C: 6000A1	       AR = DM(I0,M1)			;
262D: 6800AD	       DM(I3,M1) = AR			;
262E: 3C0FE5	       CNTR = #00FE			;
262F: 16631E	       DO $2631 UNTIL NCE		;
2630: 6000A5	       AR = DM(I1,M1)			;
2631: 6800AD	       DM(I3,M1) = AR			;
2632: 37A2A0	       I0 = #3A2A			;
2633: 87A0E7	       M3 = DM($3A0E)			;
2634: 090003	       MODIFY (I0,M3)			;
2635: 090003	       MODIFY (I0,M3)			;
2636: 6000A5	       AR = DM(I1,M1)			;
2637: 6800A1	       DM(I0,M1) = AR			;
2638: 6000A5	       AR = DM(I1,M1)			;
2639: 6800A1	       DM(I0,M1) = AR			;
263A: 40001A	       AR = #0001			;
263B: 227A0F	IF     AR = AR  + 0  			;
263C: 0A000F	IF     RTS				;

L263D:							;void check_host_cmd()
263D: 040060	       ENA INTS				;
263E: 000000	       NOP				;
263F: 040040	       DIS INTS				;
2640: 83FE40	       AX0 = DM($3FE4)			;
2641: 2A78AA	       NONE = AX0 + 0  			;
2642: 1A63D1	IF NE  JUMP $263D			;while (BWCOUNT);
2643: 040060	       ENA INTS				;
2644: 040060	       ENA INTS				;
2645: 000000	       NOP				;
2646: 040040	       DIS INTS				;
2647: 83FE40	       AX0 = DM($3FE4)			;
2648: 2A78AA	       NONE = AX0 + 0  			;
2649: 1A6441	IF NE  JUMP $2644			;while (BWCOUNT);
264A: 040060	       ENA INTS				;
264B: 400000	       AX0 = #0000			;
264C: 018010	       IO($1) = AX0			;ROM_BANK = 0;
264D: 43A808	       SI = #3A80			;
264E: 93B808	       DM($3B80) = SI			;cmd_queue_wpos = &cmd_queue[0];
264F: 1E652F	IF     CALL $2652			;receive_from_host();
2650: 1E712F	IF     CALL $2712			;process_cmd_queue();
2651: 0A000F	IF     RTS				;

L2652:							;void receive_from_host()
2652: 874681	       I1 = DM($3468)			;du* host_in_fifo_curr = host_in_fifo_rpos;
2653: 340015	       M1 = #0001			;
2654: 340026	       M2 = #0002			;
2655: 340649	       L1 = #0064			;
2656: 3801C0	       I4 = #001C			;
2657: 500080	       SI = PM(I4,M4)			;
2658: 3A1410	       I4 = #2141			;
2659: 580080	       PM(I4,M4) = SI			;bdma_vect_save = *(pu24*)0x001C;//save BDMA int vector
265A: 3A6B90	       I4 = #26B9			;
265B: 380004	       M4 = #0000			;
265C: 500080	       SI = PM(I4,M4)			;
265D: 3801C0	       I4 = #001C			;
265E: 580080	       PM(I4,M4) = SI			;*(pu24*)0x001C = bdma_vect;//set new BDMA int vector
265F: 3BA100	       I4 = #3A10			;
2660: 380048	       L4 = #0004			;
2661: 380024	       M4 = #0002			;
2662: 9BAC40	       DM($3AC4) = I4			;var_3AC4 = 0x3A10;
2663: 3C008C	       IFC = #0008			;IFC = 0x0008;//clear BDMA int
2664: 000000	       NOP				;
2665: 0D03A3	       AR = IMASK			;
2666: 23A2DF	IF     AR = AR  | 0008			;
2667: 0D0C3A	       IMASK = AR			;IMASK |= 0x0008;//enable BDMA int
L2668:							;u16 host_cmd;
2668: 0D0141	       AY0 = I1				;while (1) {
2669: 83467A	       AR = DM($3467)			;
266A: 2AE2AA	       NONE = AR  - AY0			;
266B: 1A6A80	IF EQ  JUMP $26A8			;  if (host_in_fifo_curr == host_in_fifo_wpos) goto L26A8;
266C: 600005	       AX0 = DM(I1,M1)			;  host_cmd = *host_in_fifo_curr++;
266D: 22780F	IF     AR = AX0 + 0  			;
266E: 1A6734	IF LT  JUMP $2673			;  if (host_cmd >= 0) {
266F: 83DAA4	       AY0 = DM($3DAA)			;
2670: 2AE0AA	       NONE = AX0 - AY0			;
2671: 1A6863	IF LE  JUMP $2686			;    if (host_cmd <= host_cmd_range) break;
2672: 1A668F	IF     JUMP $2668			;    continue;
L2673:							;  }
2673: 22780F	IF     AR = AX0 + 0  			;
2674: 1A6682	IF GT  JUMP $2668			;  if (host_cmd > 0) continue;
2675: 239AFF	IF     AR = AR  & 7FFF			;  host_cmd &= 0x7FFF;
2676: 23321F	IF     AR = 0100 - AR 			;  host_cmd = 0x0100 - host_cmd;
2677: 1A6684	IF LT  JUMP $2668			;  if (host_cmd < 0) continue;
2678: 1A6821	IF NE  JUMP $2682			;  if (!host_cmd) {
2679: 83F01E	       SR0 = DM($3F01)			;
267A: 0F16F9	       SR = LSHIFT SR0 BY #F9 (LO)	;
267B: 400FF4	       AY0 = #00FF			;
267C: 23260F	IF     AR = AY0 - SR0			;
267D: 23BADF	IF     AR = AR  | 8000			;
267E: 0D00EA	       SR0 = AR				;
267F: 1E15BF	IF     CALL $215B			;    add_host_resp(0x8000 | (0x00FF - (var_3F01 >> 7)));
2680: 1E167F	IF     CALL $2167			;    send_host();
2681: 1A668F	IF     JUMP $2668			;    continue;
L2682:							;  }
2682: 22E21F	IF     AR = AR  - 0001			;
2683: 0F3207	       SR = ASHIFT AR  BY #07 (LO)	;
2684: 93F01E	       DM($3F01) = SR0			;  var_3F01 = (host_cmd - 1) << 7;
2685: 1A668F	IF     JUMP $2668			;}
L2686:
2686: 0F1202	       SR = LSHIFT AR  BY #02 (LO)	;
2687: 83F074	       AY0 = DM($3F07)			;
2688: 22660F	IF     AR = SR0 + AY0			;u32 ptr = rom_data_offs + (host_cmd << 2);
2689: 0D042A	       I2 = AR				;
268A: 97FE22	       DM($3FE2) = I2			;BEAD = (u16)ptr;
268B: 0D008A	       SI = AR				;
268C: 0D00AF	       AR = SR1				;
268D: 226218	IF AC  AR = AR  + 0001			;
268E: 0F02F2	       SR = LSHIFT AR  BY #F2 (HI)	;
268F: 0F18F2	       SR = SR OR LSHIFT SI  BY #F2 (LO);
2690: 83F064	       AY0 = DM($3F06)			;
2691: 22660F	IF     AR = SR0 + AY0			;u8 page = rom_data_page + (ptr >> 14);
2692: 400014	       AY0 = #0001			;
2693: 0F1208	       SR = LSHIFT AR  BY #08 (LO)	;
2694: 23A60F	IF     AR = SR0 | AY0			;
2695: 93FE3A	       DM($3FE3) = AR			;BDMAC = (page << 8) | 0x0001;
2696: 3BA100	       I4 = #3A10			;
2697: 9BFE10	       DM($3FE1) = I4			;BIAD = 0x3A10;
2698: 340026	       M2 = #0002			;
2699: 4FFFFA	       AR = #FFFF			;
269A: 93AC6A	       DM($3AC6) = AR			;var_3AC6 = 0xFFFF;
269B: 40001A	       AR = #0001			;
269C: 93AC5A	       DM($3AC5) = AR			;var_3AC5 = 0x0001;
269D: 97FE46	       DM($3FE4) = M2			;BWCOUNT = 0x0002;
L269E:
269E: 040060	       ENA INTS				;do {
269F: 000000	       NOP				;
26A0: 040040	       DIS INTS				;
26A1: 83AC6A	       AR = DM($3AC6)			;
26A2: 22E21F	IF     AR = AR  - 0001			;
26A3: 93AC6A	       DM($3AC6) = AR			;  var_3AC6--;
26A4: 1E6B50	IF EQ  CALL $26B5			;  if (!var_3AC6) L26B5();
26A5: 83AC5A	       AR = DM($3AC5)			;
26A6: 227A0F	IF     AR = AR  + 0  			;
26A7: 1A69E1	IF NE  JUMP $269E			;} while (var_3AC5);
L26A8:
26A8: 040060	       ENA INTS				;
26A9: 0D03A3	       AR = IMASK			;
26AA: 2382FF	IF     AR = AR  & FFF7			;
26AB: 0D0C3A	       IMASK = AR			;IMASK &= ~0x0008;//disable BDMA int
26AC: 380004	       M4 = #0000			;
26AD: 380008	       L4 = #0000			;
26AE: 3A1410	       I4 = #2141			;
26AF: 500080	       SI = PM(I4,M4)			;
26B0: 974681	       DM($3468) = I1			;host_in_fifo_rpos = host_in_fifo_curr;
26B1: 340009	       L1 = #0000			;
26B2: 3801C0	       I4 = #001C			;
26B3: 580080	       PM(I4,M4) = SI			;*(pu24*)0x001C = bdma_vect_save;//restore old BDMA int vector
26B4: 0A000F	IF     RTS				;

L26B5:							;
26B5: 40000A	       AR = #0000			;
26B6: 93AC5A	       DM($3AC5) = AR			;var_3AC5 = 0x0000;
26B7: 040060	       ENA INTS				;
26B8: 0A000F	IF     RTS				;

L26B9:							;bdma_vect:
26B9: 1A6BAF	IF     JUMP $26BA			;goto bdma_handler;

L26BA:							;bdma_handler:
26BA: 0C0030	       ENA SEC_REG			;
26BB: 8BAC40	       I4 = DM($3AC4)			;
26BC: 0D0141	       AY0 = I1				;while (1) {
26BD: 83467A	       AR = DM($3467)			;
26BE: 2AE2AA	       NONE = AR  - AY0			;
26BF: 1A6F00	IF EQ  JUMP $26F0			;  if (host_in_fifo_curr == host_in_fifo_wpos) goto L26F0;
26C0: 600005	       AX0 = DM(I1,M1)			;  host_cmd = *host_in_fifo_curr++;
26C1: 22780F	IF     AR = AX0 + 0  			;
26C2: 1A6C64	IF LT  JUMP $26C6			;
26C3: 83DAA4	       AY0 = DM($3DAA)			;
26C4: 2AE0AA	       NONE = AX0 - AY0			;  if (host_cmd >= 0 && host_cmd <= host_cmd_range) 
26C5: 1A6D83	IF LE  JUMP $26D8			;    break;
L26C6:							
26C6: 22780F	IF     AR = AX0 + 0  			;
26C7: 1A6BC2	IF GT  JUMP $26BC			;  if (host_cmd > 0) continue;
26C8: 239AFF	IF     AR = AR  & 7FFF			;  host_cmd &= 0x7FFF;
26C9: 23321F	IF     AR = 0100 - AR 			;  host_cmd = 0x0100 - host_cmd;
26CA: 1A6BC4	IF LT  JUMP $26BC			;  if (host_cmd < 0) continue;
26CB: 1A6D41	IF NE  JUMP $26D4			;  if (!host_cmd) {
26CC: 83F01E	       SR0 = DM($3F01)			;
26CD: 0F16F9	       SR = LSHIFT SR0 BY #F9 (LO)	;
26CE: 400FF4	       AY0 = #00FF			;
26CF: 23260F	IF     AR = AY0 - SR0			;
26D0: 23BADF	IF     AR = AR  | 8000			;
26D1: 0D00EA	       SR0 = AR				;
26D2: 1E15BF	IF     CALL $215B			;    add_host_resp(0x8000 | (0x00FF - (var_3F01 >> 7)));
26D3: 1A6BCF	IF     JUMP $26BC			;  }
L26D4:
26D4: 22E21F	IF     AR = AR  - 0001			;
26D5: 0F3207	       SR = ASHIFT AR  BY #07 (LO)	;
26D6: 93F01E	       DM($3F01) = SR0			;  var_3F01 = (host_cmd - 1) << 7;
26D7: 1A6BCF	IF     JUMP $26BC			;}
L26D8:
26D8: 0F1202	       SR = LSHIFT AR  BY #02 (LO)	;
26D9: 83F074	       AY0 = DM($3F07)			;
26DA: 22660F	IF     AR = SR0 + AY0			;
26DB: 0D042A	       I2 = AR				;
26DC: 97FE22	       DM($3FE2) = I2			;
26DD: 0D008A	       SI = AR				;
26DE: 0D00AF	       AR = SR1				;
26DF: 226218	IF AC  AR = AR  + 0001			;
26E0: 0F02F2	       SR = LSHIFT AR  BY #F2 (HI)	;
26E1: 0F18F2	       SR = SR OR LSHIFT SI  BY #F2 (LO);
26E2: 83F064	       AY0 = DM($3F06)			;
26E3: 22660F	IF     AR = SR0 + AY0			;
26E4: 400014	       AY0 = #0001			;
26E5: 0F1208	       SR = LSHIFT AR  BY #08 (LO)	;
26E6: 23A60F	IF     AR = SR0 | AY0			;
26E7: 93FE3A	       DM($3FE3) = AR			;
26E8: 380024	       M4 = #0002			;
26E9: 090010	       MODIFY (I4,M4)			;
26EA: 9BFE10	       DM($3FE1) = I4			;
26EB: 340026	       M2 = #0002			;
26EC: 97FE46	       DM($3FE4) = M2			;
26ED: 9BAC40	       DM($3AC4) = I4			;
26EE: 090010	       MODIFY (I4,M4)			;
26EF: 1A6F2F	IF     JUMP $26F2			;goto L26F2;
L26F0:
26F0: 40000A	       AR = #0000			;
26F1: 93AC5A	       DM($3AC5) = AR			;var_3AC5 = 0x0000;
L26F2:
26F2: 380014	       M4 = #0001			;du* ptr = 0x3A10;
26F3: 7000B0	       MR0 = DM(I4,M4)			;u16 temp1 = *ptr++;
26F4: 700080	       SI = DM(I4,M4)			;u16 temp2 = *ptr++;
26F5: 2A7BAA	       NONE = MR0 + 0  			;
26F6: 1A6FC1	IF NE  JUMP $26FC			;
26F7: 0D00A8	       AR = SI				;
26F8: 227A0F	IF     AR = AR  + 0  			;
26F9: 1A6FC1	IF NE  JUMP $26FC			;if (!temp1 && !temp2)
26FA: 380024	       M4 = #0002			;
26FB: 0A001F	IF     RTI				;  return;
L26FC:
26FC: 380024	       M4 = #0002			;
26FD: 239BDF	IF     AR = MR0 & 8000			;
26FE: 1A7021	IF NE  JUMP $2702			;if (temp1 & 0x8000) { 
26FF: 239B9F	IF     AR = MR0 & 4000			;
2700: 1A7041	IF NE  JUMP $2704			;
2701: 1A70FF	IF     JUMP $270F			;
L2702:
2702: 1E7EEF	IF     CALL $27EE			;  add_cmd_to_queue(temp1,temp2);
2703: 0A001F	IF     RTI				;  return;
L2704:							;}
2704: 0F13F4	       SR = LSHIFT MR0 BY #F4 (LO)	;if (temp1 & 0x4000) 
2705: 400034	       AY0 = #0003			;
2706: 23860F	IF     AR = SR0 & AY0			;
2707: 3BAF81	       I5 = #3AF8			;
2708: 0D085A	       M5 = AR				;
2709: 090015	       MODIFY (I5,M5)			;
270A: 090015	       MODIFY (I5,M5)			;
270B: 380015	       M5 = #0001			;
270C: 7800B5	       DM(I5,M5) = MR0			;
270D: 780085	       DM(I5,M5) = SI			;  return;
270E: 0A001F	IF     RTI				;}
L270F:							;
270F: 0F13F8	       SR = LSHIFT MR0 BY #F8 (LO)	;
2710: 1E7B9F	IF     CALL $27B9			;
2711: 0A001F	IF     RTI				;return;

L2712:							;void process_cmd_queue()
2712: 3C0105	       CNTR = #0010			;
2713: 37B700	       I0 = #3B70			;du* ptr = 0x3B70;
2714: 37AE81	       I1 = #3AE8			;
2715: 340004	       M0 = #0000			;
2716: 340015	       M1 = #0001			;
2717: 97AC74	       DM($3AC7) = M0			;
2718: 16747E	       DO $2747 UNTIL NCE		;for (int i=0;i<0x10;i++) {
2719: 600041	       AY0 = DM(I0,M1)			;  u16 temp = *ptr++;
271A: 6000A4	       AR = DM(I1,M0)			;
271B: 26621F	IF     AF = AR  + 0001			;
271C: 1A7440	IF EQ  JUMP $2744			;  if (buf_3AE8[i] != 0xFFFF) {
271D: 2A7AAA	       NONE = AR  + 0  			;
271E: 1A7361	IF NE  JUMP $2736			;    if () {
271F: 8BAC75	       M5 = DM($3AC7)			;
2720: 3BAC81	       I5 = #3AC8			;
2721: 090015	       MODIFY (I5,M5)			;
2722: 090015	       MODIFY (I5,M5)			;
2723: 380015	       M5 = #0001			;
2724: 7000C5	       MR1 = DM(I5,M5)			;
2725: 7000B5	       MR0 = DM(I5,M5)			;
2726: 1E7A3F	IF     CALL $27A3			;
2727: 0D01A0	       AR = I0				;
2728: 22E21F	IF     AR = AR  - 0001			;
2729: 0D081A	       I5 = AR				;
272A: 7000A5	       AR = DM(I5,M5)			;
272B: 8BAC75	       M5 = DM($3AC7)			;
272C: 3BAC81	       I5 = #3AC8			;
272D: 090015	       MODIFY (I5,M5)			;
272E: 090015	       MODIFY (I5,M5)			;
272F: 380015	       M5 = #0001			;
2730: 7800C5	       DM(I5,M5) = MR1			;
2731: 7800B5	       DM(I5,M5) = MR0			;
2732: 227A0F	IF     AR = AR  + 0  			;
2733: 1A7401	IF NE  JUMP $2740			;      if ()
2734: 1E803F	IF     CALL $2803			;        L2803();
2735: 1A740F	IF     JUMP $2740			;    }
L2736:
2736: 2AE2AA	       NONE = AR  - AY0			;    else {
2737: 1A7401	IF NE  JUMP $2740			;
2738: 3BAC81	       I5 = #3AC8			;
2739: 8BAC75	       M5 = DM($3AC7)			;
273A: 090015	       MODIFY (I5,M5)			;
273B: 090015	       MODIFY (I5,M5)			;
273C: 380015	       M5 = #0001			;
273D: 7000C5	       MR1 = DM(I5,M5)			;
273E: 7000B5	       MR0 = DM(I5,M5)			;      L2803();
273F: 1E803F	IF     CALL $2803			;    }
L2740:
2740: 6000A4	       AR = DM(I1,M0)			;
2741: 22621F	IF     AR = AR  + 0001			;
2742: 1A7440	IF EQ  JUMP $2744			;    if () 
2743: 6800A4	       DM(I1,M0) = AR			;      
L2744:							;  }
2744: 83AC7A	       AR = DM($3AC7)			;
2745: 22621F	IF     AR = AR  + 0001			;
2746: 93AC7A	       DM($3AC7) = AR			;
2747: 090005	       MODIFY (I1,M1)			;}
2748: 3BA801	       I5 = #3A80			;
2749: 9BB811	       DM($3B81) = I5			;cmd_queue_rpos = &cmd_queue[0];
L274A:
274A: 83B804	       AY0 = DM($3B80)			;while (1) {
274B: 8BB811	       I5 = DM($3B81)			;  du* cmd_queue_curr = cmd_queue_rpos;
274C: 0D02A1	       AR = I5				;
274D: 380015	       M5 = #0001			;
274E: 2AE2AA	       NONE = AR  - AY0			;
274F: 1A7A25	IF GE  JUMP $27A2			;  if (cmd_queue_rpos >= cmd_queue_wpos) break;
2750: 380409	       L5 = #0040			;
2751: 7000C5	       MR1 = DM(I5,M5)			;  u16 val1 = *cmd_queue_curr++;
2752: 7000B5	       MR0 = DM(I5,M5)			;  u16 val2 = *cmd_queue_curr++;
2753: 40000A	       AR = #0000			;
2754: 8BB811	       I5 = DM($3B81)			;  cmd_queue_curr = cmd_queue_rpos;
2755: 7800A5	       DM(I5,M5) = AR			;  *cmd_queue_curr++ = 0;
2756: 7800A5	       DM(I5,M5) = AR			;  *cmd_queue_curr++ = 0;
2757: 9BB811	       DM($3B81) = I5			;  cmd_queue_rpos = cmd_queue_curr;
2758: 380009	       L5 = #0000			;
2759: 0F14F8	       SR = LSHIFT MR1 BY #F8 (LO)	;
275A: 4000F4	       AY0 = #000F			;
275B: 23860F	IF     AR = SR0 & AY0			;
275C: 93AC7A	       DM($3AC7) = AR			;  u16 temp = (val1 >> 8) & 0x0F;
275D: 239CDF	IF     AR = MR1 & 8000			;
275E: 1A7981	IF NE  JUMP $2798			;  if (!(val1 & 0x8000)) {
275F: 239C9F	IF     AR = MR1 & 4000			;
2760: 1A78D1	IF NE  JUMP $278D			;    if (!(val1 & 0x4000)) {
2761: 37B820	       I0 = #3B82			;
2762: 87AC76	       M2 = DM($3AC7)			;
2763: 090002	       MODIFY (I0,M2)			;
2764: 4FFFFA	       AR = #FFFF			;
2765: 6800A2	       DM(I0,M2) = AR			;
2766: 37AE80	       I0 = #3AE8			;
2767: 87AC76	       M2 = DM($3AC7)			;
2768: 090002	       MODIFY (I0,M2)			;
2769: 340004	       M0 = #0000			;
276A: 6000A0	       AR = DM(I0,M0)			;
276B: 22621F	IF     AR = AR  + 0001			;
276C: 40000A	       AR = #0000			;
276D: 6800A2	       DM(I0,M2) = AR			;
276E: 1A7700	IF EQ  JUMP $2770			;
276F: 1E7D0F	IF     CALL $27D0			;
2770: 43B70A	       AR = #3B70			;
2771: 83AC74	       AY0 = DM($3AC7)			;
2772: 22620F	IF     AR = AR  + AY0			;
2773: 22621F	IF     AR = AR  + 0001			;
2774: 0D040A	       I0 = AR				;
2775: 1E7A3F	IF     CALL $27A3			;
2776: 0D01A0	       AR = I0				;
2777: 22E21F	IF     AR = AR  - 0001			;
2778: 0D081A	       I5 = AR				;
2779: 7000A5	       AR = DM(I5,M5)			;
277A: 8BAC75	       M5 = DM($3AC7)			;
277B: 3BAC81	       I5 = #3AC8			;
277C: 090015	       MODIFY (I5,M5)			;
277D: 090015	       MODIFY (I5,M5)			;
277E: 380015	       M5 = #0001			;
277F: 7800C5	       DM(I5,M5) = MR1			;
2780: 7800B5	       DM(I5,M5) = MR0			;
2781: 227A0F	IF     AR = AR  + 0  			;
2782: 1A7841	IF NE  JUMP $2784			;
2783: 1E803F	IF     CALL $2803			;
2784: 37AE80	       I0 = #3AE8			;
2785: 87AC76	       M2 = DM($3AC7)			;
2786: 090002	       MODIFY (I0,M2)			;
2787: 340004	       M0 = #0000			;
2788: 6000A0	       AR = DM(I0,M0)			;
2789: 22621F	IF     AR = AR  + 0001			;
278A: 1A78C0	IF EQ  JUMP $278C			;
278B: 6800A2	       DM(I0,M2) = AR			;
278C: 1A7A1F	IF     JUMP $27A1			;    }
L278D:
278D: 3BAF81	       I5 = #3AF8			;    else {	//val1 & 0x4000
278E: 0F14F4	       SR = LSHIFT MR1 BY #F4 (LO)	;
278F: 2386BF	IF     AR = SR0 & FFFB			;
2790: 3BAF81	       I5 = #3AF8			;
2791: 0D085A	       M5 = AR				;
2792: 090015	       MODIFY (I5,M5)			;
2793: 090015	       MODIFY (I5,M5)			;
2794: 380015	       M5 = #0001			;
2795: 7800C5	       DM(I5,M5) = MR1			;
2796: 7800B5	       DM(I5,M5) = MR0			;
2797: 1A7A1F	IF     JUMP $27A1			;    }
L2798:							;  }
2798: 22635F	IF     AR = MR0 + 0002			;  else {	//val1 & 0x8000
2799: 279A9F	IF     AF = AR  & 4000			;    val2 += 2;
279A: 1A79F0	IF EQ  JUMP $279F			;    if (val2 & 0x4000) {
279B: 0D000A	       AX0 = AR				;
279C: 22641F	IF     AR = MR1 + 0001			;
279D: 0D00CA	       MR1 = AR				;
279E: 2398BF	IF     AR = AX0 & BFFF			;    }
L279F:
279F: 0D00BA	       MR0 = AR				;
27A0: 1E803F	IF     CALL $2803			;    L2803(val1,val2);
L27A1:							;  }
27A1: 1A74AF	IF     JUMP $274A			;}
L27A2:
27A2: 0A000F	IF     RTS				;

27A3: 400014	       AY0 = #0001			;
27A4: 0F1408	       SR = LSHIFT MR1 BY #08 (LO)	;
27A5: 23A60F	IF     AR = SR0 | AY0			;
27A6: 93FE3A	       DM($3FE3) = AR			;
27A7: 93FE2B	       DM($3FE2) = MR0			;
27A8: 0D01A0	       AR = I0				;
27A9: 22E21F	IF     AR = AR  - 0001			;
27AA: 93FE1A	       DM($3FE1) = AR			;
27AB: 380015	       M5 = #0001			;
27AC: 9BFE45	       DM($3FE4) = M5			;
27AD: 22635F	IF     AR = MR0 + 0002			;
27AE: 279A9F	IF     AF = AR  & 4000			;
27AF: 1A7B40	IF EQ  JUMP $27B4			;
27B0: 0D000A	       AX0 = AR				;
27B1: 22641F	IF     AR = MR1 + 0001			;
27B2: 0D00CA	       MR1 = AR				;
27B3: 2398BF	IF     AR = AX0 & BFFF			;
27B4: 0D00BA	       MR0 = AR				;
27B5: 83FE4A	       AR = DM($3FE4)			;
27B6: 227A0F	IF     AR = AR  + 0  			;
27B7: 1A7B51	IF NE  JUMP $27B5			;
27B8: 0A000F	IF     RTS				;

27B9: 93AC7E	       DM($3AC7) = SR0			;
27BA: 0D085E	       M5 = SR0				;
27BB: 3BB821	       I5 = #3B82			;
27BC: 090015	       MODIFY (I5,M5)			;
27BD: 4FFFFA	       AR = #FFFF			;
27BE: 7800A5	       DM(I5,M5) = AR			;
27BF: 3BAE81	       I5 = #3AE8			;
27C0: 090015	       MODIFY (I5,M5)			;
27C1: 380005	       M5 = #0000			;
27C2: 7000A5	       AR = DM(I5,M5)			;
27C3: 22621F	IF     AR = AR  + 0001			;
27C4: 40000A	       AR = #0000			;
27C5: 7800A5	       DM(I5,M5) = AR			;
27C6: 1A7C80	IF EQ  JUMP $27C8			;
27C7: 1E7D0F	IF     CALL $27D0			;
27C8: 3BAC81	       I5 = #3AC8			;
27C9: 8BAC75	       M5 = DM($3AC7)			;
27CA: 090015	       MODIFY (I5,M5)			;
27CB: 090015	       MODIFY (I5,M5)			;
27CC: 380015	       M5 = #0001			;
27CD: 7800B5	       DM(I5,M5) = MR0			;
27CE: 780085	       DM(I5,M5) = SI			;
27CF: 0A000F	IF     RTS				;
27D0: 8BAC75	       M5 = DM($3AC7)			;
27D1: 3BD8A1	       I5 = #3D8A			;
27D2: 090015	       MODIFY (I5,M5)			;
27D3: 380005	       M5 = #0000			;
27D4: 7000A5	       AR = DM(I5,M5)			;
27D5: 227A0F	IF     AR = AR  + 0  			;
27D6: 0A0000	IF EQ  RTS				;
27D7: 40000E	       SR0 = #0000			;
27D8: 7800E5	       DM(I5,M5) = SR0			;
27D9: 3BD9A1	       I5 = #3D9A			;
27DA: 380015	       M5 = #0001			;
27DB: 380006	       M6 = #0000			;
27DC: 167E91	       DO $27E9 UNTIL NE 		;
27DD: 27821F	IF     AF = AR  & 0001			;
27DE: 1A7E60	IF EQ  JUMP $27E6			;
27DF: 267A0F	IF     AF = AR  + 0  			;
27E0: 7000A6	       AR = DM(I5,M6)			;
27E1: 22E21F	IF     AR = AR  - 0001			;
27E2: 1A7E45	IF GE  JUMP $27E4			;
27E3: 1E7EBF	IF     CALL $27EB			;
27E4: 7800A6	       DM(I5,M6) = AR			;
27E5: 22100F	IF     AR = AF 				;
27E6: 090015	       MODIFY (I5,M5)			;
27E7: 0F12FF	       SR = LSHIFT AR  BY #FF (LO)	;
27E8: 227E0F	IF     AR = SR0 + 0  			;
27E9: 000000	       NOP				;
27EA: 0A000F	IF     RTS				;
27EB: 000000	       NOP				;
27EC: 000000	       NOP				;
27ED: 0A000F	IF     RTS				;

L27EE:							;void add_cmd_to_queue(u16 page,addr)//page-MR0,addr-SI
27EE: 8BB801	       I5 = DM($3B80)			;du* ptr = cmd_queue_wpos;
27EF: 380409	       L5 = #0040			;
27F0: 380015	       M5 = #0001			;
27F1: 7800B5	       DM(I5,M5) = MR0			;*ptr++ = page;
27F2: 780085	       DM(I5,M5) = SI			;*ptr++ = addr;
27F3: 9BB801	       DM($3B80) = I5			;cmd_queue_wpos = ptr;
27F4: 380009	       L5 = #0000			;
27F5: 0A000F	IF     RTS				;

L27F6:							;
27F6: 93B93A	       DM($3B93) = AR			;
27F7: 3BAE80	       I4 = #3AE8			;
27F8: 8BAC74	       M4 = DM($3AC7)			;
27F9: 090010	       MODIFY (I4,M4)			;
27FA: 4FFFFA	       AR = #FFFF			;
27FB: 7800A0	       DM(I4,M4) = AR			;
27FC: 3BF280	       I4 = #3F28			;
27FD: 090010	       MODIFY (I4,M4)			;
27FE: 40000A	       AR = #0000			;
27FF: 7800A0	       DM(I4,M4) = AR			;
2800: 40000A	       AR = #0000			;
2801: 93B92A	       DM($3B92) = AR			;
2802: 0A000F	IF     RTS				;

L2803:							;(page,addr)//page-MR1,addr-MR0
2803: 239CDF	IF     AR = MR1 & 8000			;
2804: 40000A	       AR = #0000			;
2805: 1A8070	IF EQ  JUMP $2807			;
2806: 40001A	       AR = #0001			;
2807: 93B98A	       DM($3B98) = AR			;var_3B98 = (page & 0x8000) ? 1 : 0;
2808: 400034	       AY0 = #0003			;
2809: 0F1408	       SR = LSHIFT MR1 BY #08 (LO)	;
280A: 23A60F	IF     AR = SR0 | AY0			;
280B: 93FE3A	       DM($3FE3) = AR			;BDMAC = (page << 8) | 3;
280C: 0D00CA	       MR1 = AR				;
280D: 93FE2B	       DM($3FE2) = MR0			;BEAD = addr;
280E: 43A208	       SI = #3A20			;
280F: 93FE18	       DM($3FE1) = SI			;BIAD = load_buf2;
2810: 93B978	       DM($3B97) = SI			;var_3B97 = load_buf2;
2811: 4002D8	       SI = #002D			;
2812: 93B958	       DM($3B95) = SI			;var_3B95 = 0x002D;
2813: 3801C0	       I4 = #001C			;
2814: 500080	       SI = PM(I4,M4)			;
2815: 3A1410	       I4 = #2141			;
2816: 580080	       PM(I4,M4) = SI			;*(pu24*)0x001C = bdma_vect;//set new BDMA int vector
2817: 3A8410	       I4 = #2841			;
2818: 380004	       M4 = #0000			;
2819: 500080	       SI = PM(I4,M4)			;
281A: 3801C0	       I4 = #001C			;
281B: 580080	       PM(I4,M4) = SI			;*(pu24*)0x001C = bdma_vect2;//set new BDMA int vector
281C: 3C008C	       IFC = #0008			;IFC = 0x0008;
281D: 0D03A3	       AR = IMASK			;
281E: 23A2DF	IF     AR = AR  | 0008			;
281F: 0D0C3A	       IMASK = AR			;IMASK |= 0x0008;
2820: 22631F	IF     AR = MR0 + 0001			;addr++;
2821: 279A9F	IF     AF = AR  & 4000			;
2822: 1A8270	IF EQ  JUMP $2827			;if (addr & 0x4000) {
2823: 0D000A	       AX0 = AR				;
2824: 22741F	IF     AR = MR1 + 0100			;  page += 0x100;
2825: 0D00CA	       MR1 = AR				;  addr &= ~0x4000;
2826: 2398BF	IF     AR = AX0 & BFFF			;}
L2827:
2827: 0D00BA	       MR0 = AR				;
2828: 97B964	       DM($3B96) = M0			;var_3B96 = M0;
2829: 4FFFFA	       AR = #FFFF			;
282A: 93AC6A	       DM($3AC6) = AR			;var_3AC6 = 0xFFFF;
282B: 40001A	       AR = #0001			;
282C: 93B92A	       DM($3B92) = AR			;var_3B92 = 0x0001;
282D: 9BFE45	       DM($3FE4) = M5			;BWCOUNT = 0x0001;
L282E:
282E: 040060	       ENA INTS				;do {
282F: 000000	       NOP				;
2830: 040040	       DIS INTS				;
2831: 83AC6A	       AR = DM($3AC6)			;
2832: 22E21F	IF     AR = AR  - 0001			;
2833: 93AC6A	       DM($3AC6) = AR			;  var_3AC6--;
2834: 1E7F60	IF EQ  CALL $27F6			;  L27F6();
2835: 83B92A	       AR = DM($3B92)			;
2836: 227A0F	IF     AR = AR  + 0  			;
2837: 1A82E1	IF NE  JUMP $282E			;} while (var_3B92);
2838: 040060	       ENA INTS				;
2839: 0D03A3	       AR = IMASK			;
283A: 2382FF	IF     AR = AR  & FFF7			;
283B: 0D0C3A	       IMASK = AR			;IMASK &= ~0x0008;
283C: 3A1410	       I4 = #2141			;
283D: 500080	       SI = PM(I4,M4)			;
283E: 3801C0	       I4 = #001C			;
283F: 580080	       PM(I4,M4) = SI			;
2840: 0A000F	IF     RTS				;

L2841:							;bdma_vect2:
2841: 1A842F	IF     JUMP $2842			;return bdma_handler2();

L2842:							;void bdma_handler2()
2842: 040003	       POP STS				;
2843: 0D03A3	       AR = IMASK			;
2844: 040002	       PUSH STS				;
2845: 2382FF	IF     AR = AR  & FFF7			;
2846: 0D0C3A	       IMASK = AR			;IMASK &= ~0x0008;
2847: 8BB970	       I4 = DM($3B97)			;du* ptr = var_3B97;
2848: 3800A8	       L4 = #000A			;
2849: 8BB964	       M4 = DM($3B96)			;
284A: 090010	       MODIFY (I4,M4)			;ptr += var_3B96;
284B: 7000A0	       AR = DM(I4,M4)			;u16 temp1 = *ptr; ptr += var_3B96;
284C: 380008	       L4 = #0000			;
284D: 83B952	       MX0 = DM($3B95)			;u16 temp2 = var_3B95;
284E: 93B95A	       DM($3B95) = AR			;var_3B95 = temp1;
284F: 8BB971	       I5 = DM($3B97)			;var_3B97
2850: 3A8750	       I4 = #2875			;
2851: 0D084A	       M4 = AR				;
2852: 93B9AA	       DM($3B9A) = AR			;var_3B9A = temp1;
2853: 2A7AAA	       NONE = AR  + 0  			;
2854: 1A8684	IF LT  JUMP $2868			;
2855: 4002E4	       AY0 = #002E			;
2856: 2B22AA	       NONE = AY0 - AR 			;
2857: 1A8684	IF LT  JUMP $2868			;if (temp1 >= 0 && temp1 <= 0x2E) {
2858: 090010	       MODIFY (I4,M4)			;
2859: 0B001F	IF     CALL (I4)			;  L2875[temp1]();
285A: 3A94B0	       I4 = #294B			;
285B: 0D0842	       M4 = MX0				;
285C: 93B992	       DM($3B99) = MX0			;  var_3B99 = temp2;
285D: 0D00A2	       AR = MX0				;
285E: 2A7AAA	       NONE = AR  + 0  			;
285F: 1A8684	IF LT  JUMP $2868			;
2860: 4002E4	       AY0 = #002E			;
2861: 2B22AA	       NONE = AY0 - AR 			;
2862: 1A8684	IF LT  JUMP $2868			;  if (temp2 >= 0 && temp2 <= 0x2E) {
2863: 090010	       MODIFY (I4,M4)			;
2864: 380015	       M5 = #0001			;
2865: 87AC76	       M2 = DM($3AC7)			;
2866: 0B000F	IF     JUMP (I4)			;    L294B[temp2]();
2867: 0A001F	IF     RTI				;  }
L2868:							;}
2868: 93B93A	       DM($3B93) = AR			;else {
2869: 3BAE80	       I4 = #3AE8			;
286A: 8BAC74	       M4 = DM($3AC7)			;
286B: 090010	       MODIFY (I4,M4)			;
286C: 4FFFFA	       AR = #FFFF			;
286D: 7800A0	       DM(I4,M4) = AR			;
286E: 3BF280	       I4 = #3F28			;
286F: 090010	       MODIFY (I4,M4)			;
2870: 40000A	       AR = #0000			;
2871: 7800A0	       DM(I4,M4) = AR			;
2872: 40000A	       AR = #0000			;
2873: 93B92A	       DM($3B92) = AR			;
2874: 0A001F	IF     RTI				;}

L2875:							;
2875: 1A8A4F	IF     JUMP $28A4			;
2876: 1A8A6F	IF     JUMP $28A6			;
2877: 1A8A8F	IF     JUMP $28A8			;
2878: 1A8AAF	IF     JUMP $28AA			;
2879: 1A8ACF	IF     JUMP $28AC			;
287A: 1A8AEF	IF     JUMP $28AE			;
287B: 1A8B0F	IF     JUMP $28B0			;
287C: 1A8B2F	IF     JUMP $28B2			;
287D: 1A8B4F	IF     JUMP $28B4			;
287E: 1A8B6F	IF     JUMP $28B6			;
287F: 1A8B8F	IF     JUMP $28B8			;
2880: 1A8BAF	IF     JUMP $28BA			;
2881: 1A8BCF	IF     JUMP $28BC			;
2882: 1A8BEF	IF     JUMP $28BE			;
2883: 1A8EBF	IF     JUMP $28EB			;
2884: 1A8F6F	IF     JUMP $28F6			;
2885: 1A8F8F	IF     JUMP $28F8			;
2886: 1A8FAF	IF     JUMP $28FA			;
2887: 1A8FCF	IF     JUMP $28FC			;
2888: 1A8FEF	IF     JUMP $28FE			;
2889: 1A900F	IF     JUMP $2900			;
288A: 1A902F	IF     JUMP $2902			;
288B: 1A904F	IF     JUMP $2904			;
288C: 1A906F	IF     JUMP $2906			;
288D: 1A908F	IF     JUMP $2908			;
288E: 1A90AF	IF     JUMP $290A			;
288F: 1A90CF	IF     JUMP $290C			;
2890: 1A90EF	IF     JUMP $290E			;
2891: 1A910F	IF     JUMP $2910			;
2892: 1A912F	IF     JUMP $2912			;
2893: 1A914F	IF     JUMP $2914			;
2894: 1A916F	IF     JUMP $2916			;
2895: 1A918F	IF     JUMP $2918			;
2896: 1A91AF	IF     JUMP $291A			;
2897: 1A91CF	IF     JUMP $291C			;
2898: 1A91EF	IF     JUMP $291E			;
2899: 1A920F	IF     JUMP $2920			;
289A: 1A922F	IF     JUMP $2922			;
289B: 1A924F	IF     JUMP $2924			;
289C: 1A926F	IF     JUMP $2926			;
289D: 1A928F	IF     JUMP $2928			;
289E: 1A92AF	IF     JUMP $292A			;
289F: 1A92CF	IF     JUMP $292C			;
28A0: 1A92EF	IF     JUMP $292E			;
28A1: 1A930F	IF     JUMP $2930			;
28A2: 1A932F	IF     JUMP $2932			;
28A3: 1A934F	IF     JUMP $2934			;
L28A4:
28A4: 40004E	       SR0 = #0004			;
28A5: 1A935F	IF     JUMP $2935			;
L28A6:
28A6: 40000E	       SR0 = #0000			;
28A7: 1A935F	IF     JUMP $2935			;
L28A8:
28A8: 40001E	       SR0 = #0001			;
28A9: 1A935F	IF     JUMP $2935			;
L28AA:
28AA: 40004E	       SR0 = #0004			;
28AB: 1A935F	IF     JUMP $2935			;
L28AC:
28AC: 40001E	       SR0 = #0001			;
28AD: 1A935F	IF     JUMP $2935			;
L28AE:
28AE: 40004E	       SR0 = #0004			;
28AF: 1A935F	IF     JUMP $2935			;
L28B0:
28B0: 40002E	       SR0 = #0002			;
28B1: 1A935F	IF     JUMP $2935			;
L28B2:
28B2: 40000E	       SR0 = #0000			;
28B3: 1A935F	IF     JUMP $2935			;
L28B4:
28B4: 40001E	       SR0 = #0001			;
28B5: 1A935F	IF     JUMP $2935			;
L28B6:
28B6: 40004E	       SR0 = #0004			;
28B7: 1A935F	IF     JUMP $2935			;
L28B8:
28B8: 40001E	       SR0 = #0001			;
28B9: 1A935F	IF     JUMP $2935			;
L28BA:
28BA: 40001E	       SR0 = #0001			;
28BB: 1A935F	IF     JUMP $2935			;
L28BC:	
28BC: 40002E	       SR0 = #0002			;
28BD: 1A935F	IF     JUMP $2935			;

L28BE:
28BE: 83B98A	       AR = DM($3B98)			;
28BF: 227A0F	IF     AR = AR  + 0  			;
28C0: 1A8C40	IF EQ  JUMP $28C4			;
28C1: 40000A	       AR = #0000			;
28C2: 93B92A	       DM($3B92) = AR			;
28C3: 0A000F	IF     RTS				;
L28C4:
28C4: 3BB700	       I4 = #3B70			;
28C5: 8BAC74	       M4 = DM($3AC7)			;
28C6: 090010	       MODIFY (I4,M4)			;
28C7: 9BFE10	       DM($3FE1) = I4			;
28C8: 93FE2B	       DM($3FE2) = MR0			;
28C9: 4FFFD4	       AY0 = #FFFD			;
28CA: 23840F	IF     AR = MR1 & AY0			;
28CB: 93FE3A	       DM($3FE3) = AR			;
28CC: 40001A	       AR = #0001			;
28CD: 93FE4A	       DM($3FE4) = AR			;
28CE: 40000A	       AR = #0000			;
28CF: 93B92A	       DM($3B92) = AR			;
28D0: 22635F	IF     AR = MR0 + 0002			;
28D1: 279A9F	IF     AF = AR  & 4000			;
28D2: 1A8D70	IF EQ  JUMP $28D7			;
28D3: 0D000A	       AX0 = AR				;
28D4: 22741F	IF     AR = MR1 + 0100			;
28D5: 0D00CA	       MR1 = AR				;
28D6: 2398BF	IF     AR = AX0 & BFFF			;
28D7: 0D00BA	       MR0 = AR				;
28D8: 8BAC74	       M4 = DM($3AC7)			;
28D9: 3BAC80	       I4 = #3AC8			;
28DA: 090010	       MODIFY (I4,M4)			;
28DB: 090010	       MODIFY (I4,M4)			;
28DC: 380004	       M4 = #0000			;
28DD: 0F14F8	       SR = LSHIFT MR1 BY #F8 (LO)	;
28DE: 7000A0	       AR = DM(I4,M4)			;
28DF: 4FF004	       AY0 = #FF00			;
28E0: 27820F	IF     AF = AR  & AY0			;
28E1: 23B60F	IF     AR = SR0 | AF 			;
28E2: 380014	       M4 = #0001			;
28E3: 7800A0	       DM(I4,M4) = AR			;
28E4: 7800B0	       DM(I4,M4) = MR0			;
28E5: 83FE4A	       AR = DM($3FE4)			;
28E6: 227A0F	IF     AR = AR  + 0  			;
28E7: 1A8E51	IF NE  JUMP $28E5			;
28E8: 3C008C	       IFC = #0008			;
28E9: 000000	       NOP				;
28EA: 0A000F	IF     RTS				;
L28EB:
28EB: 8BB970	       I4 = DM($3B97)			;
28EC: 3800A8	       L4 = #000A			;
28ED: 380054	       M4 = #0005			;
28EE: 090010	       MODIFY (I4,M4)			;
28EF: 9BB970	       DM($3B97) = I4			;
28F0: 40000E	       SR0 = #0000			;
28F1: 93B96E	       DM($3B96) = SR0			;
28F2: 380008	       L4 = #0000			;
28F3: B002E0	       DM(I4,M4) = #002E		;
28F4: 3C800C	       IFC = #0800			;
28F5: 0A000F	IF     RTS				;

L28F6:
28F6: 40004E	       SR0 = #0004			;offs = 4;
28F7: 1A935F	IF     JUMP $2935			;
L28F8:
28F8: 40004E	       SR0 = #0004			;offs = 4;
28F9: 1A935F	IF     JUMP $2935			;
L28FA:
28FA: 40000E	       SR0 = #0000			;offs = 0;
28FB: 1A935F	IF     JUMP $2935			;
L28FC:
28FC: 40001E	       SR0 = #0001			;offs = 1;
28FD: 1A935F	IF     JUMP $2935			;
L28FE:
28FE: 40004E	       SR0 = #0004			;offs = 4;
28FF: 1A935F	IF     JUMP $2935			;
L2900:
2900: 40001E	       SR0 = #0001			;offs = 1;
2901: 1A935F	IF     JUMP $2935			;
L2902:
2902: 40001E	       SR0 = #0001			;offs = 1;
2903: 1A935F	IF     JUMP $2935			;
L2904:
2904: 40001E	       SR0 = #0001			;offs = 1;
2905: 1A935F	IF     JUMP $2935			;
L2906:
2906: 40004E	       SR0 = #0004			;offs = 4;
2907: 1A935F	IF     JUMP $2935			;
L2908:
2908: 40000E	       SR0 = #0000			;offs = 0;
2909: 1A935F	IF     JUMP $2935			;
L290A:
290A: 40001E	       SR0 = #0001			;offs = 1;
290B: 1A935F	IF     JUMP $2935			;
L290C:
290C: 40001E	       SR0 = #0001			;offs = 1;
290D: 1A935F	IF     JUMP $2935			;
L290E:
290E: 40004E	       SR0 = #0004			;offs = 4;
290F: 1A935F	IF     JUMP $2935			;
L2910:
2910: 40000E	       SR0 = #0000			;offs = 0;
2911: 1A935F	IF     JUMP $2935			;
L2912:
2912: 40000E	       SR0 = #0000			;offs = 0;
2913: 1A935F	IF     JUMP $2935			;
L2914:
2914: 40000E	       SR0 = #0000			;offs = 0;
2915: 1A935F	IF     JUMP $2935			;
L2916:
2916: 40000E	       SR0 = #0000			;offs = 0;
2917: 1A935F	IF     JUMP $2935			;
L2918:
2918: 40000E	       SR0 = #0000			;offs = 0;
2919: 1A935F	IF     JUMP $2935			;
L291A:
291A: 40001E	       SR0 = #0001			;offs = 1;
291B: 1A935F	IF     JUMP $2935			;
L291C:
291C: 40002E	       SR0 = #0002			;offs = 2;
291D: 1A935F	IF     JUMP $2935			;
L291E:
291E: 40002E	       SR0 = #0002			;offs = 2;
291F: 1A935F	IF     JUMP $2935			;
L2920:
2920: 40001E	       SR0 = #0001			;offs = 1;
2921: 1A935F	IF     JUMP $2935			;
L2922:
2922: 40004E	       SR0 = #0004			;offs = 4;
2923: 1A935F	IF     JUMP $2935			;
L2924:
2924: 40004E	       SR0 = #0004			;offs = 4;
2925: 1A935F	IF     JUMP $2935			;
L2926:
2926: 40004E	       SR0 = #0004			;offs = 4;
2927: 1A935F	IF     JUMP $2935			;
L2928:
2928: 40004E	       SR0 = #0004			;offs = 4;
2929: 1A935F	IF     JUMP $2935			;
L292A:
292A: 40002E	       SR0 = #0002			;offs = 2;
292B: 1A935F	IF     JUMP $2935			;
L292C:
292C: 40004E	       SR0 = #0004			;offs = 4;
292D: 1A935F	IF     JUMP $2935			;
L292C:
292E: 40002E	       SR0 = #0002			;offs = 2;
292F: 1A935F	IF     JUMP $2935			;
L2930:
2930: 40004E	       SR0 = #0004			;offs = 4;
2931: 1A935F	IF     JUMP $2935			;
L2932:
2932: 40000E	       SR0 = #0000			;offs = 0;
2933: 1A935F	IF     JUMP $2935			;
L2934:
2934: 0A000F	IF     RTS				;

L2935:							;
2935: 8BB970	       I4 = DM($3B97)			;
2936: 3800A8	       L4 = #000A			;
2937: 380054	       M4 = #0005			;
2938: 090010	       MODIFY (I4,M4)			;var_3B97 += 5;
2939: 9BFE10	       DM($3FE1) = I4			;BIAD = var_3B97;
293A: 9BB970	       DM($3B97) = I4			;
293B: 93FE2B	       DM($3FE2) = MR0			;BEAD = addr;
293C: 93FE3C	       DM($3FE3) = MR1			;BDMAC = page;
293D: 93B96E	       DM($3B96) = SR0			;var_3B96 = offs;
293E: 380008	       L4 = #0000			;
293F: 26661F	IF     AF = SR0 + 0001			;
2940: 22730F	IF     AR = MR0 + AF 			;addr += offs + 1;
2941: 279A9F	IF     AF = AR  & 4000			;
2942: 1A9470	IF EQ  JUMP $2947			;if (addr & 0x4000) {
2943: 0D000A	       AX0 = AR				;
2944: 22741F	IF     AR = MR1 + 0100			;
2945: 0D00CA	       MR1 = AR				;  page += 0x100;
2946: 2398BF	IF     AR = AX0 & BFFF			;  addr &= ~0x4000;
L2947:							;}
2947: 0D00BA	       MR0 = AR				;
2948: 22661F	IF     AR = SR0 + 0001			;
2949: 93FE4A	       DM($3FE4) = AR			;BWCOUNT = offs + 1;
294A: 0A000F	IF     RTS				;

L294B:
294B: 1A97AF	IF     JUMP $297A			;
294C: 1A98DF	IF     JUMP $298D			;
294D: 1A999F	IF     JUMP $2999			;
294E: 1A9A3F	IF     JUMP $29A3			;
294F: 1A9B2F	IF     JUMP $29B2			;
2950: 1A9B9F	IF     JUMP $29B9			;
2951: 1A9C8F	IF     JUMP $29C8			;
2952: 1A9FAF	IF     JUMP $29FA			;
2953: 1AA3CF	IF     JUMP $2A3C			;
2954: 1AA58F	IF     JUMP $2A58			;
2955: 1AA66F	IF     JUMP $2A66			;
2956: 1AA7EF	IF     JUMP $2A7E			;
2957: 1AA96F	IF     JUMP $2A96			;
2958: 1AA9DF	IF     JUMP $2A9D			;
2959: 1AAA5F	IF     JUMP $2AA5			;
295A: 1AAB1F	IF     JUMP $2AB1			;
295B: 1AAB3F	IF     JUMP $2AB3			;
295C: 1AAD1F	IF     JUMP $2AD1			;
295D: 1AADBF	IF     JUMP $2ADB			;
295E: 1AAEEF	IF     JUMP $2AEE			;
295F: 1AB02F	IF     JUMP $2B02			;
2960: 1AB04F	IF     JUMP $2B04			;
2961: 1AB1DF	IF     JUMP $2B1D			;
2962: 1AB41F	IF     JUMP $2B41			;
2963: 1AB50F	IF     JUMP $2B50			;
2964: 1AB57F	IF     JUMP $2B57			;
2965: 1AB67F	IF     JUMP $2B67			;
2966: 1AB71F	IF     JUMP $2B71			;
2967: 1AB8FF	IF     JUMP $2B8F			;
2968: 1AB91F	IF     JUMP $2B91			;
2969: 1AB93F	IF     JUMP $2B93			;
296A: 1ABA9F	IF     JUMP $2BA9			;
296B: 1ABABF	IF     JUMP $2BAB			;
296C: 1ABF3F	IF     JUMP $2BF3			;
296D: 1ABFEF	IF     JUMP $2BFE			;
296E: 1AC0BF	IF     JUMP $2C0B			;
296F: 1AC18F	IF     JUMP $2C18			;
2970: 1AC23F	IF     JUMP $2C23			;
2971: 1AC33F	IF     JUMP $2C33			;
2972: 1AC44F	IF     JUMP $2C44			;
2973: 1AC54F	IF     JUMP $2C54			;
2974: 1AC64F	IF     JUMP $2C64			;
2975: 1AC72F	IF     JUMP $2C72			;
2976: 1AC82F	IF     JUMP $2C82			;
2977: 1AC90F	IF     JUMP $2C90			;
2978: 1ACA0F	IF     JUMP $2CA0			;
2979: 1ACA1F	IF     JUMP $2CA1			;
297A: 700085	       SI = DM(I5,M5)			;
297B: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
297C: 700085	       SI = DM(I5,M5)			;
297D: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
297E: 37F102	       I2 = #3F10			;
297F: 09000A	       MODIFY (I2,M2)			;
2980: 6800E8	       DM(I2,M0) = SR0			;
2981: 700085	       SI = DM(I5,M5)			;
2982: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2983: 700085	       SI = DM(I5,M5)			;
2984: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2985: 37F082	       I2 = #3F08			;
2986: 09000A	       MODIFY (I2,M2)			;
2987: 6800E8	       DM(I2,M0) = SR0			;
2988: 37F282	       I2 = #3F28			;
2989: 4FFFF8	       SI = #FFFF			;
298A: 09000A	       MODIFY (I2,M2)			;
298B: 680088	       DM(I2,M0) = SI			;
298C: 0A001F	IF     RTI				;

298D: 37F282	       I2 = #3F28			;
298E: 400008	       SI = #0000			;
298F: 09000A	       MODIFY (I2,M2)			;
2990: 680088	       DM(I2,M0) = SI			;
2991: 34A1E2	       I2 = #0A1E			;
2992: 09000A	       MODIFY (I2,M2)			;
2993: 340087	       M3 = #0008			;
2994: 400000	       AX0 = #0000			;
2995: 3C0805	       CNTR = #0080			;
2996: 16997E	       DO $2997 UNTIL NCE		;
2997: 68000B	       DM(I2,M3) = AX0			;
2998: 0A001F	IF     RTI				;
2999: 37C002	       I2 = #3C00			;
299A: 09000A	       MODIFY (I2,M2)			;
299B: 700085	       SI = DM(I5,M5)			;
299C: 0F1007	       SR = LSHIFT SI  BY #07 (LO)	;
299D: 3402C5	       M1 = #002C			;
299E: 6800E9	       DM(I2,M1) = SR0			;
299F: 340015	       M1 = #0001			;
29A0: 40000E	       SR0 = #0000			;
29A1: 6800E9	       DM(I2,M1) = SR0			;
29A2: 0A001F	IF     RTI				;
29A3: 700085	       SI = DM(I5,M5)			;
29A4: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
29A5: 700085	       SI = DM(I5,M5)			;
29A6: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
29A7: 37C2C2	       I2 = #3C2C			;
29A8: 09000A	       MODIFY (I2,M2)			;
29A9: 6800E8	       DM(I2,M0) = SR0			;
29AA: 700085	       SI = DM(I5,M5)			;
29AB: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
29AC: 700085	       SI = DM(I5,M5)			;
29AD: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
29AE: 37C582	       I2 = #3C58			;
29AF: 09000A	       MODIFY (I2,M2)			;
29B0: 6800E8	       DM(I2,M0) = SR0			;
29B1: 0A001F	IF     RTI				;
29B2: 37C102	       I2 = #3C10			;
29B3: 09000A	       MODIFY (I2,M2)			;
29B4: 7000E5	       SR0 = DM(I5,M5)			;
29B5: 22EEDF	IF     AR = SR0 - 0080			;
29B6: 0F1207	       SR = LSHIFT AR  BY #07 (LO)	;
29B7: 6800E8	       DM(I2,M0) = SR0			;
29B8: 0A001F	IF     RTI				;
29B9: 700085	       SI = DM(I5,M5)			;
29BA: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
29BB: 700085	       SI = DM(I5,M5)			;
29BC: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
29BD: 37C3C2	       I2 = #3C3C			;
29BE: 09000A	       MODIFY (I2,M2)			;
29BF: 6800E8	       DM(I2,M0) = SR0			;
29C0: 700085	       SI = DM(I5,M5)			;
29C1: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
29C2: 700085	       SI = DM(I5,M5)			;
29C3: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
29C4: 37C682	       I2 = #3C68			;
29C5: 09000A	       MODIFY (I2,M2)			;
29C6: 6800E8	       DM(I2,M0) = SR0			;
29C7: 0A001F	IF     RTI				;
29C8: 0C3000	       ENA M_MODE			;
29C9: 37B823	       I3 = #3B82			;
29CA: 87AC77	       M3 = DM($3AC7)			;
29CB: 09000F	       MODIFY (I3,M3)			;
29CC: 6000AC	       AR = DM(I3,M0)			;
29CD: 22621F	IF     AR = AR  + 0001			;
29CE: 6800AC	       DM(I3,M0) = AR			;
29CF: 0D004B	       AY0 = MR0			;
29D0: 0D005C	       AY1 = MR1			;
29D1: 0D0127	       MX0 = M3				;
29D2: 400306	       MY0 = #0030			;
29D3: 20E00F	IF     MR = MX0 * MY0 (UU)		;
29D4: 0D002A	       MX0 = AR				;
29D5: 4000C6	       MY0 = #000C			;
29D6: 21600F	IF     MR = MR + MX0 * MY0 (UU)		;
29D7: 0D046B	       M2 = MR0				;
29D8: 341002	       I2 = #0100			;
29D9: 09000A	       MODIFY (I2,M2)			;
29DA: 700085	       SI = DM(I5,M5)			;
29DB: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
29DC: 700085	       SI = DM(I5,M5)			;
29DD: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
29DE: 340015	       M1 = #0001			;
29DF: 6800E9	       DM(I2,M1) = SR0			;
29E0: 37AE83	       I3 = #3AE8			;
29E1: 09000F	       MODIFY (I3,M3)			;
29E2: 6000AC	       AR = DM(I3,M0)			;
29E3: 6800A9	       DM(I2,M1) = AR			;
29E4: 37B703	       I3 = #3B70			;
29E5: 09000F	       MODIFY (I3,M3)			;
29E6: 6000AC	       AR = DM(I3,M0)			;
29E7: 6800A9	       DM(I2,M1) = AR			;
29E8: 83B95A	       AR = DM($3B95)			;
29E9: 6800A9	       DM(I2,M1) = AR			;
29EA: 680059	       DM(I2,M1) = AY1			;
29EB: 680049	       DM(I2,M1) = AY0			;
29EC: 0D00B4	       MR0 = AY0			;
29ED: 0D00C5	       MR1 = AY1			;
29EE: 83FE4A	       AR = DM($3FE4)			;
29EF: 227A0F	IF     AR = AR  + 0  			;
29F0: 1A9EE1	IF NE  JUMP $29EE			;
29F1: 83B96A	       AR = DM($3B96)			;
29F2: 6800A9	       DM(I2,M1) = AR			;
29F3: 87B973	       I3 = DM($3B97)			;
29F4: 3C0055	       CNTR = #0005			;
29F5: 169F7E	       DO $29F7 UNTIL NCE		;
29F6: 6000AD	       AR = DM(I3,M1)			;
29F7: 6800A9	       DM(I2,M1) = AR			;
29F8: 0C2000	       DIS M_MODE			;
29F9: 0A001F	IF     RTI				;
29FA: 0C3000	       ENA M_MODE			;
29FB: 37B823	       I3 = #3B82			;
29FC: 87AC77	       M3 = DM($3AC7)			;
29FD: 09000F	       MODIFY (I3,M3)			;
29FE: 6000AC	       AR = DM(I3,M0)			;
29FF: 0D004B	       AY0 = MR0			;
2A00: 0D005C	       AY1 = MR1			;
2A01: 0D0127	       MX0 = M3				;
2A02: 400306	       MY0 = #0030			;
2A03: 20E00F	IF     MR = MX0 * MY0 (UU)		;
2A04: 0D002A	       MX0 = AR				;
2A05: 4000C6	       MY0 = #000C			;
2A06: 21600F	IF     MR = MR + MX0 * MY0 (UU)		;
2A07: 0C2000	       DIS M_MODE			;
2A08: 0D046B	       M2 = MR0				;
2A09: 341002	       I2 = #0100			;
2A0A: 09000A	       MODIFY (I2,M2)			;
2A0B: 340015	       M1 = #0001			;
2A0C: 6000A8	       AR = DM(I2,M0)			;
2A0D: 22E21F	IF     AR = AR  - 0001			;
2A0E: 0D00B4	       MR0 = AY0			;
2A0F: 0D00C5	       MR1 = AY1			;
2A10: 1AA151	IF NE  JUMP $2A15			;
2A11: 6000AC	       AR = DM(I3,M0)			;
2A12: 22E21F	IF     AR = AR  - 0001			;
2A13: 6800AC	       DM(I3,M0) = AR			;
2A14: 0A001F	IF     RTI				;
2A15: 26621F	IF     AF = AR  + 0001			;
2A16: 1AA181	IF NE  JUMP $2A18			;
2A17: 40000A	       AR = #0000			;
2A18: 6800A9	       DM(I2,M1) = AR			;
2A19: 37AE83	       I3 = #3AE8			;
2A1A: 09000F	       MODIFY (I3,M3)			;
2A1B: 6000A9	       AR = DM(I2,M1)			;
2A1C: 6800AC	       DM(I3,M0) = AR			;
2A1D: 37B703	       I3 = #3B70			;
2A1E: 09000F	       MODIFY (I3,M3)			;
2A1F: 6000A9	       AR = DM(I2,M1)			;
2A20: 6800AC	       DM(I3,M0) = AR			;
2A21: 6000A9	       AR = DM(I2,M1)			;
2A22: 93B95A	       DM($3B95) = AR			;
2A23: 6000C9	       MR1 = DM(I2,M1)			;
2A24: 6000B9	       MR0 = DM(I2,M1)			;
2A25: 6000A9	       AR = DM(I2,M1)			;
2A26: 93B96A	       DM($3B96) = AR			;
2A27: 87B973	       I3 = DM($3B97)			;
2A28: 3C0055	       CNTR = #0005			;
2A29: 16A2BE	       DO $2A2B UNTIL NCE		;
2A2A: 6000A9	       AR = DM(I2,M1)			;
2A2B: 6800AD	       DM(I3,M1) = AR			;
2A2C: 0C2000	       DIS M_MODE			;
2A2D: 83FE4A	       AR = DM($3FE4)			;
2A2E: 227A0F	IF     AR = AR  + 0  			;
2A2F: 1AA2D1	IF NE  JUMP $2A2D			;
2A30: 83B95A	       AR = DM($3B95)			;
2A31: 4000D4	       AY0 = #000D			;
2A32: 22E20F	IF     AR = AR  - AY0			;
2A33: 1AA390	IF EQ  JUMP $2A39			;
2A34: 40001A	       AR = #0001			;
2A35: 93B92A	       DM($3B92) = AR			;
2A36: 3C800C	       IFC = #0800			;
2A37: 000000	       NOP				;
2A38: 0A001F	IF     RTI				;
2A39: 1E8D8F	IF     CALL $28D8			;
2A3A: 0A001F	IF     RTI				;
2A3B: 0A001F	IF     RTI				;
2A3C: 7000A5	       AR = DM(I5,M5)			;
2A3D: 3BAF81	       I5 = #3AF8			;
2A3E: 22E21F	IF     AR = AR  - 0001			;
2A3F: 0D085A	       M5 = AR				;
2A40: 090015	       MODIFY (I5,M5)			;
2A41: 090015	       MODIFY (I5,M5)			;
2A42: 380015	       M5 = #0001			;
2A43: 7000A5	       AR = DM(I5,M5)			;
2A44: 380005	       M5 = #0000			;
2A45: 700005	       AX0 = DM(I5,M5)			;
2A46: 4BFFF4	       AY0 = #BFFF			;
2A47: 23820F	IF     AR = AR  & AY0			;
2A48: 2A78AA	       NONE = AX0 + 0  			;
2A49: 1AA4D1	IF NE  JUMP $2A4D			;
2A4A: 227A0F	IF     AR = AR  + 0  			;
2A4B: 1AA4D1	IF NE  JUMP $2A4D			;
2A4C: 0A001F	IF     RTI				;
2A4D: 400008	       SI = #0000			;
2A4E: 3BFFF5	       M5 = #3FFF			;
2A4F: 780085	       DM(I5,M5) = SI			;
2A50: 780085	       DM(I5,M5) = SI			;
2A51: 380015	       M5 = #0001			;
2A52: 0D004B	       AY0 = MR0			;
2A53: 0D00BA	       MR0 = AR				;
2A54: 0D0080	       SI = AX0				;
2A55: 1E7EEF	IF     CALL $27EE			;
2A56: 0D00B4	       MR0 = AY0			;
2A57: 0A001F	IF     RTI				;

2A58: 700085	       SI = DM(I5,M5)			;
2A59: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2A5A: 700085	       SI = DM(I5,M5)			;
2A5B: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2A5C: 0D004B	       AY0 = MR0			;
2A5D: 0D00BE	       MR0 = SR0			;
2A5E: 700085	       SI = DM(I5,M5)			;
2A5F: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2A60: 700085	       SI = DM(I5,M5)			;
2A61: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2A62: 0D008E	       SI = SR0				;
2A63: 1E7EEF	IF     CALL $27EE			;
2A64: 0D00B4	       MR0 = AY0			;
2A65: 0A001F	IF     RTI				;


2A66: 700045	       AY0 = DM(I5,M5)			;
2A67: 3BD8A0	       I4 = #3D8A			;
2A68: 8BAC75	       M5 = DM($3AC7)			;
2A69: 090011	       MODIFY (I4,M5)			;
2A6A: 380005	       M5 = #0000			;
2A6B: 22A00F	IF     AR = -AY0			;
2A6C: 0D009A	       SE = AR				;
2A6D: 7000A1	       AR = DM(I4,M5)			;
2A6E: 0E120F	IF     SR = LSHIFT AR  (LO)		;
2A6F: 27861F	IF     AF = SR0 & 0001			;
2A70: 0A0011	IF NE  RTI				;
2A71: 0D0094	       SE = AY0				;
2A72: 400018	       SI = #0001			;
2A73: 0E100F	IF     SR = LSHIFT SI  (LO)		;
2A74: 0F1A00	       SR = SR OR LSHIFT AR  BY #00 (LO);
2A75: 7800E1	       DM(I4,M5) = SR0			;
2A76: 43D9AA	       AR = #3D9A			;
2A77: 22620F	IF     AR = AR  + AY0			;
2A78: 0D081A	       I5 = AR				;
2A79: 7000A5	       AR = DM(I5,M5)			;
2A7A: 22621F	IF     AR = AR  + 0001			;
2A7B: 7800A5	       DM(I5,M5) = AR			;
2A7C: 380015	       M5 = #0001			;
2A7D: 0A001F	IF     RTI				;
2A7E: 700045	       AY0 = DM(I5,M5)			;
2A7F: 0D0094	       SE = AY0				;
2A80: 3BD8A0	       I4 = #3D8A			;
2A81: 8BAC75	       M5 = DM($3AC7)			;
2A82: 090011	       MODIFY (I4,M5)			;
2A83: 380005	       M5 = #0000			;
2A84: 7000A1	       AR = DM(I4,M5)			;
2A85: 400018	       SI = #0001			;
2A86: 0E100F	IF     SR = LSHIFT SI  (LO)		;
2A87: 27660F	IF     AF = ~SR0			;
2A88: 23920F	IF     AR = AR  & AF 			;
2A89: 7800A1	       DM(I4,M5) = AR			;
2A8A: 43D9AA	       AR = #3D9A			;
2A8B: 22620F	IF     AR = AR  + AY0			;
2A8C: 0D081A	       I5 = AR				;
2A8D: 380005	       M5 = #0000			;
2A8E: 7000A5	       AR = DM(I5,M5)			;
2A8F: 22E21F	IF     AR = AR  - 0001			;
2A90: 1AA935	IF GE  JUMP $2A93			;
2A91: 1E7EBF	IF     CALL $27EB			;
2A92: 40000A	       AR = #0000			;
2A93: 7800A5	       DM(I5,M5) = AR			;
2A94: 380015	       M5 = #0001			;
2A95: 0A001F	IF     RTI				;
2A96: 700085	       SI = DM(I5,M5)			;
2A97: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2A98: 700085	       SI = DM(I5,M5)			;
2A99: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2A9A: 1E15BF	IF     CALL $215B			;
2A9B: 1E167F	IF     CALL $2167			;
2A9C: 0A001F	IF     RTI				;
2A9D: 700085	       SI = DM(I5,M5)			;
2A9E: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2A9F: 700085	       SI = DM(I5,M5)			;
2AA0: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2AA1: 37B702	       I2 = #3B70			;
2AA2: 09000A	       MODIFY (I2,M2)			;
2AA3: 6800E8	       DM(I2,M0) = SR0			;
2AA4: 0A001F	IF     RTI				;

L2AA5:							;
2AA5: 83B98A	       AR = DM($3B98)			;
2AA6: 227A0F	IF     AR = AR  + 0  			;
2AA7: 1AAAE1	IF NE  JUMP $2AAE			;
2AA8: 3BAE80	       I4 = #3AE8			;
2AA9: 8BAC74	       M4 = DM($3AC7)			;
2AAA: 090010	       MODIFY (I4,M4)			;
2AAB: 4FFFFE	       SR0 = #FFFF			;
2AAC: 7800E0	       DM(I4,M4) = SR0			;
2AAD: 1E7D0F	IF     CALL $27D0			;
L2AAE:
2AAE: 40000A	       AR = #0000			;
2AAF: 93B92A	       DM($3B92) = AR			;
2AB0: 0A001F	IF     RTI				;


2AB1: 4FFFEE	       SR0 = #FFFE			;
2AB2: 1AAB4F	IF     JUMP $2AB4			;
2AB3: 4FFFFE	       SR0 = #FFFF			;
2AB4: 0D0106	       AX0 = M2				;
2AB5: 400084	       AY0 = #0008			;
2AB6: 22E00F	IF     AR = AX0 - AY0			;
2AB7: 0A0014	IF LT  RTI				;
2AB8: 0D046A	       M2 = AR				;
2AB9: 37A322	       I2 = #3A32			;
2ABA: 09000A	       MODIFY (I2,M2)			;
2ABB: 6800EA	       DM(I2,M2) = SR0			;
2ABC: 700085	       SI = DM(I5,M5)			;
2ABD: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2ABE: 700085	       SI = DM(I5,M5)			;
2ABF: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2AC0: 37A702	       I2 = #3A70			;
2AC1: 09000A	       MODIFY (I2,M2)			;
2AC2: 6800E8	       DM(I2,M0) = SR0			;
2AC3: 37A3A2	       I2 = #3A3A			;
2AC4: 09000A	       MODIFY (I2,M2)			;
2AC5: 6800E8	       DM(I2,M0) = SR0			;
2AC6: 700085	       SI = DM(I5,M5)			;
2AC7: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2AC8: 700085	       SI = DM(I5,M5)			;
2AC9: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2ACA: 37A782	       I2 = #3A78			;
2ACB: 09000A	       MODIFY (I2,M2)			;
2ACC: 6800E8	       DM(I2,M0) = SR0			;
2ACD: 37A742	       I2 = #3A74			;
2ACE: 09000A	       MODIFY (I2,M2)			;
2ACF: 6800E8	       DM(I2,M0) = SR0			;
2AD0: 0A001F	IF     RTI				;
2AD1: 0D0106	       AX0 = M2				;
2AD2: 400084	       AY0 = #0008			;
2AD3: 22E00F	IF     AR = AX0 - AY0			;
2AD4: 0A0014	IF LT  RTI				;
2AD5: 0D046A	       M2 = AR				;
2AD6: 40000E	       SR0 = #0000			;
2AD7: 37A322	       I2 = #3A32			;
2AD8: 09000A	       MODIFY (I2,M2)			;
2AD9: 6800EA	       DM(I2,M2) = SR0			;
2ADA: 0A001F	IF     RTI				;
2ADB: 0D0106	       AX0 = M2				;
2ADC: 400084	       AY0 = #0008			;
2ADD: 22E00F	IF     AR = AX0 - AY0			;
2ADE: 0A0014	IF LT  RTI				;
2ADF: 0D046A	       M2 = AR				;
2AE0: 37A0A2	       I2 = #3A0A			;
2AE1: 09000A	       MODIFY (I2,M2)			;
2AE2: 700085	       SI = DM(I5,M5)			;
2AE3: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2AE4: 0F36FF	       SR = ASHIFT SR0 BY #FF (LO)	;
2AE5: 6800E9	       DM(I2,M1) = SR0			;
2AE6: 37A182	       I2 = #3A18			;
2AE7: 09000A	       MODIFY (I2,M2)			;
2AE8: 40000E	       SR0 = #0000			;
2AE9: 6800E8	       DM(I2,M0) = SR0			;
2AEA: 37A142	       I2 = #3A14			;
2AEB: 09000A	       MODIFY (I2,M2)			;
2AEC: 6800E8	       DM(I2,M0) = SR0			;
2AED: 0A001F	IF     RTI				;
2AEE: 0D0106	       AX0 = M2				;
2AEF: 400084	       AY0 = #0008			;
2AF0: 22E00F	IF     AR = AX0 - AY0			;
2AF1: 0A0014	IF LT  RTI				;
2AF2: 0D046A	       M2 = AR				;
2AF3: 700085	       SI = DM(I5,M5)			;
2AF4: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2AF5: 700085	       SI = DM(I5,M5)			;
2AF6: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2AF7: 37A142	       I2 = #3A14			;
2AF8: 09000A	       MODIFY (I2,M2)			;
2AF9: 6800E8	       DM(I2,M0) = SR0			;
2AFA: 700085	       SI = DM(I5,M5)			;
2AFB: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2AFC: 700085	       SI = DM(I5,M5)			;
2AFD: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2AFE: 37A182	       I2 = #3A18			;
2AFF: 09000A	       MODIFY (I2,M2)			;
2B00: 6800E8	       DM(I2,M0) = SR0			;
2B01: 0A001F	IF     RTI				;

2B02: 40001A	       AR = #0001			;
2B03: 1AB05F	IF     JUMP $2B05			;
2B04: 40002A	       AR = #0002			;
2B05: 378D02	       I2 = #38D0			;
2B06: 09000A	       MODIFY (I2,M2)			;
2B07: 6800AA	       DM(I2,M2) = AR			;buf_38D0[M2] = 2;
2B08: 378B02	       I2 = #38B0			;
2B09: 09000A	       MODIFY (I2,M2)			;
2B0A: 09000A	       MODIFY (I2,M2)			;
2B0B: 40000A	       AR = #0000			;
2B0C: 340015	       M1 = #0001			;
2B0D: 6800A9	       DM(I2,M1) = AR			;
2B0E: 6800A9	       DM(I2,M1) = AR			;
2B0F: 7000A5	       AR = DM(I5,M5)			;
2B10: 378A02	       I2 = #38A0			;
2B11: 09000A	       MODIFY (I2,M2)			;
2B12: 0F1207	       SR = LSHIFT AR BY #07 (LO)	;
2B13: 6800E9	       DM(I2,M1) = SR0			;
2B14: 378E02	       I2 = #38E0			;
2B15: 09000A	       MODIFY (I2,M2)			;
2B16: 40000E	       SR0 = #0000			;
2B17: 6800EA	       DM(I2,M2) = SR0			;
2B18: 378F02	       I2 = #38F0			;
2B19: 09000A	       MODIFY (I2,M2)			;
2B1A: 40000E	       SR0 = #0000			;
2B1B: 6800EA	       DM(I2,M2) = SR0			;
2B1C: 0A001F	IF     RTI				;

2B1D: 378A02	       I2 = #38A0			;
2B1E: 09000A	       MODIFY (I2,M2)			;
2B1F: 340004	       M0 = #0000			;
2B20: 600048	       AY0 = DM(I2,M0)			;
2B21: 700085	       SI = DM(I5,M5)			;
2B22: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2B23: 0F36FF	       SR = ASHIFT SR0 BY #FF (LO)	;
2B24: 22660F	IF     AR = SR0 + AY0			;
2B25: 1AB2B4	IF LT  JUMP $2B2B			;
2B26: 41F805	       AY1 = #1F80			;
2B27: 2AEAAA	       NONE = AR  - AY1			;
2B28: 1AB2C3	IF LE  JUMP $2B2C			;
2B29: 41F80A	       AR = #1F80			;
2B2A: 1AB2CF	IF     JUMP $2B2C			;
2B2B: 40000A	       AR = #0000			;
2B2C: 6800A8	       DM(I2,M0) = AR			;
2B2D: 22E20F	IF     AR = AR  - AY0			;
2B2E: 0F12F9	       SR = LSHIFT AR  BY #F9 (LO)	;
2B2F: 22E69F	IF     AR = SR0 - 0004			;
2B30: 1AB383	IF LE  JUMP $2B38			;
2B31: 378B02	       I2 = #38B0			;
2B32: 09000A	       MODIFY (I2,M2)			;
2B33: 09000A	       MODIFY (I2,M2)			;
2B34: 40000A	       AR = #0000			;
2B35: 340015	       M1 = #0001			;
2B36: 6800A9	       DM(I2,M1) = AR			;
2B37: 6800A9	       DM(I2,M1) = AR			;
2B38: 378E02	       I2 = #38E0			;
2B39: 09000A	       MODIFY (I2,M2)			;
2B3A: 40000E	       SR0 = #0000			;
2B3B: 6800EA	       DM(I2,M2) = SR0			;
2B3C: 378F02	       I2 = #38F0			;
2B3D: 09000A	       MODIFY (I2,M2)			;
2B3E: 40000E	       SR0 = #0000			;
2B3F: 6800EA	       DM(I2,M2) = SR0			;
2B40: 0A001F	IF     RTI				;
2B41: 378E02	       I2 = #38E0			;
2B42: 09000A	       MODIFY (I2,M2)			;
2B43: 700085	       SI = DM(I5,M5)			;
2B44: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2B45: 700085	       SI = DM(I5,M5)			;
2B46: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2B47: 6800EA	       DM(I2,M2) = SR0			;
2B48: 378F02	       I2 = #38F0			;
2B49: 09000A	       MODIFY (I2,M2)			;
2B4A: 700085	       SI = DM(I5,M5)			;
2B4B: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2B4C: 700085	       SI = DM(I5,M5)			;
2B4D: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2B4E: 6800EA	       DM(I2,M2) = SR0			;
2B4F: 0A001F	IF     RTI				;

2B50: 97B9B6	       DM($3B9B) = M2			;
2B51: 378D02	       I2 = #38D0			;
2B52: 09000A	       MODIFY (I2,M2)			;
2B53: 6000A8	       AR = DM(I2,M0)			;
2B54: 233A0F	IF     AR = 0   - AR 			;
2B55: 6800AA	       DM(I2,M2) = AR			;buf_38D0[M2] = -buf_38D0[M2];
2B56: 0A001F	IF     RTI				;

2B57: 37B002	       I2 = #3B00			;
2B58: 09000A	       MODIFY (I2,M2)			;
2B59: 340406	       M2 = #0040			;
2B5A: 09000A	       MODIFY (I2,M2)			;
2B5B: 7000A5	       AR = DM(I5,M5)			;
2B5C: 4000C4	       AY0 = #000C			;
2B5D: 22E20F	IF     AR = AR  - AY0			;
2B5E: 1AB644	IF LT  JUMP $2B64			;
2B5F: 400044	       AY0 = #0004			;
2B60: 2AE2AA	       NONE = AR  - AY0			;
2B61: 1AB645	IF GE  JUMP $2B64			;
2B62: 6800AA	       DM(I2,M2) = AR			;
2B63: 0A001F	IF     RTI				;
2B64: 4FFFFA	       AR = #FFFF			;
2B65: 6800AA	       DM(I2,M2) = AR			;
2B66: 0A001F	IF     RTI				;
2B67: 37C202	       I2 = #3C20			;
2B68: 09000A	       MODIFY (I2,M2)			;
2B69: 700085	       SI = DM(I5,M5)			;
2B6A: 0F1007	       SR = LSHIFT SI  BY #07 (LO)	;
2B6B: 3402C5	       M1 = #002C			;
2B6C: 6800E9	       DM(I2,M1) = SR0			;
2B6D: 340015	       M1 = #0001			;
2B6E: 40000E	       SR0 = #0000			;
2B6F: 6800E9	       DM(I2,M1) = SR0			;
2B70: 0A001F	IF     RTI				;
2B71: 700085	       SI = DM(I5,M5)			;
2B72: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2B73: 700085	       SI = DM(I5,M5)			;
2B74: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2B75: 37C4C2	       I2 = #3C4C			;
2B76: 09000A	       MODIFY (I2,M2)			;
2B77: 6800E8	       DM(I2,M0) = SR0			;
2B78: 700085	       SI = DM(I5,M5)			;
2B79: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2B7A: 700085	       SI = DM(I5,M5)			;
2B7B: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2B7C: 37C782	       I2 = #3C78			;
2B7D: 09000A	       MODIFY (I2,M2)			;
2B7E: 6800E8	       DM(I2,M0) = SR0			;
2B7F: 0A001F	IF     RTI				;
2B80: 0D01A6	       AR = M2				;
2B81: 4000C4	       AY0 = #000C			;
2B82: 2AE2AA	       NONE = AR  - AY0			;
2B83: 1AB855	IF GE  JUMP $2B85			;
2B84: 1AB89F	IF     JUMP $2B89			;
2B85: 400104	       AY0 = #0010			;
2B86: 2AE2AA	       NONE = AR  - AY0			;
2B87: 1AB892	IF GT  JUMP $2B89			;
2B88: 1AB8AF	IF     JUMP $2B8A			;
2B89: 0A001F	IF     RTI				;
2B8A: 4000C4	       AY0 = #000C			;
2B8B: 0D01A6	       AR = M2				;
2B8C: 22E20F	IF     AR = AR  - AY0			;
2B8D: 0D046A	       M2 = AR				;
2B8E: 0A000F	IF     RTS				;
2B8F: 400010	       AX0 = #0001			;
2B90: 1ABC3F	IF     JUMP $2BC3			;
2B91: 400030	       AX0 = #0003			;
2B92: 1ABC3F	IF     JUMP $2BC3			;
2B93: 379C62	       I2 = #39C6			;
2B94: 40000A	       AR = #0000			;
2B95: 0D0546	       M0 = M2				;
2B96: 3C0045	       CNTR = #0004			;
2B97: 16B98E	       DO $2B98 UNTIL NCE		;
2B98: 090008	       MODIFY (I2,M0)			;
2B99: 340014	       M0 = #0001			;
2B9A: 3C0045	       CNTR = #0004			;
2B9B: 16B9CE	       DO $2B9C UNTIL NCE		;
2B9C: 6800A8	       DM(I2,M0) = AR			;
2B9D: 0D0546	       M0 = M2				;
2B9E: 379D62	       I2 = #39D6			;
2B9F: 3C0045	       CNTR = #0004			;
2BA0: 16BA1E	       DO $2BA1 UNTIL NCE		;
2BA1: 090008	       MODIFY (I2,M0)			;
2BA2: 340014	       M0 = #0001			;
2BA3: 3C0045	       CNTR = #0004			;
2BA4: 16BA5E	       DO $2BA5 UNTIL NCE		;
2BA5: 6800A8	       DM(I2,M0) = AR			;
2BA6: 340004	       M0 = #0000			;
2BA7: 400020	       AX0 = #0002			;
2BA8: 1ABC3F	IF     JUMP $2BC3			;
2BA9: 400040	       AX0 = #0004			;
2BAA: 1ABADF	IF     JUMP $2BAD			;
2BAB: 400000	       AX0 = #0000			;
2BAC: 1ABC3F	IF     JUMP $2BC3			;
2BAD: 1EB80F	IF     CALL $2B80			;
2BAE: 40002A	       AR = #0002			;
2BAF: 0D0146	       AY0 = M2				;
2BB0: 2AE2AA	       NONE = AR  - AY0			;
2BB1: 0A0011	IF NE  RTI				;
2BB2: 3747C2	       I2 = #347C			;
2BB3: 09000A	       MODIFY (I2,M2)			;
2BB4: 340016	       M2 = #0001			;
2BB5: 68000A	       DM(I2,M2) = AX0			;
2BB6: 22601F	IF     AR = AX0 + 0001			;
2BB7: 6800AA	       DM(I2,M2) = AR			;
2BB8: 430008	       SI = #3000			;
2BB9: 939FD8	       DM($39FD) = SI			;
2BBA: 400008	       SI = #0000			;
2BBB: 939FE8	       DM($39FE) = SI			;
2BBC: 939FF8	       DM($39FF) = SI			;
2BBD: 4577C8	       SI = #577C			;
2BBE: 93A028	       DM($3A02) = SI			;
2BBF: 400008	       SI = #0000			;
2BC0: 93A038	       DM($3A03) = SI			;
2BC1: 93A048	       DM($3A04) = SI			;
2BC2: 0A001F	IF     RTI				;
2BC3: 1EB80F	IF     CALL $2B80			;
2BC4: 3747C2	       I2 = #347C			;
2BC5: 09000A	       MODIFY (I2,M2)			;
2BC6: 68000A	       DM(I2,M2) = AX0			;
2BC7: 379A42	       I2 = #39A4			;
2BC8: 09000A	       MODIFY (I2,M2)			;
2BC9: 40000A	       AR = #0000			;
2BCA: 6800AA	       DM(I2,M2) = AR			;
2BCB: 340045	       M1 = #0004			;
2BCC: 379982	       I2 = #3998			;
2BCD: 09000A	       MODIFY (I2,M2)			;
2BCE: 40000A	       AR = #0000			;
2BCF: 3C0035	       CNTR = #0003			;
2BD0: 16BD1E	       DO $2BD1 UNTIL NCE		;
2BD1: 6800A9	       DM(I2,M1) = AR			;
2BD2: 3798C2	       I2 = #398C			;
2BD3: 09000A	       MODIFY (I2,M2)			;
2BD4: 40000A	       AR = #0000			;
2BD5: 3C0035	       CNTR = #0003			;
2BD6: 16BD7E	       DO $2BD7 UNTIL NCE		;
2BD7: 6800A9	       DM(I2,M1) = AR			;
2BD8: 379802	       I2 = #3980			;
2BD9: 09000A	       MODIFY (I2,M2)			;
2BDA: 41000A	       AR = #1000			;
2BDB: 6800A9	       DM(I2,M1) = AR			;
2BDC: 40280A	       AR = #0280			;
2BDD: 6800A9	       DM(I2,M1) = AR			;
2BDE: 40100A	       AR = #0100			;
2BDF: 6800A9	       DM(I2,M1) = AR			;
2BE0: 379BC2	       I2 = #39BC			;
2BE1: 09000A	       MODIFY (I2,M2)			;
2BE2: 600049	       AY0 = DM(I2,M1)			;
2BE3: 340004	       M0 = #0000			;
2BE4: 379B42	       I2 = #39B4			;
2BE5: 09000A	       MODIFY (I2,M2)			;
2BE6: 23220F	IF     AR = AY0 - AR 			;
2BE7: 41FFF4	       AY0 = #1FFF			;
2BE8: 23820F	IF     AR = AR  & AY0			;
2BE9: 6800A8	       DM(I2,M0) = AR			;
2BEA: 379A82	       I2 = #39A8			;
2BEB: 09000A	       MODIFY (I2,M2)			;
2BEC: 40000A	       AR = #0000			;
2BED: 6800A9	       DM(I2,M1) = AR			;
2BEE: 379B02	       I2 = #39B0			;
2BEF: 09000A	       MODIFY (I2,M2)			;
2BF0: 6800A9	       DM(I2,M1) = AR			;
2BF1: 340015	       M1 = #0001			;
2BF2: 0A001F	IF     RTI				;
2BF3: 1EB80F	IF     CALL $2B80			;
2BF4: 379802	       I2 = #3980			;
2BF5: 09000A	       MODIFY (I2,M2)			;
2BF6: 700085	       SI = DM(I5,M5)			;
2BF7: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2BF8: 6800EA	       DM(I2,M2) = SR0			;
2BF9: 379982	       I2 = #3998			;
2BFA: 09000A	       MODIFY (I2,M2)			;
2BFB: 40000A	       AR = #0000			;
2BFC: 6800AA	       DM(I2,M2) = AR			;
2BFD: 0A001F	IF     RTI				;
2BFE: 1EB80F	IF     CALL $2B80			;
2BFF: 379842	       I2 = #3984			;
2C00: 09000A	       MODIFY (I2,M2)			;
2C01: 700085	       SI = DM(I5,M5)			;
2C02: 0F100E	       SR = LSHIFT SI  BY #0E (LO)	;
2C03: 700085	       SI = DM(I5,M5)			;
2C04: 0F1806	       SR = SR OR LSHIFT SI  BY #06 (LO);
2C05: 6800EA	       DM(I2,M2) = SR0			;
2C06: 3799C2	       I2 = #399C			;
2C07: 09000A	       MODIFY (I2,M2)			;
2C08: 40000A	       AR = #0000			;
2C09: 6800AA	       DM(I2,M2) = AR			;
2C0A: 0A001F	IF     RTI				;
2C0B: 1EB80F	IF     CALL $2B80			;
2C0C: 379882	       I2 = #3988			;
2C0D: 09000A	       MODIFY (I2,M2)			;
2C0E: 700085	       SI = DM(I5,M5)			;
2C0F: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C10: 700085	       SI = DM(I5,M5)			;
2C11: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C12: 6800EA	       DM(I2,M2) = SR0			;
2C13: 379A02	       I2 = #39A0			;
2C14: 09000A	       MODIFY (I2,M2)			;
2C15: 40000A	       AR = #0000			;
2C16: 6800AA	       DM(I2,M2) = AR			;
2C17: 0A001F	IF     RTI				;
2C18: 1EB80F	IF     CALL $2B80			;
2C19: 379A82	       I2 = #39A8			;
2C1A: 09000A	       MODIFY (I2,M2)			;
2C1B: 700085	       SI = DM(I5,M5)			;
2C1C: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C1D: 6800EA	       DM(I2,M2) = SR0			;
2C1E: 379B02	       I2 = #39B0			;
2C1F: 09000A	       MODIFY (I2,M2)			;
2C20: 40000A	       AR = #0000			;
2C21: 6800AA	       DM(I2,M2) = AR			;
2C22: 0A001F	IF     RTI				;
2C23: 1EB80F	IF     CALL $2B80			;
2C24: 3798C2	       I2 = #398C			;
2C25: 09000A	       MODIFY (I2,M2)			;
2C26: 700085	       SI = DM(I5,M5)			;
2C27: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C28: 700085	       SI = DM(I5,M5)			;
2C29: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C2A: 6800EA	       DM(I2,M2) = SR0			;
2C2B: 379982	       I2 = #3998			;
2C2C: 09000A	       MODIFY (I2,M2)			;
2C2D: 700085	       SI = DM(I5,M5)			;
2C2E: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C2F: 700085	       SI = DM(I5,M5)			;
2C30: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C31: 6800EA	       DM(I2,M2) = SR0			;
2C32: 0A001F	IF     RTI				;
2C33: 1EB80F	IF     CALL $2B80			;
2C34: 379902	       I2 = #3990			;
2C35: 09000A	       MODIFY (I2,M2)			;
2C36: 700085	       SI = DM(I5,M5)			;
2C37: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C38: 700085	       SI = DM(I5,M5)			;
2C39: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C3A: 6800EA	       DM(I2,M2) = SR0			;
2C3B: 97B9C2	       DM($3B9C) = I2			;
2C3C: 3799C2	       I2 = #399C			;
2C3D: 09000A	       MODIFY (I2,M2)			;
2C3E: 700085	       SI = DM(I5,M5)			;
2C3F: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C40: 700085	       SI = DM(I5,M5)			;
2C41: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C42: 6800EA	       DM(I2,M2) = SR0			;
2C43: 0A001F	IF     RTI				;
2C44: 1EB80F	IF     CALL $2B80			;
2C45: 379942	       I2 = #3994			;
2C46: 09000A	       MODIFY (I2,M2)			;
2C47: 700085	       SI = DM(I5,M5)			;
2C48: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C49: 700085	       SI = DM(I5,M5)			;
2C4A: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C4B: 6800EA	       DM(I2,M2) = SR0			;
2C4C: 379A02	       I2 = #39A0			;
2C4D: 09000A	       MODIFY (I2,M2)			;
2C4E: 700085	       SI = DM(I5,M5)			;
2C4F: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C50: 700085	       SI = DM(I5,M5)			;
2C51: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C52: 6800EA	       DM(I2,M2) = SR0			;
2C53: 0A001F	IF     RTI				;
2C54: 1EB80F	IF     CALL $2B80			;
2C55: 379AC2	       I2 = #39AC			;
2C56: 09000A	       MODIFY (I2,M2)			;
2C57: 700085	       SI = DM(I5,M5)			;
2C58: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C59: 700085	       SI = DM(I5,M5)			;
2C5A: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C5B: 6800EA	       DM(I2,M2) = SR0			;
2C5C: 379B02	       I2 = #39B0			;
2C5D: 09000A	       MODIFY (I2,M2)			;
2C5E: 700085	       SI = DM(I5,M5)			;
2C5F: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C60: 700085	       SI = DM(I5,M5)			;
2C61: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C62: 6800EA	       DM(I2,M2) = SR0			;
2C63: 0A001F	IF     RTI				;
2C64: 1EB80F	IF     CALL $2B80			;
2C65: 40002A	       AR = #0002			;
2C66: 0D0146	       AY0 = M2				;
2C67: 2AE2AA	       NONE = AR  - AY0			;
2C68: 0A0011	IF NE  RTI				;
2C69: 700085	       SI = DM(I5,M5)			;
2C6A: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C6B: 700085	       SI = DM(I5,M5)			;
2C6C: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C6D: 939FDE	       DM($39FD) = SR0			;
2C6E: 400008	       SI = #0000			;
2C6F: 939FF8	       DM($39FF) = SI			;
2C70: 939FE8	       DM($39FE) = SI			;
2C71: 0A001F	IF     RTI				;
2C72: 1EB80F	IF     CALL $2B80			;
2C73: 40002A	       AR = #0002			;
2C74: 0D0146	       AY0 = M2				;
2C75: 2AE2AA	       NONE = AR  - AY0			;
2C76: 0A0011	IF NE  RTI				;
2C77: 700085	       SI = DM(I5,M5)			;
2C78: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C79: 700085	       SI = DM(I5,M5)			;
2C7A: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C7B: 939FEE	       DM($39FE) = SR0			;
2C7C: 700085	       SI = DM(I5,M5)			;
2C7D: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C7E: 700085	       SI = DM(I5,M5)			;
2C7F: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C80: 939FFE	       DM($39FF) = SR0			;
2C81: 0A001F	IF     RTI				;
2C82: 1EB80F	IF     CALL $2B80			;
2C83: 40002A	       AR = #0002			;
2C84: 0D0146	       AY0 = M2				;
2C85: 2AE2AA	       NONE = AR  - AY0			;
2C86: 0A0011	IF NE  RTI				;
2C87: 700085	       SI = DM(I5,M5)			;
2C88: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C89: 700085	       SI = DM(I5,M5)			;
2C8A: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C8B: 93A02E	       DM($3A02) = SR0			;
2C8C: 400008	       SI = #0000			;
2C8D: 93A038	       DM($3A03) = SI			;
2C8E: 93A048	       DM($3A04) = SI			;
2C8F: 0A001F	IF     RTI				;
2C90: 1EB80F	IF     CALL $2B80			;
2C91: 40002A	       AR = #0002			;
2C92: 0D0146	       AY0 = M2				;
2C93: 2AE2AA	       NONE = AR  - AY0			;
2C94: 0A0011	IF NE  RTI				;
2C95: 700085	       SI = DM(I5,M5)			;
2C96: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C97: 700085	       SI = DM(I5,M5)			;
2C98: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C99: 93A038	       DM($3A03) = SI			;
2C9A: 700085	       SI = DM(I5,M5)			;
2C9B: 0F1008	       SR = LSHIFT SI  BY #08 (LO)	;
2C9C: 700085	       SI = DM(I5,M5)			;
2C9D: 0F1800	       SR = SR OR LSHIFT SI  BY #00 (LO);
2C9E: 93A048	       DM($3A04) = SI			;
2C9F: 0A001F	IF     RTI				;
L2CA0:
2CA0: 0A001F	IF     RTI				;

2CA1: 97B924	       DM($3B92) = M0			;
2CA2: 0A001F	IF     RTI				;

L2CA3:
2CA3: 000000,C0C100,C18100,014000,C30100,03C000,028000,C24100
2CAB: C60100,06C000,078000,C74100,050000,C5C100,C48100,044000
2CB3: CC0100,0CC000,0D8000,CD4100,0F0000,CFC100,CE8100,0E4000
2CBB: 0A0000,CAC100,CB8100,0B4000,C90100,09C000,088000,C84100
2CC3: D80100,18C000,198000,D94100,1B0000,DBC100,DA8100,1A4000
2CCB: 1E0000,DEC100,DF8100,1F4000,DD0100,1DC000,1C8000,DC4100
2CD3: 140000,D4C100,D58100,154000,D70100,17C000,168000,D64100
2CDB: D20100,12C000,138000,D34100,110000,D1C100,D08100,104000
2CE3: F00100,30C000,318000,F14100,330000,F3C100,F28100,324000
2CEB: 360000,F6C100,F78100,374000,F50100,35C000,348000,F44100
2CF3: 3C0000,FCC100,FD8100,3D4000,FF0100,3FC000,3E8000,FE4100
2CFB: FA0100,3AC000,3B8000,FB4100,390000,F9C100,F88100,384000
2D03: 280000,E8C100,E98100,294000,EB0100,2BC000,2A8000,EA4100
2D0B: EE0100,2EC000,2F8000,EF4100,2D0000,EDC100,EC8100,2C4000
2D13: E40100,24C000,258000,E54100,270000,E7C100,E68100,264000
2D1B: 220000,E2C100,E38100,234000,E10100,21C000,208000,E04100
2D23: A00100,60C000,618000,A14100,630000,A3C100,A28100,624000
2D2B: 660000,A6C100,A78100,674000,A50100,65C000,648000,A44100
2D33: 6C0000,ACC100,AD8100,6D4000,AF0100,6FC000,6E8000,AE4100
2D3B: AA0100,6AC000,6B8000,AB4100,690000,A9C100,A88100,684000
2D43: 780000,B8C100,B98100,794000,BB0100,7BC000,7A8000,BA4100
2D4B: BE0100,7EC000,7F8000,BF4100,7D0000,BDC100,BC8100,7C4000
2D53: B40100,74C000,758000,B54100,770000,B7C100,B68100,764000
2D5B: 720000,B2C100,B38100,734000,B10100,71C000,708000,B04100
2D63: 500000,90C100,918100,514000,930100,53C000,528000,924100
2D6B: 960100,56C000,578000,974100,550000,95C100,948100,544000
2D73: 9C0100,5CC000,5D8000,9D4100,5F0000,9FC100,9E8100,5E4000
2D7B: 5A0000,9AC100,9B8100,5B4000,990100,59C000,588000,984100
2D83: 880100,48C000,498000,894100,4B0000,8BC100,8A8100,4A4000
2D8B: 4E0000,8EC100,8F8100,4F4000,8D0100,4DC000,4C8000,8C4100
2D93: 440000,84C100,858100,454000,870100,47C000,468000,864100
2D9B: 820100,42C000,438000,834100,410000,81C100,808100,404000


L2DA3:							;void check_rom()
2DA3: 340004	       M0 = #0000			;du16* ptr2;
2DA4: 3BB9D1	       I5 = #3B9D			;du16* ptr = 0x3B9D;
2DA5: 97BD44	       DM($3BD4) = M0			;u16 rom_bank = 0;
L2DA6:							;do {
2DA6: 1EE20F	IF     CALL $2E20			;  rom_bank_sel(&ptr2);
2DA7: 7000A5	       AR = DM(I5,M5)			;  u16 num = *ptr++;
2DA8: 40000E	       SR0 = #0000			;
2DA9: 700085	       SI = DM(I5,M5)			;  u16 temp = *ptr++;
2DAA: 93BD68	       DM($3BD6) = SI			;
2DAB: 227A0F	IF     AR = AR  + 0  			;
2DAC: 1AE130	IF EQ  JUMP $2E13			;  if (num) {
2DAD: 0D0C5A	       CNTR = AR			;
2DAE: 93BD5A	       DM($3BD5) = AR			;
2DAF: 16E12E	       DO $2E12 UNTIL NCE		;    for (int i=0;i<num;i++) {
2DB0: 83467A	       AR = DM($3467)			;
2DB1: 434004	       AY0 = #3400			;
2DB2: 2AE2AA	       NONE = AR  - AY0			;
2DB3: 1ADB60	IF EQ  JUMP $2DB6			;      if (var_3467 != 0x3400)
2DB4: 04001C	       POP PC,POP LOOP,POP CNTR		;        return;
2DB5: 0A000F	IF     RTS				;
L2DB6:
2DB6: 40000A	       AR = #0000			;
2DB7: 93BD3A	       DM($3BD3) = AR			;      crc_lsb = 0;
2DB8: 93BD2A	       DM($3BD2) = AR			;      crc_msb = 0;
2DB9: 93BD1A	       DM($3BD1) = AR			;      bank_addr = 0;
2DBA: 83BD6A	       AR = DM($3BD6)			;
2DBB: 0C3000	       ENA M_MODE			;
2DBC: 400206	       MY0 = #0020			;
2DBD: 20E20F	IF     MR = AR  * MY0 (UU)		;      u16 len = temp * 0x20;
2DBE: 0C2000	       DIS M_MODE			;
2DBF: 0D0C5B	       CNTR = MR0			;
2DC0: 16DDBE	       DO $2DDB UNTIL NCE		;      for (int j=0;j<len;j++) {
2DC1: 83BD0A	       AR = DM($3BD0)			;
2DC2: 400018	       SI = #0001			;
2DC3: 0F1000	       SR = LSHIFT SI  BY #00 (LO)	;
2DC4: 0F1A08	       SR = SR OR LSHIFT AR  BY #08 (LO);
2DC5: 93FE3E	       DM($3FE3) = SR0			;        BDMAC = (bank_num << 8) | 0x0001;
2DC6: 400008	       SI = #0000			;
2DC7: 93FE18	       DM($3FE1) = SI			;        BIAD = 0x0000;
2DC8: 83BD18	       SI = DM($3BD1)			;
2DC9: 93FE28	       DM($3FE2) = SI			;        BEAD = bank_addr;
2DCA: 401008	       SI = #0100			;
2DCB: 93FE48	       DM($3FE4) = SI			;        BWCOUNT = 0x0100;
2DCC: 83FE4A	       AR = DM($3FE4)			;
2DCD: 400FE4	       AY0 = #00FE			;
2DCE: 2AE2AA	       NONE = AR  - AY0			;
2DCF: 1ADCC5	IF GE  JUMP $2DCC			;        while (BWCOUNT >= 0x00FE);
2DD0: 1EE3AF	IF     CALL $2E3A			;        calc_block_crc();
2DD1: 83BD1A	       AR = DM($3BD1)			;
2DD2: 22725F	IF     AR = AR  + 0200			;        bank_addr += 0x0200;
2DD3: 279A9F	IF     AF = AR  & 4000			;
2DD4: 1ADDA0	IF EQ  JUMP $2DDA			;        if (bank_addr & 0x4000) {
2DD5: 279ABF	IF     AF = AR  & BFFF			;          bank_addr &= ~0x4000;
2DD6: 83BD0A	       AR = DM($3BD0)			;
2DD7: 22621F	IF     AR = AR  + 0001			;
2DD8: 93BD0A	       DM($3BD0) = AR			;          bank_num++;
2DD9: 22100F	IF     AR = AF 				;        }
L2DDA:
2DDA: 93BD1A	       DM($3BD1) = AR			;
2DDB: 000000	       NOP				;      }
2DDC: 83BD4A	       AR = DM($3BD4)			;
2DDD: 2A7AAA	       NONE = AR  + 0  			;
2DDE: 1ADE41	IF NE  JUMP $2DE4			;
2DDF: 0D03A5	       AR = CNTR			;
2DE0: 83BD54	       AY0 = DM($3BD5)			;      
2DE1: 2AE2AA	       NONE = AR  - AY0			;
2DE2: 1ADE41	IF NE  JUMP $2DE4			;
2DE3: 1AE06F	IF     JUMP $2E06			;      if (rom_bank != 0 || i != 0) {
L2DE4:
2DE4: 83BD0A	       AR = DM($3BD0)			;
2DE5: 22E21F	IF     AR = AR  - 0001			;
2DE6: 400018	       SI = #0001			;
2DE7: 0F1000	       SR = LSHIFT SI  BY #00 (LO)	;
2DE8: 0F1A08	       SR = SR OR LSHIFT AR  BY #08 (LO);
2DE9: 93FE3E	       DM($3FE3) = SR0			;        BDMAC = ((bank_num - 1) << 8) | 0x0001;
2DEA: 43BCE8	       SI = #3BCE			;
2DEB: 93FE18	       DM($3FE1) = SI			;        BIAD = &rom_crc;
2DEC: 43FFE8	       SI = #3FFE			;
2DED: 93FE28	       DM($3FE2) = SI			;        BEAD = 0x3FFE;
2DEE: 400018	       SI = #0001			;
2DEF: 93FE48	       DM($3FE4) = SI			;        BWCOUNT = 0x0001;
2DF0: 83FE4A	       AR = DM($3FE4)			;
2DF1: 227A0F	IF     AR = AR  + 0  			;
2DF2: 1ADF01	IF NE  JUMP $2DF0			;        while (BWCOUNT);
2DF3: 700049	       AY0 = DM(I6,M5)			;        
2DF4: 83BCEA	       AR = DM($3BCE)			;
2DF5: 2AE2AA	       NONE = AR  - AY0			;
2DF6: 1AE060	IF EQ  JUMP $2E06			;        if (rom_crc != *ptr2++) {
2DF7: 83BD0A	       AR = DM($3BD0)			;
2DF8: 22E21F	IF     AR = AR  - 0001			;
2DF9: 93BCFA	       DM($3BCF) = AR			;          var_3BCF = bank_num - 1;
2DFA: 0D03A5	       AR = CNTR			;
2DFB: 83BD54	       AY0 = DM($3BD5)			;
2DFC: 23220F	IF     AR = AY0 - AR 			;
2DFD: 22621F	IF     AR = AR  + 0001			;
2DFE: 0D000A	       AX0 = AR				;          
2DFF: 83BD4A	       AR = DM($3BD4)			;
2E00: 400024	       AY0 = #0002			;
2E01: 22620F	IF     AR = AR  + AY0			;
2E02: 2A7EAA	       NONE = SR0 + 0  			;
2E03: 1EE5C1	IF NE  CALL $2E5C			;          L2E5C(rom_bank + 2,i + 1);
2E04: 000000	       NOP				;        }
2E05: 1AE12F	IF     JUMP $2E12			;      }
L2E06:							;      else {
2E06: 1EE35F	IF     CALL $2E35			;        u16 temp = get_crc();
2E07: 0D03A5	       AR = CNTR			;
2E08: 83BD54	       AY0 = DM($3BD5)			;
2E09: 23220F	IF     AR = AY0 - AR 			;
2E0A: 22621F	IF     AR = AR  + 0001			;
2E0B: 0D000A	       AX0 = AR				;
2E0C: 83BD4A	       AR = DM($3BD4)			;
2E0D: 400024	       AY0 = #0002			;
2E0E: 22620F	IF     AR = AR  + AY0			;
2E0F: 2A7EAA	       NONE = SR0 + 0  			;
2E10: 1EE5C1	IF NE  CALL $2E5C			;        if (temp) L2E5C(rom_bank + 2,i + 1);
2E11: 000000	       NOP				;      }
L2E12:
2E12: 000000	       NOP				;    }
L2E13:							;  }
2E13: 83BD4A	       AR = DM($3BD4)			;
2E14: 22621F	IF     AR = AR  + 0001			;
2E15: 93BD4A	       DM($3BD4) = AR			;  rom_bank++;
2E16: 400054	       AY0 = #0005			;
2E17: 2AE2AA	       NONE = AR  - AY0			;
2E18: 1ADA64	IF LT  JUMP $2DA6			;} while (rom_bank < 5);
2E19: 4001EA	       AR = #001E			;
2E1A: 93BDAA	       DM($3BDA) = AR			;var_3BDA = 0x001E;
2E1B: 1EEA2F	IF     CALL $2EA2			;L2EA2();
2E1C: 40001A	       AR = #0001			;
2E1D: 400000	       AX0 = #0000			;
2E1E: 1EE5CF	IF     CALL $2E5C			;L2E5C(1,0);
2E1F: 0A000F	IF     RTS				;

L2E20:							;void rom_bank_sel(du16** ptr)
2E20: 40000A	       AR = #0000			;
2E21: 93BD0A	       DM($3BD0) = AR			;bank_num = 0;
2E22: 93BD1A	       DM($3BD1) = AR			;bank_addr = 0;
2E23: 83BD4A	       AR = DM($3BD4)			;
2E24: 2A7AAA	       NONE = AR  + 0  			;
2E25: 1AE300	IF EQ  JUMP $2E30			;if (rom_bank) {
2E26: 0C3000	       ENA M_MODE			;
2E27: 400086	       MY0 = #0008			;
2E28: 20E20F	IF     MR = AR  * MY0 (UU)		;
2E29: 0C2000	       DIS M_MODE			;
2E2A: 22E31F	IF     AR = MR0 - 0001			;
2E2B: 0D085A	       M5 = AR				;
2E2C: 3BBA72	       I6 = #3BA7			;
2E2D: 090019	       MODIFY (I6,M5)			;  *ptr = 0x3BA7 + rom_bank * 8 - 1;
2E2E: 380015	       M5 = #0001			;
2E2F: 1AE32F	IF     JUMP $2E32			;}
L2E30:
2E30: 3BBA72	       I6 = #3BA7			;else
2E31: 380015	       M5 = #0001			;  *ptr = 0x3BA7;
L2E32:
2E32: 83BD4A	       AR = DM($3BD4)			;
2E33: 01801A	       IO($1) = AR			;ROM_BANK = rom_bank;
2E34: 0A000F	IF     RTS				;

L2E35:							;u16 get_crc()
2E35: 83BD3A	       AR = DM($3BD3)			;
2E36: 83BD2B	       MR0 = DM($3BD2)			;
2E37: 0F1308	       SR = LSHIFT MR0 BY #8 (LO)	;
2E38: 0F1A00	       SR = SR OR LSHIFT AR BY #0 (LO)	;return (crc_msb << 8) | crc_lsb;
2E39: 0A000F	IF     RTS				;

L2E3A:							;void calc_block_crc()
2E3A: 340000	       I0 = #0000			;du16* ptr = 0x0000;
2E3B: 340015	       M1 = #0001			;
2E3C: 380004	       M4 = #0000			;
2E3D: 42CA34	       AY0 = #2CA3			;
2E3E: 3C1005	       CNTR = #0100			;
2E3F: 83BD3A	       AR = DM($3BD3)			;
2E40: 267A0F	IF     AF = AR  + 0  			;u16 temp1 = crc_lsb;
2E41: 83BD25	       AY1 = DM($3BD2)			;u16 temp2 = crc_msb;
2E42: 400FF4	       AY0 = #00FF			;
2E43: 6000B1	       MR0 = DM(I0,M1)			;u16 data = *ptr++;
2E44: 16E56E	       DO $2E56 UNTIL NCE		;for (int i=0;i<0x100;i++) {
2E45: 0F13F8	       SR = LSHIFT MR0 BY #F8 (LO)	;
2E46: 23D60F	IF     AR = SR0 ^ AF 			;
2E47: 3ACA30	       I4 = #2CA3			;
2E48: 0D085A	       M5 = AR				;
2E49: 090011	       MODIFY (I4,M5)			;  u8 n = (data >> 8) ^ temp1;
2E4A: 5000A0	       AR = PM(I4,M4)			;  u16 item1 = L2CA3[n];
2E4B: 0F12F8	       SR = LSHIFT AR  BY #F8 (LO)	;
2E4C: 23820F	IF     AR = AR  & AY0			;
2E4D: 27CA0F	IF     AF = AR  ^ AY1			;
2E4E: 2B835E	       AR = MR0 & AY0, AY1 = SR0	;
2E4F: 23D20F	IF     AR = AR  ^ AF 			;  n = (data & 0x00FF) ^ (item1 & 0x00FF) ^ temp2; temp2 = item1 >> 8;
2E50: 3ACA30	       I4 = #2CA3			;
2E51: 0D085A	       M5 = AR				;
2E52: 090011	       MODIFY (I4,M5)			;
2E53: 5000A0	       AR = PM(I4,M4)			;  u16 item2 = L2CA3[n];
2E54: 0F12F8	       SR = LSHIFT AR  BY #F8 (LO)	;
2E55: 6382B1	       AR = AR  & AY0, MR0 = DM(I0,M1)	;  temp1 = temp2 ^ (item2 & 0x00FF); temp2 = item2 >> 8; data = *ptr++;
2E56: 2FCA5E	       AF = AR  ^ AY1, AY1 = SR0	;}
2E57: 380015	       M5 = #0001			;
2E58: 93BD25	       DM($3BD2) = AY1			;crc_msb = temp2;
2E59: 22100F	IF     AR = AF 				;
2E5A: 93BD3A	       DM($3BD3) = AR			;crc_lsb = temp1;
2E5B: 0A000F	IF     RTS				;

L2E5C:							;(arg1,arg2)//arg1-AR,arg2-AX0
2E5C: 93BD8A	       DM($3BD8) = AR			;
2E5D: 40000F	       SR1 = #0000			;
2E5E: 4A000E	       SR0 = #A000			;
2E5F: 0F1A08	       SR = SR OR LSHIFT AR  BY #08 (LO);
2E60: 0D00A0	       AR = AX0				;
2E61: 0F1A00	       SR = SR OR LSHIFT AR  BY #00 (LO);
2E62: 1E15BF	IF     CALL $215B			;add_host_resp(0xA000 | (arg1 << 8) | arg2);
2E63: 1E167F	IF     CALL $2167			;send_to_host();
2E64: 83BD7A	       AR = DM($3BD7)			;
2E65: 227A0F	IF     AR = AR  + 0  			;
2E66: 0A0001	IF NE  RTS				;if (host_cmd2000) return;
2E67: 4001EA	       AR = #001E			;
2E68: 93BDAA	       DM($3BDA) = AR			;var_3BDA = 0x001E;
2E69: 93BD90	       DM($3BD9) = AX0			;
2E6A: 83467A	       AR = DM($3467)			;
2E6B: 434004	       AY0 = #3400			;
2E6C: 2AE2AA	       NONE = AR  - AY0			;
2E6D: 0A0001	IF NE  RTS				;if (host_in_fifo_wpos != &host_in_buf[0]) return;
2E6E: 83BD8A	       AR = DM($3BD8)			;
2E6F: 2A7AAA	       NONE = AR  + 0  			;
2E70: 0A0003	IF LE  RTS				;if (arg1 <= 0) return;
2E71: 0D0C5A	       CNTR = AR			;
2E72: 16E74E	       DO $2E74 UNTIL NCE		;for (int i=0;i<arg1;i++) 
2E73: 1EE8FF	IF     CALL $2E8F			;  L2E8F();
2E74: 000000	       NOP				;
2E75: 4000FA	       AR = #000F			;
2E76: 93BDAA	       DM($3BDA) = AR			;var_3BDA = 0x000F;
2E77: 83BD9A	       AR = DM($3BD9)			;
2E78: 2A7AAA	       NONE = AR  + 0  			;
2E79: 0A0003	IF LE  RTS				;if (arg2 <= 0) return;
2E7A: 0D0C5A	       CNTR = AR			;
2E7B: 16E7DE	       DO $2E7D UNTIL NCE		;for (int i=0;i<arg2;i++) 
2E7C: 1EE7FF	IF     CALL $2E7F			;  L2E7F();
2E7D: 000000	       NOP				;
2E7E: 0A000F	IF     RTS				;

L2E7F:
2E7F: 3B1A30	       I4 = #31A3			;
2E80: 380015	       M5 = #0001			;
2E81: 3C1005	       CNTR = #0100			;
2E82: 4007F4	       AY0 = #007F			;
2E83: 16E8DE	       DO $2E8D UNTIL NCE		;for (int i=0;i<0x100;i++) {
2E84: 0D03A5	       AR = CNTR			;
2E85: 23820F	IF     AR = AR  & AY0			;
2E86: 22EA9F	IF     AR = AR  - 0040			;
2E87: 1AE8A5	IF GE  JUMP $2E8A			;
2E88: 4FA00A	       AR = #FA00			;
2E89: 1AE8BF	IF     JUMP $2E8B			;
2E8A: 40600A	       AR = #0600			;
2E8B: 5800A1	       PM(I4,M5) = AR			;
2E8C: 5800A1	       PM(I4,M5) = AR			;
2E8D: 000000	       NOP				;}
2E8E: 1AE9EF	IF     JUMP $2E9E			;

L2E8F:							;
2E8F: 3B1A30	       I4 = #31A3			;pu24* ptr = buf_31A3;
2E90: 380015	       M5 = #0001			;
2E91: 3C1005	       CNTR = #0100			;
2E92: 400FF4	       AY0 = #00FF			;
2E93: 16E9DE	       DO $2E9D UNTIL NCE		;for (int i=0;i<0x100;i++) {
2E94: 0D03A5	       AR = CNTR			;
2E95: 23820F	IF     AR = AR  & AY0			;
2E96: 22EADF	IF     AR = AR  - 0080			;
2E97: 1AE9A5	IF GE  JUMP $2E9A			;  if (i < 0x80)
2E98: 4FA00A	       AR = #FA00			;    temp = 0xFA00;
2E99: 1AE9BF	IF     JUMP $2E9B			;  else
2E9A: 40600A	       AR = #0600			;    temp = 0x0600;
2E9B: 5800A1	       PM(I4,M5) = AR			;  *ptr++ = temp;
2E9C: 5800A1	       PM(I4,M5) = AR			;  *ptr++ = temp;
2E9D: 000000	       NOP				;}
L2E9E:
2E9E: 8FBDA5	       CNTR = DM($3BDA)			;
2E9F: 16EA1E	       DO $2EA1 UNTIL NCE		;for (int i=0;i<var_3BDA;i++) 
2EA0: 1C08CF	IF     CALL $008C			;  L008C();
2EA1: 000000	       NOP				;
L2EA2:
2EA2: 83BD7A	       AR = DM($3BD7)			;
2EA3: 227A0F	IF     AR = AR  + 0  			;
2EA4: 0A0001	IF NE  RTS				;if (host_cmd2000) return;
2EA5: 3B1A30	       I4 = #31A3			;ptr = buf_31A3;
2EA6: 3C1005	       CNTR = #0100			;
2EA7: 40000A	       AR = #0000			;
2EA8: 16EABE	       DO $2EAB UNTIL NCE		;for (int i=0;i<0x100;i++) {
2EA9: 5800A1	       PM(I4,M5) = AR			;  *ptr++ = 0;
2EAA: 5800A1	       PM(I4,M5) = AR			;  *ptr++ = 0;
2EAB: 000000	       NOP				;}
2EAC: 8FBDA5	       CNTR = DM($3BDA)			;
2EAD: 16EAFE	       DO $2EAF UNTIL NCE		;for (int i=0;i<var_3BDA;i++) 
2EAE: 1C08CF	IF     CALL $008C			;  L008C();
2EAF: 000000	       NOP				;
2EB0: 0A000F	IF     RTS				;

L30B1:							;
30B1: 37E000	       I0 = #3E00			;
30B2: 93BE8A	       DM($3BE8) = AR			;
30B3: 1F101F	IF     CALL $3101			;
30B4: 37E000	       I0 = #3E00			;
30B5: 0C0C00	       ENA AR_SAT			;
30B6: 37E001	       I1 = #3E00			;
30B7: 340025	       M1 = #0002			;
30B8: 0D0521	       I2 = I1				;
30B9: 340FF6	       M2 = #00FF			;
30BA: 09000A	       MODIFY (I2,M2)			;
30BB: 37FFE6	       M2 = #3FFE			;
30BC: 3A0000	       I4 = #2000			;
30BD: 3A2001	       I5 = #2200			;
30BE: 1F0DFF	IF     CALL $30DF			;
30BF: 3BE000	       I4 = #3E00			;
30C0: 1F12CF	IF     CALL $312C			;L312C();
30C1: 0C0C00	       ENA AR_SAT			;
30C2: 340001	       I1 = #0000			;
30C3: 340015	       M1 = #0001			;
30C4: 340802	       I2 = #0080			;
30C5: 340016	       M2 = #0001			;
30C6: 3AEB10	       I4 = #2EB1			;
30C7: 3AFB11	       I5 = #2FB1			;
30C8: 1F0DFF	IF     CALL $30DF			;
30C9: 340000	       I0 = #0000			;
30CA: 340801	       I1 = #0080			;
30CB: 3A0000	       I4 = #2000			;
30CC: 3A2001	       I5 = #2200			;
30CD: 1F0EAF	IF     CALL $30EA			;
30CE: 0C0800	       DIS AR_SAT			;
30CF: 0A000F	IF     RTS				;

30D0: 3C0405	       CNTR = #0040			;
30D1: 340004	       M0 = #0000			;
30D2: 340015	       M1 = #0001			;
30D3: 0D0530	       I3 = I0				;
30D4: 340FF6	       M2 = #00FF			;
30D5: 09000E	       MODIFY (I3,M2)			;
30D6: 090001	       MODIFY (I0,M1)			;
30D7: 340026	       M2 = #0002			;
30D8: 37FFE7	       M3 = #3FFE			;
30D9: 170DDE	       DO $30DD UNTIL NCE		;
30DA: 600000	       AX0 = DM(I0,M0)			;
30DB: 60004C	       AY0 = DM(I3,M0)			;
30DC: 680042	       DM(I0,M2) = AY0			;
30DD: 68000F	       DM(I3,M3) = AX0			;
30DE: 0A000F	IF     RTS				;

30DF: 340004	       M0 = #0000			;
30E0: 380015	       M5 = #0001			;
30E1: 3C0805	       CNTR = #0080			;
30E2: E80014	       MX0 = DM(I1,M0),MY0 = PM(I4,M5)	;x0 = *src1; y0 = *src2++;
30E3: 170E8E	       DO $30E8 UNTIL NCE		;for (int i=0;i<0x80;i++) {
30E4: FC8058	       MR = MX0*MY0(SS),MX1=DM(I2,M0),MY1=PM(I5,M5);    s32 m = x0*y0; x1 = *dst; y1 = *src3++;
30E5: 20690F	IF     MR = MR - MX1 * MY1 (RND)	;               m -= x1*y1; 
30E6: 6888C5	       MR = MX0 * MY1(SS),DM(I1,M1) = MR1;              m = x0*y1; *src1++ = m>>16;
30E7: E84114	       MR = MR+MX1*MY0(RND),MX0=DM(I1,M0),MY0=PM(I4,M5);m += x1*y0; x0 = *src1; y0 = *src2++;
30E8: 6800CA	       DM(I2,M2) = MR1			;               *dst++ = m>>16;
30E9: 0A000F	IF     RTS				;}

30EA: 380FF6	       M6 = #00FF			;
30EB: 37E002	       I2 = #3E00			;
30EC: 0D0922	       I6 = I2				;
30ED: 09001A	       MODIFY (I6,M6)			;
30EE: 340015	       M1 = #0001			;
30EF: 340027	       M3 = #0002			;
30F0: 3BFFE6	       M6 = #3FFE			;
30F1: 340004	       M0 = #0000			;
30F2: 380015	       M5 = #0001			;
30F3: 380004	       M4 = #0000			;
30F4: 3C0805	       CNTR = #0080			;
30F5: 34A1E3	       I3 = #0A1E			;
30F6: 87BE86	       M2 = DM($3BE8)			;
30F7: 09000E	       MODIFY (I3,M2)			;src1 = ;
30F8: 340086	       M2 = #0008			;
30F9: 170FFE	       DO $30FF UNTIL NCE		;for (int i=0;i<0x80;i++) {
30FA: E8001C	       MX0 = DM(I3,M0),MY0 = PM(I4,M5)	;           s16 x0 = *src1; s16 y0 = *src2; 
30FB: FC8055	       MR = MX0*MY0(SS),MX1=DM(I1,M1),MY1=PM(I5,M5);s32 m=x0*y0; x1 = *src3; y1 = *src4; 
30FC: 604901	       MR = MR+MX1*MY1(RND),AX0=DM(I0,M1);          m += x1*y1; t = *src5;
30FD: 6888CB	       MR = MX0*MY1 (SS),DM(I2,M3) = MR1;           *dst1 = m>>16; m = x0*y1; 
30FE: 68610E	       MR = MR-MX1*MY0(RND),DM(I3,M2)=AX0;          m -= x1*y0; *dst2 = t;
30FF: 7800CA	       DM(I6,M6) = MR1			;           *src1 = m>>16; src1 += 8;
3100: 0A000F	IF     RTS				;}

3101: 340015	       M1 = #0001			;
3102: 340026	       M2 = #0002			;
3103: 0C3000	       ENA M_MODE			;
3104: 0C0C00	       ENA AR_SAT			;
3105: 3BF300	       I4 = #3F30			;
3106: 8BBE84	       M4 = DM($3BE8)			;
3107: 090010	       MODIFY (I4,M4)			;
3108: 380084	       M4 = #0008			;
3109: 37FFF7	       M3 = #3FFF			;
310A: 37BED2	       I2 = #3BED			;
310B: 3C0105	       CNTR = #0010			;
310C: 600009	       AX0 = DM(I2,M1)			;
310D: 17128E	       DO $3128 UNTIL NCE		;
310E: 0D0C50	       CNTR = AX0			;
310F: 7000E0	       SR0 = DM(I4,M4)			;
3110: 4003C4	       AY0 = #003C			;
3111: 23260F	IF     AR = AY0 - SR0			;
3112: 0D00EA	       SR0 = AR				;
3113: 400034	       AY0 = #0003			;
3114: 23820F	IF     AR = AR  & AY0			;
3115: 43BE94	       AY0 = #3BE9			;
3116: 22620F	IF     AR = AR  + AY0			;
3117: 0D043A	       I3 = AR				;
3118: 60008C	       SI = DM(I3,M0)			;
3119: 0F16FE	       SR = LSHIFT SR0 BY #FE (LO)	;
311A: 22EE1F	IF     AR = SR0 - 0010			;
311B: 0D009A	       SE = AR				;
311C: 120021	       SR = LSHIFT SI(HI),MX0 = DM(I0,M1);
311D: 0D006F	       MY0 = SR1			;
311E: 2B9EAA	       NONE = SR0 & 0  			;
311F: 1B1220	IF EQ  JUMP $3122			;
3120: 22671F	IF     AR = SR1 + 0001			;
3121: 0D006A	       MY0 = AR				;
3122: 20A00F	IF     MR = MX0 * MY0 (SU)		;
3123: 17126E	       DO $3126 UNTIL NCE		;
3124: 667B23	       AF = MR0 + 0  , MX0 = DM(I0,M3)	;
3125: 22730F	IF     AR = MR0 + AF 			;
3126: 68A0A2	       MR = MX0 * MY0(SU),DM(I0,M2) = AR;
3127: 090003	       MODIFY (I0,M3)			;
3128: 600009	       AX0 = DM(I2,M1)			;
3129: 0C2000	       DIS M_MODE			;
312A: 0C0800	       DIS AR_SAT			;
312B: 0A000F	IF     RTS				;

L312C:							;
312C: 000000	       NOP				;
312D: 0C0C00	       ENA AR_SAT			;
312E: 0C2000	       DIS M_MODE			;
312F: 400400	       AX0 = #0040			;
3130: 93D840	       DM($3D84) = AX0			;
3131: 400020	       AX0 = #0002			;
3132: 93D850	       DM($3D85) = AX0			;
3133: 400020	       AX0 = #0002			;
3134: 93D860	       DM($3D86) = AX0			;
3135: 340004	       M0 = #0000			;
3136: 340015	       M1 = #0001			;
3137: 37FFF7	       M3 = #3FFF			;
3138: 380015	       M5 = #0001			;
3139: 340008	       L0 = #0000			;
313A: 340009	       L1 = #0000			;
313B: 34000A	       L2 = #0000			;
313C: 34000B	       L3 = #0000			;
313D: 3401F0	       I0 = #001F			;
313E: 37FDF1	       I1 = #3FDF			;
313F: 340406	       M2 = #0040			;
3140: 37FC07	       M3 = #3FC0			;
3141: 380000	       I4 = #0000			;
3142: 380801	       I5 = #0080			;
3143: 3C0405	       CNTR = #0040			;
3144: 0C00C0	       ENA BIT_REV			;
3145: 600002	       AX0 = DM(I0,M2)			;
3146: 600042	       AY0 = DM(I0,M2)			;
3147: 600017	       AX1 = DM(I1,M3)			;
3148: 17150E	       DO $3150 UNTIL NCE		;{
3149: 626057	       AR = AX0 + AY0, AY1 = DM(I1,M3)	;
314A: 7AE0A1	       AR = AX0 - AY0, DM(I4,M5) = AR	;
314B: 7A69A1	       AR = AX1 + AY1, DM(I4,M5) = AR	;
314C: 7AE9A5	       AR = AX1 - AY1, DM(I5,M5) = AR	;
314D: 7800A5	       DM(I5,M5) = AR			;
314E: 600002	       AX0 = DM(I0,M2)			;
314F: 600042	       AY0 = DM(I0,M2)			;
3150: 600017	       AX1 = DM(I1,M3)			;}
3151: 380015	       M5 = #0001			;
3152: 0C0080	       DIS BIT_REV			;
3153: 380408	       L4 = #0040			;
3154: 380409	       L5 = #0040			;
3155: 38000A	       L6 = #0000			;
3156: 3C0055	       CNTR = #0005			;
3157: 1717CE	       DO $317C UNTIL NCE		;{
3158: 340000	       I0 = #0000			;
3159: 340802	       I2 = #0080			;
315A: 83D848	       SI = DM($3D84)			;
315B: 0F30FF	       SR = ASHIFT SI  BY #FF (LO)	;
315C: 0D0C5E	       CNTR = SR0			;
315D: 93D84E	       DM($3D84) = SR0			;
315E: 0D084E	       M4 = SR0				;
315F: 87D866	       M2 = DM($3D86)			;
3160: 0D0510	       I1 = I0				;
3161: 090006	       MODIFY (I1,M2)			;
3162: 0D0532	       I3 = I2				;
3163: 09000E	       MODIFY (I3,M2)			;
3164: 0D0923	       I6 = I3				;
3165: 17178E	       DO $3178 UNTIL NCE		;  {
3166: 3A1000	       I4 = #2100			;
3167: 3A1801	       I5 = #2180			;
3168: 8FD855	       CNTR = DM($3D85)			;
3169: E80004	       MX0 = DM(I1,M0),MY0 = PM(I4,M4)	;
316A: 500074	       MY1 = PM(I5,M4)			;
316B: 17174E	       DO $3174 UNTIL NCE		;    {
316C: 60803C	       MR = MX0*MY0(SS),MX1=DM(I3,M0)	;
316D: 606940	       MR = MR-MX1*MY1(RND),AY0=DM(I0,M0);
316E: 632458	       AR = AY0 - MR1, AY1 = DM(I2,M0)	;
316F: 6A64A1	       AR = MR1 + AY0, DM(I0,M1) = AR	;
3170: 6881A5	       MR = MX1*MY0 (SS),DM(I1,M1) = AR	;
3171: F84844	       MR = MR+MX0*MY1(RND),MX0=DM(I1,M0),MY1=PM(I5,M4);
3172: 526C60	       AR = MR1 + AY1, MY0 = PM(I4,M4)	;
3173: 6B2CAD	       AR = AY1 - MR1, DM(I3,M1) = AR	;
3174: 6800A9	       DM(I2,M1) = AR			;    }
3175: 090002	       MODIFY (I0,M2)			;
3176: 090006	       MODIFY (I1,M2)			;
3177: 09000A	       MODIFY (I2,M2)			;
3178: 09000E	       MODIFY (I3,M2)			;  }
3179: 83D858	       SI = DM($3D85)			;
317A: 0F3001	       SR = ASHIFT SI  BY #01 (LO)	;
317B: 93D86E	       DM($3D86) = SR0			;
317C: 93D85E	       DM($3D85) = SR0			;}
317D: 340000	       I0 = #0000			;
317E: 340401	       I1 = #0040			;
317F: 340802	       I2 = #0080			;
3180: 340C03	       I3 = #00C0			;
3181: 3C0405	       CNTR = #0040			;
3182: 87D866	       M2 = DM($3D86)			;
3183: 380014	       M4 = #0001			;
3184: 0D0923	       I6 = I3				;
3185: 3A1000	       I4 = #2100			;
3186: 3A1801	       I5 = #2180			;
3187: E80004	       MX0 = DM(I1,M0),MY0 = PM(I4,M4)	;
3188: 500074	       MY1 = PM(I5,M4)			;
3189: 17192E	       DO $3192 UNTIL NCE		;
318A: 708039	       MR = MX0 * MY0 (SS), MX1 = DM(I6,M5);
318B: 606940	       MR = MR - MX1 * MY1 (RND), AY0 = DM(I0,M0);
318C: 632458	       AR = AY0 - MR1, AY1 = DM(I2,M0)	;
318D: 6A64A1	       AR = MR1 + AY0, DM(I0,M1) = AR	;
318E: 6881A5	       MR = MX1 * MY0 (SS), DM(I1,M1) = AR;
318F: F84844	       MR = MR + MX0 * MY1 (RND), MX0 = DM(I1,M0),MY1 = PM(I5,M4);
3190: 526C60	       AR = MR1 + AY1, MY0 = PM(I4,M4)	;
3191: 6B2CAD	       AR = AY1 - MR1, DM(I3,M1) = AR	;
3192: 6800A9	       DM(I2,M1) = AR			;
3193: 380008	       L4 = #0000			;
3194: 380009	       L5 = #0000			;
3195: 0C0800	       DIS AR_SAT			;
3196: 0A000F	IF     RTS				;

3197: 340000	       I0 = #0000			;
3198: 380014	       M4 = #0001			;
3199: 340404	       M0 = #0040			;
319A: 380008	       L4 = #0000			;
319B: 340008	       L0 = #0000			;
319C: 3C1005	       CNTR = #0100			;
319D: 0C00C0	       ENA BIT_REV			;
319E: 171A0E	       DO $31A0 UNTIL NCE		;
319F: 700050	       AY1 = DM(I4,M4)			;
31A0: 680050	       DM(I0,M0) = AY1			;
31A1: 0C0080	       DIS BIT_REV			;
31A2: 1B12DF	IF     JUMP $312D			;

31A3:							;pu16 buf_31A3[0x200];

34A3:							;pu16 buf_34A3[0x100];
040000 040000 040000 03FF00 
03FF00 03FF00 03FE00 03FD00 
03FC00 03FB00 03FA00 03F900 
03F800 03F700 03F500 03F300 
03F200 03F000 03EE00 03EC00 
03EA00 03E700 03E500 03E200 
03E000 03DD00 03DA00 03D700 
03D400 03D100 03CD00 03CA00 
03C600 03C300 03BF00 03BB00 
03B700 03B300 03AF00 03AA00 
03A600 03A100 039C00 039800 
039300 038E00 038800 038300 
037E00 037800 037200 036C00 
036600 036000 035A00 035400 
034D00 034700 034000 033900 
033200 032B00 032400 031D00 
031500 030E00 030600 02FE00 
02F600 02EE00 02E600 02DD00 
02D500 02CC00 02C300 02BA00 
02B100 02A800 029F00 029500 
028B00 028200 027800 026E00 
026300 025900 024F00 024400 
023900 022E00 022300 021800 
020C00 020100 01F500 01E900 
01DD00 01D100 01C400 01B800 
01AB00 019E00 019100 018400 
017600 016900 015B00 014D00 
013F00 013100 012200 011400 
010500 00F600 00E600 00D700 
00C700 00B800 00A800 009700 
008700 007700 006600 005500 
004300 003200 002000 000F00 
FFFC00 FFEA00 FFD800 FFC500 
FFB200 FF9F00 FF8B00 FF7800 
FF6400 FF4F00 FF3B00 FF2600 
FF1100 FEFC00 FEE700 FED100 
FEBB00 FEA400 FE8E00 FE7700 
FE6000 FE4800 FE3100 FE1900 
FE0000 FDE700 FDCE00 FDB500 
FD9B00 FD8100 FD6700 FD4C00 
FD3100 FD1600 FCFA00 FCDE00 
FCC200 FCA500 FC8700 FC6A00 
FC4B00 FC2D00 FC0E00 FBEE00 
FBCF00 FBAE00 FB8D00 FB6C00 
FB4A00 FB2800 FB0500 FAE200 
FABE00 FA9A00 FA7500 FA4F00 
FA2900 FA0200 F9DB00 F9B300 
F98A00 F96100 F93700 F90C00 
F8E000 F8B400 F88700 F85900 
F82A00 F7FB00 F7CA00 F79900 
F76600 F73300 F6FF00 F6C900 
F69300 F65B00 F62200 F5E800 
F5AD00 F57000 F53200 F4F300 
F4B200 F46F00 F42B00 F3E500 
F39D00 F35400 F30800 F2BB00 
F26B00 F21900 F1C400 F16D00 
F11300 F0B600 F05600 EFF200 
EF8B00 EF2000 EEB200 EE3E00 
EDC600 ED4900 ECC600 EC3D00 
EBAD00 EB1500 EA7600 E9CD00 
E91A00 E85B00 E78F00 E6B400 
E5C700 E4C600 E3AB00 E27300 
E11600 DF8B00 DDC200 DBA600 
D91000 D5BC00 D10A00 A1F300

L35A3:							;void clear_wave_buf()
35A3: 400008	       SI = #0000			;
35A4: 380015	       M5 = #0001			;
35A5: 3C2005	       CNTR = #0200			;
35A6: 3B1A30	       I4 = #31A3			;
35A7: 175A8E	       DO $35A8 UNTIL NCE		;for (int i=0;i<0x200;i++)
35A8: 580081	       PM(I4,M5) = SI			;  buf_31A3[i] = 0;
35A9: 0A000F	IF     RTS				;

L35AA:							;(u16 n,du* ptr)
35AA: 340004	       M0 = #0000			;
35AB: 340015	       M1 = #0001			;
35AC: 340106	       M2 = #0010			;
35AD: 380004	       M4 = #0000			;
35AE: 380025	       M5 = #0002			;
35AF: 380016	       M6 = #0001			;
35B0: 97BFE0	       DM($3BFE) = I0			;
35B1: 93BFFE	       DM($3BFF) = SR0			;
35B2: 43B004	       AY0 = #3B00			;
35B3: 22660F	IF     AR = SR0 + AY0			;
35B4: 0D041A	       I1 = AR				;
35B5: 97D881	       DM($3D88) = I1			;
35B6: 3B1A30	       I4 = #31A3			;
35B7: 1F5D2F	IF     CALL $35D2			;L35D2
35B8: 87D881	       I1 = DM($3D88)			;
35B9: 340207	       M3 = #0020			;
35BA: 090007	       MODIFY (I1,M3)			;
35BB: 3B1A40	       I4 = #31A4			;
35BC: 87BFE0	       I0 = DM($3BFE)			;
35BD: 1F5D2F	IF     CALL $35D2			;
35BE: 380015	       M5 = #0001			;
35BF: 87D881	       I1 = DM($3D88)			;
35C0: 340407	       M3 = #0040			;
35C1: 090007	       MODIFY (I1,M3)			;
35C2: 6000A6	       AR = DM(I1,M2)			;
35C3: 227A0F	IF     AR = AR  + 0  			;
35C4: 3FFF06	       SB = #3FF0			;
35C5: 1B5CF4	IF LT  JUMP $35CF			;
35C6: 87BFE0	       I0 = DM($3BFE)			;
35C7: 434904	       AY0 = #3490			;
35C8: 401006	       MY0 = #0100			;
35C9: 0C3000	       ENA M_MODE			;
35CA: 20E20F	IF     MR = AR  * MY0 (UU)		;
35CB: 93BFDB	       DM($3BFD) = MR0			;
35CC: 22630F	IF     AR = MR0 + AY0			;
35CD: 0D080A	       I4 = AR				;
35CE: 1F627F	IF     CALL $3627			;
35CF: 0C2000	       DIS M_MODE			;
35D0: 0C0800	       DIS AR_SAT			;
35D1: 0A000F	IF     RTS				;

L35D2:							;
35D2: 37FF07	       M3 = #3FF0			;
35D3: 0C3000	       ENA M_MODE			;
35D4: 0C0C00	       ENA AR_SAT			;
35D5: 600046	       AY0 = DM(I1,M2)			;
35D6: 600004	       AX0 = DM(I1,M0)			;
35D7: 40000A	       AR = #0000			;
35D8: 6800A7	       DM(I1,M3) = AR			;
35D9: 22600F	IF     AR = AX0 + AY0			;
35DA: 1B5DE5	IF GE  JUMP $35DE			;
35DB: 22A00F	IF     AR = -AY0			;
35DC: 0D000A	       AX0 = AR				;
35DD: 40000A	       AR = #0000			;
35DE: 26F21F	IF     AF = AR  - 0100			;
35DF: 1B5E44	IF LT  JUMP $35E4			;
35E0: 400FF1	       AX1 = #00FF			;
35E1: 22E10F	IF     AR = AX1 - AY0			;
35E2: 0D000A	       AX0 = AR				;
35E3: 400FFA	       AR = #00FF			;
35E4: 22600F	IF     AR = AX0 + AY0			;
35E5: 6800A6	       DM(I1,M2) = AR			;
35E6: 090006	       MODIFY (I1,M2)			;
35E7: 433A3A	       AR = #33A3			;
35E8: 22620F	IF     AR = AR  + AY0			;
35E9: 0D081A	       I5 = AR				;
35EA: 500064	       MY0 = PM(I5,M4)			;
35EB: 380016	       M6 = #0001			;
35EC: 40100A	       AR = #0100			;
35ED: 267A0F	IF     AF = AR  + 0  			;
35EE: 22780F	IF     AR = AX0 + 0  			;
35EF: 1B6110	IF EQ  JUMP $3611			;if ()
35F0: 1B6013	IF LE  JUMP $3601			;  if () {
35F1: 23300F	IF     AR = AF  - AX0			;
35F2: 267A0F	IF     AF = AR  + 0  			;
35F3: 0D0C50	       CNTR = AX0			;    len = ;
35F4: E80061	       MX0 = DM(I0,M1),MY0 = PM(I5,M6)	;    u16 temp1 = *ptr2++; u16 temp2 = *src++;
35F5: 175F8E	       DO $35F8 UNTIL NCE		;    for (int i=0;i<len;i++) {
35F6: 50A040	       MR=MX0*MY0 (SU),AY0=PM(I4,M4)	;      s32 mul = temp1 * temp2; sample = *dst;
35F7: EA6461	       AR=MR1+AY0,MX0=DM(I0,M1),MY0=PM(I5,M6); sample += mul >> 16; temp1 = *ptr2++; temp2 = *src++;
35F8: 5800A1	       PM(I4,M5) = AR			;      *dst = sample; dst += 2; 
35F9: 37FFF5	       M1 = #3FFF			;    }
35FA: 090001	       MODIFY (I0,M1)			;
35FB: 340015	       M1 = #0001			;
35FC: 3BFFE6	       M6 = #3FFE			;
35FD: 090016	       MODIFY (I5,M6)			;
35FE: 380016	       M6 = #0001			;
35FF: 500066	       MY0 = PM(I5,M6)			;
3600: 1B611F	IF     JUMP $3611			;  }
L3601:
3601: 26700F	IF     AF = AX0 + AF 			;  else {
3602: 23380F	IF     AR = 0   - AX0			;
3603: 0D0C5A	       CNTR = AR			;
3604: 3BFFF6	       M6 = #3FFF			;
3605: E80061	       MX0 = DM(I0,M1),MY0 = PM(I5,M6)	;
3606: 17609E	       DO $3609 UNTIL NCE		;
3607: 50A040	       MR = MX0*MY0 (SU),AY0 = PM(I4,M4);
3608: EA6461	       AR = MR1+AY0,MX0=DM(I0,M1),MY0=PM(I5,M6);
3609: 5800A1	       PM(I4,M5) = AR			;
360A: 37FFF5	       M1 = #3FFF			;
360B: 090001	       MODIFY (I0,M1)			;
360C: 340015	       M1 = #0001			;
360D: 380026	       M6 = #0002			;
360E: 090016	       MODIFY (I5,M6)			;
360F: 3BFFF6	       M6 = #3FFF			;
3610: 500066	       MY0 = PM(I5,M6)			;  }
L3611:
3611: 22100F	IF     AR = AF 				;
3612: 0D0C5A	       CNTR = AR			;
3613: 600021	       MX0 = DM(I0,M1)			;temp1 = *ptr2++;
3614: 0D02A5	       AR = M5				;
3615: 233A0F	IF     AR = 0   - AR 			;
3616: 0D086A	       M6 = AR				;read_step = ;
3617: 500042	       AY0 = PM(I4,M6)			;temp2 = *dst++; dst -= read_step; 
3618: 380004	       M4 = #0000			;
3619: 0D0285	       SI = M5				;
361A: 233A0F	IF     AR = 0   - AR 			;
361B: 0D005A	       AY1 = AR				;
361C: 226A0F	IF     AR = AR  + AY1			;
361D: 0D085A	       M5 = AR				;write_step = ;
361E: 380004	       M4 = #0000			;
361F: 5000A0	       AR = PM(I4,M4)			;sample = *dst;
3620: 3FFF06	       SB = #3FF0			;
3621: 17623E	       DO $3623 UNTIL NCE		;for (int i=0;i<len;i++) {
3622: 58A0A1	       MR = MX0*MY0 (SU), PM(I4,M5) = AR;  s32 mul = temp1 * coef; *dst = sample; dst += write_step; 
3623: CA6421	       AR = MR1+AY0,MX0=DM(I0,M1),AY0=PM(I4,M6);sample += mul >> 16; temp1 = *ptr2++; sample = *dst++; dst -= read_step; 
3624: 5800A1	       PM(I4,M5) = AR			;}
3625: 0D0858	       M5 = SI				;
3626: 0A000F	IF     RTS				;

3627: 37FF07	       M3 = #3FF0			;
3628: 600046	       AY0 = DM(I1,M2)			;
3629: 600004	       AX0 = DM(I1,M0)			;
362A: 40000A	       AR = #0000			;
362B: 6800A7	       DM(I1,M3) = AR			;
362C: 22600F	IF     AR = AX0 + AY0			;
362D: 1B6315	IF GE  JUMP $3631			;
362E: 22A00F	IF     AR = -AY0			;
362F: 0D000A	       AX0 = AR				;
3630: 40000A	       AR = #0000			;
3631: 26F21F	IF     AF = AR  - 0100			;
3632: 1B6374	IF LT  JUMP $3637			;
3633: 400FF1	       AX1 = #00FF			;
3634: 22E10F	IF     AR = AX1 - AY0			;
3635: 0D000A	       AX0 = AR				;
3636: 400FFA	       AR = #00FF			;
3637: 22600F	IF     AR = AX0 + AY0			;
3638: 6800A6	       DM(I1,M2) = AR			;
3639: 090006	       MODIFY (I1,M2)			;
363A: 433A3A	       AR = #33A3			;
363B: 22620F	IF     AR = AR  + AY0			;
363C: 0D081A	       I5 = AR				;
363D: 500064	       MY0 = PM(I5,M4)			;
363E: 40100A	       AR = #0100			;
363F: 267A0F	IF     AF = AR  + 0  			;
3640: 22780F	IF     AR = AX0 + 0  			;
3641: 380016	       M6 = #0001			;
3642: 1B6570	IF EQ  JUMP $3657			;
3643: 1B64D3	IF LE  JUMP $364D			;
3644: 23300F	IF     AR = AF  - AX0			;
3645: 267A0F	IF     AF = AR  + 0  			;
3646: 0D0C50	       CNTR = AX0			;
3647: 1764BE	       DO $364B UNTIL NCE		;
3648: E80061	       MX0 = DM(I0,M1),MY0 = PM(I5,M6)	;
3649: 70A040	       MR = MX0 * MY0(SU),AY0 = DM(I4,M4);
364A: 22640F	IF     AR = MR1 + AY0			;
364B: 7800A1	       DM(I4,M5) = AR			;
364C: 1B657F	IF     JUMP $3657			;
364D: 26700F	IF     AF = AX0 + AF 			;
364E: 23380F	IF     AR = 0   - AX0			;
364F: 0D0C5A	       CNTR = AR			;
3650: 37FFF7	       M3 = #3FFF			;
3651: 3BFFF6	       M6 = #3FFF			;
3652: 17656E	       DO $3656 UNTIL NCE		;
3653: E80061	       MX0 = DM(I0,M1),MY0 = PM(I5,M6)	;
3654: 70A040	       MR = MX0 * MY0(SU),AY0 = DM(I4,M4);
3655: 22640F	IF     AR = MR1 + AY0			;
3656: 7800A1	       DM(I4,M5) = AR			;
3657: 22100F	IF     AR = AF 				;
3658: 0D0C5A	       CNTR = AR			;
3659: 600021	       MX0 = DM(I0,M1)			;
365A: 3FFF06	       SB = #3FF0			;
365B: 1765EE	       DO $365E UNTIL NCE		;
365C: 70A040	       MR = MX0 * MY0(SU),AY0 = DM(I4,M4);
365D: 626421	       AR = MR1 + AY0, MX0 = DM(I0,M1)	;
365E: 7800A1	       DM(I4,M5) = AR			;
365F: 0A000F	IF     RTS				;

L3660:							;
3660: 37C000	       I0 = #3C00			;du* ptr = buf_3C00;
3661: 340848	       L0 = #0084			;
3662: 340004	       M0 = #0000			;
3663: 340015	       M1 = #0001			;
3664: 3402C6	       M2 = #002C			;
3665: 37FD47	       M3 = #3FD4			;
3666: 0C0C00	       ENA AR_SAT			;
3667: 3C02C5	       CNTR = #002C			;
3668: 17676E	       DO $3676 UNTIL NCE		;for (int i=0;i<0x2C;i++,ptr++) {
3669: 600012	       AX1 = DM(I0,M2)			;  u16 v1 = *ptr; ptr += 0x2C;
366A: 600052	       AY1 = DM(I0,M2)			;  u16 v2 = *ptr; ptr += 0x2C;
366B: 6000A0	       AR = DM(I0,M0)			;  u16 v3 = *ptr; 
366C: 22E21F	IF     AR = AR  - 0001			;  v3--;
366D: 1B6725	IF GE  JUMP $3672			;  if (v3 < 0) {
366E: 400005	       AY1 = #0000			;
366F: 680053	       DM(I0,M3) = AY1			;    *ptr = 0; ptr -= 0x2C;
3670: 680053	       DM(I0,M3) = AY1			;    *ptr = 0; ptr -= 0x2C;
3671: 1B676F	IF     JUMP $3676			;  }
L3672:
3672: 6800A3	       DM(I0,M3) = AR			;  else {
3673: 090003	       MODIFY (I0,M3)			;    *ptr = v3; ptr -= 0x2C; ptr -= 0x2C;
3674: 22690F	IF     AR = AX1 + AY1			;    *ptr = v1 + v2;
3675: 6800A0	       DM(I0,M0) = AR			;  }
L3676:
3676: 090001	       MODIFY (I0,M1)			;}
3677: 37C000	       I0 = #3C00			;ptr = buf_3C00;
3678: 340208	       L0 = #0020			;
3679: 37B001	       I1 = #3B00			;du* ptr3 = 0x3B00;
367A: 340409	       L1 = #0040			;
367B: 37D9A3	       I3 = #3D9A			;du* ptr2 = 0x3D9A;
367C: 340106	       M2 = #0010			;
367D: 340107	       M3 = #0010			;
367E: 3C0105	       CNTR = #0010			;
367F: 40000C	       MR1 = #0000			;
3680: 176B6E	       DO $36B6 UNTIL NCE		;for (int i=0;i<0x10;i++) {
3681: 600052	       AY1 = DM(I0,M2)			;  u16 v1 = *ptr; ptr += 0x10;
3682: 6000E0	       SR0 = DM(I0,M0)			;  u16 v2 = *ptr;
3683: 2A08AA	       NONE = AY1			;
3684: 1B68A5	IF GE  JUMP $368A			;  if (v1 <= 0) {
3685: 400005	       AY1 = #0000			;    v1 = 0;
3686: 37FF06	       M2 = #3FF0			;
3687: 090002	       MODIFY (I0,M2)			;    ptr -= 0x10;
3688: 340106	       M2 = #0010			;
3689: 680052	       DM(I0,M2) = AY1			;    *ptr = v1;
L368A:							;  }
368A: 6000AD	       AR = DM(I3,M1)			;  u16 temp = *ptr2++;
368B: 227A0F	IF     AR = AR  + 0  			;
368C: 1B6900	IF EQ  JUMP $3690			;  if (temp) {
368D: 83D89A	       AR = DM($3D89)			;
368E: 232A0F	IF     AR = AY1 - AR 			;
368F: 0D005A	       AY1 = AR				;    v1 -= var_3D89;
L3690:							;  }
3690: 83F01A	       AR = DM($3F01)			;
3691: 232A0F	IF     AR = AY1 - AR 			;
3692: 0D005A	       AY1 = AR				;  v1 -= var_3F01;
3693: 22FE9F	IF     AR = SR0 - 4000			;
3694: 1B69C6	IF AV  JUMP $369C			;  if (((int)v2 - 0x4000) >= -0x8000) {
3695: 1B69A5	IF GE  JUMP $369A			;    if (v2 < 0x4000)
3696: 43F7F4	       AY0 = #3F7F			;
3697: 22660F	IF     AR = SR0 + AY0			;      
3698: 1B69C3	IF LE  JUMP $369C			;      if (v2 + 0x3F7F <= 0) 
3699: 1B69DF	IF     JUMP $369D			;        v2 = 0xC081;
L369A:							;    else
369A: 43FFFE	       SR0 = #3FFF			;      v2 = 0x3FFF;
369B: 1B69DF	IF     JUMP $369D			;  }
L369C:							;  else
369C: 4C081E	       SR0 = #C081			;    v2 = 0xC081;
L369D:
369D: 435234	       AY0 = #3523			;
369E: 6800E2	       DM(I0,M2) = SR0			;  *ptr = v2; ptr += 0x10;
369F: 0F36F9	       SR = ASHIFT SR0 BY #F9 (LO)	;
36A0: 22660F	IF     AR = SR0 + AY0			;
36A1: 0D081A	       I5 = AR				;
36A2: 500004	       AX0 = PM(I5,M4)			;  s16 w0 = buf_34A3[0x80 + (v2 >> 7)];
36A3: 23260F	IF     AR = AY0 - SR0			;
36A4: 0D081A	       I5 = AR				;
36A5: 500014	       AX1 = PM(I5,M4)			;  s16 w1 = buf_34A3[0x80 - (v2 >> 7)];
36A6: 22680F	IF     AR = AX0 + AY1			;
36A7: 227A0F	IF     AR = AR  + 0  			;  s16 s0 = w0 + v1;
36A8: 227C04	IF LT  AR = MR1 + 0  			;  if (s0 < 0) s0 = 0;
36A9: 0F12F9	       SR = LSHIFT AR  BY #F9 (LO)	;
36AA: 600047	       AY0 = DM(I1,M3)			;  u16 t = *ptr3; ptr3 += 0x10;
36AB: 22E60F	IF     AR = SR0 - AY0			;  
36AC: 6800A7	       DM(I1,M3) = AR			;  *ptr3 = (s0 >> 7) - t; ptr3 += 0x10;
36AD: 22690F	IF     AR = AX1 + AY1			;  s16 s1 = w1 + v1;
36AE: 227A0F	IF     AR = AR  + 0  			;
36AF: 227C04	IF LT  AR = MR1 + 0  			;  if (s1 < 0) s1 = 0;
36B0: 0F12F9	       SR = LSHIFT AR  BY #F9 (LO)	;
36B1: 600047	       AY0 = DM(I1,M3)			;  t = *ptr3; ptr3 += 0x10;
36B2: 22E60F	IF     AR = SR0 - AY0			;
36B3: 6800A7	       DM(I1,M3) = AR			;  *ptr3 = (s1 >> 7) - t; ptr3 += 0x10;
36B4: 090005	       MODIFY (I1,M1)			;  ptr3++;
36B5: 090001	       MODIFY (I0,M1)			;  ptr++;
36B6: 000000	       NOP				;}
36B7: 0C0800	       DIS AR_SAT			;
36B8: 340008	       L0 = #0000			;
36B9: 340009	       L1 = #0000			;
36BA: 37C200	       I0 = #3C20			;
36BB: 37B501	       I1 = #3B50			;
36BC: 340015	       M1 = #0001			;
36BD: 340004	       M0 = #0000			;
36BE: 340107	       M3 = #0010			;
36BF: 37FF16	       M2 = #3FF1			;
36C0: 3C00C5	       CNTR = #000C			;
36C1: 176CAE	       DO $36CA UNTIL NCE		;for (int i=0;i<0xC;i++) {
36C2: 6000A0	       AR = DM(I0,M0)			;
36C3: 227A0F	IF     AR = AR  + 0  			;
36C4: 1B6C65	IF GE  JUMP $36C6			;
36C5: 40000A	       AR = #0000			;
36C6: 6800A1	       DM(I0,M1) = AR			;
36C7: 0F12F9	       SR = LSHIFT AR  BY #F9 (LO)	;
36C8: 600047	       AY0 = DM(I1,M3)			;
36C9: 22E60F	IF     AR = SR0 - AY0			;
36CA: 6800A6	       DM(I1,M2) = AR			;}
36CB: 0A000F	IF     RTS				;

36CC:
002E00 002E00 002E00 002E00 002E00 002E00 002E00 002E00 ;"........"
002000 004100 006300 006300 006C00 006100 006900 006D00 ;" Acclaim"
002000 004300 006F00 006900 006E00 002000 004F00 007000 ;" Coin Op"
006500 007200 006100 007400 006500 006400 002000 004500 ;"erated E"
006E00 007400 006500 007200 007400 006100 006900 006E00 ;"ntertain"
006D00 006500 006E00 007400 002C00 002000 004900 006E00 ;"ment, In"
006300 002E00 002000 002000 004100 006C00 006C00 002000 ;"c.  All "
007200 006900 006700 006800 007400 007300 002000 007200 ;"rights r"
006500 007300 006500 007200 007600 006500 006400 002E00 ;"eserved."

371C:
349000 040000 
3F0800 000800 
3F1000 000800 
3F2000 000800 
3F1800 000800 
3F2800 000800 
3F3000 008000 
3E0000 010000 
300000 040000 
340000 006400
348000 001000
0A1E00 040000
3D8A00 001000
3B7000 001000
3AF800 000800
3AC800 002000
3A8000 004000
3D9A00 001000
3DAA00 000100						;host_cmd_range = 0;
3B9D00 000A00
3B0000 007000
38D000 001000
38F000 001000
38E000 001000
3A0A00 000400
3A1800 000400
3A1C00 000400
3A2A00 000800
3A3600 000400
3A3200 000400
3A3A00 000400
3A7000 000400
3A7400 000400
3A7800 000400
39BC00 000400
39B400 000400
39B800 000400
39A800 000400
39B000 000400
39AC00 000400
39FD00 000100
39FE00 000100
39FF00 000100
3A0300 000100
3A0400 000100
3A0500 000100
3A0600 000100
347C00 000400
398000 000C00
399800 000C00
398C00 000C00
39C600 001000
39D600 001000
000000 000000

L3794:							;void init()
3794: 340004	       M0 = #0000			;
3795: 340015	       M1 = #0001			;
3796: 37FFF6	       M2 = #3FFF			;
3797: 3C0003	       IMASK = #0000			;
3798: 3C0004	       ICNTL = #0000			;
3799: 1F84BF	IF     CALL $384B			;io_init();
379A: 1F80DF	IF     CALL $380D			;dmem_init()
379B: 1F833F	IF     CALL $3833			;dmem_init2();
379C: 1F85EF	IF     CALL $385E			;sport_init();
379D: 1F875F	IF     CALL $3875			;sports_send();
379E: 4A000E	       SR0 = #A000			;
379F: 1E15BF	IF     CALL $215B			;add_host_resp(0xA000);
37A0: 1E167F	IF     CALL $2167			;send_to_host();
37A1: 1F89CF	IF     CALL $389C			;check_ram();
37A2: 1F81DF	IF     CALL $381D			;ram_clear();
37A3: 400001	       AX1 = #0000			;u16 bank = 0x0000;
37A4: 400000	       AX0 = #0000			;u16 addr = 0x0000;
37A5: 480004	       AY0 = #8000			;
37A6: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x8000)
37A7: 400044	       AY0 = #0004			;
37A8: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x0004)
37A9: 43DAB8	       SI = #3DAB			;
37AA: 400504	       AY0 = #0050			;
37AB: 1F7FEF	IF     CALL $37FE			;load_rom_byte(addr,bank,0x3DAB,0x0050);
37AC: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x0050);
37AD: 40000A	       AR = #0000			;
37AE: 267A0F	IF     AF = AR  + 0  			;u16 err = 0;
37AF: 3B6D40	       I4 = #36D4			;pu16* ptr1 = 0x36D4;
37B0: 380014	       M4 = #0001			;
37B1: 37DB31	       I1 = #3DB3			;du16* ptr2 = 0x3DAB + 8;
37B2: 340015	       M1 = #0001			;
37B3: 3C0405	       CNTR = #0040			;
37B4: 177B9E	       DO $37B9 UNTIL NCE		;for (int i=0;i<0x40;i++) {
37B5: 5000A0	       AR = PM(I4,M4)			;
37B6: 600045	       AY0 = DM(I1,M1)			;
37B7: 22E20F	IF     AR = AR  - AY0			;  u16 temp = *ptr1++ - *ptr2++;
37B8: 267A01	IF NE  AF = AR  + 0  			;  if (temp) err = temp;
37B9: 000000	       NOP				;}
37BA: 22100F	IF     AR = AF 				;
37BB: 1B7C00	IF EQ  JUMP $37C0			;if (diff) {
37BC: 40002A	       AR = #0002			;
37BD: 400000	       AX0 = #0000			;
37BE: 1EE5CF	IF     CALL $2E5C			;  return;
37BF: 1B7EEF	IF     JUMP $37EE			;}
L37C0:
37C0: 43DFB8	       SI = #3DFB			;
37C1: 400024	       AY0 = #0002			;
37C2: 1F7FEF	IF     CALL $37FE			;load_rom_byte(addr,bank,0x3DFB,0x0002);
37C3: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x0002);
37C4: 83DFBA	       AR = DM($3DFB)			;u16 len = *(du16)0x3DFB;
37C5: 0D004A	       AY0 = AR				;
37C6: 22620F	IF     AR = AR  + AY0			;len *= 2;
37C7: 43B9D8	       SI = #3B9D			;
37C8: 0D004A	       AY0 = AR				;
37C9: 1F7FEF	IF     CALL $37FE			;load_rom_byte(addr,bank,0x3B9D,len);
37CA: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,len);
37CB: 43BA78	       SI = #3BA7			;
37CC: 83DFCA	       AR = DM($3DFC)			;u16 temp2 = *(du16)0x3DFC;
37CD: 83DFB6	       MY0 = DM($3DFB)			;u16 temp = *(du16)0x3DFB;
37CE: 0C3000	       ENA M_MODE			;
37CF: 20E20F	IF     MR = AR  * MY0 (UU)		;
37D0: 22E31F	IF     AR = MR0 - 0001			;len = temp * temp2 - 1;
37D1: 0C2000	       DIS M_MODE			;
37D2: 400274	       AY0 = #0027			;
37D3: 2AE2AA	       NONE = AR  - AY0			;
37D4: 1B7D93	IF LE  JUMP $37D9			;if (len > 0x27) {
37D5: 40002A	       AR = #0002			;
37D6: 400000	       AX0 = #0000			;
37D7: 1EE5CF	IF     CALL $2E5C			;  return;
37D8: 1B7EEF	IF     JUMP $37EE			;}
L37D9:
37D9: 0D004A	       AY0 = AR				;
37DA: 1F7EFF	IF     CALL $37EF			;load_rom_word(addr,bank,0x3BA7,len);
37DB: 0D00A4	       AR = AY0				;
37DC: 22620F	IF     AR = AR  + AY0			;
37DD: 0D004A	       AY0 = AR				;
37DE: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,len*2);
37DF: 43D898	       SI = #3D89			;
37E0: 400014	       AY0 = #0001			;
37E1: 1F7FEF	IF     CALL $37FE			;load_rom_byte(addr,bank,0x3D89,0x0001);
37E2: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x0001);
37E3: 83D898	       SI = DM($3D89)			;
37E4: 0F1007	       SR = LSHIFT SI BY #7 (LO)	;
37E5: 93D89E	       DM($3D89) = SR0			;*(du16*)0x3D89 <<= 7;
37E6: 43DAA8	       SI = #3DAA			;
37E7: 400014	       AY0 = #0001			;
37E8: 1F7EFF	IF     CALL $37EF			;load_rom_word(addr,bank,host_cmd_range,0x0001);
37E9: 400024	       AY0 = #0002			;
37EA: 1F844F	IF     CALL $3844			;addr_add(&addr,&bank,0x0002);
37EB: 93F061	       DM($3F06) = AX1			;rom_data_bank = bank;
37EC: 93F070	       DM($3F07) = AX0			;rom_data_offs = addr;
37ED: 1EDA3F	IF     CALL $2DA3			;check_rom();
L37EE:
37EE: 0A000F	IF     RTS				;

L37EF:							;void load_rom_word(src,bank,dst,len)//src-AX0,bank-AX1,dst-SI,len-AY0
37EF: 83FE4E	       SR0 = DM($3FE4)			;
37F0: 2A7EAA	       NONE = SR0 + 0  			;
37F1: 1B7EF1	IF NE  JUMP $37EF			;while (BWCOUNT);
37F2: 93FE20	       DM($3FE2) = AX0			;BEAD = src;
37F3: 0D00E1	       SR0 = AX1			;
37F4: 400015	       AY1 = #0001			;
37F5: 0F1608	       SR = LSHIFT SR0 BY #8 (LO)	;
37F6: 23AE0F	IF     AR = SR0 | AY1			;
37F7: 93FE3A	       DM($3FE3) = AR			;BDMAC = (bank << 8) | 1;
37F8: 93FE18	       DM($3FE1) = SI			;
37F9: 93FE44	       DM($3FE4) = AY0			;
37FA: 83FE4E	       SR0 = DM($3FE4)			;
37FB: 2A7EAA	       NONE = SR0 + 0  			;
37FC: 1B7FA1	IF NE  JUMP $37FA			;while (BWCOUNT);
37FD: 0A000F	IF     RTS				;

L37FE:							;void load_rom_byte(src,bank,dst,len)//src-AX0,bank-AX1,dst-SI,len-AY0
37FE: 83FE4E	       SR0 = DM($3FE4)			;
37FF: 2A7EAA	       NONE = SR0 + 0  			;
3800: 1B7FE1	IF NE  JUMP $37FE			;while (BWCOUNT);
3801: 93FE20	       DM($3FE2) = AX0			;BEAD = src;
3802: 0D00E1	       SR0 = AX1			;
3803: 400035	       AY1 = #0003			;
3804: 0F1608	       SR = LSHIFT SR0 BY #8 (LO)	;
3805: 23AE0F	IF     AR = SR0 | AY1			;
3806: 93FE3A	       DM($3FE3) = AR			;BDMAC = (bank << 8) | 3;
3807: 93FE18	       DM($3FE1) = SI			;BIAD = dst;
3808: 93FE44	       DM($3FE4) = AY0			;BWCOUNT = len;
L3809:
3809: 83FE4E	       SR0 = DM($3FE4)			;
380A: 2A7EAA	       NONE = SR0 + 0  			;
380B: 1B8091	IF NE  JUMP $3809			;while (BWCOUNT);
380C: 0A000F	IF     RTS				;

L380D:							;void dmem_init()
380D: 340015	       M1 = #0001			;
380E: 400008	       SI = #0000			;
380F: 380014	       M4 = #0001			;
3810: 3B71C0	       I4 = #371C			;u16* ptr = 0x371C;
L3811:							;while (1) {
3811: 500000	       AX0 = PM(I4,M4)			;  u16* dst = *ptr++;
3812: 500010	       AX1 = PM(I4,M4)			;  u16 len = *ptr++;
3813: 2A79AA	       NONE = AX1 + 0  			;
3814: 0A0003	IF LE  RTS				;  if (len <= 0) return;
3815: 0D0400	       I0 = AX0				;
3816: 0D0C51	       CNTR = AX1			;
3817: 1F819F	IF     CALL $3819			;  dmemclr(dst,len);
3818: 1B811F	IF     JUMP $3811			;}

L3819:							;void dmemclr(u16* dst, u16 len)//dst-I0,len-CNTR
3819: 400008	       SI = #0000			;
381A: 1781BE	       DO $381B UNTIL NCE		;for (int i=0;i<len;i++)
381B: 680081	       DM(I0,M1) = SI			;  *dst++ = 0;
381C: 0A000F	IF     RTS				;

L381D:							;void ram_clear()
381D: 34001F	       DMOVLAY = #0001			;DMOVLAY = 1;
381E: 3C0085	       CNTR = #0008			;
381F: 17829E	       DO $3829 UNTIL NCE		;for (int 8=0;i>0;i--) {
3820: 0D03A5	       AR = CNTR			;
3821: 2322DF	IF     AR = 0008 - AR 			;  u16 bank = 8 - i;
3822: 01800A	       IO($0) = AR			;  RAM_BANK = bank;
3823: 3E0005	       CNTR = #2000			;
3824: 400008	       SI = #0000			;
3825: 380000	       I4 = #0000			;  du16* ptr = 0x0000;
3826: 380014	       M4 = #0001			;
3827: 17828E	       DO $3828 UNTIL NCE		;  for (int i=0;i<0x2000;i++) 
3828: 780080	       DM(I4,M4) = SI			;    ptr++ = 0;
3829: 000000	       NOP				;}
382A: 34000F	       DMOVLAY = #0000			;DMOVLAY = 0;
382B: 0A000F	IF     RTS				;

382C: 3E0005	       CNTR = #2000			;
382D: 400008	       SI = #0000			;
382E: 3A0000	       I4 = #2000			;
382F: 17830E	       DO $3830 UNTIL NCE		;
3830: 780080	       DM(I4,M4) = SI			;
3831: 34000F	       DMOVLAY = #0000			;
3832: 0A000F	IF     RTS				;

L3833:							;void dmem_init2()
3833: 340015	       M1 = #0001			;
3834: 400008	       SI = #0000			;
3835: 380014	       M4 = #0001			;
3836: 3A1C40	       I4 = #21C4			;pu16* ptr = dmem_init_tbl;
L3837:							;while (1) {
3837: 500000	       AX0 = PM(I4,M4)			;  u16* dst = *ptr++;
3838: 500010	       AX1 = PM(I4,M4)			;  u16 len = *ptr++;
3839: 2A79AA	       NONE = AX1 + 0  			;
383A: 0A0003	IF LE  RTS				;  if (len <= 0) return;
383B: 0D0400	       I0 = AX0				;
383C: 0D0C51	       CNTR = AX1			;
383D: 1F840F	IF     CALL $3840			;  dmemset(dst,len,ptr);
383E: 1B837F	IF     JUMP $3837			;}
383F: 0A000F	IF     RTS				;

L3840:							;void dmemset(u16* dst, u16 len, u16* src)//dst-I0,len-CNTR,src-I4,M4
3840: 500080	       SI = PM(I4,M4)			;val = *src++;
3841: 17842E	       DO $3842 UNTIL NCE		;for (int i=0;i<len;i++)
3842: 680081	       DM(I0,M1) = SI			;  *dst++ = val;
3843: 0A000F	IF     RTS				;

L3844:							;void addr_add(u16 *addr,u16 *bank,u16 offs)//addr-AX0,bank-AX1,offs-AY0
3844: 22600F	IF     AR = AX0 + AY0			;u16 sum = addr + offs;
3845: 0F1202	       SR = LSHIFT AR BY #2 (LO)	;
3846: 43FFF5	       AY1 = #3FFF			;
3847: 2B8A5F	       AR = AR  & AY1, AY1 = SR1	;*addr = (sum & 0x3FFF);
3848: 2A690A	       AR = AX1 + AY1, AX0 = AR		;
3849: 0D001A	       AX1 = AR				;*bank += (sum >> 14)
384A: 0A000F	IF     RTS				;

L384B:							;void io_init()
384B: 40001A	       AR = #0001			;
384C: 01802A	       IO($2) = AR			;IO[2] = 0x0001;
384D: 40000A	       AR = #0000			;
384E: 93FE5A	       DM($3FE5) = AR			;PFDATA = 0x00;
384F: 450008	       SI = #5000			;
3850: 83FE5A	       AR = DM($3FE5)			;u8 pfi = PFDATA;
3851: 2382DF	IF     AR = AR  & #0008			;
3852: 1B8540	IF EQ  JUMP $3854			;
3853: 470008	       SI = #7000			;
3854: 93FE68	       DM($3FE6) = SI			;PFTYPE = pfi & 0x08 ? 0x7000 : 0x5000;
3855: 40000A	       AR = #0000			;
3856: 93FE5A	       DM($3FE5) = AR			;PFDATA = 0x00;
3857: 41FF98	       SI = #1FF9			;
3858: 93FFE8	       DM($3FFE) = SI			;WSCR = 0x1FF9;
3859: 0D03A3	       AR = IMASK			;
385A: 400804	       AY0 = #0080			;
385B: 23A20F	IF     AR = AR  | AY0			;
385C: 0D0C3A	       IMASK = AR			;IMASK |= 0x0080;
385D: 0A000F	IF     RTS				;

L385E:							;void sport_init()
385E: 40F820	       AX0 = #0F82			;
385F: 93FF30	       DM($3FF3) = AX0			;SPORT0_ABUF = 0x0F82;
3860: 400000	       AX0 = #0000			;
3861: 93FF40	       DM($3FF4) = AX0			;SPORT0_RFSDIV = 0x0000;
3862: 400200	       AX0 = #0020			;
3863: 93FF50	       DM($3FF5) = AX0			;SPORT0_SCLKDIV= 0x0020;
3864: 44A0F0	       AX0 = #4A0F			;
3865: 93FF60	       DM($3FF6) = AX0			;SPORT0_CTRL = 0x4A0F;
3866: 400000	       AX0 = #0000			;
3867: 93FF70	       DM($3FF7) = AX0			;SPORT0_TX0_15 = 0x0000;
3868: 93FF80	       DM($3FF8) = AX0			;SPORT0_TX16_31 = 0x0000;
3869: 93FF90	       DM($3FF9) = AX0			;SPORT0_RX0_15 = 0x0000;
386A: 93FFA0	       DM($3FFA) = AX0			;SPORT0_RX16_31 = 0x0000;
386B: 40F820	       AX0 = #0F82			;
386C: 93FEF0	       DM($3FEF) = AX0			;SPORT1_ABUF = 0x0F82;
386D: 400000	       AX0 = #0000			;
386E: 93FF00	       DM($3FF0) = AX0			;SPORT1_RFSDIV = 0x0000;
386F: 400200	       AX0 = #0020			;
3870: 93FF10	       DM($3FF1) = AX0			;SPORT1_SCLKDIV= 0x0020;
3871: 4080F0	       AX0 = #080F			;
3872: 93FF20	       DM($3FF2) = AX0			;SPORT1_CTRL = 0x080F;
3873: 0A000F	IF     RTS				;

3874: 0A001F	IF     RTI				;

L3875:							;void sports_send()
3875: 3B8740	       I4 = #3874			;
3876: 500000	       AX0 = PM(I4,M4)			;
3877: 380100	       I4 = #0010			;
3878: 580000	       PM(I4,M4) = AX0			;*(pu24*)0x0010 = *(pu24*)0x3874;
3879: 430000	       AX0 = #3000			;
387A: 934650	       DM($3465) = AX0			;sound_buf_pos = &sound_buf[0];
387B: 430000	       AX0 = #3000			;
387C: 0D0830	       I7 = AX0				;du16* ptr = sound_buf;
387D: 340015	       M1 = #0001			;
387E: 380017	       M7 = #0001			;
387F: 38400B	       L7 = #0400			;
3880: 41C004	       AY0 = #1C00			;
3881: 83FFFA	       AR = DM($3FFF)			;
3882: 23A20F	IF     AR = AR  | AY0			;
3883: 93FFFA	       DM($3FFF) = AR			;SCR |= 0x1C00;
3884: 0D03A3	       AR = IMASK			;
3885: 400404	       AY0 = #0040			;
3886: 23A20F	IF     AR = AR  | AY0			;
3887: 3C040C	       IFC = #0040			;IFC = 0x0040;//clear pend bit for SPORT0 TX int
3888: 000000	       NOP				;
3889: 0D0C3A	       IMASK = AR			;IMASK |= 0x0040;//enable SPORT0 TX int
388A: 7000AF	       AR = DM(I7,M7)			;
388B: 0D0C9A	       TX0 = AR				;TX0 = *ptr++;
388C: 7000AF	       AR = DM(I7,M7)			;ptr &= ~0x03FF;
388D: 0D0CBA	       TX1 = AR				;TX1 = *ptr++;
388E: 0A000F	IF     RTS				;ptr &= ~0x03FF;

388F: 0C0030	       ENA SEC_REG			;
3890: 9B4712	       DM($3471) = I6			;
3891: 9B472A	       DM($3472) = L6			;
3892: 8B4662	       I6 = DM($3466)			;
3893: 38400A	       L6 = #0400			;
3894: 70000B	       AX0 = DM(I6,M7)			;
3895: 0D0C90	       TX0 = AX0			;
3896: 70000B	       AX0 = DM(I6,M7)			;
3897: 0D0CB0	       TX1 = AX0			;
3898: 9B4662	       DM($3466) = I6			;
3899: 8B4712	       I6 = DM($3471)			;
389A: 8B472A	       L6 = DM($3472)			;
389B: 0A001F	IF     RTI				;

L389C:							;void check_ram()
389C: 34001F	       DMOVLAY = #0001			;DMOVLAY = 1;
389D: 3C0045	       CNTR = #0004			;int bank;
389E: 178AEE	       DO $38AE UNTIL NCE		;for (int i=4;i>0;i--) {
389F: 0D03A5	       AR = CNTR			;
38A0: 23229F	IF     AR = 0004 - AR 			;
38A1: 93473A	       DM($3473) = AR			;  bank = 4 - i;
38A2: 01800A	       IO($0) = AR			;  RAM_BANK = bank;
38A3: 0D000A	       AX0 = AR				;
38A4: 3E0005	       CNTR = #2000			;
38A5: 340000	       I0 = #0000			;  du16* ptr = 0x0000;
38A6: 340015	       M1 = #0001			;
38A7: 178ADE	       DO $38AD UNTIL NCE		;  for (int j=0;j<0x2000;j++) {
38A8: 0D0140	       AY0 = I0				;
38A9: 0D0084	       SI = AY0				;
38AA: 0F1008	       SR = LSHIFT SI BY #8 (LO)	;
38AB: 27C00F	IF     AF = AX0 ^ AY0			;    u16 pat = (i << 8) ^ bank ^ i;
38AC: 23D60F	IF     AR = SR0 ^ AF 			;    *ptr++ = pat;
38AD: 6800A1	       DM(I0,M1) = AR			;  }
38AE: 000000	       NOP				;}
38AF: 3C0045	       CNTR = #0004			;
38B0: 178C3E	       DO $38C3 UNTIL NCE		;for (int i=4;i>0;i--)  {
38B1: 0D03A5	       AR = CNTR			;
38B2: 23229F	IF     AR = 0004 - AR 			;
38B3: 93473A	       DM($3473) = AR			;  bank = 4 - i;
38B4: 01800A	       IO($0) = AR			;  RAM_BANK = bank;
38B5: 0D000A	       AX0 = AR				;
38B6: 3E0005	       CNTR = #2000			;
38B7: 340000	       I0 = #0000			;  du16* ptr = 0x0000;
38B8: 340015	       M1 = #0001			;
38B9: 178C2E	       DO $38C2 UNTIL NCE		;  for (int j=0;j<0x2000;j++) {
38BA: 0D0140	       AY0 = I0				;
38BB: 0D0084	       SI = AY0				;
38BC: 0F1008	       SR = LSHIFT SI BY #8 (LO)	;
38BD: 27C00F	IF     AF = AX0 ^ AY0			;
38BE: 23D60F	IF     AR = SR0 ^ AF 			;    u16 pat = (i << 8) ^ bank ^ i;
38BF: 600051	       AY1 = DM(I0,M1)			;    u16 temp = *ptr++;
38C0: 22EA0F	IF     AR = AR  - AY1			;
38C1: 1B8EA1	IF NE  JUMP $38EA			;    if (temp != pat) goto L38EA;
38C2: 000000	       NOP				;  }
38C3: 000000	       NOP				;}
38C4: 3C0045	       CNTR = #0004			;
38C5: 178CAE	       DO $38CA UNTIL NCE		;for (int i=4;i>0;i--)  {
38C6: 0D03A5	       AR = CNTR			;
38C7: 23229F	IF     AR = 0004 - AR 			;
38C8: 93473A	       DM($3473) = AR			;  bank = 4 - i;
38C9: 1F8CCF	IF     CALL $38CC			;  check_ram_bank(bank);
38CA: 000000	       NOP				;}
38CB: 0A000F	IF     RTS				;

L38CC:							;void check_ram_bank(u16 bank)
38CC: 01800A	       IO($0) = AR			;RAM_BANK = bank;
38CD: 34001F	       DMOVLAY = #0001			;DMOVLAY = 1;
38CE: 340000	       I0 = #0000			;du16* ptr = 0x0000;
38CF: 340015	       M1 = #0001			;
38D0: 340004	       M0 = #0000			;
38D1: 37FFF6	       M2 = #3FFF			;
38D2: 360008	       L0 = #2000			;
38D3: 400008	       SI = #0000			;
38D4: 400019	       SE = #0001			;
38D5: 3C0025	       CNTR = #0002			;
38D6: 178E5E	       DO $38E5 UNTIL NCE		;for (int i=0;i<2;i++) {
38D7: 3D0005	       CNTR = #1000			;
38D8: 178E4E	       DO $38E4 UNTIL NCE		;  for (int j=0;j<0x1000;j++) {
38D9: 40001E	       SR0 = #0001			;    u16 pat = 0x0001;
38DA: 3C0105	       CNTR = #0010			;
38DB: 178E2E	       DO $38E2 UNTIL NCE		;    for (int k=0;k<0x10;k++) {
38DC: 6800E2	       DM(I0,M2) = SR0			;      *ptr-- = pat; ptr &= 0x1FFF;
38DD: 680081	       DM(I0,M1) = SI			;      *ptr++ = 0; ptr &= 0x1FFF;
38DE: 600040	       AY0 = DM(I0,M0)			;      u16 temp = *ptr;
38DF: 23C60F	IF     AR = SR0 ^ AY0			;
38E0: 1B8E91	IF NE  JUMP $38E9			;      if (temp^pat) goto L38E9;
38E1: 0E160F	IF     SR = LSHIFT SR0 (LO)		;      pat <<= 1;
38E2: 000000	       NOP				;    }
38E3: 090001	       MODIFY (I0,M1)			;
38E4: 000000	       NOP				;  }
38E5: 000000	       NOP				;}
38E6: 340008	       L0 = #0000			;
38E7: 34000F	       DMOVLAY = #0000			;DMOVLAY = 0;
38E8: 0A000F	IF     RTS				;

L38E9:
38E9: 04001C	       POP PC,POP LOOP,POP CNTR		;
L38EA:
38EA: 04001C	       POP PC,POP LOOP,POP CNTR		;
38EB: 04001C	       POP PC,POP LOOP,POP CNTR		;
38EC: 834730	       AX0 = DM($3473)			;
38ED: 22601F	IF     AR = AX0 + 0001			;bank + 1
38EE: 0D000A	       AX0 = AR				;
38EF: 40001A	       AR = #0001			;
38F0: 1EE5CF	IF     CALL $2E5C			;
38F1: 0A000F	IF     RTS				;

L38F2:							;void reboot()
38F2: 34000E	       PMOVLAY = #0000			;
38F3: 34000F	       DMOVLAY = #0000			;
38F4: 40000A	       AR = #0000			;
38F5: 0D0C3A	       IMASK = AR			;IMASK = 0;
38F6: 01801A	       IO($1) = AR			;ROM_BANK = 0;
38F7: 93FE1A	       DM($3FE1) = AR			;BIAD = 0;
38F8: 93FE2A	       DM($3FE2) = AR			;BEAD = 0;
38F9: 40008A	       AR = #0008			;
38FA: 93FE3A	       DM($3FE3) = AR			;BDMAC = 0x0008;
38FB: 40020A	       AR = #0020			;
38FC: 93FE4A	       DM($3FE4) = AR			;BWCOUN = 0x0020;
38FD: 1B8FDF	IF     JUMP $38FD			;while (1);

L38FE:							;void check_for_reboot()
38FE: 83FE5A	       AR = DM($3FE5)			;pfi = PFDATA;
38FF: 400024	       AY0 = #0002			;u8 mask = 0x02;
3900: 2B82AA	       NONE = AR  & AY0			;
3901: 1B9061	IF NE  JUMP $3906			;if (pfi & mask) goto L3906;
3902: 400044	       AY0 = #0004			;mask = 0x04;
3903: 2B82AA	       NONE = AR  & AY0			;
3904: 1B9061	IF NE  JUMP $3906			;if (pfi & mask) goto L3906;
3905: 0A000F	IF     RTS				;return;
L3906:
3906: 3C4005	       CNTR = #0400			;while (1) {
3907: 370001	       I1 = #3000			;
3908: 340015	       M1 = #0001			;
3909: 40000A	       AR = #0000			;
390A: 1790BE	       DO $390B UNTIL NCE		;  for (int i=0;i<0x400;i++)
390B: 6800A5	       DM(I1,M1) = AR			;    buf_3000[i] = 0;
390C: 83FE5A	       AR = DM($3FE5)			;  u8 pfi = PFDATA;
390D: 2B82AA	       NONE = AR  & AY0			;
390E: 1B9061	IF NE  JUMP $3906			;  if (pfi & mask) continue;
390F: 2B82AA	       NONE = AR  & AY0			;
3910: 1B9061	IF NE  JUMP $3906			;  if (pfi & mask) continue;
3911: 3C0C85	       CNTR = #00C8			;
3912: 17916E	       DO $3916 UNTIL NCE		;  for (int i=0;i<0xC8;i++) {
3913: 3CD065	       CNTR = #0D06			;
3914: 17915E	       DO $3915 UNTIL NCE		;    for (int j=0;j<0xD06;j++);
3915: 000000	       NOP				;
3916: 000000	       NOP				;  }
3917: 1F8F2F	IF     CALL $38F2			;  reboot();
3918: 1B906F	IF     JUMP $3906			;}

L3999:							;
3999: 93475E	       DM($3475) = SR0			;(u16 n,du* ptr)
399A: 0D047E	       M3 = SR0				;
399B: 378D01	       I1 = #38D0			;
399C: 090007	       MODIFY (I1,M3)			;
399D: 6000A4	       AR = DM(I1,M0)			;u16 temp = buf_38D0[n];
399E: 93477A	       DM($3477) = AR			;
399F: 2A7AAA	       NONE = AR  + 0  			;
39A0: 0A0000	IF EQ  RTS				;if (!temp) return;
39A1: 340004	       M0 = #0000			;
39A2: 378F01	       I1 = #38F0			;
39A3: 090007	       MODIFY (I1,M3)			;
39A4: 6000A4	       AR = DM(I1,M0)			;
39A5: 22E21F	IF     AR = AR  - 0001			;
39A6: 400004	       AY0 = #0000			;
39A7: 1B9AF4	IF LT  JUMP $39AF			;
39A8: 6800A4	       DM(I1,M0) = AR			;
39A9: 378E01	       I1 = #38E0			;
39AA: 090007	       MODIFY (I1,M3)			;
39AB: 600044	       AY0 = DM(I1,M0)			;
39AC: 1B9AF2	IF GT  JUMP $39AF			;
39AD: 400008	       SI = #0000			;
39AE: 680084	       DM(I1,M0) = SI			;
39AF: 378A01	       I1 = #38A0			;
39B0: 090007	       MODIFY (I1,M3)			;
39B1: 600004	       AX0 = DM(I1,M0)			;
39B2: 22600F	IF     AR = AX0 + AY0			;
39B3: 1B9B94	IF LT  JUMP $39B9			;
39B4: 41F804	       AY0 = #1F80			;
39B5: 2AE2AA	       NONE = AR  - AY0			;
39B6: 1B9BA3	IF LE  JUMP $39BA			;
39B7: 41F80A	       AR = #1F80			;
39B8: 1B9BAF	IF     JUMP $39BA			;
39B9: 40000A	       AR = #0000			;
39BA: 6800A4	       DM(I1,M0) = AR			;
39BB: 0F12F9	       SR = LSHIFT AR  BY #F9 (LO)	;
39BC: 93476E	       DM($3476) = SR0			;
39BD: 4FF104	       AY0 = #FF10			;
39BE: 23820F	IF     AR = AR  & AY0			;
39BF: 27800F	IF     AF = AX0 & AY0			;
39C0: 26F20F	IF     AF = AR  - AF 			;
39C1: 40100A	       AR = #0100			;
39C2: 93478A	       DM($3478) = AR			;
39C3: 83477A	       AR = DM($3477)			;
39C4: 227A0F	IF     AR = AR  + 0  			;
39C5: 1BA224	IF LT  JUMP $3A22			;
39C6: 22E21F	IF     AR = AR  - 0001			;
39C7: 1B9D70	IF EQ  JUMP $39D7			;
39C8: 22E21F	IF     AR = AR  - 0001			;
39C9: 1BA151	IF NE  JUMP $3A15			;
39CA: 874767	       M3 = DM($3476)			;
39CB: 0D01A7	       AR = M3				;
39CC: 1B9CDF	IF     JUMP $39CD			;
39CD: 379401	       I1 = #3940			;
39CE: 090007	       MODIFY (I1,M3)			;
39CF: 6000A7	       AR = DM(I1,M3)			;
39D0: 0D007A	       MY1 = AR				;
39D1: 0D005A	       AY1 = AR				;
39D2: 226A0F	IF     AR = AR  + AY1			;
39D3: 480006	       MY0 = #8000			;
39D4: 0C2000	       DIS M_MODE			;
39D5: 24820F	IF     MR = AR  * MY0 (SS)		;
39D6: 1B9E1F	IF     JUMP $39E1			;
39D7: 379001	       I1 = #3900			;
39D8: 874767	       M3 = DM($3476)			;
39D9: 090007	       MODIFY (I1,M3)			;
39DA: 6000A7	       AR = DM(I1,M3)			;
39DB: 0D007A	       MY1 = AR				;
39DC: 0D005A	       AY1 = AR				;
39DD: 226A0F	IF     AR = AR  + AY1			;
39DE: 480006	       MY0 = #8000			;
39DF: 0C2000	       DIS M_MODE			;
39E0: 24A20F	IF     MR = AR  * MY0 (SU)		;
39E1: 2A10AA	       NONE = AF 			;
39E2: 1FA281	IF NE  CALL $3A28			;
39E3: 3A17C0	       I4 = #217C			;
39E4: 40000A	       AR = #0000			;
39E5: 5800A0	       PM(I4,M4) = AR			;
39E6: 340004	       M0 = #0000			;
39E7: 340015	       M1 = #0001			;
39E8: 37FFF6	       M2 = #3FFF			;
39E9: 0D0520	       I2 = I0				;
39EA: 400019	       SE = #0001			;
39EB: 380014	       M4 = #0001			;
39EC: 3BFFF5	       M5 = #3FFF			;
39ED: 3A17C1	       I5 = #217C			;
39EE: 380006	       M6 = #0000			;
39EF: 40000A	       AR = #0000			;
39F0: 5800A6	       PM(I5,M6) = AR			;
39F1: 374743	       I3 = #3474			;
39F2: 874767	       M3 = DM($3476)			;
39F3: 379191	       I1 = #3919			;
39F4: 090007	       MODIFY (I1,M3)			;
39F5: 090007	       MODIFY (I1,M3)			;
39F6: 0D0901	       I4 = I1				;
39F7: 874757	       M3 = DM($3475)			;
39F8: 378B01	       I1 = #38B0			;
39F9: 090007	       MODIFY (I1,M3)			;
39FA: 090007	       MODIFY (I1,M3)			;
39FB: 600045	       AY0 = DM(I1,M1)			;
39FC: 6000A4	       AR = DM(I1,M0)			;
39FD: 600021	       MX0 = DM(I0,M1)			;
39FE: 0C0C00	       ENA AR_SAT			;
39FF: 834788	       SI = DM($3478)			;
3A00: 0D0C58	       CNTR = SI			;
3A01: 17A0CE	       DO $3A0C UNTIL NCE		;{
3A02: 6828AC	       MR = MX0*MY1 (RND),DM(I3,M0) = AR;
3A03: 2A645C	       AR = MR1 + AY0, AY1 = MR1	;
3A04: 567AB6	       AF = AR  + 0  , MR0 = PM(I5,M6)	;
3A05: 6000CC	       MR1 = DM(I3,M0)			;
3A06: 511060	       MR = MR+MX0*MF (SS),MY0=PM(I4,M4);
3A07: 21020F	IF     MR = MR + AR * MY0 (SS)		;
3A08: E84211	       MR = MR+AR*MY0(RND),MX0=DM(I0,M1),MY0=PM(I4,M5);
3A09: 050000	IF MV  SAT MR				;
3A0A: 28224C	       MR = AR  * MY0 (RND), AY0 = MR1	;
3A0B: 22720F	IF     AR = AR  + AF 			;
3A0C: 6A6CA9	       AR = MR1 + AY1, DM(I2,M1) = AR	;}
3A0D: 378B01	       I1 = #38B0			;
3A0E: 874757	       M3 = DM($3475)			;
3A0F: 090007	       MODIFY (I1,M3)			;
3A10: 090007	       MODIFY (I1,M3)			;
3A11: 680045	       DM(I1,M1) = AY0			;
3A12: 6800A5	       DM(I1,M1) = AR			;
3A13: 0C0800	       DIS AR_SAT			;
3A14: 0A000F	IF     RTS				;

3A15: 340004	       M0 = #0000			;
3A16: 340005	       M1 = #0000			;
3A17: 378D01	       I1 = #38D0			;
3A18: 090007	       MODIFY (I1,M3)			;
3A19: 40000A	       AR = #0000			;
3A1A: 6800A4	       DM(I1,M0) = AR			;buf_38D0[n] = 0;
3A1B: 378B01	       I1 = #38B0			;
3A1C: 874757	       M3 = DM($3475)			;
3A1D: 090007	       MODIFY (I1,M3)			;
3A1E: 090007	       MODIFY (I1,M3)			;
3A1F: 6800A5	       DM(I1,M1) = AR			;
3A20: 6800A5	       DM(I1,M1) = AR			;
3A21: 0A000F	IF     RTS				;

3A22: 378D01	       I1 = #38D0			;
3A23: 874757	       M3 = DM($3475)			;
3A24: 090007	       MODIFY (I1,M3)			;
3A25: 40000A	       AR = #0000			;
3A26: 6800A4	       DM(I1,M0) = AR			;buf_38D0[var_3475] = 0;
3A27: 0A000F	IF     RTS				;

3A28: 0A000F	IF     RTS				;

3A29: 0A000F	IF     RTS				;

3A2A: 9347AA	       DM($347A) = AR			;
3A2B: 9347B5	       DM($347B) = AY1			;
3A2C: 834795	       AY1 = DM($3479)			;
3A2D: 23E20F	IF     AR = ABS AY0			;
3A2E: 2AEAAA	       NONE = AR  - AY1			;
3A2F: 8347B5	       AY1 = DM($347B)			;
3A30: 8347AA	       AR = DM($347A)			;
3A31: 0A0003	IF LE  RTS				;
3A32: 23E20F	IF     AR = ABS AY0			;
3A33: 93479A	       DM($3479) = AR			;
3A34: 8347AA	       AR = DM($347A)			;
3A35: 0A000F	IF     RTS				;
3A36: 9347AA	       DM($347A) = AR			;
3A37: 9347B5	       DM($347B) = AY1			;
3A38: 834795	       AY1 = DM($3479)			;
3A39: 23E40F	IF     AR = ABS AY0			;
3A3A: 2AEAAA	       NONE = AR  - AY1			;
3A3B: 8347B5	       AY1 = DM($347B)			;
3A3C: 8347AA	       AR = DM($347A)			;
3A3D: 0A0003	IF LE  RTS				;
3A3E: 23E40F	IF     AR = ABS AY0			;
3A3F: 93479A	       DM($3479) = AR			;
3A40: 8347AA	       AR = DM($347A)			;
3A41: 0A000F	IF     RTS				;

L3A42:							;(n)
3A42: 939C0E	       DM($39C0) = SR0			;
3A43: 0D085E	       M5 = SR0				;
3A44: 380016	       M6 = #0001			;
3A45: 0D047E	       M3 = SR0				;
3A46: 0C3000	       ENA M_MODE			;
3A47: 434904	       AY0 = #3490			;
3A48: 401006	       MY0 = #0100			;
3A49: 20E60F	IF     MR = SR0 * MY0 (UU)		;
3A4A: 22630F	IF     AR = MR0 + AY0			;
3A4B: 939C1A	       DM($39C1) = AR			;
3A4C: 1FBC0F	IF     CALL $3BC0			;
3A4D: 3747C0	       I0 = #347C			;
3A4E: 090003	       MODIFY (I0,M3)			;
3A4F: 6000A0	       AR = DM(I0,M0)			;
3A50: 34001F	       DMOVLAY = #0001			;
3A51: 839C0E	       SR0 = DM($39C0)			;
3A52: 01800E	       IO($0) = SR0			;
3A53: 22E21F	IF     AR = AR  - 0001			;
3A54: 1BA744	IF LT  JUMP $3A74			;
3A55: 1BA910	IF EQ  JUMP $3A91			;
3A56: 22E21F	IF     AR = AR  - 0001			;
3A57: 1BB0C0	IF EQ  JUMP $3B0C			;
3A58: 22E21F	IF     AR = AR  - 0001			;
3A59: 1BB530	IF EQ  JUMP $3B53			;
3A5A: 22E21F	IF     AR = AR  - 0001			;
3A5B: 1BB840	IF EQ  JUMP $3B84			;
3A5C: 22E21F	IF     AR = AR  - 0001			;
3A5D: 1BB960	IF EQ  JUMP $3B96			;
3A5E: 0A000F	IF     RTS				;

3A5F: 34000F	       DMOVLAY = #0000			;
3A60: 38000A	       L6 = #0000			;
3A61: 340009	       L1 = #0000			;
3A62: 340008	       L0 = #0000			;
3A63: 40001A	       AR = #0001			;
3A64: 227A0F	IF     AR = AR  + 0  			;
3A65: 879C10	       I0 = DM($39C1)			;
3A66: 340015	       M1 = #0001			;
3A67: 400008	       SI = #0000			;
3A68: 3C1005	       CNTR = #0100			;
3A69: 17A6AE	       DO $3A6A UNTIL NCE		;
3A6A: A00001	       DM(I0,M1) = #0000		;
3A6B: 34000F	       DMOVLAY = #0000			;
3A6C: 0A000F	IF     RTS				;

3A6D: 34000F	       DMOVLAY = #0000			;
3A6E: 38000A	       L6 = #0000			;
3A6F: 340009	       L1 = #0000			;
3A70: 340008	       L0 = #0000			;
3A71: 40001A	       AR = #0001			;
3A72: 227A0F	IF     AR = AR  + 0  			;
3A73: 0A000F	IF     RTS				;
3A74: 8B9C05	       M5 = DM($39C0)			;
3A75: 380004	       M4 = #0000			;
3A76: 3B9BC0	       I4 = #39BC			;
3A77: 090011	       MODIFY (I4,M5)			;
3A78: 7000A0	       AR = DM(I4,M4)			;
3A79: 0D040A	       I0 = AR				;
3A7A: 360008	       L0 = #2000			;
3A7B: 3C1005	       CNTR = #0100			;
3A7C: 40000A	       AR = #0000			;
3A7D: 340015	       M1 = #0001			;
3A7E: 17A7FE	       DO $3A7F UNTIL NCE		;
3A7F: 6800A1	       DM(I0,M1) = AR			;
3A80: 0D01A0	       AR = I0				;
3A81: 7800A0	       DM(I4,M4) = AR			;
3A82: 839C0A	       AR = DM($39C0)			;
3A83: 400034	       AY0 = #0003			;
3A84: 2AE2AA	       NONE = AR  - AY0			;
3A85: 1BA8D1	IF NE  JUMP $3A8D			;
3A86: 87A000	       I0 = DM($3A00)			;
3A87: 40000A	       AR = #0000			;
3A88: 3C1005	       CNTR = #0100			;
3A89: 350008	       L0 = #1000			;
3A8A: 17A8BE	       DO $3A8B UNTIL NCE		;
3A8B: 6800A1	       DM(I0,M1) = AR			;
3A8C: 97A000	       DM($3A00) = I0			;
3A8D: 4FFFFA	       AR = #FFFF			;
3A8E: 227A0F	IF     AR = AR  + 0  			;
3A8F: 340008	       L0 = #0000			;
3A90: 1BA65F	IF     JUMP $3A65			;
3A91: 3B9B40	       I4 = #39B4			;
3A92: 090011	       MODIFY (I4,M5)			;
3A93: 7000A0	       AR = DM(I4,M4)			;
3A94: 0D040A	       I0 = AR				;
3A95: 3B9BC0	       I4 = #39BC			;
3A96: 090011	       MODIFY (I4,M5)			;
3A97: 7000A0	       AR = DM(I4,M4)			;
3A98: 0D041A	       I1 = AR				;
3A99: 37E003	       I3 = #3E00			;
3A9A: 340015	       M1 = #0001			;
3A9B: 380004	       M4 = #0000			;
3A9C: 37FFF7	       M3 = #3FFF			;
3A9D: 340004	       M0 = #0000			;
3A9E: 38040A	       L6 = #0040			;
3A9F: 360009	       L1 = #2000			;
3AA0: 879C12	       I2 = DM($39C1)			;
3AA1: 0D0589	       L0 = L1				;
3AA2: 0C2000	       DIS M_MODE			;
3AA3: 3B9A80	       I4 = #39A8			;
3AA4: 090011	       MODIFY (I4,M5)			;
3AA5: 7000C0	       MR1 = DM(I4,M4)			;
3AA6: 25180F	IF     MR = MR + MX0 * 0   (SS)		;
3AA7: 3B9B80	       I4 = #39B8			;
3AA8: 090011	       MODIFY (I4,M5)			;
3AA9: 7000A0	       AR = DM(I4,M4)			;
3AAA: 939C2A	       DM($39C2) = AR			;
3AAB: 3C0105	       CNTR = #0010			;
3AAC: 17AFEE	       DO $3AFE UNTIL NCE		;
3AAD: 0D0100	       AX0 = I0				;
3AAE: 0D0141	       AY0 = I1				;
3AAF: 0D0158	       AY1 = L0				;
3AB0: 23200F	IF     AR = AY0 - AX0			;
3AB1: 226A04	IF LT  AR = AR  + AY1			;
3AB2: 939C4A	       DM($39C4) = AR			;
3AB3: 3B9A41	       I5 = #39A4			;
3AB4: 090015	       MODIFY (I5,M5)			;
3AB5: 7000A4	       AR = DM(I5,M4)			;
3AB6: 3B9840	       I4 = #3984			;
3AB7: 090011	       MODIFY (I4,M5)			;
3AB8: 700080	       SI = DM(I4,M4)			;
3AB9: 0F10FA	       SR = LSHIFT SI  BY #FA (LO)	;
3ABA: 0D005E	       AY1 = SR0			;
3ABB: 226A0F	IF     AR = AR  + AY1			;
3ABC: 47FFF5	       AY1 = #7FFF			;
3ABD: 238A0F	IF     AR = AR  & AY1			;
3ABE: 0F02F8	       SR = LSHIFT AR  BY #F8 (HI)	;
3ABF: 7800A4	       DM(I5,M4) = AR			;
3AC0: 1FBA5F	IF     CALL $3BA5			;
3AC1: 3B9800	       I4 = #3980			;
3AC2: 090011	       MODIFY (I4,M5)			;
3AC3: 700070	       MY1 = DM(I4,M4)			;
3AC4: 20AA0F	IF     MR = AR  * MY1 (SU)		;
3AC5: 227CDF	IF     AR = MR1 + 8000			;
3AC6: 3B9880	       I4 = #3988			;
3AC7: 090011	       MODIFY (I4,M5)			;
3AC8: 700060	       MY0 = DM(I4,M4)			;
3AC9: 20E20F	IF     MR = AR  * MY0 (UU)		;
3ACA: 2A7CAA	       NONE = MR1 + 0  			;
3ACB: 1BACD2	IF GT  JUMP $3ACD			;
3ACC: 40001C	       MR1 = #0001			;
3ACD: 22FC5F	IF     AR = MR1 - 2000			;
3ACE: 1BAD04	IF LT  JUMP $3AD0			;
3ACF: 41FFFC	       MR1 = #1FFF			;
3AD0: 839C46	       MY0 = DM($39C4)			;
3AD1: 480002	       MX0 = #8000			;
3AD2: 21C00F	IF     MR = MR - MX0 * MY0 (US)		;
3AD3: 400012	       MX0 = #0001			;
3AD4: 839C26	       MY0 = DM($39C2)			;
3AD5: 21600F	IF     MR = MR + MX0 * MY0 (UU)		;
3AD6: 23E40F	IF     AR = ABS AY0			;
3AD7: 22EA1F	IF     AR = AR  - 0010			;
3AD8: 1BAE14	IF LT  JUMP $3AE1			;
3AD9: 2A7CAA	       NONE = MR1 + 0  			;
3ADA: 1BADE4	IF LT  JUMP $3ADE			;
3ADB: 0D004A	       AY0 = AR				;
3ADC: 48001A	       AR = #8001			;
3ADD: 1BAE5F	IF     JUMP $3AE5			;
3ADE: 0D004A	       AY0 = AR				;
3ADF: 47FFFA	       AR = #7FFF			;
3AE0: 1BAE5F	IF     JUMP $3AE5			;
3AE1: 4FFFB9	       SE = #FFFB			;
3AE2: 0E240F	IF     SR = ASHIFT MR1 (HI)		;
3AE3: 0E1B0F	IF     SR = SR OR LSHIFT MR0 (LO)	;
3AE4: 233E0F	IF     AR = 0   - SR0			;
3AE5: 939C3A	       DM($39C3) = AR			;
3AE6: 839C2A	       AR = DM($39C2)			;
3AE7: 839C34	       AY0 = DM($39C3)			;
3AE8: 47FFF5	       AY1 = #7FFF			;
3AE9: 47FFFE	       SR0 = #7FFF			;
3AEA: 600071	       MY1 = DM(I0,M1)			;
3AEB: 0D00C7	       MR1 = MY1			;
3AEC: 3C0105	       CNTR = #0010			;
3AED: 17AFBE	       DO $3AFB UNTIL NCE		;
3AEE: 618A60	       MR = MR - AR  * MY1 (SS), MY0 = DM(I0,M0);
3AEF: 610269	       MR = MR + AR  * MY0 (SS), MY0 = DM(I2,M1);
3AF0: 6894CD	       MR = MR1 * MF  (SS), DM(I3,M1) = MR1;
3AF1: 20460F	IF     MR = MR + SR0 * MY0 (RND)	;
3AF2: 050000	IF MV  SAT MR				;
3AF3: 6800C5	       DM(I1,M1) = MR1			;
3AF4: 22620F	IF     AR = AR  + AY0			;
3AF5: 1BAFA4	IF LT  JUMP $3AFA			;
3AF6: 600071	       MY1 = DM(I0,M1)			;
3AF7: 1BAFB7	IF NAV JUMP $3AFB			;
3AF8: 638A71	       AR = AR  & AY1, MY1 = DM(I0,M1)	;
3AF9: 1BAFBF	IF     JUMP $3AFB			;
3AFA: 22FADF	IF     AR = AR  - 8000			;
3AFB: 0D00C7	       MR1 = MY1			;
3AFC: 939C2A	       DM($39C2) = AR			;
3AFD: 090003	       MODIFY (I0,M3)			;
3AFE: 000000	       NOP				;
3AFF: 3B9B40	       I4 = #39B4			;
3B00: 090011	       MODIFY (I4,M5)			;
3B01: 0D01A0	       AR = I0				;
3B02: 7800A0	       DM(I4,M4) = AR			;
3B03: 3B9B80	       I4 = #39B8			;
3B04: 090011	       MODIFY (I4,M5)			;
3B05: 839C2A	       AR = DM($39C2)			;
3B06: 7800A0	       DM(I4,M4) = AR			;
3B07: 3B9BC0	       I4 = #39BC			;
3B08: 090011	       MODIFY (I4,M5)			;
3B09: 0D01A1	       AR = I1				;
3B0A: 7800A0	       DM(I4,M4) = AR			;
3B0B: 1BA5FF	IF     JUMP $3A5F			;
3B0C: 839C18	       SI = DM($39C1)			;
3B0D: 340015	       M1 = #0001			;
3B0E: 0C3000	       ENA M_MODE			;
3B0F: 839C0A	       AR = DM($39C0)			;
3B10: 400046	       MY0 = #0004			;
3B11: 439C64	       AY0 = #39C6			;
3B12: 20E20F	IF     MR = AR  * MY0 (UU)		;
3B13: 22630F	IF     AR = MR0 + AY0			;
3B14: 939E8A	       DM($39E8) = AR			;
3B15: 839C0A	       AR = DM($39C0)			;
3B16: 439D64	       AY0 = #39D6			;
3B17: 20E20F	IF     MR = AR  * MY0 (UU)		;
3B18: 22630F	IF     AR = MR0 + AY0			;
3B19: 939E9A	       DM($39E9) = AR			;
3B1A: 0C2000	       DIS M_MODE			;
3B1B: 939E68	       DM($39E6) = SI			;
3B1C: 43E008	       SI = #3E00			;
3B1D: 939E78	       DM($39E7) = SI			;
3B1E: 380004	       M4 = #0000			;
3B1F: 3C0105	       CNTR = #0010			;
3B20: 17B51E	       DO $3B51 UNTIL NCE		;
3B21: 3B9A41	       I5 = #39A4			;
3B22: 090015	       MODIFY (I5,M5)			;
3B23: 7000A4	       AR = DM(I5,M4)			;
3B24: 3B9840	       I4 = #3984			;
3B25: 090011	       MODIFY (I4,M5)			;
3B26: 700080	       SI = DM(I4,M4)			;
3B27: 0F10FA	       SR = LSHIFT SI  BY #FA (LO)	;
3B28: 0D005E	       AY1 = SR0			;
3B29: 226A0F	IF     AR = AR  + AY1			;
3B2A: 47FFF5	       AY1 = #7FFF			;
3B2B: 238A0F	IF     AR = AR  & AY1			;
3B2C: 0F02F8	       SR = LSHIFT AR  BY #F8 (HI)	;
3B2D: 7800A4	       DM(I5,M4) = AR			;
3B2E: 1FBA5F	IF     CALL $3BA5			;
3B2F: 3B9800	       I4 = #3980			;
3B30: 090011	       MODIFY (I4,M5)			;
3B31: 700070	       MY1 = DM(I4,M4)			;
3B32: 20AA0F	IF     MR = AR  * MY1 (SU)		;
3B33: 0D006C	       MY0 = MR1			;
3B34: 879E80	       I0 = DM($39E8)			;
3B35: 879E93	       I3 = DM($39E9)			;
3B36: 3C0045	       CNTR = #0004			;
3B37: 879E61	       I1 = DM($39E6)			;
3B38: 17B4AE	       DO $3B4A UNTIL NCE		;
3B39: 879E72	       I2 = DM($39E7)			;
3B3A: 600050	       AY1 = DM(I0,M0)			;
3B3B: 6000CC	       MR1 = DM(I3,M0)			;
3B3C: 600045	       AY0 = DM(I1,M1)			;
3B3D: 3C0085	       CNTR = #0008			;
3B3E: 0C0C00	       ENA AR_SAT			;
3B3F: 17B45E	       DO $3B45 UNTIL NCE		;
3B40: 2AE4C5	       AR = MR1 - AY0, MR1 = AY1	;
3B41: 610255	       MR = MR + AR * MY0 (SS), AY1 = DM(I1,M1);
3B42: 6800C9	       DM(I2,M1) = MR1			;
3B43: 2AECC4	       AR = MR1 - AY1, MR1 = AY0	;
3B44: 610245	       MR = MR + AR * MY0 (SS), AY0 = DM(I1,M1);
3B45: 6800C9	       DM(I2,M1) = MR1			;
3B46: 0C0800	       DIS AR_SAT			;
3B47: 680051	       DM(I0,M1) = AY1			;
3B48: 6800CD	       DM(I3,M1) = MR1			;
3B49: 879E71	       I1 = DM($39E7)			;
3B4A: 000000	       NOP				;
3B4B: 879E61	       I1 = DM($39E6)			;
3B4C: 340105	       M1 = #0010			;
3B4D: 090005	       MODIFY (I1,M1)			;
3B4E: 340015	       M1 = #0001			;
3B4F: 979E61	       DM($39E6) = I1			;
3B50: 979E72	       DM($39E7) = I2			;
3B51: 000000	       NOP				;
3B52: 1BA5FF	IF     JUMP $3A5F			;
3B53: 37E003	       I3 = #3E00			;
3B54: 340015	       M1 = #0001			;
3B55: 380004	       M4 = #0000			;
3B56: 37FFF7	       M3 = #3FFF			;
3B57: 340004	       M0 = #0000			;
3B58: 38040A	       L6 = #0040			;
3B59: 879C12	       I2 = DM($39C1)			;
3B5A: 0C2000	       DIS M_MODE			;
3B5B: 3B9B80	       I4 = #39B8			;
3B5C: 090011	       MODIFY (I4,M5)			;
3B5D: 7000A0	       AR = DM(I4,M4)			;
3B5E: 939C2A	       DM($39C2) = AR			;
3B5F: 3C0105	       CNTR = #0010			;
3B60: 17B82E	       DO $3B82 UNTIL NCE		;
3B61: 0D0100	       AX0 = I0				;
3B62: 0D0141	       AY0 = I1				;
3B63: 0D0158	       AY1 = L0				;
3B64: 23200F	IF     AR = AY0 - AX0			;
3B65: 226A04	IF LT  AR = AR  + AY1			;
3B66: 939C4A	       DM($39C4) = AR			;
3B67: 3B9A41	       I5 = #39A4			;
3B68: 090015	       MODIFY (I5,M5)			;
3B69: 7000A4	       AR = DM(I5,M4)			;
3B6A: 3B9840	       I4 = #3984			;
3B6B: 090011	       MODIFY (I4,M5)			;
3B6C: 700080	       SI = DM(I4,M4)			;
3B6D: 0F10F9	       SR = LSHIFT SI  BY #F9 (LO)	;
3B6E: 0D005E	       AY1 = SR0			;
3B6F: 226A0F	IF     AR = AR  + AY1			;
3B70: 47FFF5	       AY1 = #7FFF			;
3B71: 238A0F	IF     AR = AR  & AY1			;
3B72: 0F02F8	       SR = LSHIFT AR  BY #F8 (HI)	;
3B73: 7800A4	       DM(I5,M4) = AR			;
3B74: 1FBA5F	IF     CALL $3BA5			;
3B75: 3B9800	       I4 = #3980			;
3B76: 090011	       MODIFY (I4,M5)			;
3B77: 700070	       MY1 = DM(I4,M4)			;
3B78: 24AA0F	IF     MF = AR  * MY1 (SU)		;
3B79: 20920F	IF     MR = AR  * MF  (SS)		;
3B7A: 233CFF	IF     AR = 7FFF - MR1			;
3B7B: 3C0105	       CNTR = #0010			;
3B7C: 17B7FE	       DO $3B7F UNTIL NCE		;
3B7D: 600079	       MY1 = DM(I2,M1)			;
3B7E: 20CA0F	IF     MR = AR  * MY1 (US)		;
3B7F: 6800CD	       DM(I3,M1) = MR1			;
3B80: 939C2A	       DM($39C2) = AR			;
3B81: 090003	       MODIFY (I0,M3)			;
3B82: 000000	       NOP				;
3B83: 1BA5FF	IF     JUMP $3A5F			;
3B84: 40002A	       AR = #0002			;
3B85: 839C04	       AY0 = DM($39C0)			;
3B86: 2AE2AA	       NONE = AR  - AY0			;
3B87: 1BB8F1	IF NE  JUMP $3B8F			;
3B88: 3747F0	       I0 = #347F			;
3B89: 6000A0	       AR = DM(I0,M0)			;
3B8A: 400054	       AY0 = #0005			;
3B8B: 2AE2AA	       NONE = AR  - AY0			;
3B8C: 1BB930	IF EQ  JUMP $3B93			;
3B8D: 2A7AAA	       NONE = AR  + 0  			;
3B8E: 1BB930	IF EQ  JUMP $3B93			;
3B8F: 40000A	       AR = #0000			;
3B90: 3747E0	       I0 = #347E			;
3B91: 6800A0	       DM(I0,M0) = AR			;
3B92: 1BA74F	IF     JUMP $3A74			;
3B93: 879C11	       I1 = DM($39C1)			;
3B94: 1FD94F	IF     CALL $3D94			;
3B95: 1BA6DF	IF     JUMP $3A6D			;
3B96: 40003A	       AR = #0003			;
3B97: 839C04	       AY0 = DM($39C0)			;
3B98: 2AE2AA	       NONE = AR  - AY0			;
3B99: 1BB9F1	IF NE  JUMP $3B9F			;
3B9A: 3747E0	       I0 = #347E			;
3B9B: 6000A0	       AR = DM(I0,M0)			;
3B9C: 400044	       AY0 = #0004			;
3B9D: 2AE2AA	       NONE = AR  - AY0			;
3B9E: 1BBA30	IF EQ  JUMP $3BA3			;
3B9F: 40000A	       AR = #0000			;
3BA0: 3747F0	       I0 = #347F			;
3BA1: 6800A0	       DM(I0,M0) = AR			;
3BA2: 1BA74F	IF     JUMP $3A74			;
3BA3: 1FE00F	IF     CALL $3E00			;
3BA4: 1BA6DF	IF     JUMP $3A6D			;
3BA5: 26EF9F	IF     AF = SR1 - 0040			;
3BA6: 1BBB55	IF GE  JUMP $3BB5			;
3BA7: 421804	       AY0 = #2180			;
3BA8: 22670F	IF     AR = SR1 + AY0			;
3BA9: 0D082A	       I6 = AR				;
3BAA: 5000AA	       AR = PM(I6,M6)			;
3BAB: 233A0F	IF     AR = 0   - AR 			;
3BAC: 22E216	IF AV  AR = AR  - 0001			;
3BAD: 0D006A	       MY0 = AR				;
3BAE: 0D00CA	       MR1 = AR				;
3BAF: 0F16FF	       SR = LSHIFT SR0 BY #FF (LO)	;
3BB0: 51866A	       MR = MR - SR0 * MY0(SS),MY0 = PM(I6,M6);
3BB1: 20660F	IF     MR = MR - SR0 * MY0 (RND)	;
3BB2: 050000	IF MV  SAT MR				;
3BB3: 0D00AC	       AR = MR1				;
3BB4: 0A000F	IF     RTS				;
3BB5: 42180A	       AR = #2180			;
3BB6: 22720F	IF     AR = AR  + AF 			;
3BB7: 0D082A	       I6 = AR				;
3BB8: 5000AA	       AR = PM(I6,M6)			;
3BB9: 0D006A	       MY0 = AR				;
3BBA: 0D00CA	       MR1 = AR				;
3BBB: 0F16FF	       SR = LSHIFT SR0 BY #FF (LO)	;
3BBC: 51866A	       MR = MR - SR0 * MY0(SS),MY0 = PM(I6,M6);
3BBD: 20460F	IF     MR = MR + SR0 * MY0 (RND)	;
3BBE: 0D00AC	       AR = MR1				;
3BBF: 0A000F	IF     RTS				;
3BC0: 879C07	       M3 = DM($39C0)			;
3BC1: 340015	       M1 = #0001			;
3BC2: 340004	       M0 = #0000			;
3BC3: 340046	       M2 = #0004			;
3BC4: 379800	       I0 = #3980			;
3BC5: 090003	       MODIFY (I0,M3)			;
3BC6: 379981	       I1 = #3998			;
3BC7: 090007	       MODIFY (I1,M3)			;
3BC8: 3798C2	       I2 = #398C			;
3BC9: 09000B	       MODIFY (I2,M3)			;
3BCA: 600000	       AX0 = DM(I0,M0)			;
3BCB: 6000A4	       AR = DM(I1,M0)			;
3BCC: 600048	       AY0 = DM(I2,M0)			;
3BCD: 22E21F	IF     AR = AR  - 0001			;
3BCE: 1BBD74	IF LT  JUMP $3BD7			;
3BCF: 6800A4	       DM(I1,M0) = AR			;
3BD0: 22600F	IF     AR = AX0 + AY0			;
3BD1: 400004	       AY0 = #0000			;
3BD2: 220004	IF LT  AR = AY0				;
3BD3: 47FFF4	       AY0 = #7FFF			;
3BD4: 279ADF	IF     AF = AR  & 8000			;
3BD5: 220001	IF NE  AR = AY0				;
3BD6: 0D000A	       AX0 = AR				;
3BD7: 680000	       DM(I0,M0) = AX0			;
3BD8: 090002	       MODIFY (I0,M2)			;
3BD9: 090006	       MODIFY (I1,M2)			;
3BDA: 09000A	       MODIFY (I2,M2)			;
3BDB: 600000	       AX0 = DM(I0,M0)			;
3BDC: 6000A4	       AR = DM(I1,M0)			;
3BDD: 600048	       AY0 = DM(I2,M0)			;
3BDE: 22E21F	IF     AR = AR  - 0001			;
3BDF: 1BBE84	IF LT  JUMP $3BE8			;
3BE0: 6800A4	       DM(I1,M0) = AR			;
3BE1: 22600F	IF     AR = AX0 + AY0			;
3BE2: 400004	       AY0 = #0000			;
3BE3: 220004	IF LT  AR = AY0				;
3BE4: 47FFF4	       AY0 = #7FFF			;
3BE5: 279ADF	IF     AF = AR  & 8000			;
3BE6: 220001	IF NE  AR = AY0				;
3BE7: 0D000A	       AX0 = AR				;
3BE8: 680000	       DM(I0,M0) = AX0			;
3BE9: 090002	       MODIFY (I0,M2)			;
3BEA: 090006	       MODIFY (I1,M2)			;
3BEB: 09000A	       MODIFY (I2,M2)			;
3BEC: 600000	       AX0 = DM(I0,M0)			;
3BED: 6000A4	       AR = DM(I1,M0)			;
3BEE: 600048	       AY0 = DM(I2,M0)			;
3BEF: 22E21F	IF     AR = AR  - 0001			;
3BF0: 1BBFA4	IF LT  JUMP $3BFA			;
3BF1: 6800A4	       DM(I1,M0) = AR			;
3BF2: 22600F	IF     AR = AX0 + AY0			;
3BF3: 400024	       AY0 = #0002			;
3BF4: 2AE2AA	       NONE = AR  - AY0			;
3BF5: 220004	IF LT  AR = AY0				;
3BF6: 41FFF4	       AY0 = #1FFF			;
3BF7: 26E20F	IF     AF = AR  - AY0			;
3BF8: 220005	IF GE  AR = AY0				;
3BF9: 0D000A	       AX0 = AR				;
3BFA: 680000	       DM(I0,M0) = AX0			;
3BFB: 379A80	       I0 = #39A8			;
3BFC: 090003	       MODIFY (I0,M3)			;
3BFD: 600080	       SI = DM(I0,M0)			;
3BFE: 0D0008	       AX0 = SI				;
3BFF: 379B01	       I1 = #39B0			;
3C00: 090007	       MODIFY (I1,M3)			;
3C01: 6000A4	       AR = DM(I1,M0)			;
3C02: 379AC2	       I2 = #39AC			;
3C03: 09000B	       MODIFY (I2,M3)			;
3C04: 600048	       AY0 = DM(I2,M0)			;
3C05: 22E21F	IF     AR = AR  - 0001			;
3C06: 1BC144	IF LT  JUMP $3C14			;
3C07: 6800A4	       DM(I1,M0) = AR			;
3C08: 0F30FF	       SR = ASHIFT SI  BY #FF (LO)	;
3C09: 0C0C00	       ENA AR_SAT			;
3C0A: 22660F	IF     AR = SR0 + AY0			;
3C0B: 0C0800	       DIS AR_SAT			;
3C0C: 4C0014	       AY0 = #C001			;
3C0D: 2AE2AA	       NONE = AR  - AY0			;
3C0E: 220003	IF LE  AR = AY0				;
3C0F: 43FFF4	       AY0 = #3FFF			;
3C10: 2AE2AA	       NONE = AR  - AY0			;
3C11: 220005	IF GE  AR = AY0				;
3C12: 0F3201	       SR = ASHIFT AR  BY #01 (LO)	;
3C13: 0D000E	       AX0 = SR0			;
3C14: 680000	       DM(I0,M0) = AX0			;
3C15: 839C0A	       AR = DM($39C0)			;
3C16: 22627F	IF     AR = AR  + FFFFFFFD		;
3C17: 0A0001	IF NE  RTS				;
3C18: 379FD0	       I0 = #39FD			;
3C19: 600000	       AX0 = DM(I0,M0)			;
3C1A: 379FF1	       I1 = #39FF			;
3C1B: 6000A4	       AR = DM(I1,M0)			;
3C1C: 379FE2	       I2 = #39FE			;
3C1D: 600048	       AY0 = DM(I2,M0)			;
3C1E: 22E21F	IF     AR = AR  - 0001			;
3C1F: 1BC254	IF LT  JUMP $3C25			;
3C20: 6800A4	       DM(I1,M0) = AR			;
3C21: 0C0C00	       ENA AR_SAT			;
3C22: 22600F	IF     AR = AX0 + AY0			;
3C23: 0C0800	       DIS AR_SAT			;
3C24: 0D000A	       AX0 = AR				;
3C25: 680000	       DM(I0,M0) = AX0			;
3C26: 37A020	       I0 = #3A02			;
3C27: 600000	       AX0 = DM(I0,M0)			;
3C28: 37A041	       I1 = #3A04			;
3C29: 6000A4	       AR = DM(I1,M0)			;
3C2A: 37A032	       I2 = #3A03			;
3C2B: 600048	       AY0 = DM(I2,M0)			;
3C2C: 22E21F	IF     AR = AR  - 0001			;
3C2D: 1BC334	IF LT  JUMP $3C33			;
3C2E: 6800A4	       DM(I1,M0) = AR			;
3C2F: 0C0C00	       ENA AR_SAT			;
3C30: 22600F	IF     AR = AX0 + AY0			;
3C31: 0D000A	       AX0 = AR				;
3C32: 0C0800	       DIS AR_SAT			;
3C33: 680000	       DM(I0,M0) = AX0			;
3C34: 0A000F	IF     RTS				;

L3C35:							;s16 (n)//n-AX0
3C35: 340004	       M0 = #0000			;
3C36: 340015	       M1 = #0001			;
3C37: 93F030	       DM($3F03) = AX0			;
3C38: 0D0470	       M3 = AX0				;
3C39: 37E001	       I1 = #3E00			;
3C3A: 37F282	       I2 = #3F28			;
3C3B: 09000B	       MODIFY (I2,M3)			;
3C3C: 600008	       AX0 = DM(I2,M0)			;;
3C3D: 22780F	IF     AR = AX0 + 0  			;
3C3E: 1BCED0	IF EQ  JUMP $3CED			;if (L3F28[n] == 0) goto L3CED;
3C3F: 1BC4A4	IF LT  JUMP $3C4A			;if (L3F28[n] > 0) {
3C40: 1FD31F	IF     CALL $3D31			;  L3D31();
3C41: 37BE32	       I2 = #3BE3			;
3C42: 6000A8	       AR = DM(I2,M0)			;
3C43: 267A0F	IF     AF = AR  + 0  			;
3C44: 97F004	       DM($3F00) = M0			;
3C45: 37BDE2	       I2 = #3BDE			;
3C46: 600008	       AX0 = DM(I2,M0)			;
3C47: 93F020	       DM($3F02) = AX0			;
3C48: 0D0420	       I2 = AX0				;
3C49: 1BC8BF	IF     JUMP $3C8B			;}
L3C4A:
3C4A: 340004	       M0 = #0000			;else {
3C4B: 340015	       M1 = #0001			;
3C4C: 87F037	       M3 = DM($3F03)			;
3C4D: 37F182	       I2 = #3F18			;
3C4E: 09000B	       MODIFY (I2,M3)			;
3C4F: 400008	       SI = #0000			;
3C50: 680088	       DM(I2,M0) = SI			;
3C51: 1FD31F	IF     CALL $3D31			;
3C52: 400185	       AY1 = #0018			;
3C53: 83FE4A	       AR = DM($3FE4)			;
3C54: 17C562	       DO $3C56 UNTIL GT 		;  {
3C55: 22EA0F	IF     AR = AR  - AY1			;
3C56: 83FE4A	       AR = DM($3FE4)			;  }
3C57: 6000ED	       SR0 = DM(I3,M1)			;
3C58: 37F282	       I2 = #3F28			;
3C59: 87F037	       M3 = DM($3F03)			;
3C5A: 09000B	       MODIFY (I2,M3)			;
3C5B: 6800E8	       DM(I2,M0) = SR0			;
3C5C: 6000ED	       SR0 = DM(I3,M1)			;
3C5D: 83DFDA	       AR = DM($3DFD)			;
3C5E: 22E25F	IF     AR = AR  - 0002			;
3C5F: 93DFDA	       DM($3DFD) = AR			;
3C60: 400101	       AX1 = #0010			;
3C61: 26790F	IF     AF = AX1 + 0  			;
3C62: 37BE32	       I2 = #3BE3			;
3C63: 600008	       AX0 = DM(I2,M0)			;
3C64: 0D0C50	       CNTR = AX0			;
3C65: 400069	       SE = #0006			;
3C66: 400100	       AX0 = #0010			;
3C67: 400061	       AX1 = #0006			;
3C68: 3BF302	       I6 = #3F30			;
3C69: 8BF034	       M4 = DM($3F03)			;
3C6A: 090018	       MODIFY (I6,M4)			;
3C6B: 380085	       M5 = #0008			;
3C6C: 17C7BE	       DO $3C7B UNTIL NCE		;
3C6D: 0E160F	IF     SR = LSHIFT SR0 (LO)		;
3C6E: 27310F	IF     AF = AF  - AX1			;
3C6F: 1BC7B2	IF GT  JUMP $3C7B			;
3C70: 22B00F	IF     AR = -AF 			;
3C71: 6000ED	       SR0 = DM(I3,M1)			;
3C72: 26700F	IF     AF = AX0 + AF 			;
3C73: 0D009A	       SE = AR				;
3C74: 0D008E	       SI = SR0				;
3C75: 40000E	       SR0 = #0000			;
3C76: 0E180F	IF     SR = SR OR LSHIFT SI  (LO)	;
3C77: 400069	       SE = #0006			;
3C78: 83DFDA	       AR = DM($3DFD)			;
3C79: 22E21F	IF     AR = AR  - 0001			;
3C7A: 93DFDA	       DM($3DFD) = AR			;
3C7B: 7800F9	       DM(I6,M5) = SR1			;
3C7C: 22100F	IF     AR = AF 				;
3C7D: 93DFEA	       DM($3DFE) = AR			;
3C7E: 83DFDA	       AR = DM($3DFD)			;
3C7F: 2A7AAA	       NONE = AR  + 0  			;
3C80: 1FD693	IF LE  CALL $3D69			;
3C81: 37BE32	       I2 = #3BE3			;
3C82: 090009	       MODIFY (I2,M1)			;
3C83: 6000A8	       AR = DM(I2,M0)			;
3C84: 267A0F	IF     AF = AR  + 0  			;
3C85: 37BDE2	       I2 = #3BDE			;
3C86: 090009	       MODIFY (I2,M1)			;
3C87: 600008	       AX0 = DM(I2,M0)			;
3C88: 93F020	       DM($3F02) = AX0			;
3C89: 0D0420	       I2 = AX0				;  ptr = ;
3C8A: 97F005	       DM($3F00) = M1			;}
L3C8B:
3C8B: 480004	       AY0 = #8000			;
3C8C: 400019	       SE = #0001			;
3C8D: 0C0800	       DIS AR_SAT			;
3C8E: 4FFFF1	       AX1 = #FFFF			;
3C8F: 8FDFE5	       CNTR = DM($3DFE)			;
3C90: 17C97E	       DO $3C97 UNTIL NCE		;for (int i=0;i<;i++) {
3C91: 638609	       AR = SR0 & AY0, AX0 = DM(I2,M1)	;  temp = v & 0x8000; temp2 = *ptr++;
3C92: 1BC940	IF EQ  JUMP $3C94			;  if () {
3C93: 600009	       AX0 = DM(I2,M1)			;    temp2 = *ptr++;
3C94: 2278DF	IF     AR = AX0 + 8000			;    temp = temp2 + 0x8000;}
3C95: 1BCA07	IF NAV JUMP $3CA0			;
3C96: 0D047A	       M3 = AR				;
3C97: 12160B	       SR = LSHIFT SR0(LO),AX0=DM(I2,M3);}
3C98: 83DFD5	       AY1 = DM($3DFD)			;
L3C99:
3C99: 83FE4A	       AR = DM($3FE4)			;while (1) {
3C9A: 22EA0F	IF     AR = AR  - AY1			;
3C9B: 22EA1F	IF     AR = AR  - 0010			;
3C9C: 1BC995	IF GE  JUMP $3C99			;
3C9D: 1FD64F	IF     CALL $3D64			;
3C9E: 3C0105	       CNTR = #0010			;
3C9F: 1BC90F	IF     JUMP $3C90			;
L3CA0:
3CA0: 22F89F	IF     AR = AX0 - 4000			;
3CA1: 1BCA34	IF LT  JUMP $3CA3			;
3CA2: 1BCABF	IF     JUMP $3CAB			;
L3CA3:
3CA3: 22F81F	IF     AR = AX0 - 1000			;
3CA4: 1296A5	       SR = LSHIFT SR0 (LO),DM(I1,M1)=AR;
3CA5: 27100F	IF     AF = AF  - 1			;
3CA6: 1FCD83	IF LE  CALL $3CD8			;
3CA7: 87F022	       I2 = DM($3F02)			;
3CA8: 1BC91E	IF NCE JUMP $3C91			;
3CA9: 040018	       POP PC, POP LOOP			;
3CAA: 1BC99F	IF     JUMP $3C99			;
L3CAB:
3CAB: 0E160F	IF     SR = LSHIFT SR0 (LO)		;
3CAC: 22FA1F	IF     AR = AR  - 1000			;
3CAD: 1BCB94	IF LT  JUMP $3CB9			;
3CAE: 1BCF80	IF EQ  JUMP $3CF8			;  if () goto L3CF8;
3CAF: 0D0C5A	       CNTR = AR			;
3CB0: 400000	       AX0 = #0000			;
3CB1: 17CB2E	       DO $3CB2 UNTIL NCE		;
3CB2: 680005	       DM(I1,M1) = AX0			;
3CB3: 27320F	IF     AF = AF  - AR 			;
3CB4: 1FCD83	IF LE  CALL $3CD8			;  L3CD8();
3CB5: 87F022	       I2 = DM($3F02)			;
3CB6: 1BC91E	IF NCE JUMP $3C91			;
3CB7: 040018	       POP PC, POP LOOP			;
3CB8: 1BC99F	IF     JUMP $3C99			;

3CB9: 227A1F	IF     AR = AR  + 1000			;
3CBA: 0D0355	       AY1 = CNTR			;
3CBB: 0D000A	       AX0 = AR				;
3CBC: 232A0F	IF     AR = AY1 - AR 			;
3CBD: 22E21F	IF     AR = AR  - 0001			;
3CBE: 1BCCD2	IF GT  JUMP $3CCD			;
3CBF: 0D0090	       SE = AX0				;
3CC0: 0E160F	IF     SR = LSHIFT SR0 (LO)		;
3CC1: 1FD64F	IF     CALL $3D64			;
3CC2: 0D0355	       AY1 = CNTR			;
3CC3: 22E80F	IF     AR = AX0 - AY1			;
3CC4: 22621F	IF     AR = AR  + 0001			;
3CC5: 0D009A	       SE = AR				;
3CC6: 0D008E	       SI = SR0				;
3CC7: 40000E	       SR0 = #0000			;
3CC8: 0E180F	IF     SR = SR OR LSHIFT SI  (LO)	;
3CC9: 0D0195	       SE = M1				;
3CCA: 6800F5	       DM(I1,M1) = SR1			;
3CCB: 232A1F	IF     AR = 0010 - AR 			;
3CCC: 1BCD0F	IF     JUMP $3CD0			;
3CCD: 0D0090	       SE = AX0				;
3CCE: 0E160F	IF     SR = LSHIFT SR0 (LO)		;
3CCF: 6800F5	       DM(I1,M1) = SR1			;
3CD0: 22621F	IF     AR = AR  + 0001			;
3CD1: 0D0CDA	       OWRCNTR = AR			;
3CD2: 27100F	IF     AF = AF  - 1			;
3CD3: 1FCD83	IF LE  CALL $3CD8			;
3CD4: 87F022	       I2 = DM($3F02)			;
3CD5: 1BC91E	IF NCE JUMP $3C91			;
3CD6: 040018	       POP PC, POP LOOP			;
3CD7: 1BC99F	IF     JUMP $3C99			;}

L3CD8:
3CD8: 83F00A	       AR = DM($3F00)			;
3CD9: 227A0F	IF     AR = AR  + 0  			;
3CDA: 1FD850	IF EQ  CALL $3D85			;
3CDB: 22621F	IF     AR = AR  + 0001			;
3CDC: 93F00A	       DM($3F00) = AR			;
3CDD: 0D047A	       M3 = AR				;
3CDE: 37BDE2	       I2 = #3BDE			;
3CDF: 09000B	       MODIFY (I2,M3)			;
3CE0: 600008	       AX0 = DM(I2,M0)			;
3CE1: 37BE32	       I2 = #3BE3			;
3CE2: 09000B	       MODIFY (I2,M3)			;
3CE3: 6000A8	       AR = DM(I2,M0)			;
3CE4: 227A0F	IF     AR = AR  + 0  			;
3CE5: 1BCE81	IF NE  JUMP $3CE8			;
3CE6: 040010	       POP PC				;
3CE7: 1BD00F	IF     JUMP $3D00			;

3CE8: 26720F	IF     AF = AR  + AF 			;
3CE9: 1BCEC3	IF LE  JUMP $3CEC			;if ()
3CEA: 93F020	       DM($3F02) = AX0			;
3CEB: 0A000F	IF     RTS				;  return;
L3CEC:
3CEC: 000000	       NOP				;
L3CED:
3CED: 3C0105	       CNTR = #0010			;
3CEE: 87F037	       M3 = DM($3F03)			;
3CEF: 400288	       SI = #0028			;
3CF0: 37F302	       I2 = #3F30			;du* ptr = 0x3F30 + var_3F03;
3CF1: 09000B	       MODIFY (I2,M3)			;
3CF2: 340087	       M3 = #0008			;
3CF3: 17CF4E	       DO $3CF4 UNTIL NCE		;for (int i=0;i<0x10;i++) {
3CF4: 68008B	       DM(I2,M3) = SI			;  *ptr = 0x0028; ptr += 8; }
3CF5: 4FFFF0	       AX0 = #FFFF			;
3CF6: 22780F	IF     AR = AX0 + 0  			;
3CF7: 0A000F	IF     RTS				;return -1;

L3CF8:
3CF8: 22100F	IF     AR = AF 				;
3CF9: 0D0C5A	       CNTR = AR			;
3CFA: 400000	       AX0 = #0000			;
3CFB: 17CFCE	       DO $3CFC UNTIL NCE		;
3CFC: 680005	       DM(I1,M1) = AX0			;
3CFD: 26780F	IF     AF = AX0 + 0  			;
3CFE: 1FCD8F	IF     CALL $3CD8			;
3CFF: 1BCF8F	IF     JUMP $3CF8			;

L3D00:
3D00: 0D0305	       AX0 = CNTR			;
3D01: 22E01F	IF     AR = AX0 - 0001			;
3D02: 1BD072	IF GT  JUMP $3D07			;
3D03: 83DFD5	       AY1 = DM($3DFD)			;
3D04: 6308ED	       AR = AY1 - 1, SR0 = DM(I3,M1)	;
3D05: 93DFDA	       DM($3DFD) = AR			;
3D06: 40010A	       AR = #0010			;
3D07: 87F037	       M3 = DM($3F03)			;
3D08: 37F182	       I2 = #3F18			;
3D09: 09000B	       MODIFY (I2,M3)			;
3D0A: 6800A8	       DM(I2,M0) = AR			;
3D0B: 37F202	       I2 = #3F20			;
3D0C: 09000B	       MODIFY (I2,M3)			;
3D0D: 6800E8	       DM(I2,M0) = SR0			;
3D0E: 0D02A0	       AR = I4				;
3D0F: 83DFD5	       AY1 = DM($3DFD)			;
3D10: 22EA0F	IF     AR = AR  - AY1			;
3D11: 22EA0F	IF     AR = AR  - AY1			;
3D12: 400105	       AY1 = #0010			;
3D13: 22EA0F	IF     AR = AR  - AY1			;
3D14: 22EA0F	IF     AR = AR  - AY1			;
3D15: 0D080A	       I4 = AR				;
3D16: 1BD1A5	IF GE  JUMP $3D1A			;
3D17: 83DFFA	       AR = DM($3DFF)			;
3D18: 22F21F	IF     AR = AR  - 0100			;
3D19: 93DFFA	       DM($3DFF) = AR			;
3D1A: 37F082	       I2 = #3F08			;
3D1B: 09000B	       MODIFY (I2,M3)			;
3D1C: 0D0200	       AX0 = I4				;
3D1D: 680008	       DM(I2,M0) = AX0			;
3D1E: 37F102	       I2 = #3F10			;
3D1F: 09000B	       MODIFY (I2,M3)			;
3D20: 83DFFE	       SR0 = DM($3DFF)			;
3D21: 6000A8	       AR = DM(I2,M0)			;
3D22: 4FF004	       AY0 = #FF00			;
3D23: 23820F	IF     AR = AR  & AY0			;
3D24: 0F16F8	       SR = LSHIFT SR0 BY #F8 (LO)	;
3D25: 0D005E	       AY1 = SR0			;
3D26: 23AA0F	IF     AR = AR  | AY1			;
3D27: 6800A8	       DM(I2,M0) = AR			;
3D28: 04001C	       POP PC,POP LOOP,POP CNTR		;
3D29: 34000B	       L3 = #0000			;
3D2A: 87F037	       M3 = DM($3F03)			;
3D2B: 37F283	       I3 = #3F28			;
3D2C: 09000F	       MODIFY (I3,M3)			;
3D2D: 60004C	       AY0 = DM(I3,M0)			;
3D2E: 23000F	IF     AR = AY0 - 1			;
3D2F: 6800AC	       DM(I3,M0) = AR			;
3D30: 0A000F	IF     RTS				;


3D31: 83FE4E	       SR0 = DM($3FE4)			;
3D32: 2A7EAA	       NONE = SR0 + 0  			;
3D33: 1BD311	IF NE  JUMP $3D31			;
3D34: 34020B	       L3 = #0020			;
3D35: 37F082	       I2 = #3F08			;
3D36: 09000B	       MODIFY (I2,M3)			;
3D37: 600008	       AX0 = DM(I2,M0)			;
3D38: 0D0800	       I4 = AX0				;
3D39: 37F102	       I2 = #3F10			;
3D3A: 09000B	       MODIFY (I2,M3)			;
3D3B: 6000E8	       SR0 = DM(I2,M0)			;
3D3C: 0F1608	       SR = LSHIFT SR0 BY #08 (LO)	;
3D3D: 01801F	       IO($1) = SR1			;
3D3E: 93DFFE	       DM($3DFF) = SR0			;
3D3F: 9BFE20	       DM($3FE2) = I4			;
3D40: 43A400	       AX0 = #3A40			;
3D41: 93FE10	       DM($3FE1) = AX0			;
3D42: 0D0430	       I3 = AX0				;
3D43: 400015	       AY1 = #0001			;
3D44: 23AE0F	IF     AR = SR0 | AY1			;
3D45: 93FE3A	       DM($3FE3) = AR			;
3D46: 400101	       AX1 = #0010			;
3D47: 0D0051	       AY1 = AX1			;
3D48: 22690F	IF     AR = AX1 + AY1			;
3D49: 93FE4A	       DM($3FE4) = AR			;
3D4A: 0D0303	       AX0 = IMASK			;
3D4B: 4FFF75	       AY1 = #FFF7			;
3D4C: 23880F	IF     AR = AX0 & AY1			;
3D4D: 0D0C3A	       IMASK = AR			;
3D4E: 37F202	       I2 = #3F20			;
3D4F: 09000B	       MODIFY (I2,M3)			;
3D50: 600008	       AX0 = DM(I2,M0)			;
3D51: 0D00E0	       SR0 = AX0			;
3D52: 37F182	       I2 = #3F18			;
3D53: 09000B	       MODIFY (I2,M3)			;
3D54: 600008	       AX0 = DM(I2,M0)			;
3D55: 93DFE0	       DM($3DFE) = AX0			;
3D56: 93DFD1	       DM($3DFD) = AX1			;
3D57: 0D0051	       AY1 = AX1			;
3D58: 22690F	IF     AR = AX1 + AY1			;
3D59: 26690F	IF     AF = AX1 + AY1			;
3D5A: 0D0250	       AY1 = I4				;
3D5B: 22720F	IF     AR = AR  + AF 			;
3D5C: 226A0F	IF     AR = AR  + AY1			;
3D5D: 0D080A	       I4 = AR				;
3D5E: 239A9F	IF     AR = AR  & 4000			;
3D5F: 1BD630	IF EQ  JUMP $3D63			;
3D60: 83DFFA	       AR = DM($3DFF)			;
3D61: 22721F	IF     AR = AR  + 0100			;
3D62: 93DFFA	       DM($3DFF) = AR			;
3D63: 0A000F	IF     RTS				;
3D64: 83DFD5	       AY1 = DM($3DFD)			;
3D65: 6308ED	       AR = AY1 - 1, SR0 = DM(I3,M1)	;
3D66: 1BD693	IF LE  JUMP $3D69			;
3D67: 93DFDA	       DM($3DFD) = AR			;
3D68: 0A000F	IF     RTS				;
3D69: 83FE4A	       AR = DM($3FE4)			;
3D6A: 227A0F	IF     AR = AR  + 0  			;
3D6B: 1BD692	IF GT  JUMP $3D69			;
3D6C: 83DFF1	       AX1 = DM($3DFF)			;
3D6D: 400015	       AY1 = #0001			;
3D6E: 23A90F	IF     AR = AX1 | AY1			;
3D6F: 93FE3A	       DM($3FE3) = AR			;
3D70: 400101	       AX1 = #0010			;
3D71: 0D0471	       M3 = AX1				;
3D72: 09000F	       MODIFY (I3,M3)			;
3D73: 97FE13	       DM($3FE1) = I3			;
3D74: 23390F	IF     AR = 0   - AX1			;
3D75: 0D047A	       M3 = AR				;
3D76: 09000F	       MODIFY (I3,M3)			;
3D77: 9BFE20	       DM($3FE2) = I4			;
3D78: 400101	       AX1 = #0010			;
3D79: 93FE41	       DM($3FE4) = AX1			;
3D7A: 0D0250	       AY1 = I4				;
3D7B: 2A6951	       AR = AX1 + AY1, AY1 = AX1	;
3D7C: 226A0F	IF     AR = AR  + AY1			;
3D7D: 0D080A	       I4 = AR				;
3D7E: 239A9F	IF     AR = AR  & 4000			;
3D7F: 1BD830	IF EQ  JUMP $3D83			;
3D80: 83DFFA	       AR = DM($3DFF)			;
3D81: 22721F	IF     AR = AR  + 0100			;
3D82: 93DFFA	       DM($3DFF) = AR			;
3D83: 93DFD1	       DM($3DFD) = AX1			;
3D84: 0A000F	IF     RTS				;

3D85: 3BF302	       I6 = #3F30			;
3D86: 8BF034	       M4 = DM($3F03)			;
3D87: 090018	       MODIFY (I6,M4)			;
3D88: 380085	       M5 = #0008			;
3D89: 380004	       M4 = #0000			;
3D8A: 37E001	       I1 = #3E00			;
3D8B: 3C0105	       CNTR = #0010			;
3D8C: 17D90E	       DO $3D90 UNTIL NCE		;{
3D8D: 700058	       AY1 = DM(I6,M4)			;
3D8E: 600005	       AX0 = DM(I1,M1)			;
3D8F: 22680F	IF     AR = AX0 + AY1			;
3D90: 7800A9	       DM(I6,M5) = AR			;
3D91: 37E001	       I1 = #3E00			;{
3D92: 40000A	       AR = #0000			;
3D93: 0A000F	IF     RTS				;

3D94: 0C2000	       DIS M_MODE			;
3D95: 34001F	       DMOVLAY = #0001			;
3D96: 40002A	       AR = #0002			;
3D97: 01800A	       IO($0) = AR			;
3D98: 340004	       M0 = #0000			;
3D99: 340015	       M1 = #0001			;
3D9A: 380015	       M5 = #0001			;
3D9B: 340026	       M2 = #0002			;
3D9C: 379BC2	       I2 = #39BC			;
3D9D: 09000A	       MODIFY (I2,M2)			;
3D9E: 6000A8	       AR = DM(I2,M0)			;
3D9F: 0D040A	       I0 = AR				;
3DA0: 939FAA	       DM($39FA) = AR			;
3DA1: 360008	       L0 = #2000			;
3DA2: 839FD6	       MY0 = DM($39FD)			;
3DA3: 979FB1	       DM($39FB) = I1			;
3DA4: 3C1005	       CNTR = #0100			;
3DA5: 440007	       MY1 = #4000			;
3DA6: 6000A5	       AR = DM(I1,M1)			;
3DA7: 37FFF6	       M2 = #3FFF			;
3DA8: 340027	       M3 = #0002			;
3DA9: 17DABE	       DO $3DAB UNTIL NCE		;
3DAA: 608AA6	       MR = AR * MY1 (SS),AR = DM(I1,M2);
3DAB: 6800C7	       DM(I1,M3) = MR1			;
3DAC: 0D0598	       L1 = L0				;
3DAD: 0D05B8	       L3 = L0				;
3DAE: 879FA0	       I0 = DM($39FA)			;
3DAF: 0D0510	       I1 = I0				;
3DB0: 879EA6	       M2 = DM($39EA)			;
3DB1: 090006	       MODIFY (I1,M2)			;
3DB2: 0D0531	       I3 = I1				;
3DB3: 879EB6	       M2 = DM($39EB)			;
3DB4: 09000E	       MODIFY (I3,M2)			;
3DB5: 839F27	       MY1 = DM($39F2)			;
3DB6: 0D0037	       MX1 = MY1			;
3DB7: 879FB2	       I2 = DM($39FB)			;
3DB8: 839F3E	       SR0 = DM($39F3)			;
3DB9: 0D006E	       MY0 = SR0			;
3DBA: 0D0902	       I4 = I2				;
3DBB: 1FE31F	IF     CALL $3E31			;
3DBC: 879FB2	       I2 = DM($39FB)			;
3DBD: 0D0503	       I0 = I3				;
3DBE: 37EFF6	       M2 = #3EFF			;
3DBF: 090002	       MODIFY (I0,M2)			;
3DC0: 0D0510	       I1 = I0				;
3DC1: 879EC6	       M2 = DM($39EC)			;
3DC2: 090006	       MODIFY (I1,M2)			;
3DC3: 0D0531	       I3 = I1				;
3DC4: 879ED6	       M2 = DM($39ED)			;
3DC5: 09000E	       MODIFY (I3,M2)			;
3DC6: 839F47	       MY1 = DM($39F4)			;
3DC7: 0D0037	       MX1 = MY1			;
3DC8: 879FB2	       I2 = DM($39FB)			;
3DC9: 839F5E	       SR0 = DM($39F5)			;
3DCA: 0D006E	       MY0 = SR0			;
3DCB: 0D0903	       I4 = I3				;
3DCC: 1FE31F	IF     CALL $3E31			;
3DCD: 879FA0	       I0 = DM($39FA)			;
3DCE: 879FC6	       M2 = DM($39FC)			;
3DCF: 090002	       MODIFY (I0,M2)			;
3DD0: 839EEA	       AR = DM($39EE)			;
3DD1: 233A0F	IF     AR = 0   - AR 			;
3DD2: 0D046A	       M2 = AR				;
3DD3: 090002	       MODIFY (I0,M2)			;
3DD4: 839EFA	       AR = DM($39EF)			;
3DD5: 233A0F	IF     AR = 0   - AR 			;
3DD6: 0D046A	       M2 = AR				;
3DD7: 090002	       MODIFY (I0,M2)			;
3DD8: 0D0510	       I1 = I0				;
3DD9: 879EE6	       M2 = DM($39EE)			;
3DDA: 090006	       MODIFY (I1,M2)			;
3DDB: 0D0531	       I3 = I1				;
3DDC: 879EF6	       M2 = DM($39EF)			;
3DDD: 09000E	       MODIFY (I3,M2)			;
3DDE: 839F67	       MY1 = DM($39F6)			;
3DDF: 0D0037	       MX1 = MY1			;
3DE0: 839F7E	       SR0 = DM($39F7)			;
3DE1: 0D006E	       MY0 = SR0			;
3DE2: 8B9FB0	       I4 = DM($39FB)			;
3DE3: 1FE45F	IF     CALL $3E45			;
3DE4: 879FA0	       I0 = DM($39FA)			;
3DE5: 341006	       M2 = #0100			;
3DE6: 090002	       MODIFY (I0,M2)			;
3DE7: 979FA0	       DM($39FA) = I0			;
3DE8: 879FA1	       I1 = DM($39FA)			;
3DE9: 0D0531	       I3 = I1				;
3DEA: 37F006	       M2 = #3F00			;
3DEB: 090006	       MODIFY (I1,M2)			;
3DEC: 0D05B8	       L3 = L0				;
3DED: 879FC6	       M2 = DM($39FC)			;
3DEE: 090006	       MODIFY (I1,M2)			;
3DEF: 879FB0	       I0 = DM($39FB)			;
3DF0: 37E002	       I2 = #3E00			;
3DF1: 879FB3	       I3 = DM($39FB)			;
3DF2: 34000B	       L3 = #0000			;
3DF3: 1FE5DF	IF     CALL $3E5D			;
3DF4: 879FB0	       I0 = DM($39FB)			;
3DF5: 1FE7DF	IF     CALL $3E7D			;
3DF6: 34000F	       DMOVLAY = #0000			;
3DF7: 340008	       L0 = #0000			;
3DF8: 340009	       L1 = #0000			;
3DF9: 34000B	       L3 = #0000			;
3DFA: 839FAA	       AR = DM($39FA)			;
3DFB: 340026	       M2 = #0002			;
3DFC: 379BC2	       I2 = #39BC			;
3DFD: 09000A	       MODIFY (I2,M2)			;
3DFE: 6800A8	       DM(I2,M0) = AR			;
3DFF: 0A000F	IF     RTS				;
3E00: 0C2000	       DIS M_MODE			;
3E01: 36000A	       L2 = #2000			;
3E02: 34001F	       DMOVLAY = #0001			;
3E03: 40002A	       AR = #0002			;
3E04: 01800A	       IO($0) = AR			;
3E05: 879FA2	       I2 = DM($39FA)			;
3E06: 37F006	       M2 = #3F00			;
3E07: 09000A	       MODIFY (I2,M2)			;
3E08: 879FC6	       M2 = DM($39FC)			;
3E09: 09000A	       MODIFY (I2,M2)			;
3E0A: 839EEA	       AR = DM($39EE)			;
3E0B: 233A0F	IF     AR = 0   - AR 			;
3E0C: 0D046A	       M2 = AR				;
3E0D: 09000A	       MODIFY (I2,M2)			;
3E0E: 839EFA	       AR = DM($39EF)			;
3E0F: 233A0F	IF     AR = 0   - AR 			;
3E10: 0D046A	       M2 = AR				;
3E11: 09000A	       MODIFY (I2,M2)			;
3E12: 350008	       L0 = #1000			;
3E13: 0D05B8	       L3 = L0				;
3E14: 0D0598	       L1 = L0				;
3E15: 87A000	       I0 = DM($3A00)			;
3E16: 0D0510	       I1 = I0				;
3E17: 879F06	       M2 = DM($39F0)			;
3E18: 090006	       MODIFY (I1,M2)			;
3E19: 0D0531	       I3 = I1				;
3E1A: 879F16	       M2 = DM($39F1)			;
3E1B: 09000E	       MODIFY (I3,M2)			;
3E1C: 839F87	       MY1 = DM($39F8)			;
3E1D: 0D0037	       MX1 = MY1			;
3E1E: 839F9E	       SR0 = DM($39F9)			;
3E1F: 0D006E	       MY0 = SR0			;
3E20: 3BE000	       I4 = #3E00			;
3E21: 1FE31F	IF     CALL $3E31			;
3E22: 87A000	       I0 = DM($3A00)			;
3E23: 341006	       M2 = #0100			;
3E24: 090002	       MODIFY (I0,M2)			;
3E25: 97A000	       DM($3A00) = I0			;
3E26: 37E000	       I0 = #3E00			;
3E27: 37E002	       I2 = #3E00			;
3E28: 34000A	       L2 = #0000			;
3E29: 340008	       L0 = #0000			;
3E2A: 1FE6DF	IF     CALL $3E6D			;
3E2B: 340009	       L1 = #0000			;
3E2C: 34000A	       L2 = #0000			;
3E2D: 34000B	       L3 = #0000			;
3E2E: 340008	       L0 = #0000			;
3E2F: 34000F	       DMOVLAY = #0000			;
3E30: 0A000F	IF     RTS				;

3E31: 3C1005	       CNTR = #0100			;
3E32: 48000F	       SR1 = #8000			;
3E33: 600029	       MX0 = DM(I2,M1)			;
3E34: 37FFF6	       M2 = #3FFF			;
3E35: 340027	       M3 = #0002			;
3E36: 380015	       M5 = #0001			;
3E37: 090006	       MODIFY (I1,M2)			;
3E38: 6000C5	       MR1 = DM(I1,M1)			;
3E39: 17E41E	       DO $3E41 UNTIL NCE		;
3E3A: 627CC6	       AR = MR1 + 0  , MR1 = DM(I1,M2)	;
3E3B: 25880F	IF     MF = MR - MX0 * MY1 (SS)		;
3E3C: 6800A7	       DM(I1,M3) = AR			;
3E3D: 289142	       MR = MX1 * MF  (SS), AY0 = MX0	;
3E3E: 6264CD	       AR = MR1 + AY0, MR1 = DM(I3,M1)	;
3E3F: 6996A1	       MR = MR - SR0 * MF  (SS), DM(I0,M1) = AR;
3E40: 7884C1	       MR = MR1 * MY0 (SS), DM(I4,M5) = MR1;
3E41: 615729	       MR = MR + SR1 * MF  (US), MX0 = DM(I2,M1);
3E42: 090006	       MODIFY (I1,M2)			;
3E43: 6800C4	       DM(I1,M0) = MR1			;
3E44: 0A000F	IF     RTS				;

3E45: 3C1005	       CNTR = #0100			;
3E46: 48000F	       SR1 = #8000			;
3E47: 600020	       MX0 = DM(I0,M0)			;
3E48: 37FFF6	       M2 = #3FFF			;
3E49: 340027	       M3 = #0002			;
3E4A: 380015	       M5 = #0001			;
3E4B: 090006	       MODIFY (I1,M2)			;
3E4C: 6000C5	       MR1 = DM(I1,M1)			;
3E4D: 17E55E	       DO $3E55 UNTIL NCE		;
3E4E: 627CC6	       AR = MR1 + 0  , MR1 = DM(I1,M2)	;
3E4F: 25880F	IF     MF = MR - MX0 * MY1 (SS)		;
3E50: 6800A7	       DM(I1,M3) = AR			;
3E51: 289142	       MR = MX1 * MF  (SS), AY0 = MX0	;
3E52: 6264CD	       AR = MR1 + AY0, MR1 = DM(I3,M1)	;
3E53: 6996A1	       MR = MR - SR0 * MF  (SS), DM(I0,M1) = AR	;
3E54: 7884C1	       MR = MR1 * MY0 (SS), DM(I4,M5) = MR1;
3E55: 615720	       MR = MR + SR1 * MF  (US), MX0 = DM(I0,M0);
3E56: 090006	       MODIFY (I1,M2)			;
3E57: 6800C4	       DM(I1,M0) = MR1			;
3E58: 0A000F	IF     RTS				;
3E59: 4000FE	       SR0 = #000F			;
3E5A: 97A011	       DM($3A01) = I1			;
3E5B: 0D0501	       I0 = I1				;
3E5C: 1F999F	IF     CALL $3999			;
3E5D: 3C1005	       CNTR = #0100			;
3E5E: 83A026	       MY0 = DM($3A02)			;
3E5F: 83A05A	       AR = DM($3A05)			;
3E60: 48000C	       MR1 = #8000			;
3E61: 480007	       MY1 = #8000			;
3E62: 21C40F	IF     MR = MR - MR1 * MY0 (US)		;
3E63: 252C0F	IF     MF = MR + MR1 * MY1 (SU)		;
3E64: 600021	       MX0 = DM(I0,M1)			;
3E65: 17E69E	       DO $3E69 UNTIL NCE		;
3E66: 68B0A9	       MR = MX0 * MF (SU),DM(I2,M1) = AR;
3E67: 6902AD	       MR = MR + AR * MY0 (SS),DM(I3,M1) = AR;
3E68: 050000	IF MV  SAT MR				;
3E69: 627C21	       AR = MR1 + 0  , MX0 = DM(I0,M1)	;
3E6A: 000000	       NOP				;
3E6B: 93A05A	       DM($3A05) = AR			;
3E6C: 0A000F	IF     RTS				;
3E6D: 3C1005	       CNTR = #0100			;
3E6E: 83A026	       MY0 = DM($3A02)			;
3E6F: 83A06A	       AR = DM($3A06)			;
3E70: 48000C	       MR1 = #8000			;
3E71: 480007	       MY1 = #8000			;
3E72: 21C40F	IF     MR = MR - MR1 * MY0 (US)		;
3E73: 252C0F	IF     MF = MR + MR1 * MY1 (SU)		;
3E74: 600021	       MX0 = DM(I0,M1)			;
3E75: 17E79E	       DO $3E79 UNTIL NCE		;
3E76: 68B0A9	       MR = MX0 * MF (SU),DM(I2,M1) = AR;
3E77: 21020F	IF     MR = MR + AR  * MY0 (SS)		;
3E78: 050000	IF MV  SAT MR				;
3E79: 627C21	       AR = MR1 + 0  , MX0 = DM(I0,M1)	;
3E7A: 000000	       NOP				;
3E7B: 93A06A	       DM($3A06) = AR			;
3E7C: 0A000F	IF     RTS				;
3E7D: 3C1005	       CNTR = #0100			;
3E7E: 83A086	       MY0 = DM($3A08)			;
3E7F: 83A09A	       AR = DM($3A09)			;
3E80: 48000C	       MR1 = #8000			;
3E81: 21C40F	IF     MR = MR - MR1 * MY0 (US)		;
3E82: 839FD7	       MY1 = DM($39FD)			;
3E83: 248C0F	IF     MF = MR1 * MY1 (SS)		;
3E84: 600020	       MX0 = DM(I0,M0)			;
3E85: 17E88E	       DO $3E88 UNTIL NCE		;
3E86: 6890A1	       MR = MX0 * MF (SS),DM(I0,M1) = AR;
3E87: 21020F	IF     MR = MR + AR  * MY0 (SS)		;
3E88: 627C20	       AR = MR1 + 0  , MX0 = DM(I0,M0)	;
3E89: 000000	       NOP				;
3E8A: 93A09A	       DM($3A09) = AR			;
3E8B: 0A000F	IF     RTS				;

