class ZCL_FACTORY definition
  public
  final
  create public .

public section.

  class-methods GET_PARTY_INSTANCE
    importing
      !IV_LABEL type ZTAB_LABEL-CLS_LABEL
    returning
      value(RESULT) type ref to ZIF_PARTY .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_FACTORY IMPLEMENTATION.


  METHOD get_party_instance.

    DATA obj TYPE REF TO object.

    SELECT SINGLE cls_name INTO @DATA(class_name)
      FROM ztab_label
      WHERE cls_label EQ @iv_label.

    CREATE OBJECT obj TYPE (class_name).
    result ?= obj.
  ENDMETHOD.
ENDCLASS.
