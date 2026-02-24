class ZCL_COMMAND_O definition
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



CLASS ZCL_COMMAND_O IMPLEMENTATION.


  method EXECUTE.

    mr_receiver->post_order( is_info ).

  endmethod.
ENDCLASS.
