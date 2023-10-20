CLASS zcl_10_car DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC

  INHERITING FROM zcl_10_vehicle.

  PUBLIC SECTION.
    DATA number_of_seats TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        make TYPE string
        model TYPE string
        number_of_seats TYPE i
      RAISING
        zcx_10_inital_parameter.
    METHODS to_string REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_car IMPLEMENTATION.
    METHOD constructor.
        super->constructor( make = make model = model ).
        me->number_of_seats = number_of_seats.
    ENDMETHOD.

    METHOD to_string.
        me->make = 'x'.
        string = | { make } { model } { number_of_seats } |.
    ENDMETHOD.
ENDCLASS.
