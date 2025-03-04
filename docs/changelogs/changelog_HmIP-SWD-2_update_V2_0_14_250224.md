C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-SWD - Homematic IP Water Sensor

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version V2.0.014 - 2025-02-24
--------------------------------------------------------------

** Bugfix
   * Answer NAK is saved
   * Report LinkPartnerProblem is not send



Version V2.0.012 - 2025-02-20
--------------------------------------------------------------

** Bugfix
   * No rx at status info after restart



Version V2.0.010 - 2025-01-27
--------------------------------------------------------------

** Bugfix
   * LED in bootloader with wrong direction
   * Acoustic alarm timing is repeated every 60s
     If you set the ACOUSTIC_ALARM_TIMING to 3 or 6 minutes, it is repeated after 60s. However, there should be no more alarms after the specified time.
   * After button presses after exclusion no rx



--- END OF FILE ---
