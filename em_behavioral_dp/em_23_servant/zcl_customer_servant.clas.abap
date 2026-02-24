class ZCL_CUSTOMER_SERVANT definition
  public
  final
  create public

  global friends ZIF_RESIDENT .

public section.

  interfaces ZIF_RESIDENT .

  methods CONSTRUCTOR
    importing
      !IV_KUNNR type KUNNR .
protected section.
private section.

  data MV_KUNNR type KUNNR .
ENDCLASS.



CLASS ZCL_CUSTOMER_SERVANT IMPLEMENTATION.


  METHOD constructor.

    mv_kunnr = iv_kunnr.

  ENDMETHOD.


  method ZIF_RESIDENT~GET_RAW_ADDRESS_DATA.

    "Reads KNA1, ADR*, etc.
    "Write data into result

  endmethod.
ENDCLASS.
