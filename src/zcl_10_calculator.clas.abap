CLASS zcl_10_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS divide
        IMPORTING
            value1 TYPE z10_decimal
            value2 TYPE z10_decimal
        RETURNING VALUE(result) TYPE z10_decimal
        RAISING cx_sy_zerodivide.
        " public static double divide(double value1,double value2) "
    CLASS-METHODS calculate_percentage
        IMPORTING
            prozent TYPE z10_decimal
            number TYPE z10_decimal
        RETURNING VALUE(result) TYPE z10_decimal
        RAISING cx_sy_zerodivide.
    CLASS-METHODS calculate_power
        IMPORTING
            number TYPE z10_decimal
            exponent TYPE z10_decimal
        RETURNING VALUE(result) TYPE z10_decimal
        RAISING cx_sy_zerodivide.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_calculator IMPLEMENTATION.
   METHOD divide.
    result = value1 * value2.
   ENDMETHOD.

   METHOD calculate_percentage.
    result = prozent / 100 * number.
   ENDMETHOD.

   METHOD calculate_power.
    IF exponent < 0.
        DATA one TYPE z10_decimal.
        one = 1.
        result = 1 / ( number ** exponent ).
    ELSE.
        result = number ** exponent.
    ENDIF.
   ENDMETHOD.
   " return value1, value2 "
ENDCLASS.
