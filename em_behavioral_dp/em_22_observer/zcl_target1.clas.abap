class ZCL_TARGET1 definition
  public
  final
  create public .

public section.

  methods SAVE_TARGETS .
protected section.
private section.

  methods WRITE_TO_DB .
ENDCLASS.



CLASS ZCL_TARGET1 IMPLEMENTATION.


  METHOD save_targets.

    DATA: lv_vkorg TYPE vkorg,
          lt_data  TYPE zsdtt_target.

    "Code to fill the above mentioned variables

    write_to_db( ).

    SELECT clsname INTO TABLE @DATA(lt_clsname)
      FROM seometarel
      WHERE refclsname = 'ZIF_TARGET_OBSERVER'.

    LOOP AT lt_clsname ASSIGNING FIELD-SYMBOL(<lv_clsname>).
      CALL METHOD (<lv_clsname>)=>zif_target_observer~notify
        EXPORTING
          iv_vkorg = lv_vkorg
          it_data  = lt_data.
    ENDLOOP.

  ENDMETHOD.


  method WRITE_TO_DB.
  endmethod.
ENDCLASS.
