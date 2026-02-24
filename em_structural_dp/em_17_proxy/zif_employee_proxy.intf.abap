interface ZIF_EMPLOYEE_PROXY
  public .


  methods GET_ADDRESS
    importing
      !IV_PERNR type PERSNO
    exporting
      !E_DATA type ZST_ADDRESS .
  methods GET_EMPLOYMENT_DATE
    importing
      !IV_PERNR type PERSNO
    exporting
      !E_DATA type BEGDA .
  methods GET_SALARY
    importing
      !IV_PERNR type PERSNO
    exporting
      !E_DATA type ZST_SALARY .
endinterface.
