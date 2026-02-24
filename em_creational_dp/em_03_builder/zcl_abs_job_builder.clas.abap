class ZCL_ABS_JOB_BUILDER definition
  public
  abstract
  create public .

public section.

  data MR_READER type ref to ZIF_READER .
  data MR_GENERATOR type ref to ZIF_GENERATOR .
  data MR_FLUSHER type ref to ZIF_FLUSHER .

  methods BUILD_READER
  abstract .
  methods BUILD_GENERATOR
  abstract .
  methods BUILD_FLUSHER
  abstract .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABS_JOB_BUILDER IMPLEMENTATION.
ENDCLASS.
