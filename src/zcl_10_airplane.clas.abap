CLASS zcl_10_airplane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA name TYPE string.
    DATA plane_type TYPE string.

    CLASS-DATA number_of_airplanes TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        name TYPE string
        plane_type TYPE string "public Vehicle(String make, String model)
      RAISING
        zcx_10_inital_parameter.

    METHODS to_string
        RETURNING VALUE(string) TYPE string.

    METHODS get_number_of_planes
        RETURNING VALUE(string) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_airplane IMPLEMENTATION.
    METHOD constructor. "this.make = make; this.model = model;

        IF name IS INITIAL.
          RAISE EXCEPTION TYPE zcx_abap_initial_parameter
            EXPORTING
              parameter = 'NAME'.
        ENDIF.

        IF plane_type IS INITIAL.
          RAISE EXCEPTION TYPE zcx_abap_initial_parameter
            EXPORTING
              parameter = 'PLANE'.
        ENDIF.


        me->name = name.
        me->plane_type = plane_type.
        number_of_airplanes += 1.
      ENDMETHOD.

    METHOD to_string.
        string = |Vehicle: { name } { plane_type }|.
    ENDMETHOD.

    METHOD get_number_of_planes.
        string = |Number: { number_of_airplanes }|.
    ENDMETHOD.
ENDCLASS.
