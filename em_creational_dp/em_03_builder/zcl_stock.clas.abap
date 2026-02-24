class ZCL_STOCK definition
  public
  final
  create public .

public section.

  interfaces ZIF_READER .
protected section.
private section.

  data MT_STOCK type ZTT_STOCK .

  methods READ_STOCK_DATA .
ENDCLASS.



CLASS ZCL_STOCK IMPLEMENTATION.


  METHOD read_stock_data.

    WRITE: / 'Reading stock data...'.

  ENDMETHOD.


  METHOD zif_reader~get_data.

    read_stock_data( ).  "Fills mt_stock
    result = REF #( mt_stock ).

  ENDMETHOD.
ENDCLASS.
