; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	banner_printed
_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	evex:BYTE
COMM	ZEROLOCALS:BYTE
_DATA	ENDS
_BSS	SEGMENT
banner_printed DB 01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG10902 DB	'%s, %s', 0aH, 00H
$SG10910 DB	'%-20s %s', 0aH, 00H
	ORG $+6
$SG10937 DB	'%s A%4u: ', 00H
	ORG $+2
$SG10938 DB	0aH, 00H
	ORG $+2
$SG10940 DB	'                           %s', 00H
	ORG $+2
$SG10957 DB	'w', 00H
	ORG $+2
$SG11007 DB	'ENOENT', 00H
_DATA	ENDS
CONST	SEGMENT
usage	DB	'   HJWasm [options] asm-file [options] [asm-file] ... [@'
	DB	'env_var]', 0aH, 0aH, 00H, 'options:', 00H, '-<0|1|..|10>[p]', 00H
	DB	'Set CPU: 0=8086 (default), 1=80186, 2=80286, 3=80386,', 00H, 00H
	DB	'4=80486, 5=Pentium, 6=PPro, 7=P2, 8=P3, 9=P4, 10=x86-64;', 00H
	DB	00H, '<p> allows privileged instructions', 00H, '-c', 00H, 'As'
	DB	'semble without linking (always set)', 00H, '-C<p|u|x>', 00H, 'S'
	DB	'et OPTION CASEMAP: p=NONE, u=ALL, x=NOTPUBLIC (default)', 00H
	DB	'-D<name>[=text]', 00H, 'Define text macro', 00H, '-e<number>', 00H
	DB	'Set error limit number (default=50)', 00H, '-EP', 00H, 'Outpu'
	DB	't preprocessed listing to stdout', 00H, '-eq', 00H, 'don''t d'
	DB	'isplay error messages', 00H, '-Fd[=<file_name>]', 00H, 'Write'
	DB	' import definition file', 00H, '-Fi<file_name>', 00H, 'Force '
	DB	'<file_name> to be included', 00H, '-Fl[=<file_name>]', 00H, 'W'
	DB	'rite listing file', 00H, '-Fo<file_name>', 00H, 'Set object f'
	DB	'ile name', 00H, '-Fw<file_name>', 00H, 'Set errors file name', 00H
	DB	'-FPi', 00H, '80x87 instructions with emulation fixups', 00H, '-'
	DB	'FPi87', 00H, '80x87 instructions (default)', 00H, '-fpc', 00H
	DB	'Disallow floating-point instructions (.NO87)', 00H, '-fp<n>', 00H
	DB	'Set FPU, <n> is: 0=8087 (default), 2=80287, 3=80387', 00H, '-'
	DB	'G<c|d|r|z>', 00H, 'Use Pascal, C, Fastcall or Stdcall calling'
	DB	' convention', 00H, '-I<directory>', 00H, 'Add directory to li'
	DB	'st of include directories', 00H, '-m<t|s|c|m|l|h|f>', 00H, 'S'
	DB	'et memory model:', 00H, 00H, '(Tiny, Small, Compact, Medium, '
	DB	'Large, Huge, Flat)', 00H, '-nc=<name>', 00H, 'Set class name '
	DB	'of code segment', 00H, '-n<d|m|t>=<name>', 00H, 'Set name of '
	DB	'd)ata segment, m)odule or t)ext segment', 00H, '-q, -nologo', 00H
	DB	'Don''t display version and copyright information', 00H, '-Sa', 00H
	DB	'Maximize source listing', 00H, '-safeseh', 00H, 'Assert all e'
	DB	'xception handlers are declared', 00H, '-Sf', 00H, 'Generate f'
	DB	'irst pass listing', 00H, '-Sg', 00H, 'Display generated code '
	DB	'in listing', 00H, '-Sn', 00H, 'Suppress symbol-table listing', 00H
	DB	'-Sx', 00H, 'List false conditionals', 00H, '-w', 00H, 'Same a'
	DB	's /W0 /WX', 00H, '-W<number>', 00H, 'Set warning level number'
	DB	' (default=2, max=4)', 00H, '-WX', 00H, 'Treat all warnings as'
	DB	' errors', 00H, '-X', 00H, 'Ignore INCLUDE environment path', 00H
	DB	'-zcm', 00H, 'C names are decorated with ''_'' prefix (default'
	DB	')', 00H, '-zcw', 00H, 'No name decoration for C symbols', 00H
	DB	'-Zd', 00H, 'Add line number debug info (OMF & COFF only)', 00H
	DB	'-Zf', 00H, 'Make all symbols public', 00H, '-zf<0|1>', 00H, 'S'
	DB	'et FASTCALL type: 0=MS VC style (default),', 00H, 00H, '1=OW '
	DB	'register calling convention', 00H, '-Zg', 00H, 'Generated cod'
	DB	'e is to exactly match Masm''s one', 00H, '-Zi[0|1|2|3]', 00H, 'A'
	DB	'dd symbolic debug info (OMF & COFF): 0=globals', 00H, 00H, '1'
	DB	'= +locals, 2= +types (default), 3= +constants', 00H, '-zlc', 00H
	DB	'No OMF records about data in code', 00H, '-zld', 00H, 'No OMF'
	DB	' records about far call optimization', 00H, '-zl<f|p|s>', 00H
	DB	'Suppress items in COFF symbol table: f=no .file entry,', 00H, 00H
	DB	'p=no static procs, s=no auxiliary entries for sections', 00H, '-'
	DB	'Zm', 00H, 'Masm v5.1 compatibility', 00H, '-Zne', 00H, 'Disab'
	DB	'le syntax extensions not supported by Masm', 00H, '-Zp[n]', 00H
	DB	'Set structure alignment, n=<1|2|4|8|16|32>', 00H, '-Zs', 00H, 'P'
	DB	'erform syntax check only', 00H, '-zt<0|1|2>', 00H, 'Set STDCA'
	DB	'LL symbol decoration: 0=No name decoration,', 00H, 00H, '1=No'
	DB	' ''@size'' suffix for functions, 2=Full (default)', 00H, '-Zv'
	DB	'8', 00H, 'Enable Masm v8+ PROC visibility', 00H, '-zze', 00H, 'N'
	DB	'o name decoration for exported symbols', 00H, '-zzs', 00H, 'S'
	DB	'tore decorated name of start address (COFF only)', 00H, '@env'
	DB	'_var', 00H, 'Environment variable or file containing further '
	DB	'commands', 00H, 'output formats:', 00H, 00H, '-bin', 00H, 'pl'
	DB	'ain binary file', 00H, '-coff', 00H, 'COFF object file', 00H, '-'
	DB	'elf', 00H, '32-bit ELF object file', 00H, '-elf64', 00H, '64-'
	DB	'bit ELF object file', 00H, '-mz', 00H, 'DOS MZ binary file', 00H
	DB	'-omf', 00H, 'OMF object file (default)', 00H, '-pe', 00H, 'PE'
	DB	' binary file, 32/64-bit', 00H, '-win64', 00H, '64-bit COFF ob'
	DB	'ject file', 00H, 0aH, 00H
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	printf
PUBLIC	sprintf
PUBLIC	Fatal
PUBLIC	EmitError
PUBLIC	EmitErr
PUBLIC	EmitWarn
PUBLIC	PrintNote
PUBLIC	ErrnoStr
PUBLIC	write_logo
PUBLIC	PrintUsage
PUBLIC	WriteError
EXTRN	longjmp:PROC
EXTRN	__acrt_iob_func:PROC
EXTRN	fflush:PROC
EXTRN	fopen:PROC
EXTRN	fwrite:PROC
EXTRN	__stdio_common_vfprintf:PROC
EXTRN	__stdio_common_vsprintf:PROC
EXTRN	_errno:PROC
EXTRN	exit:PROC
EXTRN	myltoa:PROC
EXTRN	GetCurrSrcPos:PROC
EXTRN	MsgGetEx:PROC
EXTRN	LstWrite:PROC
EXTRN	LstPrintf:PROC
EXTRN	LstNL:PROC
EXTRN	GetCurrOffset:PROC
EXTRN	print_source_nesting_structure:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	write_to_file:BYTE
EXTRN	jmpenv:BYTE
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
_BSS	SEGMENT
	ALIGN	4

