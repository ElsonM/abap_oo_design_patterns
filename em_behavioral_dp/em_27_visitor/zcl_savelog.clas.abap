class ZCL_SAVELOG definition
  public
  final
  create public .

public section.

  interfaces ZIF_VISITOR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SAVELOG IMPLEMENTATION.


  METHOD zif_visitor~visit.

    DATA(lt_log) = io_model->get_workflow_log( ).
    "Fill some Z table from lt_log

  ENDMETHOD.
ENDCLASS.
