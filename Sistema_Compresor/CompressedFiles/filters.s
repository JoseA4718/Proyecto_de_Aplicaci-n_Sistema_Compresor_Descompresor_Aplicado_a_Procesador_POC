# Compilation provided by Compiler Explorer at https://godbolt.org/
convolve:
push    {r7}
sub     sp, sp, #44
add     r7, sp, #0
str     r0, [r7, #12]
str     r1, [r7, #8]
str     r2, [r7, #4]
str     r3, [r7]
movs    r3, #0
str     r3, [r7, #36]
b       .L2
.L7:
0
2
str     r3, [r7, #20]
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
vstr.64 d16, [r7, #24]
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
vstr.64 d16, [r7, #24]
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
vstr.64 d16, [r7, #24]
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
vstr.64 d16, [r7, #24]
32
str     r3, [r7, #20]
.L3:
ldr     r2, [r7, #20]
34
bcc     .L4
ldr     r3, [r7, #36]
36
38
40
0
2
str     r3, [r7, #16]
b       .L5
.L6:
42
22
6
8
44
12
14
16
18
20
vstr.64 d16, [r7, #24]
42
24
6
8
44
subs    r3, r2, r3
14
16
18
20
vstr.64 d16, [r7, #24]
42
28
6
8
44
26
14
16
18
20
vstr.64 d16, [r7, #24]
42
add     r3, r3, r2
adds    r3, r3, #4
6
8
44
30
14
16
18
20
vstr.64 d16, [r7, #24]
ldr     r3, [r7, #16]
adds    r3, r3, #4
str     r3, [r7, #16]
.L5:
ldr     r2, [r7, #16]
34
bcc     .L6
46
36
38
40
46
str     r3, [r7, #36]
.L2:
ldr     r2, [r7, #36]
ldr     r3, [r7, #48]
cmp     r2, r3
bcc     .L7
48
adds    r7, r7, #44
50
bx      lr
iirfilter:
52
54
56
58
60
60
b       .L9
.L10:
62
64
66
68
str     r2, [r3]  @ float
ldr     r3, [r7, #20]
70
adds    r3, r3, #8
vldr.32 s15, [r7, #4]
72
74
76
78
80
82
84
86
88
72
88
vldr.32 s14, [r3]
66
90
92
vmul.f32        s15, s13, s15
88
94
88
70
adds    r3, r3, #8
90
96
88
94
88
98
90
adds    r3, r3, #16
96
88
100
88
vldr.32 s14, [r3]
78
90
adds    r3, r3, #12
96
88
100
102
104
32
106
108
.L9:
110
cmp     r2, r3
blt     .L10
48
adds    r7, r7, #36
50
bx      lr
iirfilter_unscaled:
52
54
56
58
60
60
b       .L12
.L13:
62
64
66
68
82
adds    r3, r3, #8
ldr     r2, [r7, #20]
ldr     r2, [r2]  @ float
str     r2, [r3]  @ float
74
76
78
80
82
84
86
88
72
88
vldr.32 s14, [r3]
66
90
92
vmul.f32        s15, s13, s15
88
94
88
70
adds    r3, r3, #8
90
96
88
94
88
98
90
adds    r3, r3, #16
96
88
100
88
vldr.32 s14, [r3]
78
90
adds    r3, r3, #12
96
88
100
102
104
32
106
108
.L12:
110
cmp     r2, r3
blt     .L13
48
adds    r7, r7, #36
50
bx      lr
