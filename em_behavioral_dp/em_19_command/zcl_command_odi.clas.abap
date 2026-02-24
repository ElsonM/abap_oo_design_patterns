class ZCL_COMMAND_ODI definition
  public
  inheriting from ZCL_COMMAND
  final
  create public .

public section.

  methods EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_COMMAND_ODI IMPLEMENTATION.


  METHOD execute.

    mr_receiver->post_order( is_info ).
    mr_receiver->post_delivery( is_info ).
    mr_receiver->post_invoice( is_info ).

  ENDMETHOD.
ENDCLASS.
