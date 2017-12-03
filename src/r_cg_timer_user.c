/***********************************************************************************************************************
* DISCLAIMER
* This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products.
* No other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
* applicable laws, including copyright laws. 
* THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIESREGARDING THIS SOFTWARE, WHETHER EXPRESS, IMPLIED
* OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
* NON-INFRINGEMENT.  ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY
* LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE FOR ANY DIRECT,
* INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR
* ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
* Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability 
* of this software. By using this software, you agree to the additional terms and conditions found by accessing the 
* following link:
* http://www.renesas.com/disclaimer
*
* Copyright (C) 2011, 2015 Renesas Electronics Corporation. All rights reserved.
***********************************************************************************************************************/

/***********************************************************************************************************************
* File Name    : r_cg_timer_user.c
* Version      : CodeGenerator for RL78/G14 V2.04.02.01 [15 May 2015]
* Device(s)    : R5F104LE
* Tool-Chain   : GCCRL78
* Description  : This file implements device driver for TAU module.
* Creation Date: 12/1/2017
***********************************************************************************************************************/

/***********************************************************************************************************************
Includes
***********************************************************************************************************************/
#include "r_cg_macrodriver.h"
#include "r_cg_timer.h"
/* Start user code for include. Do not edit comment generated here */
#include "r_cg_port.h"
#include "math.h"
#include "lcd.h"
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
/* Start user code for global. Do not edit comment generated here */
uint8_t TAUflag;
float t_update=0.0001;
float F1=20;
float x = 0;
uint8_t A;
uint8_t function=0;
uint8_t tempflag=0;
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: r_tau0_channel0_interrupt
* Description  : This function is INTTM00 interrupt service routine.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void r_tau0_channel0_interrupt(void)
{
    /* Start user code. Do not edit comment generated here */
	TAUflag=1;
    /* End user code. Do not edit comment generated here */
}

/***********************************************************************************************************************
* Function Name: r_tmr_rj0_interrupt
* Description  : This function is INTTRJ0 interrupt service routine.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void r_tmr_rj0_interrupt(void)
{
    /* Start user code. Do not edit comment generated here */
	R_TMR_RJ0_Start();

	A = 0.99*TRDGRA1;

	if (leftB)
			function=1;
	if (midB){
		tempflag=0;
		function=2;
	}
	if (rightB)
			function=3;
	if (upB && tempflag==0){
		tempflag=1;
		F1+=1;
	}
	if (downB && F1>0 && tempflag==0){
		tempflag=1;
		F1-=1;
	}


	x+=t_update*F1;
	if(x>=1)
		x=0;

	switch(function) {

	   case 0  :
		  TRDGRB1=A;
	      break;

	   case 1  :
		   TRDGRB1=(sin(8*M_PI*x)/2+0.5)*A;
	      break;
	   case 2  :
		   TRDGRB1=fabsf(1-2*x)*A;
	      break;
	   case 3  :
		   TRDGRB1=((int)(2*x))*A;
	      break;
	}


    /* End user code. Do not edit comment generated here */
}

/***********************************************************************************************************************
* Function Name: r_tmr_rg0_interrupt
* Description  : This function is INTTRG interrupt service routine.
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/
void r_tmr_rg0_interrupt(void)
{
    /* Start user code. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/* Start user code for adding. Do not edit comment generated here */
void startTMR0(int delay)
{
	TMIF00 = 0U; // Clear any interrupt flag
	TDR00 = delay; // Load register (in 1 usec units)
	TS0 = 1U; // Start timer
}
void delayNoInt(uint16_t delay)
{
	startTMR0(delay); // Start timer with delay value
	while(TMIF00 == 0) // Wait for timer flag
		NOP();
	R_TAU0_Channel0_Stop(); // Stop timer and clear all flags
}
void msDelay(uint16_t mSeconds){
	int i;
	for(i=0; i<mSeconds; i++)
		delayNoInt(1000);
}
/* End user code. Do not edit comment generated here */
