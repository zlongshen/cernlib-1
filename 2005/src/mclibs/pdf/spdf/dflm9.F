*
* $Id: dflm9.F,v 1.1.1.2 1996/10/30 08:28:01 cernlib Exp $
*
* $Log: dflm9.F,v $
* Revision 1.1.1.2  1996/10/30 08:28:01  cernlib
* Version 7.04
*
* Revision 1.1.1.1  1996/04/12 15:29:15  plothow
* Version 7.01
*
*
#include "pdf/pilot.h"
C-----------------------------------------------------------------------
      SUBROUTINE DFLM9(DX,DSCALE,DUPV,DDNV,DSEA,DSTR,DCHM,DBOT,DTOP,DGL)
C
C   ********************************************************************
C   *                                                                  *
C   *        Interface to DFLM set of structure functions              *
C   *                                                                  *
C   *        Author:    H. Plothow-Besch (CERN-PPE)                    *
C   *                                                                  *
C   ********************************************************************
C
C :::::::::::: Diemoz, Ferroni, Longo, and Martinelli Lambda = 300 MeV :
C :::::::::::: Central distribution (NLLO)
C
#include "pdf/expdp.inc"
     +       DX,DSCALE,DUPV,DDNV,DSEA,DSTR,DCHM,DBOT,DTOP,DGL
      REAL   X, Q2
#include "pdf/w50511.inc"
C
      X = DX
      Q2 = DSCALE**2
C
C     generate the individual structure fcn calls
C
      CALL FXNLLA(X,Q2,'UPVAL',VAL)
      DUPV = VAL
      CALL FXNLLA(X,Q2,'DOVAL',VAL)
      DDNV = VAL
      CALL FXNLLA(X,Q2,'UBAR ',VAL)
      DSEA = VAL
      CALL FXNLLA(X,Q2,'SBAR ',VAL)
      DSTR = VAL
      CALL FXNLLA(X,Q2,'CBAR ',VAL)
      DCHM = VAL
      CALL FXNLLA(X,Q2,'BBAR ',VAL)
      DBOT = VAL
      VAL = 0.
      IF (DSCALE.GT.TMAS) CALL FXNLLA(X,Q2,'TBAR ',VAL)
      DTOP = VAL
      CALL FXNLLA(X,Q2,'GLUON',VAL)
      DGL = VAL
C
      RETURN
      END
