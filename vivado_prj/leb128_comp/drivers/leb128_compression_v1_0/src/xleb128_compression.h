// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLEB128_COMPRESSION_H
#define XLEB128_COMPRESSION_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xleb128_compression_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_bus_BaseAddress;
} XLeb128_compression_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XLeb128_compression;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLeb128_compression_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLeb128_compression_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLeb128_compression_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLeb128_compression_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLeb128_compression_Initialize(XLeb128_compression *InstancePtr, u16 DeviceId);
XLeb128_compression_Config* XLeb128_compression_LookupConfig(u16 DeviceId);
int XLeb128_compression_CfgInitialize(XLeb128_compression *InstancePtr, XLeb128_compression_Config *ConfigPtr);
#else
int XLeb128_compression_Initialize(XLeb128_compression *InstancePtr, const char* InstanceName);
int XLeb128_compression_Release(XLeb128_compression *InstancePtr);
#endif

void XLeb128_compression_Start(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_IsDone(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_IsIdle(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_IsReady(XLeb128_compression *InstancePtr);
void XLeb128_compression_EnableAutoRestart(XLeb128_compression *InstancePtr);
void XLeb128_compression_DisableAutoRestart(XLeb128_compression *InstancePtr);

void XLeb128_compression_Set_in_data(XLeb128_compression *InstancePtr, u64 Data);
u64 XLeb128_compression_Get_in_data(XLeb128_compression *InstancePtr);
void XLeb128_compression_Set_out_data(XLeb128_compression *InstancePtr, u64 Data);
u64 XLeb128_compression_Get_out_data(XLeb128_compression *InstancePtr);
void XLeb128_compression_Set_wordsIn(XLeb128_compression *InstancePtr, u32 Data);
u32 XLeb128_compression_Get_wordsIn(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_Get_bytesOut(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_Get_bytesOut_vld(XLeb128_compression *InstancePtr);

void XLeb128_compression_InterruptGlobalEnable(XLeb128_compression *InstancePtr);
void XLeb128_compression_InterruptGlobalDisable(XLeb128_compression *InstancePtr);
void XLeb128_compression_InterruptEnable(XLeb128_compression *InstancePtr, u32 Mask);
void XLeb128_compression_InterruptDisable(XLeb128_compression *InstancePtr, u32 Mask);
void XLeb128_compression_InterruptClear(XLeb128_compression *InstancePtr, u32 Mask);
u32 XLeb128_compression_InterruptGetEnabled(XLeb128_compression *InstancePtr);
u32 XLeb128_compression_InterruptGetStatus(XLeb128_compression *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
