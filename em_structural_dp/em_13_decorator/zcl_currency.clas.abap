class ZCL_CURRENCY definition
  public
  final
  create public .

public section.

  interfaces ZIF_DECORATOR1 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CURRENCY IMPLEMENTATION.


  METHOD zif_decorator1~decorate.

    DATA(comp_curr) = zcl_fi_toolkit=>get_comp_curr( cs_data-bukrs ).

    CHECK cs_data-waers <> comp_curr.

    zcl_fi_toolkit=>conv_curr(
       EXPORTING
         iv_src    = cs_data-waers
         iv_tar    = comp_curr
       CHANGING
         cv_amount = cs_data-wrbtr ).

    cs_data-waers = comp_curr.

  ENDMETHOD.
ENDCLASS.
