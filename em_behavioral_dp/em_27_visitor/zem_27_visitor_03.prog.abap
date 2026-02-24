*&---------------------------------------------------------------------*
*& Report ZEM_27_VISITOR
*&---------------------------------------------------------------------*
*& Client program for Visitor Design Pattern - ZCL_SAVELOG
*&---------------------------------------------------------------------*
REPORT zem_27_visitor_03.

DATA:
  lo_savelog TYPE REF TO zcl_savelog,
  lo_model   TYPE REF TO zcl_model_visitor,
  lo_visitor TYPE REF TO zif_visitor.

lo_model = NEW #( '1200000015' ). "Imaginary invoice number

lo_savelog = NEW #( ).
lo_visitor ?= lo_savelog.

lo_model->accept( lo_visitor ). "Will save WF log into Z-table
