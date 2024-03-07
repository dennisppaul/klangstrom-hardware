/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : SAI.c
  * Description        : This file provides code for the configuration
  *                      of the SAI instances.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "sai.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

SAI_HandleTypeDef hsai_BlockA1;
SAI_HandleTypeDef hsai_BlockB1;
SAI_HandleTypeDef hsai_BlockA4;
DMA_HandleTypeDef hdma_sai1_a;
DMA_HandleTypeDef hdma_sai1_b;
DMA_HandleTypeDef hdma_sai4_a;

/* SAI1 init function */
void MX_SAI1_Init(void)
{

  /* USER CODE BEGIN SAI1_Init 0 */

  /* USER CODE END SAI1_Init 0 */

  /* USER CODE BEGIN SAI1_Init 1 */

  /* USER CODE END SAI1_Init 1 */

  /* USER CODE BEGIN SAI1_Init 1 */

  /* USER CODE END SAI1_Init 1 */

  hsai_BlockA1.Instance = SAI1_Block_A;
  hsai_BlockA1.Init.AudioMode = SAI_MODESLAVE_RX;
  hsai_BlockA1.Init.Synchro = SAI_SYNCHRONOUS;
  hsai_BlockA1.Init.OutputDrive = SAI_OUTPUTDRIVE_DISABLE;
  hsai_BlockA1.Init.FIFOThreshold = SAI_FIFOTHRESHOLD_EMPTY;
  hsai_BlockA1.Init.SynchroExt = SAI_SYNCEXT_DISABLE;
  hsai_BlockA1.Init.MonoStereoMode = SAI_STEREOMODE;
  hsai_BlockA1.Init.CompandingMode = SAI_NOCOMPANDING;
  hsai_BlockA1.Init.TriState = SAI_OUTPUT_NOTRELEASED;
  if (HAL_SAI_InitProtocol(&hsai_BlockA1, SAI_I2S_STANDARD, SAI_PROTOCOL_DATASIZE_16BIT, 2) != HAL_OK)
  {
    Error_Handler();
  }
  hsai_BlockB1.Instance = SAI1_Block_B;
  hsai_BlockB1.Init.AudioMode = SAI_MODEMASTER_TX;
  hsai_BlockB1.Init.Synchro = SAI_ASYNCHRONOUS;
  hsai_BlockB1.Init.OutputDrive = SAI_OUTPUTDRIVE_DISABLE;
  hsai_BlockB1.Init.NoDivider = SAI_MASTERDIVIDER_ENABLE;
  hsai_BlockB1.Init.FIFOThreshold = SAI_FIFOTHRESHOLD_EMPTY;
  hsai_BlockB1.Init.AudioFrequency = SAI_AUDIO_FREQUENCY_48K;
  hsai_BlockB1.Init.SynchroExt = SAI_SYNCEXT_DISABLE;
  hsai_BlockB1.Init.MonoStereoMode = SAI_STEREOMODE;
  hsai_BlockB1.Init.CompandingMode = SAI_NOCOMPANDING;
  hsai_BlockB1.Init.TriState = SAI_OUTPUT_NOTRELEASED;
  if (HAL_SAI_InitProtocol(&hsai_BlockB1, SAI_I2S_STANDARD, SAI_PROTOCOL_DATASIZE_16BIT, 2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SAI1_Init 2 */

  /* USER CODE END SAI1_Init 2 */

}
/* SAI4 init function */
void MX_SAI4_Init(void)
{

  /* USER CODE BEGIN SAI4_Init 0 */

  /* USER CODE END SAI4_Init 0 */

  /* USER CODE BEGIN SAI4_Init 1 */

  /* USER CODE END SAI4_Init 1 */

  hsai_BlockA4.Instance = SAI4_Block_A;
  hsai_BlockA4.Init.Protocol = SAI_FREE_PROTOCOL;
  hsai_BlockA4.Init.AudioMode = SAI_MODEMASTER_RX;
  hsai_BlockA4.Init.DataSize = SAI_DATASIZE_8;
  hsai_BlockA4.Init.FirstBit = SAI_FIRSTBIT_MSB;
  hsai_BlockA4.Init.ClockStrobing = SAI_CLOCKSTROBING_FALLINGEDGE;
  hsai_BlockA4.Init.Synchro = SAI_ASYNCHRONOUS;
  hsai_BlockA4.Init.OutputDrive = SAI_OUTPUTDRIVE_DISABLE;
  hsai_BlockA4.Init.NoDivider = SAI_MASTERDIVIDER_ENABLE;
  hsai_BlockA4.Init.FIFOThreshold = SAI_FIFOTHRESHOLD_EMPTY;
  hsai_BlockA4.Init.AudioFrequency = SAI_AUDIO_FREQUENCY_48K;
  hsai_BlockA4.Init.MonoStereoMode = SAI_STEREOMODE;
  hsai_BlockA4.Init.CompandingMode = SAI_NOCOMPANDING;
  hsai_BlockA4.Init.PdmInit.Activation = ENABLE;
  hsai_BlockA4.Init.PdmInit.MicPairsNbr = 1;
  hsai_BlockA4.Init.PdmInit.ClockEnable = SAI_PDM_CLOCK1_ENABLE;
  hsai_BlockA4.FrameInit.FrameLength = 16;
  hsai_BlockA4.FrameInit.ActiveFrameLength = 1;
  hsai_BlockA4.FrameInit.FSDefinition = SAI_FS_STARTFRAME;
  hsai_BlockA4.FrameInit.FSPolarity = SAI_FS_ACTIVE_HIGH;
  hsai_BlockA4.FrameInit.FSOffset = SAI_FS_FIRSTBIT;
  hsai_BlockA4.SlotInit.FirstBitOffset = 0;
  hsai_BlockA4.SlotInit.SlotSize = SAI_SLOTSIZE_DATASIZE;
  hsai_BlockA4.SlotInit.SlotNumber = 2;
  hsai_BlockA4.SlotInit.SlotActive = 0x0000FFFF;
  if (HAL_SAI_Init(&hsai_BlockA4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SAI4_Init 2 */

  /* USER CODE END SAI4_Init 2 */

}
static uint32_t SAI1_client =0;
static uint32_t SAI4_client =0;

void HAL_SAI_MspInit(SAI_HandleTypeDef* saiHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct;
/* SAI1 */
    if(saiHandle->Instance==SAI1_Block_A)
    {
    /* SAI1 clock enable */
    if (SAI1_client == 0)
    {
       __HAL_RCC_SAI1_CLK_ENABLE();

    /* Peripheral interrupt init*/
    HAL_NVIC_SetPriority(SAI1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(SAI1_IRQn);
    }
    SAI1_client ++;

    /**SAI1_A_Block_A GPIO Configuration
    PB2     ------> SAI1_SD_A
    */
    GPIO_InitStruct.Pin = _AUDIO_CODEC_SAI_SD_IN_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF6_SAI1;
    HAL_GPIO_Init(_AUDIO_CODEC_SAI_SD_IN_GPIO_Port, &GPIO_InitStruct);

    /* Peripheral DMA init*/

    hdma_sai1_a.Instance = DMA1_Stream0;
    hdma_sai1_a.Init.Request = DMA_REQUEST_SAI1_A;
    hdma_sai1_a.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_sai1_a.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_sai1_a.Init.MemInc = DMA_MINC_ENABLE;
    hdma_sai1_a.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hdma_sai1_a.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
    hdma_sai1_a.Init.Mode = DMA_CIRCULAR;
    hdma_sai1_a.Init.Priority = DMA_PRIORITY_LOW;
    hdma_sai1_a.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_sai1_a) != HAL_OK)
    {
      Error_Handler();
    }

    /* Several peripheral DMA handle pointers point to the same DMA handle.
     Be aware that there is only one channel to perform all the requested DMAs. */
    __HAL_LINKDMA(saiHandle,hdmarx,hdma_sai1_a);
    __HAL_LINKDMA(saiHandle,hdmatx,hdma_sai1_a);
    }
    if(saiHandle->Instance==SAI1_Block_B)
    {
      /* SAI1 clock enable */
      if (SAI1_client == 0)
      {
       __HAL_RCC_SAI1_CLK_ENABLE();

      /* Peripheral interrupt init*/
      HAL_NVIC_SetPriority(SAI1_IRQn, 0, 0);
      HAL_NVIC_EnableIRQ(SAI1_IRQn);
      }
    SAI1_client ++;

    /**SAI1_B_Block_B GPIO Configuration
    PE3     ------> SAI1_SD_B
    PF7     ------> SAI1_MCLK_B
    PF8     ------> SAI1_SCK_B
    PF9     ------> SAI1_FS_B
    */
    GPIO_InitStruct.Pin = _AUDIO_CODEC_SAI_SD_OUT_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF6_SAI1;
    HAL_GPIO_Init(_AUDIO_CODEC_SAI_SD_OUT_GPIO_Port, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = _AUDIO_CODEC_SAI_MCLK_Pin|_AUDIO_CODEC_SAI_SCK_Pin|_AUDIO_CODEC_SAI_FS_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF6_SAI1;
    HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

    /* Peripheral DMA init*/

    hdma_sai1_b.Instance = DMA1_Stream1;
    hdma_sai1_b.Init.Request = DMA_REQUEST_SAI1_B;
    hdma_sai1_b.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_sai1_b.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_sai1_b.Init.MemInc = DMA_MINC_ENABLE;
    hdma_sai1_b.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hdma_sai1_b.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
    hdma_sai1_b.Init.Mode = DMA_CIRCULAR;
    hdma_sai1_b.Init.Priority = DMA_PRIORITY_LOW;
    hdma_sai1_b.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_sai1_b) != HAL_OK)
    {
      Error_Handler();
    }

    /* Several peripheral DMA handle pointers point to the same DMA handle.
     Be aware that there is only one channel to perform all the requested DMAs. */
    __HAL_LINKDMA(saiHandle,hdmarx,hdma_sai1_b);
    __HAL_LINKDMA(saiHandle,hdmatx,hdma_sai1_b);
    }
/* SAI4 */
    if(saiHandle->Instance==SAI4_Block_A)
    {
    /* SAI4 clock enable */
    if (SAI4_client == 0)
    {
       __HAL_RCC_SAI4_CLK_ENABLE();

    /* Peripheral interrupt init*/
    HAL_NVIC_SetPriority(SAI4_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(SAI4_IRQn);
    }
    SAI4_client ++;

    /**SAI4_A_Block_A GPIO Configuration
    PE2     ------> SAI4_CK1
    PE6     ------> SAI4_D1
    */
    GPIO_InitStruct.Pin = _AUDIO_MIC_CLK_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF10_SAI4;
    HAL_GPIO_Init(_AUDIO_MIC_CLK_GPIO_Port, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = _AUDIO_MIC_DATA_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF9_SAI4;
    HAL_GPIO_Init(_AUDIO_MIC_DATA_GPIO_Port, &GPIO_InitStruct);

    /* Peripheral DMA init*/

    hdma_sai4_a.Instance = BDMA_Channel0;
    hdma_sai4_a.Init.Request = BDMA_REQUEST_SAI4_A;
    hdma_sai4_a.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_sai4_a.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_sai4_a.Init.MemInc = DMA_MINC_ENABLE;
    hdma_sai4_a.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hdma_sai4_a.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
    hdma_sai4_a.Init.Mode = DMA_CIRCULAR;
    hdma_sai4_a.Init.Priority = DMA_PRIORITY_LOW;
    if (HAL_DMA_Init(&hdma_sai4_a) != HAL_OK)
    {
      Error_Handler();
    }

    /* Several peripheral DMA handle pointers point to the same DMA handle.
     Be aware that there is only one channel to perform all the requested DMAs. */
    __HAL_LINKDMA(saiHandle,hdmarx,hdma_sai4_a);
    __HAL_LINKDMA(saiHandle,hdmatx,hdma_sai4_a);
    }
}

void HAL_SAI_MspDeInit(SAI_HandleTypeDef* saiHandle)
{

/* SAI1 */
    if(saiHandle->Instance==SAI1_Block_A)
    {
    SAI1_client --;
    if (SAI1_client == 0)
      {
      /* Peripheral clock disable */
       __HAL_RCC_SAI1_CLK_DISABLE();
      HAL_NVIC_DisableIRQ(SAI1_IRQn);
      }

    /**SAI1_A_Block_A GPIO Configuration
    PB2     ------> SAI1_SD_A
    */
    HAL_GPIO_DeInit(_AUDIO_CODEC_SAI_SD_IN_GPIO_Port, _AUDIO_CODEC_SAI_SD_IN_Pin);

    HAL_DMA_DeInit(saiHandle->hdmarx);
    HAL_DMA_DeInit(saiHandle->hdmatx);
    }
    if(saiHandle->Instance==SAI1_Block_B)
    {
    SAI1_client --;
      if (SAI1_client == 0)
      {
      /* Peripheral clock disable */
      __HAL_RCC_SAI1_CLK_DISABLE();
      HAL_NVIC_DisableIRQ(SAI1_IRQn);
      }

    /**SAI1_B_Block_B GPIO Configuration
    PE3     ------> SAI1_SD_B
    PF7     ------> SAI1_MCLK_B
    PF8     ------> SAI1_SCK_B
    PF9     ------> SAI1_FS_B
    */
    HAL_GPIO_DeInit(_AUDIO_CODEC_SAI_SD_OUT_GPIO_Port, _AUDIO_CODEC_SAI_SD_OUT_Pin);

    HAL_GPIO_DeInit(GPIOF, _AUDIO_CODEC_SAI_MCLK_Pin|_AUDIO_CODEC_SAI_SCK_Pin|_AUDIO_CODEC_SAI_FS_Pin);

    HAL_DMA_DeInit(saiHandle->hdmarx);
    HAL_DMA_DeInit(saiHandle->hdmatx);
    }
/* SAI4 */
    if(saiHandle->Instance==SAI4_Block_A)
    {
    SAI4_client --;
    if (SAI4_client == 0)
      {
      /* Peripheral clock disable */
       __HAL_RCC_SAI4_CLK_DISABLE();
      HAL_NVIC_DisableIRQ(SAI4_IRQn);
      }

    /**SAI4_A_Block_A GPIO Configuration
    PE2     ------> SAI4_CK1
    PE6     ------> SAI4_D1
    */
    HAL_GPIO_DeInit(GPIOE, _AUDIO_MIC_CLK_Pin|_AUDIO_MIC_DATA_Pin);

    HAL_DMA_DeInit(saiHandle->hdmarx);
    HAL_DMA_DeInit(saiHandle->hdmatx);
    }
}

/**
  * @}
  */

/**
  * @}
  */