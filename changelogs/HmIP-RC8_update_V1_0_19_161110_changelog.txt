C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version
of the CCUx!

Device: HmIP-RC8 - Homematic IP Remote Control - 8 buttons

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.0.19 - 2016-11-8
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
   * DBB  PCBA no available
   
** Bugfix 
   * [HMIP_RC8-40]Device send no Unconditional Switch Command with ARR-Bit with long key press
 
Version 1.0.18 - 2016-11-4
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
   * DBB  PCBA no available
   
** Bugfix 
   * Fixed the bug of [HMIP-RC8-38] The LED is blinking red if the linkpartner is the system partner
 
Version 1.0.17 - 2016-11-1
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
   * DBB  PCBA no available
   
** Bugfix 
   * If the remoter get an acknowledge frame from a router, he is awake for 10 seconds and blinks then green.
   * Send one linker partner IP (default for first one) to the SNC for report linker problem.
 
Version 1.0.16 - 2016-10-14
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
   * DBB  PCBA no available
   
** Bugfix 
   * HMIP-RC8-32 Device send Report Linkpartner Problem after successfull sending
   
Version 1.0.15 - 2016-8-30
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
   * DBB  
   
** Improvement
   * Add new target for HmIP-DBB ( One button)
   * HmIP-DBB will have a buzzer (TBD). Buzzer function had finished, but no try.
 
 
 
Version 1.0.14 - 2016-7-15
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
    
** Bugfix 
   * HMIP-RC8-31 The LED is blinking red if the system partner is a linkpartner
   * Fixed the same bug that exist in ASIR 
     (HMIP_ASIR-15) The LED shows the boot sequence even if the button is pressed for factory reset
 

Version 1.0.10 - 2016-6-17
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
    
 
** Bugfix 
   * Fixed the bug of test mode. Sleep mode no work well.
 
Version 1.0.8 - 2016-5-20
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
    
 
** Comments 
   * changed the linker information as:
   --predefine="-DROM_SIZE=0x20000"
   --predefine="-DRAM_CODE_SIZE=0xc00"
   --predefine="-DSIZE_OF_BOOTLOADER=0x1800"
   --predefine="-DSIZE_OF_PERSIST_DATA=0x800"
 
 
Version 1.0.6 - 2016-5-20
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
    
 
** Comments 
   * Changed the MCU to EFM32G210F p/n 150433
   * Remove the "bootloader_rom_link.s " from the project as the bigger MCU had the AES hardware
 
 
 
Version 1.0.4 - 2016-4-25
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342E-SA 
   * WRC6 142468C-SA   main board
          142469B-SA   button board
    
 
** Comments 
   Release a new version
 
Version 0.7.2 - 20151216
--------------------------------------------------------------
 
** Related Hardware
   * RC8  142342C-SA 
   * WRC6 142468B-SA   main board
          142469B-SA   button board
    
 
** Bugfix
   * fixed the problem with deap sleep. 
     If the device link to a brust device (such as channel 3). After press that channel , the market bit m_b_wor_device_in_link_list = __TURE all the time. 
    
    solution : Reset this bit white you want to reset the m_key_busy. APPLICATION_KEY_set_keys_busy(__FALSE);
                APPLICATION_KEY_set_wor_device_in_link_list(__FALSE); In application.c .
    
 
** Comments 
   * Initial commit with template as new start of the project.
    This version are used the new HMOS system, V1.12.0
    
--- END OF FILE ---

