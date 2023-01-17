-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN RANGE SCRIPT SECTION (MOOSE)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local jtf1RangeControlCommon = 250.000

-- BEGIN YG77 Range

local bombtarget_YG77={"RANGE_YG77_EAST_bombing", 
  "RANGE_YG77_WEST_bombing",
  "RANGE_YG77_TAC_01",
  "RANGE_YG77_TAC_02",
  "RANGE_YG77_TAC_03",
  "RANGE_YG77_TAC_04",
  "RANGE_YG77_TAC_05",
  "RANGE_YG77_TAC_06",
  "RANGE_YG77_TAC_07",
  "RANGE_YG77_TAC_08",
  "RANGE_YG77_TAC_09",
  "RANGE_YG77_TAC_10"
  }
local strafepit_YG77_WEST={"RANGE_YG77_strafepit_A",
  "RANGE_YG77_strafepit_B"
  }
local strafepit_YG77_EAST={"RANGE_YG77_strafepit_C",
  "RANGE_YG77_strafepit_D"
  }

Range_YG77 = RANGE:New("YG77 Range")
fouldist_YG77 = Range_YG77:GetFoullineDistance("RANGE_YG77_strafepit_A", "RANGE_YG77_FoulLine_AB")
Range_YG77:AddStrafePit(strafepit_YG77_WEST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddStrafePit(strafepit_YG77_EAST, 3000, 300, nil, true, 20, fouldist_YG77)
Range_YG77:AddBombingTargets(bombtarget_YG77, 50)
Range_YG77:SetDefaultPlayerSmokeBomb(false)
Range_YG77:SetSoundfilesPath("Range Soundfiles/")
--Range_YG77:SetInstructorRadio(jtf1RangeControlCommon)
Range_YG77:SetRangeControl(250.100)
Range_YG77:Start()

-- END YG77 Range

-- BEGIN BM35 Range

local bombtarget_BM35 = {"BM35_village1",
  "BM35_village2",
  "BM35_village3",
  "BM35_village4",
  "BM35_village5",
  "BM35_village6",
  "BM35_village7",
  "BM35_village8",
  "BM35_village9",
  "BM35_village10"
  }

Range_BM35 = RANGE:New("BM35 Range")
Range_BM35:AddBombingTargets(bombtarget_BM35, 50)
Range_BM35:SetSoundfilesPath("Range Soundfiles/")
--Range_BM35:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM35:SetRangeControl(250.200)
Range_BM35:Start()

-- END BM35 Range

-- BEGIN BM54 Range

local strafepit_BM54_WEST={"RANGE_BM54_strafepit_A",
  "RANGE_BM54_strafepit_B"
  }
local strafepit_BM54_EAST={"RANGE_BM54_strafepit_C",
  "RANGE_BM54_strafepit_D"
  }
local bombtarget_BM54={"RANGE_BM54_EAST_bombing", 
  "RANGE_BM54_WEST_bombing"
  }

Range_BM54 = RANGE:New("BM54 Range")
fouldist_BM54 = Range_BM54:GetFoullineDistance("RANGE_BM54_strafepit_A", "RANGE_BM54_FoulLine_AB")
Range_BM54:AddStrafePit(strafepit_BM54_WEST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddStrafePit(strafepit_BM54_EAST, 3000, 300, nil, true, 20, fouldist_BM54)
Range_BM54:AddBombingTargets(bombtarget_BM54, 50)
Range_BM54:SetDefaultPlayerSmokeBomb(false)
Range_BM54:SetSoundfilesPath("Range Soundfiles/")
--Range_BM54:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM54:SetRangeControl(250.300)
Range_BM54:Start()

-- END BM54 Range

-- BEGIN BM64 Range

local bombtarget_BM64={"RANGE_BM64_bombing_01", 
  "RANGE_BM64_bombing_02",
  "RANGE_BM64_bombing_03",
  "RANGE_BM64_bombing_04",
  "RANGE_BM64_TAC_01",
  "RANGE_BM64_TAC_02",
  "RANGE_BM64_TAC_03",
  "RANGE_BM64_TAC_04",
  "RANGE_BM64_TAC_05",
  "RANGE_BM64_TAC_06",
  "RANGE_BM64_TAC_07",
  "RANGE_BM64_TAC_08",
  "RANGE_BM64_TAC_09",
  "RANGE_BM64_TAC_10",
  "RANGE_BM64_TAC_11",
  "RANGE_BM64_TAC_12",
  "RANGE_BM64_TAC_13",
  "RANGE_BM64_TAC_14",
  "RANGE_BM64_TAC_15"
  }
local strafepit_BM64 ={"RANGE_BM64_Strafepit_A",
  "RANGE_BM64_Strafepit_B"
  }

Range_BM64 = RANGE:New("BM64 Range")
fouldist_BM64 = Range_BM64:GetFoullineDistance("RANGE_BM64_Strafepit_A", "RANGE_BM64_FoulLine_AB")
Range_BM64:AddStrafePit(strafepit_BM64, 3000, 300, nil, true, 20, fouldist_BM64)
Range_BM64:AddBombingTargets(bombtarget_BM64, 50)
Range_BM64:SetDefaultPlayerSmokeBomb(false)
Range_BM64:SetSoundfilesPath("Range Soundfiles/")
--Range_BM64:SetInstructorRadio(jtf1RangeControlCommon)
Range_BM64:SetRangeControl(250.400)
Range_BM64:Start()

-- END BM64 Range

-- BEGIN CR94 Range

local bombtarget_CR94={"RANGE_CR94_EAST_bombing", 
  "RANGE_CR94_WEST_bombing"
  }
local strafepit_CR94_WEST={"RANGE_CR94_strafepit_A",
  "RANGE_CR94_strafepit_B"
  }
local strafepit_CR94_EAST={"RANGE_CR94_strafepit_C",
  "RANGE_CR94_strafepit_D"
  }

Range_CR94 = RANGE:New("CR94 Range")
fouldist_CR94 = Range_CR94:GetFoullineDistance("RANGE_CR94_strafepit_A", "RANGE_CR94_FoulLine_AB")
Range_CR94:AddStrafePit(strafepit_CR94_WEST, 3000, 300, nil, true, 20, fouldist_CR94)
Range_CR94:AddStrafePit(strafepit_CR94_EAST, 3000, 300, nil, true, 20, fouldist_CR94)
Range_CR94:AddBombingTargets(bombtarget_CR94, 50)
Range_CR94:SetDefaultPlayerSmokeBomb(false)
Range_CR94:SetSoundfilesPath("Range Soundfiles/")
--Range_CR94:SetInstructorRadio(jtf1RangeControlCommon)
Range_CR94:SetRangeControl(250.600)
Range_CR94:Start()

-- END CR94 Range


-- END RANGE SCRIPT SECTION
