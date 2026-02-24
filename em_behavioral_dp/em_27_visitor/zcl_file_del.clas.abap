class ZCL_FILE_DEL definition
  public
  final
  create public .

public section.

  interfaces ZIF_VISITOR .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FILE_DEL IMPLEMENTATION.


  METHOD zif_visitor~visit.

*    DATA(lt_files) = io_model->get_file_list( ).
*
*    LOOP AT lt_files ASSIGNING FIELD-SYMBOL(<ls_file>).
*      "Some code to delete <ls_file> from GOS
*    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