?buffer@?1??ErrnoStr@@9@9 DB 020H DUP (?)		; `ErrnoStr'::`2'::buffer
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN4
	DD	imagerel $LN4+80
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN6
	DD	imagerel $LN6+83
	DD	imagerel $unwind$printf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsnprintf_l DD imagerel $LN4
	DD	imagerel $LN4+102
	DD	imagerel $unwind$_vsnprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsprintf_l DD imagerel $LN6
	DD	imagerel $LN6+98
	DD	imagerel $unwind$_vsprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$vsprintf DD imagerel $LN6
	DD	imagerel $LN6+89
	DD	imagerel $unwind$vsprintf
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$sprintf DD imagerel $LN8
	DD	imagerel $LN8+90
	DD	imagerel $unwind$sprintf
pdata	ENDS
pdata	SEGMENT
$pdata$Fatal DD	imagerel $LN50
	DD	imagerel $LN50+90
	DD	imagerel $unwind$Fatal
$pdata$EmitErr DD imagerel $LN52
	DD	imagerel $LN52+103
	DD	imagerel $unwind$EmitErr
$pdata$EmitWarn DD imagerel $LN7
	DD	imagerel $LN7+100
	DD	imagerel $unwind$EmitWarn
$pdata$PrintNote DD imagerel $LN4
	DD	imagerel $LN4+47
	DD	imagerel $unwind$PrintNote
$pdata$ErrnoStr DD imagerel $LN6
	DD	imagerel $LN6+62
	DD	imagerel $unwind$ErrnoStr
$pdata$write_logo DD imagerel $LN5
	DD	imagerel $LN5+18
	DD	imagerel $unwind$write_logo
