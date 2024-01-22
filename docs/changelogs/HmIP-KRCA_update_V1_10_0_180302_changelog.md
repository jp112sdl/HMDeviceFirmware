C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device: HmIP-KRCA - Homematic IP Key-Ring Remote Control - alarm

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany
 

Version 1.10.0 - 02.03.2018
--------------------------------------------------------------

** Bugfix
   * Sendeverhalten bei langem Tastendruck fehlerhaft
   * Fehler im Sendeverhalten, wenn Partner spät antworten

** New Feature
   * Erweiterung der HmIP-Securitylösung
   * HmIPW: Neuer Operation-Mode
   * Zentralen basierte Lösungen und Lösungen ohne Zentrale (Installateur)

** Improvement
   * Alarmbackup durchführen wenn Access Point / Zentrale ein NAK auf ein Unconditional 
     Switch Command sendet
   * update HMOS to V1.26.0
   
Version 1.6.0 20170823
--------------------------------------------------------------

** Related Hardware
   * 1444094I
 
** Bugfix
   * if one link partner is unreachable the device goes to sleep directly 
     and is not waiting for app answers of other link partners

** Improvement
   * update HMOS to V1.20.3

Version 1.4.2 20161216
--------------------------------------------------------------

** Related Hardware
   * 1444094I
 
** Bugfix
   * HMOS now ignore stay awake bit for frames that are looped back internal
   * statusinfo frames are send with the "normal"sequence number ->
     after every status info frame the status info sequence
     counter is incremented, but the normal counter is put in
     the status frame. so every status info is send with the
     same sequence number as long no "normal" frame is send.
     The ACKs of the status info frames are not accepted as
     the sequence number of the ACK frame and the internal
     status info sequence number doesn't match

** Improvement
   * update HMOS to V1.18.2

Version 1.4.1 20160422
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Bugfix
   * Fixed bug that device waits arr 
	   timeout before signaling tx status (red or green)
   * Device now accepts answers from SNC/HAP for switch commands


Version 1.4.0 20160329
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Modifications
   * Move project to Git
   * Update HMOS to V1.16.0
   * Bootloader is V1.8.0

Version 1.2.8 20160120
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Bugfix
   * If no link partner is available, a report link partner 
     problem frame is send. If a new kepress is detected 
     while the timeout for the link partner problem frame, 
     the device sends a config request after the timeout and 
     after the tx tries of the kepress.
   * The report link partner problem frame now includes a 
     link partner ip.

Version 1.2.7 20160118
--------------------------------------------------------------

** Related Hardware
   * 1444094I

** Bugfix
   * If the APPLICATION_cb_tx_UncndSwCmd
     has the state HMIP_MAC_STATUS_FAILED the sleep_delay is
     not set and the no further button presses are accepted.
     The LED does not stop blinking

** Modifications     
   * First cyclic interval event is not longer
     triggered directly after boot up, but after the minimum
     interval + random time.
     
Version 1.2.6 20160111
--------------------------------------------------------------

** Related Hardware
   * 1444094I
  
** Modifications     
   * Changed HMOS to version 1.12.1
   * Changed KRC4 to EFM32G210F128

Version 1.2.5 20151002
--------------------------------------------------------------

** Related Hardware
   * 1444094I

** Modifications     
   * Adapt the factory reset signalling 
     according to the changed specification.
   * The printf function calls are not removed if DEBUG_EFM 
     is not defined. The printf function is now called by a 
     DEBUG_PRINTF macro if DEBUG_EFM is defined otherwise the 
     macro is empty. Saves 3.5 k flash space.
   * Changed full rx timeout to a fix value of 1000 s for a 
     normal unconditional switch command due to the changes
     in the HMIP_APP_send_to_link_partners_async function.
   * Changed full rx timeout to a fix value of 45 s for 
     status info, config request and send link partner problem 
     to met the router timeouts.
   * Since HMIP_APP_send_to_link_partners_async sends now 
     always with ARR-bit the handling of long key presses has 
     changed. The FRAMES_create_unconditional_switch_command 
     no longer need to set the arr bit, this is done in the 
     application task.
   * set sleep delay to 0 if there is only one partner and it
     isn't available -> free the keys busy flag
   * Renamed APPLICATION_cb_tx_UncndSwCmd_multicast to
     APPLICATION_cb_tx_UncndSwCmd_unidirectional.
     
** Comments
   * Modified compiler settings for KRC4 so that they are the 
     same as for PBS2.  

Version 1.2.4 20150817
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Bugfix
   * If the time for partner communication 
     exceed 10 seconds (e.g. 20 burst partners which are not 
     reachable) the application go to sleep after arr timeout. 
     The sleep timeout is now set if after starting the 
     transmission and retriggered in the tx callback. The trx 
     is now initially set to full rx for arr + 1 seconds and 
     is retriggered in the tx callback with aar + 1 second.

   * The answer of the AC on a Request 
     Config Update is no handled by the application. This 
     causes that the device go to sleep after the reception 
     of the answer. By now the devices waits for ARR-Timeout.

** Modifications     
   * The application now sends a "report 
     link partner problem" frame if the partner has not been 
     reached(No MAC-ACK). A Config Request is only send if the 
     link partner answers with ANSWER_NAK_INVALID_CHANNEL or 
     ANSWER_NAK_PEER_UNKNOWN.
     
Version 1.2.3 20150724
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Modifications
   * modified testmode for the HMIP-KRC4

Version 1.2.2 20150701
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Bugfix
   * if the firmware is programmed to a new oder full erased controller, 
     the firmware hang up while loading the channel parameters. The 
     application and the key task always got a RETURN_BUSY from HMOS. 
     This error might be come up with the change to the HMOS lib. The 
     application and the key task now wait 10 ms between each call of 
     the PARAMETER_get_param_sequence_async function, this seems to help.
     

Version 1.2.1 20150623 (not released)
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Bugfix
   * The channels 3 and 4 of the KRC4 were not handled
     in the APPLICATION_validate_parameters_async function. So it returns 
     CALLBACK_FAILED and the stack sends a NAK.
     
Version 1.2.0 20150612
--------------------------------------------------------------

** Related Hardware
   * 1444094I
   
** Modification  
   * Changed to HMOS-LIB V1.10 
   
** Comments  
   * Added APPLICATION_emc_led_success due to changes in HMOS / Stack.
   * The Callback of the LED module has now an state and is called also
     if the led program is aborted by a new program. This might lead to
     failures in the device behaviour.   

Version 1.0.4 20150409
--------------------------------------------------------------

** Related Hardware
   * 1444094F
   
** Comments  
   * Increased Version number for OTAU testing. 
   

Version 1.0.3 20150409
--------------------------------------------------------------

** Related Hardware
   * 1444094F
   
** Modification  
   * Changed HMOS to V1.6.2
     
     
Version 1.0.2
--------------------------------------------------------------

** Related Hardware
   * 1444094F
   
** Modification  
   * Added support for request status frame

** Bugs
   * Corrected a bug with the sequence number check.
     

Version 1.0.0 20150320
--------------------------------------------------------------

** Related Hardware
   * 1444094F
   
** Modification  
   * Added support of MAC status HMIP_MAC_STATUS_OK_ROUTED (tx callbacks)
   * Changed Parameter ENABLE_ROUTING default value to 1 as the default 
     value in HMOS is 1 and the application now has to set the value 

** Bugs
   * Corrected the device behaviour if the Parameter LONG PRESS TIME is 
     0 (disabled)
	 
	 
--- END OF FILE ---
