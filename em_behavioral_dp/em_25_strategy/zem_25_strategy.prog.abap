*&---------------------------------------------------------------------*
*& Report ZEM_25_STRATEGY
*&---------------------------------------------------------------------*
*& Client program for Strategy Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_25_strategy.

PARAMETERS:
  p_system TYPE seoclsname OBLIGATORY.

START-OF-SELECTION.
  PERFORM main.

*&---------------------------------------------------------------------*
*& Form MAIN
*&---------------------------------------------------------------------*
FORM main.

  DATA:
    lo_obj TYPE REF TO object,
    lo_sender TYPE REF TO zif_mat_sender,
    lt_mara TYPE zif_mat_sender=>tt_mara.

  SELECT matnr matkl meins
    INTO TABLE lt_mara
    FROM mara.

  CREATE OBJECT lo_obj TYPE (p_system).
  lo_sender ?= lo_obj.
  lo_sender->send_material( lt_mara ).

ENDFORM.
