# Arduino_Lipo_Storage_Discharger
Arduino controlled lipo battery storage discharger with current measurement and current control.

This device can discharge lipo and liion batterys to storage voltage without external power supply.
It can handle 2-6s lipos (8.4 - 25.2V) and can draw up to about 10A continues. 
(Max 140W, with 4 light bulbs)
The current can be controlled by the potentiometer.

The oled display will show: 
- current in A
- battery voltage
- each cell voltage
- total discharged current in mAh
- discharge time

For the discharging load 4 pieces 12V 35w G4 halogen bulbs will be used.
When the storage voltage is reached it will disconnect the load and the buzzer will beep every few seconds.

If you forget to disconnect the Lipo battery after discharging and the voltage drops below 3.75V per cell 
it will go to a low power consumption mode and beep only every few minutes.

