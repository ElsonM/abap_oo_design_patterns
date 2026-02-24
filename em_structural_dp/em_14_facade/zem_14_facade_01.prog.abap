*&---------------------------------------------------------------------*
*& Report ZEM_14_FACADE_01
*&---------------------------------------------------------------------*
*& Client program (01) for Facade Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_14_facade_01.

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
  DATA(lo_sales) = NEW zcl_sales_fac( ).
  lo_sales->read_annual_values( ).

  DATA(lt_blocked_clients) = NEW zcl_client_fac( )->get_block_list( ).
  lo_sales->exclude_clients( lt_blocked_clients ).

  DATA(lt_annual_sales) = lo_sales->get_annual_values( ).
  DATA(lt_bonus) = NEW zcl_bonus_fac( )->calc_annual_bonus( lt_annual_sales ).

  lcl_main=>display_alv( lt_bonus ).
