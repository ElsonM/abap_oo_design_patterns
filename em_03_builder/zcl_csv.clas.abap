class ZCL_CSV definition
  public
  final
  create public .

public section.

  interfaces ZIF_GENERATOR .
protected section.
private section.

  data MT_FILE type ZTT_FILE .

  methods PREPARE_CSV_FILE
    importing
      !IR_DATA_ITAB type ref to DATA .
ENDCLASS.



CLASS ZCL_CSV IMPLEMENTATION.


  METHOD prepare_csv_file.

    WRITE: / 'Preparing CSV file...'.

  ENDMETHOD.


  METHOD zif_generator~generate.

    prepare_csv_file( ir_data_itab ). "Fills mt_file
    result = REF #( mt_file ).

  ENDMETHOD.
ENDCLASS.
