*&---------------------------------------------------------------------*
*& Report z10_aufgabe_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_06.

DATA customer_data TYPE zabap_customer.
PARAMETERS cust_id TYPE s_customer.
customer_data = ZCL_ABAP_HELPER=>GET_CUSTOMER( CUSTOMER_ID = cust_id ).

WRITE customer_data.
