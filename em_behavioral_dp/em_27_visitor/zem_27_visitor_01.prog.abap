*&---------------------------------------------------------------------*
*& Report ZEM_27_VISITOR
*&---------------------------------------------------------------------*
*& Client program for Visitor Design Pattern - ZCL_FILE_DEL
*&---------------------------------------------------------------------*
REPORT zem_27_visitor_01.

DATA:
  lo_deleter TYPE REF TO zcl_file_del,
  lo_model   TYPE REF TO zcl_model_visitor,
  lo_visitor TYPE REF TO zif_visitor.

lo_model = NEW #( '1200000015' ). "Imaginary invoice number

lo_deleter = NEW #( ).
lo_visitor ?= lo_deleter.

lo_model->accept( lo_visitor ). "Will delete stored files
