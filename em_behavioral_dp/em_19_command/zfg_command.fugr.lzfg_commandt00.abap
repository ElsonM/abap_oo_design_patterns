*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZSD_COMMAND.....................................*
DATA:  BEGIN OF STATUS_ZSD_COMMAND                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSD_COMMAND                   .
CONTROLS: TCTRL_ZSD_COMMAND
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZSD_COMMAND                   .
TABLES: ZSD_COMMAND                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
