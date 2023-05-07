// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xleb128_compression.h"

extern XLeb128_compression_Config XLeb128_compression_ConfigTable[];

XLeb128_compression_Config *XLeb128_compression_LookupConfig(u16 DeviceId) {
	XLeb128_compression_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLEB128_COMPRESSION_NUM_INSTANCES; Index++) {
		if (XLeb128_compression_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLeb128_compression_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLeb128_compression_Initialize(XLeb128_compression *InstancePtr, u16 DeviceId) {
	XLeb128_compression_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLeb128_compression_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLeb128_compression_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

