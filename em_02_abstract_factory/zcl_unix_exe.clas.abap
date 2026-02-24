class ZCL_UNIX_EXE definition
  public
  final
  create public .

public section.

  interfaces ZIF_EXECUTER .

  methods ENTER_ADMIN_MODE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_UNIX_EXE IMPLEMENTATION.


  METHOD enter_admin_mode.

    "Some code regarding user privileges

  ENDMETHOD.


  METHOD zif_executer~execute_app.

    "Some code to execute run.sh

    WRITE: / 'Executing application in Unix system...'.

  ENDMETHOD.
ENDCLASS.
