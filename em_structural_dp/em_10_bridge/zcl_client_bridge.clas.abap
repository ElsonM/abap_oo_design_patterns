class ZCL_CLIENT_BRIDGE definition
  public
  final
  create public .

public section.

  interfaces ZIF_CONTACT .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CLIENT_BRIDGE IMPLEMENTATION.


  method ZIF_CONTACT~GET_CONTACT_INFO.

    "Read contact data from ADRC, etc and fill RESULT.

  endmethod.
ENDCLASS.
