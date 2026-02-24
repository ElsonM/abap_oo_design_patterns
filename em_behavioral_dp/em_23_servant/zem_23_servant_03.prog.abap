*&---------------------------------------------------------------------*
*& Report ZEM_23_SERVANT_03
*&---------------------------------------------------------------------*
*& Client program for Servant Design Pattern (03) - User
*&---------------------------------------------------------------------*
REPORT zem_23_servant_03.

DATA go_resident TYPE REF TO zif_resident.
DATA gv_bname TYPE bname.

START-OF-SELECTION.
  DATA(go_user) = NEW zcl_user_servant( gv_bname ).
  go_resident ?= go_user.

  DATA(go_servant) = NEW zcl_address_servant( go_resident ).
  DATA(gv_address) = go_servant->build_medium_address( ).
