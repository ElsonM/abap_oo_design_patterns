class ZCL_FI_TOOLKIT definition
  public
  final
  create public .

public section.

  class-methods GET_COMP_CURR
    importing
      !IV_BUKRS type BUKRS
    returning
      value(RESULT) type WAERS .
  class-methods CONV_CURR
    importing
      !IV_SRC type WAERS
      !IV_TAR type WAERS
    changing
      !CV_AMOUNT type WRBTR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FI_TOOLKIT IMPLEMENTATION.


  method CONV_CURR.
  endmethod.


  method GET_COMP_CURR.
  endmethod.
ENDCLASS.
