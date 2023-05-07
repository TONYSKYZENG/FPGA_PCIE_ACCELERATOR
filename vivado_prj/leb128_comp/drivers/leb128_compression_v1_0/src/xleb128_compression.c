// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xleb128_compression.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLeb128_compression_CfgInitialize(XLeb128_compression *InstancePtr, XLeb128_compression_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLeb128_compression_Start(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLeb128_compression_IsDone(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLeb128_compression_IsIdle(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLeb128_compression_IsReady(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLeb128_compression_EnableAutoRestart(XLeb128_compression *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XLeb128_compression_DisableAutoRestart(XLeb128_compression *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XLeb128_compression_Set_in_data(XLeb128_compression *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IN_DATA_DATA, (u32)(Data));
    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IN_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XLeb128_compression_Get_in_data(XLeb128_compression *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IN_DATA_DATA);
    Data += (u64)XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IN_DATA_DATA + 4) << 32;
    return Data;
}

void XLeb128_compression_Set_out_data(XLeb128_compression *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_OUT_DATA_DATA, (u32)(Data));
    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_OUT_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XLeb128_compression_Get_out_data(XLeb128_compression *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_OUT_DATA_DATA);
    Data += (u64)XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_OUT_DATA_DATA + 4) << 32;
    return Data;
}

void XLeb128_compression_Set_wordsIn(XLeb128_compression *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_WORDSIN_DATA, Data);
}

u32 XLeb128_compression_Get_wordsIn(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_WORDSIN_DATA);
    return Data;
}

u32 XLeb128_compression_Get_bytesOut(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_BYTESOUT_DATA);
    return Data;
}

u32 XLeb128_compression_Get_bytesOut_vld(XLeb128_compression *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_BYTESOUT_CTRL);
    return Data & 0x1;
}

void XLeb128_compression_InterruptGlobalEnable(XLeb128_compression *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_GIE, 1);
}

void XLeb128_compression_InterruptGlobalDisable(XLeb128_compression *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_GIE, 0);
}

void XLeb128_compression_InterruptEnable(XLeb128_compression *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER);
    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XLeb128_compression_InterruptDisable(XLeb128_compression *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER);
    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XLeb128_compression_InterruptClear(XLeb128_compression *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLeb128_compression_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XLeb128_compression_InterruptGetEnabled(XLeb128_compression *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_IER);
}

u32 XLeb128_compression_InterruptGetStatus(XLeb128_compression *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLeb128_compression_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XLEB128_COMPRESSION_CTRL_BUS_ADDR_ISR);
}

