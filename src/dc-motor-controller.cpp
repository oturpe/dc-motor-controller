// Add description here
//
// Author: Otto Urpelainen
// Email: oturpe@iki.fi
// Date: 2016-06-18

#include "Atmega88pUtils.h"

#include "config.h"

#include <avr/io.h>
#include <util/delay.h>

uint32_t indicatorCounter = 0;

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
    // All running clockwise
    MOTOR_1_FORWARD_DATA |= BV(MOTOR_1_FORWARD_DATA_PIN);
    MOTOR_2_FORWARD_DATA |= BV(MOTOR_2_FORWARD_DATA_PIN);
    MOTOR_3_FORWARD_DATA |= BV(MOTOR_3_FORWARD_DATA_PIN);
}

/// \brief
///    Implement motor 1 control logic here
///
/// \param clockwiseEnd
///    If the switch in end of clockwise motion is pressed
///
/// \param counterClockwiseEnd
///    If the switch in end of counter-clockwise motion is pressed



void controlMotor1(bool clockwiseEnd, bool counterClockwiseEnd) {
        // In clockwise end: change direction
        if(clockwiseEnd && !counterClockwiseEnd) {
            MOTOR_1_FORWARD_DATA |= BV(MOTOR_1_FORWARD_DATA_PIN);
            MOTOR_1_REVERSE_DATA &= ~BV(MOTOR_1_REVERSE_DATA_PIN);;
        }
        // In counter-clockwise end: change direction
        else if(!clockwiseEnd && counterClockwiseEnd) {
            MOTOR_1_FORWARD_DATA &= ~BV(MOTOR_1_FORWARD_DATA_PIN);
            MOTOR_1_REVERSE_DATA |= BV(MOTOR_1_REVERSE_DATA_PIN);;
        }
        // Should not happen: stop motor
        else if (clockwiseEnd && counterClockwiseEnd) {
            MOTOR_1_FORWARD_DATA &= ~BV(MOTOR_1_FORWARD_DATA_PIN);
            MOTOR_1_REVERSE_DATA &= ~BV(MOTOR_1_REVERSE_DATA_PIN);;
        }
}

/// \brief
///    Implement motor 2 control logic here
///
/// \param clockwiseEnd
///    If the switch in end of clockwise motion is pressed
///
/// \param counterClockwiseEnd
///    If the switch in end of counter-clockwise motion is pressed
void controlMotor2(bool clockwiseEnd, bool counterClockwiseEnd) {
        // In clockwise end: change direction
        if(clockwiseEnd && !counterClockwiseEnd) {
            MOTOR_2_FORWARD_DATA |= BV(MOTOR_2_FORWARD_DATA_PIN);
            MOTOR_2_REVERSE_DATA &= ~BV(MOTOR_2_REVERSE_DATA_PIN);
        }
        // In counter-clockwise end: change direction
        else if(!clockwiseEnd && counterClockwiseEnd) {
            MOTOR_2_FORWARD_DATA &= ~BV(MOTOR_2_FORWARD_DATA_PIN);
            MOTOR_2_REVERSE_DATA |= BV(MOTOR_2_REVERSE_DATA_PIN);
        }
        // Should not happen: stop motor
        else if (clockwiseEnd && counterClockwiseEnd) {
            MOTOR_2_FORWARD_DATA &= ~BV(MOTOR_2_FORWARD_DATA_PIN);
            MOTOR_2_REVERSE_DATA &= ~BV(MOTOR_2_REVERSE_DATA_PIN);
        }
}

/// \brief
///    Implement motor 3 control logic here
///
/// \param clockwiseEnd
///    If the switch in end of clockwise motion is pressed
///
/// \param counterClockwiseEnd
///    If the switch in end of counter-clockwise motion is pressed
void controlMotor3(bool clockwiseEnd, bool counterClockwiseEnd) {
        // In clockwise end: change direction
        if(clockwiseEnd && !counterClockwiseEnd) {
            MOTOR_3_FORWARD_DATA |= BV(MOTOR_3_FORWARD_DATA_PIN);
            MOTOR_3_REVERSE_DATA &= ~BV(MOTOR_3_REVERSE_DATA_PIN);
        }
        // In counter-clockwise end: change direction
        else if(!clockwiseEnd && counterClockwiseEnd) {
            MOTOR_3_FORWARD_DATA &= ~BV(MOTOR_3_FORWARD_DATA_PIN);
            MOTOR_3_REVERSE_DATA |= BV(MOTOR_3_REVERSE_DATA_PIN);
        }
        // Should not happen: stop motor
        else if (clockwiseEnd && counterClockwiseEnd) {
            MOTOR_3_FORWARD_DATA &= ~BV(MOTOR_3_FORWARD_DATA_PIN);
            MOTOR_3_REVERSE_DATA &= ~BV(MOTOR_3_REVERSE_DATA_PIN);
        }
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

    initializeMotors();

    while (true) {
        if (indicatorCounter % INDICATOR_HALF_PERIOD == 0) {
            toggleIndicator();
        }
        indicatorCounter++;

        bool switchState[6];
        readSwitches(switchState);

        controlMotor1(switchState[0], switchState[3]);
        controlMotor2(switchState[1], switchState[4]);
        controlMotor3(switchState[2], switchState[5]);

        _delay_ms(LOOP_DELAY);
    }

}
