*&---------------------------------------------------------------------*
*& Report z10_main_airplanes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_main_airplanes.
DATA flight TYPE REF TO zcl_10_airplane.
DATA flightes TYPE TABLE OF REF TO zcl_10_airplane.

WRITE zcl_10_airplane=>number_of_airplanes.

TRY.
    flight = NEW zcl_10_airplane( name = 'Name 1' plane_type = 'Type 1' ).
    APPEND flight TO flightes.
  CATCH zcx_abap_initial_parameter INTO DATA(e).
    WRITE e->get_text( ).
ENDTRY.

WRITE zcl_10_airplane=>number_of_airplanes.



TRY.
    flight = NEW zcl_10_airplane( name = 'Name 2' plane_type = 'Type 2' ).
    APPEND flight TO flightes.
  CATCH zcx_abap_initial_parameter INTO e.
    WRITE e->get_text( ).
ENDTRY.

WRITE zcl_10_airplane=>number_of_airplanes.

WRITE zcl_10_airplane=>number_of_airplanes.

LOOP AT flightes INTO flight.
    WRITE / flight->to_string(  ).
ENDLOOP.
