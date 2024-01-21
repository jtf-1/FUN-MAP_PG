Welcome to the JTF-1 Fun Map!
Please make yourself aware of the following information:

ATIS
====

- Al Dhafra 119.6
- Al Minhad 121.925
- Khasab 125.0
- Dubai Intl. 131.7
- Abu Dhabi Intl. 125.1 

AWACS
=====

Magic 1-1 282.025 (Track WK-YJ)

TANKERS
=======

Track WK;
- Arco 1-1  [KC135]  35Y, 276.5, FL160
- Shell 1-1 [KC135MPRS] 115Y, 317.5, FL220
- Texaco 1-1 [KC-135] 105Y, 317.55, FL240

Track XK-YK;
- Arco 4-1 [KC135] 118Y ,317.8, FL160
- Shell 4-1 [KC135MPRS] 119Y ,317.9, FL220
- Texaco 4-1 [KC-135] 120Y, 317.95, FL240

Track YH-BN;
- Arco 2-1  [KC135]  36Y, 276.6, FL160
- Shell 2-1 [KC135MPRS] 116Y, 317.6, FL220
- Texaco 2-1 [KC-135] 106Y, 317.65, FL240

Track DP;
- Arco 3-1  [KC135]  37Y, 276.7, FL160
- Shell 3-1 [KC135MPRS] 117Y ,317.7, FL220
- Texaco 3-1 [KC-135] 107Y, 317.75, FL240

Lincoln Hawk;
- Texaco 6-1 [S-3B] 38Y, 317.775, FL060

Forrestal Hawk;
- Texaco 6-2 [S-3B] 15Y, 278.325, FL060

NAVAL OPERATIONS
================

Strike: 357.775 (Grape 01)
Marshall: 285.675

Lincoln CVN-72 (SC)
- BRC 300'TRUE
- TACAN 72X 
- ILCS: Channel 4
- LINK 4 372.0 MHz
- Towers/Paddles: 308.475 AM

(Use CV Deck freq 274.075 to call AI APPR/TWR/PAD)


Forrestal CVN-59:
- BRC 315'TRUE
- TACAN 59X 
- ILCS: Channel 4
- Towers/Paddles: 308.475 AM
 
(Use CV Deck freq 274.175 to call AI Tower to reqest landing. This also activates lights at night)

Tarawa LHA-1:
- BRC 280'
- TACAN 1X
- ILCS Channel 2
- Tower/Paddles: 255.725

(Use LHA TWR alt freq 278.325 to call AI Tower for landing)

AWACS RED
=========

- 305.325AM

MISSILE TRAINER
===============

A missile trainer is available to assist training in A/S and A/A missile evasion without being destroyed. By default, the missile trainer is disabled, but may be enabled for your aircraft via the F10 menu

While enabled, the missile trainer will;

- Alert on missile launch
- Provide evasion advice
- Destroy incoming missiles prior to impact

NOTE: At very high closure rates it may not be possible to destroy the incoming missile without causing (potentially catastrophic) damage to your aircraft. The missile trainer will not protect against cannon rounds or other balistic weapons.

AIRSTRIKE ON FLEET
==================

The F10 Menu "Ship Strike" provides for a player callable anti-ship strike on both the Tarawa and the Forrestal. The exact target and departure location are randomly selected. A message informing the player on the aircraft type, departure location, and target will transmit.

The three strike packages are as follows:

1. SU24s loaded with ASMs from Bandar Abbas Intl will target the Tarawa.
2. SU24s loaded with ASMs from Shiraz International Airport will target the Tarawa.
3. SU24s loaded with ASMs from Shiraz International Airport will target the Forrestal.

*BE AWARE OF INDIRECT ROUTING*
*RECOMMEND TUNING 282.025 FOR BLUE AWACS SUPPORT*
*DESTRUCTION COMMAND AVAILABLE IN F10 "Ship Strike" MENU*


RANGE COMPLEXES
===============

