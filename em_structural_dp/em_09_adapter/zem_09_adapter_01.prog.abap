*&---------------------------------------------------------------------*
*& Report ZEM_09_ADAPTER
*&---------------------------------------------------------------------*
*& Client program (01) for the Adapter Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_09_adapter_01.

  "Some data definitions
  "Maybe a selection screen

  PERFORM main.

*&---------------------------------------------------------------------*
*& Form main
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM main.

  DATA: ls_proj TYPE zst_proj,
        lt_wbs TYPE TABLE OF zst_wbs WITH DEFAULT KEY,
        lt_activity TYPE TABLE OF zst_activity WITH DEFAULT KEY.

  "Some code to get PS data, possibly from a screen or CSV file

  DATA(lo_ps) = NEW zcl_ps( ).

  lo_ps->create_project( ls_proj ).

  LOOP AT lt_wbs ASSIGNING FIELD-SYMBOL(<fs_wbs>).
    lo_ps->create_wbs( <fs_wbs> ).
  ENDLOOP.

  LOOP AT lt_activity ASSIGNING FIELD-SYMBOL(<fs_activity>).
    lo_ps->create_activity( <fs_activity> ).
  ENDLOOP.

  "Some code to display results to user

ENDFORM.
