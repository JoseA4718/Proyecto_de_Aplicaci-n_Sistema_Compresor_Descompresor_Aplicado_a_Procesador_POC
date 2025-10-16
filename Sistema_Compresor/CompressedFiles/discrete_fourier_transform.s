# Compilation provided by Compiler Explorer at https://godbolt.org/
k:
.word   20
.LC0:
.ascii  "Discrete Fourier Transform using naive method\000"
.LC1:
.ascii  "Enter the coefficient of simple linear function:\000"
.LC2:
.ascii  "ax + by = c\000"
.LC3:
.ascii  "where a = 1, b =2 and c = 3\000"
.LC4:
.ascii  "The coefficients are: \000"
.LC5:
.ascii  "( %e ) - ( %e i)\012\000"
main:
push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
sub     sp, sp, #116
add     r7, sp, #8
str     r0, [r7, #44]
str     r1, [r7, #40]
mov     r3, sp
mov     r6, r3
movs    r3, #10
str     r3, [r7, #92]
0
ldr     r1, [r3]
subs    r3, r1, #1
str     r3, [r7, #96]
2
mov     r4, r2
mov     r5, r3
4
lsls    r3, r5, #7
orr     r3, r3, r4, lsr #25
lsls    r2, r4, #7
2
mov     r8, r2
mov     r9, r3
4
lsl     r3, r9, #7
orr     r3, r3, r8, lsr #25
lsl     r2, r8, #7
mov     r3, r1
lsls    r3, r3, #4
6
8
add     r3, sp, #8
6
lsls    r3, r3, #3
str     r3, [r7, #100]
10
str     r3, [r7, #80]
2
mov     r10, r2
mov     fp, r3
4
lsl     r3, fp, #6
orr     r3, r3, r10, lsr #26
lsl     r2, r10, #6
2
str     r2, [r7, #32]
str     r3, [r7, #36]
4
ldrd    r4, [r7, #32]
12
14
16
18
6
8
add     r3, sp, #8
6
lsls    r3, r3, #3
str     r3, [r7, #76]
10
str     r3, [r7, #72]
2
str     r2, [r7, #24]
str     r3, [r7, #28]
4
ldrd    r4, [r7, #24]
12
14
16
2
str     r2, [r7, #16]
str     r3, [r7, #20]
4
ldrd    r4, [r7, #16]
12
14
16
18
6
8
add     r3, sp, #8
6
lsls    r3, r3, #3
str     r3, [r7, #68]
movw    r0, #:lower16:.LC0
movt    r0, #:upper16:.LC0
bl      puts
movw    r0, #:lower16:.LC1
movt    r0, #:upper16:.LC1
bl      puts
movw    r0, #:lower16:.LC2
movt    r0, #:upper16:.LC2
bl      puts
movw    r0, #:lower16:.LC3
movt    r0, #:upper16:.LC3
bl      printf
10
str     r3, [r7, #64]
2
str     r2, [r7, #8]
str     r3, [r7, #12]
4
ldrd    r4, [r7, #8]
12
14
16
2
str     r2, [r7]
str     r3, [r7, #4]
4
ldrd    r4, [r7]
12
14
16
18
6
8
add     r3, sp, #8
6
lsls    r3, r3, #3
str     r3, [r7, #60]
20
b       .L2
.L3:
22
24
vcvt.f64.s32    d16, s15
vmul.f64        d17, d17, d16
26
24
28
30
vcvt.f64.f32    d16, s15
32
34
36
22
24
38
vmov.f64        d17, #1.0e+0
vadd.f64        d17, d16, d17
26
24
28
vmov.f64        d18, #1.0e+0
vadd.f64        d16, d16, d18
30
40
adds    r3, r3, #1
32
lsls    r3, r3, #3
36
22
24
38
vmov.f64        d17, #2.0e+0
vadd.f64        d17, d16, d17
26
24
28
vmov.f64        d18, #2.0e+0
vadd.f64        d16, d16, d18
30
40
adds    r3, r3, #2
32
lsls    r3, r3, #3
36
22
24
38
vmov.f64        d17, #3.0e+0
vadd.f64        d17, d16, d17
26
24
28
vmov.f64        d18, #3.0e+0
vadd.f64        d16, d16, d18
30
40
adds    r3, r3, #3
32
lsls    r3, r3, #3
36
42
str     r3, [r7, #84]
.L2:
44
cmp     r2, r3
blt     .L3
20
b       .L4
.L5:
0
46
48
50
52
ldr     r3, [r7, #92]
50
54
56
ldr     r2, [r7, #76]
34
36
0
46
48
50
52
ldr     r3, [r7, #92]
50
54
58
ldr     r2, [r7, #68]
34
36
60
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
64
56
66
36
60
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
64
58
68
36
70
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
72
56
66
36
70
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
72
58
68
36
74
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
76
56
66
36
74
0
ldr     r3, [r3]
48
50
52
ldr     r3, [r7, #92]
50
62
76
58
68
36
42
str     r3, [r7, #84]
.L4:
44
cmp     r2, r3
blt     .L5
movw    r0, #:lower16:.LC4
movt    r0, #:upper16:.LC4
bl      printf
movs    r3, #0
str     r3, [r7, #88]
b       .L6
.L9:
20
b       .L7
.L11:
.word   1405670641
.word   1074340347
.L8:
78
80
82
34
84
ldr     r2, [r7, #76]
34
86
88
78
lsls    r3, r3, #4
36
78
80
adds    r3, r3, #8
82
34
84
ldr     r2, [r7, #68]
34
86
88
78
80
90
78
80
92
94
lsls    r3, r3, #3
84
96
98
86
88
78
lsls    r3, r3, #4
36
78
80
adds    r3, r3, #8
92
94
lsls    r3, r3, #3
84
96
100
86
88
78
80
90
78
80
92
102
lsls    r3, r3, #3
84
104
98
86
88
78
lsls    r3, r3, #4
36
78
80
adds    r3, r3, #8
92
102
lsls    r3, r3, #3
84
104
100
86
88
78
80
90
78
80
92
106
lsls    r3, r3, #3
84
108
98
86
88
78
lsls    r3, r3, #4
36
78
80
adds    r3, r3, #8
92
106
lsls    r3, r3, #3
84
108
100
86
88
78
80
90
42
str     r3, [r7, #84]
.L7:
44
cmp     r2, r3
blt     .L8
78
80
ldrd    r0, [r3]
78
80
adds    r3, r3, #8
ldrd    r2, [r3]
strd    r2, [sp]
mov     r2, r0
mov     r3, r1
movw    r0, #:lower16:.LC5
movt    r0, #:upper16:.LC5
bl      printf
ldr     r3, [r7, #88]
adds    r3, r3, #1
str     r3, [r7, #88]
.L6:
0
ldr     r3, [r3]
ldr     r2, [r7, #88]
cmp     r2, r3
blt     .L9
movs    r3, #0
mov     sp, r6
mov     r0, r3
adds    r7, r7, #108
mov     sp, r7
pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}
