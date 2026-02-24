class ZCL_DIRECTOR definition
  public
  final
  create public .

public section.

  methods CONSTRUCT
    changing
      !CR_BUILDER type ref to ZCL_ABS_JOB_BUILDER .
protected section.
private section.
ENDCLASS.



CLASS ZCL_DIRECTOR IMPLEMENTATION.


  METHOD construct.

    cr_builder->build_reader( ).
    cr_builder->build_generator( ).
    cr_builder->build_flusher( ).

  ENDMETHOD.
ENDCLASS.
