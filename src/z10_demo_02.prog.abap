*&---------------------------------------------------------------------*
*& Report z10_demo_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_demo_02.

**********************************************************************
* ABAT Standarttypen
**********************************************************************

TYPES ty_i TYPE i. "Ganze Zahl (Bsp. 42)
TYPES ty_c40 TYPE c LENGTH 40. "Zeichenkeite fäster länger (Bsp. 'Hello World')
TYPES ty_n7 TYPE n LENGTH 7. "Nummerische Folge (z.B. '5461239')
TYPES ty_d TYPE d. "Datum (z.B. 20230112)
TYPES ty_t TYPE t. "Time (z.B. '102304')
TYPES ty_p162 TYPE p LENGTH 16 DECIMALS 2. "Kommazahl als Float (z.B. '517.23')
TYPES ty_boolean TYPE c LENGTH 1. "'Boolscher Wahrheitswelt' (z.B. 'X')

**********************************************************************
* Gepackte Zahl
**********************************************************************
* TYPES ty_p162 TYPE p LENGTH 16 DECIMALS 2.
* Länge in Byte: Length -> 16
* Anzahl ziffern: 2 * LANGTH - 1 -> 31
* Nachkommastellen: DECIMALS -> 2
* Vorkommastellen: Ziffern - DECIMAlS = 29

Data matriculation_number TYPE ty_n7 VALUE '5461239'. "lokalem Datentyp
Data decimal TYPE p LENGTH 8 DECIMALS 3. "ABAP Standardtyp
Data carrier_id TYPE s_carr_id. "Datenelement (globalem Datentyp)
Data i TYPE ty_i.
Data c TYPE ty_c40.
DATA connection_id TYPE s_conn_id VALUE '0040'.
DATA(text) = 'Hello World'.


write: matriculation_number, connection_id, text.

**********************************************************************
* Initialisierung
**********************************************************************

CLEAR text.
connection_id = '0000'.

**********************************************************************
* Deklaration fixer Datenobjekte
**********************************************************************

CONSTANTS pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.

write: pi.

**********************************************************************
* Deklaration von Eingabeparameter
**********************************************************************
PARAMETERS p_cid_1 TYPE c LENGTH 3.
PARAMETERS p_cid_2 TYPE s_carr_id.

write: p_cid_1, p_cid_2.
