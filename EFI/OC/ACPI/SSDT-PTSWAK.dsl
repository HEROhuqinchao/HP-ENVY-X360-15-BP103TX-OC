/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLnioYp7.aml, Sat Nov 21 21:43:11 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000218 (536)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "OCLT"
 *     OEM Table ID     "PTSWAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "PTSWAK", 0x00000000)
{
    External (DGPU._OFF, MethodObj)    // 0 Arguments
    External (DGPU._ON_, MethodObj)    // 0 Arguments
    External (SHUT.SHUT ,MethodObj)
    External (EXT1, MethodObj)    // 1 Arguments
    External (EXT2, MethodObj)    // 1 Arguments
    External (EXT3, MethodObj)    // 1 Arguments
    External (EXT4, MethodObj)    // 1 Arguments
    External (EXT5, MethodObj)    // 1 Arguments
    External (EXT6, MethodObj)    // 1 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZTTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

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
            
            \_SB.PCI9.TPTS = Arg0
            If ((\_SB.PCI9.FNOK == One))
            {
                Arg0 = 0x03
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
            \_SB.PCI9.TWAK = Arg0
            If ((\_SB.PCI9.FNOK == One))
            {
                \_SB.PCI9.FNOK = Zero
                Arg0 = 0x03
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

        Local0 = ZWAK (Arg0)
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

