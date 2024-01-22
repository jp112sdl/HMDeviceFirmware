Achtung! Bitte verwenden Sie die Firmware-Datei nur in Verbindung mit der CCU2 ab Version 2.29.18.
Nach dem erfolgreichen Übertragen des Updates ist es erforderlich den HmIP-PDT einmal von der CCU2 ab- und wieder anzulernen, damit alle neuen Funktionen in der CCU2 korrekt angezeigt werden.

Please note: Only use the firmware file in connection with the CCU2 from version 2.29.18.
After the update has been successfully transferred, it is necessary to disconnect the HmIP-PDT from the CCU2 and teach-in the device again. So that all new functions are displayed in the CCU2.

Changelog:

Version 1.4.8 - 20170725
--------------------------------------------------------------
** Related Hardware
   * 1714429C

** Improvement
   * this update inlcludes an update of the dimmer coprocessor
     to V1.2.1 to solve flicker errors based on ripple control signals
     or other ripple on the mains power


Version 1.4.0 - 20170620
--------------------------------------------------------------
** Related Hardware
   * 1714429C

** New Feature
   * add support of weekprogram and channel lock   

** Bugfix
   * [HMIP_PDT-8]
     [HMIP_BDT-36] - fixed bug that channel keys triggers
      every 250 ms an inclusion request frame
   * [HMIP_FDT-13] - Check if switch time is valid on current
      day was wrong, so switch times are always valid and are
      done every day.
   * fixed bug on daylight saving time calculation   
   * The single cast frame with arr after the repeated
      multicast frames has to have the same sequence
      number as the last multicast frame. So the actuator can
      ignore it and only send an app ack.
   * [HMIP_BDT-35] - Direct execution commands with speciale
      value 0xC9 (old value) is not handled correctly  
   *[CHANGEMANAGEMENT-51], [HMIP_BDT-43], [HMIP_FDT-16],
     [HMIP_PDT-12] - Implement handling of direct
     execution commands LOCK and UNLOCK
   * [CHANGEMANAGEMENT-25], [HMIP_BDT-42], [HMIP_FDT-15],
      [MIP_PDT-11] - Fixed bug, that after sending an
      ACK-Frame no ACK frame can be send any more 
** Modification
   * [HM_ISSUE-159] - add sending of weekprogram status after
      inclusion      

** Improvement
   * handling of sending direct execution command
   * this update inlcludes an update of the dimmer coprocessor 
     to solve flicker errors based on ripple control signals or 
     other ripple on the mains power
   * Update to HMOS 1.20.3  
 
 
Version 1.2.3 - not released   
--------------------------------------------------------------

** Related Hardware
   * 1714429C

** Bugfix
   * [CHANGEMANAGEMENT-19]
      [HMIP_BDT-41]
      - If dimmer coprocessor is updated on boot, the main
         controller tries to set parameters in the dimmer
         coprocessor. As this is done immediately  after the
         dimmer coprocessor update, the application of it is
         not ready. Now a timeout doesn't add the task and
         the task doesn't try to repeat. If now the stack
         tries to validate the new parameters the task denied
         validation as the task is not idle -> dead lock   
         

Version 1.2.2 - 20170130
--------------------------------------------------------------

** Related Hardware
   * 1714429C
   
** Bugfix
   * HMIP_BDT-33 - Fixed Bug that the minimum dimm level is
     ignored
     
Version 1.2.0/1.2.1 - 20170111
--------------------------------------------------------------

** Related Hardware
   * 1714429C

** New Feature
   * add support of HmIP-PDT
   * add support of HmIP-FDT   

** Improvement
   * Update to HMOS V1.18.3
   * Update Dimmer Coprocessor to V1.0.13

** Bugfix
   * Fixed sending of an answer frame if a sending device (RC
     etc.) is connected to more than one virtual channel.
   * Changed port pin for band-in-use function (GDO2) as the
     HmIP-FDT uses a different pin. Now the MISO pin is used
     (universal)
   * [HMIP_PDT-6] - If a sending device (RC etc. ) is
     connected to more than one virtual channel, only the
     first channel is switching. So the missing multichannel
     support is added. Multiple real actor channels doesn't
     work further.
   * If a sending device (RC etc. ) is connected to more than
     one virtual channel, only a answer frame is send
     instead of a status info ack.
   * Handling of direct execution commands ignore level 201
     (last level)
   * Channel 1 parameters (List 1) are not loaded if they
     have changed. They were loaded only after reboot.
   * Statusinfo with Update Error is only triggered if device
     is already included.
   * The over temperature and overload thresholds are not
     set, if update task returns with an error -> dimmer
     copro is not available
   * HMIP_PDT-3 - Modify power up jump targets to match the
     power up jump targets of the switch actuators
   * HMIP_PDT-7 - Device sends answers on Multicast command
     and on commands without arr bit in generally
   * add visualization of the real channel state on led
   * add parameter LED_DISABLE_CHANNELSTATE to activate
     or deactivate the visualisation
     
Version 1.0.2 - 20160902
--------------------------------------------------------------

** Related Hardware
   * 1654347B

** Bugfix
   * On some devices the switch task is not removed in all
      cases, this causes that after an OTAU-Update the device
      made a factory reset on every boot. It is not clear why
      not all devices are defected by this bug. It might be
      depending on timing differences.

Version 1.0.1 - 20160901
--------------------------------------------------------------

** Related Hardware
   * 1654347B

** Bugfix
   * If channel keys are pressed while device is booting
      and initializing, the device gets into an "undefined
      state. The key callback is now registered if the
      booting, copro update and possible configuration of the
      internal links are finished.
   * If someone tries a factory reset on bootup, the device
      might get into a stall. Factory reset on bootup is now
      working


Version 1.0.0 - 20160830
--------------------------------------------------------------

** Related Hardware
   * 1654347B

** Comments 
   * Release Candidate for first lot.
	 
	 
--- END OF FILE ---



Version <Versionsnummer> - <Releasedatum im Format YYYYMMDD>
--------------------------------------------------------------

** Bugfix
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung des allgemeinen Fehlers bzw. Programmabsturzes>
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung des allgemeinen Fehlers bzw. Programmabsturzes>

** New Feature
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der neuen Funktion>
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der neuen Funktion>

** Modification
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der Modifikation>
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der Modifikation>

** Improvement
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der Verbesserung>
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung der Verbesserung>

** Bugs
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung des offenen Fehlers>
   * <JIRA Vorgangsnummer (optional)> - <Beschreibung des offenen Fehlers>

** Related Hardware
   * <Platinennummer> - <zusätzliche Hinweise, Modifikationen usw.>

** Comments
   * <Allgemeiner Kommentar>
   * <Allgemeiner Kommentar>

