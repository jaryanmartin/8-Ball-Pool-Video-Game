#include <stdio.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_printf.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"

#define sev() __asm__("sev")
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR 0x10800000
#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))

// This file is taken from the guide provided from the website commented below

// https://www.hackster.io/whitney-knitter/dual-arm-hello-world-on-zynq-using-vitis-9fc8b7

// Guide on implementing dual-core communications.
