class ZCL_ORG_LEAF definition
  public
  inheriting from ZCL_ORG_ABS
  final
  create public .

public section.

  methods ADD_SUBORG
    redefinition .
  methods REMOVE_SUBORG
    redefinition .
  methods GET_SUBORG
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ORG_LEAF IMPLEMENTATION.


  method ADD_SUBORG.
    "Raise an exception, because we don’t have children
  endmethod.


  method GET_SUBORG.
    "Raise an exception, because we don’t have children
  endmethod.


  method REMOVE_SUBORG.
    "Raise an exception, because we don’t have children
  endmethod.
ENDCLASS.
