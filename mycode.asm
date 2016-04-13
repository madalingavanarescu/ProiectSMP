jmp code
w equ 50 ; dimensiune dreptunghi
h equ 50
code: mov ah, 0
mov al, 13h ; trecere in mod grafic 320x200
int 10h
; afisare latura superioara
mov cx, 100+w ; coloana
mov dx, 100 ; rand
mov al, 5 ; alb
u1: mov ah, 0ch ; afisare pixel
int 10h
dec cx
cmp cx, 100
jae u1
; afisare latura inferioare
mov cx, 100+w
mov dx, 100+h
mov al, 15
u2: mov ah, 0ch
int 10h
dec cx
cmp cx, 100
ja u2
; latura din stanga
mov cx, 100
mov dx, 100+h
mov al, 15
u3: mov ah, 0ch
int 10h
dec dx
cmp dx, 100
ja u3   
; latura din dreapta
mov cx, 100+w
mov dx, 100+h
mov al, 15        
u4: mov ah, 0ch 
int 10h 
dec dx 
cmp dx, 100 
ja u4   
; latura diagonala dreapta
mov cx, 100+w
mov dx, 100+h
mov al, 15        
u5: mov ah, 0ch 
int 10h 
dec dx 
inc cx 
cmp dx, 125
ja u5

; latura dreapta 3d
mov cx, 175
mov dx, 125
mov al, 15        
u6: mov ah, 0ch 
int 10h 
dec dx 
cmp dx, 75 
ja u6
; latura diagonala dreapta 3d
mov cx, 100+w
mov dx, 100
mov al, 15        
u7: mov ah, 0ch 
int 10h 
dec dx 
inc cx 
cmp dx, 75
ja u7

; latura diagonala dreapta 3d
mov cx, 100
mov dx, 100
mov al, 15        
u8: mov ah, 0ch 
int 10h 
dec dx 
inc cx 
cmp dx, 75
ja u8

; afisare latura superioara
mov cx, 175 ; coloana
mov dx, 75; rand
mov al, 5 ; alb
u9: mov ah, 0ch ; afisare pixel
int 10h
dec cx
cmp cx, 125
jae u9
; latura diagonala dreapta 3d
mov cx, 100+w
mov dx, 100
mov al, 15        
u10: mov ah, 0ch 
int 10h 
dec dx  
dec dx  
dec cx 
cmp dx, 50
ja u10    


; latura diagonala dreapta 3d
mov cx, 100         ;coloana
mov dx, 100           ;rand
mov al, 15        
u11: mov ah, 0ch 
int 10h 
dec dx  
dec dx   
inc cx 
cmp dx, 50
ja u11

; latura diagonala dreapta 3d
mov cx, 175         ;coloana
mov dx, 75           ;rand
mov al, 15        
u12: mov ah, 0ch 
int 10h 
dec dx     
dec cx
dec cx   
cmp dx, 50
ja u12
; latura din dreapta
mov cx, 125
mov dx, 75
mov al, 15        
u13: mov ah, 0ch 
int 10h 
dec dx 
cmp dx, 50 
ja u13

; latura usa din stanga
mov cx, 120
mov dx, 150
mov al, 15
u14: mov ah, 0ch
int 10h
dec dx
cmp dx, 130
ja u14   
 
; latura usa din dreapta
mov cx, 130
mov dx, 150
mov al, 15
u15: mov ah, 0ch
int 10h
dec dx
cmp dx, 130
ja u15 

; afisare latura superioara
mov cx, 130 ; coloana
mov dx, 130 ; rand
mov al, 5 ; alb
u16: mov ah, 0ch ; afisare pixel
int 10h
dec cx
cmp cx, 120
jae u16   

; afisare latura superioara
mov cx, 124 ; coloana
mov dx, 140 ; rand
mov al, 5 ; alb
u17: mov ah, 0ch ; afisare pixel
int 10h
dec cx
cmp cx, 120
jae u17  

; latura usa din dreapta
mov cx, 124
mov dx, 144
mov al, 15
u18: mov ah, 0ch
int 10h
dec dx
cmp dx, 140
ja u18

;sunet
mov dl, 07h
mov ah, 2 
int 21h ;produce sunetul

; asteptare apasare tasta 
mov ah,00 
int 16h
