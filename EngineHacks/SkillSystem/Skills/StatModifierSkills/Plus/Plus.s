.thumb 
.align

.equ SkillTester, AuraSkillCheck+4
.equ PlusID, SkillTester+4
.equ MinusID, PlusID+4
.equ BoostAmount, 4
.equ Attacker, 0x203A4EC

push {r4-r7, lr} 
mov r6, r0              @ stat value (the stat itself is whichever of the stat getters we're currently cycling through)
mov r7, r1              @ unit 
ldr r4,=Attacker

@check for any adacent units with the 'Plus' skill
ldr r0, AuraSkillCheck
mov lr, r0
mov r0, r4              @attacker
ldr r1, PlusID
mov r2, #0              @allegiance of checked unit (0 = same as this unit)
mov r3, #1              @range from this unit (1 = adjacent)
.short 0xf800
cmp r0, #0
beq End

@now check if this unit has the 'Minus' skill
ldr r0, SkillTester
mov lr, r0
mov r0, r4              @attacker
ldr r1, MinusID
.short 0xf800
cmp r0, #0
beq End

mov r3, #BoostAmount    @how much to increase the stat by
add r6, r3              @add it on to the base stat

End: 
mov r0, r6              @ stat value 
mov r1, r7              @ unit 
pop {r4-r7} 
pop {r2} 
bx r2 
.ltorg
.align
AuraSkillCheck:
