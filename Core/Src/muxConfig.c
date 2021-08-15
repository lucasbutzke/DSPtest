/*
 * muxConfig.c
 *
 *  Created on: 5 de ago de 2021
 *      Author: lucas
 */
#include "muxsPinout.h"

// union para selecionar o muxs que quero
// como unir em apenas uma variavel

// fazer de 0 - 15 bits
bitsOfByte dt = {
	.raw = 3
};

// seleciona os 32 canais com somente uma variavel
muxsPin currentMuxes[n] = {{.pino = LD1_Pin, .gpio = LD1_GPIO_Port},
					{.pino = LD2_Pin, .gpio = LD2_GPIO_Port},
					{.pino = LD3_Pin, .gpio = LD3_GPIO_Port}};

muxsPin aquisitionMuxes[n] = {{.pino = LD1_Pin, .gpio = LD1_GPIO_Port},
					{.pino = LD2_Pin, .gpio = LD2_GPIO_Port},
					{.pino = LD3_Pin, .gpio = LD3_GPIO_Port}};


/*
 * Realizar troca da configuracao dos Leds a cada
 * loop de "aquisicao", pegar por referencia para
 * comandar os GPIOs atraves do byte
 */
void controlMuxs(bitsOfByte dt, muxsPin* muxes){
	/* toggle PA0 */
	// muxes[0].gpio -> ODR ^= muxes[0].pino;
	/* turn off PA0 */
	//GPIOA -> ODR &= ~GPIO_PIN_0;
	/* turn on PA0 */
	//GPIOA -> ODR |= GPIO_PIN_0;

	//if(dt.secondBit == 1)
	//for(int bit = 0; bit <= 3; bit++){
	//	muxes[dt[bit]].gpio -> ODR ^= muxes[dt[bit]].pino;
	//}
	//for(int bit = 0; bit >= 7; bit++){
	//}

	if(dt.raw & 1){
		muxes[0].gpio -> ODR |= muxes[0].pino;
	}
	else{
		muxes[0].gpio -> ODR &= ~muxes[0].pino;
	}
	if(dt.raw & 2){
		muxes[1].gpio -> ODR |= muxes[1].pino;
	}
	else{
		muxes[1].gpio -> ODR &= ~muxes[1].pino;
	}
	if(dt.raw & 4){
		muxes[2].gpio -> ODR |= muxes[2].pino;
	}
	else{
		muxes[2].gpio -> ODR &= ~muxes[2].pino;
	}
}

/*
muxes= {{
	.pino = LD1_Pin,
	.gpio = LD1_GPIO_Port
},
{
	.pino = LD2_Pin,
	.gpio = LD2_GPIO_Port
},
{
	.pino = LD3_Pin,
	.gpio = LD3_GPIO_Port
}
};

muxsPin Mux1 = {
.pino = LD1_Pin,
.gpio = LD1_GPIO_Port
};

muxsPin Mux2 = {
.pino = LD2_Pin,
.gpio = LD2_GPIO_Port
};

muxsPin Mux3 = {
	.pino = LD3_Pin,
	.gpio = LD3_GPIO_Port
};*/

//dt.raw = 254;
