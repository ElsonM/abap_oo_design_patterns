*&---------------------------------------------------------------------*
*& Report ZEM_14_FACADE_02
*&---------------------------------------------------------------------*
*& Client program (02) for Facade Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_14_facade_02.

CLASS lcl_main DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS display_alv
      IMPORTING
        it_bonus TYPE zcl_bonus_fac=>tt_bonus.
ENDCLASS.

CLASS lcl_main IMPLEMENTATION.
  METHOD display_alv.
    "Code to display data
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(lt_bonus) = NEW zcl_facade( )->get_annual_bonus( ).

  lcl_main=>display_alv( lt_bonus ).
