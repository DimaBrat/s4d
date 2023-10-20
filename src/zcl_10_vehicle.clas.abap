CLASS zcl_10_vehicle DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA make TYPE string READ-ONLY.
    DATA model TYPE string READ-ONLY.

    METHODS constructor
      IMPORTING
        make TYPE string
        model TYPE string. "public Vehicle(String make, String model)

    METHODS to_string
      RETURNING VALUE(string) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_10_vehicle IMPLEMENTATION.

  METHOD constructor. "this.make = make; this.model = model;
    me->make = make.
    me->model = model.
  ENDMETHOD.

  METHOD to_string.
    string = |Vehicle: { make } { model }|.
  ENDMETHOD.

ENDCLASS.
