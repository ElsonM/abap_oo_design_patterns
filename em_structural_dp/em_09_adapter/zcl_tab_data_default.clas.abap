class ZCL_TAB_DATA_DEFAULT definition
  public
  final
  create public .

public section.

  interfaces ZIF_TAB_DATA_PROVIDER .
protected section.
private section.
ENDCLASS.



CLASS ZCL_TAB_DATA_DEFAULT IMPLEMENTATION.


  method ZIF_TAB_DATA_PROVIDER~GET_TAB_DATA.

    " Produce tab-delimited data with values in IS_PARAM
    " Return result table

  endmethod.
ENDCLASS.
