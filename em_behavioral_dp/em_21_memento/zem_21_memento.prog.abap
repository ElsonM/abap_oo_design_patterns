*&---------------------------------------------------------------------*
*& Report ZEM_21_MEMENTO
*&---------------------------------------------------------------------*
*& Client program for Memento Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_21_memento.

DATA:
  gt_gui_data TYPE ztt_data.

DATA:
  go_caretaker TYPE REF TO zcl_caretaker,
  go_model TYPE REF TO zcl_model_memento.

*&---------------------------------------------------------------------*
*& Form DATA_CHANGED
*&---------------------------------------------------------------------*
*& Executed code when user changes data on the GUI
*&---------------------------------------------------------------------*
FORM data_changed.

  go_model->set_state( gt_gui_data ).
  go_caretaker->add( go_model->save_state_to_memento( ) ).

ENDFORM.

*&---------------------------------------------------------------------*
*& Form UNDO
*&---------------------------------------------------------------------*
*& Undo operation
*&---------------------------------------------------------------------*
FORM undo.

  DATA index TYPE i.

  "Determine the index of previous step and store into index
  go_model->get_state_from_memento( go_caretaker->get( index ) ).

  PERFORM refresh_screen.

ENDFORM.

*&---------------------------------------------------------------------*
*& Form REDO
*&---------------------------------------------------------------------*
*& Redo operation
*&---------------------------------------------------------------------*
FORM redo.

  DATA index TYPE i.

  "Determine the index of the next step and store into index
  go_model->get_state_from_memento( go_caretaker->get( index ) ).

  PERFORM refresh_screen.

ENDFORM.

*&---------------------------------------------------------------------*
*& Form REFRESH_SCREEN
*&---------------------------------------------------------------------*
*& Refresh GUI display
*&---------------------------------------------------------------------*
FORM refresh_screen.

ENDFORM.
