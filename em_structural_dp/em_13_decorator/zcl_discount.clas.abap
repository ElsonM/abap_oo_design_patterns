class ZCL_DISCOUNT definition
  public
  final
  create public .

public section.

  interfaces ZIF_DECORATOR1 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_DISCOUNT IMPLEMENTATION.


  METHOD zif_decorator1~decorate.

    CHECK zcl_sd_toolkit=>is_customer_special( cs_data-kunnr ) = abap_true.

    cs_data-wrbtr = cs_data-wrbtr * zcl_sd_toolkit=>get_rate( cs_data-kunnr ).

  ENDMETHOD.
ENDCLASS.
