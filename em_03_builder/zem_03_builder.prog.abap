*&---------------------------------------------------------------------*
*& Report ZEM_03_BUILDER
*&---------------------------------------------------------------------*
*& Client program for the Builder Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_03_builder.

DATA:
  obj TYPE REF TO object,
  builder TYPE REF TO zcl_abs_job_builder.

PARAMETERS p_bldcls TYPE seoclname OBLIGATORY.

START-OF-SELECTION.
  "Create builder object
  CREATE OBJECT obj TYPE (p_bldcls).
  builder ?= obj.

  "Let the director construct everything
   NEW zcl_director( )->construct(
      CHANGING cr_builder = builder ).

   "Run steps of the job given in P_BLDCLS
   DATA(ref_raw) = builder->mr_reader->get_data( ).
   DATA(ref_file) = builder->mr_generator->generate( ref_raw ).
   builder->mr_flusher->flush( ref_file ).
