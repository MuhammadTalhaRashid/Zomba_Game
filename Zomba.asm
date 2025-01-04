INCLUDE Irvine32.inc
includelib Winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data
comment @
    ;SOUNDS
    deviceConnect BYTE "DeviceConnect",0

    SND_ALIAS    DWORD 00010000h
    SND_RESOURCE DWORD 00040005h
    SND_FILENAME DWORD 00002000h

    file BYTE "movement.wav",0
    fruitfile db "fruity.wav",0
    death db  "death.wav",0
    gameOvertrack db "gameover.wav",0
    explosion db "explode.wav",0
@
    
PACMAN_ART     db '                  ________  ___   ___  _____ ______   ________  ________      ',13,10
                       db '                                   / /\  \\ \  \|\   _ \  _   \|\   __  \|\   __  \    ',13,10
                       db '                                  /  \ \  \\ \  \ \  \\\__\ \  \ \  \|\  \ \  \|\  \   ',13,10
                       db '                                 /    \ \  \\ \  \ \  \\|__| \  \ \   __  \ \   __  \  ',13,10
                       db '                                /      \ \  \\ \  \ \  \    \ \  \ \  \|\  \ \  \ \  \ ',13,10
                       db '                               /        \ \  \\_\  \ \__\    \ \__\ \_______\ \__\ \__\',13,10
                       db '                              /________  \|________|\|__|     \|__|\|_______|\|__|\|__|',13,10
                       db '                                                                                  ',13,10
               db 0                                                      
         


                                                                      
START             DB '                                               ___ ___ ___ ___ ___   ',13,10
                  DB '                                              / __|_ _| . | . |_ _|  ',13,10
                  DB '                                              \__ \| ||   |   /| |   ',13,10
                  DB '                                              <___/|_||_|_|_\_\|_|   ',13,10
                  DB 0   

INSTRUCTIONS    DB '                                     _ _ _ ___ ___ ___ _ _ ___ ___ _ ___ _ _ ___ ',13,10
                DB '                                    | | \ / __|_ _| . | | |  _|_ _| | . | \ / __>',13,10
                DB '                                    | |   \__ \| ||   |   | <__| || | | |   \__ \',13,10
                DB '                                    |_|_\_<___/|_||_\_`___`___/|_||_`___|_\_<___/',13,10
                DB 0
            
EXITED           DB '                                                  _____  _ _ ___   ',13,10
                 DB '                                                 | __\ \/ | |_ _|  ',13,10
                 DB '                                                 | _> \ \ | || |   ',13,10
                 DB '                                                 |____/\_\|_||_|   ',13,10
                 DB 0
                                           
 POINTER            DB'  <<<<<<<<<<<<<<<<   ',13,10
                    DB 0

pauseScreen         db'                 $$$$$$$\  $$$$$$$$\  $$$$$$\  $$\   $$\ $$\      $$\ $$$$$$$$\ ',13,10
                    db'                 $$  __$$\ $$  _____|$$  __$$\ $$ |  $$ |$$$\    $$$ |$$  _____|',13,10
                    db'                 $$ |  $$ |$$ |      $$ /  \__|$$ |  $$ |$$$$\  $$$$ |$$ |      ',13,10
                    db'                 $$$$$$$  |$$$$$\    \$$$$$$\  $$ |  $$ |$$\$$\$$ $$ |$$$$$\    ',13,10
                    db'                 $$  __$$< $$  __|    \____$$\ $$ |  $$ |$$ \$$$  $$ |$$  __|   ',13,10
                    db'                 $$ |  $$ |$$ |      $$\   $$ |$$ |  $$ |$$ |\$  /$$ |$$ |      ',13,10
                    db'                 $$ |  $$ |$$$$$$$$\ \$$$$$$  |\$$$$$$  |$$ | \_/ $$ |$$$$$$$$\ ',13,10
                    db'                 \__|  \__|\________| \______/  \______/ \__|     \__|\________|',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                             $$$$$$$$\ $$\   $$\ $$$$$$\ $$$$$$$$\              ',13,10
                    db'                             $$  _____|$$ |  $$ |\_$$  _|\__$$  __|             ',13,10
                    db'                             $$ |      \$$\ $$  |  $$ |     $$ |                ',13,10
                    db'                             $$$$$\     \$$$$  /   $$ |     $$ |                ',13,10
                    db'                             $$  __|    $$  $$<    $$ |     $$ |                ',13,10
                    db'                             $$ |      $$  /\$$\   $$ |     $$ |                ',13,10
                    db'                             $$$$$$$$\ $$ /  $$ |$$$$$$\    $$ |                ',13,10
                    db'                             \________|\__|  \__|\______|   \__|                ',13,10
                    db 0

INSTRUCTIONS_SCREEN             db'Controls:                                                                                        ',13,10
                               db'                                                                                                 ',13,10
                               db' 1-Use the (a and d) to change the direction of stricker.                                           ',13,10
                               db' 2-Destroy all the balls to advance to the next level.                             ',13,10
                               db'                                                                                                 ',13,10
                               db' Gameplay:                                                                                       ',13,10
                               db'                                                                                                 ',13,10
                               db' 1-Pac-Man moves through the maze, consuming dots along the way.                                 ',13,10
                               db' 2-Avoid contact with the ghosts; they will try to catch Pac-Man.                                ',13,10
                               db' 3-Eating a power pellet turns the ghosts blue, allowing Pac-Man to eat them for a limited time. ',13,10
                               db' 4-Eating fruits for extra points may appear at certain times in the maze.                       ',13,10
                               db'                                                                                                 ',13,10
                               db' Scoring:                                                                                        ',13,10
                               db'                                                                                                 ',13,10
                               db' 1-Each ball destroyed earns points.                                                               ',13,10
                               db' 2-Bonus points are awarded for completing a level.                                              ',13,10
                               db'                                                                                                 ',13,10
                               db' Game Over:                                                                                      ',13,10
                               db'                                                                                                 ',13,10
                               db' 1-If balls reach the end hole, a life is lost.            ',13,10
                               db' 2-Losing all lives ends the game. You have three lives to start.                                ',13,10
                               db 0
                               
 gameOverScreen   db'                    ______        ______  _______     _____  _    _ _______ ______                                    ',13,10
                  db'                   / _____)  /\  |  ___ \(_______)   / ___ \| |  | (_______(_____ \                                    ',13,10
                  db'                  | /  ___  /  \ | | _ | |_____     | |   | | |  | |_____   _____) )                                   ',13,10
                  db'                  | | (___)/ /\ \| || || |  ___)    | |   | |\ \/ /|  ___) (_____ (                                    ',13,10
                  db'                  | \____/| |__| | || || | |_____   | |___| | \  / | |_____      | |                                   ',13,10
                  db'                   \_____/|______|_||_||_|_______)   \_____/   \/  |_______)     |_|                                   ',13,10
                  db 0                                            
                  
                         

menuSelect db 1

ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0
ground3 db '_',0

hConsole HANDLE 0            ; Handle for the console

x db 0
y db 0

strScore BYTE "Your score is: ",0
score db 105

inputChar BYTE ?

prompt1 db "Enter your name:",0
names db 20 dup (32)
strName db "Name: ",0
pathMsg1 db "Welcome to Zumba: Level 1 - Color Cascade!", 0

                                        ;Lives
livesString db "Lives:",0
lives3 db "$$$",0
lives2 db "$$",0
lives1 db "$",0
lives db 3

                                        ;STRICKER
