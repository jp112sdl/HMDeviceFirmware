C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP Motion Detector

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version V3.8.104 - 2024-01-26
--------------------------------------------------------------

** Bugfix
   * The changeover from summer time to winter time takes place 1 hour too early
   * Actuator channels: Process State is not output correctly
   * DaylightSavingTime changeover does not take place
   * Wrong Parameter values for UTC and DST
   * Device should send a TimeInfoRequest after configuration of list 0
   * Weekprogram profile: Real and virtual states don't match
   * The device sporadically does not switch according to the time profile



Version V3.8.102 - 2024-01-11
--------------------------------------------------------------

** Bugfix
   * ParameterList 3 - wrong Defaultvalues short/long for parameter ONTIME  
   * PowerUP-Paramter: Switch-on delay for VirA (CH10) is ignored
   * Switching status of the real channel is not consistent for various "LogicCombination" with Vir channel A
   * Parameter "EventDelayTime" delays the actuator state change

** Improvement
   * Customizing the Function of the System Button



Version V3.8.98 - 2023-12-13
--------------------------------------------------------------

** Bugfix
   * Parameter 0x18 und 0x 1a in Liste 0 haben falschen default-wert



Version V3.6.82 - 2023-10-05
--------------------------------------------------------------

** Improvement
   * Parameter x4D und x4C Default-Wert anpassen



Version V3.6.78 - 2023-09-27
--------------------------------------------------------------

** Bugfix
   * RequestConfigUpdate not send on buttonpress (push buttons)

** Improvement
   * Long button press cannot dim in conjunction with a motion detector.



Version V3.6.72 - 2023-05-04
--------------------------------------------------------------

** Bugfix
   * Keine Statusmeldung, wenn Bewegungserkennung mit DEC reaktiviert wird



Version 3.2.28 - 2022-05-13
--------------------------------------------------------------

** Modification
   * Ungefilterter Helligkeitswert ist immer gleich dem gefilterten Wert 



Version V3.2.22 - 2021-10-14
--------------------------------------------------------------

** Modification
   * GerÃ¤t ignoriert Antworten der Zentrale bei mehr als einem Link auf dem BM-Kanal
   * GerÃ¤t ignoriert Antworten der Zentrale bei mehr als einem Link auf dem BM-Kanal
   * GerÃ¤t ignoriert Answer-Frames von Zentrale und zeigt dann ein falsches Sendeverhalten



Version V3.2.20 - 2021-07-22
--------------------------------------------------------------

** Modification
   * CLONE - BrightnessFilterTime - Status mit gefiltertem Wert wird zu spÃ¤t gesendet  
   * BrightnessFilterTime - Status mit gefiltertem Wert wird zu spÃ¤t gesendet  



Version V3.2.18 - 2021-07-21
--------------------------------------------------------------

** Modification
   * CLONE - GerÃ¤t antwortet nicht immer auf ein StatusRequest 
   * GerÃ¤t antwortet nicht immer auf ein StatusRequest 
   * CLONE - GerÃ¤t sendet auf ein ConfigStart ein Answer mit NAK-Old Event
   * GerÃ¤t sendet auf ein ConfigStart ein Answer mit NAK-Old Event



Version V3.2.16 - 2021-07-14
--------------------------------------------------------------

** Modification
   * CLONE - GerÃ¤t sendet kein AppAck/Status wenn ein Schaltbefehl mit langem Tastendruck  auf dem BlockingChannel  empfangen wird
   * GerÃ¤t sendet kein AppAck/Status wenn ein Schaltbefehl mit langem Tastendruck  auf dem BlockingChannel  empfangen wird
   * CLONE - SPI sendet kein Status nach timeout der Blocking Period, wenn zuvor Konfig.parameter Ã¼bertragen wurden



--- END OF FILE ---
