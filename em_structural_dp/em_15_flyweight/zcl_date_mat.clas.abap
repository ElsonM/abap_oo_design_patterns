class ZCL_DATE_MAT definition
  public
  final
  create public .

public section.

  data DATE type SY-DATUM .
  data MATNR type MATNR .
  data MAKTX type MAKTX .

  methods CONSTRUCTOR
    importing
      !IV_DATE type SY-DATUM
      !IV_MATNR type MATNR .
  methods SET_START_STOCK .
  methods CONSUME_STOCK
    importing
      !IV_AMOUNT type KWMENG .
  methods GET_FORECAST_STOCK .
  PROTECTED SECTION.
private section.

  data MENGE type KWMENG .
  data MEINS type VRKME .
ENDCLASS.



CLASS ZCL_DATE_MAT IMPLEMENTATION.


  METHOD constructor.
  ENDMETHOD.


  METHOD consume_stock.
  ENDMETHOD.


  METHOD get_forecast_stock.
  ENDMETHOD.


  METHOD set_start_stock.
  ENDMETHOD.
ENDCLASS.