stricker db '@'
Xstricker db 40
Ystricker db 12
strickerDirection db 0
directionX db -1, -1, 0, 1, 1, 1, 0, -1, 0
directionY db 0, 1, 1, 1, 0, -1, -1, -1, 0

                                        ;Paths
                    ; Define positions for a circular path (Level 1)
ballPositionsx1 db 35 dup (-1)
ballPositionsy1 db 35 dup (-1)
pathPositionsx1 db 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 0 ; (x-coordinates)
pathPositionsy1 db 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 0; (y-coordinates)
pathLength1 db 30
endPointX1 db 50
endPointY1 db 10
noOfBalls1 db 35
ballColors1 db 35 DUP(0)
                    ; Define positions for a spiral path (Level 2)
ballPositionsx2 db 35 dup (-1)
ballPositionsy2 db 35 dup (-1)
pathPositionsx2 db 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 0 ; (x-coordinates)
pathPositionsy2  db 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 0 ; (y-coordinates)
pathLength2 db 30
endPointX2 db 50
endPointY2 db 14
noOfBalls2 db 35
ballColors2 db 35 DUP(0)
                    ; Define positions for an S-curve path (Level 3)
ballPositionsx3 db 45 dup (-1)
ballPositionsy3 db 45 dup (-1)
pathPositionsx3 db 21, 22, 23, 24, 25, 26, 27, 26, 25, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 46, 45, 44, 45, 46, 47, 48, 49, 50, 0 ; (x-coordinates)
pathPositionsy3  db 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 0 ; (y-coordinates)
pathLength3 db 42
endPointX3 db 50
endPointY3 db 11
noOfBalls3 db 45
ballColors3 db 45 DUP(0)

colorCodes db 1, 2, 3, 4, 5 ; Color codes (1 = Red, 2 = blue, etc)

                                        ;Level
level db 1

                                        ;Fired Balls
firedBalls db 10 DUP(0)         ; Array to track fired balls (X, Y positions)
firedBallColors db 5 DUP(0)    ; Colors of the fired balls
firedBallDirections db 5 DUP(0) ; Directions of fired balls
firedCount db 0               ; Number of active fired balls


                                        ;FileHandling
filename1 db "scores.txt", 0      ; File name (null-terminated)
buffer1 db 1024 dup(?)           ; File content buffer
names1 db 100 dup(20 dup(?))     ; Stores up to 100 names (20 bytes each)
scores1 db 100 dup(?)            ; Stores up to 100 scores (1 byte each)
tempName1 db 20 dup(?)           ; Temporary storage for name swapping


.code

                                        ; Procedure to render balls on the path
GenerateBallColors PROC
    ; Input: Array of ball colors, ball count
    ; Output: BallColors array is populated with random colors

GenerateColorLoop:
    call RandomRange       ; Generate a random number
    mov ebx, 5             ; Number of available colors
    mov edx, 0
    idiv ebx               ; Random number in range [0, 4]
    add dl, 1              ; Map to range [1, 5]
    mov [esi], dl          ; Store color code
    inc esi                ; Move to next color
    cmp eax, 0
    jne nextt
        mov eax, esi
    nextt:
    loop GenerateColorLoop

    ret
GenerateBallColors ENDP


ResetColor PROC
    mov al, 07              ; Default text attribute
    call SetTextColor
    ret
ResetColor ENDP



SetRedColour PROC
    mov al, 4          ; 4 = Red text color (standard DOS color)
    call SetTextColor   ; Call Irvine32 procedure to set text color
    ret
SetRedColour ENDP

SetBlueColour PROC
    mov al, 1          ; 1 = Blue text color
    call SetTextColor
    ret
SetBlueColour ENDP

SetGreenColour PROC
    mov al, 2          ; 2 = Green text color
    call SetTextColor
    ret
SetGreenColour ENDP

SetYellowColour PROC
    mov al, 14         ; 14 = Yellow text color
    call SetTextColor
    ret
SetYellowColour ENDP

SetMagentaColour PROC
    mov al, 5          ; 5 = Magenta text color
    call SetTextColor
    ret
SetMagentaColour ENDP



DrawPath PROC
    ; Draws the path with white circles

PathDrawLoop:
    mov al, [esi]                   ; Get X-coordinate
    mov ah, [edi]                   ; Get Y-coordinate

    ; Move cursor to position (X, Y)
    mov dx, ax
    call Gotoxy

    ; Draw a white circle for the path
    mov eax, 0
    mov al, 'O'                     ; Represent a path position as 'O'
    call WriteChar                  ; Write character to the screen

    ; Move to the next path position
    inc esi
    inc edi
    loop PathDrawLoop

    ; Draw the endpoint (red point)
    mov al, bl
    mov ah, bh
    mov dx, ax
    call Gotoxy
    mov eax, 0
    mov al, 'X'                     ; Represent the endpoint
    call WriteChar

    ret
DrawPath ENDP




SetColorByBall PROC
    mov dl, [ebx]             ; Get ball's color code
    cmp dl, 1
    je SetRedColor
    cmp dl, 2
    je SetBlueColor
    cmp dl, 3
    je SetGreenColor
    cmp dl, 4
    je SetYellowColor
    cmp dl, 5
    je SetMagentaColor

    SetRedColor:
    call SetRedColour          ; Apply red color
    jmp DrawBall
SetBlueColor:
    call SetBlueColour         ; Apply blue color
    jmp DrawBall
SetGreenColor:
    call SetGreenColour        ; Apply green color
    jmp DrawBall
SetYellowColor:
    call SetYellowColour       ; Apply yellow color
    jmp DrawBall
SetMagentaColor:
    call SetMagentaColour      ; Apply magenta color

    DrawBall:
    ret
SetColorByBall ENDP


                                        ; Procedure to move balls along the path
MoveBalls1 PROC
    ; Moves all preexisting balls one step, introduces a new ball if needed, and displays all balls

    ; Load path, ball positions, and colors
    mov esi, OFFSET ballPositionsx1  ; Address of x-coordinates
    mov edi, OFFSET ballPositionsy1  ; Address of y-coordinates
    movzx ecx, noOfBalls1            ; Number of balls (outer loop counter)

    ; Step 1: Move all preexisting balls
MoveExistingBalls:
    mov bl, [esi]                    ; Get current x-coordinate
    cmp bl, -1                       ; Skip invalid balls
    je SkipBallMovement
    mov bh, [edi]                    ; Get current y-coordinate

    ; Initialize path pointers
    mov edx, OFFSET pathPositionsx1  ; Path x-coordinates
    mov ebp, OFFSET pathPositionsy1  ; Path y-coordinates
    movzx eax, pathLength1           ; Length of the path (inner loop counter)

FindNextPosition:
    cmp eax, 0                       ; Check bounds of the path
    je WrapPath
    cmp bl, [edx]                       ; Match current ball x with path x
    jne CheckNextPosition
    cmp bh, [ebp]                       ; Match current ball y with path y
    jne CheckNextPosition

    ; Move to the next path position
    add edx, 1                       ; Next path x-coordinate
    add ebp, 1                       ; Next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp UpdatePosition               ; Found the next position

CheckNextPosition:
    add edx, 1                       ; Advance to next path x-coordinate
    add ebp, 1                       ; Advance to next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp FindNextPosition             ; Continue searching

WrapPath:
    ; Wrap around to the start of the path
    mov edx, OFFSET pathPositionsx1
    mov ebp, OFFSET pathPositionsy1

UpdatePosition:
    mov bl, [edx]
    mov [esi], bl                    ; Update ball x-coordinate
    mov bl, [ebp]
    mov [edi], bl                    ; Update ball y-coordinate
    jmp SkipBallMovement             ; Continue to next ball

