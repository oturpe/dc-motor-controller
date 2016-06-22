// Example code for dc-motor-controller. Adapt this to exact use.
//
// NOTE: Pin descriptions and so on are for 2016-05-30 revision of the printed
// circuit, with manual fixes. Thus, not compatible with the latest revision.
//
// Author: Otto Urpelainen
// Email: oturpe@iki.fi
// Date: 2016-06-18

#include "Atmega8Utils.h"

#include "config.h"

#include <avr/io.h>
#include <util/delay.h>

/// \brief
///    Toggles the indicator led state.
void toggleIndicator() {
    static bool lit;

    if (lit) {
        INDICATOR_DATA &= ~BV(INDICATOR_DATA_PIN);
    }
    else {
        INDICATOR_DATA |= BV(INDICATOR_DATA_PIN);
    }

    lit = !lit;
}

/// \brief
///    Reads all six switches and returns a boolean array telling if they are
///    pressed or not.
///
/// \param switchState
///    Output parameter. Array of six booleans whose value is set to true if
///    the corresponding switch is being pressed.
void readSwitches(bool * switchState) {
    switchState[0] = SWITCH_1_INPUT & BV(SWITCH_1_INPUT_PIN);
    switchState[1] = SWITCH_2_INPUT & BV(SWITCH_2_INPUT_PIN);
    switchState[2] = SWITCH_3_INPUT & BV(SWITCH_3_INPUT_PIN);
    switchState[3] = SWITCH_4_INPUT & BV(SWITCH_4_INPUT_PIN);
    switchState[4] = SWITCH_5_INPUT & BV(SWITCH_5_INPUT_PIN);
    switchState[5] = SWITCH_6_INPUT & BV(SWITCH_6_INPUT_PIN);
}

/// \brief
///    Sets the motors to the state they should have on startup.
void initializeMotors() {
    // Set running forwards
    MOTOR_1_FORWARD_OUTPUT_COMPARE = MOTOR_1_SPEED;
    MOTOR_1_REVERSE_OUTPUT_COMPARE = 0x00;

    MOTOR_2_FORWARD_OUTPUT_COMPARE = MOTOR_1_SPEED;
    MOTOR_2_REVERSE_OUTPUT_COMPARE = 0x00;

    MOTOR_3_FORWARD_OUTPUT_COMPARE = MOTOR_1_SPEED;
    MOTOR_3_REVERSE_OUTPUT_COMPARE = 0x00;

    // Enable all outputs
    MOTOR_1_FORWARD_DATA |= BV(MOTOR_1_FORWARD_DATA_PIN);
    MOTOR_2_FORWARD_DATA |= BV(MOTOR_2_FORWARD_DATA_PIN);
    MOTOR_3_FORWARD_DATA |= BV(MOTOR_3_FORWARD_DATA_PIN);
    MOTOR_1_REVERSE_DATA |= BV(MOTOR_1_REVERSE_DATA_PIN);
    MOTOR_2_REVERSE_DATA |= BV(MOTOR_2_REVERSE_DATA_PIN);
    MOTOR_3_REVERSE_DATA |= BV(MOTOR_3_REVERSE_DATA_PIN);
}

/// \brief
///    Calculates the correct acceleration to use when current and target speed
///    are as given.
int16_t acceleration(uint8_t current, uint8_t target, uint8_t maxAcceleration) {
    int16_t acceleration;

    acceleration = target - current;

    if (acceleration > maxAcceleration) {
        acceleration = maxAcceleration;
    }

    return acceleration;
}

/// \brief
///    Changes motor 1 speed according to given speed target and maximum
///    acceleration.
///
/// \param forwardTarget
///    Forward target speed
///
/// \param reverseTarget
///    Reverse target speed
///
/// \param acceleration
///    Desired acceleration
void updateMotor1Speed(
    uint8_t forwardTarget,
    uint8_t reverseTarget,
    uint8_t acceleration
) {
    if (!MOTOR_1_REVERSE_OUTPUT_COMPARE) {
        MOTOR_1_FORWARD_OUTPUT_COMPARE += ::acceleration(
            MOTOR_1_FORWARD_OUTPUT_COMPARE,
            forwardTarget,
            acceleration
        );
    }
    if (!MOTOR_1_FORWARD_OUTPUT_COMPARE) {
        MOTOR_1_REVERSE_OUTPUT_COMPARE += ::acceleration(
            MOTOR_1_REVERSE_OUTPUT_COMPARE,
            reverseTarget,
            acceleration
        );
    }
}

