VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Instr(23:0)
        SIGNAL XLXN_13(3:0)
        SIGNAL RegWr
        SIGNAL RegDest
        SIGNAL Instr(10:7)
        SIGNAL Instr(3:0)
        SIGNAL RegSrc(15:0)
        SIGNAL RdData2(15:0)
        SIGNAL ALUOP(2:0)
        SIGNAL CE_NF
        SIGNAL CE_OVF
        SIGNAL CE_ZF
        SIGNAL CE_CF
        SIGNAL NF
        SIGNAL OVF
        SIGNAL ZF
        SIGNAL CF
        SIGNAL MemWr
        SIGNAL Instr(8:4)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL OUTW0(15:0)
        SIGNAL Instr(23:19)
        SIGNAL Branch
        SIGNAL Mem2Reg
        SIGNAL Instr(18:15)
        SIGNAL XLXN_61(15:0)
        SIGNAL XLXN_63(15:0)
        SIGNAL XLXN_64(15:0)
        SIGNAL Clk
        SIGNAL New_PC(5:0)
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(4:0)
        SIGNAL Instr(18:16)
        SIGNAL XLXN_65(15:0)
        PORT Output NF
        PORT Output OVF
        PORT Output ZF
        PORT Output CF
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output OUTW0(15:0)
        PORT Input Clk
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2025 12 10 16 18 52
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2025 11 18 17 54 24
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2025 11 25 16 33 42
            RECTANGLE N 64 -196 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2025 11 27 13 32 44
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2025 12 8 16 50 32
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            LINE N 64 160 0 160 
            LINE N 64 224 0 224 
            LINE N 64 288 0 288 
            LINE N 320 32 384 32 
            LINE N 320 96 384 96 
            LINE N 320 160 384 160 
            LINE N 320 224 384 224 
            LINE N 64 -320 0 -320 
            RECTANGLE N 0 -332 64 -308 
            LINE N 64 -272 0 -272 
            RECTANGLE N 0 -284 64 -260 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            RECTANGLE N 64 -360 320 368 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2025 12 8 18 23 36
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            LINE N 64 16 0 16 
            RECTANGLE N 0 4 64 28 
            LINE N 64 -48 0 -48 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -144 0 -144 
            LINE N 384 -208 448 -208 
            RECTANGLE N 384 -220 448 -196 
        END BLOCKDEF
        BEGIN BLOCKDEF Ctrl
            TIMESTAMP 2025 12 9 21 33 15
            LINE N 320 32 384 32 
            LINE N 320 96 384 96 
            LINE N 320 160 384 160 
            LINE N 320 224 384 224 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 64 -384 320 320 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 276 384 300 
            LINE N 320 288 384 288 
            LINE N 320 -288 384 -288 
            LINE N 320 -208 384 -208 
            LINE N 320 -128 384 -128 
            LINE N 320 -48 384 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2025 12 9 22 4 30
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2025 12 17 13 22 7
            LINE N 64 0 0 0 
            LINE N 64 64 0 64 
            LINE N 64 128 0 128 
            LINE N 64 192 0 192 
            LINE N 64 256 0 256 
            RECTANGLE N 0 308 64 332 
            LINE N 64 320 0 320 
            RECTANGLE N 0 372 64 396 
            LINE N 64 384 0 384 
            RECTANGLE N 64 -200 336 404 
            LINE N 64 -128 0 -128 
            RECTANGLE N 0 -140 64 -116 
            LINE N 336 -96 400 -96 
            RECTANGLE N 336 -108 400 -84 
        END BLOCKDEF
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) Instr(18:15)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) XLXN_13(3:0)
            PIN WrData(15:0) XLXN_64(15:0)
            PIN RdData1(15:0) RegSrc(15:0)
            PIN RdData2(15:0) RdData2(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 MUX2V4
            PIN Sel RegDest
            PIN I0(3:0) Instr(3:0)
            PIN I1(3:0) Instr(10:7)
            PIN Y(3:0) XLXN_13(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 ALU
            PIN Clk Clk
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN RdData1(15:0) RegSrc(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN NF NF
            PIN OVF OVF
            PIN ZF ZF
            PIN CF CF
            PIN Y(15:0) XLXN_61(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 DataMem
            PIN Clk Clk
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN DataOut(15:0) XLXN_63(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN INW0(15:0) INW0(15:0)
            PIN Wr MemWr
            PIN OUTW0(15:0) OUTW0(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 Ctrl
            PIN OP(4:0) Instr(23:19)
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN CE_OVF CE_OVF
            PIN CE_NF CE_NF
            PIN Branch Branch
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
        END BLOCK
        BEGIN BLOCK XLXI_6 MUX2V16
            PIN Sel Mem2Reg
            PIN Y(15:0) XLXN_64(15:0)
            PIN I0(15:0) XLXN_61(15:0)
            PIN I1(15:0) XLXN_63(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 PC_Update
            PIN Branch Branch
            PIN NF NF
            PIN OVF OVF
            PIN ZF ZF
            PIN CF CF
            PIN Offset(4:0) Instr(4:0)
            PIN BranchType(2:0) Instr(18:16)
            PIN PC(5:0) PC(5:0)
            PIN New_PC(5:0) New_PC(5:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH Instr(23:0)
            WIRE 1344 672 1424 672
            WIRE 1424 672 1456 672
            WIRE 1456 672 1488 672
            WIRE 1488 672 1488 704
            WIRE 1488 704 1488 800
            WIRE 1488 800 1488 896
            WIRE 1488 896 1488 1136
            WIRE 1488 1136 1488 1456
            WIRE 1424 384 1424 448
            WIRE 1424 448 1424 528
            WIRE 1424 528 1424 672
            BEGIN DISPLAY 1456 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 704 1584 704
        BUSTAP 1488 896 1584 896
        BUSTAP 1488 800 1584 800
        BEGIN BRANCH XLXN_13(3:0)
            WIRE 2144 800 2240 800
            WIRE 2240 592 2240 800
            WIRE 2240 592 2352 592
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2256 240 2336 240
            WIRE 2336 240 2352 240
            BEGIN DISPLAY 2336 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1616 928 1696 928
            WIRE 1696 928 1760 928
            BEGIN DISPLAY 1696 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(10:7)
            WIRE 1584 896 1600 896
            WIRE 1600 864 1600 896
            WIRE 1600 864 1680 864
            WIRE 1680 864 1760 864
            BEGIN DISPLAY 1680 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 1584 800 1648 800
            WIRE 1648 800 1712 800
            WIRE 1712 800 1760 800
            WIRE 1648 432 1648 800
            WIRE 1648 432 2352 432
            BEGIN DISPLAY 1712 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_2 2352 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1760 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 3088 496 R0
        END INSTANCE
        BEGIN BRANCH RegSrc(15:0)
            WIRE 2832 176 3088 176
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 2464 1168 2464 1616
            WIRE 2464 1616 2560 1616
            WIRE 2560 1616 2816 1616
            WIRE 2464 1168 2928 1168
            WIRE 2832 240 2928 240
            WIRE 2928 240 2960 240
            WIRE 2928 240 2928 1168
            WIRE 2960 224 2960 240
            WIRE 2960 224 3088 224
            BEGIN DISPLAY 2560 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2960 400 3008 400
            WIRE 3008 400 3088 400
            BEGIN DISPLAY 3008 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2960 592 3024 592
            WIRE 3024 592 3088 592
            BEGIN DISPLAY 3024 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2960 656 3024 656
            WIRE 3024 656 3088 656
            BEGIN DISPLAY 3024 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2960 720 3024 720
            WIRE 3024 720 3088 720
            BEGIN DISPLAY 3024 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2960 784 3008 784
            WIRE 3008 784 3088 784
            BEGIN DISPLAY 3008 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NF
            WIRE 3472 528 3520 528
            WIRE 3520 528 3584 528
            BEGIN DISPLAY 3520 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVF
            WIRE 3472 592 3520 592
            WIRE 3520 592 3584 592
            BEGIN DISPLAY 3520 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 3472 656 3520 656
            WIRE 3520 656 3584 656
            BEGIN DISPLAY 3520 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CF
            WIRE 3472 720 3520 720
            WIRE 3520 720 3584 720
            BEGIN DISPLAY 3520 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3584 528 NF R0 28
        IOMARKER 3584 592 OVF R0 28
        IOMARKER 3584 656 ZF R0 28
        IOMARKER 3584 720 CF R0 28
        BEGIN BRANCH MemWr
            WIRE 2672 1328 2752 1328
            WIRE 2752 1328 2816 1328
            BEGIN DISPLAY 2752 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(8:4)
            WIRE 2672 1552 2736 1552
            WIRE 2736 1552 2816 1552
            BEGIN DISPLAY 2736 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 2672 1424 2816 1424
        END BRANCH
        BEGIN BRANCH INW1(15:0)
            WIRE 2672 1488 2816 1488
        END BRANCH
        IOMARKER 2672 1424 INW0(15:0) R180 28
        IOMARKER 2672 1488 INW1(15:0) R180 28
        BEGIN BRANCH OUTW0(15:0)
            WIRE 3264 1264 3360 1264
        END BRANCH
        IOMARKER 3360 1264 OUTW0(15:0) R0 28
        BUSTAP 1488 1136 1584 1136
        BEGIN BRANCH Branch
            WIRE 2144 1136 2192 1136
            WIRE 2192 1136 2272 1136
            BEGIN DISPLAY 2192 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2144 1200 2208 1200
            WIRE 2208 1200 2272 1200
            BEGIN DISPLAY 2208 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2144 1280 2208 1280
            WIRE 2208 1280 2272 1280
            BEGIN DISPLAY 2208 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2144 1360 2192 1360
            WIRE 2192 1360 2272 1360
            BEGIN DISPLAY 2192 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2144 1440 2192 1440
            WIRE 2192 1440 2272 1440
            BEGIN DISPLAY 2192 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2144 1520 2192 1520
            WIRE 2192 1520 2272 1520
            BEGIN DISPLAY 2192 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2144 1584 2192 1584
            WIRE 2192 1584 2272 1584
            BEGIN DISPLAY 2192 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2144 1648 2192 1648
            WIRE 2192 1648 2272 1648
            BEGIN DISPLAY 2192 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2144 1712 2192 1712
            WIRE 2192 1712 2272 1712
            BEGIN DISPLAY 2192 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2144 1776 2192 1776
            WIRE 2192 1776 2272 1776
            BEGIN DISPLAY 2192 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1584 704 1616 704
            WIRE 1616 368 1616 704
            WIRE 1616 368 1968 368
            WIRE 1968 368 2352 368
            BEGIN DISPLAY 1968 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 3840 496 R0
        END INSTANCE
        BEGIN BRANCH Mem2Reg
            WIRE 3712 336 3792 336
            WIRE 3792 336 3840 336
            BEGIN DISPLAY 3792 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_61(15:0)
            WIRE 3472 400 3840 400
        END BRANCH
        BEGIN BRANCH XLXN_63(15:0)
            WIRE 3264 1616 3728 1616
            WIRE 3728 464 3728 1616
            WIRE 3728 464 3840 464
        END BRANCH
        BEGIN BRANCH XLXN_64(15:0)
            WIRE 2272 688 2352 688
            WIRE 2272 688 2272 1024
            WIRE 2272 1024 4288 1024
            WIRE 4224 336 4288 336
            WIRE 4288 336 4288 1024
        END BRANCH
        BEGIN INSTANCE XLXI_4 2816 1472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 288 976 R0
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 240 880 288 880
        END BRANCH
        IOMARKER 240 880 Clk R180 28
        BEGIN BRANCH New_PC(5:0)
            WIRE 112 208 224 208
            WIRE 112 208 112 544
            WIRE 112 544 112 944
            WIRE 112 944 288 944
            BEGIN DISPLAY 112 544 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(5:0)
            WIRE 624 176 800 176
            WIRE 800 176 800 656
            WIRE 800 656 800 880
            WIRE 800 880 800 1024
            WIRE 672 880 736 880
            WIRE 736 880 800 880
            BEGIN DISPLAY 736 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 656 896 656
        BUSTAP 1424 448 1328 448
        BUSTAP 1424 528 1328 528
        BEGIN BRANCH Instr(4:0)
            WIRE 624 624 688 624
            WIRE 688 624 768 624
            WIRE 768 448 768 624
            WIRE 768 448 1328 448
            BEGIN DISPLAY 688 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:16)
            WIRE 624 688 688 688
            WIRE 688 688 784 688
            WIRE 784 528 784 688
            WIRE 784 528 1328 528
            BEGIN DISPLAY 688 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_12 624 304 M0
        END INSTANCE
        BEGIN BRANCH Branch
            WIRE 624 304 672 304
            WIRE 672 304 752 304
            BEGIN DISPLAY 672 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NF
            WIRE 624 368 672 368
            WIRE 672 368 752 368
            BEGIN DISPLAY 672 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVF
            WIRE 624 432 688 432
            WIRE 688 432 752 432
            BEGIN DISPLAY 688 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 624 496 688 496
            WIRE 688 496 752 496
            BEGIN DISPLAY 688 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CF
            WIRE 624 560 688 560
            WIRE 688 560 752 560
            BEGIN DISPLAY 688 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(5:1)
            WIRE 896 656 912 656
            WIRE 912 656 912 672
            WIRE 912 672 928 672
            WIRE 928 672 960 672
            BEGIN DISPLAY 928 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 960 704 R0
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2256 176 2320 176
            WIRE 2320 176 2352 176
            BEGIN DISPLAY 2320 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2960 528 3024 528
            WIRE 3024 528 3088 528
            BEGIN DISPLAY 3024 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2672 1264 2752 1264
            WIRE 2752 1264 2816 1264
            BEGIN DISPLAY 2752 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:19)
            WIRE 1584 1136 1664 1136
            WIRE 1664 1136 1760 1136
            BEGIN DISPLAY 1664 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_5 1760 1488 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