SkipBallMovement:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    dec ecx                          ; Decrement ball count
    jnz MoveExistingBalls

    ; Step 2: Introduce a new ball (if less than noOfBalls1)
IntroduceNewBall:
    mov esi, OFFSET ballPositionsx1  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy1  ; Reset y-coordinates
    lea ebx, ballColors1             ; Reset ballColors1

    ; Find the first empty slot
    movzx ecx, noOfBalls1
FindEmptySlot:
    mov al, [esi]
    cmp al, -1                       ; Check for empty slot
    je PlaceNewBall
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color slot
    loop FindEmptySlot
    jmp RenderBalls                  ; No empty slot found

PlaceNewBall:
    mov al, [pathPositionsx1]        ; Start x-coordinate
    mov ah, [pathPositionsy1]        ; Start y-coordinate
    mov [esi], al                    ; Set x-coordinate
    mov [edi], ah                    ; Set y-coordinate

    ; Assign a random color (e.g., hardcoded for now)
    ; mov dl, 1                      ; Example: Always red color for now
    ; mov [ebx], dl                  ; Set the color

    ; Step 3: Render all valid balls
RenderBalls:
    mov esi, OFFSET ballPositionsx1  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy1  ; Reset y-coordinates
    lea ebx, ballColors1             ; Reset ballColors1
    movzx ecx, noOfBalls1            ; Reset ball count

RenderLoop:
    mov al, [esi]                    ; Get x-coordinate
    cmp al, -1                       ; Skip invalid balls
    je SkipRender
    mov ah, [edi]                    ; Get y-coordinate

    ; Move to the position of the ball
    mov dx, ax
    call Gotoxy

    ; Draw the ball with its color
    mov dl, [ebx]                    ; Get the ball's color
    call SetColorByBall              ; Apply the color
    mov al, 'O'                      ; Ball representation
    call WriteChar
    call ResetColor                  ; Reset the color

SkipRender:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color
    loop RenderLoop

    ret
MoveBalls1 ENDP



MoveBalls2 PROC
    ; Moves all preexisting balls one step, introduces a new ball if needed, and displays all balls

    ; Load path, ball positions, and colors
    mov esi, OFFSET ballPositionsx2  ; Address of x-coordinates
    mov edi, OFFSET ballPositionsy2  ; Address of y-coordinates
    movzx ecx, noOfBalls2            ; Number of balls (outer loop counter)

    ; Step 1: Move all preexisting balls
MoveExistingBalls:
    mov bl, [esi]                    ; Get current x-coordinate
    cmp bl, -1                       ; Skip invalid balls
    je SkipBallMovement
    mov bh, [edi]                    ; Get current y-coordinate

    ; Initialize path pointers
    mov edx, OFFSET pathPositionsx2  ; Path x-coordinates
    mov ebp, OFFSET pathPositionsy2  ; Path y-coordinates
    movzx eax, pathLength2           ; Length of the path (inner loop counter)

FindNextPosition:
    cmp eax, 0                       ; Check bounds of the path
    je WrapPath
    cmp bl, [edx]                       ; Match current ball x with path x
    jne CheckNextPosition
    cmp bh, [ebp]                       ; Match current ball y with path y
    jne CheckNextPosition

    ; Move to the next path position
    add edx, 1                       ; Next path x-coordinate
    add ebp, 1                       ; Next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp UpdatePosition               ; Found the next position

CheckNextPosition:
    add edx, 1                       ; Advance to next path x-coordinate
    add ebp, 1                       ; Advance to next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp FindNextPosition             ; Continue searching

WrapPath:
    ; Wrap around to the start of the path
    mov edx, OFFSET pathPositionsx2
    mov ebp, OFFSET pathPositionsy2

UpdatePosition:
    mov bl, [edx]
    mov [esi], bl                    ; Update ball x-coordinate
    mov bl, [ebp]
    mov [edi], bl                    ; Update ball y-coordinate
    jmp SkipBallMovement             ; Continue to next ball

SkipBallMovement:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    dec ecx                          ; Decrement ball count
    jnz MoveExistingBalls

    ; Step 2: Introduce a new ball (if less than noOfBalls1)
IntroduceNewBall:
    mov esi, OFFSET ballPositionsx2  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy2  ; Reset y-coordinates
    lea ebx, ballColors2             ; Reset ballColors1

    ; Find the first empty slot
    movzx ecx, noOfBalls2
FindEmptySlot:
    mov al, [esi]
    cmp al, -1                       ; Check for empty slot
    je PlaceNewBall
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color slot
    loop FindEmptySlot
    jmp RenderBalls                  ; No empty slot found

PlaceNewBall:
    mov al, [pathPositionsx2]        ; Start x-coordinate
    mov ah, [pathPositionsy2]        ; Start y-coordinate
    mov [esi], al                    ; Set x-coordinate
    mov [edi], ah                    ; Set y-coordinate

    ; Assign a random color (e.g., hardcoded for now)
    ; mov dl, 1                      ; Example: Always red color for now
    ; mov [ebx], dl                  ; Set the color

    ; Step 3: Render all valid balls
RenderBalls:
    mov esi, OFFSET ballPositionsx2  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy2  ; Reset y-coordinates
    lea ebx, ballColors2             ; Reset ballColors1
    movzx ecx, noOfBalls2            ; Reset ball count

RenderLoop:
    mov al, [esi]                    ; Get x-coordinate
    cmp al, -1                       ; Skip invalid balls
    je SkipRender
    mov ah, [edi]                    ; Get y-coordinate

    ; Move to the position of the ball
    mov dx, ax
    call Gotoxy

    ; Draw the ball with its color
    mov dl, [ebx]                    ; Get the ball's color
    call SetColorByBall              ; Apply the color
    mov al, 'O'                      ; Ball representation
    call WriteChar
    call ResetColor                  ; Reset the color

SkipRender:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color
    loop RenderLoop

    ret
MoveBalls2 ENDP



MoveBalls3 PROC
    ; Moves all preexisting balls one step, introduces a new ball if needed, and displays all balls

    ; Load path, ball positions, and colors
    mov esi, OFFSET ballPositionsx3  ; Address of x-coordinates
    mov edi, OFFSET ballPositionsy3  ; Address of y-coordinates
    movzx ecx, noOfBalls3            ; Number of balls (outer loop counter)

    ; Step 1: Move all preexisting balls
MoveExistingBalls:
    mov bl, [esi]                    ; Get current x-coordinate
    cmp bl, -1                       ; Skip invalid balls
    je SkipBallMovement
    mov bh, [edi]                    ; Get current y-coordinate

    ; Initialize path pointers
    mov edx, OFFSET pathPositionsx3  ; Path x-coordinates
    mov ebp, OFFSET pathPositionsy3  ; Path y-coordinates
    movzx eax, pathLength3           ; Length of the path (inner loop counter)

FindNextPosition:
    cmp eax, 0                       ; Check bounds of the path
    je WrapPath
    cmp bl, [edx]                       ; Match current ball x with path x
    jne CheckNextPosition
    cmp bh, [ebp]                       ; Match current ball y with path y
    jne CheckNextPosition

    ; Move to the next path position
    add edx, 1                       ; Next path x-coordinate
    add ebp, 1                       ; Next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp UpdatePosition               ; Found the next position

CheckNextPosition:
    add edx, 1                       ; Advance to next path x-coordinate
    add ebp, 1                       ; Advance to next path y-coordinate
    dec eax                          ; Decrement remaining path positions
    jmp FindNextPosition             ; Continue searching