/// \brief
///    Changes motor 2 speed according to given speed target and maximum
///    acceleration.
///
/// See updateMotor1Speed() function documentation for details. This function
/// behaves identically to that one.
void updateMotor2Speed(
    uint8_t forwardTarget,
    uint8_t reverseTarget,
    uint8_t acceleration
) {
    if (!MOTOR_2_REVERSE_OUTPUT_COMPARE) {
        MOTOR_2_FORWARD_OUTPUT_COMPARE += ::acceleration(
            MOTOR_2_FORWARD_OUTPUT_COMPARE,
            forwardTarget,
            acceleration
        );
    }
    if (!MOTOR_2_FORWARD_OUTPUT_COMPARE) {
        MOTOR_2_REVERSE_OUTPUT_COMPARE += ::acceleration(
            MOTOR_2_REVERSE_OUTPUT_COMPARE,
            reverseTarget,
            acceleration
        );
    }
}

/// \brief
///    Changes motor 3 speed according to given speed target and maximum
///    acceleration.
///
/// See updateMotor1Speed() function documentation for details. This function
/// behaves identically to that one.
void updateMotor3Speed(
    uint8_t forwardTarget,
    uint8_t reverseTarget,
    uint8_t acceleration
) {
    if (!MOTOR_3_REVERSE_OUTPUT_COMPARE) {
        MOTOR_3_FORWARD_OUTPUT_COMPARE += ::acceleration(
            MOTOR_3_FORWARD_OUTPUT_COMPARE,
            forwardTarget,
            acceleration
        );
    }
    if (!MOTOR_3_FORWARD_OUTPUT_COMPARE) {
        MOTOR_3_REVERSE_OUTPUT_COMPARE += ::acceleration(
            MOTOR_3_REVERSE_OUTPUT_COMPARE,
            reverseTarget,
            acceleration
        );
    }
}

/// \brief
///    Sets motor 1 rotation according to given switch press information.
///
/// This function stores desired motor state as static variables. Every time
/// this function is called, desired state is updated if switch press
/// information requires this. Otherwise, motor speed is increased by motor
/// acceleration value as stored in config header.
///
/// \param clockwiseEnd
///    If the switch in end of clockwise motion is pressed
///
/// \param counterClockwiseEnd
///    If the switch in end of counter-clockwise motion is pressed
void controlMotor1(bool clockwiseEnd, bool counterClockwiseEnd) {
    static uint8_t forwardTarget = MOTOR_1_SPEED;
    static uint8_t reverseTarget = 0x00;

    // In clockwise end: change direction
    if(clockwiseEnd && !counterClockwiseEnd) {
        forwardTarget = MOTOR_1_SPEED;
        reverseTarget = 0x00;
    }
    // In counter-clockwise end: change direction
    else if(!clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = MOTOR_1_SPEED;
    }
    // Should not happen: stop motor
    else if (clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = 0x00;
    }

    updateMotor1Speed(forwardTarget, reverseTarget, MOTOR_1_ACCELERATION);
}

/// \brief
///    Sets motor 2 rotation according to given switch press information.
///
/// See controlMotor1() function documentation for details. This function
/// behaves identically to that one.
void controlMotor2(bool clockwiseEnd, bool counterClockwiseEnd) {
    static uint8_t forwardTarget = MOTOR_2_SPEED;
    static uint8_t reverseTarget = 0x00;

    // In clockwise end: change direction
    if(clockwiseEnd && !counterClockwiseEnd) {
        forwardTarget = MOTOR_2_SPEED;
        reverseTarget = 0x00;
    }
    // In counter-clockwise end: change direction
    else if(!clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = MOTOR_2_SPEED;
    }
    // Should not happen: stop motor
    else if (clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = 0x00;
    }

    updateMotor2Speed(forwardTarget, reverseTarget, MOTOR_2_ACCELERATION);
}

