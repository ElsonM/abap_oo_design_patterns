class ZCL_ADDRESS_SERVANT definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IO_RESIDENT type ref to ZIF_RESIDENT .
  methods BUILD_SHORT_ADDRESS
    RETURNING VALUE(result) TYPE string.
  methods BUILD_MEDIUM_ADDRESS
    RETURNING VALUE(result) TYPE string.
  methods BUILD_LONG_ADDRESS
    RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA ms_raw TYPE zif_resident=>t_raw_address .
ENDCLASS.



CLASS ZCL_ADDRESS_SERVANT IMPLEMENTATION.


  METHOD build_long_address.

    "Builds result in the long format

  ENDMETHOD.


  METHOD build_medium_address.

    "Builds result in the medium format

  ENDMETHOD.


  METHOD build_short_address.

    "Builds result in the short format

  ENDMETHOD.


  METHOD constructor.

    ms_raw = io_resident->get_raw_address_data( ).

  ENDMETHOD.
ENDCLASS.
