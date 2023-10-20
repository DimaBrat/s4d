*&---------------------------------------------------------------------*
*& Report z10_aufgabe_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_07.

PARAMETERS FG TYPE s_carr_id.
PARAMETERS VN TYPE s_conn_id.
PARAMETERS FD TYPE s_date.
PARAMETERS BN TYPE s_book_id.

WRITE ZCL_10_HELPER=>GET_BOOKING_WITH_CUSTOMER( P_CARRIER_ID = FG P_CONNECTION_ID = VN P_FLIGHT_DATE = FD P_BOOKING_ID = BN ).
