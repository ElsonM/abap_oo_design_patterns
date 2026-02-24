class ZCL_CLIENT_FAC definition
  public
  final
  create public .

public section.

  types:
    TT_BLOCKED TYPE TABLE of kna1-kunnr WITH DEFAULT KEY .

  methods GET_BLOCK_LIST
    returning
      value(RESULT) type TT_BLOCKED .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CLIENT_FAC IMPLEMENTATION.


  method GET_BLOCK_LIST.

    "Code to fill RESULT table

  endmethod.
ENDCLASS.
