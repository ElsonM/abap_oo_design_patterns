*&---------------------------------------------------------------------*
*& Report ZEM_23_SERVANT_01
*&---------------------------------------------------------------------*
*& Client program for Servant Design Pattern (01) - Customer
*&---------------------------------------------------------------------*
REPORT zem_23_servant_01.

DATA go_resident TYPE REF TO zif_resident.
DATA gv_kunnr TYPE kunnr.

START-OF-SELECTION.
  DATA(go_customer) = NEW zcl_customer_servant( gv_kunnr ).
  go_resident ?= go_customer.

  DATA(go_servant) = NEW zcl_address_servant( go_resident ).
  DATA(gv_address) = go_servant->build_medium_address( ).
