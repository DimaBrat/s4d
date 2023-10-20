CLASS zcl_10_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS GET_BOOKING_WITH_CUSTOMER
        IMPORTING
            P_CARRIER_ID TYPE S_CARR_ID
            P_CONNECTION_ID TYPE S_CONN_ID
            P_FLIGHT_DATE TYPE S_DATE
            P_BOOKING_ID TYPE S_BOOK_ID
        RETURNING VALUE(booking_with_customer) TYPE zabap_booking_with_customer
        RAISING zcx_no_booking_found
                zcx_no_customer_found.
     CLASS-METHODS GET_BOOKING
      IMPORTING carrier_id                   TYPE s_carr_id
                connection_id                TYPE s_conn_id
                flight_date                  TYPE s_date
                booking_id                   TYPE s_book_id
      RETURNING VALUE(booking) TYPE zabap_booking
      RAISING   zcx_no_booking_found.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_helper IMPLEMENTATION.
    METHOD GET_BOOKING_WITH_CUSTOMER.
        DATA customer_data TYPE zabap_customer.
        booking_with_customer = CORRESPONDING #( ZCL_ABAP_HELPER=>GET_BOOKING( CARRIER_ID = P_CARRIER_ID CONNECTION_ID = P_CONNECTION_ID FLIGHT_DATE = P_FLIGHT_DATE BOOKING_ID = P_BOOKING_ID ) ).
        customer_data = ZCL_ABAP_HELPER=>GET_CUSTOMER( CUSTOMER_ID = 1 ).
        WRITE customer_data.
    ENDMETHOD.

    METHOD GET_BOOKING.
        DATA(booking_info) = zcl_abap_helper=>get_booking( carrier_id    = carrier_id
                                                      connection_id = connection_id
                                                      flight_date   = flight_date
                                                      booking_id    = booking_id ).
        booking = CORRESPONDING #( booking_info ).
      ENDMETHOD.

ENDCLASS.
