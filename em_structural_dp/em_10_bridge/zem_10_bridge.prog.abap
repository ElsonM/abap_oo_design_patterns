*&---------------------------------------------------------------------*
*& Report ZEM_10_BRIDGE
*&---------------------------------------------------------------------*
*& Client program for the Bridge Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_10_bridge.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_contcl TYPE seoclsname OBLIGATORY,
              p_messcl TYPE seoclsname OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_rec  TYPE char10 OBLIGATORY,
              p_mess TYPE string OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b2.

DATA:
  gr_obj  TYPE REF TO object,
  gr_cont TYPE REF TO zif_contact,
  gr_mess TYPE REF TO zcl_message.

START-OF-SELECTION.
  CREATE OBJECT gr_obj TYPE (p_contcl). "Create contact class
  gr_cont ?= gr_obj.

  DATA(parameters) = VALUE abap_parmbind_tab(
    ( name = 'IR_CONTACT_TYPE' value = REF #( gr_cont ) ) ) .

  CREATE OBJECT gr_obj TYPE (p_messcl) PARAMETER-TABLE parameters.
  gr_mess ?= gr_obj.

  gr_mess->send_msg(
    iv_recipient = p_rec
    iv_message   = p_mess ).
