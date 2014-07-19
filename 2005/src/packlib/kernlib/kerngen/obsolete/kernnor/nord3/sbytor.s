*
* $Id: sbytor.s,v 1.1.1.1 1996/02/15 17:54:50 mclareni Exp $
*
* $Log: sbytor.s,v $
* Revision 1.1.1.1  1996/02/15 17:54:50  mclareni
* Kernlib
*
*
       MODULE M_SBYTOR
%
% CERN PROGLIB# M421    SBYTOR          .VERSION KERNNOR  1.01  800718
% ORIG.  H.OVERAS, CERN, 791213
%
% CALL SBYTOR(IM,XM,J,NBIT)    SET LOGICAL OR OF BYTES
%
       EXPORT SBYTOR
       ROUTINE SBYTOR
       LIB SBYTOR
VBAS:  STACK FIXED
PAR:   W BLOCK 4
       ENDSTACK
SBYTOR:  ENTF VBAS
       W2:=IND(B.PAR+8)
       W2-1
       W3:=IND(B.PAR+12)
       W1 GETBF IND(B.PAR+4),BY2,BY3
       W4:=R1
       W4 OR IND(B.PAR)
       W4 PUTBF IND(B.PAR+4),BY2,BY3
       RET
       ENDROUTINE
       ENDMODULE
#ifdef CERNLIB_TCGEN_SBYTOR
#undef CERNLIB_TCGEN_SBYTOR
#endif
