ORG   0x148
STR:    WORD 0x0595
POINTER: WORD ?
COUNT:  WORD ?

START: CLA

GET_LEN:
    IN  0x05
    AND #0x40
    BEQ GET_LEN
    IN  0x04
    ST  COUNT
    LD  STR
    ST  POINTER
    LD COUNT
    BEQ PHLT
    ST  (POINTER)+


    
S1: 
    IN  0x05
    AND #0x40
    BEQ S1
    IN  0x04    
    ST (POINTER)            
    LD  COUNT
    DEC
    BEQ PHLT
    ST  COUNT
S2:
    IN  0x05
    AND #0x40
    BEQ S2
    LD (POINTER)
    SWAB
    IN  0x04
    SWAB
    ST  (POINTER)+
    LD  COUNT
    DEC
    ST  COUNT
    BEQ PHLT
    JUMP S1

PHLT: HLT

ORG 0x0595
WORD ?
