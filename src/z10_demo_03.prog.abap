*&---------------------------------------------------------------------*
*& Report z10_demo_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_demo_03.

DATA result_i TYPE i.
DATA result_p TYPE p LENGTH 9 DECIMALS 4.

result_i = 5 + 3.
WRITE: / |5 + 3 = { result_i }|.

result_i = 5 / 3.
WRITE: / |5 / 3 = { result_i }|.

result_p = 5 / 3.
WRITE: / |5 / 3 = { result_P }|.

result_i = 5 DIV 2.
WRITE: / |5 DIV 2 = { result_i }|.

result_i = 5 MOD 3.
WRITE: / |5 DIV 3 = { result_i }|.

result_i = 5 ** 3.
WRITE: / |5 ** 3 = { result_i }|.

**********************************************************************
* Zuweisungsoperatoren
**********************************************************************

result_i = result_i + 1.
result_i += result_i.
ADD 1 TO result_i.



**********************************************************************
* Numerische Function
**********************************************************************

result_i = abs( 3 ).
