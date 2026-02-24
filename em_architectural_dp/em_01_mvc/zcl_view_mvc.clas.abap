class ZCL_VIEW_MVC definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !MODEL type ref to ZCL_MODEL_MVC .
  methods ON_USER_COMMAND
    for event ADDED_FUNCTION of CL_SALV_EVENTS
    importing
      !E_SALV_FUNCTION .
  PROTECTED SECTION.
private section.

  data MODEL type ref to ZCL_MODEL_MVC .
  data ALV type ref to CL_SALV_TABLE .
  constants C_CREATE_DLV type SALV_DE_FUNCTION value 'CREATE_DLV' ##NO_TEXT.

  methods ENABLE_FUNCTIONS .
  methods CUSTOMIZE_ALV .
  methods ENABLE_LAYOUT_SETTINGS .
  methods OPTIMIZE_COLUMN_WIDTH .
*    METHODS hide_client_column.
*    METHODS set_departure_country_column.
*    METHODS set_custom_toolbar.
*    METHODS display_settings.
*    METHODS set_aggregations.
ENDCLASS.



CLASS ZCL_VIEW_MVC IMPLEMENTATION.


  METHOD constructor.

    me->model = model.

    DATA(orders) = me->model->get_order_list( ).
    cl_salv_table=>factory(
      IMPORTING
        r_salv_table = alv
      CHANGING
        t_table      = orders ).

    customize_alv( ).

    SET HANDLER on_user_command FOR alv->get_event( ).
    alv->display( ).

  ENDMETHOD.


  METHOD customize_alv.

    optimize_column_width( ).
    enable_layout_settings( ).
    enable_functions( ).

  ENDMETHOD.


  METHOD enable_layout_settings.

    DATA layout_settings TYPE REF TO cl_salv_layout.
    DATA layout_key TYPE salv_s_layout_key.

    layout_settings = alv->get_layout( ).

    layout_key-report = sy-repid.
    layout_settings->set_key( layout_key ).

    layout_settings->set_save_restriction( if_salv_c_layout=>restrict_none ).
    layout_settings->set_default( if_salv_c_bool_sap=>true ).

  ENDMETHOD.


  METHOD on_user_command.

    IF e_salv_function = c_create_dlv.
      model->create_dlv( ).
    ENDIF.

  ENDMETHOD.


  METHOD optimize_column_width.

    alv->get_columns( )->set_optimize( ).

  ENDMETHOD.


  METHOD enable_functions.

    alv->get_functions( )->set_all( ).
    alv->get_display_settings( )->set_striped_pattern( abap_true ).

  ENDMETHOD.
ENDCLASS.
