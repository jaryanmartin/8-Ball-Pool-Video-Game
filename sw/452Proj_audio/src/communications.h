#ifndef COMMUNICATIONS_H
#define COMMUNICATIONS_H

#include <stdio.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_printf.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"

#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))

#endif