Range Control common: 250.000MHz

- YG77 N24°11'21 E053°42'26: 250.1MHz
- BM35 N24°01'34 E054°23'58: 250.2MHz
- BM54 N23°56'06 E054°34'29: 250.3MHz
- BM64 N23°56'00 E054°43'35: 250.4MHz
- CR94 N27°29'39 E055°58'46: 250.5MHz

Ranges are script scored and have an F10 menu system you can use to manage them. A range instructor is available at each range to provide hit assessment. 

Bomb targets are scored on the proximity of the last round to the target. Smoke will be used to mark the round's impact.

Strafe Pits, where available, are configured with two targets. Aircraft must be below 3000ft AGL and within 500ft either side of the inbound heading to the target to avoid a foul pass. Rounds fired after the foul line will not count.

CARRIER CONTROL
===============

Launch and Recovery windows can be requested from the F10|Other|Carrier Control menu. The carrier will cruise West/East to hold station and will turn into wind when a window is requested. The following window lengths are available;

- 15 minutes
- 30 minutes
- 60 minutes
- 90 mninutes

The current window can also be cancelled from the menu. After a window has been cancelled the carrier will retun to the point at which the window was requested and continue holding station.

Deck lighting can be controlled via the Change Lights submenu. By default, the carrier lights mode is set to Navigation when cruising and will change to Recovery mode at the start of a recovery window. The mode can be changed to Launch, or back to Recovery, via the menu.

DYNAMIC DECK TEMPLATES
======================

Application and removal of Dynamic Deck Templates is available in the F10|Other|JTF-1 menu under "Dynamic Deck". Complete and partial templates can be applied to supported ships. 

Complete templates contain a full set of static objects for Launch or Recovery. If a Complete template is applied all existing statics will be cleared from the deck first.

Partial templates can be added to or subtracted from a clear deck or a deck containing other partial templates. Partial templates cannot be added to, or removed from, a Complete template that has already been applied.

The "Clear Deck" command will remove all statics from the deck.

AIRBOSS
=======

Scripted recovery of aircraft on CVN-74 John C Forrestal is available via the F10 menu.
Use the Marshal and Paddles frequencies as shown above to contact the relevant agencies when using the menu or when told to do so by Marshal. 

Main Features;
--------------

- CASE I, II and III recoveries.
- Automatic LSO grading including (optional) live grading while in the groove.
- Different skill levels, from on-the-fly tips for flight students to ziplip for pros, can be set for each player individually.
- Separate radio channels for LSO and Marshal transmissions.
- Voice over support for LSO and Marshal radio transmissions.
- Advanced F10 radio menu including carrier info, weather, radio frequencies, TACAN/ICLS channels, player LSO grades, marking of zones etc.
- Persistence of player results. LSO grading data is saved.

AIRBOSS Menu Structure;
-----------------------

- F1 Help... (Help submenu. Set skill level, check status etc.)
- F2 Kneeboard... (Kneeboard submenu. Carrier information, weather report, player status.)
- F3 Request Marshal
- F4 Request Commence
- F5 Request Refueling
- F6 Spinning
- F7 Emergency Landing
- F8 [Reset My Status]

F3 Request Marshal
------------------

This radio command can be used to request a stack in the holding pattern from Marshal. Necessary conditions are that the flight is inside the Carrier Controlled Area (CCA, 50nm).

Marshal will assign an individual stack for each player group depending on the current or next open recovery case window. If multiple players have registered as a section, the section lead will be assigned a stack and is responsible for guiding his section to the assigned holding position.

F4 Request Commence
-------------------

This command can be used to request commencing from the marshal stack to the landing pattern. Necessary condition is that the player is in the lowest marshal stack and that the number of aircraft in the landing pattern is smaller than four.

A player can also request commencing if he is not registered in a marshal stack yet. If the pattern is free, Marshal will allow him to directly enter the landing pattern.

F5 Request Refueling
--------------------

