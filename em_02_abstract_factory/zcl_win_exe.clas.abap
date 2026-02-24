class ZCL_WIN_EXE definition
  public
  final
  create public .

public section.

  interfaces ZIF_EXECUTER .
protected section.
private section.
ENDCLASS.



CLASS ZCL_WIN_EXE IMPLEMENTATION.


  METHOD zif_executer~execute_app.

    "Some code to execute run.exe

    WRITE: / 'Executing application in Windows system...'.

  ENDMETHOD.
ENDCLASS.
