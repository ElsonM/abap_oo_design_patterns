CLASS zcl_two_way_adapter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_tab_data_provider,
      zif_xml_data_provider.

    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA:
      mr_tab TYPE REF TO zcl_tab_data_default,
      mr_xml TYPE REF TO zcl_xml_data_default.
ENDCLASS.



CLASS ZCL_TWO_WAY_ADAPTER IMPLEMENTATION.


  METHOD constructor.
    mr_tab = NEW #( ).
    mr_xml = NEW #( ).
  ENDMETHOD.


  METHOD zif_tab_data_provider~get_tab_data.
    DATA(lt_xml) = mr_xml->zif_xml_data_provider~get_xml_data( is_param ).
    "Convert lt_xml to tab-delimited format
    "Return result table
  ENDMETHOD.


  METHOD zif_xml_data_provider~get_xml_data.
    DATA(lt_tab) = mr_tab->zif_tab_data_provider~get_tab_data( is_param ).
    "Convert lt_tab to XML format
    "Return result table
  ENDMETHOD.
ENDCLASS.