$pdata$0$write_logo DD imagerel $LN5+18
	DD	imagerel $LN5+81
	DD	imagerel $chain$0$write_logo
$pdata$1$write_logo DD imagerel $LN5+81
	DD	imagerel $LN5+88
	DD	imagerel $chain$1$write_logo
$pdata$PrintUsage DD imagerel $LN16
	DD	imagerel $LN16+156
	DD	imagerel $unwind$PrintUsage
$pdata$WriteError DD imagerel $LN4
	DD	imagerel $LN4+30
	DD	imagerel $unwind$WriteError
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$PutMsg DD imagerel PutMsg
	DD	imagerel PutMsg+27
	DD	imagerel $unwind$PutMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$PutMsg DD imagerel PutMsg+27
	DD	imagerel PutMsg+318
	DD	imagerel $chain$1$PutMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$PutMsg DD imagerel PutMsg+318
	DD	imagerel PutMsg+401
	DD	imagerel $chain$2$PutMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$PrtMsg DD imagerel PrtMsg
	DD	imagerel PrtMsg+25
	DD	imagerel $unwind$PrtMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$1$PrtMsg DD imagerel PrtMsg+25
	DD	imagerel PrtMsg+202
	DD	imagerel $chain$1$PrtMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$2$PrtMsg DD imagerel PrtMsg+202
	DD	imagerel PrtMsg+263
	DD	imagerel $chain$2$PrtMsg
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$3$PrtMsg DD imagerel PrtMsg+263
	DD	imagerel PrtMsg+295
	DD	imagerel $chain$3$PrtMsg
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$3$PrtMsg DD 021H
	DD	imagerel PrtMsg
	DD	imagerel PrtMsg+25
	DD	imagerel $unwind$PrtMsg
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$PrtMsg DD 020021H
	DD	07e400H
	DD	imagerel PrtMsg
	DD	imagerel PrtMsg+25
	DD	imagerel $unwind$PrtMsg
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$PrtMsg DD 040c21H
	DD	07e40cH
	DD	063405H
	DD	imagerel PrtMsg
	DD	imagerel PrtMsg+25
	DD	imagerel $unwind$PrtMsg
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$PrtMsg DD 060f01H
	DD	09640fH
	DD	08540fH
	DD	0700b320fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$2$PutMsg DD 021H
	DD	imagerel PutMsg
	DD	imagerel PutMsg+27
	DD	imagerel $unwind$PutMsg
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$chain$1$PutMsg DD 040b21H
	DD	09ce40bH
	DD	09b5404H
	DD	imagerel PutMsg
	DD	imagerel PutMsg+27
	DD	imagerel $unwind$PutMsg
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$PutMsg DD 071b01H
	DD	09d341bH
	DD	096011bH
	DD	07012f014H
	DD	06011H
xdata	ENDS
xdata	SEGMENT
$unwind$Fatal DD 011701H
	DD	04217H
$unwind$EmitErr DD 011701H
	DD	04217H
$unwind$EmitWarn DD 011201H
	DD	04212H
$unwind$PrintNote DD 011701H
	DD	04217H
$unwind$ErrnoStr DD 010401H
	DD	06204H
$unwind$write_logo DD 010401H
	DD	04204H
$chain$0$write_logo DD 020521H
	DD	043405H
	DD	imagerel $LN5
	DD	imagerel $LN5+18
	DD	imagerel $unwind$write_logo
$chain$1$write_logo DD 021H
	DD	imagerel $LN5
	DD	imagerel $LN5+18
	DD	imagerel $unwind$write_logo
$unwind$PrintUsage DD 020601H
	DD	030023206H
$unwind$WriteError DD 010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$sprintf DD 041601H
	DD	070125216H
	DD	030106011H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$vsprintf DD 060f01H
	DD	09640fH
	DD	08340fH
	DD	0700b520fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsnprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 041b01H
	DD	07017521bH
	DD	030156016H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
;	COMDAT PrtMsg
_TEXT	SEGMENT
severity$ = 48
msgnum$ = 56
args1$ = 64
args2$ = 72
PrtMsg	PROC						; COMDAT

