
_eprom_oku:

;NeuroSound_V2.c,26 :: 		void eprom_oku(){
;NeuroSound_V2.c,27 :: 		lcd_pwm=EEPROM_Read(lcd_adres);  delay_ms(50); if (lcd_pwm==255){EEPROM_Write(lcd_adres, 90);lcd_pwm=90;}
	MOVF        _lcd_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _lcd_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _lcd_pwm+0 
	MOVLW       0
	MOVWF       _lcd_pwm+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku0:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku0
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku0
	NOP
	NOP
	MOVLW       0
	XORWF       _lcd_pwm+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku408
	MOVLW       255
	XORWF       _lcd_pwm+0, 0 
L__eprom_oku408:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku1
	MOVF        _lcd_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _lcd_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVLW       90
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	MOVLW       90
	MOVWF       _lcd_pwm+0 
	MOVLW       0
	MOVWF       _lcd_pwm+1 
L_eprom_oku1:
;NeuroSound_V2.c,28 :: 		bip_data=EEPROM_Read(bip_adres);  delay_ms(50);  if (bip_data==255){EEPROM_Write(bip_adres, 1);bip_data=1;}
	MOVF        _bip_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _bip_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _bip_data+0 
	MOVLW       0
	MOVWF       _bip_data+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku2:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku2
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku2
	NOP
	NOP
	MOVLW       0
	XORWF       _bip_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku409
	MOVLW       255
	XORWF       _bip_data+0, 0 
L__eprom_oku409:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku3
	MOVF        _bip_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _bip_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	MOVLW       1
	MOVWF       _bip_data+0 
	MOVLW       0
	MOVWF       _bip_data+1 
L_eprom_oku3:
;NeuroSound_V2.c,29 :: 		ear_data=EEPROM_Read(ear_adres);  delay_ms(50);  if (ear_data==255){EEPROM_Write(ear_adres, 120);ear_data=120;}
	MOVF        _ear_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _ear_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _ear_data+0 
	MOVLW       0
	MOVWF       _ear_data+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku4:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku4
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku4
	NOP
	NOP
	MOVLW       0
	XORWF       _ear_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku410
	MOVLW       255
	XORWF       _ear_data+0, 0 
L__eprom_oku410:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku5
	MOVF        _ear_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _ear_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVLW       120
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	MOVLW       120
	MOVWF       _ear_data+0 
	MOVLW       0
	MOVWF       _ear_data+1 
L_eprom_oku5:
;NeuroSound_V2.c,30 :: 		bone_data=EEPROM_Read(bone_adres);  delay_ms(50);  if (bone_data==255){EEPROM_Write(bone_adres, 120);bone_data=120;}
	MOVF        _bone_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _bone_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _bone_data+0 
	MOVLW       0
	MOVWF       _bone_data+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku6:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku6
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku6
	NOP
	NOP
	MOVLW       0
	XORWF       _bone_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku411
	MOVLW       255
	XORWF       _bone_data+0, 0 
L__eprom_oku411:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku7
	MOVF        _bone_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _bone_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVLW       120
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	MOVLW       120
	MOVWF       _bone_data+0 
	MOVLW       0
	MOVWF       _bone_data+1 
L_eprom_oku7:
;NeuroSound_V2.c,31 :: 		bt_data=EEPROM_Read(bt_adres);  delay_ms(50);  if (bt_data==255){EEPROM_Write(bt_adres, 0);bt_data=0;}
	MOVF        _bt_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _bt_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _bt_data+0 
	MOVLW       0
	MOVWF       _bt_data+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku8:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku8
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku8
	NOP
	NOP
	MOVLW       0
	XORWF       _bt_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku412
	MOVLW       255
	XORWF       _bt_data+0, 0 
L__eprom_oku412:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku9
	MOVF        _bt_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _bt_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	CLRF        _bt_data+0 
	CLRF        _bt_data+1 
L_eprom_oku9:
;NeuroSound_V2.c,32 :: 		emn_data=EEPROM_Read(emn_adres);  delay_ms(50);  if (emn_data==255){EEPROM_Write(emn_adres,0);emn_data=0;}
	MOVF        _emn_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _emn_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _emn_data+0 
	MOVLW       0
	MOVWF       _emn_data+1 
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_eprom_oku10:
	DECFSZ      R13, 1, 1
	BRA         L_eprom_oku10
	DECFSZ      R12, 1, 1
	BRA         L_eprom_oku10
	NOP
	NOP
	MOVLW       0
	XORWF       _emn_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__eprom_oku413
	MOVLW       255
	XORWF       _emn_data+0, 0 
L__eprom_oku413:
	BTFSS       STATUS+0, 2 
	GOTO        L_eprom_oku11
	MOVF        _emn_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _emn_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
	CLRF        _emn_data+0 
	CLRF        _emn_data+1 
L_eprom_oku11:
;NeuroSound_V2.c,33 :: 		}
L_end_eprom_oku:
	RETURN      0
; end of _eprom_oku

_adcler:

;NeuroSound_V2.c,34 :: 		void adcler(){
;NeuroSound_V2.c,35 :: 		kanal1 = ADC_Read(0); IntToStr(kanal1, txt);// Lcd_Out(2,4,  Ltrim(txt)); Lcd_Out_Cp("  ");
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _kanal1+0 
	MOVF        R1, 0 
	MOVWF       _kanal1+1 
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;NeuroSound_V2.c,36 :: 		kanal2 = ADC_Read(1); IntToStr(kanal2, txt); //Lcd_Out(1,4, Ltrim(txt)); Lcd_Out_Cp("  ");
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _kanal2+0 
	MOVF        R1, 0 
	MOVWF       _kanal2+1 
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;NeuroSound_V2.c,37 :: 		}
L_end_adcler:
	RETURN      0
; end of _adcler

_Interrupt:

;NeuroSound_V2.c,38 :: 		void Interrupt(){
;NeuroSound_V2.c,39 :: 		if (RC1IF_bit){
	BTFSS       RC1IF_bit+0, BitPos(RC1IF_bit+0) 
	GOTO        L_Interrupt12
;NeuroSound_V2.c,40 :: 		UART1_Read_Text(veri, "/", 11);
	MOVLW       _veri+0
	MOVWF       FARG_UART1_Read_Text_Output+0 
	MOVLW       hi_addr(_veri+0)
	MOVWF       FARG_UART1_Read_Text_Output+1 
	MOVLW       ?lstr1_NeuroSound_V2+0
	MOVWF       FARG_UART1_Read_Text_Delimiter+0 
	MOVLW       hi_addr(?lstr1_NeuroSound_V2+0)
	MOVWF       FARG_UART1_Read_Text_Delimiter+1 
	MOVLW       11
	MOVWF       FARG_UART1_Read_Text_Attempts+0 
	CALL        _UART1_Read_Text+0, 0
;NeuroSound_V2.c,42 :: 		RC1IF_bit=0;k=1;
	BCF         RC1IF_bit+0, BitPos(RC1IF_bit+0) 
	MOVLW       1
	MOVWF       _k+0 
	MOVLW       0
	MOVWF       _k+1 
;NeuroSound_V2.c,43 :: 		}
L_Interrupt12:
;NeuroSound_V2.c,45 :: 		if (RC2IF_bit){
	BTFSS       RC2IF_bit+0, BitPos(RC2IF_bit+0) 
	GOTO        L_Interrupt13
;NeuroSound_V2.c,46 :: 		UART2_Read_Text(veri, "/", 11);
	MOVLW       _veri+0
	MOVWF       FARG_UART2_Read_Text_Output+0 
	MOVLW       hi_addr(_veri+0)
	MOVWF       FARG_UART2_Read_Text_Output+1 
	MOVLW       ?lstr2_NeuroSound_V2+0
	MOVWF       FARG_UART2_Read_Text_Delimiter+0 
	MOVLW       hi_addr(?lstr2_NeuroSound_V2+0)
	MOVWF       FARG_UART2_Read_Text_Delimiter+1 
	MOVLW       11
	MOVWF       FARG_UART2_Read_Text_Attempts+0 
	CALL        _UART2_Read_Text+0, 0
;NeuroSound_V2.c,48 :: 		ak1=1;
	MOVLW       1
	MOVWF       _ak1+0 
	MOVLW       0
	MOVWF       _ak1+1 
;NeuroSound_V2.c,49 :: 		RC2IF_bit=0;k=2;
	BCF         RC2IF_bit+0, BitPos(RC2IF_bit+0) 
	MOVLW       2
	MOVWF       _k+0 
	MOVLW       0
	MOVWF       _k+1 
;NeuroSound_V2.c,50 :: 		}
L_Interrupt13:
;NeuroSound_V2.c,53 :: 		if (TMR3IF_bit){
	BTFSS       TMR3IF_bit+0, BitPos(TMR3IF_bit+0) 
	GOTO        L_Interrupt14
;NeuroSound_V2.c,54 :: 		TMR3IF_bit = 0;
	BCF         TMR3IF_bit+0, BitPos(TMR3IF_bit+0) 
;NeuroSound_V2.c,55 :: 		TMR3H         = 0x3C;
	MOVLW       60
	MOVWF       TMR3H+0 
;NeuroSound_V2.c,56 :: 		TMR3L         = 0xB0;
	MOVLW       176
	MOVWF       TMR3L+0 
;NeuroSound_V2.c,62 :: 		sayac=sayac+1;
	INFSNZ      _sayac+0, 1 
	INCF        _sayac+1, 1 
;NeuroSound_V2.c,63 :: 		if(sayac==5){zaman=zaman+1;smart=smart+1; sure=sure+1; light=light+1;sayac=0;}
	MOVLW       0
	XORWF       _sayac+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt417
	MOVLW       5
	XORWF       _sayac+0, 0 
L__Interrupt417:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt15
	INFSNZ      _zaman+0, 1 
	INCF        _zaman+1, 1 
	INFSNZ      _smart+0, 1 
	INCF        _smart+1, 1 
	INFSNZ      _sure+0, 1 
	INCF        _sure+1, 1 
	INFSNZ      _light+0, 1 
	INCF        _light+1, 1 
	CLRF        _sayac+0 
	CLRF        _sayac+1 
L_Interrupt15:
;NeuroSound_V2.c,64 :: 		if(sure==60){sure=0;sure1=sure1+1; saat1=(saat1-1); saat=(saat-1);}
	MOVLW       0
	XORWF       _sure+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt418
	MOVLW       60
	XORWF       _sure+0, 0 
L__Interrupt418:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt16
	CLRF        _sure+0 
	CLRF        _sure+1 
	INFSNZ      _sure1+0, 1 
	INCF        _sure1+1, 1 
	MOVLW       1
	SUBWF       _saat1+0, 1 
	MOVLW       0
	SUBWFB      _saat1+1, 1 
	MOVLW       1
	SUBWF       _saat+0, 1 
	MOVLW       0
	SUBWFB      _saat+1, 1 
L_Interrupt16:
;NeuroSound_V2.c,65 :: 		}
L_Interrupt14:
;NeuroSound_V2.c,66 :: 		if (INT0IF_bit){
	BTFSS       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L_Interrupt17
;NeuroSound_V2.c,67 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;NeuroSound_V2.c,68 :: 		delay_us(100);
	MOVLW       66
	MOVWF       R13, 0
L_Interrupt18:
	DECFSZ      R13, 1, 1
	BRA         L_Interrupt18
	NOP
;NeuroSound_V2.c,69 :: 		}
L_Interrupt17:
;NeuroSound_V2.c,70 :: 		if (RBIF_bit){delay_ms(30);
	BTFSS       RBIF_bit+0, BitPos(RBIF_bit+0) 
	GOTO        L_Interrupt19
	MOVLW       78
	MOVWF       R12, 0
	MOVLW       235
	MOVWF       R13, 0
L_Interrupt20:
	DECFSZ      R13, 1, 1
	BRA         L_Interrupt20
	DECFSZ      R12, 1, 1
	BRA         L_Interrupt20
;NeuroSound_V2.c,71 :: 		RB1_bit=1;   RB2_bit=1;  RB3_bit=0;
	BSF         RB1_bit+0, BitPos(RB1_bit+0) 
	BSF         RB2_bit+0, BitPos(RB2_bit+0) 
	BCF         RB3_bit+0, BitPos(RB3_bit+0) 
;NeuroSound_V2.c,72 :: 		tus=portb&0b11110000;
	MOVLW       240
	ANDWF       PORTB+0, 0 
	MOVWF       _tus+0 
	CLRF        _tus+1 
	MOVLW       0
	ANDWF       _tus+1, 1 
	MOVLW       0
	MOVWF       _tus+1 
;NeuroSound_V2.c,73 :: 		tus=(240-tus)/16;
	MOVF        _tus+0, 0 
	SUBLW       240
	MOVWF       R0 
	MOVF        _tus+1, 0 
	MOVWF       R1 
	MOVLW       0
	SUBFWB      R1, 1 
	MOVLW       16
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _tus+0 
	MOVF        R1, 0 
	MOVWF       _tus+1 
;NeuroSound_V2.c,74 :: 		if (tus >0){
	MOVLW       128
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt419
	MOVF        R0, 0 
	SUBLW       0
L__Interrupt419:
	BTFSC       STATUS+0, 0 
	GOTO        L_Interrupt21
;NeuroSound_V2.c,75 :: 		if (tus==4){tus=3;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt420
	MOVLW       4
	XORWF       _tus+0, 0 
L__Interrupt420:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt22
	MOVLW       3
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt22:
;NeuroSound_V2.c,76 :: 		if (tus==8){tus=4;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt421
	MOVLW       8
	XORWF       _tus+0, 0 
L__Interrupt421:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt23
	MOVLW       4
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt23:
;NeuroSound_V2.c,77 :: 		goto tara;}
	GOTO        ___Interrupt_tara
L_Interrupt21:
;NeuroSound_V2.c,78 :: 		RB1_bit=1;   RB2_bit=0;  RB3_bit=1;
	BSF         RB1_bit+0, BitPos(RB1_bit+0) 
	BCF         RB2_bit+0, BitPos(RB2_bit+0) 
	BSF         RB3_bit+0, BitPos(RB3_bit+0) 
;NeuroSound_V2.c,79 :: 		tus=portb&0b11110000;
	MOVLW       240
	ANDWF       PORTB+0, 0 
	MOVWF       _tus+0 
	CLRF        _tus+1 
	MOVLW       0
	ANDWF       _tus+1, 1 
	MOVLW       0
	MOVWF       _tus+1 
;NeuroSound_V2.c,80 :: 		tus=(240-tus)/16;
	MOVF        _tus+0, 0 
	SUBLW       240
	MOVWF       R0 
	MOVF        _tus+1, 0 
	MOVWF       R1 
	MOVLW       0
	SUBFWB      R1, 1 
	MOVLW       16
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _tus+0 
	MOVF        R1, 0 
	MOVWF       _tus+1 
;NeuroSound_V2.c,81 :: 		if (tus >0){
	MOVLW       128
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt422
	MOVF        R0, 0 
	SUBLW       0
L__Interrupt422:
	BTFSC       STATUS+0, 0 
	GOTO        L_Interrupt24
;NeuroSound_V2.c,82 :: 		if (tus==4){tus=3;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt423
	MOVLW       4
	XORWF       _tus+0, 0 
L__Interrupt423:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt25
	MOVLW       3
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt25:
;NeuroSound_V2.c,83 :: 		if (tus==8){tus=4;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt424
	MOVLW       8
	XORWF       _tus+0, 0 
L__Interrupt424:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt26
	MOVLW       4
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt26:
;NeuroSound_V2.c,84 :: 		tus=tus+4;
	MOVLW       4
	ADDWF       _tus+0, 1 
	MOVLW       0
	ADDWFC      _tus+1, 1 
;NeuroSound_V2.c,85 :: 		goto tara;}
	GOTO        ___Interrupt_tara
L_Interrupt24:
;NeuroSound_V2.c,86 :: 		RB1_bit=0;   RB2_bit=1;  RB3_bit=1;
	BCF         RB1_bit+0, BitPos(RB1_bit+0) 
	BSF         RB2_bit+0, BitPos(RB2_bit+0) 
	BSF         RB3_bit+0, BitPos(RB3_bit+0) 
;NeuroSound_V2.c,87 :: 		tus=portb&0b11110000;
	MOVLW       240
	ANDWF       PORTB+0, 0 
	MOVWF       _tus+0 
	CLRF        _tus+1 
	MOVLW       0
	ANDWF       _tus+1, 1 
	MOVLW       0
	MOVWF       _tus+1 
;NeuroSound_V2.c,88 :: 		tus=(240-tus)/16;
	MOVF        _tus+0, 0 
	SUBLW       240
	MOVWF       R0 
	MOVF        _tus+1, 0 
	MOVWF       R1 
	MOVLW       0
	SUBFWB      R1, 1 
	MOVLW       16
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _tus+0 
	MOVF        R1, 0 
	MOVWF       _tus+1 
;NeuroSound_V2.c,89 :: 		if (tus >0){
	MOVLW       128
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt425
	MOVF        R0, 0 
	SUBLW       0
L__Interrupt425:
	BTFSC       STATUS+0, 0 
	GOTO        L_Interrupt27
;NeuroSound_V2.c,90 :: 		if (tus==4){tus=3;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt426
	MOVLW       4
	XORWF       _tus+0, 0 
L__Interrupt426:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt28
	MOVLW       3
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt28:
;NeuroSound_V2.c,91 :: 		if (tus==8){tus=4;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt427
	MOVLW       8
	XORWF       _tus+0, 0 
L__Interrupt427:
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt29
	MOVLW       4
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
L_Interrupt29:
;NeuroSound_V2.c,92 :: 		tus=tus+8;
	MOVLW       8
	ADDWF       _tus+0, 1 
	MOVLW       0
	ADDWFC      _tus+1, 1 
;NeuroSound_V2.c,93 :: 		goto tara;}
	GOTO        ___Interrupt_tara
L_Interrupt27:
;NeuroSound_V2.c,94 :: 		tara:
___Interrupt_tara:
;NeuroSound_V2.c,95 :: 		RB1_bit=0;   RB2_bit=0;  RB3_bit=0;
	BCF         RB1_bit+0, BitPos(RB1_bit+0) 
	BCF         RB2_bit+0, BitPos(RB2_bit+0) 
	BCF         RB3_bit+0, BitPos(RB3_bit+0) 
;NeuroSound_V2.c,96 :: 		switch(tus){case 0:tus=20; break; case 1: tus=11;  break; case 2: tus=7;break;
	GOTO        L_Interrupt30
L_Interrupt32:
	MOVLW       20
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt33:
	MOVLW       11
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt34:
	MOVLW       7
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
;NeuroSound_V2.c,97 :: 		case 3:tus=4;  break; case 4: tus=1; break; case 5: tus=0;break;
L_Interrupt35:
	MOVLW       4
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt36:
	MOVLW       1
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt37:
	CLRF        _tus+0 
	CLRF        _tus+1 
	GOTO        L_Interrupt31
;NeuroSound_V2.c,98 :: 		case 6:tus=8;  break; case 7: tus=5;  break; case 8: tus=2;break;
L_Interrupt38:
	MOVLW       8
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt39:
	MOVLW       5
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt40:
	MOVLW       2
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
;NeuroSound_V2.c,99 :: 		case 9:tus=12;  break; case 10:tus=9;  break; case 11:tus=6;break;
L_Interrupt41:
	MOVLW       12
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt42:
	MOVLW       9
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt43:
	MOVLW       6
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
;NeuroSound_V2.c,100 :: 		case 12: tus=3; break;}
L_Interrupt44:
	MOVLW       3
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
	GOTO        L_Interrupt31
L_Interrupt30:
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt428
	MOVLW       0
	XORWF       _tus+0, 0 
L__Interrupt428:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt32
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt429
	MOVLW       1
	XORWF       _tus+0, 0 
L__Interrupt429:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt33
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt430
	MOVLW       2
	XORWF       _tus+0, 0 
L__Interrupt430:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt34
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt431
	MOVLW       3
	XORWF       _tus+0, 0 
L__Interrupt431:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt35
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt432
	MOVLW       4
	XORWF       _tus+0, 0 
L__Interrupt432:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt36
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt433
	MOVLW       5
	XORWF       _tus+0, 0 
L__Interrupt433:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt37
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt434
	MOVLW       6
	XORWF       _tus+0, 0 
L__Interrupt434:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt38
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt435
	MOVLW       7
	XORWF       _tus+0, 0 
L__Interrupt435:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt39
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt436
	MOVLW       8
	XORWF       _tus+0, 0 
L__Interrupt436:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt40
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt437
	MOVLW       9
	XORWF       _tus+0, 0 
L__Interrupt437:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt41
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt438
	MOVLW       10
	XORWF       _tus+0, 0 
L__Interrupt438:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt42
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt439
	MOVLW       11
	XORWF       _tus+0, 0 
L__Interrupt439:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt43
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Interrupt440
	MOVLW       12
	XORWF       _tus+0, 0 
L__Interrupt440:
	BTFSC       STATUS+0, 2 
	GOTO        L_Interrupt44
L_Interrupt31:
;NeuroSound_V2.c,103 :: 		RBIF_bit=0;
	BCF         RBIF_bit+0, BitPos(RBIF_bit+0) 
;NeuroSound_V2.c,104 :: 		}
L_Interrupt19:
;NeuroSound_V2.c,105 :: 		}
L_end_Interrupt:
L__Interrupt416:
	RETFIE      1
; end of _Interrupt

_AD5206_Pot1:

;NeuroSound_V2.c,106 :: 		void AD5206_Pot1(short channel, short value){
;NeuroSound_V2.c,107 :: 		CS0 = 0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;NeuroSound_V2.c,108 :: 		SPI1_Write(channel);
	MOVF        FARG_AD5206_Pot1_channel+0, 0 
	MOVWF       FARG_SPI1_Write_data_+0 
	CALL        _SPI1_Write+0, 0
;NeuroSound_V2.c,109 :: 		SPI1_Write(value);
	MOVF        FARG_AD5206_Pot1_value+0, 0 
	MOVWF       FARG_SPI1_Write_data_+0 
	CALL        _SPI1_Write+0, 0
;NeuroSound_V2.c,110 :: 		CS0 = 1;
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
;NeuroSound_V2.c,111 :: 		}
L_end_AD5206_Pot1:
	RETURN      0
; end of _AD5206_Pot1

_AD5206_Pot2:

;NeuroSound_V2.c,112 :: 		void AD5206_Pot2(short channel, short value){
;NeuroSound_V2.c,113 :: 		CS1 = 0;
	BCF         RG0_bit+0, BitPos(RG0_bit+0) 
;NeuroSound_V2.c,114 :: 		SPI1_Write(channel);
	MOVF        FARG_AD5206_Pot2_channel+0, 0 
	MOVWF       FARG_SPI1_Write_data_+0 
	CALL        _SPI1_Write+0, 0
;NeuroSound_V2.c,115 :: 		SPI1_Write(value);
	MOVF        FARG_AD5206_Pot2_value+0, 0 
	MOVWF       FARG_SPI1_Write_data_+0 
	CALL        _SPI1_Write+0, 0
;NeuroSound_V2.c,116 :: 		CS1 = 1;
	BSF         RG0_bit+0, BitPos(RG0_bit+0) 
;NeuroSound_V2.c,117 :: 		}
L_end_AD5206_Pot2:
	RETURN      0
; end of _AD5206_Pot2

_CustomChar11:

;NeuroSound_V2.c,137 :: 		void CustomChar11() {
;NeuroSound_V2.c,138 :: 		char i;    Lcd_Cmd(87);
	MOVLW       87
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,139 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character11[i]);
	CLRF        CustomChar11_i_L0+0 
L_CustomChar1145:
	MOVF        CustomChar11_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar1146
	MOVLW       _character11+0
	ADDWF       CustomChar11_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character11+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character11+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar11_i_L0+0, 1 
	GOTO        L_CustomChar1145
L_CustomChar1146:
;NeuroSound_V2.c,140 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(1, 1, 11);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,141 :: 		}
L_end_CustomChar11:
	RETURN      0
; end of _CustomChar11

_CustomChar10:

;NeuroSound_V2.c,142 :: 		void CustomChar10() {
;NeuroSound_V2.c,143 :: 		char i;    Lcd_Cmd(79);
	MOVLW       79
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,144 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character10[i]);
	CLRF        CustomChar10_i_L0+0 
L_CustomChar1048:
	MOVF        CustomChar10_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar1049
	MOVLW       _character10+0
	ADDWF       CustomChar10_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character10+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character10+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar10_i_L0+0, 1 
	GOTO        L_CustomChar1048
L_CustomChar1049:
;NeuroSound_V2.c,145 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(1, 1, 10);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,146 :: 		}
L_end_CustomChar10:
	RETURN      0
; end of _CustomChar10

_CustomChar9:

;NeuroSound_V2.c,147 :: 		void CustomChar9() {
;NeuroSound_V2.c,148 :: 		char i;    Lcd_Cmd(71);
	MOVLW       71
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,149 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character9[i]);
	CLRF        CustomChar9_i_L0+0 
L_CustomChar951:
	MOVF        CustomChar9_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar952
	MOVLW       _character9+0
	ADDWF       CustomChar9_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character9+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character9+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar9_i_L0+0, 1 
	GOTO        L_CustomChar951
L_CustomChar952:
;NeuroSound_V2.c,150 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 3, 9);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,151 :: 		}
L_end_CustomChar9:
	RETURN      0
; end of _CustomChar9

_CustomChar8:

;NeuroSound_V2.c,152 :: 		void CustomChar8() {
;NeuroSound_V2.c,153 :: 		char i;   Lcd_Cmd(127);
	MOVLW       127
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,154 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character8[i]);
	CLRF        CustomChar8_i_L0+0 
L_CustomChar854:
	MOVF        CustomChar8_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar855
	MOVLW       _character8+0
	ADDWF       CustomChar8_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character8+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character8+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar8_i_L0+0, 1 
	GOTO        L_CustomChar854
L_CustomChar855:
;NeuroSound_V2.c,155 :: 		Lcd_Cmd(_LCD_RETURN_HOME);Lcd_Chr(2,3, 8);}
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
L_end_CustomChar8:
	RETURN      0
; end of _CustomChar8

_CustomChar7:

;NeuroSound_V2.c,157 :: 		void CustomChar7() {
;NeuroSound_V2.c,158 :: 		char i;  Lcd_Cmd(120);
	MOVLW       120
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,159 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF        CustomChar7_i_L0+0 
L_CustomChar757:
	MOVF        CustomChar7_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar758
	MOVLW       _character7+0
	ADDWF       CustomChar7_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character7+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character7+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar7_i_L0+0, 1 
	GOTO        L_CustomChar757
L_CustomChar758:
;NeuroSound_V2.c,160 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 4, 7);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,161 :: 		}
L_end_CustomChar7:
	RETURN      0
