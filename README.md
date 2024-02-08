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
- Shell 1-1 [KC135MPRS] 115Y, 317.5, FL220
- Texaco 1-1 [KC-135] 105Y, 317.55, FL240

Track XJ-YJ;
- Shell 4-1 [KC135MPRS] 119Y ,317.9, FL220
- Texaco 4-1 [KC-135] 120Y, 317.95, FL240

Track YH-BN;
- Shell 2-1 [KC135MPRS] 116Y, 317.6, FL220
- Texaco 2-1 [KC-135] 106Y, 317.65, FL240

Track DP;
- Shell 3-1 [KC135MPRS] 117Y ,317.7, FL220
- Texaco 3-1 [KC-135] 107Y, 317.75, FL240

Lincoln Hawk;
- Texaco 6-1 [S-3B] 38Y, 317.775, FL060

Tarawa Hawk;
- Arco 2-1 [S-3B] 39Y, 278.325, FL060

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

Tarawa LHA-1:
- BRC 280'
- TACAN 1X
- ILCS Channel 2
- Tower/Paddles: 255.725

(Use LHA TWR alt freq 278.325 to call AI Tower for landing)

AWACS RED
=========

- 305.325AM

ON DEMAND GROUND ATTACK MISSIONS
================================

Insurgent Camp Attack:  
----------------------

Strike missions are available, on-demand, via the F-10 menu. Camps can be spawned at a series of random locations, South of the Russian border, within the Eastern, Central and Western portions of the map (8x potential locations in each). A mission brief will be displayed with the location of the camp (nearest town and coordinates). A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location. A menu option is also available to remove the oldest spawned insurgent camp.

Convoy Attack: 
--------------

Strike missions against enemy convoys are available, on-demand, via the F-10 menu. Options are available to spawn both armoured and soft convoys, at a series of random locations within the Central and Western portions of the map. A mission brief will be displayed indicating the last known location of the convoy, its anticipated destination and the threats within it. A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location.

Strategic Strike Attacks: 
-------------------------

Strike missions are available, on demand, via the F10 menu. Air defences can be spawned at a series of target locations North of the Russian border. A mission brief will be displayed confirming the name of the chosen location, the coordinates of the main target center, and the anticipated threats. A mark, with a label listing the strike name and its coordinates, will be placed on the F10 map at the strike location. A menu option is also available to remove the mission after it has been spawned. The following target categories are selectable;

- Airfield
- Factory
- Bridge
- Port
- Naval (WiP)

RANGE COMPLEXES
===============

Range Control common: 250.000MHz

- YG77 N24 11.350 E053 42.433: 250.1MHz
- BM22 N23 43.710 E054 19.728: 250.2MHz
- BM52 N23 43.020 E054 36.000: 250.3MHz
- CR94 N27 29.606 E055 56.181: 250.4MHz

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

Application and removal of Dynamic Deck Templates is available in the F10|Other|JTF-1 menu under "Dynamic Deck" for carriers that support them. Complete and partial templates can be applied to supported ships. 

Complete templates contain a full set of static objects for Launch or Recovery. If a Complete template is applied all existing statics will be cleared from the deck first.

Partial templates can be added to or subtracted from a clear deck or a deck containing other partial templates. Partial templates cannot be added to, or removed from, a Complete template that has already been applied.

The "Clear Deck" command will remove all statics from the deck.

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
- SA3
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


List Spawn Object Types
-----------------------

CMD [SPAWN COMMAND] OPTIONS


Example
-------

CMD ASPAWN: OPTIONS

Will list spawnable AIRSPAWN object types


Cut-n-Paste Command Examples
----------------------------

CMD GSPAWN: SA8, ALERT: RED, SKILL: HIGH

CMD GSPAWN: SA15, ALERT: RED, SKILL: HIGH

CMD ASPAWN: MQ9, ALERT: RED, SKILL: HIGH, ALT: 120

CMD ASPAWN: WINGLOON, ALERT: RED, SKILL: HIGH, ALT: 120

CMD ASPAWN: MIG29, NUM: 2, HDG: 90, SKILL: GOOD, ALT: 280, TASK: CAP

CMD DELETE: GROUP BVR_MIG29A#001