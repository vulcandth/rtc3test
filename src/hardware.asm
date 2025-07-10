; Mostly taken from hardware.inc (https://github.com/gbdev/hardware.inc)

DEF rJOYP EQU $FF00
DEF rDIV  EQU $FF04
DEF rTIMA EQU $FF05
DEF rTMA  EQU $FF06
DEF rTAC  EQU $FF07
DEF rIF   EQU $FF0F
DEF rNR52 EQU $FF26
DEF rLCDC EQU $FF40
DEF rSCY  EQU $FF42
DEF rSCX  EQU $FF43
DEF rBGP  EQU $FF47
DEF rVBK  EQU $FF4F
DEF rBCPS EQU $FF68
DEF rBCPD EQU $FF69
DEF rIE   EQU $FFFF

; MBC3 constants

DEF rRAMG EQU $0000
DEF rRAMB EQU $4000
DEF rRTCL EQU $6000 ; no standard name... hardware.inc only cares about MBC5 :(

; there's no sensible prefix for these, so just leave them unprefixed as the constants they are
DEF RTCS  EQU 8
DEF RTCM  EQU 9
DEF RTCH  EQU 10
DEF RTCDL EQU 11
DEF RTCDH EQU 12
