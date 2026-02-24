class ZCL_WIN_FACTORY definition
  public
  final
  create public .

public section.

  interfaces ZIF_FACTORY .
protected section.
private section.
ENDCLASS.



CLASS ZCL_WIN_FACTORY IMPLEMENTATION.


  METHOD zif_factory~get_executer.

    DATA(ref_win_executer) = NEW zcl_win_exe( ).
    result ?= ref_win_executer.

  ENDMETHOD.


  METHOD zif_factory~get_writer.

    DATA(ref_win_writer) = NEW zcl_win_writer( ).
    ref_win_writer->windows_specific_stuff( ).
    result ?= ref_win_writer.

  ENDMETHOD.
ENDCLASS.
