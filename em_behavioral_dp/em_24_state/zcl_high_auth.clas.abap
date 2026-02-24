class ZCL_HIGH_AUTH definition
  public
  final
  create public .

public section.

  interfaces ZIF_STATE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_HIGH_AUTH IMPLEMENTATION.


  METHOD zif_state~read_data.

    "Read "all" data from the database table and return

  ENDMETHOD.


  METHOD zif_state~save_data.

    "Replace "all" data in the database table with IT_DATA

  ENDMETHOD.
ENDCLASS.
