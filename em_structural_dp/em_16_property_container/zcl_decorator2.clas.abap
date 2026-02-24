class ZCL_DECORATOR2 definition
  public
  final
  create public .

public section.

  interfaces ZIF_DECORATOR2 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_DECORATOR2 IMPLEMENTATION.


  METHOD zif_decorator2~decorate.

    FIELD-SYMBOLS: <lt_calcu> TYPE ztt_calcu.

    TRY.
        DATA(lr_calcu) = io_prop_cont->get_var( 'CALCU' ).
        CHECK lr_calcu IS NOT INITIAL.

        ASSIGN lr_calcu->* TO <lt_calcu>.
        CHECK <lt_calcu> IS ASSIGNED.

        "Some code to take advantage of the precalculated data

      CATCH zcx_bc_container_var.
        "Some code to execute in case 'CALCU' is not set
    ENDTRY.

  ENDMETHOD.
ENDCLASS.
