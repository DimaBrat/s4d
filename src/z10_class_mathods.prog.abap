*&---------------------------------------------------------------------*
*& Report z10_class_mathods
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_class_mathods.

TRY.
    DATA(result) = ZCL_10_CALCULATOR=>divide( value1 = 5 value2 = 4 ).
  CATCH cx_sy_zerodivide into data(e).
    WRITE / e->get_text( ).
ENDTRY.
" rry
"   var result = Calculator.divide(5, 3) "
" catch (ZeroDivideException)
WRITE result.
