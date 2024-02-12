#include "KLST_PANDA-AudioCodec.h"
#include "KLST_PANDA-SerialDebug.h"
#include "main.h"
#include "WM8904.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern I2C_HandleTypeDef hi2c4;
extern SAI_HandleTypeDef hsai_BlockA1;
extern SAI_HandleTypeDef hsai_BlockB1;

#define KLANG_AUDIO_RATE 48000
#define KLANG_SAMPLES_PER_AUDIO_BLOCK 256
#define I2S_BUFFER_SIZE (KLANG_SAMPLES_PER_AUDIO_BLOCK * 2)
uint32_t dma_TX_buffer[I2S_BUFFER_SIZE];
uint32_t dma_RX_buffer[I2S_BUFFER_SIZE];
uint32_t *mCurrentRXBuffer;

static void delay_ms(uint32_t duration) {
    HAL_Delay(duration);
}

static void setup_SAI();

static void setup_clock() {
    println("WM8904_R116-120_FLL_CONTROL ( before )");
    print_binary16ui(WM8904_read_register(WM8904_R116_FLL_CONTROL_1));
    print_binary16ui(WM8904_read_register(WM8904_R117_FLL_CONTROL_2));
    print_binary16ui(WM8904_read_register(WM8904_R118_FLL_CONTROL_3));
    print_binary16ui(WM8904_read_register(WM8904_R119_FLL_CONTROL_4));
    print_binary16ui(WM8904_read_register(WM8904_R120_FLL_CONTROL_5));

//#define WM8904_CLOCK_FROM_FLL
#ifdef WM8904_CLOCK_FROM_FLL
    println("generating SYSCLK from FLL");

    /* --- CLOCK_RATES ---------------------------------------------------------------------------------------------- */

    /* generate SYSCLK from Frequency Locked Loop (FLL) using MCLK as reference */
    /* see "CLOCKING AND SAMPLE RATES" (p98ff) */
    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_CLK_SYS_ENA);
//    WM8904_write_register(WM8904_R22_CLOCK_RATES_2, 0); // turn off system clock
    WM8904_write_register(WM8904_R21_CLOCK_RATES_1,
                          WM8904_CLK_SYS_RATE(3) | // select SYSCLK / fs ratio = 12288000Hz/48000Hz = 256 = 0b0011 = 3
                                  WM8904_SAMPLE_RATE(5) // select Sample Rate (fs) = 44.1kHz, 48kHz = 0b101 = 5
                          );
    WM8904_write_register(WM8904_CLOCK_RATES_0,
                          0x0000);

    /* --- FLL_CONTROL ---------------------------------------------------------------------------------------------- */

    /*
     see "FREQUENCY LOCKED LOOP (FLL)" (p104ff)

     The FLL operating frequency, FVCO is set according to the following equation:
     FVCO = (FREF x N.K x FLL_FRATIO) ( "FVCO must be in the range 90-100 MHz" )

     FREF = 12500000Hz
     FLL_FRATIO = 1MHz - 13.5MHz = 0h (divide by 1) = 0

     The FLL output frequency is generated according to the following equation:
     FOUT = (FVCO / FLL_OUTDIV)
     FLL_OUTDIV = 11.25 MHz - 12.5 MHz = 000111 (divide by 8) = 7

     FVCO = (FOUT x FLL_OUTDIV) = 12288000 * 8 = 98304000Hz
     N.K  = FVCO / (FLL_FRATIO x FREF) = 98304000Hz / ( 1 * 12500000Hz ) = 7.86432
     K    = 0.86432 * 65536 = 56644.07552 = 56644
     N    = 7
     */
    WM8904_write_register(WM8904_FLL_CONTROL_1,
                          0x0000);
    WM8904_write_register(WM8904_R117_FLL_CONTROL_2,
                          WM8904_FLL_OUTDIV(7) | // FLL FOUT clock divider
                                  WM8904_FLL_FRATIO(0) // FVCO clock divider
                          );
    WM8904_write_register(WM8904_R118_FLL_CONTROL_3,
                          WM8904_FLL_K(56644)); // Fractional multiply for FREF
    WM8904_write_register(WM8904_R119_FLL_CONTROL_4,
                          WM8904_FLL_N(7)); // Integer multiply for FREF
    WM8904_write_register(WM8904_R120_FLL_CONTROL_5,
                          WM8904_FLL_CLK_REF_SRC(0) | // FLL Clock source, 00 = MCLK
                                  WM8904_FLL_CTRL_RATE(0) | // Frequency of the FLL, 000 = FVCO / 1
                                  WM8904_FLL_CLK_REF_DIV(0) // FLL Clock Reference Divider, 00 = MCLK / 1 "... bring the reference down to 13.5MHz or below."
                          );
    WM8904_write_register(WM8904_R116_FLL_CONTROL_1,
                          WM8904_FLL_FRACN_ENA | // FLL Fractional enable
                                  WM8904_FLL_ENA // FLL Enable
                          );
    delay_ms(5);

    /* --- CLOCK_RATES ---------------------------------------------------------------------------------------------- */

    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_SYSCLK_SRC | // SYSCLK Source Select to FLL output
                                  WM8904_CLK_DSP_ENA // DSP Clock enable
                                  | WM8904_CLK_SYS_ENA // System Clock enable
