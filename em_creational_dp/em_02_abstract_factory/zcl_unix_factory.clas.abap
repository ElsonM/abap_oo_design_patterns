class ZCL_UNIX_FACTORY definition
  public
  final
  create public .

public section.

  interfaces ZIF_FACTORY .
protected section.
private section.
ENDCLASS.



CLASS ZCL_UNIX_FACTORY IMPLEMENTATION.


  METHOD zif_factory~get_executer.

    DATA(ref_unix_executer) = NEW zcl_unix_exe( ).
    ref_unix_executer->enter_admin_mode( ).
    result ?= ref_unix_executer.

  ENDMETHOD.


  METHOD zif_factory~get_writer.

    DATA(ref_unix_writer) = NEW zcl_unix_writer( ).
    ref_unix_writer->unix_specific_stuff( ).
    ref_unix_writer->unix_specific_further_stuff( ).
    result ?= ref_unix_writer.

  ENDMETHOD.
ENDCLASS.
