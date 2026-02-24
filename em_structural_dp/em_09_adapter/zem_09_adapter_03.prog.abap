*&---------------------------------------------------------------------*
*& Report ZEM_09_ADAPTER_03
*&---------------------------------------------------------------------*
*& Client program (03) for the Adapter Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_09_adapter_03.

  "Some data definitions

  PARAMETERS p_cls TYPE seoclsname OBLIGATORY.

  "Maybe additional selection screen parameters

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

  DATA:
    lo_obj TYPE REF TO object,
    lo_ps TYPE REF TO zcl_ps.

  DATA: ls_proj TYPE zst_proj,
        lt_wbs TYPE TABLE OF zst_wbs WITH DEFAULT KEY,
        lt_activity TYPE TABLE OF zst_activity WITH DEFAULT KEY.

  "Some code to get PS data, possibly from a screen or CSV file

  CREATE OBJECT lo_obj TYPE (p_cls).
  lo_ps ?= lo_obj.

  lo_ps->create_project( ls_proj ).

  LOOP AT lt_wbs ASSIGNING FIELD-SYMBOL(<fs_wbs>).
    lo_ps->create_wbs( <fs_wbs> ).
  ENDLOOP.

  LOOP AT lt_activity ASSIGNING FIELD-SYMBOL(<fs_activity>).
    lo_ps->create_activity( <fs_activity> ).
  ENDLOOP.

  "Some code to display results to user

ENDFORM.
