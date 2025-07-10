C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIPW-DRI16 - Homematic IP Wired Input Module - 16 channels

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.4.6 - 2025-05-26
--------------------------------------------------------------

** Bugfix
   * Wrong default value for parameter CYCLIC_INFO_MSG



Version 1.4.4 - 2025-05-20
--------------------------------------------------------------

** Bugfix
   * Status info cyclic time is roundabout 60s



Version 1.4.2 - 2025-05-15
--------------------------------------------------------------

** Bugfix
   * Device sends no dec identify by system button
   * Eventcounter at send usc always 0
   * AppSeqNo at send csc always at 1
   * Short button press is not always recognized correctly

** Improvement
   * Long button press cannot dim in conjunction with a motion detector.



Version 1.4.0 - 2025-01-31
--------------------------------------------------------------

** Bugfix
   * Short button press is not always recognized correctly
   * Offline alarming from Wired to Radio and Radio to Wired does not work
   * Display is not updated after voltage reset.
   * AppSeqNo is 0 after LongButtonPress
   * Short key press of key visual leads to a restart, if a factory reset was aborted before
   * Boot-Flag will not be set in a Status-Answer-Telegram  
   * Defaultwert fÃ¼r Parameter 0x6 Liste0 falsch gesetzt

** Improvement
   * Long button press cannot dim in conjunction with a motion detector.
   * Improve switch command functionality by new implementation of local loopback, adding command cancelation and using node sending functionality.
   * If possible, send multicasts only to PARTNER_ALL_WIRED_DEVICES instead of to PARTNER_ALL_DEVICES.



Version 1.2.2 - 2018-09-10
--------------------------------------------------------------

** Bugfix
   * If more than one status ACK frame is within the answer queue only the first one is send. Afterwards every new status ACK only triggers the last one
   * Statusinfo module creates status ACK telegrams with set ACK, ARR and Boot bits if this is the first status to be sent after startup
   * HmIP_APP: Send node confusion when using external send nodes
   * Sometimes Statusinfo uses old ApplicationSequenceNumber and Statusinfo with ACK get lost



Version 1.2.0 - 2018-07-06
--------------------------------------------------------------

** Bugfix
   * If an input is configured as a switch, a long keystroke is sent when the input is opened.
   * Fix CCM flags according to RFC3610

** Improvement
   * Add new parameter for Contrast
   * Unify values for undervoltage



--- END OF FILE ---
