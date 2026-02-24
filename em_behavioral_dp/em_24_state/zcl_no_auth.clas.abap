class ZCL_NO_AUTH definition
  public
  final
  create public .

public section.

  interfaces ZIF_STATE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_NO_AUTH IMPLEMENTATION.


  METHOD ZIF_STATE~READ_DATA.

    RETURN.

  ENDMETHOD.


  METHOD ZIF_STATE~SAVE_DATA.

    RETURN.

  ENDMETHOD.
ENDCLASS.