The player can request refueling at the Hawk tanker. The player will be informed if the tanker is currently busy or going RTB to refuel itself at its home base. Once the re-fueling is complete, the player has to re-register to the marshal stack.

F6 Spinning
-----------

If the pattern is full, players can go into the spin pattern. This step is only allowed, if the player is in the pattern and his next step is initial, break entry or early/late break. At this point, the player should climb to 1200 ft and follow the spin pattern on the port side of the boat and return to the initial.

If a player is in the spin pattern, flights in the Marshal queue should hold their altitude and are not allowed into the pattern until the spinning aircraft proceeds.

Once the player is aft of the abeam point and at least 1 NM to port, his step is set to "Initial" and he can resume the normal pattern approach.

If necessary, the player can call "Spinning" again when in the above mentioned steps.

F7 Emergency Landing
--------------------

Request an emergency landing, i.e. bypass all pattern steps and go directly to the final approach.

All section members are supposed to follow. Player (or section lead) is removed from all other queues and automatically added to the landing pattern queue.

If this command is called while the player is currently on the carrier, he will be put in the bolter pattern so that the next expected step after take off will be the abeam position. This allows for quick landing training exercises without having to go through the whole pattern.

F8 [Reset My Status]
--------------------

This will reset the current player status. If player is currently in a marshal stack, he will be removed from the marshal queue and the stack above will collapse. The player needs to re-register later if desired. If player is currently in the landing pattern, he will be removed from the pattern queue.

MAP MARK SPAWNING
=================

WIP - Use F10 map marks to spawn BVR opponents or ground threats anywhere on the map. Add mark to map then type the CMD syntax below in the map mark text field. The command will execute on mouse-clicking out of the text box.

NOTE: currently no syntax error feedback if you get it wrong.


Airspawn syntax
---------------

CMD ASPAWN: [type][, [option]: [value]][...]


Airspawn Types
--------------

- F4
- SU27
- MIG29
- SU25
- MIG23


Airspawn Options
----------------

- HDG: [degrees] - default 000
- ALT: [flight level] - default 280 (28,000ft)
- DIST:[nm] - default 0 (spawn on mark point)
- NUM: [1-4] - default 1
- SPD: [knots] - default 425
- SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE
- TASK: [CAP] - default NOTHING


Example
-------

CMD ASPAWN: MIG29, NUM: 2, HDG: 180, SKILL: GOOD

Will spawn 2x MiG29 at the default speed of 425 knots, with heading 180 and skill level GOOD.


Groundspawn Syntax
------------------

CMD GSPAWN: [groundspawn type][, [option]: [value]][...]


Groundspawn Types
-----------------

- SA2
- SA6
- SA10
- SA11
- SA15


Groundspawn Options
----------------

- ALERT: [GREEN, AUTO, RED] - default RED 
- SKILL: [AVERAGE, GOOD, HIGH, EXCELLENT, RANDOM] - default AVERAGE


Example
-------

CMD GSPAWN: SA6, ALERT: GREEN, SKILL: HIGH

Will spawn an SA6 Battery on the location of the map mark, in alert state GREEN and with skill level HIGH.


Delete Spawn Syntax
-------------------

CMD DELETE: [object type] [group name from F10 map]


Delete Spawn Object Types
-------------------------

- GROUP


Example
-------

CMD DELETE: GROUP MIG29A#001

Will remove the spawned group named MIG29A#001


Cut-n-Paste Command Examples
----------------------------

CMD GSPAWN: SA8, ALERT: RED, SKILL: HIGH

CMD GSPAWN: SA15, ALERT: RED, SKILL: HIGH

CMD ASPAWN: MQ9, ALERT: RED, SKILL: HIGH

CMD ASPAWN: WINGLOON, ALERT: RED, SKILL: HIGH

CMD ASPAWN: MIG29, NUM: 2, HDG: 90, SKILL: GOOD, ALT: 280, TASK: CAP

CMD DELETE: GROUP BVR_MIG29A#001