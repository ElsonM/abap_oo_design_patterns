class ZCL_MSPROJ definition
  public
  final
  create public .

public section.

  methods NEW_FILE
    importing
      !IS_MS_PROJ type ZST_MS_PROJ .
  methods ADD_TASK
    importing
      !IS_MS_WBS type ZST_MS_WBS .
  methods SET_SUBTASK
    importing
      !IV_PARENT type ZST_MS_ACTIVITY-WBS_CODE
      !IV_CHILD type ZST_MS_ACTIVITY-ACTIVITY_CODE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_MSPROJ IMPLEMENTATION.


  method ADD_TASK.
  endmethod.


  method NEW_FILE.
  endmethod.


  METHOD set_subtask.
  ENDMETHOD.
ENDCLASS.
