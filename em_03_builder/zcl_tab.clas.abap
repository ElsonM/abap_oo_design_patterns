class ZCL_TAB definition
  public
  final
  create public .

public section.

  interfaces ZIF_GENERATOR .
protected section.
private section.

  data MT_FILE type ZTT_FILE .

  methods PREPARE_TAB_FILE
    importing
      !IR_DATA_ITAB type ref to DATA .
ENDCLASS.



CLASS ZCL_TAB IMPLEMENTATION.


  METHOD prepare_tab_file.

    WRITE: / 'Preparing tabbed text file...'.

  ENDMETHOD.


  METHOD zif_generator~generate.

    prepare_tab_file( ir_data_itab ). "Fills mt_file
    result = REF #( mt_file ).

  ENDMETHOD.
ENDCLASS.
