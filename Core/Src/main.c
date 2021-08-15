/* USER CODE BEGIN Header */
/*
 * *
 * REALIZAR O ENVIO DO VALOR PICO A PICO MEDIDO JUNTO COM A
 * CONFIGURACAO DOS ELETRODOS
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#ifdef __GNUC__
/* With GCC, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

//uint16_t BLOCK_SIZE = 32;
#define BLOCK_SIZEfir         256
#define BLOCK_SIZEiir		  64
#define NUM_TAPS              32

#define IIR_ORDER 2
#define IIR_NUMSTAGES (IIR_ORDER / 2)

#if defined(ARM_MATH_MVEF) && !defined(ARM_MATH_AUTOVECTORIZE)
static int16_t firStateI16[2 * BLOCK_SIZEfir + NUM_TAPS - 1];
#else
static int16_t firStateI16[BLOCK_SIZEfir + NUM_TAPS - 1];
#endif

#if defined(ARM_MATH_MVEF) && !defined(ARM_MATH_AUTOVECTORIZE)
static int16_t iirStateI32[4*IIR_NUMSTAGES];
#else
static int16_t iirStateI32[4*IIR_NUMSTAGES];
#endif
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

ETH_HandleTypeDef heth;

UART_HandleTypeDef huart3;

PCD_HandleTypeDef hpcd_USB_OTG_FS;

/* USER CODE BEGIN PV */
extern muxsPin Mux1;
extern muxsPin Mux3;
extern currentMuxes;
extern bitsOfByte dt;
extern float32_t testInput_f32_10khz[TEST_LENGTH_SAMPLES];
extern float32_t testInput_f32_unknown[TEST_LENGTH_SAMPLES];
static float32_t testOutput_f32_10khz[TEST_LENGTH_SAMPLES];
static float32_t testOutput[TEST_LENGTH_SAMPLES/2];

char valor[10] ={0};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ETH_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_USB_OTG_FS_PCD_Init(void);
/* USER CODE BEGIN PFP */
extern void multiply(float* values, float factor);
extern float32_t maxFFTArm(float32_t * maxValue);
extern float32_t peakToPeakArm(float32_t* vetor);

extern int16_t testInput_i15_10khz[TEST_LENGTH_SAMPLES];
static int16_t vetorOutputFIR[TEST_LENGTH_SAMPLES];
static int16_t vetorOutputIIR[TEST_LENGTH_SAMPLES];

const int BL = 32;
const int16_t firCoeffsI16[32] = {
	     1551,   1777,   1133,      0,   -754,   -482,    555,   1152,      0,
	    -3135,  -6799,  -8469,  -6163,      0,   7466,  12534,  12534,   7466,
	        0,  -6163,  -8469,  -6799,  -3135,      0,   1152,    555,   -482,
	     -754,      0,   1133,   1777,   1551
};

//b0, b1, b2; a0, a1, a2)
const int16_t iirCoeff[6*IIR_NUMSTAGES] = {280, 0, -280, 2048, 0, 1488};

static int16_t iirCoeffsI16[6*IIR_NUMSTAGES] = {
		//557, 0,0,0,0,0,
		2048,          0,     -2048,  	2048,  		-3560,        1718,
		//557,0,0,0,0,0,
		2048,        0,       -2048, 	2048,     	-2102,        1332,
		//502,0,0,0,0,0,
		2048,        0,       -2048,  	2048,       -2630,        1044
		//2048,0,0,0,0,0
};


