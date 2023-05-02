/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LCD_FRAME_BUFFER 0x90000000
#define _MIC_AUDIOCODEC_01_MCLK_Pin GPIO_PIN_2
#define _MIC_AUDIOCODEC_01_MCLK_GPIO_Port GPIOE
#define _AUDIOCODEC_00_SD_OUT_Pin GPIO_PIN_3
#define _AUDIOCODEC_00_SD_OUT_GPIO_Port GPIOE
#define _SPI_TOUCH_CS_Pin GPIO_PIN_4
#define _SPI_TOUCH_CS_GPIO_Port GPIOE
#define _SPI_TOUCH_MISO_Pin GPIO_PIN_5
#define _SPI_TOUCH_MISO_GPIO_Port GPIOE
#define _DISPLAY_LTDC_G1_Pin GPIO_PIN_6
#define _DISPLAY_LTDC_G1_GPIO_Port GPIOE
#define GPIO_04_Pin GPIO_PIN_13
#define GPIO_04_GPIO_Port GPIOC
#define GPIO_03_Pin GPIO_PIN_14
#define GPIO_03_GPIO_Port GPIOC
#define GPIO_02_Pin GPIO_PIN_15
#define GPIO_02_GPIO_Port GPIOC
#define GPIO_PWM_00_Pin GPIO_PIN_0
#define GPIO_PWM_00_GPIO_Port GPIOF
#define GPIO_PWM_01_Pin GPIO_PIN_1
#define GPIO_PWM_01_GPIO_Port GPIOF
#define GPIO_PWM_02_Pin GPIO_PIN_2
#define GPIO_PWM_02_GPIO_Port GPIOF
#define GPIO_PWM_03_Pin GPIO_PIN_3
#define GPIO_PWM_03_GPIO_Port GPIOF
#define GPIO_01_Pin GPIO_PIN_4
#define GPIO_01_GPIO_Port GPIOF
#define ADC_03_Pin GPIO_PIN_5
#define ADC_03_GPIO_Port GPIOF
#define _EXT_MEMORY_A3_Pin GPIO_PIN_6
#define _EXT_MEMORY_A3_GPIO_Port GPIOF
#define _AUDIOCODEC_00_MCLK_Pin GPIO_PIN_7
#define _AUDIOCODEC_00_MCLK_GPIO_Port GPIOF
#define _AUDIOCODEC_00_SCK_Pin GPIO_PIN_8
#define _AUDIOCODEC_00_SCK_GPIO_Port GPIOF
#define _AUDIOCODEC_00_FS_Pin GPIO_PIN_9
#define _AUDIOCODEC_00_FS_GPIO_Port GPIOF
#define _EXT_MEMORY_CLK_Pin GPIO_PIN_10
#define _EXT_MEMORY_CLK_GPIO_Port GPIOF
#define _RCC_OSC_IN_Pin GPIO_PIN_0
#define _RCC_OSC_IN_GPIO_Port GPIOH
#define _RCC_OSC_OUT_Pin GPIO_PIN_1
#define _RCC_OSC_OUT_GPIO_Port GPIOH
#define _DISPLAY_LTDC_R5_Pin GPIO_PIN_0
#define _DISPLAY_LTDC_R5_GPIO_Port GPIOC
#define _DISPLAY_LTDC_G5_Pin GPIO_PIN_1
#define _DISPLAY_LTDC_G5_GPIO_Port GPIOC
#define SPI_00_MISO_Pin GPIO_PIN_2
#define SPI_00_MISO_GPIO_Port GPIOC
#define SPI_00_MOSI_Pin GPIO_PIN_3
#define SPI_00_MOSI_GPIO_Port GPIOC
#define _ENCODER_01_A_Pin GPIO_PIN_0
#define _ENCODER_01_A_GPIO_Port GPIOA
#define _ENCODER_01_B_Pin GPIO_PIN_1
#define _ENCODER_01_B_GPIO_Port GPIOA
#define _DISPLAY_LTDC_R1_Pin GPIO_PIN_2
#define _DISPLAY_LTDC_R1_GPIO_Port GPIOA
#define SERIAL_00_RX_Pin GPIO_PIN_3
#define SERIAL_00_RX_GPIO_Port GPIOA
#define DAC_00_Pin GPIO_PIN_4
#define DAC_00_GPIO_Port GPIOA
#define _DISPLAY_LTDC_R4_Pin GPIO_PIN_5
#define _DISPLAY_LTDC_R4_GPIO_Port GPIOA
#define _DISPLAY_LTDC_G2_Pin GPIO_PIN_6
#define _DISPLAY_LTDC_G2_GPIO_Port GPIOA
#define _DISPLAY_LTDC_VSYNC_Pin GPIO_PIN_7
#define _DISPLAY_LTDC_VSYNC_GPIO_Port GPIOA
#define ADC_01_Pin GPIO_PIN_4
#define ADC_01_GPIO_Port GPIOC
#define _EXT_MEMORY_DQS_Pin GPIO_PIN_5
#define _EXT_MEMORY_DQS_GPIO_Port GPIOC
#define _EXT_MEMORY_A1_Pin GPIO_PIN_0
#define _EXT_MEMORY_A1_GPIO_Port GPIOB
#define _DISPLAY_LTDC_G0_Pin GPIO_PIN_1
#define _DISPLAY_LTDC_G0_GPIO_Port GPIOB
#define _AUDIOCODEC_00_SD_IN_Pin GPIO_PIN_2
#define _AUDIOCODEC_00_SD_IN_GPIO_Port GPIOB
#define ADC_00_Pin GPIO_PIN_11
#define ADC_00_GPIO_Port GPIOF
#define _BUTTON_PROGRAMMER_Pin GPIO_PIN_12
#define _BUTTON_PROGRAMMER_GPIO_Port GPIOF
#define ADC_02_Pin GPIO_PIN_13
#define ADC_02_GPIO_Port GPIOF
#define _AUDIOCODEC_00_I2C_SCL_Pin GPIO_PIN_14
#define _AUDIOCODEC_00_I2C_SCL_GPIO_Port GPIOF
#define _AUDIOCODEC_00_I2C_SDA_Pin GPIO_PIN_15
#define _AUDIOCODEC_00_I2C_SDA_GPIO_Port GPIOF
#define _IDC_SERIAL_02_RX_Pin GPIO_PIN_0
#define _IDC_SERIAL_02_RX_GPIO_Port GPIOG
#define _IDC_SERIAL_02_TX_Pin GPIO_PIN_1
#define _IDC_SERIAL_02_TX_GPIO_Port GPIOG
#define _EXT_MEMORY_A4_Pin GPIO_PIN_7
#define _EXT_MEMORY_A4_GPIO_Port GPIOE
#define _EXT_MEMORY_A5_Pin GPIO_PIN_8
#define _EXT_MEMORY_A5_GPIO_Port GPIOE
#define _EXT_MEMORY_A6_Pin GPIO_PIN_9
#define _EXT_MEMORY_A6_GPIO_Port GPIOE
#define _EXT_MEMORY_A7_Pin GPIO_PIN_10
#define _EXT_MEMORY_A7_GPIO_Port GPIOE
#define _ENCODER_00_B_Pin GPIO_PIN_11
#define _ENCODER_00_B_GPIO_Port GPIOE
#define _SPI_TOUCH_SCK_Pin GPIO_PIN_12
#define _SPI_TOUCH_SCK_GPIO_Port GPIOE
#define _DISPLAY_LTDC_DE_Pin GPIO_PIN_13
#define _DISPLAY_LTDC_DE_GPIO_Port GPIOE
#define _SPI_TOUCH_MOSI_Pin GPIO_PIN_14
#define _SPI_TOUCH_MOSI_GPIO_Port GPIOE
#define _DISPLAY_LTDC_R7_Pin GPIO_PIN_15
#define _DISPLAY_LTDC_R7_GPIO_Port GPIOE
#define _DISPLAY_LTDC_G4_Pin GPIO_PIN_10
#define _DISPLAY_LTDC_G4_GPIO_Port GPIOB
#define _ENCODER_01_BUTTON_Pin GPIO_PIN_11
#define _ENCODER_01_BUTTON_GPIO_Port GPIOB
#define _EXT_MEMORY_A0_Pin GPIO_PIN_12
#define _EXT_MEMORY_A0_GPIO_Port GPIOB
#define _EXT_MEMORY_A2_Pin GPIO_PIN_13
#define _EXT_MEMORY_A2_GPIO_Port GPIOB
#define _LED_00_Pin GPIO_PIN_14
#define _LED_00_GPIO_Port GPIOB
#define _LED_01_Pin GPIO_PIN_15
#define _LED_01_GPIO_Port GPIOB
#define _SERIAL_DEBUG_TX_Pin GPIO_PIN_8
#define _SERIAL_DEBUG_TX_GPIO_Port GPIOD
#define _SERIAL_DEBUG_RX_Pin GPIO_PIN_9
#define _SERIAL_DEBUG_RX_GPIO_Port GPIOD
#define _DISPLAY_LTDC_B3_Pin GPIO_PIN_10
#define _DISPLAY_LTDC_B3_GPIO_Port GPIOD
#define _MIC_AUDIOCODEC_01_SD_IN_Pin GPIO_PIN_11
#define _MIC_AUDIOCODEC_01_SD_IN_GPIO_Port GPIOD
#define _MIC_AUDIOCODEC_01_FS_Pin GPIO_PIN_12
#define _MIC_AUDIOCODEC_01_FS_GPIO_Port GPIOD
#define _MIC_AUDIOCODEC_01_SCK_Pin GPIO_PIN_13
#define _MIC_AUDIOCODEC_01_SCK_GPIO_Port GPIOD
#define _MECH_BUTTON_01_Pin GPIO_PIN_14
#define _MECH_BUTTON_01_GPIO_Port GPIOD
#define _MECH_BUTTON_00_Pin GPIO_PIN_15
#define _MECH_BUTTON_00_GPIO_Port GPIOD
#define GPIO_00_Pin GPIO_PIN_2
#define GPIO_00_GPIO_Port GPIOG
#define GPIO_05_Pin GPIO_PIN_3
#define GPIO_05_GPIO_Port GPIOG
#define GPIO_06_Pin GPIO_PIN_4
#define GPIO_06_GPIO_Port GPIOG
#define GPIO_09_Pin GPIO_PIN_5
#define GPIO_09_GPIO_Port GPIOG
#define _EXT_MEMORY_RESET_Pin GPIO_PIN_6
#define _EXT_MEMORY_RESET_GPIO_Port GPIOG
#define _DISPLAY_LTDC_CLK_Pin GPIO_PIN_7
#define _DISPLAY_LTDC_CLK_GPIO_Port GPIOG
#define _DISPLAY_LTDC_G7_Pin GPIO_PIN_8
#define _DISPLAY_LTDC_G7_GPIO_Port GPIOG
#define _DISPLAY_LTDC_HSYNC_Pin GPIO_PIN_6
#define _DISPLAY_LTDC_HSYNC_GPIO_Port GPIOC
#define _DISPLAY_LTDC_G6_Pin GPIO_PIN_7
#define _DISPLAY_LTDC_G6_GPIO_Port GPIOC
#define _DISPLAY_BACKLIGHT_PWM_Pin GPIO_PIN_8
#define _DISPLAY_BACKLIGHT_PWM_GPIO_Port GPIOC
#define _DISPLAY_LTDC_G3_Pin GPIO_PIN_9
#define _DISPLAY_LTDC_G3_GPIO_Port GPIOC
#define _ENCODER_00_A_Pin GPIO_PIN_8
#define _ENCODER_00_A_GPIO_Port GPIOA
#define _USB_DEVICE_HOST_VBUS_Pin GPIO_PIN_9
#define _USB_DEVICE_HOST_VBUS_GPIO_Port GPIOA
#define _ENCODER_00_BUTTON_Pin GPIO_PIN_10
#define _ENCODER_00_BUTTON_GPIO_Port GPIOA
#define _USB_DEVICE_HOST_MINUS_Pin GPIO_PIN_11
#define _USB_DEVICE_HOST_MINUS_GPIO_Port GPIOA
#define _USB_DEVICE_HOST_PLUS_Pin GPIO_PIN_12
#define _USB_DEVICE_HOST_PLUS_GPIO_Port GPIOA
#define _SWD_IO_Pin GPIO_PIN_13
#define _SWD_IO_GPIO_Port GPIOA
#define _SWD_CLK_Pin GPIO_PIN_14
#define _SWD_CLK_GPIO_Port GPIOA
#define _DISPLAY_LTDC_R3_Pin GPIO_PIN_15
#define _DISPLAY_LTDC_R3_GPIO_Port GPIOA
#define _DISPLAY_LTDC_R2_Pin GPIO_PIN_10
#define _DISPLAY_LTDC_R2_GPIO_Port GPIOC
#define _DISPLAY_LTDC_B4_Pin GPIO_PIN_11
#define _DISPLAY_LTDC_B4_GPIO_Port GPIOC
#define _DISPLAY_LTDC_R6_Pin GPIO_PIN_12
#define _DISPLAY_LTDC_R6_GPIO_Port GPIOC
#define _DISPLAY_LTDC_B1_Pin GPIO_PIN_0
#define _DISPLAY_LTDC_B1_GPIO_Port GPIOD
#define GPIO_08_Pin GPIO_PIN_1
#define GPIO_08_GPIO_Port GPIOD
#define _DISPLAY_LTDC_B2_Pin GPIO_PIN_2
#define _DISPLAY_LTDC_B2_GPIO_Port GPIOD
#define SPI_00_SCK_Pin GPIO_PIN_3
#define SPI_00_SCK_GPIO_Port GPIOD
#define GPIO_07_Pin GPIO_PIN_4
#define GPIO_07_GPIO_Port GPIOD
#define SERIAL_00_TX_Pin GPIO_PIN_5
#define SERIAL_00_TX_GPIO_Port GPIOD
#define _CARD_SDMMC_CK_Pin GPIO_PIN_6
#define _CARD_SDMMC_CK_GPIO_Port GPIOD
#define _CARD_SDMMC_CMD_Pin GPIO_PIN_7
#define _CARD_SDMMC_CMD_GPIO_Port GPIOD
#define _CARD_SDMMC_D0_Pin GPIO_PIN_9
#define _CARD_SDMMC_D0_GPIO_Port GPIOG
#define _CARD_SDMMC_D1_Pin GPIO_PIN_10
#define _CARD_SDMMC_D1_GPIO_Port GPIOG
#define _CARD_SDMMC_D2_Pin GPIO_PIN_11
#define _CARD_SDMMC_D2_GPIO_Port GPIOG
#define _CARD_SDMMC_D3_Pin GPIO_PIN_12
#define _CARD_SDMMC_D3_GPIO_Port GPIOG
#define _DISPLAY_LTDC_R0_Pin GPIO_PIN_13
#define _DISPLAY_LTDC_R0_GPIO_Port GPIOG
#define _DISPLAY_LTDC_B0_Pin GPIO_PIN_14
#define _DISPLAY_LTDC_B0_GPIO_Port GPIOG
#define _CARD_SDMMC_CHIP_DETECT_Pin GPIO_PIN_15
#define _CARD_SDMMC_CHIP_DETECT_GPIO_Port GPIOG
#define _SWD_OUT_Pin GPIO_PIN_3
#define _SWD_OUT_GPIO_Port GPIOB
#define SPI_00_CS_Pin GPIO_PIN_4
#define SPI_00_CS_GPIO_Port GPIOB
#define _DISPLAY_LTDC_B5_Pin GPIO_PIN_5
#define _DISPLAY_LTDC_B5_GPIO_Port GPIOB
#define I2C_00_SCL_Pin GPIO_PIN_6
#define I2C_00_SCL_GPIO_Port GPIOB
#define I2C_00_SDA_Pin GPIO_PIN_7
#define I2C_00_SDA_GPIO_Port GPIOB
#define _DISPLAY_LTDC_B6_Pin GPIO_PIN_8
#define _DISPLAY_LTDC_B6_GPIO_Port GPIOB
#define _DISPLAY_LTDC_B7_Pin GPIO_PIN_9
#define _DISPLAY_LTDC_B7_GPIO_Port GPIOB
#define _IDC_SERIAL_01_RX_Pin GPIO_PIN_0
#define _IDC_SERIAL_01_RX_GPIO_Port GPIOE
#define _IDC_SERIAL_01_TX_Pin GPIO_PIN_1
#define _IDC_SERIAL_01_TX_GPIO_Port GPIOE

/* USER CODE BEGIN Private defines */
/*
 * – OCTOSPI1 addressable space is from `0x90000000` to `0x9FFFFFFF`.
 * – OCTOSPI2 addressable space is from `0x70000000` to `0x7FFFFFFF`.
 */
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
