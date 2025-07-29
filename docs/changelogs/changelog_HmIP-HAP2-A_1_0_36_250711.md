C H A N G E L O G
-----------------

Please note: Only use the firmware file in connection with the current software-version of the CCUx!

Device:      HmIP-HAP - Access Point 2, anthracite

Company:     eQ-3, Maiburger Str. 29, 26789 Leer, Germany



Version 1.0.36 - 2025-07-11
--------------------------------------------------------------

** Bugfix
   * The HAP2 sends ICMP destination unreachable with the wrong IP source address.
   * The HAP2 does not send its cyclic status info frames.
   * First signal of the boot sequence is not visible 



Version 1.0.34 - 2025-07-10
--------------------------------------------------------------

** Bugfix
   * The access point determines routes from radio frames that are not directly addressed to it.
   * HAP2 blinkt nach Neustart der HCU
   * Keine Verbindung zu den GerÃ¤ten, wenn HAP2 die Verbindung Ã¼bernimmt
   * Wrong entry in Routing Table
   * HAP2 bursted Tripple Burst EmpfÃ¤nger nicht an
   * No answer for frame from sim device send to crrfd



Version 1.0.32 - 2025-07-07
--------------------------------------------------------------

** Bugfix
   * Heating Controller Mode Frames to Multicast are not filtered.Â 
   * The AccessPoint does not respond to the cloud address if it is not directly connected.



Version 1.0.30 - 2025-07-03
--------------------------------------------------------------

** Bugfix
   * All routes learned over backbone send in rm response
   * Age counter not reset after icmp neighbor advertisement
   * No answer to Status Request frames
   * RSSI with 0x80 for rf device entry
   * Network table entry with distance 0



Version 1.0.28 - 2025-06-20
--------------------------------------------------------------

** Bugfix
   * Remove parameter 202 in list 27 channel 0
   * Self RM Response is not send over websocket
   * Error answer at get routing info
   * Route inclusion frames to websocket not correct
   * Answer invalid input for some frames over hap v4



Version 1.0.26 - 2025-06-13
--------------------------------------------------------------

** Bugfix
   * Connecting to websocket when accessprio is set to 0xff
   * Websocket connection is not closed when include as secondary ap
   * Error at set/read highest parameter value at list 27

** Improvement
   * Insecure cipher suites have been removed for TLS handshake.



Version 1.0.24 - 2025-06-04
--------------------------------------------------------------

** Bugfix
   * HmIP frames over websocket to long
   * Routes learned over backbone are not distributed over RF
   * No status info after reboot
   * Long button press data wrong

** New Feature
   * Distribute background OTAU at 13 second intervals.



Version 1.0.22 - 2025-05-26
--------------------------------------------------------------

** Bugfix
   * When updating from version 1.0.18 to 1.0.20, the parameters are not reset correctly.
   * Sporadically, the access point does not send Ethernet frames after startup



Version 1.0.20 - 2025-05-14
--------------------------------------------------------------

** Bugfix
   * The HAP2 does not flood the frame if the destination is not reachable.
   * The crRFD address is marked as unreachable in the routing table, even if the access point is connected to the cloud server.
   * MAC Sequencenumer is overwritten by HmIP-Parameter
   * HAP2 exchange - devices not reachable
   * StatusInfo is send to MulticastAllAccessControllers

** Improvement
   * Sending ICMP-Neighbor-Solicitation after startup to all devices with triple burst.



Version 1.0.16 - 2025-05-08
--------------------------------------------------------------

** Bugfix
   * The Netfinder module must first receive a Netfinder frame before it can send a frame. 
   * Error at appseqno overflow



Version 1.0.14 - 2025-05-05
--------------------------------------------------------------

** Bugfix
   * The access point does not attempt to establish a connection if the primary access point is no longer available.
   * CrRFD Address is not set as additional listener after reinclusion
   * Backbone Sequence counter is not loaded correctly after reinclusion



Version 1.0.12 - 2025-04-29
--------------------------------------------------------------

