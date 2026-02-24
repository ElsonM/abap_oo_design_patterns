class ZCL_DECORATOR1 definition
  public
  final
  create public .

public section.

  interfaces ZIF_DECORATOR2 .
protected section.
private section.

  data MT_CALCU type ZTT_CALCU .
ENDCLASS.



CLASS ZCL_DECORATOR1 IMPLEMENTATION.


  METHOD zif_decorator2~decorate.

    "Some code containing calculations
    "Calculated re-usable values reside in MT_CALCU
    io_prop_cont->set_var(
      is_var = VALUE #( name = 'CALCU' value = REF #( mt_calcu ) ) ).

  ENDMETHOD.
ENDCLASS.
