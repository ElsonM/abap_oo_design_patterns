class ZCL_JOB3_BUILDER definition
  public
  inheriting from ZCL_ABS_JOB_BUILDER
  final
  create public .

public section.

  methods BUILD_FLUSHER
    redefinition .
  methods BUILD_GENERATOR
    redefinition .
  methods BUILD_READER
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_JOB3_BUILDER IMPLEMENTATION.


  METHOD BUILD_FLUSHER.

    mr_flusher ?= NEW zcl_download( ).

  ENDMETHOD.


  METHOD build_generator.

    mr_generator ?= NEW zcl_csv( ).

  ENDMETHOD.


  METHOD build_reader.

    mr_reader ?= NEW zcl_sales( ).

  ENDMETHOD.
ENDCLASS.
