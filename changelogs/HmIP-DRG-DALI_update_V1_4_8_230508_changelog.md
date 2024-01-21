C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-DRG-DALI - Homematic IP DALI Gateway

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.4.8 - 2023-05-08
--------------------------------------------------------------

** Bugfix
   * Much configuration can lead to deadlock
   * At the end of a ramp, the last status of the luminaire may not be queried.
   * Faulty effect processing at level = 0%
   * HSV data in StatusInfo at dimming as tuneable white
   * Incorrect status when using UL effects
   * Several improvements and bugfixes for effects

** Improvement
   * Enable selective reset of individual devices on the bus



Version 1.4.6 - 2023-04-19
--------------------------------------------------------------

** Bugfix
   * Effect: Sunrise has wrong default value
   * Effect with old value sometimes take the wrong value
   * Effect colour with level 0 is not set



Version 1.4.4 - 2023-04-12
--------------------------------------------------------------

** Bugfix
   * Parameter "UNIVERSAL_LIGHT_MAX_CAPABILITIES" is not transferred to crRFD after DALI reset



Version 1.4.2 - 2023-04-11
--------------------------------------------------------------

** Bugfix
   * After reboot or inclusion device sends frame with wrong frametype



Version 1.4.0 - 2023-03-31
--------------------------------------------------------------

** Bugfix
   * Effect / scene with random sequence and endless repetitions stops
   * Device does not respond to multicast addresses AllWiredAndBackboneDevices and AllDinRailDevices

** New Feature
   * Status extension for the search in the DALI bus

** Improvement
   * Adjustment of firmware update blinking when the main processor updates the coprocessor



Version 1.2.2 - 2023-03-01
--------------------------------------------------------------

** Bugfix
   * Error while initialization of ethernet phy, if devices was powered down for about 10 seconds



Version 1.2.0 - 2023-01-25
--------------------------------------------------------------

** New Feature
   * Frist Release



--- END OF FILE ---
