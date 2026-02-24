interface ZIF_GENERATOR
  public .


  methods GENERATE
    importing
      value(IR_DATA_ITAB) type ref to DATA
    returning
      value(RESULT) type ref to DATA .
endinterface.
