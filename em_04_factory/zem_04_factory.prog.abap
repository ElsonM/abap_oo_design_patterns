*&---------------------------------------------------------------------*
*& Report ZEM_04_FACTORY
*&---------------------------------------------------------------------*
*& Client program for the Factory Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_04_factory.

"Some data definitions

PARAMETERS p_label TYPE ztab_label-cls_label OBLIGATORY.
"Some additional select options

START-OF-SELECTION.
  DATA(party) = zcl_factory=>get_party_instance( p_label ).

  "Main logic of the program using party
