#include "stdio.h"
#include "stdbool.h"
#include "main.h"
#include "KLST_PANDA-IDC_Serial.h"
#include "KLST_PANDA-SerialDebug.h"

extern UART_HandleTypeDef huart4;
extern UART_HandleTypeDef huart8;
extern UART_HandleTypeDef huart9;

uint8_t RX_00_buffer[BUFFER_SIZE];
uint8_t RX_01_buffer[BUFFER_SIZE];
uint8_t RX_MIDI_buffer[BUFFER_SIZE];

volatile uint8_t RX_00_counter;
volatile uint8_t RX_01_counter;
volatile uint8_t RX_MIDI_counter;

uint8_t UART9_00_buffer[1];
uint8_t UART8_01_buffer[1];
uint8_t UART4_MIDI_buffer[1];

static void print_and_clear_buffer(const char *name, uint8_t *buffer,
        uint8_t buffer_size) {
    printf("%s (", name);
    for (int i = 0; i < buffer_size; i++) {
        printf("0x%X, ", buffer[i]);
        buffer[i] = 0;
    }
    printf(") ");
}

static void evaluate_receive_flags() {
    bool mReceivedData = RX_00_counter > 0 || RX_01_counter > 0
            || RX_MIDI_counter > 0;
    if (mReceivedData) {
        print("data_receive : (");
    }
    if (RX_00_counter > 0) {
        print_and_clear_buffer("UART9", RX_00_buffer, RX_00_counter);
        RX_00_counter = 0;
    }
    if (RX_01_counter > 0) {
        print_and_clear_buffer("UART8", RX_01_buffer, RX_01_counter);
        RX_01_counter = 0;
    }
    if (RX_MIDI_counter > 0) {
        print_and_clear_buffer("UART4", RX_MIDI_buffer, RX_MIDI_counter);
        RX_MIDI_counter = 0;
    }
    if (mReceivedData) {
        printf("\r\n");
    }
}

void IDC_serial_setup() {
    RX_00_counter = 0;
    RX_01_counter = 0;
    RX_MIDI_counter = 0;
    // 64000000Hz/(31250Baud*16) = 128

    // TODO MIDI ( move to own file )
    // UART4 > _MIDI_ANALOG_IN + _MIDI_ANALOG_OUT
    IDC_serial_handle_rx(UART4);
    IDC_serial_handle_rx(UART8);
    IDC_serial_handle_rx(UART9);
}

void IDC_serial_loop() {
    evaluate_receive_flags();

#define TX_BUFFER_SIZE 3
    uint8_t data[TX_BUFFER_SIZE] = { 0xF4, 0x22, 0x8A };
    println("data_transmit: UART9 + UART8 + UART4");
    HAL_UART_Transmit_IT(&huart9, (uint8_t*) data, TX_BUFFER_SIZE);
    data[2] = 0x03;
    HAL_UART_Transmit_IT(&huart8, (uint8_t*) data, TX_BUFFER_SIZE);
    data[2] = 0x04;
    HAL_UART_Transmit_IT(&huart4, (uint8_t*) data, TX_BUFFER_SIZE);
}

uint8_t IDC_serial_handle_rx(USART_TypeDef *uart_instance) {
    uint8_t mValue = 0;
    if (uart_instance == UART9) {
        mValue = UART9_00_buffer[0];
        HAL_UART_Receive_IT(&huart9, UART9_00_buffer, 1);
    } else if (uart_instance == UART8) {
        mValue = UART8_01_buffer[0];
        HAL_UART_Receive_IT(&huart8, UART8_01_buffer, 1);
    } else if (uart_instance == UART4) {
        mValue = UART4_MIDI_buffer[0];
        HAL_UART_Receive_IT(&huart4, UART4_MIDI_buffer, 1);
    }
    return mValue;
}