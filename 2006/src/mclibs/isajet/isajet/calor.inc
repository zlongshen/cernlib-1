#ifndef CERNLIB_ISAJET_CALOR_INC
#define CERNLIB_ISAJET_CALOR_INC
*
*
* calor.inc
*
      REAL      DELY,YCMIN,YCMAX
      INTEGER   NCY
      PARAMETER (NCY=80,DELY=.1,YCMIN=-4.,YCMAX=4.)
      REAL      DELPHI
      INTEGER   NCPHI
      PARAMETER (NCPHI=72,DELPHI=.087267)
      COMMON/CALOR/ET(NCY,NCPHI),ETEM(NCY,NCPHI),
     $CTHCAL(NCY),STHCAL(NCY),CPHCAL(NCPHI),SPHCAL(NCPHI)
      SAVE /CALOR/
#if defined(CERNLIB_LEVEL2)
#include "isajet/l2cal.inc"
* Ignoring t=pass
#endif
      REAL      ET,ETEM,CTHCAL,STHCAL,CPHCAL,SPHCAL

#endif