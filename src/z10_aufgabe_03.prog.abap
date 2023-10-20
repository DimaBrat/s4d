*&---------------------------------------------------------------------*
*& Report z10_aufgabe_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_03.

PARAMETERS number_1 TYPE p LENGTH 16 DECIMALS 2 OBLIGATORY.
PARAMETERS operator TYPE c LENGTH 1 OBLIGATORY.
PARAMETERS number_2 TYPE p LENGTH 16 DECIMALS 2 OBLIGATORY.

AT SELECTION-SCREEN.
    IF ( number_1 = 0 OR number_2 = 0 ) AND operator = '/'.
        MESSAGE e001(z10).
    ELSEIF operator <> '/' AND  operator <> '*' AND operator <> '-' AND operator <> '+' AND operator <> '%' AND operator <> '^'.
        MESSAGE e002(z10).
    ENDIF.
START-OF-SELECTION.
    IF ( number_1 = 0 OR number_2 = 0 ) AND operator = '/'.
        MESSAGE e001(z10).
    ELSEIF operator = '/'.
        WRITE / |{ number_1 } { operator } { number_2 } = { number_1 / number_2 }|.
    ELSEIF operator = '*'.
        WRITE / |{ number_1 } { operator } { number_2 } = { number_1 * number_2 }|.
    ELSEIF operator = '+'.
        WRITE / |{ number_1 } { operator } { number_2 } = { number_1 + number_2 }|.
    ELSEIF operator = '-'.
        WRITE / |{ number_1 } { operator } { number_2 } = { number_1 - number_2 }|.
    ELSEIF operator = '%'.
        TRY.
            DATA(result) = ZCL_10_CALCULATOR=>calculate_percentage( prozent = number_1 number = number_2 ).
          CATCH cx_sy_zerodivide into data(e).
            WRITE / e->get_text( ).
        ENDTRY.
        WRITE / |{ number_1 } { operator } von { number_2 } = { result }|.
    ELSEIF operator = '^'.
        TRY.
            DATA(result_power) = ZCL_10_CALCULATOR=>calculate_power( number = number_1 exponent = number_2 ).
          CATCH cx_sy_zerodivide into data(c).
            WRITE / c->get_text( ).
        ENDTRY.
        WRITE / |{ number_1 } { operator } { number_2 } = { result_power }|.
    ELSE.
        MESSAGE e002(z10).
    ENDIF.
