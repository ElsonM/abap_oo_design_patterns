class ZCL_SALES_FAC definition
  public
  final
  create public .

public section.

  types:
    BEGIN OF TY_SALES,
      field1 TYPE char10,
      field2 TYPE char10,
      field3 TYPE char10,
      field4 TYPE char10,
      field5 TYPE char10,
    END OF ty_sales .
  types:
    tt_sales TYPE STANDARD TABLE OF ty_sales WITH DEFAULT KEY .

  methods READ_ANNUAL_VALUES .
  methods EXCLUDE_CLIENTS
    importing
      !IT_BLOCKED type ZCL_CLIENT_FAC=>TT_BLOCKED .
  methods GET_ANNUAL_VALUES
    returning
      value(RESULT) type TT_SALES .
protected section.
private section.

  data MT_ANNUAL_SALES type TT_SALES .
ENDCLASS.



CLASS ZCL_SALES_FAC IMPLEMENTATION.


  METHOD exclude_clients.

    "Code to modify content of internal table MT_ANNUAL_SALES

  ENDMETHOD.


  method GET_ANNUAL_VALUES.

    result = mt_annual_sales.

  endmethod.


  method READ_ANNUAL_VALUES.

    "Code to fill internal table MT_ANNUAL_SALES

  endmethod.
ENDCLASS.
