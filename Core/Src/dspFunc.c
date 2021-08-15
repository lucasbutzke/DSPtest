/*
 * funcoes para processamento digital das variaveis e mandar
 * apenas o Pico-a-Pico dos dados, Python realiza somente o
 * recebimento e calculo da imagem
 */

#include "arm_math.h"
#include "main.h"

extern float32_t testInput_f32_10khz[TEST_LENGTH_SAMPLES];
extern float32_t testInput_f32_unknown[TEST_LENGTH_SAMPLES];
static float32_t testOutput_f32_10khz[TEST_LENGTH_SAMPLES];
static float32_t testOutput[TEST_LENGTH_SAMPLES/2];

uint32_t fftSize = 512;
uint32_t ifftFlag = 0;
uint32_t doBitReverse = 1;
arm_rfft_fast_instance_f32 varInstCfftF32;
uint32_t refIndex = 213, testIndex = 0;		// testando a energia no bin

arm_status status;
uint32_t chunckSize = 512;
float32_t maxValue[4];
float32_t minValue[4];
float32_t maxValueMean;
float32_t minValueMean;

void multiply(float* values, float factor)
{
    for(int i=0; i < sizeof(values); i++)
    {
        values[i] *= factor;
        i++;
    }
}

void addArm(float* values, float factor)
{
    for(int i=0; i < sizeof(values); i++)
    {
        values[i] += factor;
        i++;
    }
}

/*
 * Realizar apenas o calculo do pico-a-pico e salvar
 * em uma variavel, deve fazer ajuste de taxa de
 * aquisicao. Funcao para apenas dados FLOAT.
 */
float32_t peakToPeakArm(float32_t* vetor){
	//addArm(&testInput_f32_10khz, 10.0);

	for(int chunck = 0; chunck <= 7; chunck++)
	{
		//pData = (int*) calloc (i,sizeof(int));
		//pData = &testInput_f32_10khz[chunck]
		// seleciona quando começa a considerar no vetor
		arm_max_f32(&vetor[chunck*chunckSize], chunckSize, &maxValue[chunck], &refIndex);
		arm_min_f32(&vetor[chunck*chunckSize], chunckSize, &minValue[chunck], &testIndex);
	}
	arm_mean_f32(maxValue, 8, &maxValueMean);
	arm_mean_f32(minValue, 8, &minValueMean);

	return (maxValueMean-minValueMean);
}

/*
 * realizar funcao para retornar o valor maximo adquirido
 * e retornar com o valor para realizar ajuste de ganho
 * do resistor digital
 */
float32_t maxArm(float32_t* vetor){
	arm_max_f32(vetor, chunckSize, &maxValue, &refIndex);
}

/*
 * realizar funcao para retornar o valor minimo adquirido
 * e retornar com o valor para realizar ajuste de ganho
 * do resistor digital
 */
float32_t minArm(float32_t* vetor){
	arm_min_f32(vetor, chunckSize, &maxValue, &refIndex);
}

/*
 * fazer "aquisicao" e retornar com FFT de maior energia,
 * apos terminar fazer troca da configuracao dos eletrodos
 * "LEDS".
 * Muito provavelmente deve-se alterar a taxa de amostragem
 * para adequar ao maximo de 2048 pontos no FFT.
 */

float32_t maxFFTArm(float32_t * maxValue)
{
  //time_t rawtime;
  //time_t rawtimeFinal;
  //char buffer[50] ={0};
  //time(&rawtime);

  status = ARM_MATH_SUCCESS;

  status=arm_rfft_fast_init_f32(&varInstCfftF32, fftSize);

  /* Process the data through the CFFT/CIFFT module */
  arm_rfft_fast_f32(&varInstCfftF32, testInput_f32_unknown, testOutput_f32_10khz, doBitReverse);

  /* Process the data through the Complex Magnitude Module for
  calculating the magnitude at each bin */
  arm_cmplx_mag_f32(testInput_f32_unknown, testOutput, fftSize);

  /* Calculates maxValue and returns corresponding BIN value */
  arm_max_f32(testOutput, fftSize, maxValue, &testIndex);

  /* Process the data through the CFFT/CIFFT module */
  //arm_rfft_fast_f32(&varInstCfftF32, testInput_f32_10khz, testOutput_f32_10khz, doBitReverse);

  /* Process the data through the Complex Magnitude Module for
  calculating the magnitude at each bin */
  //arm_cmplx_mag_f32(testInput_f32_10khz, testOutput, fftSize);

  /* Calculates maxValue and returns corresponding BIN value */
  //arm_max_f32(testOutput, fftSize, &maxValue, &testIndex);

  //sprintf(valor, "%.2f \n", (float32_t)maxValue);
  //printf(valor);

//  status = (testIndex != refIndex) ? ARM_MATH_TEST_FAILURE : ARM_MATH_SUCCESS;

//  if (status != ARM_MATH_SUCCESS)
//  {
//#if defined (SEMIHOSTING)
//    printf("FAILURE\n");
//#else
//    while (1);                             /* main function does not return */
//#endif
//  }
//  else
//  {
//#if defined (SEMIHOSTING)
//    printf("SUCCESS\n");
//#else
//    while (1);                             /* main function does not return */
//#endif
//  }
}