/*static int32_t iirCoeffs32[5*(IIR_ORDER-4)] = {
	   3566,    	0,        -3566,	   -24707,   -14205,
	   2948,	    0,	      -2948,	   -28401,	  13729,
	   2618,	    0,	      -2618,	   -24914,	  11518,
	   2334,	    0,	      -2334,	   -24284,	  11434,
	   2569,	    0,	      -2569,	   -26612,	  12391,
	   1338,	    0,	      -1338,	   -23838,	  12200,
	   1972,	    0,	      -1972,	   -30844,	  15984,
	   1682,	    0,	      -1682,	   -25660,	  15606,
	   3574,	    0,	      -3574,	   -24100,	  13057,
	   3300,        0,        -3300,       -27519,    13031,
	   2552,        0,        -2552,       -25720,    11862,
	   3755,        0,        -3755,       -23909,    11656,
	   1996,        0,        -1996,       -30058,    15209,
	   25606,       0,        -25606,      -29246,    14458
};

// {b10, 0, b11, b12, a11, a12, b20, 0, b21, b22, a21, a22, ...}
static int16_t iirCoeffs16[6*IIR_ORDER] = {
	   3566,    	0,0,        -3566,	   -24707,   -14205,
	   2948,	    0,0,	      -2948,	   -28401,	  13729,
	   2618,	    0,0,	      -2618,	   -24914,	  11518,
	   2334,	    0,0,	      -2334,	   -24284,	  11434,
	   2569,	    0,0,	      -2569,	   -26612,	  12391,
	   1338,	    0,0,	      -1338,	   -23838,	  12200,
	   1972,	    0,0,	      -1972,	   -30844,	  15984,
	   1682,	    0,0,	      -1682,	   -25660,	  15606,
	   3574,	    0,0,	      -3574,	   -24100,	  13057,
	   3300,        0,0,        -3300,       -27519,    13031,
	   2552,        0,0,        -2552,       -25720,    11862,
	   3755,        0,0,        -3755,       -23909,    11656,
	   1996,        0,0,        -1996,       -30058,    15209,
	   25606,       0,0,        -25606,      -29246,    14458
};*/

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART3 and Loop until the end of transmission */
  HAL_UART_Transmit(&huart3, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  //MX_ETH_Init();
  MX_USART3_UART_Init();
  MX_USB_OTG_FS_PCD_Init();
  /* USER CODE BEGIN 2 */

  dt.raw = 0;
  uint32_t numBlocksfir = TEST_LENGTH_SAMPLES/BLOCK_SIZEfir;
  uint32_t numBlocksiir = TEST_LENGTH_SAMPLES/BLOCK_SIZEiir;
  int16_t  *inputI16, *outputI16FIR;
  int16_t  *inputI32, *outputI32IIR;
  inputI16 = &testInput_i15_10khz[0];
  inputI32 = &testInput_i15_10khz[0];
  outputI16FIR = &vetorOutputFIR[0];
  outputI32IIR = &vetorOutputIIR[0];
  //float32_t maxValueReturn;

  arm_fir_instance_q15 S;
  arm_fir_init_q15(&S, NUM_TAPS, (int16_t *)&firCoeffsI16[0], &firStateI16[0], BLOCK_SIZEfir);

  arm_biquad_casd_df1_inst_q15 R;
  arm_biquad_cascade_df1_init_q15(&R, IIR_NUMSTAGES, (int16_t *)&iirCoeff[0], &iirStateI32[0], 0);

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */
	  //maxFFTArm(&maxValueReturn);
	  //for(int i = 0; i < TEST_LENGTH_SAMPLES; i++){
	  //	  	sprintf(valor, "%d \n", (int16_t) testInput_i15_10khz[i]);
	  //	  	printf(valor);
	  //}
	  for(int i=0; i < numBlocksfir; i++)
	  {
		  arm_fir_fast_q15(&S, inputI16 + (i * BLOCK_SIZEfir), outputI16FIR + (i * BLOCK_SIZEfir), BLOCK_SIZEfir);
	  }
	  for(int i=0; i < numBlocksiir; i++)
	  {
		  arm_biquad_cascade_df1_q15(&R, inputI32 + (i * BLOCK_SIZEiir), outputI32IIR + (i * BLOCK_SIZEiir), BLOCK_SIZEiir);
	  }

	  for(int i = 0; i < TEST_LENGTH_SAMPLES; i++){
	  	//sprintf(valor, "%ld %ld \n", (int16_t) vetorOutputIIR[i], (int16_t) testInput_i15_10khz[i]);
	  	sprintf(valor, "%d %d \n", vetorOutputIIR[i], testInput_i15_10khz[i]);
	  	printf(valor);
	  }

	  //maxValueReturn = peakToPeakArm(testInput_f32_unknown);
	  //controlMuxs(dt, &currentMuxes);
	  //dt.raw += 1;
	  //if(dt.raw > 7) dt.raw = 0;

	  // separando por espaço pode plotar dois valores ao mesmo tempo
	  //sprintf(valor, "%d %.2f \n", (int)dt.raw, (float32_t) maxValueReturn);
	  //printf(valor);
	  //multiply(&testInput_f32_unknown, 3.0);
	  //HAL_Delay(1000);
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}


