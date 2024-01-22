R E L E A S E   N O T E S
-------------------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:   HMIP-WRC2 - Wall-mount Remote Control - 2-button

Company:  eQ-3, Maiburger Str. 29, 26789 Leer, Germany

Version 1.18.0 2022-02-14
--------------------------------------------------------------
** Bugfix
   * FactoryResetTiming to long
   
** New Feature
   * Change of the bidirectional cyclical status transmission interval to extend the battery lifetime.
   * Support of "Security Plus" - Disable active alarm system although the cloud is offline
   
** Improvement
   * General improvements - Code optimisation


Version 1.16.2 - 2020-10-26
--------------------------------------------------------------
** Bugfix
   * If AC is not responding on startup, the device is blocking until routing is done. 
     A triggered switch command is sent after that but without optical feedback.
   * Device is not waiting the ARR timeout after optical feedback (only devices with optical feedback at MAC level)


Version 1.16.0 - 2020-10-16
--------------------------------------------------------------
** New Feature
   * add support for optical feedback after MAC-sending is done (all MAC-ACKs received or MAC-Ack failure)


Version 1.14.10 - 2020-07-09
--------------------------------------------------------------
** Bugfix
   * USC with long keystroke is only sent after the key is released (if more Groups are activ)
   * RemoteControl freeze after 2nd long keystroke on same channel ((same fix as for bug in the line before)
   * Device sends further switch command after ReportLinkPartnerProblem was send
   * STOP-Button retriggers SwitchCommand which was send before from other Channel (same fix as for bug in the line before)


Version 1.14.8 - 2020-07-02
--------------------------------------------------------------
** Bugfix
    * If a burst partner is linked to channels > 6, a long keypress leads to a deadlock
    * Device send USC to Linkpartner on long keystroke as long button is pressed


Version 1.14.6 - 2020-06-18
--------------------------------------------------------------
** Bugfix
   * fixed wrong check of stop push button for


Version 1.14.4 - 09.06.2020
--------------------------------------------------------------
** Bugfix
   * Device teststatus not longer set to 0 by default


Version 1.14.2 - 29.05.2020
--------------------------------------------------------------
** Bugfix
   * Device sends switchCmd with long keystroke only on botton release to HmIP link partner
   * If add a LP to Channel < 7, Linkpartner on channel > 6 will not work anymore


Version 1.14.0 - 08.05.2020
--------------------------------------------------------------
** Modification
    * support for HmIP-HDRC


Version 1.12.4 - 29.11.2019
--------------------------------------------------------------
** Modification
    * support for HmIP-WRCCR


Version 1.10.2/1.10.4 - 20.11.2020/24.11.2021
--------------------------------------------------------------
** Bugfix
   * FactoryResetTiming to long

** New Feature
   * Change of the cyclical transmission interval to extend the battery lifetime.
   * Update HMOS to 1.40.0


Version 1.10.0 - 02.03.2018
--------------------------------------------------------------
** Bugfix
   * Sendeverhalten bei langem Tastendruck fehlerhaft
   * Fehler im Sendeverhalten, wenn Partner spÃ¤t antworten

** New Feature
   * HmIPW: Neuer Operation-Mode
   * Zentralen basierte LÃ¶sungen und LÃ¶sungen ohne Zentrale (Installateur)

** Improvement
   * Alarmbackup durchfÃ¼hren wenn Access Point/Zentrale ein NAK auf ein
     Unconditional Switch Command sendet
   * update HMOS to V1.26.0

--- END OF FILE ---
