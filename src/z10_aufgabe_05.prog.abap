*&---------------------------------------------------------------------*
*& Report z10_aufgabe_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_05.

TRY.
    DATA(result) = ZCL_10_CALCULATOR=>calculate_percentage( prozent = 5 number = 4 ).
  CATCH cx_sy_zerodivide into data(e).
    WRITE / e->get_text( ).
ENDTRY.

WRITE result.

TRY.
    DATA(result_power) = ZCL_10_CALCULATOR=>calculate_power( number = 5 exponent = 2 ).
  CATCH cx_sy_zerodivide into data(c).
    WRITE / c->get_text( ).
ENDTRY.

WRITE result_power.
