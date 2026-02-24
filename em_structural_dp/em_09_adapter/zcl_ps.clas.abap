class ZCL_PS definition
  public
  create public .

public section.

  methods CREATE_PROJECT
    importing
      !IS_PROJ type ZST_PROJ .
  methods CREATE_WBS
    importing
      !IS_WBS type ZST_WBS .
  methods CREATE_ACTIVITY
    importing
      !IS_ACTIVITY type ZST_ACTIVITY .
    "Some further methods
  PROTECTED SECTION.
    "Possibly some type & data definitions + methods

  PRIVATE SECTION.
    "Possibly some type & data definitions + methods

ENDCLASS.



CLASS ZCL_PS IMPLEMENTATION.


  METHOD create_activity.
    "Some code to create a new PS activity using BAPI, BDC, etc.
  ENDMETHOD.


  METHOD create_project.
    "Some code to create a new PS project using BAPI, BDC, etc.
  ENDMETHOD.


  METHOD create_wbs.
    "Some code to create a new PS WBS element using BAPI, BDC, etc.
  ENDMETHOD.
ENDCLASS.
