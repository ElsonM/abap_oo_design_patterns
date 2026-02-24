interface ZIF_DECORATOR2
  public .


  types:
    tt_konp TYPE TABLE OF konp .

  methods DECORATE
    importing
      !IO_PROP_CONT type ref to ZCL_PROPERTY_CONTAINER
    changing
      !CT_KONP type TT_KONP .
endinterface.