WrapPath:
    ; Wrap around to the start of the path
    mov edx, OFFSET pathPositionsx3
    mov ebp, OFFSET pathPositionsy3

UpdatePosition:
    mov bl, [edx]
    mov [esi], bl                    ; Update ball x-coordinate
    mov bl, [ebp]
    mov [edi], bl                    ; Update ball y-coordinate
    jmp SkipBallMovement             ; Continue to next ball

SkipBallMovement:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    dec ecx                          ; Decrement ball count
    jnz MoveExistingBalls

    ; Step 2: Introduce a new ball (if less than noOfBalls1)
IntroduceNewBall:
    mov esi, OFFSET ballPositionsx3  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy3  ; Reset y-coordinates
    lea ebx, ballColors3             ; Reset ballColors1

    ; Find the first empty slot
    movzx ecx, noOfBalls3
FindEmptySlot:
    mov al, [esi]
    cmp al, -1                       ; Check for empty slot
    je PlaceNewBall
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color slot
    loop FindEmptySlot
    jmp RenderBalls                  ; No empty slot found

PlaceNewBall:
    mov al, [pathPositionsx3]        ; Start x-coordinate
    mov ah, [pathPositionsy3]        ; Start y-coordinate
    mov [esi], al                    ; Set x-coordinate
    mov [edi], ah                    ; Set y-coordinate

    ; Assign a random color (e.g., hardcoded for now)
    ; mov dl, 1                      ; Example: Always red color for now
    ; mov [ebx], dl                  ; Set the color

    ; Step 3: Render all valid balls
RenderBalls:
    mov esi, OFFSET ballPositionsx3  ; Reset x-coordinates
    mov edi, OFFSET ballPositionsy3  ; Reset y-coordinates
    lea ebx, ballColors3             ; Reset ballColors1
    movzx ecx, noOfBalls3            ; Reset ball count

RenderLoop:
    mov al, [esi]                    ; Get x-coordinate
    cmp al, -1                       ; Skip invalid balls
    je SkipRender
    mov ah, [edi]                    ; Get y-coordinate

    ; Move to the position of the ball
    mov dx, ax
    call Gotoxy

    ; Draw the ball with its color
    mov dl, [ebx]                    ; Get the ball's color
    call SetColorByBall              ; Apply the color
    mov al, 'O'                      ; Ball representation
    call WriteChar
    call ResetColor                  ; Reset the color

SkipRender:
    inc esi                          ; Move to the next x-coordinate
    inc edi                          ; Move to the next y-coordinate
    inc ebx                          ; Move to the next color
    loop RenderLoop

    ret
MoveBalls3 ENDP




                                        ; Procedure to display the score
DisplayScore PROC
    mov edx, OFFSET strScore
    call Gotoxy
    call WriteString
    movzx ax, score
    call WriteDec
    ret
DisplayScore ENDP



RotateStriker PROC
    ; Input: AL = 1 (right arrow) or -1 (left arrow)
    ; Update `currentDirection`

    mov ah, strickerDirection
    add ah, al        ; Update direction
    cmp ah, 8         ; Wrap around clockwise (if > 315°)
    jl SkipWrapRight
    sub ah, 8
SkipWrapRight:
    cmp ah, 0         ; Wrap around counter-clockwise (if < 0°)
    jge SkipWrapLeft
    add ah, 8
SkipWrapLeft:
    mov strickerDirection, ah ; Store new direction
    ret
RotateStriker ENDP



RenderStriker PROC
    ; Clear the striker's previous position
    mov ecx, 8                     ; Number of parts to clear
    mov ebx, offset directionX     ; Pointer to X offsets
    mov esi, offset directionY     ; Pointer to Y offsets

clear1:
    mov dl, Xstricker              ; Get striker's center X
    add dl, [ebx]                  ; Add current offset X
    mov dh, Ystricker              ; Get striker's center Y
    add dh, [esi]                  ; Add current offset Y

    call Gotoxy                    ; Move cursor to the position
    mov eax, 0
    mov al, ' '                    ; Clear with a space
    call WriteChar

    inc ebx                        ; Move to the next X offset
    inc esi                        ; Move to the next Y offset
    loop clear1                    ; Repeat for all parts

    ; Calculate the head of the striker based on direction
    movzx eax, strickerDirection   ; Get striker's direction (0-7)
    mov ebx, offset directionX     ; Pointer to X offsets
    add ebx, eax                   ; Offset for X
    mov esi, offset directionY     ; Pointer to Y offsets
    add esi, eax                   ; Offset for Y

    ; Calculate head position
    mov dl, Xstricker              ; Get striker's center X
    add dl, [ebx]                  ; Add offset X for head
    mov dh, Ystricker              ; Get striker's center Y
    add dh, [esi]                  ; Add offset Y for head

    ; Move to striker head position and draw head
    call Gotoxy
    mov eax, 0
    mov al, '>'                    ; Striker head symbol
    call WriteChar

    ; Draw center of striker
    mov dl, Xstricker              ; Reset X to striker center
    mov dh, Ystricker              ; Reset Y to striker center
    call Gotoxy
    mov eax, 0
    mov al, '@'                    ; Center of striker
    call WriteChar

    ret
RenderStriker ENDP



CheckEndPoint PROC
    ; Check if any ball reached the endpoint
    ; Input: Ball positions stored in `ballPositionsx1` and `ballPositionsy1`
    ; Output: AL = 1 if a ball reached the endpoint, 0 otherwise

CheckBallLoop:
    mov al, [esi]              ; Ball X-coordinate
    cmp al, bl         ; Compare with endpoint X
    jne NextBall
    mov al, [edi]              ; Ball Y-coordinate
    cmp al, bh         ; Compare with endpoint Y
    jne NextBall

    mov al, 1                  ; Ball reached the endpoint
    ret

NextBall:
    inc esi                    ; Move to next X-coordinate
    inc edi                    ; Move to next Y-coordinate
    loop CheckBallLoop

    mov al, 0                  ; No ball reached the endpoint
    ret
CheckEndPoint ENDP



ResetBalls PROC
    ; Reset all balls to their initial positions

ResetLoop:
    mov al, -1
    mov [esi], al
    mov [edi], al

    inc esi
    inc edi

    dec edx                       ; Decrement counter
    jnz ResetLoop                 ; Repeat for all balls

    ret
ResetBalls ENDP



Paused PROC
        PauseMenu1:   
            call clrscr
            mov dl,30
            mov dh,20
            mov edx,offset pauseScreen
            call writestring
            call readchar
            cmp al,27
            mov lives, 0
            je exitGame
            cmp al,13
            jne PauseMenu1
            call clrscr

            exitGame:
            ret
Paused ENDP


GenerateFiredBall PROC
    ; Generate a random ball color and direction for firing
    mov eax, 5
    call RandomRange
    add al, 1                   ; Map to [1, 5] for color
    mov ah, al                  ; Store the random color

    ; Find the striker direction
    mov al, strickerDirection       ; Direction of striker
    mov esi, offset firedBallDirections
    movzx ebx, firedCount
    add esi, ebx
    mov [esi], al ; Assign direction

    ; Initialize the position of the fired ball
    mov esi, offset firedBalls
    add esi, ebx
    mov bl, Xstricker
    mov [esi], bl
    mov bl, Ystricker
    mov [esi + 5], bl

    ; Assign the color
    mov esi, offset firedBallColors
    movzx ebx, firedCount
    add esi, ebx
    mov [esi], ah

    ; Increment the count of active fired balls
    inc firedCount
    ret
