class ZCL_CUSTOMER_FACT definition
  public
  final
  create public .

public section.

  interfaces ZIF_PARTY .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CUSTOMER_FACT IMPLEMENTATION.


  method ZIF_PARTY~GET_DETAILS.
  endmethod.


  method ZIF_PARTY~POST_FI_DOC.
  endmethod.
ENDCLASS.
