class ZCL_POST_FI definition
  public
  final
  create public .

public section.

  interfaces ZIF_VISITOR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_POST_FI IMPLEMENTATION.


  METHOD zif_visitor~visit.

    io_model->save_to_db( ).
    DATA(ls_info) = io_model->get_invoice_info( ).
    "Call some BAPI to create the FI document using ls_info

  ENDMETHOD.
ENDCLASS.