; 203  : {

	mov	QWORD PTR [rsp+24], rbp
	mov	QWORD PTR [rsp+32], rsi
	push	rdi
	sub	rsp, 32					; 00000020H

; 204  : #ifndef __SW_BD
; 205  :     write_logo();

	cmp	BYTE PTR banner_printed, 0
	mov	rbp, r9
	mov	QWORD PTR [rsp+48], rbx
	mov	edi, edx
	mov	QWORD PTR [rsp+56], r14
	mov	esi, ecx
	mov	r14, r8
	jne	SHORT $LN8@PrtMsg
	mov	ecx, 3
	mov	BYTE PTR banner_printed, 1
	call	MsgGetEx
	mov	ecx, 2
	mov	rbx, rax
	call	MsgGetEx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG10902
	mov	r8, rbx
	call	printf
$LN8@PrtMsg:

; 206  : #endif
; 207  :     /* open .err file if not already open and a name is given */
; 208  :     if( CurrFile[ERR] == NULL && CurrFName[ERR] != NULL ) {

	mov	rax, QWORD PTR ModuleInfo+120
	test	rax, rax
	jne	SHORT $LN3@PrtMsg
	mov	rcx, QWORD PTR ModuleInfo+152
	test	rcx, rcx
	je	SHORT $LN3@PrtMsg

; 209  :         CurrFile[ERR] = fopen( CurrFName[ERR], "w" );

	lea	rdx, OFFSET FLAT:$SG10957
	call	fopen
	mov	QWORD PTR ModuleInfo+120, rax

; 210  :         if( CurrFile[ERR] == NULL ) {

	test	rax, rax
	jne	SHORT $LN3@PrtMsg

; 211  :             /* v2.06: no fatal error anymore if error file cannot be written */
; 212  :             char *p = CurrFName[ERR];

	mov	rbx, QWORD PTR ModuleInfo+152

; 213  :             CurrFName[ERR] = NULL; /* set to NULL before EmitErr()! */

	mov	QWORD PTR ModuleInfo+152, rax

; 214  :             Options.no_error_disp = FALSE; /* disable -eq! */

	mov	BYTE PTR Options+12, al

; 215  :             EmitErr( CANNOT_OPEN_FILE, p, ErrnoStr() );

	call	ErrnoStr
	mov	r8, rax
	mov	rdx, rbx
	mov	ecx, 106				; 0000006aH
	call	EmitErr
	mov	rax, QWORD PTR ModuleInfo+120
$LN3@PrtMsg:

; 216  :             LclFree( p );
; 217  :         }
; 218  :     }
; 219  : 
; 220  :     /* v2.05: new option -eq */
; 221  :     if ( Options.no_error_disp == FALSE ) {

	cmp	BYTE PTR Options+12, 0
	mov	rbx, QWORD PTR [rsp+48]
	jne	SHORT $LN4@PrtMsg

; 222  :         PutMsg( errout, severity, msgnum, args1 );

	mov	ecx, 1
	call	__acrt_iob_func
	mov	rcx, rax
	mov	r9, r14
	mov	r8d, edi
	mov	edx, esi
	call	PutMsg

; 223  :         fflush( errout );                       /* 27-feb-90 */

	mov	ecx, 1
	call	__acrt_iob_func
	mov	rcx, rax
	call	fflush
	mov	rax, QWORD PTR ModuleInfo+120
$LN4@PrtMsg:

; 224  :     }
; 225  :     if( CurrFile[ERR] ) {

	mov	r14, QWORD PTR [rsp+56]
	test	rax, rax
	je	SHORT $LN5@PrtMsg

; 226  :         //Errfile_Written = TRUE;
; 227  :         PutMsg( CurrFile[ERR], severity, msgnum, args2 );

	mov	r9, rbp
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, rax
	call	PutMsg
$LN5@PrtMsg:

; 228  :     }
; 229  : }

	mov	rbp, QWORD PTR [rsp+64]
	mov	rsi, QWORD PTR [rsp+72]
	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
PrtMsg	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
;	COMDAT PutMsg
_TEXT	SEGMENT
buffer$ = 48
i$ = 1232
fp$ = 1232
severity$ = 1240
msgnum$ = 1248
args$ = 1256
PutMsg	PROC						; COMDAT

