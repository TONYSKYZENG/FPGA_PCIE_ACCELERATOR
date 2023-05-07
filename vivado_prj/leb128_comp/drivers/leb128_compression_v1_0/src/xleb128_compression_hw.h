// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_data
//        bit 31~0 - in_data[31:0] (Read/Write)
// 0x14 : Data signal of in_data
//        bit 31~0 - in_data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_data
//        bit 31~0 - out_data[31:0] (Read/Write)
// 0x20 : Data signal of out_data
//        bit 31~0 - out_data[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of wordsIn
//        bit 31~0 - wordsIn[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of bytesOut
//        bit 31~0 - bytesOut[31:0] (Read)
// 0x34 : Control signal of bytesOut
//        bit 0  - bytesOut_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL       0x00
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_GIE           0x04
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER           0x08
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_ISR           0x0c
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_IN_DATA_DATA  0x10
#define XLEB128_COMPRESSION_CTRL_BUS_BITS_IN_DATA_DATA  64
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_OUT_DATA_DATA 0x1c
#define XLEB128_COMPRESSION_CTRL_BUS_BITS_OUT_DATA_DATA 64
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_WORDSIN_DATA  0x28
#define XLEB128_COMPRESSION_CTRL_BUS_BITS_WORDSIN_DATA  32
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_BYTESOUT_DATA 0x30
#define XLEB128_COMPRESSION_CTRL_BUS_BITS_BYTESOUT_DATA 32
#define XLEB128_COMPRESSION_CTRL_BUS_ADDR_BYTESOUT_CTRL 0x34

