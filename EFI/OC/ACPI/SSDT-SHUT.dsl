/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLTJJ75b.aml, Sat Nov 21 21:47:16 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000009D (157)
 *     Revision         0x02
 *     Checksum         0x79
 *     OEM ID           "hack"
 *     OEM Table ID     "SHUT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SHUT", 0x00000000)
{
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)

    Device (SHUT)
        {
         Method (SHUT, 1, NotSerialized)
         {
             If ((0x05 == Arg0))
              {
                  If (CondRefOf (\_SB.PCI0.XHC.PMEE))
                    {
                       \_SB.PCI0.XHC.PMEE = Zero
                    }

                    OperationRegion (PMRS, SystemIO, 0x1830, One)
                    Field (PMRS, ByteAcc, NoLock, Preserve)
                     {
                                ,   4, 
                            SLPE,   1
                     }

                     SLPE = Zero
                     Sleep (0x10)
        }
    }
  }
}

