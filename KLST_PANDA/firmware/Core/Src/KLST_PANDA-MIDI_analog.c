#include "stdio.h"
#include "stdbool.h"
#include "main.h"
#include "KLST_PANDA-MIDI_analog.h"
#include "KLST_PANDA-SerialDebug.h"

extern UART_HandleTypeDef huart4;
extern DMA_HandleTypeDef hdma_uart4_rx;
extern DMA_HandleTypeDef hdma_uart4_tx;

uint8_t __attribute__((section(".dma_buffer"))) RX_MIDI_DMA_buffer[MIDI_ANALOG_DMA_BUFFER_SIZE];
uint8_t __attribute__((section(".dma_buffer"))) TX_MIDI_DMA_buffer[MIDI_ANALOG_DMA_BUFFER_SIZE];

void MIDI_analog_setup() {
    MIDI_analog_handle_start_receive();
}

void MIDI_analog_loop() {
    println("MIDI: UART4");
#define MIDI_TX_BUFFER_SIZE 3
    uint8_t data[MIDI_TX_BUFFER_SIZE];
    data[0] = 0xF3;
    data[1] = 0x21;
    data[2] = 0x02;
    for (uint8_t i = 0; i < MIDI_TX_BUFFER_SIZE; i++) {
        TX_MIDI_DMA_buffer[i] = data[i];
    }
    HAL_UART_Transmit_DMA(&huart4, TX_MIDI_DMA_buffer, MIDI_TX_BUFFER_SIZE);
}

static void print_and_clear_buffer(const char *name, uint8_t *buffer, uint8_t buffer_size) {
    printf("%s (", name);
    for (int i = 0; i < buffer_size; i++) {
        printf("0x%X, ", buffer[i]);
        buffer[i] = 0;
    }
    printf(") ");
}

void MIDI_analog_handle_rx(uint16_t length) {
    if (length > 0) {
        // TODO write to persistent buffer
        print("data_receive : (");
        print_and_clear_buffer("UART4[DMA]", RX_MIDI_DMA_buffer, length);
        printf("\r\n");
    }

    MIDI_analog_handle_start_receive();
}

void MIDI_analog_handle_start_receive() {
    HAL_UARTEx_ReceiveToIdle_DMA(&huart4, RX_MIDI_DMA_buffer, MIDI_ANALOG_DMA_BUFFER_SIZE);
    __HAL_DMA_DISABLE_IT(&hdma_uart4_rx, DMA_IT_HT);
}
