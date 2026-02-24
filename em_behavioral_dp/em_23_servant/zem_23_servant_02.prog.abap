*&---------------------------------------------------------------------*
*& Report ZEM_23_SERVANT_02
*&---------------------------------------------------------------------*
*& Client program for Servant Design Pattern (02) - Vendor
*&---------------------------------------------------------------------*
REPORT zem_23_servant_02.

DATA go_resident TYPE REF TO zif_resident.
DATA gv_lifnr TYPE lifnr.

START-OF-SELECTION.
  DATA(go_vendor) = NEW zcl_vendor_servant( gv_lifnr ).
  go_resident ?= go_vendor.

  DATA(go_servant) = NEW zcl_address_servant( go_resident ).
  DATA(gv_address) = go_servant->build_medium_address( ).