** Bugfix
   * Networkkey and Backbonekey are not set correctly with the command "set enc nwk" and "set enc bbk"
   * Boot bit is always set in StatusInfo
   * No answer for get device inclusion data local and master key



Version 1.0.8 - 2025-04-16
--------------------------------------------------------------

** Bugfix
   * Keys are not reloaded after setting encrypted network or backbone key 
   * Listener mode is not correctly taken into account when sending via radio

** New Feature
   * Send Report Available Version telegramm to crRFD



Version 1.0.6 - 2025-04-09
--------------------------------------------------------------

** Bugfix
   * A lookup URL configured via Netfinder is deleted after a firmware update.
   * Remove whitespaces from attribute keys when submitting config data
   * No download from hawkbit preprod hap2

** Improvement
   * Hostname in DHCP discover einbauen
   * Cloudverbindung wÃ¤rend der Produktion
   * Die normalen LED-Signale kÃ¶nnen den Produktionstest stÃ¶renÂ 

** Modification
   * Activate certificate verification for Lookup and Cloud.



Version 1.0.4 - 2025-04-08
--------------------------------------------------------------

** Bugfix
   * String terminator is not set correct for Cloud URL
   * HTTPS download does not work
   * HmIP Frames over websocket are routed and send by 0x000000
   * Device sends RM Response if other device sends RM Response
   * Device sends RM V1 over RF
   * Device sends firmware update unsolicited
   * Request configuration not work
   * Factory reset over websocket with answer error
   * Answer for rm request wrong
   * Distance in RM Response table entry always 0
   * No RM Request after activate routing
   * ICMP neighbor/router_advertisement is send after factory rest / exclusion

** Modification
   * Fallback update URL zum release korrigieren



Version 1.0.2 - 2025-03-31
--------------------------------------------------------------

** Improvement
   * Activate watchdog 



Version 1.0.0 - 2025-03-28
--------------------------------------------------------------

** Bugfix
   * hap2 not route backbone frames to crrfd
   * Download of Update file does not work with S3 Server when gatewaytoken is sent



Version 0.3.26 - 2025-03-24
--------------------------------------------------------------

** Bugfix
   * Unencrypted frames are routed in inclusion mode
   * ListenerMode in InclusionRequest wrong
   * Factory reset button press time wrong



Version 0.3.22 - 2025-03-07
--------------------------------------------------------------

** Bugfix
   * first status frame is send with key_state = short press 
   * LED Statusanzeige nicht richtig
   * No rm table entry for rf device sends config request or icmp neighbor advertisement
   * AccessPrio 0xff dont close the websocket connection
   * Reconnect time is not used in CloseConnection frame
   * New address after restart in inclusion mode
   * Factory reset timeout to short



Version 0.3.20 - 2025-02-27
--------------------------------------------------------------

** Bugfix
   * Incorrect websocket ping

** New Feature
   * Hawkbit connects to default server if no URL is set

** Improvement
   * LWIP aktualisieren



Version 0.3.18 - 2025-02-25
--------------------------------------------------------------

** Bugfix
   * HAP2 firmware hangs after update to version 0.3.16



Version 0.3.16 - 2025-02-24
--------------------------------------------------------------

** Bugfix
   * The HAP2 application hangs if the cloud server unexpectedly closes the connection 

** New Feature
   * Hawkbit supports SGTIN as URL for local update



Version 0.3.14 - 2025-02-17
--------------------------------------------------------------

** Bugfix
   * For TLS connections with the ECDHE-RSA-AES256-GCM-SHA384 cipher suite, decryption errors occur if the key length is greater than 2048 bits. 
   * Hawkbit answer now contains manufacturer code and device type

** New Feature
   * Flashing seconed Ethernet LED on traffic

** Improvement
   * Hawkbit now adds deviceindividual data to the URI by itself



Version 0.3.10 - 2025-02-11
--------------------------------------------------------------

** New Feature
   * Hwakbit-Client implementation

** Improvement
   * Use ssl for lookup request



--- END OF FILE ---

