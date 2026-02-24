class ZCL_CHANGE1 definition
  public
  final
  create public .

public section.

  interfaces ZIF_TARGET_OBSERVER .
protected section.
private section.

  class-methods ADD_CHANGE
    importing
      !IV_TEXT type STRING .
  class-methods DETECT_RECIPIENTS
    importing
      !IV_VKORG type VKORG .
  class-methods FLUSH .
ENDCLASS.



CLASS ZCL_CHANGE1 IMPLEMENTATION.


  method ADD_CHANGE.
  endmethod.


  method DETECT_RECIPIENTS.
  endmethod.


  method FLUSH.
  endmethod.


  METHOD zif_target_observer~notify.

    detect_recipients( iv_vkorg ).

    LOOP AT it_data ASSIGNING FIELD-SYMBOL(<ls_data>).
      add_change( |New target for vendor { <ls_data>-field1 }| ).
    ENDLOOP.

    flush( ).

  ENDMETHOD.
ENDCLASS.
