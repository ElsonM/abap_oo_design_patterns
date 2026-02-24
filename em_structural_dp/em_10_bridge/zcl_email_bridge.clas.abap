class ZCL_EMAIL_BRIDGE definition
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



CLASS ZCL_EMAIL_BRIDGE IMPLEMENTATION.


  method SEND_MSG.

    DATA(lv_email) =
      mr_contact_type->get_contact_info( iv_recipient )-email.

    "Send IV_MESSAGE to LV_EMAIL using SAP methods

  endmethod.
ENDCLASS.
