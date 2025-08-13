C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-WGTC-F - HmIP-WGTC-F

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.0.14 - 2025-07-10
--------------------------------------------------------------

** Bugfix
   * NAK from channel 11 and 12



Version 1.0.12 - 2025-07-04
--------------------------------------------------------------

** Bugfix
   * No status info from channel 8 after set changeover from miob
   * Display for humidity set 'dEF' and statusinfo set to 254 after reboot
   * PowerUp function wrong
   * CSC from channel 19 to channel 11 is not execute
   * RelHumidity set as defect at offset temp -12.8
   * No status info after quick veto time
   * DEC with ontime at channel 2 not triggers status info after ontime
   * Long button press only sends 5s



Version 1.0.10 - 2025-06-12
--------------------------------------------------------------

** Bugfix
   * Switch output switches every second
   * Status info cyclic time is roundabout 60s
   * Parameter 0x3b list 6 channel 8 wrong
   * After set highest parameter no reset



Version 1.0.4 - 2025-04-29
--------------------------------------------------------------

** Bugfix
   * Sometimes the is temp is shown after press +/- button
   * Status from channel 19 always with appseqno 1
   * No status info after change cooling/heating
   * NAK for dec floor heating command 1 and 2 from channel 0
   * Channel 13 not send dec to FAL
   * Answer nak at a DEC from a eTRV
   * DEC from channel 8 is send with channel 0
   * DEC from channel 8 is send without ARR
   * Channel 5 & 6 not setable with weekprog
   * Channel 2 not sends statusinfo at change level with weekprog
   * Switch output not turn off at delete internal link
   * Wrong behaviour of channel 2
   * Channel 21 only sends level with 0% or 100%
   * DEC is send without delay
   * Sometime NAK recipient is busy from channel 12
   * Eventcounter at channel 1 not count up
   * NAK from channel 11



Version 1.0.0 - 2025-01-24
--------------------------------------------------------------

** New Feature
   * First Release



--- END OF FILE ---