GenerateFiredBall ENDP



DrawFiredBalls PROC
    ; Draw all fired balls that are active (coordinates not 0, 0)
    push esi                    ; Save registers
    push edi
    push ecx
    push ebx
    push edx

    mov esi, OFFSET firedBalls          ; Pointer to the firedBalls array (X-coordinates)
    mov edi, OFFSET firedBallColors     ; Pointer to the colors array

    movzx ecx, firedCount               ; Number of active fired balls
    cmp ecx, 0                          ; Check if there are any balls to draw
    jz EndDrawFiredBalls                ; Exit if no balls

DrawFiredBallLoop:
    ; Load X and Y coordinates of the current fired ball
    mov al, [esi]                       ; Load X-coordinate of the current fired ball
    mov ah, [esi + 5]                   ; Load Y-coordinate of the current fired ball

    ; Check if coordinates are not (0, 0)
    cmp al, 0                           ; Check if X-coordinate is 0
    je SkipFiredBall                    ; Skip drawing if X-coordinate is 0
    cmp ah, 0                           ; Check if Y-coordinate is 0
    je SkipFiredBall                    ; Skip drawing if Y-coordinate is 0

    ; Load the color of the current fired ball    
    push ax
    mov ebx, edi                        ; Set EBX to the pointer of the color array
    call SetColorByBall                 ; Set the color based on the ball's color code

    ; Draw the ball at the given coordinates (X = AL, Y = AH)
    pop ax
    mov dl, al
    mov dh, ah
    call Gotoxy
    mov eax, 0
    mov al, '*'                     ; Fired Ball representation
    call WriteChar
    call ResetColor                 ; Reset the color

SkipFiredBall:
    add esi, 1                          ; Move to the next ball's X-coordinate
    add edi, 1                          ; Move to the next ball's color

    loop DrawFiredBallLoop              ; Repeat for all fired balls

EndDrawFiredBalls:
    pop edx                             ; Restore registers
    pop ebx
    pop ecx
    pop edi
    pop esi
    ret

DrawFiredBalls ENDP




UpdateFiredBalls1 PROC
    ; Move all fired balls and handle collisions
    movzx ecx, firedCount         ; Loop through active fired balls
    cmp ecx, 0                            ; If no balls, skip
    jz EndFiredBallsUpdate

FiredBallLoop:
    mov esi, offset firedBalls           ; Pointer to the firedBalls array
    mov edi, offset firedBallColors      ; Pointer to the colors array

    mov edx, ecx
    dec edx                       ; edx = ecx - 1

    ; Load X and Y coordinates of the current fired ball
    mov al, [esi + edx]          ; X-coordinate of the fired ball
    mov ah, [esi + edx + 5]      ; Y-coordinate of the fired ball
    push edx

    ;clear previous fired balls from screen
    mov dl, al
    mov dh, ah
    call Gotoxy
    mov al, ' '
    call writeChar
    mov al, dl

    ; Load direction of the current fired ball
    movzx edx, [firedBallDirections + (ecx - 1)]
    
    add al, [directionX + edx]
    add ah, [directionY + edx]

    pop edx
    mov [esi + edx], al
    mov [esi + edx + 5], ah


CheckCollision:
    ; Check collision with balls on the path
    push ecx
    push edx
    mov esi, OFFSET ballPositionsX1
    mov edi, OFFSET ballPositionsY1
    mov ebx, OFFSET ballColors1

    movzx ecx, noOfBalls1
    cmp ecx, 0
    jz NoCollision

CollisionLoop:
    cmp al, [esi]
    jne SkipPathBall
    cmp ah, [edi]
    jne SkipPathBall
    mov edx, 0
    mov dl, [firedBallColors + (ecx - 1)]
    cmp dl, [ebx]
    jne addBall
    cmp dl, [ebx - 1]
    jne addBall
    cmp dl, [ebx + 1]
    jne addBall

    ; Collision detected
    add score, 5
    mov al, 0
    mov ah, -2
    mov [esi], ah
    mov [edi], ah
    mov [esi+1], ah
    mov [edi+1], ah
    mov [esi-1], ah
    mov [edi-1], ah

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision

    CollisionLoop1:
        jmp CollisionLoop

addBall:
    mov ecx, 0
    l1:
    inc ecx
    inc esi
    inc edi
    mov al, [esi]
    cmp al, -1
    jne l1

    l2:
    mov al, [esi-1]
    mov [esi], al
    mov al, [edi-1]
    mov [edi], al
    dec esi
    dec edi
    loop l2

    pop edx
    mov al, [firedBalls + edx]
    mov [esi], al
    mov al, [firedBalls + edx + 5] 
    mov [edi], al

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision
SkipPathBall:
    add esi, 1
    add edi, 1
    add ebx, 1
    loop CollisionLoop1
    pop edx

NoCollision:
    pop ecx

NextFiredBall:
    dec ecx
    jnz FiredBallLoop

EndFiredBallsUpdate:
    call DrawFiredBalls
    ret
UpdateFiredBalls1 ENDP



UpdateFiredBalls2 PROC
    ; Move all fired balls and handle collisions
    movzx ecx, firedCount         ; Loop through active fired balls
    cmp ecx, 0                            ; If no balls, skip
    jz EndFiredBallsUpdate

FiredBallLoop:
    mov esi, offset firedBalls           ; Pointer to the firedBalls array
    mov edi, offset firedBallColors      ; Pointer to the colors array

    mov edx, ecx
    dec edx                       ; edx = ecx - 1

    ; Load X and Y coordinates of the current fired ball
    mov al, [esi + edx]          ; X-coordinate of the fired ball
    mov ah, [esi + edx + 5]      ; Y-coordinate of the fired ball
    push edx

    ;clear previous fired balls from screen
    mov dl, al
    mov dh, ah
    call Gotoxy
    mov al, ' '
    call writeChar
    mov al, dl

    ; Load direction of the current fired ball
    movzx edx, [firedBallDirections + (ecx - 1)]
    
    add al, [directionX + edx]
    add ah, [directionY + edx]

    pop edx
    mov [esi + edx], al
    mov [esi + edx + 5], ah


CheckCollision:
    ; Check collision with balls on the path
    push ecx
    push edx
    mov esi, OFFSET ballPositionsX2
    mov edi, OFFSET ballPositionsY2
    mov ebx, OFFSET ballColors2

    movzx ecx, noOfBalls2
    cmp ecx, 0
    jz NoCollision

CollisionLoop:
    cmp al, [esi]
    jne SkipPathBall
    cmp ah, [edi]
    jne SkipPathBall
    mov edx, 0
    mov dl, [firedBallColors + (ecx - 1)]
    cmp dl, [ebx]
    jne addBall
    cmp dl, [ebx - 1]
    jne addBall
    cmp dl, [ebx + 1]
    jne addBall

    ; Collision detected
    add score, 5
    mov al, 0
    mov ah, -2
    mov [esi], ah
    mov [edi], ah
    mov [esi+1], ah
    mov [edi+1], ah
    mov [esi-1], ah
    mov [edi-1], ah

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision

    CollisionLoop1:
        jmp CollisionLoop

addBall:
    mov ecx, 0
    l1:
    inc ecx
    inc esi
    inc edi
    mov al, [esi]
    cmp al, -1
    jne l1

    l2:
    mov al, [esi-1]
    mov [esi], al
    mov al, [edi-1]
    mov [edi], al
    dec esi
    dec edi
    loop l2

    pop edx
    mov al, [firedBalls + edx]
    mov [esi], al
    mov al, [firedBalls + edx + 5] 
    mov [edi], al

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision
SkipPathBall:
    add esi, 1
    add edi, 1
    add ebx, 1
    loop CollisionLoop1
    pop edx

