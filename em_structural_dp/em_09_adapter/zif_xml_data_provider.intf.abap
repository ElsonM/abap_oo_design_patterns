interface ZIF_XML_DATA_PROVIDER
  public .


  methods GET_XML_DATA
    importing
      !IS_PARAM type ZST_PARAM
    returning
      value(RESULT) type ZTT_XML .
endinterface.