; end of _CustomChar7

_CustomChar6:

;NeuroSound_V2.c,162 :: 		void CustomChar6() {
;NeuroSound_V2.c,163 :: 		char i; Lcd_Cmd(112);
	MOVLW       112
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,164 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF        CustomChar6_i_L0+0 
L_CustomChar660:
	MOVF        CustomChar6_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar661
	MOVLW       _character6+0
	ADDWF       CustomChar6_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character6+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character6+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar6_i_L0+0, 1 
	GOTO        L_CustomChar660
L_CustomChar661:
;NeuroSound_V2.c,165 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2, 2, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,166 :: 		}
L_end_CustomChar6:
	RETURN      0
; end of _CustomChar6

_CustomChar0:

;NeuroSound_V2.c,167 :: 		void CustomChar0() {
;NeuroSound_V2.c,168 :: 		char i; Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,169 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
	CLRF        CustomChar0_i_L0+0 
L_CustomChar063:
	MOVF        CustomChar0_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar064
	MOVLW       _character0+0
	ADDWF       CustomChar0_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character0+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character0+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar0_i_L0+0, 1 
	GOTO        L_CustomChar063
L_CustomChar064:
;NeuroSound_V2.c,170 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 0);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,171 :: 		}
L_end_CustomChar0:
	RETURN      0
; end of _CustomChar0

_CustomChar1:

