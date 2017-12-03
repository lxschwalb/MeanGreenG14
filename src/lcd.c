/*
 * lcd.c
 *
 *  Created on: 05 Feb 2016
 *      Author: jtreurn
 */

#include "lcd.h" // or any other includes that makes sense
#include "iodefine.h"
#include "r_cg_userdefine.h"
#include "stdio.h"
// Notes:
// This is a basic low-level set of functions to drive the LCD. The functions include
// 	- void initLcd(void) --- set up the LCD; requires a function delayNoInt(time in usec) to operate
// 	- void writeNibbleLcd(char reg, char nibble) --- low level command
// 	- void writeByteLcd(char reg, char value) --- lowest user level command
//
// To be useful, you should write your own functions to:
//	- write an ASCII character to the LCD
//	- write a whole string to the LCD
//	- write a delay function delayNoInt(delay in usec)

/************************************************************************
* Function Name: writByteLcd()
* Description  : This function writes 2 nibbles to the LCD.
* Arguments    :  reg (BOOL) - 0 = register, 1 = data
*              :  value (BYTE) - first the upper 4 bits and the 4 lower bits
* Actions      : Nibble bus P70-P73 are set in output mode
*              : LCD_RS = 1; LCD_RW -> 0; LCD_E is toggled
* Return Value : None
************************************************************************/

void writeByteLcd(char reg, char value)
{
	char tempReg;

    tempReg = value >> 4;			// Get high nibble
    writeNibbleLcd(reg, tempReg);	// Write high nibble

	tempReg = value & 0x0F;			// Get lower nibble
    writeNibbleLcd(reg, tempReg);	// Write lower nibble
}

/************************************************************************
* Function Name: writeNibbleLcd()
* Description  : This function writes a nibble to the LCD.
* Arguments    : value (BYTE) - only the lower 4 bits are used
* Actions      : Nibble bus P70-P73 set in output mode
*              : LCD_RS = 1; LCD_RW -> 0; LCD_E is toggled
* Return Value : None
************************************************************************/

void writeNibbleLcd(char reg, char nibble)
{
	char tempReg;

    if (reg)
        LCD_RS = 1U;							// Read/write RAM
    else
        LCD_RS = 0U;							// Command

    LCD_RW   = 0U;								// Set to Write mode
    PM7     &= 0xF0;        					// Set Port 7 Data nibble to output mode
    tempReg  = (P7 & 0xF0) | (nibble & 0x0F);  	// Combine nibble and P7
    P7       = tempReg;     					// Load Port 7 data nibble
    SET_LCD_EN_HIGH;							// LCD_E  = 1U; (Enable high)
        // Wait > 0.3 usec
    NOP(); NOP(); NOP(); NOP(); NOP(); NOP();

    SET_LCD_EN_LOW;								// LCD_E  = 0U; (Set Enable low)
    NOP(); NOP();   							// Wait (2 x T_CLK)
 //   PM7 |= 0x0F;    							// Set Port 7 Data to input mode
    LCD_RW = 1U;    							// Set to Read mode
}


/************************************************************************
* Function Name: initLcd()
* Description  : This function initializes the LCD.
* Arguments    :  none
* Actions      : Provide all the init instructions - clear screen
* Return Value : None
************************************************************************/

void initLcd(void)
{
	TMMK00 = 1U;					// Do not use interrupts here, just wait for the flags

	delayNoInt(15000);				// wait 15 msec for LCD power up

    writeNibbleLcd(LCD_CTRL_WR, 0x3); 	// Command 1 -> 8 bits
    delayNoInt(4100);				// Start timer with 4100 usec delay

    writeNibbleLcd(LCD_CTRL_WR, 0x3);	// Command 2 -> 8 bits
    delayNoInt(100);				// Start timer with 100 usec delay

    writeNibbleLcd(LCD_CTRL_WR, 0x3);	// Command 3 -> 8 bits
    delayNoInt(40);					// Start timer with 40 usec delay

    writeNibbleLcd(LCD_CTRL_WR, 0x2);	// Command 4 -> 4 bits
    delayNoInt(40);					// Start timer with 40 usec delay

    writeByteLcd(LCD_CTRL_WR, FUNCTION_SET);  // Set 2 lines, 5x7 dots
	delayNoInt(40);					// Start timer with 40 usec delay

	writeByteLcd(LCD_CTRL_WR, LCD_CURSOR_OFF);     // Display Cursor ON
	delayNoInt(40);					// Start timer with 40 usec delay

	writeByteLcd(LCD_CTRL_WR, LCD_CLEAR);          // Clear Display
	delayNoInt(1640);				// Start timer with 1640 usec delay

	writeByteLcd(LCD_CTRL_WR, CURSOR_MODE_INC);    // Entry Mode set
	delayNoInt(40);					// Start timer with 40 usec delay

	writeByteLcd(LCD_CTRL_WR, LCD_HOME_L1);
	delayNoInt(40);					// Start timer with 40 usec delay
	writeByteLcd(LCD_CTRL_WR,LCD_DISPLAY_ON);
	delayNoInt(40);
	writeByteLcd(LCD_CTRL_WR,SET_LCD_EN_HIGH);
	delayNoInt(40);
}

void writeString(char * const string, int size){
	int i;
	for(i=0; i<size; i++){
		if(string[i]!='/0'){
			writeByteLcd(1,string[i]);
			delayNoInt(500);
		}
	}
	if(size>7){
		writeByteLcd(LCD_CTRL_WR,LCD_HOME_L2);
		delayNoInt(500);

		for(i=8; i<size; i++){
			if(string[i]!='/0'){
				writeByteLcd(1,string[i]);
				delayNoInt(500);
			}
		}
	}
}

void scroll(char amount){
	int i;
	int j;
	for(i=0;i<amount;i++){
		for(j=0;j<20;j++)
				delayNoInt(60000);
		delayNoInt(60000);
		writeByteLcd(LCD_CTRL_WR,0x10|0x08|0x00);
	}
}
