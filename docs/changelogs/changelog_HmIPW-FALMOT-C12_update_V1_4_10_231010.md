C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:   HmIPW-FALMOT-C12 - Homematic IP Floor Heating Actuator â 12 channels, motorised

Company:  Q-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1.4.10 - 2023-09-29
--------------------------------------------------------------
** Improvement
   * optimization of the valve control


Version 1.4.8 - 2022-09-27
--------------------------------------------------------------
** Modification
   * new HMOS Version


Version 1.4.6 - 2021-02-09
--------------------------------------------------------------
** Bugfix
   * FALMOT reports disconnection to WTH if "Window open" is reported by WTH for longer
     than 3 hours.
      As soon as window open was signaled by the WTH, the cyclic telegram set/actual
      temperature from the WTH was no longer processed by the device, i.e. set and
      actual temperature were not updated until window close.
   * When the time request changes to the WTH partner, it does not change back to the
     Access Point
      If the Access Point is not reachable, the time request is sent to a known WTH. The
      time request was then sent permanently to this partner. This led to increased data
      communication if routers in the field.


Version 1.4.2 - 2020-11-30
--------------------------------------------------------------

First Release.


--- END OF FILE ---