//                                  | WM8904_TOCLK_ENA // Zero Cross timeout enable
                          );
    delay_ms(30);
#else
    println("generating SYSCLK from MCLK directly");
    // user MCLK signal directly ( runs at 12.5MHz )
    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_CLK_DSP_ENA | // DSP Clock enable
                                  WM8904_CLK_SYS_ENA | // System Clock enable
                                  WM8904_TOCLK_ENA // Zero Cross timeout enable
                          );
    delay_ms(30);
#endif

    println("WM8904_R116-120_FLL_CONTROL ( after ) ( if not different there is a problem with SYSCLK )");
    print_binary16ui(WM8904_read_register(WM8904_R116_FLL_CONTROL_1));
    print_binary16ui(WM8904_read_register(WM8904_R117_FLL_CONTROL_2));
    print_binary16ui(WM8904_read_register(WM8904_R118_FLL_CONTROL_3));
    print_binary16ui(WM8904_read_register(WM8904_R119_FLL_CONTROL_4));
    print_binary16ui(WM8904_read_register(WM8904_R120_FLL_CONTROL_5));
    println("WM8904_R116_FLL_CONTROL_1: 0x%02X",
            WM8904_read_register(WM8904_R116_FLL_CONTROL_1));
    println("WM8904_R117_FLL_CONTROL_2: 0x%02X",
            WM8904_read_register(WM8904_R117_FLL_CONTROL_2));
    println("WM8904_R118_FLL_CONTROL_3: 0x%02X",
            WM8904_read_register(WM8904_R118_FLL_CONTROL_3));
    println("WM8904_R119_FLL_CONTROL_4: 0x%02X",
            WM8904_read_register(WM8904_R119_FLL_CONTROL_4));
    println("WM8904_R120_FLL_CONTROL_5: 0x%02X",
            WM8904_read_register(WM8904_R120_FLL_CONTROL_5));

//    println("--- TEST begin");
////    WM8904_write_register(WM8904_R22_CLOCK_RATES_2, 0); // TODO so here is the problem!!! we should be able to write to the registers with the clock on!
//    println("WM8904_R25_AUDIO_INTERFACE_1");
//    print_binary16ui(WM8904_read_register(WM8904_R25_AUDIO_INTERFACE_1));
//    WM8904_write_register(WM8904_R25_AUDIO_INTERFACE_1,
//                          0);
//    print_binary16ui(WM8904_read_register(WM8904_R25_AUDIO_INTERFACE_1));
//    WM8904_write_register(WM8904_R25_AUDIO_INTERFACE_1,
//                          WM8904_AIF_FMT_I2S | WM8904_AIF_WL_16BIT);
//    print_binary16ui(WM8904_read_register(WM8904_R25_AUDIO_INTERFACE_1));
//    println("--- TEST end");
}