NoCollision:
    pop ecx

NextFiredBall:
    dec ecx
    jnz FiredBallLoop

EndFiredBallsUpdate:
    call DrawFiredBalls
    ret
UpdateFiredBalls2 ENDP



UpdateFiredBalls3 PROC
    ; Move all fired balls and handle collisions
    movzx ecx, firedCount         ; Loop through active fired balls
    cmp ecx, 0                            ; If no balls, skip
    jz EndFiredBallsUpdate

FiredBallLoop:
    mov esi, offset firedBalls           ; Pointer to the firedBalls array
    mov edi, offset firedBallColors      ; Pointer to the colors array

    mov edx, ecx
    dec edx                       ; edx = ecx - 1

    ; Load X and Y coordinates of the current fired ball
    mov al, [esi + edx]          ; X-coordinate of the fired ball
    mov ah, [esi + edx + 5]      ; Y-coordinate of the fired ball
    push edx

    ;clear previous fired balls from screen
    mov dl, al
    mov dh, ah
    call Gotoxy
    mov al, ' '
    call writeChar
    mov al, dl

    ; Load direction of the current fired ball
    movzx edx, [firedBallDirections + (ecx - 1)]
    
    add al, [directionX + edx]
    add ah, [directionY + edx]

    pop edx
    mov [esi + edx], al
    mov [esi + edx + 5], ah


CheckCollision:
    ; Check collision with balls on the path
    push ecx
    push edx
    mov esi, OFFSET ballPositionsX3
    mov edi, OFFSET ballPositionsY3
    mov ebx, OFFSET ballColors3

    movzx ecx, noOfBalls3
    cmp ecx, 0
    jz NoCollision

CollisionLoop:
    cmp al, [esi]
    jne SkipPathBall
    cmp ah, [edi]
    jne SkipPathBall
    mov edx, 0
    mov dl, [firedBallColors + (ecx - 1)]
    cmp dl, [ebx]
    jne addBall
    cmp dl, [ebx - 1]
    jne addBall
    cmp dl, [ebx + 1]
    jne addBall

    ; Collision detected
    add score, 5
    mov al, 0
    mov ah, -2
    mov [esi], ah
    mov [edi], ah
    mov [esi+1], ah
    mov [edi+1], ah
    mov [esi-1], ah
    mov [edi-1], ah

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision

    CollisionLoop1:
        jmp CollisionLoop

addBall:
    mov ecx, 0
    l1:
    inc ecx
    inc esi
    inc edi
    mov al, [esi]
    cmp al, -1
    jne l1

    l2:
    mov al, [esi-1]
    mov [esi], al
    mov al, [edi-1]
    mov [edi], al
    dec esi
    dec edi
    loop l2

    pop edx
    mov al, [firedBalls + edx]
    mov [esi], al
    mov al, [firedBalls + edx + 5] 
    mov [edi], al

    ; Clear fired ball
    mov [firedBalls + edx], 0
    mov [firedBalls + edx + 5], 0

    dec firedCount
    jmp NoCollision
SkipPathBall:
    add esi, 1
    add edi, 1
    add ebx, 1
    loop CollisionLoop1
    pop edx

NoCollision:
    pop ecx

NextFiredBall:
    dec ecx
    jnz FiredBallLoop

EndFiredBallsUpdate:
    call DrawFiredBalls
    ret
UpdateFiredBalls3 ENDP




checkLevelCompletion PROC
    
    mov ah, 0

    l1:
        mov al, [esi]
        inc esi
        cmp al, -2
        jne l2
    loop l1
    mov ah, 1

    l2:
        cmp ah, 1
        jne l3
        inc level

    l3:
    ret
checkLevelCompletion ENDP



ShowStatus PROC
    push ax                 ; Preserve registers
    push bx
    push cx
    push dx
    push si
    push di

    ; Clear the first line
    mov ax, 0          ; Row 0, Column 0
    mov dx, ax
    call Gotoxy
    mov cx, 80              ; Assume 80 columns (standard width)
ClearFirstLine:
    mov al, ' '             ; Space character
    call WriteChar          ; Write space
    loop ClearFirstLine     ; Clear the entire line

    ; Display "Name:"
    mov ax, 0          ; Reset cursor to Row 0, Column 0
    mov dx, 0
    call Gotoxy
    lea dx, strName         ; Load the string "Name:"
    call PrintString        ; Display the string
    lea dx, names           ; Load the name
    call PrintString        ; Display the name

    ; Clear the second line
    mov ah, 1
    mov al, 0          ; Row 1, Column 0
    mov dx, ax
    call Gotoxy
    mov cx, 80              ; Clear 80 columns
ClearSecondLine:
    mov al, ' '             ; Space character
    call WriteChar
    loop ClearSecondLine

    ; Display "Lives:"
    mov ah, 1
    mov al, 0          ; Row 1, Column 0
    mov dx, ax
    call Gotoxy
    lea dx, livesString     ; Load the string "Lives:"
    call PrintString

    ; Display the appropriate lives symbol
    mov al, lives           ; Load current lives count
    cmp al, 3
    je DisplayLives3
    cmp al, 2
    je DisplayLives2
    cmp al, 1
    je DisplayLives1
    jmp NoLives             ; No lives remaining

DisplayLives3:
    lea dx, lives3          ; Load "$$$"
    jmp ShowLives

DisplayLives2:
    lea dx, lives2          ; Load "$$"
    jmp ShowLives

DisplayLives1:
    lea dx, lives1          ; Load "$"
    jmp ShowLives

NoLives:
    lea dx, lives1          ; Load empty string
    jmp ShowLives

ShowLives:
    call PrintString        ; Display the lives string

    ; Clear the third line
    mov ah, 2
    mov al, 0          ; Row 2, Column 0
    mov dx, ax
    call Gotoxy
    mov cx, 80              ; Clear 80 columns
ClearThirdLine:
    mov al, ' '             ; Space character
    call WriteChar
    loop ClearThirdLine

    ; Display "Your score is: "
    mov ah, 2
    mov al, 0          ; Reset cursor to Row 2, Column 0
    mov dx, ax
    call Gotoxy
    lea dx, strScore        ; Load the score prompt string
    call PrintString

    ; Display the score
    mov al, score           ; Load the score
    call PrintNumber        ; Convert and display the score as a number

    ; Restore registers
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
ShowStatus ENDP


PrintString PROC
    push ax
    push bx
    push cx

    mov si, dx             ; SI points to the string
PrintLoop:
    lodsb                  ; Load the next character from the string
    cmp al, 0              ; Check for null terminator
    je Done
    call WriteChar         ; Write the character
    jmp PrintLoop          ; Repeat

Done:
    pop cx
    pop bx
    pop ax
    ret
PrintString ENDP


PrintNumber PROC
    push ax
    push bx

    xor ah, ah             ; Clear AH
    mov bl, 10             ; Divisor for decimal conversion
    div bl                 ; Divide AL by 10
    add ah, '0'            ; Convert remainder to ASCII
    add al, '0'            ; Convert quotient to ASCII
    call WriteChar         ; Print the tens digit
    mov al, ah
    call WriteChar         ; Print the units digit

    pop bx
    pop ax
    ret
PrintNumber ENDP


