/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-21.aml, Sun Feb  6 20:50:25 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000022F (559)
 *     Revision         0x02
 *     Checksum         0xBE
 *     OEM ID           "OCLT"
 *     OEM Table ID     "PTSWAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "PTSWAK", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (DGPU._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (DGPU._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (EXT1, MethodObj)    // 1 Arguments (from opcode)
    External (EXT2, MethodObj)    // 1 Arguments (from opcode)
    External (EXT3, MethodObj)    // 1 Arguments (from opcode)
    External (EXT4, MethodObj)    // 1 Arguments (from opcode)
    External (EXT5, MethodObj)    // 1 Arguments (from opcode)
    External (EXT6, MethodObj)    // 1 Arguments (from opcode)
    External (SHUT.SHUT, MethodObj)    // 0 Arguments (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZTTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Scope (_SB)
    {
        Device (PCI9)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (FNOK, Zero)
            Name (MODE, Zero)
            Name (TPTS, Zero)
            Name (TWAK, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            \SHUT.SHUT ()
            Store (Arg0, \_SB.PCI9.TPTS)
            If (LEqual (\_SB.PCI9.FNOK, One))
            {
                Store (0x03, Arg0)
            }

            If (CondRefOf (\DGPU._ON))
            {
                \DGPU._ON ()
            }

            If (CondRefOf (EXT1))
            {
                EXT1 (Arg0)
            }

            If (CondRefOf (EXT2))
            {
                EXT2 (Arg0)
            }
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            Store (Arg0, \_SB.PCI9.TWAK)
            If (LEqual (\_SB.PCI9.FNOK, One))
            {
                Store (Zero, \_SB.PCI9.FNOK)
                Store (0x03, Arg0)
            }

            If (CondRefOf (\DGPU._OFF))
            {
                \DGPU._OFF ()
            }

            If (CondRefOf (EXT3))
            {
                EXT3 (Arg0)
            }

            If (CondRefOf (EXT4))
            {
                EXT4 (Arg0)
            }
        }

        Store (ZWAK (Arg0), Local0)
        Return (Local0)
    }

    Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
    {
        If (_OSI ("Darwin"))
        {
            If (CondRefOf (EXT5))
            {
                EXT5 (Arg0)
            }

            If (CondRefOf (EXT6))
            {
                EXT6 (Arg0)
            }
        }

        If (CondRefOf (ZTTS))
        {
            ZTTS (Arg0)
        }
    }
}

