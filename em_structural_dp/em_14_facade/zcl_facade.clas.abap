class ZCL_FACADE definition
  public
  final
  create public .

public section.

  methods GET_ANNUAL_BONUS
    returning
      value(RESULT) type ZCL_BONUS_FAC=>TT_BONUS .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FACADE IMPLEMENTATION.


  method GET_ANNUAL_BONUS.
  endmethod.
ENDCLASS.
