CLASS zcl_lgort DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lgort .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mt_stock TYPE zif_lgort=>tt_stock .

    METHODS remove_from_stock
      IMPORTING
        !is_stock TYPE zif_lgort=>t_stock
      RAISING
        zcx_insufficient_stock .
ENDCLASS.



CLASS ZCL_LGORT IMPLEMENTATION.


  METHOD remove_from_stock.

    DATA(current_stock) = zif_lgort~get_stock_for_material( is_stock-matnr ).
    IF current_stock < is_stock-amount.
      RAISE EXCEPTION TYPE zcx_insufficient_stock.
    ENDIF.

    DATA(ls_stock) = VALUE zif_lgort=>t_stock(
      matnr = is_stock-matnr amount = is_stock-amount * -1 ).
    COLLECT ls_stock INTO mt_stock.

  ENDMETHOD.


  METHOD zif_lgort~add_to_stock.

    COLLECT is_stock INTO mt_stock.

  ENDMETHOD.


  METHOD zif_lgort~get_all_stocks.

    result = mt_stock.

  ENDMETHOD.


  METHOD zif_lgort~get_stock_for_material.

    TRY.
        result = mt_stock[ KEY primary_key
          COMPONENTS matnr = iv_matnr ]-amount.
      CATCH cx_sy_itab_line_not_found ##NO_HANDLER.
    ENDTRY.

  ENDMETHOD.


  METHOD zif_lgort~move_stock.

    remove_from_stock( is_stock ).

    DATA(lo_mediator) = zcl_mediator=>get_instance_singleton( ).

    lo_mediator->send_stock(
      iv_target = iv_target
      is_stock  = is_stock ).

  ENDMETHOD.
ENDCLASS.
