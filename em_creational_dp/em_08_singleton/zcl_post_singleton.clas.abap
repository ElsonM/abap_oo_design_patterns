CLASS zcl_post_singleton DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS create_documents
      IMPORTING
        it_calc_data TYPE zcl_calculate_singleton=>tt_final.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_POST_SINGLETON IMPLEMENTATION.


  METHOD create_documents.

  ENDMETHOD.
ENDCLASS.
