C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:   HmIP-FALMOT-C12 - Homematic IP Floor Heating Actuator - 12 channels, motorised

Company:  Q-3, Maiburger Str. 29, 26789 Leer, Germany


Version 1.4.008 - 2022-09-27
--------------------------------------------------------------
** Modification
   * General improvements - Code optimisation


Version 1.4.006 - 2021-02-09
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


Version 1.4.002 - 2020-11-30
--------------------------------------------------------------
** Bugfix
   * The channel 12 cannot be controlled above 17°C in pairing mode.
      After pairing, the device transmits the information to the wall thermostat whether
      External Clock is active or inactive. In this case, it is erroneously transmitted
      actively, so that the setting of the target temperature on the wall thermostat is
      limited.
   * In cooling mode, the valves are closed at temperatures above 30 °C.
   * DEC Identify: Time for display and system key illumination was wrong.
      The lighting duration of the backlight and the system button by sending the DEC
      "Identify" does not correspond to the specification.
   * The device sends invalid status frame.
      If additional configuration is transmitted during the status transmission, wrong
      values could be transmitted in the status.
   * The time information telegram does not contain a note about the summer / winter
     time change.
      So it was possible that a time request to the access point in the period where the
      changeover from summer to winter time takes place could lead to a double
      changeover.
   * Device crash in connection with a router.
      If commands from the AP could not be sent directly to the device and reached the
      device through a router, a device crash could occur.
   * Failure if WTH link partner is additionally linked to an eTRV and Optimum-Start-
     Stop is active at the WTH.
      The device did not distinguish between the HeatingControlMode frames sent to the
      eTRV or directly to the FALMOT. As long as Optimum-Start-Stop was not activated,
      this was not a problem, because the same info (set and actual temperature) was
      transmitted in both frames. However, if Optimum-Start-Stop is active, the
      telegrams are temporarily different and this led to a valve opening and closing on
      the device.


Version 1.2.002 - 2020-02-24
--------------------------------------------------------------
** Bugfix
   * Individual status changes on channel 1 were not transmitted.
      Status changes that only affect channel 1 were not transmitted. Only if further
      channels had status changes, the change of channel 1 was transmitted.

** New Feature
   * Implementation of automatic hydraulic adjustment.
      In order not to have to carry out a manual hydraulic adjustment, this is
      automatically do by the device.


Version 1.0.010 - 2019-08-12
--------------------------------------------------------------
** Improvement
   * Extension by valve PWM control at valve position < 15%.
      In order to prevent in rooms with several heating circuits being operated with the
      same room thermostat from maintaining different floor surface temperatures, a PWM
      control is switched on for small valve positions.


Version 1.0.008 - 2019-03-18
--------------------------------------------------------------

First Release.


--- END OF FILE ---

