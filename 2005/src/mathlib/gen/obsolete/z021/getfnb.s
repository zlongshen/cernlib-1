*
* $Id: getfnb.s,v 1.1.1.1 1996/04/01 15:03:22 mclareni Exp $
*
* $Log: getfnb.s,v $
* Revision 1.1.1.1  1996/04/01 15:03:22  mclareni
* Mathlib gen
*
*
          IDENT GETFNB
*   FORTRAN CALLABLE SUBROUTINE TO GET FIT ADRESS
*   THIS IS ROUTINE GETFIT FROM CNESLIB WITH NAME CHANGE FOR SAFETY
*    SUBROUTINE GETFNB(LFN,ARRAY,INDEX)
*    LFN  FILE NAME OR FORTRAN NUMBER
*     ARRAY  AN ARRAY DECLARED IN CALLING ROUTINE
*    INDEX IS SET BY GETFIT SO THAT ARRAY(INDEX) IS FIT FIRST WORD
*  FORTRAN ERROR IF FIT NOT FOUND
          ENTRY GETFNB
GETFITX    VFD  42/6LGETFNB,18/GETFNB
TEMPA0    BSS    1
GETFNB    EQ  *+400000B
          SX6    A0
          SB2   A1           SAVE PARZMETER LIST ADRESS
          SB1  1              GETFNB.  DOES NOT USE B REGISTERS
          SA6    TEMPA0
#if !defined(CERNLIB_F4)
          MX7    1
          BX1    X7+X1
#endif
+RJ=XGETFIT
-         VFD  30/GETFITX      TRACE
          SA2     B2+B1        X2  ARRAY(1) ADRESS
          SX1 X1+B1           ADD 1 TO FIT ADRESS
          SA3  A2+B1          X3   INDEX ADRESS
          IX6  X1-X2
          SA6  X3            WRITE INDEX
          EQ  GETFNB
          END
