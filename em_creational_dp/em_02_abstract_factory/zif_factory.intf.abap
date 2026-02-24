interface ZIF_FACTORY
  public .


  methods GET_WRITER
    returning
      value(RESULT) type ref to ZIF_WRITER .
  methods GET_EXECUTER
    returning
      value(RESULT) type ref to ZIF_EXECUTER .
endinterface.
