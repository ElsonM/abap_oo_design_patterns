*&---------------------------------------------------------------------*
*& Report ZEM_09_ADAPTER
*&---------------------------------------------------------------------*
*& Client program (02) for the Adapter Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_09_adapter_02.

  "Some data definitions

  PARAMETERS:
    p_sapps RADIOBUTTON GROUP rg1,
    p_msprj RADIOBUTTON GROUP rg1.

  "Maybe additional selection screen parameters

  PERFORM main.

*&---------------------------------------------------------------------*
*& Form main
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM main.

  DATA: ls_proj TYPE zst_proj,
        lt_wbs TYPE TABLE OF zst_wbs WITH DEFAULT KEY,
        lt_activity TYPE TABLE OF zst_activity WITH DEFAULT KEY.

  DATA: ls_ms_proj TYPE zst_ms_proj,
        lt_ms_wbs TYPE TABLE OF zst_ms_wbs WITH DEFAULT KEY,
        lt_ms_activity TYPE TABLE OF zst_ms_activity WITH DEFAULT KEY.

  "Some code to get PS data, possibly from a screen or CSV file

  IF p_sapps = abap_true.

    DATA(lo_ps) = NEW zcl_ps( ).

    lo_ps->create_project( ls_proj ).

    LOOP AT lt_wbs ASSIGNING FIELD-SYMBOL(<fs_wbs>).
      lo_ps->create_wbs( <fs_wbs> ).
    ENDLOOP.

    LOOP AT lt_activity ASSIGNING FIELD-SYMBOL(<fs_activity>).
      lo_ps->create_activity( <fs_activity> ).
    ENDLOOP.

  ELSEIF p_msprj = abap_true.

    PERFORM convert_sap_ps_to_ms_proj.

    DATA(lo_ms) = NEW zcl_msproj( ).

    lo_ms->new_file( ls_ms_proj ).

    LOOP AT lt_ms_wbs ASSIGNING FIELD-SYMBOL(<fs_ms_wbs>).
      lo_ms->add_task( <fs_ms_wbs> ).
    ENDLOOP.

    LOOP AT lt_ms_activity ASSIGNING FIELD-SYMBOL(<fs_ms_activity>).
      lo_ms->add_task( <fs_ms_activity>-st_ms_wbs ).
      lo_ms->set_subtask(
        iv_parent = <fs_ms_activity>-wbs_code
        iv_child  = <fs_ms_activity>-activity_code ).
    ENDLOOP.

  ENDIF.

  "Some code to display results to user

ENDFORM.

*&---------------------------------------------------------------------*
*& Form convert_sap_ps_to_ms_proj
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM convert_sap_ps_to_ms_proj.

ENDFORM.
