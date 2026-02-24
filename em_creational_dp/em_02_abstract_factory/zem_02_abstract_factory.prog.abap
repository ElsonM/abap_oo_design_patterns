*&---------------------------------------------------------------------*
*& Report ZEM_02_ABSTRACT_FACTORY
*&---------------------------------------------------------------------*
*& Client program for the Abstract Factory Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_02_abstract_factory.

*&---------------------------------------------------------------------*
*& GLOBAL DECLARATIONS                                                 *
*&---------------------------------------------------------------------*
DATA ref_factory TYPE REF TO zif_factory.

*&---------------------------------------------------------------------*
*& SELECTION SCREEN                                                    *
*&---------------------------------------------------------------------*
PARAMETERS: p_os   TYPE zem_os,
            p_path TYPE char30.

*&---------------------------------------------------------------------*
*& START-OF-SELECTION EVENT                                            *
*&---------------------------------------------------------------------*
START-OF-SELECTION.

  "Create factory object
  CASE p_os.
    WHEN 'WIN'.
      DATA(ref_win_fact) = NEW zcl_win_factory( ).
      ref_factory ?= ref_win_fact.
    WHEN 'UN'.
      DATA(ref_unix_fact) = NEW zcl_unix_factory( ).
      ref_factory ?= ref_unix_fact.
  ENDCASE.

  "From this point on, we don’t care about the underlying OS.

  "Get writer & executer from factory
  DATA(ref_writer) = ref_factory->get_writer( ).
  DATA(ref_executer) = ref_factory->get_executer( ).

  "Write and execute
  ref_writer->write_file( p_path ).
  ref_executer->execute_app( ).
