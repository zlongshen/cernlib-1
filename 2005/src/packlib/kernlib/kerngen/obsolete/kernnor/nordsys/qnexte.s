*
* $Id: qnexte.s,v 1.1.1.1 1996/02/15 17:54:51 mclareni Exp $
*
* $Log: qnexte.s,v $
* Revision 1.1.1.1  1996/02/15 17:54:51  mclareni
* Kernlib
*
*
       MODULE M_QNEXTE
%
% CERN PROGLIB# Z041    QNEXTE          .VERSION KERNNOR  2.01  840816
% ORIG.  W.JANK, CERN, 811104
%
       EXPORT QNEXTE
       ROUTINE QNEXTE
       LIB QNEXTE
       IMPORT-P QNEXT
VBAS:  STACK FIXED
RETADD: W BLOCK 1
BPREV:  W BLOCK 1
       ENDSTACK
QNEXTE:  ENTF VBAS
       W TEST B.BPREV          %FIRST CALL
       IF=GO FIRST             %YES, INITIALISE
       W MOVE B.RETADD,B.4     %SET RET.ADDRESS
       W MOVE B.BPREV,B.0      %AND PREVIOUS B
       CALL QNEXT,0            %CALL ROUTINE WITH NO ARGS.
       RET                     %RETURN
FIRST: W MOVE B.4,B.RETADD     %INIT. RETURN ADDR.
       W MOVE B.0,B.BPREV      %INIT. PREVIOUS B
       CALL QNEXT,0            %CALL ROUTINE WITH NO ARGS.
       RET
       ENDROUTINE
       ENDMODULE
#ifdef CERNLIB_TCGEN_QNEXTE
#undef CERNLIB_TCGEN_QNEXTE
#endif
