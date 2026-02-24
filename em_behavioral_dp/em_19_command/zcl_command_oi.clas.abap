class ZCL_COMMAND_OI definition
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



CLASS ZCL_COMMAND_OI IMPLEMENTATION.


  method EXECUTE.

    mr_receiver->post_order( is_info ).
    mr_receiver->post_invoice( is_info ).

  endmethod.
ENDCLASS.
