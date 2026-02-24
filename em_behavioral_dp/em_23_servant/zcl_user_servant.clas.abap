class ZCL_USER_SERVANT definition
  public
  final
  create public .

public section.

  interfaces ZIF_RESIDENT .

  methods CONSTRUCTOR
    importing
      !IV_BNAME type BNAME .
protected section.
private section.

  data MV_BNAME type BNAME .
ENDCLASS.



CLASS ZCL_USER_SERVANT IMPLEMENTATION.


  METHOD constructor.

    mv_bname = iv_bname.

  ENDMETHOD.


  method ZIF_RESIDENT~GET_RAW_ADDRESS_DATA.

    "Reads USR*, ADR*, etc.
    "Write data into result

  endmethod.
ENDCLASS.
