C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device: HmIP-ASIR - Homematic IP Indoor Siren

Company: eQ-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1.4.x - 20180627
--------------------------------------------------------------
** Related Hardware
   * 1654336D

** Bugfix
* No acoustical and optical signal in case of backup disarm


** Improvement
   * 
	 
** Comments
   *

Version 1.2.x - 20180212 
--------------------------------------------------------------
** Related Hardware
   * 1654336D

** Bugfix
* Cyclic StatusInfo contains wrong RSSI-Value. 
* App sequecne counter check area
* Trigger of silent alarm does not trigger Status Info to AP


** Improvement
   * Removed virtual channels
   * Improved StatusInfo and ACK Handling
   * Improvements for Security Solution Pro:
	 * Added Backup Channel (Channel 2) with parameters for alarmtype, duration, silent alarm and sd-multicast.
	 * Added arming of up to seven alarm zones to Direct Execution Command.
	 * CSC can be send to Channel 2 with ALARM_MODE bitfield as decision value.
	 * Improved sabotage detection: if one or more zones are armed in case of sabotage, the alarm is triggered internally. 
     * Added an internal link between Ch 1 and Ch 3 for internal sabotage alarm.
	 * Changed Status Info with regard to DeviceSpecific Documenation.
	 * Removed PowerUp Parameters from Ch 3.
	 * Removed Parameters of ch 1 (sabotage).
	 * Added Smoke Detector Multicast in case of acoustic alarm for specific zones.
	 * Added silent alarm mode for specific zones.
	 * JIRA HMIP_ASIR-48: DISABLE_MSG_TO_AC parameter added
	 
** Comments
   *

Version 1.0.9 - 201601213
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * At DEC with duration bigger then 65s the Device execut the duration not correct 


** Improvement
   * 
   
** Comments
   *
   
Version 1.0.8 - 201601020
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * Restart the reciver mode immeditaly in the CB_RX , this bug occur in RC8.
 
** Improvement
   * 
   
** Comments
   *


Version 1.0.7 - 20160921
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * Delete the LED signal while the sabotage button release or press. For security case. 
 
** Improvement
   * Improvement the switch time out for all case.
   
** Comments
   *

Version 1.0.6 - 201607027
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * Corrected the ARR-timeout with sending status-frames.
   * Corrected a bug with statusinfo sequence counters.
   * If the device is not included the sabotage switch is not working anymore. 
     It also will never retrigger the inclusion process now.
 
** Improvement
   * 
   
** Comments
   *
   
   
Version 1.0.5 - 201607025
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * Added sending of Statusmessges to the linked central if 
     an event from the sabotage button is recognized.
   * Removed sending of config update request frames on 
     sabotage button if there is no partner because a 
     statusmessage has been triggered and is enough.
   * Statusmessaeges are now send with ARR bit.
 
** Improvement
   * 
   
** Comments
   *
   
   
Version 1.0.4 - 201607018
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * ARR Timeout is ignored
   * Fixed the bug of : statusinfo with ARR bit, no timeout. Add timeout for this.
 
** Improvement
   * Changed EMC target. add some predefine in it.
   
** Comments
   *




Version 1.0.2 - 201607013
--------------------------------------------------------------
** Related Hardware
   * 1654336B
   * Had used the R20 resistor in the PCBA to make sabotage button work well.


** Bugfix
   * ARR Timeout is ignored
 
** Improvement
   * Delete some unused code and perdefine in the code.
   
** Comments
   *
	 
--- END OF FILE ---