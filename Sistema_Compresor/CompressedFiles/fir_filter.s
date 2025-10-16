# Compilation provided by Compiler Explorer at https://godbolt.org/
convolve:
push    {r7}
sub     sp, sp, #52
add     r7, sp, #0
str     r0, [r7, #12]
str     r1, [r7, #8]
str     r2, [r7, #4]
str     r3, [r7]
movs    r3, #0
str     r3, [r7, #44]
b       .L2
.L11:
0
2
str     r3, [r7, #28]
b       .L3
.L4:
4
add     r3, r3, r2
6
8
10
12
14
16
18
20
vstr.64 d16, [r7, #32]
4
22
6
8
10
subs    r3, r2, r3
14
16
18
20
vstr.64 d16, [r7, #32]
4
24
6
8
10
26
14
16
18
20
vstr.64 d16, [r7, #32]
4
28
6
8
10
30
14
16
18
20
vstr.64 d16, [r7, #32]
ldr     r3, [r7, #28]
adds    r3, r3, #4
str     r3, [r7, #28]
.L3:
ldr     r2, [r7, #28]
32
bcc     .L4
ldr     r3, [r7, #44]
34
36
38
0
2
str     r3, [r7, #24]
b       .L5
.L6:
40
22
6
8
42
12
14
16
18
20
vstr.64 d16, [r7, #32]
40
24
6
8
42
subs    r3, r2, r3
14
16
18
20
vstr.64 d16, [r7, #32]
40
28
6
8
42
26
14
16
18
20
vstr.64 d16, [r7, #32]
40
44
6
8
42
30
14
16
18
20
vstr.64 d16, [r7, #32]
ldr     r3, [r7, #24]
adds    r3, r3, #4
str     r3, [r7, #24]
.L5:
ldr     r2, [r7, #24]
32
bcc     .L6
46
34
36
38
0
2
str     r3, [r7, #20]
b       .L7
.L8:
48
24
6
8
50
12
14
16
18
20
vstr.64 d16, [r7, #32]
48
28
6
8
50
subs    r3, r2, r3
14
16
18
20
vstr.64 d16, [r7, #32]
48
44
6
8
50
26
14
16
18
20
vstr.64 d16, [r7, #32]
48
52
6
8
50
30
14
16
18
20
vstr.64 d16, [r7, #32]
ldr     r3, [r7, #20]
adds    r3, r3, #4
str     r3, [r7, #20]
.L7:
ldr     r2, [r7, #20]
32
bcc     .L8
ldr     r3, [r7, #44]
adds    r3, r3, #2
34
36
38
0
2
str     r3, [r7, #16]
b       .L9
.L10:
54
28
6
8
56
12
14
16
18
20
vstr.64 d16, [r7, #32]
54
44
6
8
56
subs    r3, r2, r3
14
16
18
20
vstr.64 d16, [r7, #32]
54
52
6
8
56
26
14
16
18
20
vstr.64 d16, [r7, #32]
54
add     r3, r3, r2
adds    r3, r3, #6
6
8
56
30
14
16
18
20
vstr.64 d16, [r7, #32]
ldr     r3, [r7, #16]
adds    r3, r3, #4
str     r3, [r7, #16]
.L9:
ldr     r2, [r7, #16]
32
bcc     .L10
ldr     r3, [r7, #44]
adds    r3, r3, #3
34
36
38
46
str     r3, [r7, #44]
.L2:
ldr     r2, [r7, #44]
ldr     r3, [r7, #56]
cmp     r2, r3
bcc     .L11
nop
nop
adds    r7, r7, #52
mov     sp, r7
ldr     r7, [sp], #4
bx      lr
