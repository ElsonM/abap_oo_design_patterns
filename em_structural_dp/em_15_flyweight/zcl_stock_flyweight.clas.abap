class ZCL_STOCK_FLYWEIGHT definition
  public
  final
  create public .

public section.

  data MATERIAL type ref to ZIF_MATERIAL read-only .
  data DATE type DATS read-only .

  methods CONSTRUCTOR
    importing
      !IV_MATNR type MATNR
      !IV_DATE type DATS .
  methods SET_START_STOCK
    importing
      !IV_AMOUNT type KWMENG .
  methods CONSUME_STOCK
    importing
      !IV_AMOUNT type KWMENG .
  methods GET_FORECAST_STOCK
    returning
      value(RESULT) type KWMENG .
protected section.
private section.

  data AMOUNT type KWMENG .
ENDCLASS.



CLASS ZCL_STOCK_FLYWEIGHT IMPLEMENTATION.


  METHOD constructor.

    material = zcl_mat_factory=>get_material( iv_matnr ).
    date = iv_date.

  ENDMETHOD.


  method CONSUME_STOCK.

    amount -= iv_amount.

  endmethod.


  method GET_FORECAST_STOCK.

    result = amount.

  endmethod.


  method SET_START_STOCK.

    amount = iv_amount.

  endmethod.
ENDCLASS.