/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Configure LSE Drive Capability
  */
  HAL_PWR_EnableBkUpAccess();
  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 216;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Activate the Over-Drive mode
  */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_USART3|RCC_PERIPHCLK_CLK48;
  PeriphClkInitStruct.Usart3ClockSelection = RCC_USART3CLKSOURCE_PCLK1;
  PeriphClkInitStruct.Clk48ClockSelection = RCC_CLK48SOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ETH Initialization Function
  * @param None
  * @retval None
  */
static void MX_ETH_Init(void)
{

  /* USER CODE BEGIN ETH_Init 0 */

  /* USER CODE END ETH_Init 0 */

  /* USER CODE BEGIN ETH_Init 1 */

  /* USER CODE END ETH_Init 1 */
  heth.Instance = ETH;
  heth.Init.AutoNegotiation = ETH_AUTONEGOTIATION_ENABLE;
  heth.Init.Speed = ETH_SPEED_100M;
  heth.Init.DuplexMode = ETH_MODE_FULLDUPLEX;
  heth.Init.PhyAddress = LAN8742A_PHY_ADDRESS;
  heth.Init.MACAddr[0] =   0x00;
  heth.Init.MACAddr[1] =   0x80;
  heth.Init.MACAddr[2] =   0xE1;
  heth.Init.MACAddr[3] =   0x00;
  heth.Init.MACAddr[4] =   0x00;
  heth.Init.MACAddr[5] =   0x00;
  heth.Init.RxMode = ETH_RXPOLLING_MODE;
  heth.Init.ChecksumMode = ETH_CHECKSUM_BY_HARDWARE;
  heth.Init.MediaInterface = ETH_MEDIA_INTERFACE_RMII;

  /* USER CODE BEGIN MACADDRESS */

  /* USER CODE END MACADDRESS */

  if (HAL_ETH_Init(&heth) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ETH_Init 2 */

  /* USER CODE END ETH_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * @brief USB_OTG_FS Initialization Function
  * @param None
  * @retval None
  */
static void MX_USB_OTG_FS_PCD_Init(void)
{

  /* USER CODE BEGIN USB_OTG_FS_Init 0 */

  /* USER CODE END USB_OTG_FS_Init 0 */

  /* USER CODE BEGIN USB_OTG_FS_Init 1 */

  /* USER CODE END USB_OTG_FS_Init 1 */
  hpcd_USB_OTG_FS.Instance = USB_OTG_FS;
  hpcd_USB_OTG_FS.Init.dev_endpoints = 6;
  hpcd_USB_OTG_FS.Init.speed = PCD_SPEED_FULL;
  hpcd_USB_OTG_FS.Init.dma_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.phy_itface = PCD_PHY_EMBEDDED;
  hpcd_USB_OTG_FS.Init.Sof_enable = ENABLE;
  hpcd_USB_OTG_FS.Init.low_power_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.lpm_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.vbus_sensing_enable = ENABLE;
  hpcd_USB_OTG_FS.Init.use_dedicated_ep1 = DISABLE;
  if (HAL_PCD_Init(&hpcd_USB_OTG_FS) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USB_OTG_FS_Init 2 */

  /* USER CODE END USB_OTG_FS_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, LD1_Pin|LD3_Pin|LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(USB_PowerSwitchOn_GPIO_Port, USB_PowerSwitchOn_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : USER_Btn_Pin */
  GPIO_InitStruct.Pin = USER_Btn_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(USER_Btn_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : LD1_Pin LD3_Pin LD2_Pin */
  GPIO_InitStruct.Pin = LD1_Pin|LD3_Pin|LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : USB_PowerSwitchOn_Pin */
  GPIO_InitStruct.Pin = USB_PowerSwitchOn_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(USB_PowerSwitchOn_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : USB_OverCurrent_Pin */
  GPIO_InitStruct.Pin = USB_OverCurrent_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(USB_OverCurrent_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