SaveNameAndScore PROC
    ; Open the file for reading/writing
    mov ah, 3Dh                  ; Open file
    mov al, 2                    ; Open in read/write mode
    mov edx, offset filename1            ; File name
    int 21h
    jc file_not_found            ; Jump if file not found

    mov bx, ax                   ; File handle
    ; Read the existing file content into buffer1
    mov ah, 3Fh                  ; Read file
    mov edx, offset buffer1              ; Buffer address
    mov ecx, 1024                 ; Max bytes to read
    int 21h
    jc error                     ; Jump on error

    ; Parse names and scores from buffer1
    mov esi, offset buffer1
    mov edi, offset names1
    mov ebp, offset scores1

parse_file:
    lodsb                        ; Load next byte from buffer1
    cmp al, 0                    ; Check for end of file
    je sort_and_write
    stosb                        ; Store byte into names1 or scores1
    cmp al, ','                  ; Check for delimiter
    jne parse_file
    lodsb                        ; Load score byte
    mov [ebp], al                 ; Store score in one byte
    inc ebp                       ; Move to next score slot
    jmp parse_file

sort_and_write:
    ; Sort the names and scores in ascending order by scores
    mov esi, offset scores1       ; Pointer to scores
    mov edi, offset names1        ; Pointer to names
    mov ecx, 100                  ; Number of elements to sort (adjust as necessary)

sort_loop:
    mov ebx, 0                    ; Initialize index

inner_loop:
    push ax                       ; Preserve ax
    mov al, [esi + ebx]           ; Load the current score
    cmp al, [esi + ebx + 1]       ; Compare with the next score
    pop ax                        ; Restore ax
    jle skip_swap                 ; Skip if already in order

    ; Swap scores
    push ax                       ; Preserve ax
    mov al, [esi + ebx]           ; Load the current score
    xchg al, [esi + ebx + 1]      ; Swap with the next score
    mov [esi + ebx], al           ; Store the swapped score
    pop ax                        ; Restore ax

    ; Compute the base address for the first and second names using addition
    mov edx, ebx                  ; Copy ebx to edx for calculations
    shl edx, 4                    ; Multiply ebx by 16 (equivalent to 16 bytes per entry)
    shl ebx, 2
    add edx, ebx                  ; Add 4*ebx to make it equivalent to 20*ebx (20 bytes per entry)
    shr ebx, 2

    ; Swap corresponding names
    ; Save the first name to tempName1
    lea esi, [edi + edx]          ; Address of the first name (source)
    lea eax, tempName1            ; Address of tempName1 (destination)
    mov edi, eax
    mov ecx, 20                   ; Name size
    rep movsb                     ; Copy the first name to tempName1

    ; Move the second name to the first name slot
    lea esi, [edi + edx + 20]     ; Address of the second name (source)
    lea edi, [edi + edx]          ; Address of the first name slot (destination)
    mov ecx, 20
    rep movsb                     ; Copy the second name to the first name slot

    ; Move tempName1 back to the second name slot
    lea esi, tempName1            ; Address of tempName1 (source)
    lea edi, [edi + edx + 20]     ; Address of the second name slot (destination)
    mov ecx, 20
    rep movsb                     ; Copy tempName1 back to the second name slot

skip_swap:
    inc ebx                       ; Increment index
    cmp ebx, ecx                  ; Check if reached the end
    jl inner_loop
    dec ecx                       ; Decrement the number of elements
    jnz sort_loop


write_sorted_data:
    ; Clear the file and write back sorted data
    mov ah, 40h                  ; Write file
    mov edx, offset buffer1
    mov ecx, 0                    ; Start fresh
    int 21h

    mov esi, offset names1
    mov ebp, offset scores1
write_loop:
    lodsb                        ; Load name byte
    stosb                        ; Store to buffer1
    cmp al, 0
    je write_score
    jmp write_loop

write_score:
    mov al, [ebp]        ; Get score
    stosb                        ; Store score in buffer1
    inc ebp
    jmp write_loop

    ret

file_not_found:
    ; Handle file not found case
    mov ah, 09h
    mov edx, offset prompt1
    int 21h
    ret

error:
    ; Handle error
    ret
SaveNameAndScore ENDP








Level1 PROC

    mov esi, offset ballColors1
    movzx ecx, noOfBalls1            
    call GenerateBallColors    ; Generate random colors for balls
    
    mov esi, OFFSET pathPositionsx1 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy1 ; Address of path y-coordinates
    movzx ecx, pathLength1            ; Length of the path
    mov bl, endPointX1
    mov bh, endPointY1
    call DrawPath    ; Draw the path with colored balls

GameLoop:

    call ShowStatus
    
    ;check if all balls have been destroyed
    movzx ecx, noOfBalls1
    mov esi, offset ballPositionsx1
    call checkLevelCompletion
    mov al, level
    cmp al, 1
    jne GameOver
    
    ; Check if any ball reached the end point
    movzx ecx, noOfBalls1                ; Number of balls in level 1
    lea esi, ballPositionsx1   ; Address of X-coordinates array
    lea edi, ballPositionsy1   ; Address of Y-coordinates array
    mov bl, endPointX1
    mov bh, endPointY1
    call CheckEndPoint

    cmp al, 1                   ; AL = 1 if a ball reached the endpoint
    jne SkipLifeLoss
    dec lives                   ; Decrease lives if a ball reached the endpoint
    cmp lives, 0                ; Check if lives are zero
    je GameOver                 ; If no lives left, end the game

    mov esi, offset ballPositionsx1      ; Address of current X-coordinates
    mov edi, offset ballPositionsy1      ; Address of current Y-coordinates
    movzx edx, noOfBalls1                   ; Number of balls to reset
    call ResetBalls             ; Reset balls to start position

SkipLifeLoss:
                                                 ; Draw the updated game state
    call UpdateFiredBalls1       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    
    mov esi, OFFSET pathPositionsx1 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy1 ; Address of path y-coordinates
    movzx ecx, pathLength1            ; Length of the path
    mov bl, endPointX1
    mov bh, endPointY1
    call DrawPath    ; Draw the path with colored balls
    
    call RenderStriker                ; Update striker display

    call UpdateFiredBalls1       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver

    call MoveBalls1              ; Move the balls along the path

    call UpdateFiredBalls1       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    

    ; get user key input:
        mov  eax, 3000          ; sleep, to allow OS to time slice
        call Delay 

        call readkey
        jz   GameLoop

        ; exit game if user types 'x':
        cmp al,"x"
        jne next
        mov lives, 0
        ret

        next:
            cmp al,"p"
            jne next1
            call Paused
            jmp loop1

        next1:
            cmp al,"a"
            jne next2
            mov al, -1
            call RotateStriker
            jmp loop1

        next2:
            cmp al,"d"
            jne next3
            mov al, 1
            call RotateStriker
            jmp loop1

        next3:
            cmp al, " "
            jne loop1
            call GenerateFiredBall     ; Fire a ball


        loop1:
        ;call clrscr
        jmp GameLoop
GameOver:
LevelComplete:
    ret

Level1 ENDP



Level2 PROC
    
    mov esi, offset ballColors2
    movzx ecx, noOfBalls2            
    call GenerateBallColors    ; Generate random colors for balls
    
    mov esi, OFFSET pathPositionsx2 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy2 ; Address of path y-coordinates
    movzx ecx, pathLength2            ; Length of the path
    mov bl, endPointX2
    mov bh, endPointY2
    call DrawPath    ; Draw the path with colored balls

