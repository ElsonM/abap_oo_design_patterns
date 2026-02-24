class ZCL_VENDOR_MULTITON definition
  public
  final
  create private .

public section.

  data MV_LIFNR type LIFNR read-only .

  class-methods GET_INSTANCE
    importing
      !IV_LIFNR type LIFNR
    returning
      value(RESULT) type ref to ZCL_VENDOR_MULTITON .
  methods GET_BALANCE
    returning
      value(RESULT) type DMBTR .
  PROTECTED SECTION.

private section.

  types:
    BEGIN OF t_multiton,
        lifnr TYPE lifnr,
        obj   TYPE REF TO zcl_vendor_multiton,
      END OF t_multiton .
  types:
    tt_multiton TYPE HASHED TABLE OF t_multiton
        WITH UNIQUE KEY primary_key COMPONENTS lifnr .

  class-data MT_MULTITON type TT_MULTITON .
  data MV_BALANCE type DMBTR .
  data MV_BALANCE_READ type ABAP_BOOL .

  methods CONSTRUCTOR
    importing
      !IV_LIFNR type LIFNR .
ENDCLASS.



CLASS ZCL_VENDOR_MULTITON IMPLEMENTATION.


  METHOD constructor.

    "Check if IV_LIFNR exists in LFA1 and raise error if not
    mv_lifnr = iv_lifnr.

  ENDMETHOD.


  METHOD get_balance.

    IF mv_balance_read = abap_false.
      "Read vendor balance from BSIK, BSAK, etc into mv_balance
      mv_balance_read = abap_true.
    ENDIF.

    result = mv_balance.

  ENDMETHOD.


  METHOD get_instance.

    ASSIGN mt_multiton[ KEY primary_key
      COMPONENTS lifnr = iv_lifnr ]
      TO FIELD-SYMBOL(<multiton>).

    IF sy-subrc <> 0.
      "Check if IV_LIFNR exists in LFA1 and raise error if not
      DATA(multiton) = VALUE t_multiton( lifnr = iv_lifnr ).
      multiton-obj = NEW #( iv_lifnr ).
      INSERT multiton INTO TABLE mt_multiton
        ASSIGNING <multiton>.
    ENDIF.

    result = <multiton>-obj.

  ENDMETHOD.
ENDCLASS.
