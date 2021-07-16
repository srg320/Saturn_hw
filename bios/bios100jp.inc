	HIRQ_CMOK		=	0x0001
	HIRQ_DRDY		=	0x0002
	HIRQ_CSCT		=	0x0004
	HIRQ_BFUL		=	0x0008
	HIRQ_PEND		=	0x0010
	HIRQ_DCHG		=	0x0020
	HIRQ_ESEL		=	0x0040
	HIRQ_EHST		= 	0x0080
	HIRQ_ECPY		=	0x0100
	HIRQ_EFLS		=	0x0200
	HIRQ_SCDQ		=	0x0400
	HIRQ_MPED		=	0x0800
	HIRQ_MPCM		=	0x1000
	HIRQ_MPST		=	0x2000

	STAT_BUSY 			= 0x00
	STAT_PAUSE 			= 0x01
	STAT_STANDBY 		= 0x02
	STAT_PLAY 			= 0x03
	STAT_SEEK			= 0x04
	STAT_SCAN			= 0x05
	STAT_OPEN			= 0x06
	STAT_NODISC			= 0x07
	STAT_RETRY			= 0x08
	STAT_ERROR			= 0x09
	STAT_FATAL			= 0x0A
	STAT_PERI 			= 0x20
	STAT_TRNS 			= 0x40
	STAT_WAIT 			= 0x80


	.org 0x06000224
time_not_set:					;u32 time_not_set;
	dc.l 	0x00000000


	.org 0x06000234
mem_set_func:					;void** mem_set_func;
	dc.l 	0x00000000
mem_copy_func:					;void** mem_copy_func;
	dc.l 	0x00000000
mem_copy_param:					;u32** mem_copy_param;
	dc.l 	0x00000000

	.org 0x06000248 
region_setting:					;u32 region_setting;	//0x06000248
	dc.l 	0x00000000
master_msg:						;u32 master_msg;		//0x0600024C
	dc.l 	0x00000000
slave_main_func:					;void** slave_main_func;//0x06000250
	dc.l 	0x06000646
app_start_func:					;void** app_start_func;	//0x06000254
	dc.l 	0x06000678


	.org 0x060002C4
master_main_func:					;void** master_main_func;
	dc.l 	0x00000000


	.org 0x06000324
sys_clock_mode:					;u32 sys_clock_mode;
	dc.l 	0x00000000
sys_clock_change_func:				;void** sys_clock_change_func;
	dc.l 	0x00000000



	.org 0x06000340
scu_set_int_func:					;void** scu_set_int_func;
	dc.l 	0x00000000
scu_change_int_func:				;void** scu_change_int_func;
	dc.l 	0x00000000
scu_curr_int_mask:				;u32 scu_curr_int_mask;
	dc.l 	0x00000000

	.org 0x060003A4
last_hirq:						;u16 last_hirq;
	dc.w 	0x0000

	.org 0x060003A8
cdb_report:						;u8 cdb_report[12];
	dc.l 	0x00000000,0x00000000,0x00000000


	.org 0x06000A00
int_handler_tbl:					;u32 int_handler_tbl[32];//0x06000A00
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
int_mask_tbl:					;u32 int_mask_tbl[32];//0x06000A80
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000
	dc.l 	0x00000000,0x00000000,0x00000000,0x00000000