; 163  :     int             i,j;
; 164  :     const char      *type;
; 165  :     const char      *pMsg;
; 166  :     char            buffer[MAX_LINE_LEN+128];
; 167  : 
; 168  :     if( fp != NULL ) {

	test	rcx, rcx
	je	$LN18@PutMsg
	mov	rax, rsp
	mov	QWORD PTR [rax+32], rbx
	push	rsi
	push	rdi
	push	r15
	sub	rsp, 1200				; 000004b0H
	mov	QWORD PTR [rax+16], rbp

; 162  : {

	mov	r15, r9
	mov	QWORD PTR [rax+24], r14
	mov	ebx, r8d
	mov	edi, edx
	mov	rsi, rcx

; 169  : 
; 170  :         if ( severity && ( j = GetCurrSrcPos( buffer ) ) ) {

	test	edx, edx
	je	SHORT $LN5@PutMsg
	lea	rcx, QWORD PTR buffer$[rsp]
	call	GetCurrSrcPos
	test	eax, eax
	je	SHORT $LN5@PutMsg

; 171  :             fwrite( buffer, 1, j, fp );

	movsxd	r8, eax
	lea	rcx, QWORD PTR buffer$[rsp]
	mov	r9, rsi
	mov	edx, 1
	call	fwrite
$LN5@PutMsg:

; 172  :         }
; 173  :         pMsg = MsgGetEx( msgnum );

	mov	ecx, ebx
	call	MsgGetEx

; 174  :         switch (severity ) {

	mov	edx, edi
	mov	r14, rax
	sub	edx, 1
	je	SHORT $LN6@PutMsg
	sub	edx, 1
	je	SHORT $LN7@PutMsg
	cmp	edx, 2
	je	SHORT $LN8@PutMsg

; 178  :         default:  type = NULL; i = 0; break;

	xor	ebp, ebp
	jmp	SHORT $LN10@PutMsg
$LN8@PutMsg:

; 177  :         case 4:  type = MsgGetEx( MSG_WARNING_PREFIX ); break;

	mov	ecx, 5
	jmp	SHORT $LN19@PutMsg
$LN7@PutMsg:

; 176  :         case 2:  type = MsgGetEx( MSG_ERROR_PREFIX );   break;

	mov	ecx, 4
	jmp	SHORT $LN19@PutMsg
$LN6@PutMsg:

; 175  :         case 1:  type = MsgGetEx( MSG_FATAL_PREFIX );   break;

	mov	ecx, 6
$LN19@PutMsg:
	call	MsgGetEx

; 179  :         }
; 180  :         if ( type )

	test	rax, rax
	je	SHORT $LN17@PutMsg

; 181  :             i = sprintf( buffer, "%s A%4u: ", type, severity * 1000 + msgnum );

	imul	r9d, edi, 1000				; 000003e8H
	lea	rdx, OFFSET FLAT:$SG10937
	mov	r8, rax
	lea	rcx, QWORD PTR buffer$[rsp]
	add	r9d, ebx
	call	sprintf
	mov	ebp, eax
	jmp	SHORT $LN10@PutMsg
$LN17@PutMsg:
	mov	ebp, DWORD PTR i$[rsp]
$LN10@PutMsg:

; 182  :         i += vsprintf( buffer+i, pMsg, args );

	movsxd	rax, ebp
	lea	rbx, QWORD PTR buffer$[rsp]
	add	rbx, rax
	call	__local_stdio_printf_options
	mov	r9, r14
	mov	QWORD PTR [rsp+40], r15
	or	r14, -1
	mov	QWORD PTR [rsp+32], 0
	mov	r8, r14
	mov	rdx, rbx
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf
	test	eax, eax

; 183  :         //buffer[i] = NULLC;
; 184  : 
; 185  :         fwrite( buffer, 1, i, fp );

	lea	edx, QWORD PTR [r14+2]
	mov	r9, rsi
	lea	rcx, QWORD PTR buffer$[rsp]
	cmovs	eax, r14d
	add	eax, ebp
	movsxd	r8, eax
	call	fwrite

; 186  :         fwrite( "\n", 1, 1, fp );

	mov	edx, 1
	lea	rcx, OFFSET FLAT:$SG10938
	mov	r8d, edx
	mov	r9, rsi
	call	fwrite

; 187  : 
; 188  :         /* if in Pass 1, add the error msg to the listing */
; 189  :         if ( CurrFile[LST] &&
; 190  :              severity &&
; 191  :              Parse_Pass == PASS_1 &&

	cmp	QWORD PTR ModuleInfo+112, 0
	mov	r14, QWORD PTR [rsp+1248]
	mov	rbp, QWORD PTR [rsp+1240]
	je	SHORT $LN11@PutMsg
	test	edi, edi
	je	SHORT $LN11@PutMsg
	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN11@PutMsg
	cmp	rsi, QWORD PTR ModuleInfo+120
	jne	SHORT $LN11@PutMsg

; 192  :              fp == CurrFile[ERR] ) {
; 193  :             LstWrite( LSTTYPE_DIRECTIVE, GetCurrOffset(), 0 );

	call	GetCurrOffset
	xor	r8d, r8d
	mov	edx, eax
	lea	ecx, QWORD PTR [r8+4]
	call	LstWrite

; 194  :             /* size of "blank" prefix to be explained! */
; 195  :             LstPrintf( "                           %s", buffer );

	lea	rdx, QWORD PTR buffer$[rsp]
	lea	rcx, OFFSET FLAT:$SG10940
	call	LstPrintf

; 196  :             LstNL();

	call	LstNL
$LN11@PutMsg:

; 197  :         }
; 198  :     }
; 199  : }

	mov	rbx, QWORD PTR [rsp+1256]
	add	rsp, 1200				; 000004b0H
	pop	r15
	pop	rdi
	pop	rsi
$LN18@PutMsg:
	ret	0
PutMsg	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
WriteError PROC

