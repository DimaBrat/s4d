*&---------------------------------------------------------------------*
*& Report z10_aufgabe_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_10.

DATA connection TYPE spfli.
DATA connections TYPE TABLE OF spfli.


PARAMETERS id TYPE s_carr_id.

SELECT FROM spfli
  FIELDS *
  WHERE airpfrom = 'FRA'
  INTO TABLE @connections.
IF sy-subrc <> 0.
  MESSAGE 'No Connection Found' TYPE 'E'.
ENDIF.


CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    i_structure_name = 'SPFLI'
  TABLES
    t_outtab         = connections.
