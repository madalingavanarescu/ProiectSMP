; Cerinte realizate:
;
; - program x86 pe 16 biti in EMU8086: 1p
; - SAU grafica simpla 3D: 3p
; - sunet: 1p
; - comentarii/indentare: 1p (2p pentru programe foarte bine documentate)
; - utilizare sistem de control al versiunilor (exemplu: mercurial, git): 1p 
; https://github.com/madalingavanarescu/ProiectSMP

jmp code
w equ 50            ; latime ajutatoare
h equ 50            ; inaltime ajutatoare
code: mov ah, 0
mov al, 13h         ; trecere in mod grafic 320x200
int 10h     

; afisare latura superioara fata casa
mov cx, 100+w       ; coloana
mov dx, 100         ; rand
mov al, 9           ; albastru
u1: mov ah, 0ch     ; afisare pixel
int 10h
dec cx              ; decrementare coloana 
cmp cx, 100         ; pana cand index-ul curent al coloanei e 100
jae u1          

; afisare latura inferioara fata casa
mov cx, 100+w      ; coloana
mov dx, 100+h      ; rand
mov al, 9          ; albastru
u2: mov ah, 0ch    ; afisare pixel
int 10h
dec cx             ; decrementare coloana
cmp cx, 100        ; pana cand index-ul curent al coloanei e 100
ja u2

; afisare latura din stanga fata casa
mov cx, 100        ; coloana
mov dx, 100+h      ; rand
mov al, 9          ; albastru
u3: mov ah, 0ch    ; afisare pixel
int 10h
dec dx             ; decrementare rand
cmp dx, 100        ; pana cand index-ul curent al randului e 100
ja u3   

; afisare latura din dreapta fata casa
mov cx, 100+w      ; coloana
mov dx, 100+h      ; rand
mov al, 9          ; albastru
u4: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx             ; decrementare rand
cmp dx, 100        ; pana cand index-ul curent al randului e 100
ja u4   

; afisare latura diagonala dreapta lateral casa
mov cx, 100+w      ; coloana
mov dx, 100+h      ; rand
mov al, 9          ; albastru
u5: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx             ; decrementare rand
inc cx             ; incrementare coloana
cmp dx, 125        ; pana cand index-ul curent al randului e 125
ja u5

; afisare latura verticala dreapta spate lateral casa
mov cx, 175        ; coloana
mov dx, 125        ; rand
mov al, 9          ; albastru
u6: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx             ; decrementare rand
cmp dx, 75         ; pana cand index-ul curent al randului e 75
ja u6

; afisare latura diagonala dreapta 3d plafon
mov cx, 100+w      ; coloana
mov dx, 100        ; rand
mov al, 9          ; albastru
u7: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx             ; decrementare rand
inc cx             ; incrementare coloana
cmp dx, 75         ; pana cand index-ul curent al randului e 75
ja u7

; afisare latura diagonala stanga 3d plafon
mov cx, 100        ; coloana
mov dx, 100        ; rand
mov al, 9          ; albastru
u8: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx             ; decrementare rand
inc cx             ; decrementare coloana
cmp dx, 75         ; pana cand index-ul curent al randului e 75
ja u8

; afisare latura superioara plafon
mov cx, 175         ; coloana
mov dx, 75          ; rand
mov al, 9           ; albastru
u9: mov ah, 0ch     ; afisare pixel
int 10h
dec cx              ; decrementare coloana
cmp cx, 125         ; pana cand index-ul curent al coloanei e 125
jae u9                           

; afisare latura diagonala din dreapta fata acoperis
mov cx, 100+w       ; coloana
mov dx, 100         ; rand
mov al, 10          ; verde
u10: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
dec dx              ; decrementare rand
dec cx              ; decrementare coloana
cmp dx, 50          ; pana cand index-ul curent al randului e 50
ja u10    


; afisare latura diagonala din stanga fata acoperis
mov cx, 100         ; coloana
mov dx, 100         ; rand
mov al, 10          ; verde
u11: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
dec dx              ; decrementare rand
inc cx              ; decrementare coloana
cmp dx, 50          ; pana cand index-ul curent al randului e 50
ja u11

; afisare latura diagonala din dreapta spate acoperis
mov cx, 175         ; coloana
mov dx, 75          ; rand
mov al, 10          ; verde
u12: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
dec cx              ; decrementare coloana
dec cx              ; decrementare coloana
cmp dx, 50          ; pana cand index-ul curent al randului e 50
ja u12        

; afisare latura din stanga spate acoperis
mov cx, 125         ; coloana
mov dx, 75          ; rand
mov al, 10          ; verde
u13: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
cmp dx, 50          ; pana cand index-ul curent al randului e 50
ja u13

; afisare latura din stanga usa
mov cx, 120         ; coloana
mov dx, 150         ; rand
mov al, 5           ; violet
u14: mov ah, 0ch    ; afisare pixel
int 10h
dec dx              ; decrementare rand
cmp dx, 130         ; pana cand index-ul curent al randului e 130
ja u14   
 
; afisare latura din dreapta usa
mov cx, 130         ; coloana
mov dx, 150         ; rand
mov al, 5           ; violet
u15: mov ah, 0ch    ; afisare pixel
int 10h
dec dx              ; decrementare rand
cmp dx, 130         ; pana cand index-ul curent al randului e 130
ja u15 

; afisare latura superioara usa
mov cx, 130         ; coloana
mov dx, 130         ; rand
mov al, 5           ; violet
u16: mov ah, 0ch    ; afisare pixel
int 10h
dec cx              ; decrementare coloana
cmp cx, 120         ; pana cand index-ul curent al coloanei e 120
jae u16   

; afisare latura orizontala clanta
mov cx, 124         ; coloana
mov dx, 140         ; rand
mov al, 15          ; alb
u17: mov ah, 0ch    ; afisare pixel
int 10h
dec cx              ; decrementare coloana
cmp cx, 120         ; pana cand index-ul curent al coloanei e 120
jae u17  

; afisare latura verticala clanta
mov cx, 124         ; coloana
mov dx, 144         ; rand
mov al, 15          ; alb
u18: mov ah, 0ch    ; afisare pixel
int 10h
dec dx              ; decrementare rand
cmp dx, 140         ; pana cand index-ul curent al randului e 140
ja u18

; afisare latura diagonala stanga podea
mov cx, 100         ; coloana
mov dx, 100+h       ; rand
mov al, 9           ; albastru
u19: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
inc cx              ; incrementare coloana
cmp dx, 125         ; pana cand index-ul curent al randului e 125
ja u19
                             
; afisare latura verticala stanga spate casa 
mov cx, 125         ; coloana
mov dx, 125         ; rand
mov al, 9           ; albastru
u20: mov ah, 0ch    ; afisare pixel
int 10h 
dec dx              ; decrementare rand
cmp dx, 75          ; pana cand index-ul curent al randului e 75
ja u20   

; afisare latura orizontala spate podea
mov cx, 175         ; coloana
mov dx, 125         ; rand
mov al, 9           ; alb
u22: mov ah, 0ch    ; afisare pixel
int 10h
dec cx              ; afisare coloana
cmp cx, 125         ; pana cand index-ul curent al coloanei e 125
jae u22                          

; redare sunet
mov dl, 07h         ; beep
mov ah, 2 
int 21h             ; reda sunetul

; asteptare apasare tasta 
mov ah,00 
int 16h
