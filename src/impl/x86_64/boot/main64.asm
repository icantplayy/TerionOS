global long_mode_start
extern kernel_main

section .text
bits 64


long_mode_start:

    ; load null into all data segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ;call os_play_sound

	call kernel_main
    hlt

os_play_sound:
    mov ax,0E07h
    xor bx,bx
    int 10h ;; BIOS beep