/// \brief
///    Sets motor 3 rotation according to given switch press information.
///
/// See controlMotor1() function documentation for details. This function
/// behaves identically to that one.
void controlMotor3(bool clockwiseEnd, bool counterClockwiseEnd) {
    static uint8_t forwardTarget = MOTOR_3_SPEED;
    static uint8_t reverseTarget = 0x00;

    // In clockwise end: change direction
    if(clockwiseEnd && !counterClockwiseEnd) {
        forwardTarget = MOTOR_3_SPEED;
        reverseTarget = 0x00;
    }
    // In counter-clockwise end: change direction
    else if(!clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = MOTOR_3_SPEED;
    }
    // Should not happen: stop motor
    else if (clockwiseEnd && counterClockwiseEnd) {
        forwardTarget = 0x00;
        reverseTarget = 0x00;
    }

    updateMotor3Speed(forwardTarget, reverseTarget, MOTOR_3_ACCELERATION);
}

int main() {
    INDICATOR_DATA_DIR |= BV(INDICATOR_DATA_DIR_PIN);

    SWITCH_1_DATA |= BV(SWITCH_1_DATA_PIN);
    SWITCH_2_DATA |= BV(SWITCH_2_DATA_PIN);
    SWITCH_3_DATA |= BV(SWITCH_3_DATA_PIN);
    SWITCH_4_DATA |= BV(SWITCH_4_DATA_PIN);
    SWITCH_5_DATA |= BV(SWITCH_5_DATA_PIN);
    SWITCH_6_DATA |= BV(SWITCH_6_DATA_PIN);

    MOTOR_1_FORWARD_DATA_DIR |= BV(MOTOR_1_FORWARD_DATA_DIR_PIN);
    MOTOR_1_REVERSE_DATA_DIR |= BV(MOTOR_1_REVERSE_DATA_DIR_PIN);
    MOTOR_2_FORWARD_DATA_DIR |= BV(MOTOR_2_FORWARD_DATA_DIR_PIN);
    MOTOR_2_REVERSE_DATA_DIR |= BV(MOTOR_2_REVERSE_DATA_DIR_PIN);
    MOTOR_3_FORWARD_DATA_DIR |= BV(MOTOR_3_FORWARD_DATA_DIR_PIN);
    MOTOR_3_REVERSE_DATA_DIR |= BV(MOTOR_3_REVERSE_DATA_DIR_PIN);

    Atmega8::initializeTimer0(
        PRESCALER_VALUE,
        Atmega8::PWM_PHASE_CORRECT,
        Atmega8::TOP_00FF
    );
    Atmega8::initializeTimer1(
        PRESCALER_VALUE,
        Atmega8::PWM_PHASE_CORRECT,
        Atmega8::TOP_00FF
    );
    Atmega8::initializeTimer2(
        PRESCALER_VALUE,
        Atmega8::PWM_PHASE_CORRECT,
        Atmega8::TOP_00FF
    );

    OCR1AH = 0x00;
    OCR1BH = 0x00;

    // Set non-inverting pwm
    TCCR0A |= BV(COM0A1) | BV(COM0B1);
    TCCR1A |= BV(COM1A1) | BV(COM1B1);
    TCCR2A |= BV(COM2A1) | BV(COM2B1);

    initializeMotors();

    uint16_t indicatorCounter = 0;

    while (true) {
        if (indicatorCounter == INDICATOR_HALF_PERIOD) {
            toggleIndicator();
            indicatorCounter = 0;
        }
        else {
            indicatorCounter++;
        }

        bool switchState[6];
        readSwitches(switchState);

        controlMotor1(switchState[0], switchState[3]);
        controlMotor2(switchState[1], switchState[4]);
        controlMotor3(switchState[2], switchState[5]);

        _delay_ms(LOOP_DELAY);
    }
}
