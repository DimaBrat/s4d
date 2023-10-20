*&---------------------------------------------------------------------*
*& Report z10_aufgabe_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_aufgabe_02.

PARAMETERS id TYPE c LENGTH 2.
PARAMETERS erName TYPE string.
PARAMETERS ltName TYPE string.
PARAMETERS stadt TYPE string.
PARAMETERS land TYPE s_carr_id.

write: id NO-GAP, ',', erName NO-GAP, ',', ltName NO-GAP, ',', stadt, '(' NO-GAP, land NO-GAP, ')' NO-GAP.