/**
 * see "FREQUENCY LOCKED LOOP (FLL)" (p104ff)
 *
 * The FLL operating frequency, FVCO is set according to the following equation:
 * FVCO = (FREF x N.K x FLL_FRATIO) ( "FVCO must be in the range 90-100 MHz" )
 *
 * FREF = 12500000Hz
 * FLL_FRATIO = 1MHz - 13.5MHz = 0h (divide by 1) = 0
 *
 * The FLL output frequency is generated according to the following equation:
 * FOUT = (FVCO / FLL_OUTDIV)
 * FLL_OUTDIV = 11.25 MHz - 12.5 MHz = 000111 (divide by 8) = 7
 *
 * FVCO = (FOUT x FLL_OUTDIV) = 12288000 * 8 = 98304000Hz
 * N.K  = FVCO / (FLL_FRATIO x FREF) = 98304000Hz / ( 1 * 12500000Hz ) = 7.86432
 * K    = 0.86432 * 65536 = 56644.07552 = 56644
 * N    = 7
 */
static void setup_WM8904() {
    /* --- POWER ---------------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_BIAS_CONTROL_0,
                          WM8904_ISEL_HP_BIAS);
    WM8904_write_register(WM8904_VMID_CONTROL_0,
                          WM8904_VMID_BUF_ENA |
                          WM8904_VMID_RES_FAST | WM8904_VMID_ENA);
    delay_ms(5);
    WM8904_write_register(WM8904_VMID_CONTROL_0,
                          WM8904_VMID_BUF_ENA |
                          WM8904_VMID_RES_NORMAL | WM8904_VMID_ENA);
    WM8904_write_register(WM8904_BIAS_CONTROL_0,
                          WM8904_ISEL_HP_BIAS | WM8904_BIAS_ENA);
    WM8904_write_register(WM8904_POWER_MANAGEMENT_0,
                          WM8904_INL_ENA | WM8904_INR_ENA);
    WM8904_write_register(WM8904_POWER_MANAGEMENT_2,
                          WM8904_HPL_PGA_ENA | WM8904_HPR_PGA_ENA);
    WM8904_write_register(WM8904_DAC_DIGITAL_1,
                          WM8904_DEEMPH(0));
    WM8904_write_register(WM8904_ANALOGUE_OUT12_ZC,
                          0x0000);
    WM8904_write_register(WM8904_CHARGE_PUMP_0,
                          WM8904_CP_ENA);
    WM8904_write_register(WM8904_CLASS_W_0,
                          WM8904_CP_DYN_PWR);

    /* --- FLL_CONTROL ---------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_FLL_CONTROL_1,
                          0x0000);                   // FLL Disable
    WM8904_write_register(WM8904_R117_FLL_CONTROL_2,
                          WM8904_FLL_OUTDIV(7)       // FLL FOUT clock divider: 7=divide by 8
                          | WM8904_FLL_FRATIO(0)     // FVCO clock divider: 0=divide by 1 TODO(not sure about this `4`)
                          );
    WM8904_write_register(WM8904_R118_FLL_CONTROL_3,
                          WM8904_FLL_K(56644));      // Fractional multiply for FREF
    WM8904_write_register(WM8904_R119_FLL_CONTROL_4,
                          WM8904_FLL_N(7));          // Integer multiply for FREF
    WM8904_write_register(WM8904_R120_FLL_CONTROL_5,
                          WM8904_FLL_CLK_REF_SRC(0)  // FLL Clock source: 0 = MCLK
                          | WM8904_FLL_CTRL_RATE(0)  // Frequency of the FLL: 0 = FVCO / 1
                                  | WM8904_FLL_CLK_REF_DIV(0) // FLL Clock Reference Divider: 0 = MCLK / 1 "... bring the reference down to 13.5MHz or below."
                          );
    WM8904_write_register(WM8904_R116_FLL_CONTROL_1,
                          WM8904_FLL_FRACN_ENA       // FLL Fractional enable
                          | WM8904_FLL_ENA           // FLL Enable
                          );
    delay_ms(5);

    /* --- CLOCK_RATES ---------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_R21_CLOCK_RATES_1,
                          WM8904_CLK_SYS_RATE(3)     // select SYSCLK / fs ratio = 12288000Hz/48000Hz = 256 = 0b0011 = 3
                          | WM8904_SAMPLE_RATE(5)    // select Sample Rate (fs) = 44.1kHz, 48kHz = 0b101 = 5
                          );
    WM8904_write_register(WM8904_R20_CLOCK_RATES_0,
                          0x0000);
    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_SYSCLK_SRC            // SYSCLK Source Select to FLL output
                          | WM8904_CLK_SYS_ENA         // System Clock enable
                                  | WM8904_CLK_DSP_ENA // DSP Clock enable
                          );

    /* --- AUDIO_INTERFACE ------------------------------------------------------------------------------------------ */
//    WM8904_write_register(WM8904_R25_AUDIO_INTERFACE_1,
//                          WM8904_BCLK_DIR | WM8904_AIF_FMT_I2S);
//    WM8904_write_register(WM8904_R26_AUDIO_INTERFACE_2,
//                          WM8904_BCLK_DIV(8));
//    WM8904_write_register(WM8904_R27_AUDIO_INTERFACE_3,
//                          WM8904_LRCLK_DIR | WM8904_LRCLK_RATE(0x20));
    WM8904_write_register(WM8904_R25_AUDIO_INTERFACE_1,
                          WM8904_AIF_WL_16BIT | WM8904_AIF_FMT_I2S);
    WM8904_write_register(WM8904_R26_AUDIO_INTERFACE_2,
                          0);
    WM8904_write_register(WM8904_R27_AUDIO_INTERFACE_3,
                          0);
    WM8904_write_register(WM8904_POWER_MANAGEMENT_6,
                          WM8904_DACL_ENA | WM8904_DACR_ENA |
                          WM8904_ADCL_ENA | WM8904_ADCR_ENA);
    delay_ms(5);

    /* --- INPUT_OUTPUT --------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_ANALOGUE_LEFT_INPUT_0,
                          WM8904_LIN_VOL(0x10));
    WM8904_write_register(WM8904_ANALOGUE_RIGHT_INPUT_0,
                          WM8904_RIN_VOL(0x10));
    WM8904_write_register(WM8904_ANALOGUE_HP_0,
                          WM8904_HPL_ENA | WM8904_HPR_ENA);
    WM8904_write_register(WM8904_ANALOGUE_HP_0,
                          WM8904_HPL_ENA_DLY | WM8904_HPL_ENA |
                          WM8904_HPR_ENA_DLY | WM8904_HPR_ENA);
    WM8904_write_register(WM8904_DC_SERVO_0,
                          WM8904_DCS_ENA_CHAN_3 | WM8904_DCS_ENA_CHAN_2 |
                          WM8904_DCS_ENA_CHAN_1 | WM8904_DCS_ENA_CHAN_0);
    WM8904_write_register(WM8904_DC_SERVO_1,
                          WM8904_DCS_TRIG_STARTUP_3 | WM8904_DCS_TRIG_STARTUP_2 |
                          WM8904_DCS_TRIG_STARTUP_1 | WM8904_DCS_TRIG_STARTUP_0);
    delay_ms(100);

    /* --- HEADPHONES ----------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_ANALOGUE_HP_0,
                          WM8904_HPL_ENA_OUTP | WM8904_HPL_ENA_DLY | WM8904_HPL_ENA |
                          WM8904_HPR_ENA_OUTP | WM8904_HPR_ENA_DLY | WM8904_HPR_ENA);
    WM8904_write_register(WM8904_ANALOGUE_HP_0,
                          WM8904_HPL_RMV_SHORT | WM8904_HPL_ENA_OUTP | WM8904_HPL_ENA_DLY | WM8904_HPL_ENA |
                          WM8904_HPR_RMV_SHORT | WM8904_HPR_ENA_OUTP | WM8904_HPR_ENA_DLY | WM8904_HPR_ENA);
    WM8904_write_register(WM8904_ANALOGUE_OUT1_LEFT,
                          WM8904_HPOUT_VU | WM8904_HPOUTL_VOL(0x39));
    WM8904_write_register(WM8904_ANALOGUE_OUT1_RIGHT,
                          WM8904_HPOUT_VU | WM8904_HPOUTR_VOL(0x39));
    delay_ms(100);

    /* --- TODO ----------------------------------------------------------------------------------------------------- */
    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_CLK_DSP_ENA // DSP Clock enable
                          | WM8904_CLK_SYS_ENA  // System Clock enable
                          );
}

