*&---------------------------------------------------------------------*
*& Report ZEM_27_VISITOR
*&---------------------------------------------------------------------*
*& Client program for Visitor Design Pattern - ZCL_POST_FI
*&---------------------------------------------------------------------*
REPORT zem_27_visitor_02.

DATA:
  lo_post_fi TYPE REF TO zcl_post_fi,
  lo_model   TYPE REF TO zcl_model_visitor,
  lo_visitor TYPE REF TO zif_visitor.

lo_model = NEW #( '1200000015' ). "Imaginary invoice number

lo_post_fi = NEW #( ).
lo_visitor ?= lo_post_fi.

lo_model->accept( lo_visitor ). "Will post an FI document
