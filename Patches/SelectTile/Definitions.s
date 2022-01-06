
.include "FE-CLib-master/reference/FE8U-20190316.s"


SET_FUNC Get_Hp_Growth2,   Get_Hp_Growth+1
SET_FUNC Get_Str_Growth2, Get_Str_Growth+1
SET_FUNC Get_Mag_Growth2, Get_Mag_Growth+1
SET_FUNC Get_Skl_Growth2, Get_Skl_Growth+1
SET_FUNC Get_Spd_Growth2, Get_Spd_Growth+1
SET_FUNC Get_Def_Growth2, Get_Def_Growth+1
SET_FUNC Get_Res_Growth2, Get_Res_Growth+1





//@ Vanilla function declarations:

SET_FUNC GetUnitRangeMask, (0x080171E8+1)

SET_FUNC CanUnitUseWeapon, (0x8016750+1)

SET_FUNC CanUnitUseStaff, (0x8016800 + 1)

SET_FUNC DrawItemMenuCommand, (0x08016848+1)

SET_FUNC GetWeaponRangeMask, (0x080170D4+1)

SET_FUNC AttackUMEffect, (0x08022B30+1)

SET_FUNC DrawItemRText, (0x08088E60+1)

SET_FUNC RTextUp, (0x08089354+1)

SET_FUNC RTextDown, (0x08089384+1)

SET_FUNC RTextLeft, (0x080893B4+1)

SET_FUNC RTextRight, (0x080893E4+1)

SET_FUNC GetUnitEquippedItem, (0x08016B28+1)

SET_FUNC StartMovingPlatform, (0x080CD408+1)

SET_FUNC SetupMovingPlatform, (0x080CD47C+1)
SET_FUNC DeleteSomeAISStuff, (0x0805AA28+1)

SET_FUNC DeleteSomeAISProcs, (0x0805AE14+1)


SET_FUNC LockGameGraphicsLogic, 0x8030185
SET_FUNC UnlockGameGraphicsLogic, 0x80301B9
SET_FUNC MU_AllDisable, 0x80790E1
SET_FUNC MU_AllEnable, 0x80790ED

//@ Data declarations:
SET_DATA gBG0MapBuffer, 0x02022CA8

SET_DATA gBG1MapBuffer, 0x020234A8

SET_DATA gBG2MapBuffer, 0x02023CA8


SET_DATA gSomeAISStruct, 0x030053A0

SET_DATA gSomeAISRelatedStruct, 0x0201FADC

SET_DATA MemorySlot, 0x30004B8




