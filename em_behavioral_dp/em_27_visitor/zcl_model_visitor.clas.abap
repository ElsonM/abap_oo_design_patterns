CLASS zcl_model_visitor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        !iv_docid TYPE zdocid.

    METHODS save_to_db.

    METHODS get_invoice_info
      RETURNING
        VALUE(result) TYPE char1. "zst_inv_info.

    METHODS attach_file
      IMPORTING
        !is_file TYPE zst_file.

    METHODS get_file_list
      RETURNING
        VALUE(result) TYPE char1. "ztt_file_list.

    METHODS start_workflow.

    METHODS get_workflow_log
      RETURNING
        VALUE(result) TYPE char1. "ztt_wf_log.

    METHODS post_mm_doc
      RETURNING
        VALUE(result) TYPE bapiret2_tab.

    METHODS accept
       IMPORTING
         !io_visitor TYPE REF TO zif_visitor.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_MODEL_VISITOR IMPLEMENTATION.


  METHOD accept.
    io_visitor->visit( me ).
  ENDMETHOD.


  METHOD attach_file.
    "Add file to GOS
    "Add file info to some private ITAB
  ENDMETHOD.


  METHOD constructor.
    "Some code to initialize object
  ENDMETHOD.


  METHOD get_file_list.
    "Return file list from some private ITAB
  ENDMETHOD.


  METHOD get_invoice_info.
    "Return details of the invoice
  ENDMETHOD.


  METHOD get_workflow_log.
    "Read workflow log using BAPI calls and return
  ENDMETHOD.


  METHOD post_mm_doc.
    "Call BAPI and return messages
    "Update status of the invoice
  ENDMETHOD.


  METHOD save_to_db.
    "Do some checks
    "Write data to DB
  ENDMETHOD.


  METHOD start_workflow.
    save_to_db( ).
    "Raise an event, targeting the workflow
  ENDMETHOD.
ENDCLASS.
