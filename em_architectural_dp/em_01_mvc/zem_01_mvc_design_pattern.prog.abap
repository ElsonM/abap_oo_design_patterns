*&---------------------------------------------------------------------*
*& Report ZEM_01_MVC_DESIGN_PATTERN
*&---------------------------------------------------------------------*
*& Client program for the MVC Design Pattern
*&---------------------------------------------------------------------*
REPORT zem_01_mvc_design_pattern.

*&---------------------------------------------------------------------*
*& SELECTION SCREEN                                                    *
*&---------------------------------------------------------------------*
DATA sales_header TYPE vbak.
SELECT-OPTIONS so_vbeln FOR sales_header-vbeln.

*&---------------------------------------------------------------------*
*& START-OF-SELECTION EVENT                                            *
*&---------------------------------------------------------------------*
START-OF-SELECTION.

  "Model Class creation and execution of its methods
  DATA(model) = NEW zcl_model_mvc( ).

  model->read_orders( so_vbeln[] ).
  model->eliminate_blocked( ).

  "View Class creation
  DATA(view) = NEW zcl_view_mvc( model ).

*&---------------------------------------------------------------------*
*& END-OF-SELECTION EVENT                                              *
*&---------------------------------------------------------------------*
END-OF-SELECTION.

  "Handle user interaction by using the Model Class
  view->on_user_command( ).
