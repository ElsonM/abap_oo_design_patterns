class ZCL_COMMAND definition
  public
  abstract
  create public .

public section.

  methods SET_RECEIVER
  final
    importing
      !IR_RECEIVER type ref to ZCL_RECEIVER .
  methods EXECUTE
  abstract
    importing
      !IS_INFO type ZST_INFO .
protected section.

  data MR_RECEIVER type ref to ZCL_RECEIVER .
private section.
ENDCLASS.



CLASS ZCL_COMMAND IMPLEMENTATION.


  method SET_RECEIVER.

    mr_receiver = ir_receiver.

  endmethod.
ENDCLASS.