; 346  : {

$LN4:
	sub	rsp, 40					; 00000028H

; 347  :     DebugMsg(("WriteError occured\n"));
; 348  :     Fatal( FILE_WRITE_ERROR, CurrFName[OBJ], errno );

	call	_errno
	mov	rdx, QWORD PTR ModuleInfo+136
	mov	ecx, 108				; 0000006cH
	mov	r8d, DWORD PTR [rax]
	call	Fatal
	int	3
$LN3@WriteError:
WriteError ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
PrintUsage PROC

; 150  : {

$LN16:
	push	rbx
	sub	rsp, 32					; 00000020H

; 151  :     const char *p;
; 152  :     write_logo();

	cmp	BYTE PTR banner_printed, 0
	jne	SHORT $LN7@PrintUsage
	mov	ecx, 3
	mov	BYTE PTR banner_printed, 1
	call	MsgGetEx
	mov	ecx, 2
	mov	rbx, rax
	call	MsgGetEx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG10902
	mov	r8, rbx
	call	printf
$LN7@PrintUsage:

; 153  :     for ( p = usage; *p != '\n'; ) {

	lea	rcx, OFFSET FLAT:usage
	npad	10
$LL2@PrintUsage:

; 154  :         const char *p2 = p + strlen( p ) + 1;

	or	rax, -1
$LL14@PrintUsage:
	cmp	BYTE PTR [rcx+rax+1], 0
	lea	rax, QWORD PTR [rax+1]
	jne	SHORT $LL14@PrintUsage
	lea	rbx, QWORD PTR [rax+rcx]

; 155  :         printf("%-20s %s\n", p, p2 );

	mov	rdx, rcx
	lea	r8, QWORD PTR [rbx+1]
	lea	rcx, OFFSET FLAT:$SG10910
	call	printf

; 156  :         p = p2 + strlen( p2 ) + 1;

	or	rax, -1
	npad	6
$LL13@PrintUsage:
	inc	rax
	cmp	BYTE PTR [rbx+rax+1], 0
	jne	SHORT $LL13@PrintUsage
	lea	rcx, QWORD PTR [rbx+2]
	add	rcx, rax
	cmp	BYTE PTR [rcx], 10
	jne	SHORT $LL2@PrintUsage

; 157  :     }
; 158  : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
PrintUsage ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
write_logo PROC

; 139  : {

$LN5:
	sub	rsp, 40					; 00000028H

; 140  :     if( banner_printed == FALSE ) {

	cmp	BYTE PTR banner_printed, 0
	jne	SHORT $LN2@write_logo

; 141  :         banner_printed = TRUE;
; 142  :         printf( "%s, %s\n", MsgGetEx( MSG_HJWASM ), MsgGetEx( MSG_HJWASM2 ) );

	mov	ecx, 3
	mov	QWORD PTR [rsp+32], rbx
	mov	BYTE PTR banner_printed, 1
	call	MsgGetEx
	mov	ecx, 2
	mov	rbx, rax
	call	MsgGetEx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG10902
	mov	r8, rbx
	call	printf
	mov	rbx, QWORD PTR [rsp+32]

; 143  :         return( 4 ); /* return number of lines printed */

	mov	eax, 4

; 146  : }

	add	rsp, 40					; 00000028H
	ret	0
$LN2@write_logo:

; 144  :     }
; 145  :     return( 0 );

	xor	eax, eax

; 146  : }

	add	rsp, 40					; 00000028H
	ret	0
write_logo ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
ErrnoStr PROC

; 299  : {

$LN6:
	sub	rsp, 56					; 00000038H

; 300  :     static char buffer[32];
; 301  :     return( ( errno == ENOENT ) ? "ENOENT" : myltoa( errno, buffer, 10, FALSE, FALSE ) );

	call	_errno
	cmp	DWORD PTR [rax], 2
	jne	SHORT $LN3@ErrnoStr
	lea	rax, OFFSET FLAT:$SG11007

; 302  : }

	add	rsp, 56					; 00000038H
	ret	0
$LN3@ErrnoStr:

; 300  :     static char buffer[32];
; 301  :     return( ( errno == ENOENT ) ? "ENOENT" : myltoa( errno, buffer, 10, FALSE, FALSE ) );

	call	_errno
	xor	r9d, r9d
	mov	BYTE PTR [rsp+32], 0
	lea	rdx, OFFSET FLAT:?buffer@?1??ErrnoStr@@9@9
	mov	ecx, DWORD PTR [rax]
	lea	r8d, QWORD PTR [r9+10]
	call	myltoa

; 302  : }

	add	rsp, 56					; 00000038H
	ret	0
ErrnoStr ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
msgnum$ = 48
PrintNote PROC

; 235  : {

$LN4:
	mov	DWORD PTR [rsp+8], ecx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 236  :     va_list args1, args2;
; 237  : 
; 238  :     va_start( args1, msgnum );
; 239  :     va_start( args2, msgnum );
; 240  : 
; 241  :     PrtMsg( 0, msgnum, args1, args2 );

	mov	edx, ecx
	lea	r8, QWORD PTR msgnum$[rsp+8]
	xor	ecx, ecx
	lea	r9, QWORD PTR msgnum$[rsp+8]
	call	PrtMsg

; 242  :     va_end( args1 );
; 243  :     va_end( args2 );
; 244  : }

	add	rsp, 40					; 00000028H
	ret	0
PrintNote ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
level$ = 48
msgnum$ = 56
EmitWarn PROC

