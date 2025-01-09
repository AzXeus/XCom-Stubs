class XGHeadQuarters extends XGStrategyActor
    notplaceable;
	
var XGFacility_Barracks m_kBarracks;
var XGFacility_Labs m_kLabs;
var XGFacility_Engineering m_kEngineering;
var array<TStaffOrder> m_arrHiringOrders;
var XGBase m_kBase;


function XGFacility_Barracks GetBarracks() 
{
	return m_kBarracks;
}

function XGFacility CurrentFacility()
{
    return ReturnValue;    
}

function string RecordHiredAdditionalSoldiers(int iQuantity)
{
}

function bool HasFacility(int iFacility)
{
}

function OrderStaff(int iType, int iQuantity)
{
    local TStaffOrder kOrder;
    local int I;

    // End:0x1A6
    if(iQuantity <= 0)
    {
        kOrder.iStaffType = iType;
        kOrder.iNumStaff = 0;
        kOrder.iHours = 24 * ((iQuantity == 0) ? 9 : 7);
        // End:0x1A3
        if(IsOptionEnabled(9))
        {
            // End:0x1A3
            if(class'XGTacticalGameCore'.default.SW_MARATHON < float(1))
            {
                kOrder.iHours /= class'XGTacticalGameCore'.default.SW_MARATHON;
            }
        }
    }
    // End:0x6B1
    else
    {
        // End:0x227
        if(!WorldInfo.IsConsoleBuild(1) && !WorldInfo.IsConsoleBuild(2))
        {
            GetRecapSaveData().RecordEvent(RecordHiredAdditionalSoldiers(iQuantity));
        }
        // End:0x2DA
        if(iType == 4)
        {
            class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate(("MercSetFury" $ "_") $ string(iQuantity), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
            if(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2 == "true")
            {
            	iQuantity -= 1;
            	OrderStaff(5, 1);
            }
          	class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate("MercUpdateHiring", class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
        	AddResource(0, -int(GetRightMost(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2)) * iQuantity);
        }
    	if(iType == 5)
        {
        	AddResource(0, -int(GetRightMost(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2)));
        }
        // End:0x3BE
        else
        {
            // End:0x37E
            if(iType == 1)
            {
                I = STAFF(iType).iCash * iQuantity;
                // End:0x363
                if(BARRACKS().HasOTSUpgrade(13))
                {
                    I = I * 1.50;
                }
                AddResource(0, -I);
            }
            // End:0x3BE
            else
            {
                AddResource(0, -STAFF(iType).iCash * iQuantity);
            }
        }
        // End:0x3F4
        if((iType == 1) || iType > 3)
        {
            STAT_AddStat(13, iQuantity);
        }
        if(iType < 5)
        {
        	I = 0;
        	J0x3FF:
        	// End:0x57D [Loop If]
        	if(I < m_arrHiringOrders.Length)
        	{
				if(iType == 4)
           		{
           	    	I = (I * 1000) + STAFF(1).iHours;
           		}
           		// End:0x4A6
           		else
           		{
           	    	I = (I * 1000) + STAFF(iType).iHours;
           		}
           		// End:0x55F
           		if((m_arrHiringOrders[I / 1000].iStaffType == iType) && m_arrHiringOrders[I / 1000].iHours == (I % 1000))
           		{
           		    m_arrHiringOrders[I / 1000].iNumStaff += iQuantity;
           		    return;
           		}
           		I /= 1000.0;
            	++ I;
            	// [Loop Continue]
       		    goto J0x3FF;
            }
        }
        kOrder.iStaffType = iType;
        kOrder.iNumStaff = iQuantity;
        // End:0x5FB
        if(iType > 3)
        {
            kOrder.iHours = 144;
        }
        // End:0x6B1
        else
        {
            // End:0x66A
            if(BARRACKS().HasOTSUpgrade(10))
            {
                kOrder.iHours = STAFF(iType).iHours + 24;
            }
            // End:0x6B1
            else
            {
                kOrder.iHours = STAFF(iType).iHours - 48;
            }
        }
    }
    m_arrHiringOrders.AddItem(kOrder);
    //return;    
}

function UpdateHiringOrders()
{
    local int iOrder;

    iOrder = m_arrHiringOrders.Length - 1;
    J0x17:
    // End:0x453 [Loop If]
    if(iOrder >= 0)
    {
        m_arrHiringOrders[iOrder].iHours -= 1;
        // End:0x445
        if(m_arrHiringOrders[iOrder].iHours <= 0)
        {
            switch(m_arrHiringOrders[iOrder].iStaffType)
            {
                // End:0x163
                case 1:
                    GEOSCAPE().RestoreNormalTimeFrame();
                    BARRACKS().AddNewSoldiers(m_arrHiringOrders[iOrder].iNumStaff);
                    PRES().Notify(14, m_arrHiringOrders[iOrder].iNumStaff);
                    // End:0x430
                    break;
                // End:0x323
                case 4:
                    LogInternal(string(iOrder), name("iOrder"));
                    GEOSCAPE().RestoreNormalTimeFrame();
                    iOrder *= 1000.0;
                    LogInternal(string(iOrder), name("iOrder"));
                    LogInternal(string(iOrder % 1000), name("iOrder%1000"));
                    LogInternal(string(m_arrHiringOrders[iOrder].iNumStaff), name("iNumStaff"));
                    J0x220:
                    // End:0x2AF [Loop If]
                    if((iOrder % 1000) < m_arrHiringOrders[iOrder / 1000].iNumStaff)
                    {
                        BARRACKS().CreateSoldier(8, 0, -1);
                        ++ iOrder;
                        LogInternal(string(iOrder), name("iOrder"));
                        // [Loop Continue]
                        goto J0x220;
                    }
                    iOrder /= 1000.0;
                    LogInternal(string(iOrder), name("iOrder"));
                    PRES().Notify(14, m_arrHiringOrders[iOrder].iNumStaff);
                    // End:0x430
                    break;
                // End:0x3A8
            	case 5:
              		GEOSCAPE().RestoreNormalTimeFrame();
                    BARRACKS().CreateSoldier(7, 0, -1);
              		PRES().Notify(14, m_arrHiringOrders[iOrder].iNumStaff);
                case 3:
                    AddResource(3, m_arrHiringOrders[iOrder].iNumStaff);
                    PRES().Notify(16, m_arrHiringOrders[iOrder].iNumStaff);
                    // End:0x430
                    break;
                // End:0x42D
                case 2:
                    AddResource(4, m_arrHiringOrders[iOrder].iNumStaff);
                    PRES().Notify(17, m_arrHiringOrders[iOrder].iNumStaff);
                    // End:0x430
                    break;
                // End:0xFFFF
                default:
                    m_arrHiringOrders.Remove(iOrder, 1);
            }
            -- iOrder;
            // [Loop Continue]
            goto J0x17;
        }
        //return;            
	}
}