static void setup_audio_start_sequence() {
    WM8904_write_register(WM8904_R22_CLOCK_RATES_2,
                          WM8904_CLK_SYS_ENA // required for write sequencer to run
                          );
    // use CONTROL WRITE SEQUENCER (p122ff)
    // when done writing it asserts the WSEQ_EINT flag in Register R127
    // R112 (70h) Write Sequencer 4, WSEQ_BUSY: 0 = Sequencer idle, 1 = Sequencer busy
    // "The Start-up sequence is initiated by writing 0100h to Register R111 (6Fh)"

    /* using the default startup sequence (p131) */
    WM8904_write_register(WM8904_R108_WM8904_WRITE_SEQUENCER_0,
                          WM8904_WSEQ_ENA); // (R108 > 0100h) - This enables the Write Sequencer
    WM8904_write_register(WM8904_R111_WM8904_WRITE_SEQUENCER_3,
                          WM8904_WSEQ_START); // (R111 > 0100h) - This starts the Write Sequencer at Index address 0 (00h)

    println("starting WM8904_WSEQ_START");
    println("TEST register values below should not be the same");
    print("WM8904_R5_VMID_CONTROL_0: ");
    print_binary16ui(WM8904_read_register(WM8904_R5_VMID_CONTROL_0)); // TEST
    /* "... this sequence takes approximately 300ms to run." ( at 12.288MHz ) */
    delay_ms(333);
    print("WM8904_R5_VMID_CONTROL_0: ");
    print_binary16ui(WM8904_read_register(WM8904_R5_VMID_CONTROL_0)); // TEST
    println("finished WM8904_WSEQ_START");
}