; 275  : {

$LN7:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 276  :     va_list args1, args2;
; 277  : 
; 278  :     if( level <= Options.warning_level ) {

	movzx	eax, BYTE PTR Options+13
	cmp	ecx, eax
	jg	SHORT $LN2@EmitWarn

; 279  : #ifdef DEBUG_OUT
; 280  :         printf( "%s\n", ModuleInfo.tokenarray ? ModuleInfo.tokenarray[0].tokpos : "" );
; 281  : #endif
; 282  :         va_start( args1, msgnum );
; 283  :         va_start( args2, msgnum );
; 284  :         if( !Options.warning_error ) {

	cmp	BYTE PTR Options+14, 0
	lea	r8, QWORD PTR msgnum$[rsp+8]
	lea	r9, QWORD PTR msgnum$[rsp+8]
	jne	SHORT $LN3@EmitWarn

; 285  :             PrtMsg( 4, msgnum, args1, args2 );

	mov	ecx, 4
	call	PrtMsg

; 286  :             ModuleInfo.g.warning_count++;

	inc	DWORD PTR ModuleInfo+4

; 290  :         }
; 291  :         va_end( args1 );
; 292  :         va_end( args2 );
; 293  :         print_source_nesting_structure();

	call	print_source_nesting_structure

; 294  :     }
; 295  : }

	add	rsp, 40					; 00000028H
	ret	0
$LN3@EmitWarn:

; 287  :         } else {
; 288  :             PrtMsg( 2, msgnum, args1, args2 );

	mov	ecx, 2
	call	PrtMsg

; 289  :             ModuleInfo.g.error_count++;

	inc	DWORD PTR ModuleInfo

; 290  :         }
; 291  :         va_end( args1 );
; 292  :         va_end( args2 );
; 293  :         print_source_nesting_structure();

	call	print_source_nesting_structure
$LN2@EmitWarn:

; 294  :     }
; 295  : }

	add	rsp, 40					; 00000028H
	ret	0
EmitWarn ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
msgnum$ = 48
EmitErr	PROC

; 248  : {

$LN52:
	mov	DWORD PTR [rsp+8], ecx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 249  :     va_list args1, args2;
; 250  : 
; 251  : #ifdef DEBUG_OUT
; 252  :     printf( "%s\n", ModuleInfo.tokenarray ? ModuleInfo.tokenarray[0].tokpos : "" );
; 253  : #endif
; 254  :     va_start( args1, msgnum );
; 255  :     va_start( args2, msgnum );
; 256  :     PrtMsg( 2, msgnum, args1, args2 );

	mov	edx, ecx
	lea	r8, QWORD PTR msgnum$[rsp+8]
	mov	ecx, 2
	lea	r9, QWORD PTR msgnum$[rsp+8]
	call	PrtMsg

; 257  :     va_end( args1 );
; 258  :     va_end( args2 );
; 259  :     ModuleInfo.g.error_count++;

	inc	DWORD PTR ModuleInfo

; 260  :     write_to_file = FALSE;

	mov	BYTE PTR write_to_file, 0

; 261  :     print_source_nesting_structure();

	call	print_source_nesting_structure

; 262  :     if( Options.error_limit != -1  &&  ModuleInfo.g.error_count == Options.error_limit+1 )

	mov	eax, DWORD PTR Options+8
	cmp	eax, -1
	je	SHORT $LN2@EmitErr
	inc	eax
	cmp	DWORD PTR ModuleInfo, eax
	je	SHORT $LN50@EmitErr
$LN2@EmitErr:

; 264  :     return( ERROR );

	or	eax, -1

; 265  : }

	add	rsp, 40					; 00000028H
	ret	0
$LN50@EmitErr:

; 263  :         Fatal( TOO_MANY_ERRORS );

	mov	ecx, 113				; 00000071H
	call	Fatal
	int	3
$LN49@EmitErr:
EmitErr	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
msgnum$ = 8
EmitError PROC

; 270  :     return( EmitErr( msgnum ) );

	jmp	EmitErr
EmitError ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\errmsg.c
_TEXT	SEGMENT
msgnum$ = 48
Fatal	PROC

