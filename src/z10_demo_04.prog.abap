*&---------------------------------------------------------------------*
*& Report z10_demo_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_demo_04.

PARAMETERS cid_1 TYPE s_carr_id.

PARAMETERS p_check AS CHECKBOX.
PARAMETERS p_rad_1 RADIOBUTTON GROUP opts.
PARAMETERS p_rad_2 RADIOBUTTON GROUP opts.
PARAMETERS p_rad_3 RADIOBUTTON GROUP opts.

INITIALIZATION.
    IF sy-langu = 'E'.
        p_check = abap_true.
    ENDIF.

AT SELECTION-SCREEN ON p_check.
    IF p_check = 'X'.
        message e000(z10) WITH sy-uname.
    ENDIF.

START-OF-SELECTION.
    CASE abap_true.
        WHEN p_rad_1.
            WRITE 'RadioButton 1'.
        WHEN p_rad_2.
            WRITE 'RadioButton 2'.
        WHEN p_rad_3.
            WRITE 'RadioButton 3'.
    ENDCASE.
