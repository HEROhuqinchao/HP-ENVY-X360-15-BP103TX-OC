/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-20.aml, Sun Feb  6 20:50:25 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A5 (165)
 *     Revision         0x02
 *     Checksum         0x16
 *     OEM ID           "hack"
 *     OEM Table ID     "SHUT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SHUT", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)    // (from opcode)

    Device (SHUT)
    {
        Method (SHUT, 1, NotSerialized)
        {
            If (LEqual (0x05, Arg0))
            {
                If (CondRefOf (\_SB.PCI0.XHC.PMEE))
                {
                    Store (Zero, \_SB.PCI0.XHC.PMEE)
                }

                OperationRegion (PMRS, SystemIO, 0x1830, One)
                Field (PMRS, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    SLPE,   1
                }

                Store (Zero, SLPE)
                Sleep (0x10)
            }
        }
    }
}

