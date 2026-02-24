class ZCL_SMS_BRIDGE definition
  public
  inheriting from ZCL_MESSAGE
  final
  create public .

public section.

  methods SEND_MSG
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SMS_BRIDGE IMPLEMENTATION.


  method SEND_MSG.
    DATA(lv_phone) = mr_contact_type->get_contact_info( iv_recipient )-phone.
    "Send IV_MESSAGE to LV_PHONE using an external Web service
  endmethod.
ENDCLASS.
