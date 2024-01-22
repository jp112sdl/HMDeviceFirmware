C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-eTRV-E - Homematic IP Heizkörperthermostat – Evo

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version V1.4.6 - 2023-10-17
--------------------------------------------------------------

** Bugfix
   * ARR Bit in CYCLIC_BIDI_INFO_MSG nicht gesetzt						
   * Low Bat Meldung kommt nicht bei Spannungseinbruch durch Motorfahrt / Display an



Version V1.4.4 - 2023-10-06
--------------------------------------------------------------

** Bugfix
   * ARR Bit of Status Info Frame set False after Inclusion

** Improvement
   * Status Info nach Änderung der Ventilposition wird spät gesendet



Version V1.4.2 - 2023-09-19
--------------------------------------------------------------

** Bugfix
   * Valve-adapt: Device first sends Status "wait-state" before "adaption in progress"
   * Device sends ACK and NAK after Reboot command
   * Device sends Status Info to Multicast with ARR
   * Status info after window open has wrong valve level

** Improvement
   * Status Info nach Änderung der Ventilposition wird spät gesendet



Version V1.4.0 - 2023-09-10
--------------------------------------------------------------

** Bugfix
   * When adaption is aborted via button press, the adaption is automatically restarted after installation drive
   * Device reacts delayed after a window action with the motor drive

** Improvement
   * Increase Low Batt Threshold



Version V1.2.2 - 2022-10-04
--------------------------------------------------------------

** Bugfix
   * Beleuchtungsdauer > 50 Sekunden stimmt nicht



Version V1.2.0 - 2022-02-10
--------------------------------------------------------------

** Bugfix
   * Setting vacation/party mode not possible
   * Valve remains closed after decalcification
   * eTRV kehrt nicht auf eingestellte Temperatur zurück nach Abschaltung des Eco-Modus



Version V1.0.12 - 2022-01-27
--------------------------------------------------------------

** Bugfix
   * Week program 3 not usable



Version V1.0.10 - 2021-03-01
--------------------------------------------------------------

** Improvement
   * Default value for display contrast must be adjusted



Version V1.0.0 - 2019-08-19
--------------------------------------------------------------

** Improvement
   * The time information telegram does not contain a note about the sommer / winter time change.



--- END OF FILE ---
