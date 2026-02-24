INTERFACE zif_lgort
  PUBLIC.

  TYPES:
    BEGIN OF t_stock,
      matnr  TYPE matnr,
      amount TYPE menge_d,
    END OF t_stock,

    tt_stock TYPE HASHED TABLE OF t_stock
      WITH UNIQUE KEY primary_key COMPONENTS matnr.

  METHODS move_stock
    IMPORTING
      !iv_target TYPE lgort_d
      !is_stock  TYPE t_stock
    RAISING
      zcx_insufficient_stock.

  METHODS add_to_stock IMPORTING !is_stock TYPE t_stock.

  METHODS get_stock_for_material
    IMPORTING
      !iv_matnr     TYPE matnr
    RETURNING
      VALUE(result) TYPE menge_d.

  METHODS get_all_stocks
    RETURNING
      VALUE(result) TYPE tt_stock.

ENDINTERFACE.
