CLASS zcl_msproj_adapter DEFINITION
  INHERITING FROM zcl_ps
  PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS create_project REDEFINITION.
    METHODS create_wbs REDEFINITION.
    METHODS create_activity REDEFINITION.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA mr_ms TYPE REF TO zcl_msproj.

    METHODS:
      convert_proj_to_ms_file
        IMPORTING
          is_project    TYPE zst_proj
        RETURNING
          VALUE(result) TYPE zst_ms_proj,

      convert_wbs_to_ms_task
        IMPORTING
          is_wbs        TYPE zst_wbs
        RETURNING
          VALUE(result) TYPE zst_ms_wbs,

      convert_ps_act_to_ms_activity
        IMPORTING
          is_activity   TYPE zst_activity
        RETURNING
          VALUE(result) TYPE zst_ms_activity.

ENDCLASS.



CLASS ZCL_MSPROJ_ADAPTER IMPLEMENTATION.


  METHOD convert_proj_to_ms_file.

    "Code to convert

  ENDMETHOD.


  METHOD convert_ps_act_to_ms_activity.

    "Code to convert

  ENDMETHOD.


  METHOD convert_wbs_to_ms_task.

    "Code to convert

  ENDMETHOD.


  METHOD create_activity.
    DATA(ls_ms_activity) = convert_ps_act_to_ms_activity( is_activity ).
    mr_ms->add_task( ls_ms_activity-st_ms_wbs ).
    mr_ms->set_subtask(
      iv_parent = ls_ms_activity-wbs_code
      iv_child  = ls_ms_activity-activity_code ).
  ENDMETHOD.


  METHOD create_project.
    DATA(ls_ms_file) = convert_proj_to_ms_file( is_proj ).
    mr_ms = NEW zcl_msproj( ).
    mr_ms->new_file( ls_ms_file ).
  ENDMETHOD.


  METHOD create_wbs.
    DATA(ls_ms_task) = convert_wbs_to_ms_task( is_wbs ).
    mr_ms->add_task( ls_ms_task ).
  ENDMETHOD.
ENDCLASS.
