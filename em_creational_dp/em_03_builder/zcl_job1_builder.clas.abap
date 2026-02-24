class ZCL_JOB1_BUILDER definition
  public
  inheriting from ZCL_ABS_JOB_BUILDER
  final
  create public .

public section.

  methods BUILD_GENERATOR
    redefinition .
  methods BUILD_READER
    redefinition .
  methods BUILD_FLUSHER
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_JOB1_BUILDER IMPLEMENTATION.


  METHOD build_flusher.

    mr_flusher ?= NEW zcl_download( ).

  ENDMETHOD.


  METHOD build_generator.

    mr_generator ?= NEW zcl_tab( ).

  ENDMETHOD.


  METHOD build_reader.

    mr_reader ?= NEW zcl_stock( ).

  ENDMETHOD.
ENDCLASS.