;NeuroSound_V2.c,172 :: 		void CustomChar1() {
;NeuroSound_V2.c,173 :: 		char i;    Lcd_Cmd(72);
	MOVLW       72
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,174 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF        CustomChar1_i_L0+0 
L_CustomChar166:
	MOVF        CustomChar1_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar167
	MOVLW       _character1+0
	ADDWF       CustomChar1_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character1+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character1+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar1_i_L0+0, 1 
	GOTO        L_CustomChar166
L_CustomChar167:
;NeuroSound_V2.c,175 :: 		Lcd_Cmd(_LCD_RETURN_HOME);    Lcd_Chr(2,1, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,176 :: 		}
L_end_CustomChar1:
	RETURN      0
; end of _CustomChar1

_CustomChar2:

;NeuroSound_V2.c,177 :: 		void CustomChar2() {
;NeuroSound_V2.c,178 :: 		char i;    Lcd_Cmd(80);
	MOVLW       80
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,179 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF        CustomChar2_i_L0+0 
L_CustomChar269:
	MOVF        CustomChar2_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar270
	MOVLW       _character2+0
	ADDWF       CustomChar2_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character2+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character2+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar2_i_L0+0, 1 
	GOTO        L_CustomChar269
L_CustomChar270:
;NeuroSound_V2.c,180 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,181 :: 		}
L_end_CustomChar2:
	RETURN      0
; end of _CustomChar2

_CustomChar3:

;NeuroSound_V2.c,182 :: 		void CustomChar3() {
;NeuroSound_V2.c,183 :: 		char i;  Lcd_Cmd(88);
	MOVLW       88
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,184 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF        CustomChar3_i_L0+0 
L_CustomChar372:
	MOVF        CustomChar3_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar373
	MOVLW       _character3+0
	ADDWF       CustomChar3_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character3+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character3+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar3_i_L0+0, 1 
	GOTO        L_CustomChar372
L_CustomChar373:
;NeuroSound_V2.c,185 :: 		Lcd_Cmd(_LCD_RETURN_HOME);  Lcd_Chr(2,1, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,186 :: 		}
L_end_CustomChar3:
	RETURN      0
; end of _CustomChar3

_CustomChar4:

;NeuroSound_V2.c,187 :: 		void CustomChar4() {
;NeuroSound_V2.c,188 :: 		char i; Lcd_Cmd(96);
	MOVLW       96
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,189 :: 		for (i  = 0; i<=7; i++)  Lcd_Chr_CP(character4[i]);
	CLRF        CustomChar4_i_L0+0 
L_CustomChar475:
	MOVF        CustomChar4_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar476
	MOVLW       _character4+0
	ADDWF       CustomChar4_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character4+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character4+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar4_i_L0+0, 1 
	GOTO        L_CustomChar475
L_CustomChar476:
;NeuroSound_V2.c,190 :: 		Lcd_Cmd(_LCD_RETURN_HOME);  Lcd_Chr(2,1, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,191 :: 		}
L_end_CustomChar4:
	RETURN      0
; end of _CustomChar4

_CustomChar5:

;NeuroSound_V2.c,192 :: 		void CustomChar5() {
;NeuroSound_V2.c,193 :: 		char i; Lcd_Cmd(104);
	MOVLW       104
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,194 :: 		for ( i= 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF        CustomChar5_i_L0+0 
L_CustomChar578:
	MOVF        CustomChar5_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar579
	MOVLW       _character5+0
	ADDWF       CustomChar5_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character5+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character5+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar5_i_L0+0, 1 
	GOTO        L_CustomChar578
L_CustomChar579:
;NeuroSound_V2.c,195 :: 		Lcd_Cmd(_LCD_RETURN_HOME); Lcd_Chr(2,1, 5);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;NeuroSound_V2.c,196 :: 		}
L_end_CustomChar5:
	RETURN      0
; end of _CustomChar5

_protokol:

;NeuroSound_V2.c,197 :: 		void protokol(){
;NeuroSound_V2.c,198 :: 		if(gelen[3]=='A'){ RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=1;}
	MOVF        _gelen+3, 0 
	XORLW       65
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol81
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BSF         RE7_bit+0, BitPos(RE7_bit+0) 
L_protokol81:
;NeuroSound_V2.c,199 :: 		if(gelen[3]=='B'){ RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=1;RE7_bit=0;}
	MOVF        _gelen+3, 0 
	XORLW       66
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol82
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BSF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
L_protokol82:
;NeuroSound_V2.c,200 :: 		if(gelen[3]=='C'){ RE3_bit=0; RE4_bit=1; RE5_bit=0; RE6_bit=0;RE7_bit=0;}
	MOVF        _gelen+3, 0 
	XORLW       67
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol83
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BSF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
L_protokol83:
;NeuroSound_V2.c,201 :: 		if(gelen[3]=='D'){ RE3_bit=0; RE4_bit=0; RE5_bit=1; RE6_bit=0;RE7_bit=0;}
	MOVF        _gelen+3, 0 
	XORLW       68
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol84
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BSF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
L_protokol84:
;NeuroSound_V2.c,202 :: 		if(gelen[3]=='E'){ RE3_bit=1; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;}
	MOVF        _gelen+3, 0 
	XORLW       69
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol85
	BSF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
L_protokol85:
;NeuroSound_V2.c,203 :: 		if(gelen[4]=='F'){AD5206_Pot1(0, 220);AD5206_Pot1(3, 220);}
	MOVF        _gelen+4, 0 
	XORLW       70
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol86
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol86:
;NeuroSound_V2.c,204 :: 		if(gelen[4]=='G'){AD5206_Pot1(0, 165);AD5206_Pot1(3, 165);}
	MOVF        _gelen+4, 0 
	XORLW       71
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol87
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol87:
;NeuroSound_V2.c,205 :: 		if(gelen[4]=='H'){AD5206_Pot1(0, 110);AD5206_Pot1(3, 110);}
	MOVF        _gelen+4, 0 
	XORLW       72
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol88
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol88:
;NeuroSound_V2.c,206 :: 		if(gelen[4]=='I'){AD5206_Pot1(0, 55);AD5206_Pot1(3, 55);}
	MOVF        _gelen+4, 0 
	XORLW       73
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol89
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol89:
;NeuroSound_V2.c,207 :: 		if(gelen[5]=='J'){AD5206_Pot1(1, 220);AD5206_Pot1(5, 220);}
	MOVF        _gelen+5, 0 
	XORLW       74
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol90
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol90:
;NeuroSound_V2.c,208 :: 		if(gelen[5]=='K'){AD5206_Pot1(1, 165);AD5206_Pot1(5, 165);}
	MOVF        _gelen+5, 0 
	XORLW       75
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol91
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol91:
;NeuroSound_V2.c,209 :: 		if(gelen[5]=='L'){AD5206_Pot1(1, 110);AD5206_Pot1(5, 110);}
	MOVF        _gelen+5, 0 
	XORLW       76
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol92
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol92:
;NeuroSound_V2.c,210 :: 		if(gelen[5]=='M'){AD5206_Pot1(1, 55);AD5206_Pot1(5, 55);}
	MOVF        _gelen+5, 0 
	XORLW       77
	BTFSS       STATUS+0, 2 
	GOTO        L_protokol93
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_protokol93:
;NeuroSound_V2.c,211 :: 		}
L_end_protokol:
	RETURN      0
; end of _protokol

_main:

;NeuroSound_V2.c,212 :: 		void main() {
;NeuroSound_V2.c,213 :: 		CustomChar0(); CustomChar1(); CustomChar2(); CustomChar3(); CustomChar4();CustomChar11();
	CALL        _CustomChar0+0, 0
	CALL        _CustomChar1+0, 0
	CALL        _CustomChar2+0, 0
	CALL        _CustomChar3+0, 0
	CALL        _CustomChar4+0, 0
	CALL        _CustomChar11+0, 0
;NeuroSound_V2.c,214 :: 		CustomChar5(); CustomChar6(); CustomChar7(); CustomChar8(); CustomChar9();CustomChar10();
	CALL        _CustomChar5+0, 0
	CALL        _CustomChar6+0, 0
	CALL        _CustomChar7+0, 0
	CALL        _CustomChar8+0, 0
	CALL        _CustomChar9+0, 0
	CALL        _CustomChar10+0, 0
;NeuroSound_V2.c,215 :: 		eprom_oku();
	CALL        _eprom_oku+0, 0
;NeuroSound_V2.c,216 :: 		ADCON1=0b00001101;
	MOVLW       13
	MOVWF       ADCON1+0 
;NeuroSound_V2.c,218 :: 		T3CON         = 0x31;
	MOVLW       49
	MOVWF       T3CON+0 
;NeuroSound_V2.c,219 :: 		TMR3IF_bit         = 0;
	BCF         TMR3IF_bit+0, BitPos(TMR3IF_bit+0) 
;NeuroSound_V2.c,220 :: 		TMR3H         = 0x3C;
	MOVLW       60
	MOVWF       TMR3H+0 
;NeuroSound_V2.c,221 :: 		TMR3L         = 0xB0;
	MOVLW       176
	MOVWF       TMR3L+0 
;NeuroSound_V2.c,222 :: 		TMR3IE_bit         = 1;
	BSF         TMR3IE_bit+0, BitPos(TMR3IE_bit+0) 
;NeuroSound_V2.c,223 :: 		INTCON         = 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;NeuroSound_V2.c,232 :: 		INTCON =  0b11001000;
	MOVLW       200
	MOVWF       INTCON+0 
;NeuroSound_V2.c,233 :: 		INTCON2=0b00000000;
	CLRF        INTCON2+0 
;NeuroSound_V2.c,234 :: 		OSCCON =  0b01111111;
	MOVLW       127
	MOVWF       OSCCON+0 
;NeuroSound_V2.c,235 :: 		PIE1=0b00100000; //PIE3=0b00100000;
	MOVLW       32
	MOVWF       PIE1+0 
;NeuroSound_V2.c,236 :: 		TRISA = 0b00000011; TRISB  = 0b11110001; TRISC = 0b10000000;  TRISD = 0b00000000;
	MOVLW       3
	MOVWF       TRISA+0 
	MOVLW       241
	MOVWF       TRISB+0 
	MOVLW       128
	MOVWF       TRISC+0 
	CLRF        TRISD+0 
;NeuroSound_V2.c,237 :: 		TRISE= 0b00000001;   TRISF= 0b00000001; TRISG = 0b00000100;
	MOVLW       1
	MOVWF       TRISE+0 
	MOVLW       1
	MOVWF       TRISF+0 
	MOVLW       4
	MOVWF       TRISG+0 
;NeuroSound_V2.c,238 :: 		UART1_Init(9600); // UART2_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;NeuroSound_V2.c,239 :: 		PWM1_Init(500);  SPI1_Init();  Lcd_Init();
	BSF         T2CON+0, 0, 0
	BSF         T2CON+0, 1, 0
	MOVLW       249
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
	CALL        _SPI1_Init+0, 0
	CALL        _Lcd_Init+0, 0
;NeuroSound_V2.c,240 :: 		portb=0; portc=0; porte=0;  portf=0; //portg=0;
	CLRF        PORTB+0 
	CLRF        PORTC+0 
	CLRF        PORTE+0 
	CLRF        PORTF+0 
;NeuroSound_V2.c,241 :: 		CS0_Direction = 0; CS0 = 1; CS1_Direction = 0; CS1 = 1;
	BCF         TRISC0_bit+0, BitPos(TRISC0_bit+0) 
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
	BCF         TRISG0_bit+0, BitPos(TRISG0_bit+0) 
	BSF         RG0_bit+0, BitPos(RG0_bit+0) 
;NeuroSound_V2.c,242 :: 		AD5206_Pot1(0, 250);  AD5206_Pot2(0, 250);
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       250
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	CLRF        FARG_AD5206_Pot2_channel+0 
	MOVLW       250
	MOVWF       FARG_AD5206_Pot2_value+0 
	CALL        _AD5206_Pot2+0, 0
;NeuroSound_V2.c,243 :: 		PWM1_Start(); PWM1_Set_Duty(lcd_pwm);
	CALL        _PWM1_Start+0, 0
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;NeuroSound_V2.c,244 :: 		UART1_Write(10); UART1_Write(13);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;NeuroSound_V2.c,246 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
;NeuroSound_V2.c,247 :: 		RF1_bit=1; RF2_bit=0; RF3_bit=0; RF4_bit=0; RF5_bit=0; RF6_bit=0;RF7_bit=0;
	BSF         RF1_bit+0, BitPos(RF1_bit+0) 
	BCF         RF2_bit+0, BitPos(RF2_bit+0) 
	BCF         RF3_bit+0, BitPos(RF3_bit+0) 
	BCF         RF4_bit+0, BitPos(RF4_bit+0) 
	BCF         RF5_bit+0, BitPos(RF5_bit+0) 
	BCF         RF6_bit+0, BitPos(RF6_bit+0) 
	BCF         RF7_bit+0, BitPos(RF7_bit+0) 
;NeuroSound_V2.c,248 :: 		tus=portb&0b1111100;  tus=20;
	MOVLW       124
	ANDWF       PORTB+0, 0 
	MOVWF       _tus+0 
	CLRF        _tus+1 
	MOVLW       0
	ANDWF       _tus+1, 1 
	MOVLW       0
	MOVWF       _tus+1 
	MOVLW       20
	MOVWF       _tus+0 
	MOVLW       0
	MOVWF       _tus+1 
;NeuroSound_V2.c,249 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,250 :: 		Lcd_Out(1,1,"3D ZEKA YETENEK");Lcd_Out(2,4,"NEUROSOUND");delay_ms(1500);Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main94:
	DECFSZ      R13, 1, 1
	BRA         L_main94
	DECFSZ      R12, 1, 1
	BRA         L_main94
	DECFSZ      R11, 1, 1
	BRA         L_main94
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,251 :: 		Lcd_Out(1,1,"<<Versiyon 2.0>>");Lcd_Out(2,1,"<Made in TURKEY>");delay_ms(1500);Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main95:
	DECFSZ      R13, 1, 1
	BRA         L_main95
	DECFSZ      R12, 1, 1
	BRA         L_main95
	DECFSZ      R11, 1, 1
	BRA         L_main95
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,252 :: 		volume=ear_data; volume1=bone_data;    Lcd_Out(1,5,"N.SOUND");
	MOVF        _ear_data+0, 0 
	MOVWF       _volume+0 
	MOVF        _ear_data+1, 0 
	MOVWF       _volume+1 
	MOVF        _bone_data+0, 0 
	MOVWF       _volume1+0 
	MOVF        _bone_data+1, 0 
	MOVWF       _volume1+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,254 :: 		while(1){
L_main96:
;NeuroSound_V2.c,255 :: 		adcler();
	CALL        _adcler+0, 0
;NeuroSound_V2.c,256 :: 		if (tus==1){RC1_bit=bip_data;delay_ms(100);RC1_bit=0;menu_kontrol=0;Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,1,"                ");Lcd_Out(1,5,"N.SOUND");}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main457
	MOVLW       1
	XORWF       _tus+0, 0 
L__main457:
	BTFSS       STATUS+0, 2 
	GOTO        L_main98
	BTFSC       _bip_data+0, 0 
	GOTO        L__main458
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main459
L__main458:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main459:
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main99:
	DECFSZ      R13, 1, 1
	BRA         L_main99
	DECFSZ      R12, 1, 1
	BRA         L_main99
	DECFSZ      R11, 1, 1
	BRA         L_main99
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _menu_kontrol+0 
	CLRF        _menu_kontrol+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main98:
;NeuroSound_V2.c,257 :: 		if(bip_data==1){CustomChar10();}
	MOVLW       0
	XORWF       _bip_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main460
	MOVLW       1
	XORWF       _bip_data+0, 0 
L__main460:
	BTFSS       STATUS+0, 2 
	GOTO        L_main100
	CALL        _CustomChar10+0, 0
L_main100:
;NeuroSound_V2.c,259 :: 		if(RE0_bit==1){
	BTFSS       RE0_bit+0, BitPos(RE0_bit+0) 
	GOTO        L_main101
;NeuroSound_V2.c,260 :: 		emn_data=EEPROM_Read(emn_adres);emn_data=1;
	MOVF        _emn_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _emn_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _emn_data+0 
	MOVLW       0
	MOVWF       _emn_data+1 
	MOVLW       1
	MOVWF       _emn_data+0 
	MOVLW       0
	MOVWF       _emn_data+1 
;NeuroSound_V2.c,261 :: 		delay_ms(100);EEPROM_Write(emn_adres,emn_data);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main102:
	DECFSZ      R13, 1, 1
	BRA         L_main102
	DECFSZ      R12, 1, 1
	BRA         L_main102
	DECFSZ      R11, 1, 1
	BRA         L_main102
	NOP
	MOVF        _emn_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _emn_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVF        _emn_data+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;NeuroSound_V2.c,262 :: 		}
L_main101:
;NeuroSound_V2.c,263 :: 		while(emn_data==1){
L_main103:
	MOVLW       0
	XORWF       _emn_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main461
	MOVLW       1
	XORWF       _emn_data+0, 0 
L__main461:
	BTFSS       STATUS+0, 2 
	GOTO        L_main104
;NeuroSound_V2.c,264 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,265 :: 		Lcd_Out(1,2,"TEKNIK SERVIS");Lcd_Out(2,2,"ILETISIME GEC");delay_ms(1000);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main105:
	DECFSZ      R13, 1, 1
	BRA         L_main105
	DECFSZ      R12, 1, 1
	BRA         L_main105
	DECFSZ      R11, 1, 1
	BRA         L_main105
	NOP
	NOP
;NeuroSound_V2.c,266 :: 		PWM1_Set_Duty(0); delay_ms(100);PWM1_Set_Duty(120);delay_ms(20);
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main106:
	DECFSZ      R13, 1, 1
	BRA         L_main106
	DECFSZ      R12, 1, 1
	BRA         L_main106
	DECFSZ      R11, 1, 1
	BRA         L_main106
	NOP
	MOVLW       120
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main107:
	DECFSZ      R13, 1, 1
	BRA         L_main107
	DECFSZ      R12, 1, 1
	BRA         L_main107
	NOP
	NOP
;NeuroSound_V2.c,267 :: 		RC1_bit=1;delay_ms(100);RC1_bit=0;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main108:
	DECFSZ      R13, 1, 1
	BRA         L_main108
	DECFSZ      R12, 1, 1
	BRA         L_main108
	DECFSZ      R11, 1, 1
	BRA         L_main108
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,268 :: 		}
	GOTO        L_main103
L_main104:
;NeuroSound_V2.c,270 :: 		if(tus==11){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume=volume+30;if(volume>240){volume=240;} }
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main462
	MOVLW       11
	XORWF       _tus+0, 0 
L__main462:
	BTFSS       STATUS+0, 2 
	GOTO        L_main109
	BTFSC       _bip_data+0, 0 
	GOTO        L__main463
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main464
L__main463:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main464:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main110:
	DECFSZ      R13, 1, 1
	BRA         L_main110
	DECFSZ      R12, 1, 1
	BRA         L_main110
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	ADDWF       _volume+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _volume+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _volume+0 
	MOVF        R2, 0 
	MOVWF       _volume+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main465
	MOVF        R1, 0 
	SUBLW       240
L__main465:
	BTFSC       STATUS+0, 0 
	GOTO        L_main111
	MOVLW       240
	MOVWF       _volume+0 
	MOVLW       0
	MOVWF       _volume+1 
L_main111:
L_main109:
;NeuroSound_V2.c,271 :: 		if(tus==12){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume=volume-30;if(volume<=0){volume=0;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main466
	MOVLW       12
	XORWF       _tus+0, 0 
L__main466:
	BTFSS       STATUS+0, 2 
	GOTO        L_main112
	BTFSC       _bip_data+0, 0 
	GOTO        L__main467
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main468
L__main467:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main468:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main113:
	DECFSZ      R13, 1, 1
	BRA         L_main113
	DECFSZ      R12, 1, 1
	BRA         L_main113
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	SUBWF       _volume+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _volume+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _volume+0 
	MOVF        R2, 0 
	MOVWF       _volume+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main469
	MOVF        R1, 0 
	SUBLW       0
L__main469:
	BTFSS       STATUS+0, 0 
	GOTO        L_main114
	CLRF        _volume+0 
	CLRF        _volume+1 
L_main114:
L_main112:
;NeuroSound_V2.c,272 :: 		if(volume==0){Lcd_Out(1,14,"K 0");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main470
	MOVLW       0
	XORWF       _volume+0, 0 
L__main470:
	BTFSS       STATUS+0, 2 
	GOTO        L_main115
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main115:
;NeuroSound_V2.c,273 :: 		if(volume==30){Lcd_Out(1,14,"K 1");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main471
	MOVLW       30
	XORWF       _volume+0, 0 
L__main471:
	BTFSS       STATUS+0, 2 
	GOTO        L_main116
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main116:
;NeuroSound_V2.c,274 :: 		if(volume==60){Lcd_Out(1,14,"K 2");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main472
	MOVLW       60
	XORWF       _volume+0, 0 
L__main472:
	BTFSS       STATUS+0, 2 
	GOTO        L_main117
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main117:
;NeuroSound_V2.c,275 :: 		if(volume==90){Lcd_Out(1,14,"K 3");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main473
	MOVLW       90
	XORWF       _volume+0, 0 
L__main473:
	BTFSS       STATUS+0, 2 
	GOTO        L_main118
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main118:
;NeuroSound_V2.c,276 :: 		if(volume==120){Lcd_Out(1,14,"K 4");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main474
	MOVLW       120
	XORWF       _volume+0, 0 
L__main474:
	BTFSS       STATUS+0, 2 
	GOTO        L_main119
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main119:
;NeuroSound_V2.c,277 :: 		if(volume==150){Lcd_Out(1,14,"K 5");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main475
	MOVLW       150
	XORWF       _volume+0, 0 
L__main475:
	BTFSS       STATUS+0, 2 
	GOTO        L_main120
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main120:
;NeuroSound_V2.c,278 :: 		if(volume==180){Lcd_Out(1,14,"K 6");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main476
	MOVLW       180
	XORWF       _volume+0, 0 
L__main476:
	BTFSS       STATUS+0, 2 
	GOTO        L_main121
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main121:
;NeuroSound_V2.c,279 :: 		if(volume==210){Lcd_Out(1,14,"K 7");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main477
	MOVLW       210
	XORWF       _volume+0, 0 
L__main477:
	BTFSS       STATUS+0, 2 
	GOTO        L_main122
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main122:
;NeuroSound_V2.c,280 :: 		if(volume==240){Lcd_Out(1,14,"K 8");AD5206_Pot1(2, volume);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main478
	MOVLW       240
	XORWF       _volume+0, 0 
L__main478:
	BTFSS       STATUS+0, 2 
	GOTO        L_main123
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main123:
;NeuroSound_V2.c,282 :: 		if(tus==4){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume1=volume1+30;if(volume1>240){volume1=240;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main479
	MOVLW       4
	XORWF       _tus+0, 0 
L__main479:
	BTFSS       STATUS+0, 2 
	GOTO        L_main124
	BTFSC       _bip_data+0, 0 
	GOTO        L__main480
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main481
L__main480:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main481:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main125:
	DECFSZ      R13, 1, 1
	BRA         L_main125
	DECFSZ      R12, 1, 1
	BRA         L_main125
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	ADDWF       _volume1+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _volume1+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _volume1+0 
	MOVF        R2, 0 
	MOVWF       _volume1+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main482
	MOVF        R1, 0 
	SUBLW       240
L__main482:
	BTFSC       STATUS+0, 0 
	GOTO        L_main126
	MOVLW       240
	MOVWF       _volume1+0 
	MOVLW       0
	MOVWF       _volume1+1 
L_main126:
L_main124:
;NeuroSound_V2.c,283 :: 		if(tus==6){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;volume1=volume1-30;if(volume1<=0){volume1=0;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main483
	MOVLW       6
	XORWF       _tus+0, 0 
L__main483:
	BTFSS       STATUS+0, 2 
	GOTO        L_main127
	BTFSC       _bip_data+0, 0 
	GOTO        L__main484
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main485
L__main484:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main485:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main128:
	DECFSZ      R13, 1, 1
	BRA         L_main128
	DECFSZ      R12, 1, 1
	BRA         L_main128
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	SUBWF       _volume1+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _volume1+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _volume1+0 
	MOVF        R2, 0 
	MOVWF       _volume1+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main486
	MOVF        R1, 0 
	SUBLW       0
L__main486:
	BTFSS       STATUS+0, 0 
	GOTO        L_main129
	CLRF        _volume1+0 
	CLRF        _volume1+1 
L_main129:
L_main127:
;NeuroSound_V2.c,284 :: 		if(volume1==0){Lcd_Out(2,14,"B 0");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main487
	MOVLW       0
	XORWF       _volume1+0, 0 
L__main487:
	BTFSS       STATUS+0, 2 
	GOTO        L_main130
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main130:
;NeuroSound_V2.c,285 :: 		if(volume1==30){Lcd_Out(2,14,"B 1");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main488
	MOVLW       30
	XORWF       _volume1+0, 0 
L__main488:
	BTFSS       STATUS+0, 2 
	GOTO        L_main131
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main131:
;NeuroSound_V2.c,286 :: 		if(volume1==60){Lcd_Out(2,14,"B 2");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main489
	MOVLW       60
	XORWF       _volume1+0, 0 
L__main489:
	BTFSS       STATUS+0, 2 
	GOTO        L_main132
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main132:
;NeuroSound_V2.c,287 :: 		if(volume1==90){Lcd_Out(2,14,"B 3");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main490
	MOVLW       90
	XORWF       _volume1+0, 0 
L__main490:
	BTFSS       STATUS+0, 2 
	GOTO        L_main133
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main133:
;NeuroSound_V2.c,288 :: 		if(volume1==120){Lcd_Out(2,14,"B 4");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main491
	MOVLW       120
	XORWF       _volume1+0, 0 
L__main491:
	BTFSS       STATUS+0, 2 
	GOTO        L_main134
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main134:
;NeuroSound_V2.c,289 :: 		if(volume1==150){Lcd_Out(2,14,"B 5");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main492
	MOVLW       150
	XORWF       _volume1+0, 0 
L__main492:
	BTFSS       STATUS+0, 2 
	GOTO        L_main135
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main135:
;NeuroSound_V2.c,290 :: 		if(volume1==180){Lcd_Out(2,14,"B 6");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main493
	MOVLW       180
	XORWF       _volume1+0, 0 
L__main493:
	BTFSS       STATUS+0, 2 
	GOTO        L_main136
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main136:
;NeuroSound_V2.c,291 :: 		if(volume1==210){Lcd_Out(2,14,"B 7");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main494
	MOVLW       210
	XORWF       _volume1+0, 0 
L__main494:
	BTFSS       STATUS+0, 2 
	GOTO        L_main137
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main137:
;NeuroSound_V2.c,292 :: 		if(volume1==240){Lcd_Out(2,14,"B 8");AD5206_Pot1(4, volume1);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main495
	MOVLW       240
	XORWF       _volume1+0, 0 
L__main495:
	BTFSS       STATUS+0, 2 
	GOTO        L_main138
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main138:
;NeuroSound_V2.c,295 :: 		while(kanal2<800){
L_main139:
	MOVLW       3
	SUBWF       _kanal2+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main496
	MOVLW       32
	SUBWF       _kanal2+0, 0 
L__main496:
	BTFSC       STATUS+0, 0 
	GOTO        L_main140
;NeuroSound_V2.c,296 :: 		adcler();
	CALL        _adcler+0, 0
;NeuroSound_V2.c,297 :: 		Lcd_Cmd(_LCD_CLEAR);CustomChar0();Lcd_Out(1,6,"SARJA");Lcd_Out(2,5,"TAKINIZ");RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	CALL        _CustomChar0+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main141:
	DECFSZ      R13, 1, 1
	BRA         L_main141
	DECFSZ      R12, 1, 1
	BRA         L_main141
	DECFSZ      R11, 1, 1
	BRA         L_main141
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,299 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,300 :: 		}
	GOTO        L_main139
L_main140:
;NeuroSound_V2.c,302 :: 		if(k==1){
	MOVLW       0
	XORWF       _k+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main497
	MOVLW       1
	XORWF       _k+0, 0 
L__main497:
	BTFSS       STATUS+0, 2 
	GOTO        L_main142
;NeuroSound_V2.c,303 :: 		delay_ms(100); UART1_Write_Text(veri);  UART1_Write('/');
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main143:
	DECFSZ      R13, 1, 1
	BRA         L_main143
	DECFSZ      R12, 1, 1
	BRA         L_main143
	DECFSZ      R11, 1, 1
	BRA         L_main143
	NOP
	MOVLW       _veri+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(_veri+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
	MOVLW       47
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;NeuroSound_V2.c,304 :: 		if(veri[1]=='c'&&veri[4]=='k'&&veri[7]=='r'){CustomChar7();}
	MOVF        _veri+1, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L_main146
	MOVF        _veri+4, 0 
	XORLW       107
	BTFSS       STATUS+0, 2 
	GOTO        L_main146
	MOVF        _veri+7, 0 
	XORLW       114
	BTFSS       STATUS+0, 2 
	GOTO        L_main146
L__main406:
	CALL        _CustomChar7+0, 0
L_main146:
;NeuroSound_V2.c,305 :: 		if(veri[1]=='1'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main148:
	DECFSZ      R13, 1, 1
	BRA         L_main148
	DECFSZ      R12, 1, 1
	BRA         L_main148
	DECFSZ      R11, 1, 1
	BRA         L_main148
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,306 :: 		veri1[0]=veri[0];veri1[1]=veri[1];veri1[2]=veri[2];veri1[3]=veri[3];veri1[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri1+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri1+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri1+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri1+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri1+4 
;NeuroSound_V2.c,307 :: 		veri1[5]=veri[5];veri1[6]=veri[6];veri1[7]=veri[7];veri1[8]=veri[8];veri1[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri1+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri1+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri1+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri1+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri1+9 
;NeuroSound_V2.c,308 :: 		seyans=1;
	MOVLW       1
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
;NeuroSound_V2.c,309 :: 		}
L_main147:
;NeuroSound_V2.c,310 :: 		if(veri[1]=='2'){RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main149
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main150:
	DECFSZ      R13, 1, 1
	BRA         L_main150
	DECFSZ      R12, 1, 1
	BRA         L_main150
	DECFSZ      R11, 1, 1
	BRA         L_main150
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,311 :: 		veri2[0]=veri[0];veri2[1]=veri[1];veri2[2]=veri[2];veri2[3]=veri[3];veri2[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri2+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri2+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri2+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri2+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri2+4 
;NeuroSound_V2.c,312 :: 		veri2[5]=veri[5];veri2[6]=veri[6];veri2[7]=veri[7];veri2[8]=veri[8];veri2[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri2+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri2+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri2+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri2+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri2+9 
;NeuroSound_V2.c,313 :: 		seyans=2; aa=0; Lcd_Out(1,5," SEANS  ");Lcd_Out(2,6,"HAZIR");
	MOVLW       2
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
	CLRF        _aa+0 
	CLRF        _aa+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,314 :: 		}
L_main149:
;NeuroSound_V2.c,315 :: 		if(veri[1]=='3'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       51
	BTFSS       STATUS+0, 2 
	GOTO        L_main151
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main152:
	DECFSZ      R13, 1, 1
	BRA         L_main152
	DECFSZ      R12, 1, 1
	BRA         L_main152
	DECFSZ      R11, 1, 1
	BRA         L_main152
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,316 :: 		veri3[0]=veri[0];veri3[1]=veri[1];veri3[2]=veri[2];veri3[3]=veri[3];veri3[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri3+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri3+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri3+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri3+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri3+4 
;NeuroSound_V2.c,317 :: 		veri3[5]=veri[5];veri3[6]=veri[6];veri3[7]=veri[7];veri3[8]=veri[8];veri3[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri3+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri3+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri3+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri3+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri3+9 
;NeuroSound_V2.c,318 :: 		nn=1;  dd[0]= veri3[1];     seyans=3; Lcd_Out(1,5,"        ");Lcd_Out(2,6,"      ");
	MOVLW       1
	MOVWF       _nn+0 
	MOVLW       0
	MOVWF       _nn+1 
	MOVF        _veri3+1, 0 
	MOVWF       _dd+0 
	MOVLW       3
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,319 :: 		}
L_main151:
;NeuroSound_V2.c,320 :: 		if(veri[1]=='4'){RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       52
	BTFSS       STATUS+0, 2 
	GOTO        L_main153
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main154:
	DECFSZ      R13, 1, 1
	BRA         L_main154
	DECFSZ      R12, 1, 1
	BRA         L_main154
	DECFSZ      R11, 1, 1
	BRA         L_main154
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,321 :: 		veri4[0]=veri[0];veri4[1]=veri[1];veri4[2]=veri[2];veri4[3]=veri[3];veri4[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri4+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri4+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri4+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri4+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri4+4 
;NeuroSound_V2.c,322 :: 		veri4[5]=veri[5];veri4[6]=veri[6];veri4[7]=veri[7];veri4[8]=veri[8];veri4[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri4+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri4+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri4+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri4+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri4+9 
;NeuroSound_V2.c,323 :: 		seyans=4; aa=1; Lcd_Out(1,5," SEANS  ");Lcd_Out(2,6,"HAZIR");
	MOVLW       4
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
	MOVLW       1
	MOVWF       _aa+0 
	MOVLW       0
	MOVWF       _aa+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,324 :: 		}
L_main153:
;NeuroSound_V2.c,325 :: 		k=0;
	CLRF        _k+0 
	CLRF        _k+1 
;NeuroSound_V2.c,326 :: 		}
L_main142:
;NeuroSound_V2.c,328 :: 		if(k==2){
	MOVLW       0
	XORWF       _k+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main498
	MOVLW       2
	XORWF       _k+0, 0 
L__main498:
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
;NeuroSound_V2.c,329 :: 		delay_ms(100); UART2_Write_Text(veri);  UART2_Write('/');
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main156:
	DECFSZ      R13, 1, 1
	BRA         L_main156
	DECFSZ      R12, 1, 1
	BRA         L_main156
	DECFSZ      R11, 1, 1
	BRA         L_main156
	NOP
	MOVLW       _veri+0
	MOVWF       FARG_UART2_Write_Text_uart_text+0 
	MOVLW       hi_addr(_veri+0)
	MOVWF       FARG_UART2_Write_Text_uart_text+1 
	CALL        _UART2_Write_Text+0, 0
	MOVLW       47
	MOVWF       FARG_UART2_Write_data_+0 
	CALL        _UART2_Write+0, 0
;NeuroSound_V2.c,330 :: 		if(veri[1]=='c'&&veri[4]=='k'&&veri[7]=='r'){CustomChar7();}
	MOVF        _veri+1, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
	MOVF        _veri+4, 0 
	XORLW       107
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
	MOVF        _veri+7, 0 
	XORLW       114
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
L__main405:
	CALL        _CustomChar7+0, 0
L_main159:
;NeuroSound_V2.c,331 :: 		if(veri[1]=='1'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main160
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main161:
	DECFSZ      R13, 1, 1
	BRA         L_main161
	DECFSZ      R12, 1, 1
	BRA         L_main161
	DECFSZ      R11, 1, 1
	BRA         L_main161
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,332 :: 		veri1[0]=veri[0];veri1[1]=veri[1];veri1[2]=veri[2];veri1[3]=veri[3];veri1[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri1+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri1+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri1+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri1+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri1+4 
;NeuroSound_V2.c,333 :: 		veri1[5]=veri[5];veri1[6]=veri[6];veri1[7]=veri[7];veri1[8]=veri[8];veri1[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri1+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri1+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri1+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri1+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri1+9 
;NeuroSound_V2.c,334 :: 		seyans=1;
	MOVLW       1
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
;NeuroSound_V2.c,335 :: 		}
L_main160:
;NeuroSound_V2.c,336 :: 		if(veri[1]=='2'){RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main162
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main163:
	DECFSZ      R13, 1, 1
	BRA         L_main163
	DECFSZ      R12, 1, 1
	BRA         L_main163
	DECFSZ      R11, 1, 1
	BRA         L_main163
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,337 :: 		veri2[0]=veri[0];veri2[1]=veri[1];veri2[2]=veri[2];veri2[3]=veri[3];veri2[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri2+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri2+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri2+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri2+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri2+4 
;NeuroSound_V2.c,338 :: 		veri2[5]=veri[5];veri2[6]=veri[6];veri2[7]=veri[7];veri2[8]=veri[8];veri2[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri2+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri2+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri2+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri2+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri2+9 
;NeuroSound_V2.c,339 :: 		seyans=2; aa=0;
	MOVLW       2
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
	CLRF        _aa+0 
	CLRF        _aa+1 
;NeuroSound_V2.c,340 :: 		}
L_main162:
;NeuroSound_V2.c,341 :: 		if(veri[1]=='3'){ RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       51
	BTFSS       STATUS+0, 2 
	GOTO        L_main164
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main165:
	DECFSZ      R13, 1, 1
	BRA         L_main165
	DECFSZ      R12, 1, 1
	BRA         L_main165
	DECFSZ      R11, 1, 1
	BRA         L_main165
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,342 :: 		veri3[0]=veri[0];veri3[1]=veri[1];veri3[2]=veri[2];veri3[3]=veri[3];veri3[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri3+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri3+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri3+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri3+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri3+4 
;NeuroSound_V2.c,343 :: 		veri3[5]=veri[5];veri3[6]=veri[6];veri3[7]=veri[7];veri3[8]=veri[8];veri3[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri3+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri3+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri3+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri3+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri3+9 
;NeuroSound_V2.c,344 :: 		nn=1;  dd[0]= veri3[1];     seyans=3;
	MOVLW       1
	MOVWF       _nn+0 
	MOVLW       0
	MOVWF       _nn+1 
	MOVF        _veri3+1, 0 
	MOVWF       _dd+0 
	MOVLW       3
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
;NeuroSound_V2.c,345 :: 		}
L_main164:
;NeuroSound_V2.c,346 :: 		if(veri[1]=='4'){RC1_bit=1;delay_ms(100);RC1_bit=0;
	MOVF        _veri+1, 0 
	XORLW       52
	BTFSS       STATUS+0, 2 
	GOTO        L_main166
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main167:
	DECFSZ      R13, 1, 1
	BRA         L_main167
	DECFSZ      R12, 1, 1
	BRA         L_main167
	DECFSZ      R11, 1, 1
	BRA         L_main167
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,347 :: 		veri4[0]=veri[0];veri4[1]=veri[1];veri4[2]=veri[2];veri4[3]=veri[3];veri4[4]=veri[4];
	MOVF        _veri+0, 0 
	MOVWF       _veri4+0 
	MOVF        _veri+1, 0 
	MOVWF       _veri4+1 
	MOVF        _veri+2, 0 
	MOVWF       _veri4+2 
	MOVF        _veri+3, 0 
	MOVWF       _veri4+3 
	MOVF        _veri+4, 0 
	MOVWF       _veri4+4 
;NeuroSound_V2.c,348 :: 		veri4[5]=veri[5];veri4[6]=veri[6];veri4[7]=veri[7];veri4[8]=veri[8];veri4[9]=veri[9];
	MOVF        _veri+5, 0 
	MOVWF       _veri4+5 
	MOVF        _veri+6, 0 
	MOVWF       _veri4+6 
	MOVF        _veri+7, 0 
	MOVWF       _veri4+7 
	MOVF        _veri+8, 0 
	MOVWF       _veri4+8 
	MOVF        _veri+9, 0 
	MOVWF       _veri4+9 
;NeuroSound_V2.c,349 :: 		seyans=4; aa=1;
	MOVLW       4
	MOVWF       _seyans+0 
	MOVLW       0
	MOVWF       _seyans+1 
	MOVLW       1
	MOVWF       _aa+0 
	MOVLW       0
	MOVWF       _aa+1 
;NeuroSound_V2.c,350 :: 		}
L_main166:
;NeuroSound_V2.c,351 :: 		k=0;
	CLRF        _k+0 
	CLRF        _k+1 
;NeuroSound_V2.c,352 :: 		}
L_main155:
;NeuroSound_V2.c,354 :: 		if(tus==2 && seyans!=0 && bslt==1){delay_ms(150);gln=1; bslt=0; sure1=0;saat=60;saat1=120;RC1_bit=1;delay_ms(100);
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main499
	MOVLW       2
	XORWF       _tus+0, 0 
L__main499:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
	MOVLW       0
	XORWF       _seyans+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main500
	MOVLW       0
	XORWF       _seyans+0, 0 
L__main500:
	BTFSC       STATUS+0, 2 
	GOTO        L_main170
	MOVLW       0
	XORWF       _bslt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main501
	MOVLW       1
	XORWF       _bslt+0, 0 
L__main501:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
L__main404:
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main171:
	DECFSZ      R13, 1, 1
	BRA         L_main171
	DECFSZ      R12, 1, 1
	BRA         L_main171
	DECFSZ      R11, 1, 1
	BRA         L_main171
	MOVLW       1
	MOVWF       _gln+0 
	MOVLW       0
	MOVWF       _gln+1 
	CLRF        _bslt+0 
	CLRF        _bslt+1 
	CLRF        _sure1+0 
	CLRF        _sure1+1 
	MOVLW       60
	MOVWF       _saat+0 
	MOVLW       0
	MOVWF       _saat+1 
	MOVLW       120
	MOVWF       _saat1+0 
	MOVLW       0
	MOVWF       _saat1+1 
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main172:
	DECFSZ      R13, 1, 1
	BRA         L_main172
	DECFSZ      R12, 1, 1
	BRA         L_main172
	DECFSZ      R11, 1, 1
	BRA         L_main172
	NOP
;NeuroSound_V2.c,355 :: 		RC1_bit=0;uyari1=1;uyari2=1;uyari3=1;uyari4=1; sayac=0;sure=0;
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       1
	MOVWF       _uyari1+0 
	MOVLW       0
	MOVWF       _uyari1+1 
	MOVLW       1
	MOVWF       _uyari2+0 
	MOVLW       0
	MOVWF       _uyari2+1 
	MOVLW       1
	MOVWF       _uyari3+0 
	MOVLW       0
	MOVWF       _uyari3+1 
	MOVLW       1
	MOVWF       _uyari4+0 
	MOVLW       0
	MOVWF       _uyari4+1 
	CLRF        _sayac+0 
	CLRF        _sayac+1 
	CLRF        _sure+0 
	CLRF        _sure+1 
;NeuroSound_V2.c,356 :: 		menu_kontrol=2; PIE1=0b00000000; PIE3=0b00000000;
	MOVLW       2
	MOVWF       _menu_kontrol+0 
	MOVLW       0
	MOVWF       _menu_kontrol+1 
	CLRF        PIE1+0 
	CLRF        PIE3+0 
;NeuroSound_V2.c,357 :: 		}
L_main170:
;NeuroSound_V2.c,358 :: 		if(gln==1 && veri1[1]!='0'){
	MOVLW       0
	XORWF       _gln+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main502
	MOVLW       1
	XORWF       _gln+0, 0 
L__main502:
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
	MOVF        _veri1+1, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L_main175
L__main403:
;NeuroSound_V2.c,359 :: 		if(asmart==0){asmart=1; smart=0;}
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main503
	MOVLW       0
	XORWF       _asmart+0, 0 
L__main503:
	BTFSS       STATUS+0, 2 
	GOTO        L_main176
	MOVLW       1
	MOVWF       _asmart+0 
	MOVLW       0
	MOVWF       _asmart+1 
	CLRF        _smart+0 
	CLRF        _smart+1 
L_main176:
;NeuroSound_V2.c,360 :: 		if((asmart==1) && (smart<2)){ if(kanal1>652){ RE2_bit=1; }}
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main504
	MOVLW       1
	XORWF       _asmart+0, 0 
L__main504:
	BTFSS       STATUS+0, 2 
	GOTO        L_main179
	MOVLW       128
	XORWF       _smart+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main505
	MOVLW       2
	SUBWF       _smart+0, 0 
L__main505:
	BTFSC       STATUS+0, 0 
	GOTO        L_main179
L__main402:
	MOVF        _kanal1+1, 0 
	SUBLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__main506
	MOVF        _kanal1+0, 0 
	SUBLW       140
L__main506:
	BTFSC       STATUS+0, 0 
	GOTO        L_main180
	BSF         RE2_bit+0, BitPos(RE2_bit+0) 
L_main180:
L_main179:
;NeuroSound_V2.c,361 :: 		if((smart>=3) && (asmart==1)){ asmart=0; smart=0;RE2_bit=0;}
	MOVLW       128
	XORWF       _smart+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main507
	MOVLW       3
	SUBWF       _smart+0, 0 
L__main507:
	BTFSS       STATUS+0, 0 
	GOTO        L_main183
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main508
	MOVLW       1
	XORWF       _asmart+0, 0 
L__main508:
	BTFSS       STATUS+0, 2 
	GOTO        L_main183
L__main401:
	CLRF        _asmart+0 
	CLRF        _asmart+1 
	CLRF        _smart+0 
	CLRF        _smart+1 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
L_main183:
;NeuroSound_V2.c,362 :: 		if(zaman>8 && ak==0){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _zaman+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main509
	MOVF        _zaman+0, 0 
	SUBLW       8
L__main509:
	BTFSC       STATUS+0, 0 
	GOTO        L_main186
	MOVLW       0
	XORWF       _ak+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main510
	MOVLW       0
	XORWF       _ak+0, 0 
L__main510:
	BTFSS       STATUS+0, 2 
	GOTO        L_main186
L__main400:
;NeuroSound_V2.c,363 :: 		AD5206_Pot1(2, 240); AD5206_Pot1(4, 240);AD5206_Pot1(0, 240);
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,364 :: 		AD5206_Pot1(1, 240); AD5206_Pot1(3, 240);AD5206_Pot1(5, 240);delay_ms(1000);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main187:
	DECFSZ      R13, 1, 1
	BRA         L_main187
	DECFSZ      R12, 1, 1
	BRA         L_main187
	DECFSZ      R11, 1, 1
	BRA         L_main187
	NOP
	NOP
;NeuroSound_V2.c,365 :: 		ak=1;zaman=0;
	MOVLW       1
	MOVWF       _ak+0 
	MOVLW       0
	MOVWF       _ak+1 
	CLRF        _zaman+0 
	CLRF        _zaman+1 
;NeuroSound_V2.c,366 :: 		}
L_main186:
;NeuroSound_V2.c,367 :: 		if(zaman>2 && ak==1){AD5206_Pot1(2, volume); AD5206_Pot1(4, volume1);  zaman=0;ak=0;}
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _zaman+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main511
	MOVF        _zaman+0, 0 
	SUBLW       2
L__main511:
	BTFSC       STATUS+0, 0 
	GOTO        L_main190
	MOVLW       0
	XORWF       _ak+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main512
	MOVLW       1
	XORWF       _ak+0, 0 
L__main512:
	BTFSS       STATUS+0, 2 
	GOTO        L_main190
L__main399:
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	CLRF        _zaman+0 
	CLRF        _zaman+1 
	CLRF        _ak+0 
	CLRF        _ak+1 
L_main190:
;NeuroSound_V2.c,368 :: 		if (seyans==2 && nn==0){ IntToStr(saat, txt1);  Lcd_Out(2,6,txt1);
	MOVLW       0
	XORWF       _seyans+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main513
	MOVLW       2
	XORWF       _seyans+0, 0 
L__main513:
	BTFSS       STATUS+0, 2 
	GOTO        L_main193
	MOVLW       0
	XORWF       _nn+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main514
	MOVLW       0
	XORWF       _nn+0, 0 
L__main514:
	BTFSS       STATUS+0, 2 
	GOTO        L_main193
L__main398:
	MOVF        _saat+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _saat+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt1+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt1+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,369 :: 		if(saat>30 && saat<=60 && veri1[1]=='1'){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main515
	MOVF        _saat+0, 0 
	SUBLW       30
L__main515:
	BTFSC       STATUS+0, 0 
	GOTO        L_main196
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main516
	MOVF        _saat+0, 0 
	SUBLW       60
L__main516:
	BTFSS       STATUS+0, 0 
	GOTO        L_main196
	MOVF        _veri1+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main196
L__main397:
;NeuroSound_V2.c,370 :: 		if(uyari1==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari1=0;}
	MOVLW       0
	XORWF       _uyari1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main517
	MOVLW       1
	XORWF       _uyari1+0, 0 
L__main517:
	BTFSS       STATUS+0, 2 
	GOTO        L_main197
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main198:
	DECFSZ      R13, 1, 1
	BRA         L_main198
	DECFSZ      R12, 1, 1
	BRA         L_main198
	DECFSZ      R11, 1, 1
	BRA         L_main198
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari1+0 
	CLRF        _uyari1+1 
L_main197:
;NeuroSound_V2.c,371 :: 		gelen[2]=veri1[2];gelen[3]=veri1[3];gelen[4]=veri1[4];gelen[5]=veri1[5];
	MOVF        _veri1+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri1+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri1+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri1+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,372 :: 		gelen[6]=veri1[6];gelen[7]=veri1[7];gelen[8]=veri1[8];gelen[9]=veri1[9];
	MOVF        _veri1+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri1+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri1+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri1+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,373 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,374 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main199
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main199:
;NeuroSound_V2.c,375 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main200
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main200:
;NeuroSound_V2.c,376 :: 		Lcd_Out(1,4,"1/2 seans");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,377 :: 		}
L_main196:
;NeuroSound_V2.c,378 :: 		if(saat<=30 && veri2[1]=='2'){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main518
	MOVF        _saat+0, 0 
	SUBLW       30
L__main518:
	BTFSS       STATUS+0, 0 
	GOTO        L_main203
	MOVF        _veri2+1, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main203
L__main396:
;NeuroSound_V2.c,379 :: 		if(uyari2==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari2=0;}
	MOVLW       0
	XORWF       _uyari2+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main519
	MOVLW       1
	XORWF       _uyari2+0, 0 
L__main519:
	BTFSS       STATUS+0, 2 
	GOTO        L_main204
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main205:
	DECFSZ      R13, 1, 1
	BRA         L_main205
	DECFSZ      R12, 1, 1
	BRA         L_main205
	DECFSZ      R11, 1, 1
	BRA         L_main205
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari2+0 
	CLRF        _uyari2+1 
L_main204:
;NeuroSound_V2.c,380 :: 		gelen[2]=veri2[2];gelen[3]=veri2[3];gelen[4]=veri2[4];gelen[5]=veri2[5];
	MOVF        _veri2+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri2+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri2+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri2+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,381 :: 		gelen[6]=veri2[6];gelen[7]=veri2[7];gelen[8]=veri2[8];gelen[9]=veri2[9];
	MOVF        _veri2+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri2+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri2+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri2+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,382 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,383 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main206
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main206:
;NeuroSound_V2.c,384 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main207
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main207:
;NeuroSound_V2.c,385 :: 		Lcd_Out(1,4,"2/2 seans");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,386 :: 		}
L_main203:
;NeuroSound_V2.c,387 :: 		if((dd[0]!='3')&&(saat==0) && (nn!=1)){/*PWM1_Set_Duty(lcd_pwm);*/
	MOVF        _dd+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L_main210
	MOVLW       0
	XORWF       _saat+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main520
	MOVLW       0
	XORWF       _saat+0, 0 
L__main520:
	BTFSS       STATUS+0, 2 
	GOTO        L_main210
	MOVLW       0
	XORWF       _nn+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main521
	MOVLW       1
	XORWF       _nn+0, 0 
L__main521:
	BTFSC       STATUS+0, 2 
	GOTO        L_main210
L__main395:
;NeuroSound_V2.c,388 :: 		RE1_bit=0; RE2_bit=0;RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=0;
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
;NeuroSound_V2.c,389 :: 		gln=0; nn=0;dd[0]=0; bslt=1;
	CLRF        _gln+0 
	CLRF        _gln+1 
	CLRF        _nn+0 
	CLRF        _nn+1 
	CLRF        _dd+0 
	MOVLW       1
	MOVWF       _bslt+0 
	MOVLW       0
	MOVWF       _bslt+1 
;NeuroSound_V2.c,390 :: 		gelen[0]='0'; gelen[1]='0';gelen[2]='0';gelen[3]='0';gelen[4]='0';
	MOVLW       48
	MOVWF       _gelen+0 
	MOVLW       48
	MOVWF       _gelen+1 
	MOVLW       48
	MOVWF       _gelen+2 
	MOVLW       48
	MOVWF       _gelen+3 
	MOVLW       48
	MOVWF       _gelen+4 
;NeuroSound_V2.c,391 :: 		gelen[5]='0';gelen[6]='0';gelen[7]='0';gelen[8]='0';gelen[9]='0';
	MOVLW       48
	MOVWF       _gelen+5 
	MOVLW       48
	MOVWF       _gelen+6 
	MOVLW       48
	MOVWF       _gelen+7 
	MOVLW       48
	MOVWF       _gelen+8 
	MOVLW       48
	MOVWF       _gelen+9 
;NeuroSound_V2.c,392 :: 		veri1[1]='0';veri2[1]='0';   RC1_bit=1; delay_ms(250);RC1_bit=0;
	MOVLW       48
	MOVWF       _veri1+1 
	MOVLW       48
	MOVWF       _veri2+1 
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main211:
	DECFSZ      R13, 1, 1
	BRA         L_main211
	DECFSZ      R12, 1, 1
	BRA         L_main211
	DECFSZ      R11, 1, 1
	BRA         L_main211
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,393 :: 		sure1=0;Lcd_Cmd(_LCD_CLEAR); Lcd_Out(1,6,"SEANS");Lcd_Out(2,6,"BITTI");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,5,"N.SOUND");
	CLRF        _sure1+0 
	CLRF        _sure1+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main212:
	DECFSZ      R13, 1, 1
	BRA         L_main212
	DECFSZ      R12, 1, 1
	BRA         L_main212
	DECFSZ      R11, 1, 1
	BRA         L_main212
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,395 :: 		PIE1=0b00100000; PIE3=0b00100000; menu_kontrol=0;
	MOVLW       32
	MOVWF       PIE1+0 
	MOVLW       32
	MOVWF       PIE3+0 
	CLRF        _menu_kontrol+0 
	CLRF        _menu_kontrol+1 
;NeuroSound_V2.c,396 :: 		}
L_main210:
;NeuroSound_V2.c,397 :: 		}
L_main193:
;NeuroSound_V2.c,398 :: 		if (seyans==4){
	MOVLW       0
	XORWF       _seyans+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main522
	MOVLW       4
	XORWF       _seyans+0, 0 
L__main522:
	BTFSS       STATUS+0, 2 
	GOTO        L_main213
;NeuroSound_V2.c,399 :: 		if(asmart==0){asmart=1; smart=0;}
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main523
	MOVLW       0
	XORWF       _asmart+0, 0 
L__main523:
	BTFSS       STATUS+0, 2 
	GOTO        L_main214
	MOVLW       1
	MOVWF       _asmart+0 
	MOVLW       0
	MOVWF       _asmart+1 
	CLRF        _smart+0 
	CLRF        _smart+1 
L_main214:
;NeuroSound_V2.c,400 :: 		if((asmart==1) && (smart<2)){ if(kanal1>652 ){ RE2_bit=1; }}
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main524
	MOVLW       1
	XORWF       _asmart+0, 0 
L__main524:
	BTFSS       STATUS+0, 2 
	GOTO        L_main217
	MOVLW       128
	XORWF       _smart+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main525
	MOVLW       2
	SUBWF       _smart+0, 0 
L__main525:
	BTFSC       STATUS+0, 0 
	GOTO        L_main217
L__main394:
	MOVF        _kanal1+1, 0 
	SUBLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__main526
	MOVF        _kanal1+0, 0 
	SUBLW       140
L__main526:
	BTFSC       STATUS+0, 0 
	GOTO        L_main218
	BSF         RE2_bit+0, BitPos(RE2_bit+0) 
L_main218:
L_main217:
;NeuroSound_V2.c,401 :: 		if((smart>=3) && (asmart==1)){ asmart=0; smart=0;RE2_bit=0;}
	MOVLW       128
	XORWF       _smart+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main527
	MOVLW       3
	SUBWF       _smart+0, 0 
L__main527:
	BTFSS       STATUS+0, 0 
	GOTO        L_main221
	MOVLW       0
	XORWF       _asmart+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main528
	MOVLW       1
	XORWF       _asmart+0, 0 
L__main528:
	BTFSS       STATUS+0, 2 
	GOTO        L_main221
L__main393:
	CLRF        _asmart+0 
	CLRF        _asmart+1 
	CLRF        _smart+0 
	CLRF        _smart+1 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
L_main221:
;NeuroSound_V2.c,402 :: 		if(zaman>8 && ak==0){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _zaman+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main529
	MOVF        _zaman+0, 0 
	SUBLW       8
L__main529:
	BTFSC       STATUS+0, 0 
	GOTO        L_main224
	MOVLW       0
	XORWF       _ak+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main530
	MOVLW       0
	XORWF       _ak+0, 0 
L__main530:
	BTFSS       STATUS+0, 2 
	GOTO        L_main224
L__main392:
;NeuroSound_V2.c,403 :: 		AD5206_Pot1(2, 240); AD5206_Pot1(4, 240);AD5206_Pot1(0, 240);
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,404 :: 		AD5206_Pot1(1, 240); AD5206_Pot1(3, 240);AD5206_Pot1(5, 240);delay_ms(1000);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       240
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main225:
	DECFSZ      R13, 1, 1
	BRA         L_main225
	DECFSZ      R12, 1, 1
	BRA         L_main225
	DECFSZ      R11, 1, 1
	BRA         L_main225
	NOP
	NOP
;NeuroSound_V2.c,405 :: 		ak=1;zaman=0;
	MOVLW       1
	MOVWF       _ak+0 
	MOVLW       0
	MOVWF       _ak+1 
	CLRF        _zaman+0 
	CLRF        _zaman+1 
;NeuroSound_V2.c,406 :: 		}
L_main224:
;NeuroSound_V2.c,407 :: 		if(zaman>2 && ak==1){AD5206_Pot1(2, volume); AD5206_Pot1(4, volume1);  zaman=0;ak=0;}
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _zaman+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main531
	MOVF        _zaman+0, 0 
	SUBLW       2
L__main531:
	BTFSC       STATUS+0, 0 
	GOTO        L_main228
	MOVLW       0
	XORWF       _ak+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main532
	MOVLW       1
	XORWF       _ak+0, 0 
L__main532:
	BTFSS       STATUS+0, 2 
	GOTO        L_main228
L__main391:
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _volume1+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	CLRF        _zaman+0 
	CLRF        _zaman+1 
	CLRF        _ak+0 
	CLRF        _ak+1 
L_main228:
;NeuroSound_V2.c,408 :: 		IntToStr(saat1, txt1);  Lcd_Out(2,6,txt1);
	MOVF        _saat1+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _saat1+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt1+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt1+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,409 :: 		if(saat1>90 && saat1<=120 && veri1[1]=='1'){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main533
	MOVF        _saat1+0, 0 
	SUBLW       90
L__main533:
	BTFSC       STATUS+0, 0 
	GOTO        L_main231
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main534
	MOVF        _saat1+0, 0 
	SUBLW       120
L__main534:
	BTFSS       STATUS+0, 0 
	GOTO        L_main231
	MOVF        _veri1+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main231
L__main390:
;NeuroSound_V2.c,410 :: 		if(uyari1==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari1=0;}
	MOVLW       0
	XORWF       _uyari1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main535
	MOVLW       1
	XORWF       _uyari1+0, 0 
L__main535:
	BTFSS       STATUS+0, 2 
	GOTO        L_main232
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main233:
	DECFSZ      R13, 1, 1
	BRA         L_main233
	DECFSZ      R12, 1, 1
	BRA         L_main233
	DECFSZ      R11, 1, 1
	BRA         L_main233
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari1+0 
	CLRF        _uyari1+1 
L_main232:
;NeuroSound_V2.c,411 :: 		gelen[2]=veri1[2];gelen[3]=veri1[3];gelen[4]=veri1[4];gelen[5]=veri1[5];
	MOVF        _veri1+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri1+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri1+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri1+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,412 :: 		gelen[6]=veri1[6];gelen[7]=veri1[7];gelen[8]=veri1[8];gelen[9]=veri1[9];
	MOVF        _veri1+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri1+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri1+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri1+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,413 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,414 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main234
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main234:
;NeuroSound_V2.c,415 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main235
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main235:
;NeuroSound_V2.c,416 :: 		Lcd_Out(1,4,"1/4 seans");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,417 :: 		}
L_main231:
;NeuroSound_V2.c,418 :: 		if(saat1>60 && saat1<=90 && veri2[1]=='2'){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main536
	MOVF        _saat1+0, 0 
	SUBLW       60
L__main536:
	BTFSC       STATUS+0, 0 
	GOTO        L_main238
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main537
	MOVF        _saat1+0, 0 
	SUBLW       90
L__main537:
	BTFSS       STATUS+0, 0 
	GOTO        L_main238
	MOVF        _veri2+1, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main238
L__main389:
;NeuroSound_V2.c,419 :: 		if(uyari2==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari2=0;}
	MOVLW       0
	XORWF       _uyari2+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main538
	MOVLW       1
	XORWF       _uyari2+0, 0 
L__main538:
	BTFSS       STATUS+0, 2 
	GOTO        L_main239
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main240:
	DECFSZ      R13, 1, 1
	BRA         L_main240
	DECFSZ      R12, 1, 1
	BRA         L_main240
	DECFSZ      R11, 1, 1
	BRA         L_main240
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari2+0 
	CLRF        _uyari2+1 
L_main239:
;NeuroSound_V2.c,420 :: 		gelen[2]=veri2[2];gelen[3]=veri2[3];gelen[4]=veri2[4];gelen[5]=veri2[5];
	MOVF        _veri2+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri2+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri2+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri2+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,421 :: 		gelen[6]=veri2[6];gelen[7]=veri2[7];gelen[8]=veri2[8];gelen[9]=veri2[9];
	MOVF        _veri2+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri2+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri2+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri2+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,422 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,423 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main241
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main241:
;NeuroSound_V2.c,424 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main242
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main242:
;NeuroSound_V2.c,425 :: 		Lcd_Out(1,4,"2/4 seans");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,426 :: 		}
L_main238:
;NeuroSound_V2.c,427 :: 		if((saat1>30) && (saat1<=60) && (nn==1) ){ Lcd_Out(1,4,"3/4 seans");
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main539
	MOVF        _saat1+0, 0 
	SUBLW       30
L__main539:
	BTFSC       STATUS+0, 0 
	GOTO        L_main245
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main540
	MOVF        _saat1+0, 0 
	SUBLW       60
L__main540:
	BTFSS       STATUS+0, 0 
	GOTO        L_main245
	MOVLW       0
	XORWF       _nn+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main541
	MOVLW       1
	XORWF       _nn+0, 0 
L__main541:
	BTFSS       STATUS+0, 2 
	GOTO        L_main245
L__main388:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,428 :: 		if(uyari3==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari3=0;}
	MOVLW       0
	XORWF       _uyari3+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main542
	MOVLW       1
	XORWF       _uyari3+0, 0 
L__main542:
	BTFSS       STATUS+0, 2 
	GOTO        L_main246
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main247:
	DECFSZ      R13, 1, 1
	BRA         L_main247
	DECFSZ      R12, 1, 1
	BRA         L_main247
	DECFSZ      R11, 1, 1
	BRA         L_main247
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari3+0 
	CLRF        _uyari3+1 
L_main246:
;NeuroSound_V2.c,429 :: 		gelen[2]=veri3[2];gelen[3]=veri3[3];gelen[4]=veri3[4];gelen[5]=veri3[5];
	MOVF        _veri3+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri3+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri3+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri3+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,430 :: 		gelen[6]=veri3[6];gelen[7]=veri3[7];gelen[8]=veri3[8];gelen[9]=veri3[9];
	MOVF        _veri3+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri3+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri3+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri3+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,431 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,432 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main248
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main248:
;NeuroSound_V2.c,433 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main249
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main249:
;NeuroSound_V2.c,435 :: 		}
L_main245:
;NeuroSound_V2.c,437 :: 		if(saat1<=30 && nn==1 && veri4[1]=='4'){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _saat1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main543
	MOVF        _saat1+0, 0 
	SUBLW       30
L__main543:
	BTFSS       STATUS+0, 0 
	GOTO        L_main252
	MOVLW       0
	XORWF       _nn+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main544
	MOVLW       1
	XORWF       _nn+0, 0 
L__main544:
	BTFSS       STATUS+0, 2 
	GOTO        L_main252
	MOVF        _veri4+1, 0 
	XORLW       52
	BTFSS       STATUS+0, 2 
	GOTO        L_main252
L__main387:
;NeuroSound_V2.c,438 :: 		if(uyari4==1){RC1_bit=1;delay_ms(100);RC1_bit=0;uyari4=0;}
	MOVLW       0
	XORWF       _uyari4+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main545
	MOVLW       1
	XORWF       _uyari4+0, 0 
L__main545:
	BTFSS       STATUS+0, 2 
	GOTO        L_main253
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main254:
	DECFSZ      R13, 1, 1
	BRA         L_main254
	DECFSZ      R12, 1, 1
	BRA         L_main254
	DECFSZ      R11, 1, 1
	BRA         L_main254
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _uyari4+0 
	CLRF        _uyari4+1 
L_main253:
;NeuroSound_V2.c,439 :: 		gelen[2]=veri4[2];gelen[3]=veri4[3];gelen[4]=veri4[4];gelen[5]=veri4[5];
	MOVF        _veri4+2, 0 
	MOVWF       _gelen+2 
	MOVF        _veri4+3, 0 
	MOVWF       _gelen+3 
	MOVF        _veri4+4, 0 
	MOVWF       _gelen+4 
	MOVF        _veri4+5, 0 
	MOVWF       _gelen+5 
;NeuroSound_V2.c,440 :: 		gelen[6]=veri4[6];gelen[7]=veri4[7];gelen[8]=veri4[8];gelen[9]=veri4[9];
	MOVF        _veri4+6, 0 
	MOVWF       _gelen+6 
	MOVF        _veri4+7, 0 
	MOVWF       _gelen+7 
	MOVF        _veri4+8, 0 
	MOVWF       _gelen+8 
	MOVF        _veri4+9, 0 
	MOVWF       _gelen+9 
;NeuroSound_V2.c,441 :: 		protokol();
	CALL        _protokol+0, 0
;NeuroSound_V2.c,442 :: 		if(gelen[6]=='N'){ syc=1;RE1_bit=1;CustomChar8();PWM1_Set_Duty(0);}
	MOVF        _gelen+6, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main255
	MOVLW       1
	MOVWF       _syc+0 
	MOVLW       0
	MOVWF       _syc+1 
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar8+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main255:
;NeuroSound_V2.c,443 :: 		if(gelen[6]=='O'){ RE1_bit=0; CustomChar9();syc=0;PWM1_Set_Duty(lcd_pwm);}
	MOVF        _gelen+6, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main256
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	CALL        _CustomChar9+0, 0
	CLRF        _syc+0 
	CLRF        _syc+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
L_main256:
;NeuroSound_V2.c,444 :: 		Lcd_Out(1,4,"4/4 seans");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,445 :: 		}
L_main252:
;NeuroSound_V2.c,446 :: 		if(saat1==0&&nn==1){/*PWM1_Set_Duty(lcd_pwm);*/
	MOVLW       0
	XORWF       _saat1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main546
	MOVLW       0
	XORWF       _saat1+0, 0 
L__main546:
	BTFSS       STATUS+0, 2 
	GOTO        L_main259
	MOVLW       0
	XORWF       _nn+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main547
	MOVLW       1
	XORWF       _nn+0, 0 
L__main547:
	BTFSS       STATUS+0, 2 
	GOTO        L_main259
L__main386:
;NeuroSound_V2.c,447 :: 		RE1_bit=0; RE2_bit=0;RE3_bit=0; RE4_bit=0;RE5_bit=0; RE6_bit=0;RE7_bit=0;
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
;NeuroSound_V2.c,448 :: 		gln=0; dd[0]=0;nn=0; bslt=1;
	CLRF        _gln+0 
	CLRF        _gln+1 
	CLRF        _dd+0 
	CLRF        _nn+0 
	CLRF        _nn+1 
	MOVLW       1
	MOVWF       _bslt+0 
	MOVLW       0
	MOVWF       _bslt+1 
;NeuroSound_V2.c,453 :: 		gelen[0]='0'; gelen[1]='0';gelen[2]='0';gelen[3]='0';gelen[4]='0';
	MOVLW       48
	MOVWF       _gelen+0 
	MOVLW       48
	MOVWF       _gelen+1 
	MOVLW       48
	MOVWF       _gelen+2 
	MOVLW       48
	MOVWF       _gelen+3 
	MOVLW       48
	MOVWF       _gelen+4 
;NeuroSound_V2.c,454 :: 		gelen[5]='0';gelen[6]='0';gelen[7]='0';gelen[8]='0';gelen[9]='0';
	MOVLW       48
	MOVWF       _gelen+5 
	MOVLW       48
	MOVWF       _gelen+6 
	MOVLW       48
	MOVWF       _gelen+7 
	MOVLW       48
	MOVWF       _gelen+8 
	MOVLW       48
	MOVWF       _gelen+9 
;NeuroSound_V2.c,455 :: 		veri1[1]='0';veri2[1]='0';veri3[1]='0';veri4[1]='0';RC1_bit=1; delay_ms(250);RC1_bit=0;
	MOVLW       48
	MOVWF       _veri1+1 
	MOVLW       48
	MOVWF       _veri2+1 
	MOVLW       48
	MOVWF       _veri3+1 
	MOVLW       48
	MOVWF       _veri4+1 
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main260:
	DECFSZ      R13, 1, 1
	BRA         L_main260
	DECFSZ      R12, 1, 1
	BRA         L_main260
	DECFSZ      R11, 1, 1
	BRA         L_main260
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,456 :: 		sure1=0; Lcd_Cmd(_LCD_CLEAR); Lcd_Out(1,6,"SEANS");Lcd_Out(2,6,"BITTI");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,5,"N.SOUND");
	CLRF        _sure1+0 
	CLRF        _sure1+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr47_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr47_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr48_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr48_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main261:
	DECFSZ      R13, 1, 1
	BRA         L_main261
	DECFSZ      R12, 1, 1
	BRA         L_main261
	DECFSZ      R11, 1, 1
	BRA         L_main261
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr49_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr49_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,458 :: 		PIE1=0b00100000; PIE3=0b00100000;  menu_kontrol=0;
	MOVLW       32
	MOVWF       PIE1+0 
	MOVLW       32
	MOVWF       PIE3+0 
	CLRF        _menu_kontrol+0 
	CLRF        _menu_kontrol+1 
;NeuroSound_V2.c,459 :: 		}
L_main259:
;NeuroSound_V2.c,460 :: 		}
L_main213:
;NeuroSound_V2.c,461 :: 		}
L_main175:
;NeuroSound_V2.c,463 :: 		if(syc==0){ CustomChar9();}
	MOVLW       0
	XORWF       _syc+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main548
	MOVLW       0
	XORWF       _syc+0, 0 
L__main548:
	BTFSS       STATUS+0, 2 
	GOTO        L_main262
	CALL        _CustomChar9+0, 0
L_main262:
;NeuroSound_V2.c,468 :: 		if(kanal2>800 &&kanal2<=845){CustomChar1();}
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main549
	MOVF        _kanal2+0, 0 
	SUBLW       32
L__main549:
	BTFSC       STATUS+0, 0 
	GOTO        L_main265
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main550
	MOVF        _kanal2+0, 0 
	SUBLW       77
L__main550:
	BTFSS       STATUS+0, 0 
	GOTO        L_main265
L__main385:
	CALL        _CustomChar1+0, 0
L_main265:
;NeuroSound_V2.c,469 :: 		if(kanal2>845 &&kanal2<=890){CustomChar2();}
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main551
	MOVF        _kanal2+0, 0 
	SUBLW       77
L__main551:
	BTFSC       STATUS+0, 0 
	GOTO        L_main268
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main552
	MOVF        _kanal2+0, 0 
	SUBLW       122
L__main552:
	BTFSS       STATUS+0, 0 
	GOTO        L_main268
L__main384:
	CALL        _CustomChar2+0, 0
L_main268:
;NeuroSound_V2.c,470 :: 		if(kanal2>890 &&kanal2<=935){CustomChar3();}
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main553
	MOVF        _kanal2+0, 0 
	SUBLW       122
L__main553:
	BTFSC       STATUS+0, 0 
	GOTO        L_main271
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main554
	MOVF        _kanal2+0, 0 
	SUBLW       167
L__main554:
	BTFSS       STATUS+0, 0 
	GOTO        L_main271
L__main383:
	CALL        _CustomChar3+0, 0
L_main271:
;NeuroSound_V2.c,471 :: 		if(kanal2>935 &&kanal2<=980){CustomChar4();}
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main555
	MOVF        _kanal2+0, 0 
	SUBLW       167
L__main555:
	BTFSC       STATUS+0, 0 
	GOTO        L_main274
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main556
	MOVF        _kanal2+0, 0 
	SUBLW       212
L__main556:
	BTFSS       STATUS+0, 0 
	GOTO        L_main274
L__main382:
	CALL        _CustomChar4+0, 0
L_main274:
;NeuroSound_V2.c,472 :: 		if(kanal2>980 &&kanal2<=1023){CustomChar5();}
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main557
	MOVF        _kanal2+0, 0 
	SUBLW       212
L__main557:
	BTFSC       STATUS+0, 0 
	GOTO        L_main277
	MOVF        _kanal2+1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__main558
	MOVF        _kanal2+0, 0 
	SUBLW       255
L__main558:
	BTFSS       STATUS+0, 0 
	GOTO        L_main277
L__main381:
	CALL        _CustomChar5+0, 0
L_main277:
;NeuroSound_V2.c,477 :: 		if (tus==8 && menu_kontrol==0 ){Lcd_Cmd(_LCD_CLEAR);delay_ms(100);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main559
	MOVLW       8
	XORWF       _tus+0, 0 
L__main559:
	BTFSS       STATUS+0, 2 
	GOTO        L_main280
	MOVLW       0
	XORWF       _menu_kontrol+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main560
	MOVLW       0
	XORWF       _menu_kontrol+0, 0 
L__main560:
	BTFSS       STATUS+0, 2 
	GOTO        L_main280
L__main380:
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main281:
	DECFSZ      R13, 1, 1
	BRA         L_main281
	DECFSZ      R12, 1, 1
	BRA         L_main281
	DECFSZ      R11, 1, 1
	BRA         L_main281
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	BTFSC       _bip_data+0, 0 
	GOTO        L__main561
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main562
L__main561:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main562:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main282:
	DECFSZ      R13, 1, 1
	BRA         L_main282
	DECFSZ      R12, 1, 1
	BRA         L_main282
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
;NeuroSound_V2.c,478 :: 		Lcd_Out(1,1,"* Ayar Menusu *"); Lcd_Out(2,3,"<< -  + >>");// Lcd_Out(2,5,"v-  +^");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr50_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr50_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr51_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr51_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,479 :: 		menu_kontrol=1;
	MOVLW       1
	MOVWF       _menu_kontrol+0 
	MOVLW       0
	MOVWF       _menu_kontrol+1 
;NeuroSound_V2.c,480 :: 		while(menu_kontrol==1){
L_main283:
	MOVLW       0
	XORWF       _menu_kontrol+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main563
	MOVLW       1
	XORWF       _menu_kontrol+0, 0 
L__main563:
	BTFSS       STATUS+0, 2 
	GOTO        L_main284
;NeuroSound_V2.c,482 :: 		if (tus==9){delay_ms(120);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;menu=menu+1; if(menu>5){menu=5;} bekle: if (tus==6){goto bekle;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main564
	MOVLW       9
	XORWF       _tus+0, 0 
L__main564:
	BTFSS       STATUS+0, 2 
	GOTO        L_main285
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       56
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main286:
	DECFSZ      R13, 1, 1
	BRA         L_main286
	DECFSZ      R12, 1, 1
	BRA         L_main286
	DECFSZ      R11, 1, 1
	BRA         L_main286
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	BTFSC       _bip_data+0, 0 
	GOTO        L__main565
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main566
L__main565:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main566:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main287:
	DECFSZ      R13, 1, 1
	BRA         L_main287
	DECFSZ      R12, 1, 1
	BRA         L_main287
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	INFSNZ      _menu+0, 1 
	INCF        _menu+1, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _menu+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main567
	MOVF        _menu+0, 0 
	SUBLW       5
L__main567:
	BTFSC       STATUS+0, 0 
	GOTO        L_main288
	MOVLW       5
	MOVWF       _menu+0 
	MOVLW       0
	MOVWF       _menu+1 
L_main288:
___main_bekle:
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main568
	MOVLW       6
	XORWF       _tus+0, 0 
L__main568:
	BTFSS       STATUS+0, 2 
	GOTO        L_main289
	GOTO        ___main_bekle
L_main289:
L_main285:
;NeuroSound_V2.c,483 :: 		if (tus==7){delay_ms(120);Lcd_Cmd(_LCD_CLEAR);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;menu=menu-1; if(menu<=1){menu=1;} bekle1: if (tus==4){goto bekle1;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main569
	MOVLW       7
	XORWF       _tus+0, 0 
L__main569:
	BTFSS       STATUS+0, 2 
	GOTO        L_main290
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       56
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main291:
	DECFSZ      R13, 1, 1
	BRA         L_main291
	DECFSZ      R12, 1, 1
	BRA         L_main291
	DECFSZ      R11, 1, 1
	BRA         L_main291
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	BTFSC       _bip_data+0, 0 
	GOTO        L__main570
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main571
L__main570:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main571:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main292:
	DECFSZ      R13, 1, 1
	BRA         L_main292
	DECFSZ      R12, 1, 1
	BRA         L_main292
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       1
	SUBWF       _menu+0, 1 
	MOVLW       0
	SUBWFB      _menu+1, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _menu+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main572
	MOVF        _menu+0, 0 
	SUBLW       1
L__main572:
	BTFSS       STATUS+0, 0 
	GOTO        L_main293
	MOVLW       1
	MOVWF       _menu+0 
	MOVLW       0
	MOVWF       _menu+1 
L_main293:
___main_bekle1:
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main573
	MOVLW       4
	XORWF       _tus+0, 0 
L__main573:
	BTFSS       STATUS+0, 2 
	GOTO        L_main294
	GOTO        ___main_bekle1
L_main294:
L_main290:
;NeuroSound_V2.c,484 :: 		if (tus==1){while(tus<15){delay_us(15);}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main574
	MOVLW       1
	XORWF       _tus+0, 0 
L__main574:
	BTFSS       STATUS+0, 2 
	GOTO        L_main295
L_main296:
	MOVLW       128
	XORWF       _tus+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main575
	MOVLW       15
	SUBWF       _tus+0, 0 
L__main575:
	BTFSC       STATUS+0, 0 
	GOTO        L_main297
	MOVLW       9
	MOVWF       R13, 0
L_main298:
	DECFSZ      R13, 1, 1
	BRA         L_main298
	NOP
	NOP
	GOTO        L_main296
L_main297:
;NeuroSound_V2.c,485 :: 		menu=0; RC1_bit=bip_data;delay_ms(100);RC1_bit=0;menu_kontrol=0;
	CLRF        _menu+0 
	CLRF        _menu+1 
	BTFSC       _bip_data+0, 0 
	GOTO        L__main576
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main577
L__main576:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main577:
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main299:
	DECFSZ      R13, 1, 1
	BRA         L_main299
	DECFSZ      R12, 1, 1
	BRA         L_main299
	DECFSZ      R11, 1, 1
	BRA         L_main299
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	CLRF        _menu_kontrol+0 
	CLRF        _menu_kontrol+1 
;NeuroSound_V2.c,486 :: 		Lcd_Out(1,1,"                ");delay_ms(50);Lcd_Out(2,1,"                ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr52_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr52_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main300:
	DECFSZ      R13, 1, 1
	BRA         L_main300
	DECFSZ      R12, 1, 1
	BRA         L_main300
	NOP
	NOP
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr53_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr53_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,487 :: 		delay_ms(50); Lcd_Out(1,5,"N.SOUND");
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main301:
	DECFSZ      R13, 1, 1
	BRA         L_main301
	DECFSZ      R12, 1, 1
	BRA         L_main301
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr54_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr54_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,488 :: 		}
L_main295:
;NeuroSound_V2.c,489 :: 		if (menu==1){
	MOVLW       0
	XORWF       _menu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main578
	MOVLW       1
	XORWF       _menu+0, 0 
L__main578:
	BTFSS       STATUS+0, 2 
	GOTO        L_main302
;NeuroSound_V2.c,490 :: 		ear_data=EEPROM_Read(ear_adres);
	MOVF        _ear_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _ear_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _ear_data+0 
	MOVLW       0
	MOVWF       _ear_data+1 
;NeuroSound_V2.c,491 :: 		Lcd_Out(1,1,"KULAKLIK SES=>"); Lcd_Out(2,3,"*<  1/5  >*");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr55_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr55_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr56_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr56_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,492 :: 		if(tus==0){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;delay_ms(70);ear_data=ear_data+30;if(ear_data>240){ear_data=240;} volume=ear_data;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main579
	MOVLW       0
	XORWF       _tus+0, 0 
L__main579:
	BTFSS       STATUS+0, 2 
	GOTO        L_main303
	BTFSC       _bip_data+0, 0 
	GOTO        L__main580
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main581
L__main580:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main581:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main304:
	DECFSZ      R13, 1, 1
	BRA         L_main304
	DECFSZ      R12, 1, 1
	BRA         L_main304
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main305:
	DECFSZ      R13, 1, 1
	BRA         L_main305
	DECFSZ      R12, 1, 1
	BRA         L_main305
	NOP
	MOVLW       30
	ADDWF       _ear_data+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _ear_data+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _ear_data+0 
	MOVF        R2, 0 
	MOVWF       _ear_data+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main582
	MOVF        R1, 0 
	SUBLW       240
L__main582:
	BTFSC       STATUS+0, 0 
	GOTO        L_main306
	MOVLW       240
	MOVWF       _ear_data+0 
	MOVLW       0
	MOVWF       _ear_data+1 
L_main306:
	MOVF        _ear_data+0, 0 
	MOVWF       _volume+0 
	MOVF        _ear_data+1, 0 
	MOVWF       _volume+1 
L_main303:
;NeuroSound_V2.c,493 :: 		if(tus==5){RC1_bit=bip_data;delay_ms(80);RC1_bit=0;delay_ms(70);ear_data=ear_data-30;if(ear_data<=0){ear_data=0;} volume=ear_data;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main583
	MOVLW       5
	XORWF       _tus+0, 0 
L__main583:
	BTFSS       STATUS+0, 2 
	GOTO        L_main307
	BTFSC       _bip_data+0, 0 
	GOTO        L__main584
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main585
L__main584:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main585:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main308:
	DECFSZ      R13, 1, 1
	BRA         L_main308
	DECFSZ      R12, 1, 1
	BRA         L_main308
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main309:
	DECFSZ      R13, 1, 1
	BRA         L_main309
	DECFSZ      R12, 1, 1
	BRA         L_main309
	NOP
	MOVLW       30
	SUBWF       _ear_data+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _ear_data+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _ear_data+0 
	MOVF        R2, 0 
	MOVWF       _ear_data+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main586
	MOVF        R1, 0 
	SUBLW       0
L__main586:
	BTFSS       STATUS+0, 0 
	GOTO        L_main310
	CLRF        _ear_data+0 
	CLRF        _ear_data+1 
L_main310:
	MOVF        _ear_data+0, 0 
	MOVWF       _volume+0 
	MOVF        _ear_data+1, 0 
	MOVWF       _volume+1 
L_main307:
;NeuroSound_V2.c,494 :: 		if(volume==0){Lcd_Out(1,16,"0");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main587
	MOVLW       0
	XORWF       _volume+0, 0 
L__main587:
	BTFSS       STATUS+0, 2 
	GOTO        L_main311
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr57_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr57_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main311:
;NeuroSound_V2.c,495 :: 		if(volume==30){Lcd_Out(1,16,"1");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main588
	MOVLW       30
	XORWF       _volume+0, 0 
L__main588:
	BTFSS       STATUS+0, 2 
	GOTO        L_main312
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr58_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr58_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main312:
;NeuroSound_V2.c,496 :: 		if(volume==60){Lcd_Out(1,16,"2");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main589
	MOVLW       60
	XORWF       _volume+0, 0 
L__main589:
	BTFSS       STATUS+0, 2 
	GOTO        L_main313
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr59_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr59_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main313:
;NeuroSound_V2.c,497 :: 		if(volume==90){Lcd_Out(1,16,"3");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main590
	MOVLW       90
	XORWF       _volume+0, 0 
L__main590:
	BTFSS       STATUS+0, 2 
	GOTO        L_main314
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr60_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr60_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main314:
;NeuroSound_V2.c,498 :: 		if(volume==120){Lcd_Out(1,16,"4");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main591
	MOVLW       120
	XORWF       _volume+0, 0 
L__main591:
	BTFSS       STATUS+0, 2 
	GOTO        L_main315
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr61_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr61_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main315:
;NeuroSound_V2.c,499 :: 		if(volume==150){Lcd_Out(1,16,"5");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main592
	MOVLW       150
	XORWF       _volume+0, 0 
L__main592:
	BTFSS       STATUS+0, 2 
	GOTO        L_main316
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr62_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr62_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main316:
;NeuroSound_V2.c,500 :: 		if(volume==180){Lcd_Out(1,16,"6");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main593
	MOVLW       180
	XORWF       _volume+0, 0 
L__main593:
	BTFSS       STATUS+0, 2 
	GOTO        L_main317
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr63_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr63_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main317:
;NeuroSound_V2.c,501 :: 		if(volume==210){Lcd_Out(1,16,"7");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main594
	MOVLW       210
	XORWF       _volume+0, 0 
L__main594:
	BTFSS       STATUS+0, 2 
	GOTO        L_main318
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr64_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr64_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main318:
;NeuroSound_V2.c,502 :: 		if(volume==240){Lcd_Out(1,16,"8");AD5206_Pot1(4, ear_data);}
	MOVLW       0
	XORWF       _volume+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main595
	MOVLW       240
	XORWF       _volume+0, 0 
L__main595:
	BTFSS       STATUS+0, 2 
	GOTO        L_main319
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr65_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr65_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main319:
;NeuroSound_V2.c,503 :: 		EEPROM_Write(ear_adres,ear_data);
	MOVF        _ear_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _ear_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVF        _ear_data+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;NeuroSound_V2.c,504 :: 		delay_ms(150);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main320:
	DECFSZ      R13, 1, 1
	BRA         L_main320
	DECFSZ      R12, 1, 1
	BRA         L_main320
	DECFSZ      R11, 1, 1
	BRA         L_main320
;NeuroSound_V2.c,505 :: 		}
L_main302:
;NeuroSound_V2.c,506 :: 		if (menu==2){
	MOVLW       0
	XORWF       _menu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main596
	MOVLW       2
	XORWF       _menu+0, 0 
L__main596:
	BTFSS       STATUS+0, 2 
	GOTO        L_main321
;NeuroSound_V2.c,507 :: 		bone_data=EEPROM_Read(bone_adres);
	MOVF        _bone_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _bone_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _bone_data+0 
	MOVLW       0
	MOVWF       _bone_data+1 
;NeuroSound_V2.c,508 :: 		Lcd_Out(1,1,"BONE SES=>"); Lcd_Out(2,3,"*<  2/5  >*");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr66_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr66_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr67_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr67_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,509 :: 		if(tus==0){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;bone_data=bone_data+30;if(bone_data>240){bone_data=240;}volume1=bone_data;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main597
	MOVLW       0
	XORWF       _tus+0, 0 
L__main597:
	BTFSS       STATUS+0, 2 
	GOTO        L_main322
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main323:
	DECFSZ      R13, 1, 1
	BRA         L_main323
	DECFSZ      R12, 1, 1
	BRA         L_main323
	NOP
	BTFSC       _bip_data+0, 0 
	GOTO        L__main598
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main599
L__main598:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main599:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main324:
	DECFSZ      R13, 1, 1
	BRA         L_main324
	DECFSZ      R12, 1, 1
	BRA         L_main324
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	ADDWF       _bone_data+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _bone_data+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _bone_data+0 
	MOVF        R2, 0 
	MOVWF       _bone_data+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main600
	MOVF        R1, 0 
	SUBLW       240
L__main600:
	BTFSC       STATUS+0, 0 
	GOTO        L_main325
	MOVLW       240
	MOVWF       _bone_data+0 
	MOVLW       0
	MOVWF       _bone_data+1 
L_main325:
	MOVF        _bone_data+0, 0 
	MOVWF       _volume1+0 
	MOVF        _bone_data+1, 0 
	MOVWF       _volume1+1 
L_main322:
;NeuroSound_V2.c,510 :: 		if(tus==5){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;bone_data=bone_data-30;if(bone_data<=0){bone_data=0;}volume1=bone_data;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main601
	MOVLW       5
	XORWF       _tus+0, 0 
L__main601:
	BTFSS       STATUS+0, 2 
	GOTO        L_main326
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main327:
	DECFSZ      R13, 1, 1
	BRA         L_main327
	DECFSZ      R12, 1, 1
	BRA         L_main327
	NOP
	BTFSC       _bip_data+0, 0 
	GOTO        L__main602
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main603
L__main602:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main603:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main328:
	DECFSZ      R13, 1, 1
	BRA         L_main328
	DECFSZ      R12, 1, 1
	BRA         L_main328
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	SUBWF       _bone_data+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _bone_data+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _bone_data+0 
	MOVF        R2, 0 
	MOVWF       _bone_data+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main604
	MOVF        R1, 0 
	SUBLW       0
L__main604:
	BTFSS       STATUS+0, 0 
	GOTO        L_main329
	CLRF        _bone_data+0 
	CLRF        _bone_data+1 
L_main329:
	MOVF        _bone_data+0, 0 
	MOVWF       _volume1+0 
	MOVF        _bone_data+1, 0 
	MOVWF       _volume1+1 
L_main326:
;NeuroSound_V2.c,511 :: 		if(volume1==0){Lcd_Out(1,13,"0");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main605
	MOVLW       0
	XORWF       _volume1+0, 0 
L__main605:
	BTFSS       STATUS+0, 2 
	GOTO        L_main330
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr68_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr68_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main330:
;NeuroSound_V2.c,512 :: 		if(volume1==30){Lcd_Out(1,13,"1");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main606
	MOVLW       30
	XORWF       _volume1+0, 0 
L__main606:
	BTFSS       STATUS+0, 2 
	GOTO        L_main331
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr69_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr69_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main331:
;NeuroSound_V2.c,513 :: 		if(volume1==60){Lcd_Out(1,13,"2");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main607
	MOVLW       60
	XORWF       _volume1+0, 0 
L__main607:
	BTFSS       STATUS+0, 2 
	GOTO        L_main332
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr70_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr70_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main332:
;NeuroSound_V2.c,514 :: 		if(volume1==90){Lcd_Out(1,13,"3");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main608
	MOVLW       90
	XORWF       _volume1+0, 0 
L__main608:
	BTFSS       STATUS+0, 2 
	GOTO        L_main333
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr71_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr71_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main333:
;NeuroSound_V2.c,515 :: 		if(volume1==120){Lcd_Out(1,13,"4");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main609
	MOVLW       120
	XORWF       _volume1+0, 0 
L__main609:
	BTFSS       STATUS+0, 2 
	GOTO        L_main334
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr72_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr72_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main334:
;NeuroSound_V2.c,516 :: 		if(volume1==150){Lcd_Out(1,13,"5");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main610
	MOVLW       150
	XORWF       _volume1+0, 0 
L__main610:
	BTFSS       STATUS+0, 2 
	GOTO        L_main335
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr73_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr73_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main335:
;NeuroSound_V2.c,517 :: 		if(volume1==180){Lcd_Out(1,13,"6");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main611
	MOVLW       180
	XORWF       _volume1+0, 0 
L__main611:
	BTFSS       STATUS+0, 2 
	GOTO        L_main336
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr74_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr74_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main336:
;NeuroSound_V2.c,518 :: 		if(volume1==210){Lcd_Out(1,13,"7");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main612
	MOVLW       210
	XORWF       _volume1+0, 0 
L__main612:
	BTFSS       STATUS+0, 2 
	GOTO        L_main337
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr75_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr75_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main337:
;NeuroSound_V2.c,519 :: 		if(volume1==240){Lcd_Out(1,13,"8");AD5206_Pot1(2, bone_data);}
	MOVLW       0
	XORWF       _volume1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main613
	MOVLW       240
	XORWF       _volume1+0, 0 
L__main613:
	BTFSS       STATUS+0, 2 
	GOTO        L_main338
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr76_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr76_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
L_main338:
;NeuroSound_V2.c,520 :: 		EEPROM_Write(bone_adres,bone_data);
	MOVF        _bone_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _bone_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVF        _bone_data+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;NeuroSound_V2.c,521 :: 		delay_ms(150);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main339:
	DECFSZ      R13, 1, 1
	BRA         L_main339
	DECFSZ      R12, 1, 1
	BRA         L_main339
	DECFSZ      R11, 1, 1
	BRA         L_main339
;NeuroSound_V2.c,522 :: 		}
L_main321:
;NeuroSound_V2.c,523 :: 		if (menu==3){
	MOVLW       0
	XORWF       _menu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main614
	MOVLW       3
	XORWF       _menu+0, 0 
L__main614:
	BTFSS       STATUS+0, 2 
	GOTO        L_main340
;NeuroSound_V2.c,524 :: 		lcd_pwm=EEPROM_Read(lcd_adres);
	MOVF        _lcd_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _lcd_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _lcd_pwm+0 
	MOVLW       0
	MOVWF       _lcd_pwm+1 
;NeuroSound_V2.c,525 :: 		if(tus==0){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;lcd_pwm=lcd_pwm+30;if(lcd_pwm>240){lcd_pwm=240;} }
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main615
	MOVLW       0
	XORWF       _tus+0, 0 
L__main615:
	BTFSS       STATUS+0, 2 
	GOTO        L_main341
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main342:
	DECFSZ      R13, 1, 1
	BRA         L_main342
	DECFSZ      R12, 1, 1
	BRA         L_main342
	NOP
	BTFSC       _bip_data+0, 0 
	GOTO        L__main616
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main617
L__main616:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main617:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main343:
	DECFSZ      R13, 1, 1
	BRA         L_main343
	DECFSZ      R12, 1, 1
	BRA         L_main343
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	ADDWF       _lcd_pwm+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _lcd_pwm+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _lcd_pwm+0 
	MOVF        R2, 0 
	MOVWF       _lcd_pwm+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main618
	MOVF        R1, 0 
	SUBLW       240
L__main618:
	BTFSC       STATUS+0, 0 
	GOTO        L_main344
	MOVLW       240
	MOVWF       _lcd_pwm+0 
	MOVLW       0
	MOVWF       _lcd_pwm+1 
L_main344:
L_main341:
;NeuroSound_V2.c,526 :: 		if(tus==5){delay_ms(70);RC1_bit=bip_data;delay_ms(80);RC1_bit=0;lcd_pwm=lcd_pwm-30;if(lcd_pwm<=0){lcd_pwm=0;}}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main619
	MOVLW       5
	XORWF       _tus+0, 0 
L__main619:
	BTFSS       STATUS+0, 2 
	GOTO        L_main345
	MOVLW       182
	MOVWF       R12, 0
	MOVLW       208
	MOVWF       R13, 0
L_main346:
	DECFSZ      R13, 1, 1
	BRA         L_main346
	DECFSZ      R12, 1, 1
	BRA         L_main346
	NOP
	BTFSC       _bip_data+0, 0 
	GOTO        L__main620
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	GOTO        L__main621
L__main620:
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
L__main621:
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_main347:
	DECFSZ      R13, 1, 1
	BRA         L_main347
	DECFSZ      R12, 1, 1
	BRA         L_main347
	NOP
	NOP
	BCF         RC1_bit+0, BitPos(RC1_bit+0) 
	MOVLW       30
	SUBWF       _lcd_pwm+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _lcd_pwm+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _lcd_pwm+0 
	MOVF        R2, 0 
	MOVWF       _lcd_pwm+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main622
	MOVF        R1, 0 
	SUBLW       0
L__main622:
	BTFSS       STATUS+0, 0 
	GOTO        L_main348
	CLRF        _lcd_pwm+0 
	CLRF        _lcd_pwm+1 
L_main348:
L_main345:
;NeuroSound_V2.c,527 :: 		Lcd_Out(1,1,"EKRAN PARLAKLIK"); Lcd_Out(2,3,"*<  3/5  >*"); PWM1_Set_Duty(lcd_pwm);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr77_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr77_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr78_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr78_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;NeuroSound_V2.c,528 :: 		EEPROM_Write(lcd_adres,lcd_pwm);
	MOVF        _lcd_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _lcd_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;NeuroSound_V2.c,531 :: 		delay_ms(150);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main349:
	DECFSZ      R13, 1, 1
	BRA         L_main349
	DECFSZ      R12, 1, 1
	BRA         L_main349
	DECFSZ      R11, 1, 1
	BRA         L_main349
;NeuroSound_V2.c,532 :: 		}
L_main340:
;NeuroSound_V2.c,543 :: 		if (menu==5){ Lcd_Out(1,1,"TEST BASLA > OK"); Lcd_Out(2,3,"*<  5/5  >*"); delay_ms(150);
	MOVLW       0
	XORWF       _menu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main623
	MOVLW       5
	XORWF       _menu+0, 0 
L__main623:
	BTFSS       STATUS+0, 2 
	GOTO        L_main350
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr79_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr79_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr80_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr80_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main351:
	DECFSZ      R13, 1, 1
	BRA         L_main351
	DECFSZ      R12, 1, 1
	BRA         L_main351
	DECFSZ      R11, 1, 1
	BRA         L_main351
;NeuroSound_V2.c,544 :: 		if(tus==3) {test=1;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main624
	MOVLW       3
	XORWF       _tus+0, 0 
L__main624:
	BTFSS       STATUS+0, 2 
	GOTO        L_main352
	MOVLW       1
	MOVWF       _test+0 
	MOVLW       0
	MOVWF       _test+1 
L_main352:
;NeuroSound_V2.c,545 :: 		if(test==1){Lcd_Cmd(_LCD_CLEAR);Lcd_Out(1,3,"TEST BASLADI");
	MOVLW       0
	XORWF       _test+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main625
	MOVLW       1
	XORWF       _test+0, 0 
L__main625:
	BTFSS       STATUS+0, 2 
	GOTO        L_main353
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr81_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr81_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,546 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=1;Lcd_Out(2,2,"M1  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BSF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr82_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr82_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main354:
	DECFSZ      R13, 1, 1
	BRA         L_main354
	DECFSZ      R12, 1, 1
	BRA         L_main354
	DECFSZ      R11, 1, 1
	BRA         L_main354
	NOP
	NOP
;NeuroSound_V2.c,547 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=1;RE7_bit=0;Lcd_Out(2,2,"M2  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BSF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr83_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr83_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main355:
	DECFSZ      R13, 1, 1
	BRA         L_main355
	DECFSZ      R12, 1, 1
	BRA         L_main355
	DECFSZ      R11, 1, 1
	BRA         L_main355
	NOP
	NOP
;NeuroSound_V2.c,548 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=1; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M3  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BSF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr84_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr84_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main356:
	DECFSZ      R13, 1, 1
	BRA         L_main356
	DECFSZ      R12, 1, 1
	BRA         L_main356
	DECFSZ      R11, 1, 1
	BRA         L_main356
	NOP
	NOP
;NeuroSound_V2.c,549 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=1; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M4  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BSF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr85_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr85_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main357:
	DECFSZ      R13, 1, 1
	BRA         L_main357
	DECFSZ      R12, 1, 1
	BRA         L_main357
	DECFSZ      R11, 1, 1
	BRA         L_main357
	NOP
	NOP
;NeuroSound_V2.c,550 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=1; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"M5  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BSF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr86_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr86_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main358:
	DECFSZ      R13, 1, 1
	BRA         L_main358
	DECFSZ      R12, 1, 1
	BRA         L_main358
	DECFSZ      R11, 1, 1
	BRA         L_main358
	NOP
	NOP
;NeuroSound_V2.c,551 :: 		RE1_bit=0; RE2_bit=1; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"LP  MODU AKTIF");delay_ms(5000);
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BSF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr87_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr87_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main359:
	DECFSZ      R13, 1, 1
	BRA         L_main359
	DECFSZ      R12, 1, 1
	BRA         L_main359
	DECFSZ      R11, 1, 1
	BRA         L_main359
	NOP
	NOP
;NeuroSound_V2.c,552 :: 		RE1_bit=1; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=0;Lcd_Out(2,2,"MIKROFON AKTIF");PWM1_Set_Duty(0);delay_ms(5000); PWM1_Set_Duty(lcd_pwm);
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BCF         RE7_bit+0, BitPos(RE7_bit+0) 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr88_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr88_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main360:
	DECFSZ      R13, 1, 1
	BRA         L_main360
	DECFSZ      R12, 1, 1
	BRA         L_main360
	DECFSZ      R11, 1, 1
	BRA         L_main360
	NOP
	NOP
	MOVF        _lcd_pwm+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;NeuroSound_V2.c,553 :: 		test=0; menu=0; Lcd_Cmd(_LCD_CLEAR);  delay_ms(1000); Lcd_Out(1,3,"BALANS TEST");
	CLRF        _test+0 
	CLRF        _test+1 
	CLRF        _menu+0 
	CLRF        _menu+1 
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main361:
	DECFSZ      R13, 1, 1
	BRA         L_main361
	DECFSZ      R12, 1, 1
	BRA         L_main361
	DECFSZ      R11, 1, 1
	BRA         L_main361
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr89_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr89_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,554 :: 		RE1_bit=0; RE2_bit=0; RE3_bit=0; RE4_bit=0; RE5_bit=0; RE6_bit=0;RE7_bit=1;
	BCF         RE1_bit+0, BitPos(RE1_bit+0) 
	BCF         RE2_bit+0, BitPos(RE2_bit+0) 
	BCF         RE3_bit+0, BitPos(RE3_bit+0) 
	BCF         RE4_bit+0, BitPos(RE4_bit+0) 
	BCF         RE5_bit+0, BitPos(RE5_bit+0) 
	BCF         RE6_bit+0, BitPos(RE6_bit+0) 
	BSF         RE7_bit+0, BitPos(RE7_bit+0) 
;NeuroSound_V2.c,555 :: 		AD5206_Pot1(0,0);AD5206_Pot1(2,0);AD5206_Pot1(4,0);
	CLRF        FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,556 :: 		AD5206_Pot1(1,0);AD5206_Pot1(3,0);AD5206_Pot1(5,0);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,557 :: 		Lcd_Out(2,3,"BALANS %0");delay_ms(2000);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr90_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr90_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main362:
	DECFSZ      R13, 1, 1
	BRA         L_main362
	DECFSZ      R12, 1, 1
	BRA         L_main362
	DECFSZ      R11, 1, 1
	BRA         L_main362
	NOP
;NeuroSound_V2.c,558 :: 		AD5206_Pot1(0,55);AD5206_Pot1(2,55);AD5206_Pot1(4,55);
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,559 :: 		AD5206_Pot1(1,55);AD5206_Pot1(3,55);AD5206_Pot1(5,55);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       55
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,560 :: 		Lcd_Out(2,3,"BALANS %25");delay_ms(5000);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr91_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr91_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main363:
	DECFSZ      R13, 1, 1
	BRA         L_main363
	DECFSZ      R12, 1, 1
	BRA         L_main363
	DECFSZ      R11, 1, 1
	BRA         L_main363
	NOP
	NOP
;NeuroSound_V2.c,561 :: 		AD5206_Pot1(0,110);AD5206_Pot1(2,110);AD5206_Pot1(4,110);
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,562 :: 		AD5206_Pot1(1,110);AD5206_Pot1(3,110);AD5206_Pot1(5,110);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       110
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,563 :: 		Lcd_Out(2,3,"BALANS %50");delay_ms(5000);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr92_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr92_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main364:
	DECFSZ      R13, 1, 1
	BRA         L_main364
	DECFSZ      R12, 1, 1
	BRA         L_main364
	DECFSZ      R11, 1, 1
	BRA         L_main364
	NOP
	NOP
;NeuroSound_V2.c,564 :: 		AD5206_Pot1(0,165);AD5206_Pot1(2,165);AD5206_Pot1(4,165);
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,565 :: 		AD5206_Pot1(1,165);AD5206_Pot1(3,165);AD5206_Pot1(5,165);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       165
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,566 :: 		Lcd_Out(2,3,"BALANS %75");delay_ms(5000);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr93_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr93_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main365:
	DECFSZ      R13, 1, 1
	BRA         L_main365
	DECFSZ      R12, 1, 1
	BRA         L_main365
	DECFSZ      R11, 1, 1
	BRA         L_main365
	NOP
	NOP
;NeuroSound_V2.c,567 :: 		AD5206_Pot1(0,220);AD5206_Pot1(2,220);AD5206_Pot1(4,220);
	CLRF        FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,568 :: 		AD5206_Pot1(1,220);AD5206_Pot1(3,220);AD5206_Pot1(5,220);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	MOVLW       220
	MOVWF       FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,569 :: 		Lcd_Out(2,3,"BALANS %100");delay_ms(5000); Lcd_Cmd(_LCD_CLEAR);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr94_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr94_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main366:
	DECFSZ      R13, 1, 1
	BRA         L_main366
	DECFSZ      R12, 1, 1
	BRA         L_main366
	DECFSZ      R11, 1, 1
	BRA         L_main366
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NeuroSound_V2.c,570 :: 		Lcd_Out(1,4,"TEST BITTI"); delay_ms(1000);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr95_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr95_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main367:
	DECFSZ      R13, 1, 1
	BRA         L_main367
	DECFSZ      R12, 1, 1
	BRA         L_main367
	DECFSZ      R11, 1, 1
	BRA         L_main367
	NOP
	NOP
;NeuroSound_V2.c,571 :: 		AD5206_Pot1(0,0);AD5206_Pot1(2,0);AD5206_Pot1(4,0);
	CLRF        FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       2
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       4
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,572 :: 		AD5206_Pot1(1,0);AD5206_Pot1(3,0);AD5206_Pot1(5,0);
	MOVLW       1
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       3
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
	MOVLW       5
	MOVWF       FARG_AD5206_Pot1_channel+0 
	CLRF        FARG_AD5206_Pot1_value+0 
	CALL        _AD5206_Pot1+0, 0
;NeuroSound_V2.c,573 :: 		while(1){Lcd_Out(1,1," CIHAZI YENIDEN ");  Lcd_Out(2,1," BASLATINIZ...  ");delay_ms(1000);Lcd_Cmd(_LCD_CLEAR);delay_ms(500);}
L_main368:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr96_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr96_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr97_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr97_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main370:
	DECFSZ      R13, 1, 1
	BRA         L_main370
	DECFSZ      R12, 1, 1
	BRA         L_main370
	DECFSZ      R11, 1, 1
	BRA         L_main370
	NOP
	NOP
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main371:
	DECFSZ      R13, 1, 1
	BRA         L_main371
	DECFSZ      R12, 1, 1
	BRA         L_main371
	DECFSZ      R11, 1, 1
	BRA         L_main371
	NOP
	NOP
	GOTO        L_main368
;NeuroSound_V2.c,574 :: 		}
L_main353:
;NeuroSound_V2.c,575 :: 		}
L_main350:
;NeuroSound_V2.c,576 :: 		if (menu==4){
	MOVLW       0
	XORWF       _menu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main626
	MOVLW       4
	XORWF       _menu+0, 0 
L__main626:
	BTFSS       STATUS+0, 2 
	GOTO        L_main372
;NeuroSound_V2.c,577 :: 		bip_data=EEPROM_Read(bip_adres);
	MOVF        _bip_adres+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	MOVF        _bip_adres+1, 0 
	MOVWF       FARG_EEPROM_Read_address+1 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _bip_data+0 
	MOVLW       0
	MOVWF       _bip_data+1 
;NeuroSound_V2.c,578 :: 		Lcd_Out(1,1,"BIP=>");Lcd_Out(2,3,"*<  4/5  >*");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr98_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr98_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr99_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr99_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NeuroSound_V2.c,579 :: 		if(tus==0){delay_ms(100);bip_data=1;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main627
	MOVLW       0
	XORWF       _tus+0, 0 
L__main627:
	BTFSS       STATUS+0, 2 
	GOTO        L_main373
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main374:
	DECFSZ      R13, 1, 1
	BRA         L_main374
	DECFSZ      R12, 1, 1
	BRA         L_main374
	DECFSZ      R11, 1, 1
	BRA         L_main374
	NOP
	MOVLW       1
	MOVWF       _bip_data+0 
	MOVLW       0
	MOVWF       _bip_data+1 
L_main373:
;NeuroSound_V2.c,580 :: 		if(tus==5){delay_ms(100);bip_data=0;}
	MOVLW       0
	XORWF       _tus+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main628
	MOVLW       5
	XORWF       _tus+0, 0 
L__main628:
	BTFSS       STATUS+0, 2 
	GOTO        L_main375
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main376:
	DECFSZ      R13, 1, 1
	BRA         L_main376
	DECFSZ      R12, 1, 1
	BRA         L_main376
	DECFSZ      R11, 1, 1
	BRA         L_main376
	NOP
	CLRF        _bip_data+0 
	CLRF        _bip_data+1 
L_main375:
;NeuroSound_V2.c,581 :: 		EEPROM_Write(bip_adres,bip_data);
	MOVF        _bip_adres+0, 0 
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _bip_adres+1, 0 
	MOVWF       FARG_EEPROM_Write_address+1 
	MOVF        _bip_data+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;NeuroSound_V2.c,582 :: 		if(bip_data==0){Lcd_Out(1,1,"BIP=> kapali");}
	MOVLW       0
	XORWF       _bip_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main629
	MOVLW       0
	XORWF       _bip_data+0, 0 
L__main629:
	BTFSS       STATUS+0, 2 
	GOTO        L_main377
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr100_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr100_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main377:
;NeuroSound_V2.c,583 :: 		if(bip_data==1){Lcd_Out(1,1,"BIP=>  acik");Lcd_Out(1,12," ");}
	MOVLW       0
	XORWF       _bip_data+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main630
	MOVLW       1
	XORWF       _bip_data+0, 0 
L__main630:
	BTFSS       STATUS+0, 2 
	GOTO        L_main378
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr101_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr101_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr102_NeuroSound_V2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr102_NeuroSound_V2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main378:
;NeuroSound_V2.c,584 :: 		delay_ms(150);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main379:
	DECFSZ      R13, 1, 1
	BRA         L_main379
	DECFSZ      R12, 1, 1
	BRA         L_main379
	DECFSZ      R11, 1, 1
	BRA         L_main379
;NeuroSound_V2.c,585 :: 		}
L_main372:
;NeuroSound_V2.c,587 :: 		}
	GOTO        L_main283
L_main284:
;NeuroSound_V2.c,588 :: 		}
L_main280:
;NeuroSound_V2.c,589 :: 		}
	GOTO        L_main96
;NeuroSound_V2.c,590 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
