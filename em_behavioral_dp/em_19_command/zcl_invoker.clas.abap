class ZCL_INVOKER definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IS_INFO type ZST_INFO .
  methods SET_COMMAND
    importing
      !IR_COMMAND type ref to ZCL_COMMAND .
  methods EXECUTE_COMMAND .
protected section.
private section.

  data MR_COMMAND type ref to ZCL_COMMAND .
  data MS_INFO type ZST_INFO .
ENDCLASS.



CLASS ZCL_INVOKER IMPLEMENTATION.


  METHOD constructor.

    ms_info = is_info.

  ENDMETHOD.


  METHOD execute_command.

    "Do some common validations; such as data integrity, etc
    "Do some common checks; such as authorization, etc
    "Do some common initialization, etc

    mr_command->execute( ms_info ).

  ENDMETHOD.


  method SET_COMMAND.

    mr_command = ir_command.

  endmethod.
ENDCLASS.