GameLoop:

    call ShowStatus
    
    ;check if all balls have been destroyed
    movzx ecx, noOfBalls2
    mov esi, offset ballPositionsx2
    call checkLevelCompletion
    mov al, level
    cmp al, 1
    jne GameOver
    
    ; Check if any ball reached the end point
    movzx ecx, noOfBalls2                ; Number of balls in level 1
    lea esi, ballPositionsx2   ; Address of X-coordinates array
    lea edi, ballPositionsy2   ; Address of Y-coordinates array
    mov bl, endPointX2
    mov bh, endPointY2
    call CheckEndPoint

    cmp al, 1                   ; AL = 1 if a ball reached the endpoint
    jne SkipLifeLoss
    dec lives                   ; Decrease lives if a ball reached the endpoint
    cmp lives, 0                ; Check if lives are zero
    je GameOver                 ; If no lives left, end the game

    mov esi, offset ballPositionsx2      ; Address of current X-coordinates
    mov edi, offset ballPositionsy2      ; Address of current Y-coordinates
    movzx edx, noOfBalls2                   ; Number of balls to reset
    call ResetBalls             ; Reset balls to start position

SkipLifeLoss:
                                                 ; Draw the updated game state
    call UpdateFiredBalls2       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver

    mov esi, OFFSET pathPositionsx2 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy2 ; Address of path y-coordinates
    movzx ecx, pathLength2            ; Length of the path
    mov bl, endPointX2
    mov bh, endPointY2
    call DrawPath    ; Draw the path with colored balls

    call RenderStriker                ; Update striker display
    call UpdateFiredBalls2       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    call MoveBalls2              ; Move the balls along the path
    call UpdateFiredBalls2       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    

    ; get user key input:
        mov  eax, 3000          ; sleep, to allow OS to time slice
        call Delay 

        call readkey
        jz   GameLoop

        ; exit game if user types 'x':
        cmp al,"x"
        jne next
        mov lives, 0
        ret

        next:
            cmp al,"p"
            jne next1
            call Paused
            jmp loop1

        next1:
            cmp al,"a"
            jne next2
            mov al, -1
            call RotateStriker
            jmp loop1

        next2:
            cmp al,"d"
            jne next3
            mov al, 1
            call RotateStriker
            jmp loop1

        next3:
            cmp al, " "
            jne loop1
            call GenerateFiredBall     ; Fire a ball


        loop1:
        ;call clrscr
        jmp GameLoop
GameOver:
LevelComplete:
    ret

Level2 ENDP


Level3 PROC
    
    mov esi, offset ballColors3
    movzx ecx, noOfBalls3            
    call GenerateBallColors    ; Generate random colors for balls
    
    mov esi, OFFSET pathPositionsx3 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy3 ; Address of path y-coordinates
    movzx ecx, pathLength3            ; Length of the path
    mov bl, endPointX3
    mov bh, endPointY3
    call DrawPath    ; Draw the path with colored balls

GameLoop:

    call ShowStatus
    
    ;check if all balls have been destroyed
    movzx ecx, noOfBalls3
    mov esi, offset ballPositionsx3
    call checkLevelCompletion
    mov al, level
    cmp al, 1
    jne GameOver
    
    ; Check if any ball reached the end point
    movzx ecx, noOfBalls3                ; Number of balls in level 1
    lea esi, ballPositionsx3   ; Address of X-coordinates array
    lea edi, ballPositionsy3   ; Address of Y-coordinates array
    mov bl, endPointX3
    mov bh, endPointY3
    call CheckEndPoint

    cmp al, 1                   ; AL = 1 if a ball reached the endpoint
    jne SkipLifeLoss
    dec lives                   ; Decrease lives if a ball reached the endpoint
    cmp lives, 0                ; Check if lives are zero
    je GameOver                 ; If no lives left, end the game

    mov esi, offset ballPositionsx3      ; Address of current X-coordinates
    mov edi, offset ballPositionsy3      ; Address of current Y-coordinates
    movzx edx, noOfBalls3                   ; Number of balls to reset
    call ResetBalls             ; Reset balls to start position

SkipLifeLoss:
                                                 ; Draw the updated game state
    call UpdateFiredBalls3       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver

    mov esi, OFFSET pathPositionsx3 ; Address of path x-coordinates
    mov edi, OFFSET pathPositionsy3 ; Address of path y-coordinates
    movzx ecx, pathLength3            ; Length of the path
    mov bl, endPointX3
    mov bh, endPointY3
    call DrawPath    ; Draw the path with colored balls
    
    call RenderStriker                ; Update striker display
    call MoveBalls3              ; Move the balls along the path
    call UpdateFiredBalls3       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    call MoveBalls3              ; Move the balls along the path
    call UpdateFiredBalls3       ; Update the movement of fired balls
    cmp lives, 0
    je GameOver
    

    ; get user key input:
        mov  eax, 3000          ; sleep, to allow OS to time slice
        call Delay 

        call readkey
        jz   GameLoop

        ; exit game if user types 'x':
        cmp al,"x"
        jne next
        mov lives, 0
        ret

        next:
            cmp al,"p"
            jne next1
            call Paused
            jmp loop1

        next1:
            cmp al,"a"
            jne next2
            mov al, -1
            call RotateStriker
            jmp loop1

        next2:
            cmp al,"d"
            jne next3
            mov al, 1
            call RotateStriker
            jmp loop1

        next3:
            cmp al, " "
            jne loop1
            call GenerateFiredBall     ; Fire a ball


        loop1:
        ;call clrscr
        jmp GameLoop
GameOver:
LevelComplete:
    ret

Level3 ENDP


main PROC

    ;Initial Screen
    mov dl,10 
    mov dh,10
    mov eax,white
    call settextcolor
    call gotoxy
    mov edx,offset PACMAN_ART
    call writestring
    call waitmsg
    call clrscr

    ;NAME INPUT
    mov dh,0
    mov dl,0
    call gotoxy
    mov edx,offset prompt1
    mov ecx,lengthof prompt1
    call writestring
    mov edx,offset names
    mov ecx,20
    call readstring
    call clrscr

    ;START MENU
    point1:
        mov dl,70
        mov dh,3
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,1
    jmp start_tab

    point2:
        mov dl,80
        mov dh,12
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,2
    jmp start_tab

    point3:
        mov dl,70
        mov dh,22
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,3
    jmp start_tab


    start_tab:
    mov dl,0
    mov dh,1
    call gotoxy
    mov edx,offset START
    call writestring

    mov dl,0
    mov dh,10
    call gotoxy
    mov edx,offset INSTRUCTIONS
    call writestring

    mov dl,0
    mov dh,20
    call gotoxy
    mov edx,offset EXITED
    call writestring
    

    call readchar
    call clrscr
    cmp al,'1'
    je point1
    cmp al,'2'
    je point2
    cmp al,'3'
    je point3
    cmp al,13
    je selection


    selection:
    cmp menuSelect,1
    je startGame
    cmp menuSelect,2
    je INSTRUCTIONSSCREEN
    cmp menuSelect,3
    je exitGame

    INSTRUCTIONSSCREEN:
    mov dl,0 
    mov dh,0
    call gotoxy
    mov edx,offset INSTRUCTIONS_SCREEN
    call writestring
    call readchar
    call clrscr
    cmp al,27
    je point2
    jmp INSTRUCTIONSSCREEN


    startGame:
    
    ;call Level1 
    ;cmp lives, 0
    ;je fileHandling

    ;call Level2
    ;cmp lives, 0
    ;je fileHandling

    call Level3
    cmp lives, 0
    je fileHandling


    fileHandling:

    call SaveNameAndScore


    exitGame:
    exit

main ENDP
END main