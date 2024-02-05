-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MENU DEFINITIONS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ## CAP CONTROL
EnemyCAPS = MENU_COALITION:New( coalition.side.BLUE, "ENEMY CAP CONTROL" )
  CAP_Shiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", EnemyCAPS )
  CAP_Lar = MENU_COALITION:New( coalition.side.BLUE, "LAR AB", EnemyCAPS )
  CAP_BandarA = MENU_COALITION:New( coalition.side.BLUE, "BANDAR ABBAS", EnemyCAPS )

-- ## GROUND ATTACK MISSIONS
MenuGroundAttack = MENU_COALITION:New( coalition.side.BLUE, "LEGACY STRIKE MISSIONS" )
  MenuBandarL = MENU_COALITION:New( coalition.side.BLUE, "BANDAR LENGEH/LAR", MenuGroundAttack )
  MenuKerman = MENU_COALITION:New( coalition.side.BLUE, "KERMAN", MenuGroundAttack )
  MenuShiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", MenuGroundAttack )
  MenuAsaloyeh = MENU_COALITION:New( coalition.side.BLUE, "ASALOYEH", MenuGroundAttack )
  

-- ## SHIP STRIKE MISSIONS
MenuShipStrike = MENU_COALITION:New(coalition.side.BLUE,"SHIP STRIKE")


--- END MENU DEFINITIONS
