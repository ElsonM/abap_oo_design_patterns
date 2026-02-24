interface ZIF_STATE
  public .


  types:
    BEGIN OF t_data,
      field1 TYPE char10,
      field2 TYPE char10,
      field3 TYPE char10,
      field4 TYPE char10,
      field5 TYPE char10,
    END OF t_data .
  types:
    tt_data TYPE STANDARD TABLE OF t_data WITH DEFAULT KEY .

  methods READ_DATA
    returning
      value(RESULT) type TT_DATA .
  methods SAVE_DATA
    importing
      !IT_DATA type TT_DATA .
endinterface.
