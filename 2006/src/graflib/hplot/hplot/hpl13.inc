*
* $Id: hpl13.inc,v 1.1.1.1 1996/01/19 10:50:15 mclareni Exp $
*
* $Log: hpl13.inc,v $
* Revision 1.1.1.1  1996/01/19 10:50:15  mclareni
* Hplot
*
*
#ifndef CERNLIB_HPLOT_HPL13_INC
#define CERNLIB_HPLOT_HPL13_INC
*
*
* hpl13.inc
*
*CMZ :          09/11/95  17.18.57  by  O.Couet
*-- Author :
      PARAMETER (NOPT=6)
      COMMON/HPL13/IOPT(NOPT),IHOPT(6),IDZB,IDZK,LIPTOL,LOSCAL
     +,            IOPTF,IOPT0,IOPTH
      LOGICAL LOSCAL
      EQUIVALENCE (IOPTS ,IOPT(1)),(IOPTU ,IOPT(2))
      EQUIVALENCE (IOPTK ,IOPT(3)),(IOPTP ,IOPT(4))
      EQUIVALENCE (IOPTE ,IOPT(5)),(IOPTA ,IOPT(6))
      EQUIVALENCE (IHOPTL ,IHOPT(1)),(IHOPTC ,IHOPT(2))
      EQUIVALENCE (IHOPTT ,IHOPT(3)),(IHOPTP ,IHOPT(4))
      EQUIVALENCE (IHOPTB ,IHOPT(5)),(IHOPTH,IHOPT(6))

#endif