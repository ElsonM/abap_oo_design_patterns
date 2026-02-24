class ZCL_SALES definition
  public
  final
  create public .

public section.

  interfaces ZIF_READER .
protected section.
private section.

  data MT_SALES type ZTT_SALES .

  methods READ_SALES_DATA .
ENDCLASS.



CLASS ZCL_SALES IMPLEMENTATION.


  METHOD read_sales_data.

    WRITE: / 'Reading sales data...'.

  ENDMETHOD.


  METHOD zif_reader~get_data.

    read_sales_data( ). "Fills mt_sales
    result = REF #( mt_sales ).

  ENDMETHOD.
ENDCLASS.
