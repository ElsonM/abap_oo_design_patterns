class ZCL_VENDOR_SERVANT definition
  public
  final
  create public .

public section.

  interfaces ZIF_RESIDENT .

  methods CONSTRUCTOR
    importing
      !IV_LIFNR type LIFNR .
protected section.
private section.

  data MV_LIFNR type LIFNR .
ENDCLASS.



CLASS ZCL_VENDOR_SERVANT IMPLEMENTATION.


  method CONSTRUCTOR.

    mv_lifnr = iv_lifnr.

  endmethod.


  METHOD zif_resident~get_raw_address_data.

    "Reads LFA1, ADR*, etc.
    "Write data into result

  ENDMETHOD.
ENDCLASS.
