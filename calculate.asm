section .data
    a db 5          ; визначити a
    b db 10         ; визначити b
    c db 3          ; визначити c
    result db 0     ; зарезервувати байт для результату

section .text
    global _start

_start:
    mov al, [b]      ; завантажити b в al
    sub al, [c]      ; відняти c від al
    add al, [a]      ; додати a до al
    mov [result], al ; зберегти результат в result

    ; Вихід з програми
    mov eax, 1       ; номер системного виклику для виходу
    int 0x80         ; переривання для виконання системного виклику

