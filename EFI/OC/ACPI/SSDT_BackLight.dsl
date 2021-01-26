DefinitionBlock ("", "SSDT", 2, "hack", "Back_Lig", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.KBD0, DeviceObj)
    External (KBD0, UnknownObj)
    

    Method (_SB.PCI0.LPCB.EC0._Q1D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
    {
        If (_OSI ("Darwin"))
            {
        
        Notify (KBD0, 0x20) // Reserved
        }
    }

    Method (_SB.PCI0.LPCB.EC0._Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
    {
        If (_OSI ("Darwin"))
            {
        Notify (KBD0, 0x10) // Reserved
        }
    }
}