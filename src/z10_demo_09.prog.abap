*&---------------------------------------------------------------------*
*& Report z10_demo_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_demo_09.

DATA carriers TYPE TABLE OF s_carr_id.

carriers = VALUE #( ( 'UA' ) ( 'DM' ) ).

IF line_exists( carriers[ table_line = 'UA' ] ).
    WRITE 'existiert'.
ENDIF.

DATA(text) = 'A;B;C'.

SPLIT text AT ';' INTO TABLE DATA(letters).
