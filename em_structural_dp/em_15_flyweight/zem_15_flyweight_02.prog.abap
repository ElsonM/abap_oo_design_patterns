*&---------------------------------------------------------------------*
*& Report ZEM_15_FLYWEIGHT_01
*&---------------------------------------------------------------------*
*& Client program (02) for Flyweight Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_15_flyweight_02.

TYPES:
  BEGIN OF t_obj,
    index TYPE i,
    obj   TYPE REF TO zcl_stock_flyweight,
  END OF t_obj,
  tt_obj TYPE STANDARD TABLE OF t_obj WITH DEFAULT KEY,

  BEGIN OF t_file,
    date   TYPE sy-datum,
    matnr  TYPE matnr,
    amount TYPE kwmeng,
  END OF t_file,
  tt_file TYPE STANDARD TABLE OF t_file WITH DEFAULT KEY.

DATA gt_obj TYPE tt_obj.
DATA gt_file TYPE tt_file.

PERFORM upload_file.

LOOP AT gt_file ASSIGNING FIELD-SYMBOL(<ls_file>).
  APPEND VALUE #( index = sy-tabix ) TO gt_obj
    ASSIGNING FIELD-SYMBOL(<ls_obj>).

  <ls_obj>-obj = NEW #(
    iv_matnr = <ls_file>-matnr
    iv_date  = <ls_file>-date ).

  "If this is the first instance, set start stock from MARD
  "Else, set start stock from previous day
  <ls_obj>-obj->consume_stock( <ls_file>-amount ).
ENDLOOP.

*&---------------------------------------------------------------------*
*& Form upload_file
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM upload_file .

ENDFORM.
