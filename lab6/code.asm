ORG 0x040
X: WORD 0
MIN: WORD 0xFFD3 ; -45, минимальное значение X
MAX: WORD 0x0027 ; 39, максимальное значение X



ORG 0x000 ; Векторы прерываний
V0:     WORD $default, 0x180
V1:     WORD $default, 0x180
V2:     WORD $int2, 0x180 ; ВУ-2 - побитовое И-НЕ
V3:     WORD $int3, 0x180 ; ВУ-3 - -3X - 9
V4:     WORD $default, 0x180
V5:     WORD $default, 0x180
V6:     WORD $default, 0x180
V7:     WORD $default, 0x180

default: IRET

; Основная программа
ORG 0x100
START:  DI ; Запрет прерываний
CLA
LD #0xA ; Разрешить прерывания для ВУ-2 (MR=1000|0010=1010=A)
OUT 5
LD #0xB ; Разрешить прерывания для ВУ-3 (MR=1000|0011=1011=B)
OUT 7
EI ; Разрешить прерывания глобально

main:   DI
LD $X
NOP
SUB #2
CALL $check
ST $X
EI
JUMP main

; Проверка на ОДЗ
check:
CMP $MIN
BNS set_max
CMP $MAX
BNS RETURN
set_max: LD $MAX
RETURN: RET


; Обработка прерывания ОТ ВУ-3 (F(X) = -3X - 9)
int3:
LD $X
NOP
ASL ; *2
ADD $X ; X*3
NEG ; -3X
ADD #-9
OUT 6 ; ВУ-3
NOP
IRET

; Обработка прерывания ОТ ВУ-2 (X := X AND (NOT DR))
int2:   NOP
IN 4 ; DR из ВУ-2
NOT
AND $X
CALL $check
ST $X
IRET


