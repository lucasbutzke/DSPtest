/*
 * muxsPinout.h
 *
 *  Created on: 5 de ago de 2021
 *      Author: lucas
 */

#ifndef MUXSPINOUT_H_
#define MUXSPINOUT_H_

#include "main.h"
#include <stdio.h>

#define n 3					// numero de pinos no multiplexador

typedef struct{
	uint16_t pino;
	GPIO_TypeDef* gpio;
}muxsPin;

typedef union {
        struct {
            unsigned int:0;
            unsigned int firstBit : 1;
            unsigned int secondBit : 1;
            unsigned int thirdBit : 1;
            unsigned int fourthBit : 1;
            unsigned int fifthBit : 1;
            unsigned int sixthBit : 1;
            unsigned int seventhBit : 1;
            unsigned int eigthBit : 1;
        };
        int raw;
} bitsOfByte;

void controlMuxs(bitsOfByte, muxsPin*);			// envia por referencia todos os multiplexadores

#endif /* INC_MUXSPINOUT_H_ */
