class ZCL_SD_TOOLKIT definition
  public
  final
  create public .

public section.

  class-methods IS_CUSTOMER_SPECIAL
    importing
      !IV_KUNNR type KUNNR
    returning
      value(RESULT) type ABAP_BOOL .
  class-methods GET_RATE
    importing
      !IV_KUNNR type KUNNR
    returning
      value(RESULT) type DECFLOAT16 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SD_TOOLKIT IMPLEMENTATION.


  method GET_RATE.
  endmethod.


  method IS_CUSTOMER_SPECIAL.
  endmethod.
ENDCLASS.
