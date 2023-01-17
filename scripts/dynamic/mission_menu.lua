-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BEGIN MENU DEFINITIONS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ## CAP CONTROL
local EnemyCAPS = MENU_COALITION:New( coalition.side.BLUE, "ENEMY CAP CONTROL" )
  local CAP_Shiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", EnemyCAPS )
  local CAP_Lar = MENU_COALITION:New( coalition.side.BLUE, "LAR AB", EnemyCAPS )
  local CAP_BandarA = MENU_COALITION:New( coalition.side.BLUE, "BANDAR ABBAS", EnemyCAPS )

-- ## GROUND ATTACK MISSIONS
local MenuCoalitionTopLevel = MENU_COALITION:New( coalition.side.BLUE, "GROUND ATTACK MISSIONS" )
  local MenuBandarL = MENU_COALITION:New( coalition.side.BLUE, "BANDAR LENGEH/LAR", MenuCoalitionTopLevel )
  local MenuKerman = MENU_COALITION:New( coalition.side.BLUE, "KERMAN", MenuCoalitionTopLevel )
  local MenuShiraz = MENU_COALITION:New( coalition.side.BLUE, "SHIRAZ", MenuCoalitionTopLevel )
  local MenuAsaloyeh = MENU_COALITION:New( coalition.side.BLUE, "ASALOYEH", MenuCoalitionTopLevel )
  

local MenuCoalitionBlue = MENU_COALITION:New(coalition.side.BLUE,"SHIP STRIKE")

--- END MENU DEFINITIONS
