C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-WHS2 - Homematic IP Switch Actuator for heating systems â 2 channels

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany

Version 2.0.010 - 2022-05-23
--------------------------------------------------------------

** Bugfix
   * Status info cannot request from virtuel channels
   * Sorting of status info container wrong

Version 2.0.008 - 2022-05-10
--------------------------------------------------------------

** Improvement
   * Code optimization

Version 2.0.006 - 2022-04-27
--------------------------------------------------------------

** Bugfix
   * Due to the default settings of the link parameters, a conditional switch command is not handled according to specification
   
Version 2.0.004 - 2022-03-31
--------------------------------------------------------------

** Bugfix
   * Weekprogram-Status(-with Ack) is not triggered in case of Mode-Change
   * MIOB "Normally Closed"-Input: Cooling is not activated

Version 2.0.000 - 2022-02-07
--------------------------------------------------------------

** Bugfix
   * Direct link CO input to FALx deactivates internal channel A
   * If the switch-on and switch-off times in the Easy Profile are set to "Not active" at the same time, the device hangs up.
   * WHS2 fails sporadically and can only be operated again after the 230 volt supply has been interrupted

** New Feature
   * Use of the HmIP-WHS2 in connection with the HmIP-BWTH wall thermostat

** Improvement
   * The time information telegram does not contain a note about the sommer / winter time change.
   * If possible, send multicasts only to PARTNER_ALL_WIRED_DEVICES instead of to PARTNER_ALL_DEVICES.

Version HmIP-WHS2 V1.4.002 - 2021-11-08
--------------------------------------------------------------

** Bugfix
   * CSC werden mit NAK beantwortet.
   * NAK auf DEC Execution_Code: Set_weekprogram_target_channel_lock



Version HmIP-WHS2 V1.4.000 - 2018-11-23
--------------------------------------------------------------

** Bugfix
   * Homematic IP actuators trigger, due to the astro function, one hour delayed or prematurely on the day of the time changeover.

** New Feature
   * Firmware-Erweiterung erforderlich damit GerÃ¤t mit HmIP-FALMOT-C12 gepaired werden kann
   * AppSequenceCounter-Ãberwachung auf Bereich ausweiten

** Improvement
   * All PowerUp parameters, that are listed in list 3 of the device, must be supported



--- END OF FILE ---
