*&---------------------------------------------------------------------*
*& Report z10_demo_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_demo_08.

DATA connections_1 TYPE z10_connections.
DATA connections_2 TYPE TABLE OF z10_connections.

connections_1 = value #(
    ( carrier_id = 'LH' connection_id = '0040' )
    ( carrier_id = 'LH' connection_id = '0040' departure_city = 'Moscow' )
    ( carrier_id = 'LH' arrival_city = 'Berlin' ) ).

connections_1 = VALUE #( BASE connections_1 ( carrier_id = 'AA' connection_id = '0017' arrival_city = 'Bali' ) ).

APPEND VALUE #( connection_id = '0034' ) TO connections_1.

DATA connection TYPE z10_connection.
connection-arrival_city = 'Madrid'.

APPEND connection TO connections_1.
connections_1 = VALUE #( BASE connections_1 ( connection ) ).

connection = connections_1[ 1 ].
connection = connections_1[ carrier_id = 'AA' ].

IF line_exists( connections_1[ 1 ] ).
    connection = connections_1[ 1 ].
ENDIF.

**********************************************************************
* for
**********************************************************************

DATA connection_r TYPE ref to z10_connection.

LOOP AT connections_1 INTO connection WHERE carrier_id = 'LN'. "AND arrival_city IS NOT INITIAL
    WRITE: sy-tabix, connection.
ENDLOOP.

SORT connections_1 BY carrier_id DESCENDING connection_id ASCENDING departure_city DESCENDING.
delete connections_1 INDEX 4.

WRITE / lines( connections_1 ).