uint8_t audiocodec_setup() {
    if (WM8904_init(&hi2c4) != HAL_OK) {
        println("could not initialize audiocodec");
        return HAL_ERROR;
    } else {
        println("setup SAI");
        srand(time(NULL));
        setup_SAI(); // this is required to start the master clock
        delay_ms(100);
        println("configuring audiocodec at I2C 0x%02X",
                WM8904_I2C_ADDRESS);
//        setup_audio_start_sequence();
//        setup_WM8904();
        println("setup clock");
        setup_clock();
        println("setup audio ( with default start sequence )");
        setup_audio_start_sequence();
        return HAL_OK;
    }
}

/* ------------------------------------------------------------------------------------------------------------------ */

#define SANITY_TEST             1
#define SANITY_TEST_PASSTHROUGH 0
#define SANITY_TEST_NOISE       1

#if SANITY_TEST

float left_osc_phi = 0;
static const float M_MAX_FREQUENCEY = 440.0;
float left_osc_phi_inc = M_MAX_FREQUENCEY * 0.5 / (float) KLANG_AUDIO_RATE;  // generating 220Hz
float right_osc_phi = 0;
float right_osc_phi_inc = M_MAX_FREQUENCEY * 0.25 / (float) KLANG_AUDIO_RATE;  // generating 110Hz