; 310  : {

$LN50:
	mov	DWORD PTR [rsp+8], ecx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 311  :     va_list     args1, args2;
; 312  : 
; 313  :     /* v2.11: call PrtMsg() instead of PutMsg().
; 314  :      * Makes the fatal error appear in the .ERR and .LST files
; 315  :      */
; 316  :     va_start( args1, msgnum );
; 317  :     va_start( args2, msgnum );
; 318  :     PrtMsg( 1, msgnum, args1, args2 );

	mov	edx, ecx
	lea	r8, QWORD PTR msgnum$[rsp+8]
	mov	ecx, 1
	lea	r9, QWORD PTR msgnum$[rsp+8]
	call	PrtMsg

; 319  :     va_end( args1 );
; 320  :     va_end( args2 );
; 321  : 
; 322  :     ModuleInfo.g.error_count++;

	inc	DWORD PTR ModuleInfo

; 323  :     //write_to_file = FALSE;
; 324  : 
; 325  :     /* setjmp() has been called in AssembleModule().
; 326  :      * if a fatal error happens outside of this function, longjmp()
; 327  :      * is NOT to be used ( out of memory condition, @cmd file open error, ... )
; 328  :      */
; 329  :     if ( CurrFName[ASM] )

	cmp	QWORD PTR ModuleInfo+128, 0
	je	SHORT $LN2@Fatal

; 330  :         longjmp( jmpenv, 2 );

	mov	edx, 2
	lea	rcx, OFFSET FLAT:jmpenv
	call	longjmp
	int	3
$LN2@Fatal:

; 331  : 
; 332  :     exit(1);

	mov	ecx, 1
	call	exit
	int	3
$LN49@Fatal:
Fatal	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT sprintf
_TEXT	SEGMENT
_Buffer$ = 80
_Format$ = 88
sprintf	PROC						; COMDAT

; 1776 : {

$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	push	rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, rdx

; 1777 :     int _Result;
; 1778 :     va_list _ArgList;
; 1779 :     __crt_va_start(_ArgList, _Format);

	lea	rsi, QWORD PTR _Format$[rsp+8]
	mov	rdi, rcx

; 1780 : 
; 1781 :     #pragma warning(push)
; 1782 :     #pragma warning(disable: 4996) // Deprecation
; 1783 :     _Result = _vsprintf_l(_Buffer, _Format, NULL, _ArgList);

	call	__local_stdio_printf_options
	mov	r9, rbx
	mov	QWORD PTR [rsp+40], rsi
	or	rbx, -1
	mov	QWORD PTR [rsp+32], 0
	mov	r8, rbx
	mov	rdx, rdi
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf
	test	eax, eax
	cmovs	eax, ebx

; 1784 :     #pragma warning(pop)
; 1785 : 
; 1786 :     __crt_va_end(_ArgList);
; 1787 :     return _Result;
; 1788 : }

	add	rsp, 48					; 00000030H
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
sprintf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT vsprintf
_TEXT	SEGMENT
_Buffer$ = 64
_Format$ = 72
_ArgList$ = 80
vsprintf PROC						; COMDAT

; 1473 : {

$LN6:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r8
	mov	rdi, rdx
	mov	rsi, rcx

; 1474 :     #pragma warning(push)
; 1475 :     #pragma warning(disable: 4996) // Deprecation
; 1476 :     return _vsnprintf_l(_Buffer, (size_t)-1, _Format, NULL, _ArgList);

	call	__local_stdio_printf_options
	mov	QWORD PTR [rsp+40], rbx
	mov	r9, rdi
	or	rbx, -1
	mov	QWORD PTR [rsp+32], 0
	mov	r8, rbx
	mov	rdx, rsi
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf

; 1477 :     #pragma warning(pop)
; 1478 : }

	mov	rsi, QWORD PTR [rsp+72]
	test	eax, eax
	cmovs	eax, ebx
	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
vsprintf ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vsprintf_l PROC					; COMDAT

; 1455 : {

$LN6:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 1456 :     #pragma warning(push)
; 1457 :     #pragma warning(disable: 4996) // Deprecation
; 1458 :     return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);

	call	__local_stdio_printf_options
	mov	QWORD PTR [rsp+40], rbx
	mov	r9, rsi
	or	rbx, -1
	mov	QWORD PTR [rsp+32], rdi
	mov	r8, rbx
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf

; 1459 :     #pragma warning(pop)
; 1460 : }

	mov	rbp, QWORD PTR [rsp+72]
	test	eax, eax
	mov	rsi, QWORD PTR [rsp+80]
	cmovs	eax, ebx
	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsnprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_BufferCount$ = 72
_Format$ = 80
_Locale$ = 88
_ArgList$ = 96
_vsnprintf_l PROC					; COMDAT

; 1385 : {

$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 1386 :     int const _Result = __stdio_common_vsprintf(

	call	__local_stdio_printf_options
	mov	r9, rdi
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR _ArgList$[rsp]
	or	rcx, 1
	mov	QWORD PTR [rsp+40], rax
	mov	QWORD PTR [rsp+32], rbx
	call	__stdio_common_vsprintf

; 1387 :         _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION,
; 1388 :         _Buffer, _BufferCount, _Format, _Locale, _ArgList);
; 1389 : 
; 1390 :     return _Result < 0 ? -1 : _Result;
; 1391 : }

	mov	rbx, QWORD PTR [rsp+64]
	or	ecx, -1
	mov	rbp, QWORD PTR [rsp+72]
	test	eax, eax
	mov	rsi, QWORD PTR [rsp+80]
	cmovs	eax, ecx
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsnprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT printf
_TEXT	SEGMENT
_Format$ = 80
printf	PROC						; COMDAT

; 950  : {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	push	rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rcx

; 951  :     int _Result;
; 952  :     va_list _ArgList;
; 953  :     __crt_va_start(_ArgList, _Format);

	lea	rsi, QWORD PTR _Format$[rsp+8]

; 954  :     _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	mov	ecx, 1
	call	__acrt_iob_func
	mov	rbx, rax
	call	__local_stdio_printf_options
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rsi
	mov	r8, rdi
	mov	rdx, rbx
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf

; 955  :     __crt_va_end(_ArgList);
; 956  :     return _Result;
; 957  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT

; 638  : {

$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 639  :     return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	call	__local_stdio_printf_options
	mov	r9, rdi
	mov	QWORD PTR [rsp+32], rbx
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf

; 640  : }

	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
