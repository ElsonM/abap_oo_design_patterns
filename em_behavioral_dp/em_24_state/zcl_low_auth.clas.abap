class ZCL_LOW_AUTH definition
  public
  final
  create public .

public section.

  interfaces ZIF_STATE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_LOW_AUTH IMPLEMENTATION.


  METHOD ZIF_STATE~READ_DATA.

    "Read "partial" data from the database table and return

  ENDMETHOD.


  METHOD ZIF_STATE~SAVE_DATA.

    "Replace "partial" data in the database table with IT_DATA

  ENDMETHOD.
ENDCLASS.