void FillBuffer(uint32_t *mTXBuffer,
                uint32_t *mRXBuffer,
                uint16_t len) {
    left_osc_phi_inc += 1;
    if (left_osc_phi_inc > M_MAX_FREQUENCEY) {
        left_osc_phi_inc = M_MAX_FREQUENCEY * 0.25;
    }
    right_osc_phi_inc += 1;
    if (right_osc_phi_inc > M_MAX_FREQUENCEY) {
        right_osc_phi_inc = M_MAX_FREQUENCEY * 0.25;
    }

    for (uint16_t i = 0; i < len; i++) {
#if SANITY_TEST_PASSTHROUGH
        mTXBuffer[i] = mRXBuffer[i];
#else
#if SANITY_TEST_PASSTHROUGH
        const float mAmplitude = 0.1f;

        float mLeftf = (float) sin(left_osc_phi * 6.2832f) * mAmplitude;
        left_osc_phi += left_osc_phi_inc;
        left_osc_phi -= (float) ((uint16_t) left_osc_phi);
        int16_t mLefti = (int16_t) (mLeftf * 32767.0f);

        float mRightf = (float) sin(right_osc_phi * 6.2832f) * mAmplitude;
        right_osc_phi += right_osc_phi_inc;
        right_osc_phi -= (float) ((uint16_t) right_osc_phi);
        int16_t mRighti = (int16_t) (mRightf * 32767.0f);

        // both channels
        mTXBuffer[i] = ((uint32_t) (uint16_t) mLefti) << 0 | ((uint32_t) (uint16_t) mRighti) << 16;
#else
        mTXBuffer[i] = rand();
#endif
#endif
    }
}
#endif

static void setup_SAI() {
    memset(dma_TX_buffer,
           0,
           sizeof(dma_TX_buffer));
    memset(dma_RX_buffer,
           0,
           sizeof(dma_RX_buffer));

    HAL_StatusTypeDef status = HAL_SAI_Transmit_DMA(&hsai_BlockB1,
                                                    (uint8_t*) dma_TX_buffer,
                                                    I2S_BUFFER_SIZE << 1);
    if (HAL_OK != status) {
        println("### ERROR initializing SAI TX: %i",
                status);
    }

    status = HAL_SAI_Receive_DMA(&hsai_BlockA1,
                                 (uint8_t*) dma_RX_buffer,
                                 I2S_BUFFER_SIZE << 1);
    if (HAL_OK != status) {
        println("### ERROR initializing SAI RX: %i",
                status);
    }

    mCurrentRXBuffer = &(dma_RX_buffer[0]);
}

void HAL_SAI_TxCpltCallback(SAI_HandleTypeDef *hsai) {
//    printf("<");
#if SANITY_TEST
    FillBuffer(&(dma_TX_buffer[I2S_BUFFER_SIZE >> 1]),
               mCurrentRXBuffer,
               I2S_BUFFER_SIZE >> 1);
#else
    KLST_ISH_fill_buffer(&(dma_TX_buffer[I2S_BUFFER_SIZE >> 1]), mCurrentRXBuffer, I2S_BUFFER_SIZE >> 1);
#endif
}

void HAL_SAI_TxHalfCpltCallback(SAI_HandleTypeDef *hsai) {
#if SANITY_TEST
    FillBuffer(&(dma_TX_buffer[0]),
               mCurrentRXBuffer,
               I2S_BUFFER_SIZE >> 1);
#else
    KLST_ISH_fill_buffer(&(dma_TX_buffer[0]), mCurrentRXBuffer, I2S_BUFFER_SIZE >> 1);
#endif
}

void HAL_SAI_RxCpltCallback(SAI_HandleTypeDef *hsai) {
//    printf(">");
    mCurrentRXBuffer = &(dma_RX_buffer[I2S_BUFFER_SIZE >> 1]);
}

void HAL_SAI_RxHalfCpltCallback(SAI_HandleTypeDef *hsai) {
    mCurrentRXBuffer = &(dma_RX_buffer[0]);
}
