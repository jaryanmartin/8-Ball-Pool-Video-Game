/*
 * adventures_with_ip.c
 *
 * Main source file.
 */

#include "adventures_with_ip.h"
#include "xil_printf.h"
#include "xscugic.h"
#include <xparameters.h>
#include "xuartps.h"
#include "xil_exception.h"
#include <stdbool.h>  // for bool in C99+
#include "xil_mmu.h"
#include "communications.h"


/* ---------------------------------------------------------------------------- *
 *                               main()
 * ---------------------------------------------------------------------------- */
int main() {
    xil_printf("Core 0 Boot up!\r\n");

    Xil_SetTlbAttributes(0xFFFF0000,0x14de2);

	/* ---- Audio / I2C Setup ---- */
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig();
	AudioConfigureJacks();
	store_audio();

   /* Run the menu loop */

   while (1) {
	   dmb();
	   if (COMM_VAL == 1)
	   {
		   xil_printf("Playing Cue hit sound effect\r\n");
		   play_recording(0); // Play the Cue hit sound effect
		   COMM_VAL = 0;
	   }
	   if (COMM_VAL == 2)
	   {
		   xil_printf("Playing ball collision effect\r\n");
		   play_recording(1); // Play the ball collision sound effect
		   COMM_VAL = 0;
	   }
	   if (COMM_VAL == 3)
	   {
		   xil_printf("Playing ball sunk in pocket sound effect\r\n");
		   play_recording(2); // Play the ball sunk sound effect
		   COMM_VAL = 0;
	   }
   }

    return 0;
}
